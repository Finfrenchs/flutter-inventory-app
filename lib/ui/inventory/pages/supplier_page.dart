import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../core/core.dart';
import '../../../data/models/response/inventory_response/supplier_response_model.dart';
import '../bloc/supplier/supplier_bloc.dart';
import '../dialogs/add_new_supplier.dart';
import '../dialogs/delete_dialog.dart';
import '../dialogs/edit_supplier.dart';
import '../widgets/app_bar_widget.dart';

class SupplierPage extends StatefulWidget {
  const SupplierPage({super.key});

  @override
  State<SupplierPage> createState() => _SupplierPageState();
}

class _SupplierPageState extends State<SupplierPage> {
  bool isEmptyData = false;
  bool isAddForm = true;
  Supplier? supplierModel;

  final _scaffoldKey = GlobalKey<ScaffoldState>();

  final searchController = TextEditingController();
  // late List<SupplierModel> searchResult;

  @override
  void initState() {
    // searchResult = suppliers;
    context.read<SupplierBloc>().add(const SupplierEvent.getSuppliers());
    super.initState();
  }

  void showEndDrawer(bool isAdd, [Supplier? item]) {
    setState(() {
      isAddForm = isAdd;
      supplierModel = item;
    });
    _scaffoldKey.currentState?.openEndDrawer();
  }

  Widget endDrawerWidget() {
    if (isAddForm) {
      return const AddNewSupplier();
    }
    return EditSupplier(item: supplierModel!);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      endDrawer: endDrawerWidget(),
      appBar: const PreferredSize(
        preferredSize: Size.fromHeight(70.0),
        child: AppBarWidget(title: 'Supplier'),
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
                          // searchResult = suppliers
                          //     .where((element) => element.name
                          //         .toLowerCase()
                          //         .contains(
                          //             searchController.text.toLowerCase()))
                          //     .toList();
                          // setState(() {});
                        },
                      ),
                    ),
                    const SpaceWidth(16.0),
                    Button.filled(
                      onPressed: () => showEndDrawer(true),
                      label: 'Add New Supplier',
                      fontSize: 14.0,
                      width: 250.0,
                    ),
                  ],
                ),
              ),
              BlocBuilder<SupplierBloc, SupplierState>(
                builder: (context, state) {
                  return state.maybeWhen(
                    orElse: () => const SizedBox.shrink(),
                    loading: () => const Expanded(
                      child: Center(
                        child: CircularProgressIndicator(),
                      ),
                    ),
                    loaded: (suppliers) {
                      // searchResult = suppliers;
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
                                        label: Text('Supplier Name')),
                                    const DataColumn(label: Text('Email')),
                                    // const DataColumn(label: Text('Warehouse')),
                                    const DataColumn(
                                        label: Text('Phone Number')),
                                    // const DataColumn(label: Text('Tax Number')),
                                    // const DataColumn(
                                    //     label: Text('Opening Balance')),
                                    // const DataColumn(
                                    //     label: Text('Credit Period')),
                                    // const DataColumn(
                                    //     label: Text('Credit Limit')),
                                    // const DataColumn(label: Text('Status')),
                                    const DataColumn(label: Text('Action')),
                                  ],
                                  rows: suppliers.isEmpty
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
                                              // DataCell.empty,
                                              // DataCell.empty,
                                              // DataCell.empty,
                                              // DataCell.empty,
                                              // DataCell.empty,
                                              // DataCell.empty,
                                              DataCell.empty,
                                              DataCell.empty,
                                              DataCell.empty,
                                              DataCell.empty,
                                            ],
                                          ),
                                        ]
                                      : suppliers
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
                                                title: Text(item.name!),
                                                titleTextStyle: const TextStyle(
                                                  fontSize: 16.0,
                                                  fontWeight: FontWeight.w500,
                                                  color: AppColors.black,
                                                ),
                                                // leading: ClipRRect(
                                                //   borderRadius:
                                                //       BorderRadius.circular(
                                                //           6.0),
                                                //   child: CachedNetworkImage(
                                                //     imageUrl: item.imageUrl,
                                                //     height: 50.0,
                                                //     width: 50.0,
                                                //     fit: BoxFit.cover,
                                                //     placeholder:
                                                //         (context, url) =>
                                                //             const Center(
                                                //       child:
                                                //           CircularProgressIndicator(),
                                                //     ),
                                                //   ),
                                                // ),
                                              )),
                                              DataCell(Text(
                                                item.email!,
                                                style: const TextStyle(
                                                  fontSize: 16.0,
                                                  fontWeight: FontWeight.w500,
                                                  color: AppColors.black,
                                                ),
                                              )),
                                              // DataCell(Text(
                                              //   item.warehouse,
                                              //   style: const TextStyle(
                                              //     fontSize: 16.0,
                                              //     fontWeight: FontWeight.w500,
                                              //     color: AppColors.black,
                                              //   ),
                                              // )),
                                              DataCell(Text(
                                                item.phone!,
                                                style: const TextStyle(
                                                  fontSize: 16.0,
                                                  fontWeight: FontWeight.w500,
                                                  color: AppColors.black,
                                                ),
                                              )),
                                              // DataCell(Text(
                                              //   item.taxNumber,
                                              //   style: const TextStyle(
                                              //     fontSize: 16.0,
                                              //     fontWeight: FontWeight.w500,
                                              //     color: AppColors.black,
                                              //   ),
                                              // )),
                                              // DataCell(Text(
                                              //   item.openingBalanceFormatted,
                                              //   style: const TextStyle(
                                              //     fontSize: 16.0,
                                              //     fontWeight: FontWeight.w500,
                                              //     color: AppColors.black,
                                              //   ),
                                              // )),
                                              // DataCell(Text(
                                              //   item.creditPeriod.toString(),
                                              //   style: const TextStyle(
                                              //     fontSize: 16.0,
                                              //     fontWeight: FontWeight.w500,
                                              //     color: AppColors.black,
                                              //   ),
                                              // )),
                                              // DataCell(Text(
                                              //   item.creditLimitFormatted,
                                              //   style: const TextStyle(
                                              //     fontSize: 16.0,
                                              //     fontWeight: FontWeight.w500,
                                              //     color: AppColors.black,
                                              //   ),
                                              // )),
                                              // DataCell(Text(
                                              //   item.status,
                                              //   style: const TextStyle(
                                              //     fontSize: 16.0,
                                              //     fontWeight: FontWeight.w500,
                                              //     color: AppColors.black,
                                              //   ),
                                              // )),
                                              DataCell(Row(
                                                children: [
                                                  IconButton(
                                                    onPressed: () => showDialog(
                                                      context: context,
                                                      builder: (context) =>
                                                          DeleteDialog(
                                                        onConfirmTap: () {
                                                          context
                                                              .read<
                                                                  SupplierBloc>()
                                                              .add(
                                                                SupplierEvent
                                                                    .deleteSupplier(
                                                                  item.id!,
                                                                ),
                                                              );
                                                          context.pop();
                                                          ScaffoldMessenger.of(
                                                                  context)
                                                              .showSnackBar(
                                                            const SnackBar(
                                                              content: Text(
                                                                  'Supplier Deleted Successfully'),
                                                              backgroundColor:
                                                                  AppColors.red,
                                                            ),
                                                          );
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
                      ));
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
