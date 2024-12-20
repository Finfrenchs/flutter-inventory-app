import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../core/core.dart';
import '../../../data/models/response/inventory_response/stock_opnames_response_model.dart';
import '../bloc/so/delete_so/delete_so_bloc.dart';
import '../bloc/so/get_so/get_so_bloc.dart';
import '../dialogs/add_new_stock_opname.dart';
import '../dialogs/delete_dialog.dart';
import '../dialogs/edit_stock_opname.dart';
import '../widgets/app_bar_widget.dart';
import '../widgets/pagination_widget.dart';

class StockOpnamePage extends StatefulWidget {
  const StockOpnamePage({super.key});

  @override
  State<StockOpnamePage> createState() => _StockOpnamePageState();
}

class _StockOpnamePageState extends State<StockOpnamePage> {
  bool isEmptyData = false;
  bool isAddForm = true;
  StockOpname? stockOpnameModel;

  final _scaffoldKey = GlobalKey<ScaffoldState>();

  final searchController = TextEditingController();
  late List<StockOpname> searchResult;

  @override
  void initState() {
    //searchResult = stockOpnameList;
    context.read<GetSoBloc>().add(const GetSoEvent.fetch());
    super.initState();
  }

  void showEndDrawer(bool isAdd, [StockOpname? item]) {
    setState(() {
      isAddForm = isAdd;
      stockOpnameModel = item;
    });
    _scaffoldKey.currentState?.openEndDrawer();
  }

  Widget endDrawerWidget() {
    if (isAddForm) {
      return const AddNewStockOpname();
    }
    return EditStockOpname(item: stockOpnameModel!);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      endDrawer: endDrawerWidget(),
      appBar: const PreferredSize(
        preferredSize: Size.fromHeight(70.0),
        child: AppBarWidget(title: 'Stock Opname'),
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
                          // searchResult = stockOpnameList
                          //     .where((element) => element.productName
                          //         .toLowerCase()
                          //         .contains(
                          //             searchController.text.toLowerCase()))
                          //     .toList();
                          setState(() {});
                        },
                      ),
                    ),
                    const SpaceWidth(16.0),
                    Button.filled(
                      onPressed: () => showEndDrawer(true),
                      label: 'Add New Stock Opname',
                      fontSize: 14.0,
                      width: 250.0,
                    ),
                  ],
                ),
              ),
              BlocBuilder<GetSoBloc, GetSoState>(
                builder: (context, state) {
                  return state.maybeWhen(
                    orElse: () => const SizedBox.shrink(),
                    success: (data) {
                      if (data.isEmpty) {
                        return const Padding(
                          padding: EdgeInsets.all(70.0),
                          child: Center(
                            child: EmptyPlaceholder2(),
                          ),
                        );
                      } else {
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
                                        const DataColumn(
                                            label: Text('Products')),
                                        const DataColumn(label: Text('SKU')),
                                        const DataColumn(
                                            label: Text('Warehouse')),
                                        const DataColumn(
                                            label: Text('Initial Quantity')),
                                        const DataColumn(
                                            label: Text('Counted Quantity')),
                                        const DataColumn(
                                            label: Text('Difference')),
                                        const DataColumn(label: Text('Status')),
                                        const DataColumn(label: Text('Action')),
                                      ],
                                      rows: data.isEmpty
                                          ? [
                                              const DataRow(
                                                cells: [
                                                  DataCell(Row(
                                                    children: [
                                                      Icon(Icons.highlight_off),
                                                      SpaceWidth(4.0),
                                                      Text(
                                                          'Data tidak ditemukan..'),
                                                    ],
                                                  )),
                                                  DataCell.empty,
                                                  DataCell.empty,
                                                  DataCell.empty,
                                                  DataCell.empty,
                                                  DataCell.empty,
                                                  DataCell.empty,
                                                  DataCell.empty,
                                                  DataCell.empty,
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
                                                    contentPadding:
                                                        EdgeInsets.zero,
                                                    title: Text(
                                                        item.product?.name ??
                                                            ''),
                                                    titleTextStyle:
                                                        const TextStyle(
                                                      fontSize: 16.0,
                                                      fontWeight:
                                                          FontWeight.w500,
                                                      color: AppColors.black,
                                                    ),
                                                    leading: ClipRRect(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              6.0),
                                                      child: CachedNetworkImage(
                                                        imageUrl:
                                                            '${Variables.baseUrlImage}/${item.product?.image ?? ''}',
                                                        height: 50.0,
                                                        width: 50.0,
                                                        fit: BoxFit.cover,
                                                        placeholder:
                                                            (context, url) =>
                                                                const Center(
                                                          child:
                                                              CircularProgressIndicator(),
                                                        ),
                                                      ),
                                                    ),
                                                  )),
                                                  DataCell(Text(
                                                    item.product?.itemCode ??
                                                        '',
                                                    style: const TextStyle(
                                                      fontSize: 16.0,
                                                      fontWeight:
                                                          FontWeight.w500,
                                                      color: AppColors.black,
                                                    ),
                                                  )),
                                                  DataCell(Text(
                                                    item.warehouse?.name ?? '',
                                                    style: const TextStyle(
                                                      fontSize: 16.0,
                                                      fontWeight:
                                                          FontWeight.w500,
                                                      color: AppColors.black,
                                                    ),
                                                  )),
                                                  DataCell(Text(
                                                    item.systemStock.toString(),
                                                    style: const TextStyle(
                                                      fontSize: 16.0,
                                                      fontWeight:
                                                          FontWeight.w500,
                                                      color: AppColors.black,
                                                    ),
                                                  )),
                                                  DataCell(Text(
                                                    item.physicalStock
                                                        .toString(),
                                                    style: const TextStyle(
                                                      fontSize: 16.0,
                                                      fontWeight:
                                                          FontWeight.w500,
                                                      color: AppColors.black,
                                                    ),
                                                  )),
                                                  DataCell(Text(
                                                    item.deviation.toString(),
                                                    style: const TextStyle(
                                                      fontSize: 16.0,
                                                      fontWeight:
                                                          FontWeight.w500,
                                                      color: AppColors.black,
                                                    ),
                                                  )),
                                                  DataCell(Text(
                                                    item.note ?? '',
                                                    style: const TextStyle(
                                                      fontSize: 16.0,
                                                      fontWeight:
                                                          FontWeight.w500,
                                                      color: AppColors.black,
                                                    ),
                                                  )),
                                                  DataCell(Row(
                                                    children: [
                                                      IconButton(
                                                        onPressed: () =>
                                                            showDialog(
                                                          context: context,
                                                          builder: (context) =>
                                                              BlocListener<
                                                                  DeleteSoBloc,
                                                                  DeleteSoState>(
                                                            listener: (context,
                                                                state) {
                                                              state.maybeWhen(
                                                                orElse: () {},
                                                                success:
                                                                    (data) {
                                                                  context.pop();
                                                                  ScaffoldMessenger.of(
                                                                          context)
                                                                      .showSnackBar(
                                                                    const SnackBar(
                                                                      content: Text(
                                                                          'Delete Successfully'),
                                                                    ),
                                                                  );
                                                                  context
                                                                      .read<
                                                                          GetSoBloc>()
                                                                      .add(const GetSoEvent
                                                                          .fetch());
                                                                },
                                                              );
                                                            },
                                                            child: DeleteDialog(
                                                              onConfirmTap: () {
                                                                context
                                                                    .read<
                                                                        DeleteSoBloc>()
                                                                    .add(DeleteSoEvent.delete(
                                                                        id: item
                                                                            .id!));
                                                              },
                                                            ),
                                                          ),
                                                        ),
                                                        icon: const Icon(Icons
                                                            .delete_outline),
                                                      ),
                                                      IconButton(
                                                        onPressed: () {
                                                          showEndDrawer(
                                                              false, item);
                                                        },
                                                        icon: const Icon(Icons
                                                            .edit_outlined),
                                                      ),
                                                    ],
                                                  )),
                                                ]),
                                              )
                                              .toList(),
                                    ),
                                  ),
                                ),
                                if (data.isNotEmpty)
                                  const Padding(
                                    padding: EdgeInsets.all(16.0),
                                    child: PaginationWidget(),
                                  ),
                              ],
                            ),
                          ),
                        );
                      }
                    },
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
