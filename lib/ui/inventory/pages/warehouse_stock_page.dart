import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../core/core.dart';
import '../bloc/warehouse_stock/warehouse_stock_bloc.dart';
import '../dialogs/add_new_warehouse_stock.dart';
import '../models/variation_model.dart';
import '../widgets/app_bar_widget.dart';

class WarehouseStockPage extends StatefulWidget {
  const WarehouseStockPage({super.key});

  @override
  State<WarehouseStockPage> createState() => _VariationPageState();
}

class _VariationPageState extends State<WarehouseStockPage> {
  bool isEmptyData = false;

  final searchController = TextEditingController();
  late List<VariationModel> searchResult;

  @override
  void initState() {
    searchResult = variations;
    context.read<WarehouseStockBloc>().add(const WarehouseStockEvent.fetch());
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const PreferredSize(
        preferredSize: Size.fromHeight(70.0),
        child: AppBarWidget(title: 'Warehouse Stock'),
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
                          searchResult = variations
                              .where((element) => element.variationName
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
                      onPressed: () => showDialog(
                        context: context,
                        builder: (context) => AddWarehouseStock(
                          onConfirmTap: () {},
                        ),
                      ),
                      label: 'Add New',
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
              BlocBuilder<WarehouseStockBloc, WarehouseStockState>(
                builder: (context, state) {
                  return state.maybeWhen(
                    orElse: () => const SizedBox(),
                    loading: () => const Center(
                      child: CircularProgressIndicator(),
                    ),
                    success: (data) {
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
                                          label: Text('Product Name')),
                                      const DataColumn(
                                          label: Text('Warehouse Name')),
                                      const DataColumn(
                                          label: Text('Warehouse Address')),
                                      const DataColumn(
                                          label: Text('Warehouse Email')),
                                      // const DataColumn(label: Text('Action')),
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
                                                DataCell(Text(
                                                  item.product?.name ?? '',
                                                  style: const TextStyle(
                                                    fontSize: 16.0,
                                                    fontWeight: FontWeight.w500,
                                                    color: AppColors.black,
                                                  ),
                                                )),
                                                DataCell(Text(
                                                  item.warehouse?.name ?? '',
                                                  style: const TextStyle(
                                                    fontSize: 16.0,
                                                    fontWeight: FontWeight.w500,
                                                    color: AppColors.black,
                                                  ),
                                                )),
                                                DataCell(Text(
                                                  item.warehouse?.address ?? '',
                                                  style: const TextStyle(
                                                    fontSize: 16.0,
                                                    fontWeight: FontWeight.w500,
                                                    color: AppColors.black,
                                                  ),
                                                )),
                                                DataCell(Text(
                                                  item.warehouse?.email ?? '',
                                                  style: const TextStyle(
                                                    fontSize: 16.0,
                                                    fontWeight: FontWeight.w500,
                                                    color: AppColors.black,
                                                  ),
                                                )),
                                                // DataCell(Row(
                                                //   children: [
                                                //     IconButton(
                                                //       onPressed: () =>
                                                //           showDialog(
                                                //         context: context,
                                                //         builder: (context) =>
                                                //             DeleteDialog(
                                                //           onConfirmTap: () {
                                                //             context
                                                //                 .read<
                                                //                     WarehouseStockBloc>()
                                                //                 .add(
                                                //                   WarehouseStockEvent
                                                //                       .deleteWarehouse(
                                                //                     item.id!,
                                                //                   ),
                                                //                 );
                                                //             context.pop();
                                                //             ScaffoldMessenger
                                                //                     .of(context)
                                                //                 .showSnackBar(
                                                //               const SnackBar(
                                                //                 content: Text(
                                                //                     'Unit Deleted Successfully'),
                                                //                 backgroundColor:
                                                //                     AppColors
                                                //                         .red,
                                                //               ),
                                                //             );
                                                //           },
                                                //         ),
                                                //       ),
                                                //       icon: const Icon(
                                                //           Icons.delete_outline),
                                                //     ),
                                                //     IconButton(
                                                //       onPressed: () {
                                                //         //edit warehouse
                                                //         showDialog(
                                                //           context: context,
                                                //           builder: (context) =>
                                                //               EditWarehouse(
                                                //             item: item,
                                                //             onConfirmTap: () {
                                                //               context
                                                //                   .read<
                                                //                       WarehouseBloc>()
                                                //                   .add(
                                                //                     WarehouseEvent
                                                //                         .updateWarehouse(
                                                //                       id: item
                                                //                           .id!,
                                                //                       name: nameController
                                                //                           .text,
                                                //                       address:
                                                //                           addressController
                                                //                               .text,
                                                //                       phone: phoneController
                                                //                           .text,
                                                //                       email: emailController
                                                //                           .text,
                                                //                     ),
                                                //                   );
                                                //               context.pop();
                                                //               ScaffoldMessenger
                                                //                       .of(context)
                                                //                   .showSnackBar(
                                                //                 const SnackBar(
                                                //                   content: Text(
                                                //                       'Unit Updated Successfully'),
                                                //                 ),
                                                //               );
                                                //             },
                                                //           ),
                                                //         );
                                                //       },
                                                //       icon: const Icon(
                                                //           Icons.edit_outlined),
                                                //     ),
                                                //   ],
                                                // )),
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
