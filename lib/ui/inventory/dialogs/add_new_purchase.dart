import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../core/core.dart';
import '../../../data/models/response/inventory_response/product_response_model.dart';
import '../../../data/models/response/inventory_response/supplier_response_model.dart';
import '../bloc/product/product_bloc.dart';
import '../bloc/purchase/purchase_bloc.dart';

import '../bloc/supplier/supplier_bloc.dart';
import '../widgets/search_product.dart';

class AddNewPurchase extends StatefulWidget {
  const AddNewPurchase({super.key});

  @override
  State<AddNewPurchase> createState() => _AddNewPurchaseState();
}

class _AddNewPurchaseState extends State<AddNewPurchase> {
  //SupplierModel? supplierModel;
  DateTime? purchaseDate;
  List<Product> productsSelected = [];
  Supplier? selectedSupplier;

  final int _discount = 0;
  final int _tax = 999;

  //final orderStatuses = ['Pending', 'Received', 'etc...'];
  // final paymentMethods = ['Cash', 'etc..'];
  //final paymentStatuses = ['Dibayar', 'Belum dibayar'];
  //final quantityNotifier = ValueNotifier(0);

  late final TextEditingController invoiceNumberController;
  late final TextEditingController productController;
  //late final TextEditingController termsAndConditionsController;
  late final TextEditingController notesController;
  //late final TextEditingController orderStatusController;
  //late final TextEditingController orderTaxController;
  //late final TextEditingController discountController;
  // late final TextEditingController paymentMethodController;
  // late final TextEditingController paymentStatusController;

  @override
  void initState() {
    invoiceNumberController = TextEditingController();
    productController = TextEditingController();
    //termsAndConditionsController = TextEditingController();
    notesController = TextEditingController();
    //orderStatusController = TextEditingController();
    //orderTaxController = TextEditingController();
    //discountController = TextEditingController();
    //paymentMethodController = TextEditingController();
    //paymentStatusController = TextEditingController();
    context.read<SupplierBloc>().add(const SupplierEvent.getSuppliers());
    context.read<ProductBloc>().add(const ProductEvent.getProducts());
    super.initState();
  }

  int calculateTotal() {
    return productsSelected.fold(
        0, (sum, item) => sum + item.subtotal - _discount - _tax);
  }

  @override
  void dispose() {
    invoiceNumberController.dispose();
    productController.dispose();
    //termsAndConditionsController.dispose();
    notesController.dispose();
    // orderStatusController.dispose();
    //orderTaxController.dispose();
    //discountController.dispose();
    //paymentMethodController.dispose();
    //paymentStatusController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: context.deviceWidth,
      child: Scaffold(
        backgroundColor: AppColors.white,
        appBar: const PreferredSize(
          preferredSize: Size.fromHeight(100.0),
          child: Padding(
            padding: EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Add New Purchase',
                  style: TextStyle(
                    fontSize: 20.0,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                SpaceHeight(16.0),
                Divider(),
              ],
            ),
          ),
        ),
        body: ListView(
          padding: const EdgeInsets.all(16.0),
          children: [
            Row(
              children: [
                Flexible(
                  child: CustomTextField(
                    controller: invoiceNumberController,
                    label: 'Invoice Number',
                    hintText: 'Please Enter Invoice Number',
                    textInputAction: TextInputAction.next,
                    keyboardType: TextInputType.text,
                  ),
                ),
                const SpaceWidth(16.0),
                // Flexible(
                //   child: CustomDropdown(
                //     value: supplierModel?.name,
                //     items: suppliers.map((item) => item.name).toList(),
                //     label: 'Supplier',
                //     onChanged: (value) {
                //       supplierModel = suppliers
                //           .firstWhere((element) => element.name == value);
                //     },
                //   ),
                // ),
                Flexible(
                  child: BlocBuilder<SupplierBloc, SupplierState>(
                    builder: (context, state) {
                      return state.maybeWhen(orElse: () {
                        return CustomDropdown<Supplier>(
                          value: selectedSupplier,
                          items: const [],
                          label: 'label',
                        );
                      }, loaded: (units) {
                        return CustomDropdown<Supplier>(
                          value: selectedSupplier,
                          items: units,
                          label: 'Supplier',
                          onChanged: (value) {
                            setState(() {
                              selectedSupplier = value;
                            });
                          },
                        );
                      });
                    },
                  ),
                ),
                const SpaceWidth(16.0),
                Flexible(
                  child: CustomDatePicker(
                    label: 'Purchase Date',
                    hintText: 'Select Purchase Date',
                    onDateSelected: (selectedDate) =>
                        purchaseDate = selectedDate,
                  ),
                ),
              ],
            ),
            const SpaceHeight(16.0),
            BlocBuilder<ProductBloc, ProductState>(
              builder: (context, state) {
                return state.maybeWhen(
                  orElse: () => const SizedBox.shrink(),
                  loaded: (products) {
                    return SearchProduct(
                      controller: productController,
                      items: products,
                      onSelected: (value) {
                        productsSelected.add(value);
                        productController.clear();
                        setState(() {});
                      },
                    );
                  },
                );
              },
            ),

            // PRODUCT SELECTED
            if (productsSelected.isNotEmpty) ...[
              SingleChildScrollView(
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
                    const DataColumn(label: Text('Quantity')),
                    const DataColumn(label: Text('Unit Price')),
                    const DataColumn(label: Text('Discount')),
                    const DataColumn(label: Text('Tax')),
                    const DataColumn(label: Text('Subtotal')),
                    const DataColumn(label: Text('Action')),
                  ],
                  rows: productsSelected
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
                              borderRadius: BorderRadius.circular(6.0),
                              child: CachedNetworkImage(
                                imageUrl:
                                    '${Variables.baseUrlImage}/${item.image}',
                                height: 50.0,
                                width: 50.0,
                                fit: BoxFit.cover,
                                placeholder: (context, url) => const Center(
                                  child: CircularProgressIndicator(),
                                ),
                              ),
                            ),
                          )),
                          DataCell(
                            Row(
                              children: [
                                InkWell(
                                  onTap: () {
                                    setState(() {
                                      if (item.quantity > 1) {
                                        item.quantity--;
                                      }
                                    });
                                  },
                                  child: const Icon(
                                    Icons.remove_circle_outline,
                                    color: AppColors.primary,
                                  ),
                                ),
                                Text(
                                  '${item.quantity}', // Tampilkan jumlah terkini
                                  style: const TextStyle(
                                      fontWeight: FontWeight.bold),
                                ),
                                InkWell(
                                  onTap: () {
                                    setState(() {
                                      item.quantity++;
                                    });
                                  },
                                  child: const Icon(
                                    Icons.add_circle_outline,
                                    color: AppColors.primary,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          DataCell(Text(
                            item.price!
                                .currencyFormatRp, // Tampilkan subtotal berdasarkan quantity
                            style: const TextStyle(
                              fontSize: 16.0,
                              fontWeight: FontWeight.w500,
                              color: AppColors.black,
                            ),
                          )),
                          DataCell(Text(
                            _discount.currencyFormatRp,
                            style: const TextStyle(
                              fontSize: 16.0,
                              fontWeight: FontWeight.w500,
                              color: AppColors.black,
                            ),
                          )),
                          DataCell(Text(
                            _tax.currencyFormatRp,
                            style: const TextStyle(
                              fontSize: 16.0,
                              fontWeight: FontWeight.w500,
                              color: AppColors.black,
                            ),
                          )),
                          DataCell(Text(
                            (item.subtotal - _discount - _tax).currencyFormatRp,
                            style: const TextStyle(
                              fontSize: 16.0,
                              fontWeight: FontWeight.w500,
                              color: AppColors.black,
                            ),
                          )),
                          DataCell(IconButton(
                            onPressed: () {
                              productsSelected.removeWhere(
                                  (element) => element.name == item.name);
                              setState(() {});
                            },
                            icon: const Icon(Icons.delete_outline),
                          )),
                        ]),
                      )
                      .toList(),
                ),
              ),
              const SpaceHeight(8.0),
              const Divider(),
              const SpaceHeight(8.0),
              Row(
                children: [
                  const Expanded(
                    child: Text(
                      'SubTotal',
                      textAlign: TextAlign.end,
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 18.0,
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 170.0,
                    child: Text(
                      calculateTotal()
                          .currencyFormatRp, //ini adalah sub total dari total product dan quantity kali dengan harganya
                      textAlign: TextAlign.center,
                      style: const TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 18.0,
                      ),
                    ),
                  ),
                ],
              ),
              const SpaceHeight(8.0),
              const Divider(),
              const SpaceHeight(8.0),
            ],
            // END TABLE

            const SpaceHeight(24.0),
            Row(
              children: [
                // Flexible(
                //   child: CustomTextField(
                //     controller: termsAndConditionsController,
                //     label: 'Terms & Conditions',
                //     hintText: 'Please Enter Terms & Conditions',
                //     maxLines: 5,
                //     textInputAction: TextInputAction.next,
                //     keyboardType: TextInputType.text,
                //   ),
                // ),
                // const SpaceWidth(16.0),
                Flexible(
                  child: CustomTextField(
                    controller: notesController,
                    label: 'Notes',
                    hintText: 'Please Enter Notes',
                    maxLines: 5,
                    textInputAction: TextInputAction.next,
                    keyboardType: TextInputType.text,
                  ),
                ),
              ],
            ),
            const SpaceHeight(16.0),
            const Row(
              children: [
                // Flexible(
                //   child: CustomDropdown(
                //     value: orderStatusController.text.isEmpty
                //         ? null
                //         : orderStatusController.text,
                //     items: orderStatuses,
                //     label: 'Order Status',
                //     onChanged: (value) {
                //       orderStatusController.text = value ?? '';
                //     },
                //   ),
                // ),
                // const SpaceWidth(16.0),
                // Flexible(
                //   child: CustomTextField(
                //     controller: orderTaxController,
                //     label: 'Order Tax',
                //     hintText: 'Please Enter Order Tax',
                //     textInputAction: TextInputAction.next,
                //     keyboardType: TextInputType.number,
                //   ),
                // ),
                // const SpaceWidth(16.0),
                // Flexible(
                //   child: CustomTextField(
                //     controller: discountController,
                //     label: 'Discount',
                //     hintText: 'Please Enter Discount',
                //     textInputAction: TextInputAction.next,
                //     keyboardType: TextInputType.number,
                //   ),
                // ),
              ],
            ),
            const SpaceHeight(16.0),
            // Row(
            //   children: [
            //     Flexible(
            //       child: CustomDropdown(
            //         value: paymentMethodController.text.isEmpty
            //             ? null
            //             : paymentMethodController.text,
            //         items: paymentMethods,
            //         label: 'Metode Pembayaran',
            //         onChanged: (value) {
            //           paymentMethodController.text = value ?? '';
            //         },
            //       ),
            //     ),
            //     const SpaceWidth(16.0),
            //     Flexible(
            //       child: CustomDropdown(
            //         value: paymentStatusController.text.isEmpty
            //             ? null
            //             : paymentStatusController.text,
            //         items: paymentStatuses,
            //         label: 'Status Pembayaran',
            //         onChanged: (value) {
            //           paymentStatusController.text = value ?? '';
            //         },
            //       ),
            //     ),
            //   ],
            // ),
          ],
        ),
        bottomNavigationBar: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              const Divider(),
              const SpaceHeight(16.0),
              Row(
                children: [
                  const Spacer(),
                  Flexible(
                    child: Button.outlined(
                      onPressed: () => context.pop(),
                      label: 'Cancel',
                    ),
                  ),
                  const SpaceWidth(16.0),
                  Flexible(
                    child: BlocListener<PurchaseBloc, PurchaseState>(
                      listener: (context, state) {
                        state.maybeWhen(
                          orElse: () {},
                          failed: (message) {
                            ScaffoldMessenger.of(context).showSnackBar(
                              SnackBar(
                                content: Text(message),
                              ),
                            );
                          },
                          successAdd: (data) {
                            context.pop();
                            ScaffoldMessenger.of(context).showSnackBar(
                              const SnackBar(
                                content: Text('Purchase Added Successfully'),
                              ),
                            );
                          },
                        );
                      },
                      child: Button.filled(
                        onPressed: () {
                          if (selectedSupplier != null &&
                              purchaseDate != null) {
                            context.read<PurchaseBloc>().add(
                                  PurchaseEvent.add(
                                    invoiceNumber: invoiceNumberController.text,
                                    invoiceDate: purchaseDate!,
                                    supplierId: selectedSupplier!.id!,
                                    totalPrice: calculateTotal(),
                                    status: 1,
                                    note: notesController.text,
                                    dueDate: purchaseDate!
                                        .add(const Duration(days: 1)),
                                    items: productsSelected,
                                  ),
                                );
                          } else {
                            ScaffoldMessenger.of(context).showSnackBar(
                              const SnackBar(
                                content: Text(
                                    'Mohon lengkapi semua data yang diperlukan.'),
                              ),
                            );
                          }
                        },
                        label: 'Create',
                      ),
                    ),
                  ),
                  const Spacer(),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
