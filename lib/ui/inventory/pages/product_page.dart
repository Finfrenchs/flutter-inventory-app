import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../core/core.dart';
import '../../../data/models/response/inventory_response/product_response_model.dart';
import '../bloc/product/product_bloc.dart';
import '../dialogs/add_new_product.dart';
import '../dialogs/delete_dialog.dart';
import '../dialogs/edit_product.dart';
import '../models/product_model.dart';
import '../widgets/app_bar_widget.dart';

class ProductPage extends StatefulWidget {
  const ProductPage({super.key});

  @override
  State<ProductPage> createState() => _ProductPageState();
}

class _ProductPageState extends State<ProductPage> {
  bool isEmptyData = false;
  bool isAddForm = true;
  Product? productModel;

  final _scaffoldKey = GlobalKey<ScaffoldState>();

  final searchController = TextEditingController();
  late List<ProductModel> searchResult;

  @override
  void initState() {
    searchResult = products;
    context.read<ProductBloc>().add(const ProductEvent.getProducts());
    super.initState();
  }

  void showEndDrawer(bool isAdd, [Product? item]) {
    setState(() {
      isAddForm = isAdd;
      productModel = item;
    });
    _scaffoldKey.currentState?.openEndDrawer();
  }

  Widget endDrawerWidget() {
    if (isAddForm) {
      return const AddNewProduct();
    }
    return EditProduct(item: productModel!);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      endDrawer: endDrawerWidget(),
      appBar: const PreferredSize(
        preferredSize: Size.fromHeight(70.0),
        child: AppBarWidget(title: 'Products'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Card(
          color: AppColors.white,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Row(
                  children: [
                    Flexible(
                      flex: 3,
                      child: SearchInput(
                        controller: searchController,
                        hintText: 'Quick search..',
                        onChanged: (value) {
                          searchResult = products
                              .where((element) => element.productName
                                  .toLowerCase()
                                  .contains(
                                      searchController.text.toLowerCase()))
                              .toList();
                          setState(() {});
                        },
                      ),
                    ),
                    const SpaceWidth(16.0),
                    Button.filled(
                      onPressed: () => showEndDrawer(true),
                      label: 'Add New Product',
                      fontSize: 14.0,
                      width: 250.0,
                    ),
                  ],
                ),
              ),
              // if (isEmptyData) ...[
              //   const Padding(
              //     padding: EdgeInsets.all(70.0),
              //     child: Center(
              //       child: EmptyPlaceholder2(),
              //     ),
              //   ),
              // ] else ...[
              BlocBuilder<ProductBloc, ProductState>(
                builder: (context, state) {
                  final List<Product> data = state.maybeWhen(
                    orElse: () => [],
                    loaded: (data) => data,
                  );
                  return Expanded(
                    child: SingleChildScrollView(
                      child: Column(
                        children: [
                          Align(
                            alignment: Alignment.topLeft,
                            child: SingleChildScrollView(
                              scrollDirection: Axis.horizontal,
                              child: DataTable(
                                dataRowMinHeight: 30.0,
                                dataRowMaxHeight: 60.0,
                                columns: [
                                  DataColumn(
                                    label: SizedBox(
                                      height: 24.0,
                                      width: 24.0,
                                      child: Checkbox(
                                        value: false,
                                        onChanged: (value) {},
                                      ),
                                    ),
                                  ),
                                  const DataColumn(label: Text('Product')),
                                  // const DataColumn(label: Text('Product Type')),
                                  const DataColumn(label: Text('Category')),
                                  const DataColumn(label: Text('Brand')),
                                  const DataColumn(label: Text('Sales Price')),
                                  // const DataColumn(
                                  //     label: Text('Purchase Price')),
                                  const DataColumn(label: Text('Stock')),
                                  const DataColumn(label: Text('Action')),
                                ],
                                rows: searchResult.isEmpty
                                    ? [
                                        const DataRow(
                                          cells: [
                                            DataCell(Row(
                                              children: [
                                                Icon(Icons.highlight_off),
                                                SpaceWidth(4.0),
                                                Text('Data tidak ditemukan..'),
                                              ],
                                            )),
                                            DataCell.empty,
                                            DataCell.empty,
                                            DataCell.empty,
                                            DataCell.empty,
                                            DataCell.empty,
                                            DataCell.empty,
                                            // DataCell.empty,
                                            // DataCell.empty,
                                          ],
                                        ),
                                      ]
                                    : data
                                        .map(
                                          (item) => DataRow(cells: [
                                            DataCell(
                                              SizedBox(
                                                height: 24.0,
                                                width: 24.0,
                                                child: Checkbox(
                                                  value: false,
                                                  onChanged: (value) {},
                                                ),
                                              ),
                                            ),
                                            DataCell(ListTile(
                                              contentPadding: EdgeInsets.zero,
                                              title: Text(item.name ?? ''),
                                              titleTextStyle: const TextStyle(
                                                fontSize: 16.0,
                                                fontWeight: FontWeight.w500,
                                                color: AppColors.black,
                                              ),
                                              leading: ClipRRect(
                                                borderRadius:
                                                    BorderRadius.circular(6.0),
                                                child: CachedNetworkImage(
                                                  imageUrl:
                                                      '${Variables.baseUrlImage}/${item.image}',
                                                  height: 50.0,
                                                  width: 50.0,
                                                  fit: BoxFit.cover,
                                                  placeholder: (context, url) =>
                                                      const Center(
                                                    child:
                                                        CircularProgressIndicator(),
                                                  ),
                                                ),
                                              ),
                                            )),
                                            DataCell(Text(
                                              item.category?.name ?? '',
                                              style: const TextStyle(
                                                fontSize: 16.0,
                                                fontWeight: FontWeight.w500,
                                                color: AppColors.black,
                                              ),
                                            )),
                                            DataCell(Text(
                                              item.brand?.name ?? '',
                                              style: const TextStyle(
                                                fontSize: 16.0,
                                                fontWeight: FontWeight.w500,
                                                color: AppColors.black,
                                              ),
                                            )),
                                            DataCell(Text(
                                              item.price.toString(),
                                              style: const TextStyle(
                                                fontSize: 16.0,
                                                fontWeight: FontWeight.w500,
                                                color: AppColors.black,
                                              ),
                                            )),
                                            DataCell(Text(
                                              item.stock.toString(),
                                              style: const TextStyle(
                                                fontSize: 16.0,
                                                fontWeight: FontWeight.w500,
                                                color: AppColors.black,
                                              ),
                                            )),
                                            DataCell(Row(
                                              children: [
                                                IconButton(
                                                  onPressed: () => showDialog(
                                                    context: context,
                                                    builder: (context) =>
                                                        DeleteDialog(
                                                      onConfirmTap: () {
                                                        context
                                                            .read<ProductBloc>()
                                                            .add(ProductEvent
                                                                .deleteProduct(
                                                                    item.id!));
                                                        Navigator.pop(context);
                                                      },
                                                    ),
                                                  ),
                                                  icon: const Icon(
                                                      Icons.delete_outline),
                                                ),
                                                IconButton(
                                                  onPressed: () =>
                                                      showEndDrawer(
                                                          false, item),
                                                  icon: const Icon(
                                                      Icons.edit_outlined),
                                                ),
                                              ],
                                            )),
                                          ]),
                                        )
                                        .toList(),
                              ),
                            ),
                          ),
                          // if (searchResult.isNotEmpty)
                          //   const Padding(
                          //     padding: EdgeInsets.all(16.0),
                          //     child: PaginationWidget(),
                          //   ),
                        ],
                      ),
                    ),
                  );
                },
              ),
            ],
            // ],
          ),
        ),
      ),
    );
  }
}
