import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../core/core.dart';
import '../../../data/models/response/inventory_response/purchase_response_model.dart';
import '../bloc/purchase/purchase_bloc.dart';
import '../dialogs/add_new_purchase.dart';
import '../dialogs/delete_dialog.dart';
import '../dialogs/edit_purchase.dart';
import '../widgets/app_bar_widget.dart';
import '../widgets/pagination_widget.dart';

class PurchasePage extends StatefulWidget {
  const PurchasePage({super.key});

  @override
  State<PurchasePage> createState() => _PurchasePageState();
}

class _PurchasePageState extends State<PurchasePage> {
  bool isEmptyData = false;
  bool isAddForm = true;
  Purchase? purchaseModel;

  final _scaffoldKey = GlobalKey<ScaffoldState>();

  final searchController = TextEditingController();
  late List<Purchase> searchResult;

  @override
  void initState() {
    //searchResult = purchases;
    context.read<PurchaseBloc>().add(const PurchaseEvent.fetch());
    super.initState();
  }

  void showEndDrawer(bool isAdd, [Purchase? item]) {
    setState(() {
      isAddForm = isAdd;
      purchaseModel = item;
    });
    _scaffoldKey.currentState?.openEndDrawer();
  }

  Widget endDrawerWidget() {
    if (isAddForm) {
      return const AddNewPurchase();
    }
    return EditPurchase(item: purchaseModel!);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      endDrawer: endDrawerWidget(),
      appBar: const PreferredSize(
        preferredSize: Size.fromHeight(70.0),
        child: AppBarWidget(title: 'Purchases'),
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
                        hintText: 'Quick search by invoice number..',
                        onChanged: (value) {
                          // searchResult = purchases
                          //     .where((element) => element.invoiceNumber
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
                      label: 'Add New Purchase',
                      fontSize: 14.0,
                      width: 250.0,
                    ),
                  ],
                ),
              ),
              BlocBuilder<PurchaseBloc, PurchaseState>(
                  builder: (context, state) {
                return state.maybeWhen(
                  orElse: () => const SizedBox.shrink(),
                  loading: () => const Center(
                    child: CircularProgressIndicator(),
                  ),
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
                                          label: Text('Invoice Number')),
                                      const DataColumn(
                                          label: Text('Purchase Date')),
                                      const DataColumn(label: Text('Supplier')),
                                      const DataColumn(
                                          label: Text('Order Status')),
                                      const DataColumn(
                                          label: Text('Total Amount')),
                                      // const DataColumn(label: Text('Paid Amount')),
                                      // const DataColumn(
                                      //     label: Text('Status Pembayaran')),
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
                                                // DataCell.empty,
                                                // DataCell.empty,
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
                                                DataCell(Text(
                                                  item.invoiceNumber ?? '',
                                                  style: const TextStyle(
                                                    fontSize: 16.0,
                                                    fontWeight: FontWeight.w500,
                                                    color: AppColors.black,
                                                  ),
                                                )),
                                                DataCell(Text(
                                                  item.invoiceDate
                                                          ?.toFormattedDate() ??
                                                      '',
                                                  style: const TextStyle(
                                                    fontSize: 16.0,
                                                    fontWeight: FontWeight.w500,
                                                    color: AppColors.black,
                                                  ),
                                                )),
                                                DataCell(ListTile(
                                                  contentPadding:
                                                      EdgeInsets.zero,
                                                  title: Text(
                                                      item.supplier?.name ??
                                                          ''),
                                                  titleTextStyle:
                                                      const TextStyle(
                                                    fontSize: 16.0,
                                                    fontWeight: FontWeight.w400,
                                                    color: AppColors.black,
                                                  ),
                                                  // leading: ClipRRect(
                                                  //   borderRadius:
                                                  //       BorderRadius.circular(6.0),
                                                  //   child: CachedNetworkImage(
                                                  //     imageUrl:
                                                  //         item.supplier.imageUrl,
                                                  //     height: 50.0,
                                                  //     width: 50.0,
                                                  //     fit: BoxFit.cover,
                                                  //     placeholder: (context, url) =>
                                                  //         const Center(
                                                  //       child:
                                                  //           CircularProgressIndicator(),
                                                  //     ),
                                                  //   ),
                                                  // ),
                                                )),
                                                DataCell(Text(
                                                  item.status == 1
                                                      ? 'Received'
                                                      : 'Pending',
                                                  style: const TextStyle(
                                                    fontSize: 16.0,
                                                    fontWeight: FontWeight.w500,
                                                    color: AppColors.black,
                                                  ),
                                                )),
                                                DataCell(Text(
                                                  item.total ?? '',
                                                  style: const TextStyle(
                                                    fontSize: 16.0,
                                                    fontWeight: FontWeight.w500,
                                                    color: AppColors.black,
                                                  ),
                                                )),
                                                // DataCell(Text(
                                                //   item.paidAmountFormatted,
                                                //   style: const TextStyle(
                                                //     fontSize: 16.0,
                                                //     fontWeight: FontWeight.w500,
                                                //     color: AppColors.black,
                                                //   ),
                                                // )),
                                                // DataCell(Text(
                                                //   item.paymentStatus,
                                                //   style: const TextStyle(
                                                //     fontSize: 16.0,
                                                //     fontWeight: FontWeight.w500,
                                                //     color: AppColors.black,
                                                //   ),
                                                // )),
                                                DataCell(Row(
                                                  children: [
                                                    IconButton(
                                                      onPressed: () =>
                                                          showDialog(
                                                        context: context,
                                                        builder: (context) =>
                                                            DeleteDialog(
                                                          onConfirmTap: () {},
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
              }),
            ],
          ),
        ),
      ),
    );
  }
}
