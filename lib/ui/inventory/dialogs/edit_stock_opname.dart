import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../core/core.dart';
import '../../../data/models/response/inventory_response/stock_opnames_response_model.dart';
import '../bloc/so/edit_so/edit_so_bloc.dart';
import '../bloc/so/get_so/get_so_bloc.dart';

class EditStockOpname extends StatefulWidget {
  final StockOpname item;
  const EditStockOpname({super.key, required this.item});

  @override
  State<EditStockOpname> createState() => _EditStockOpnameState();
}

class _EditStockOpnameState extends State<EditStockOpname> {
  // late final TextEditingController productImageController;
  // late final TextEditingController skuController;
  // late final TextEditingController warehouseController;
  // late final TextEditingController nameController;
  // late final TextEditingController initialQuantityController;
  // late final TextEditingController countedQuantityController;
  // late final TextEditingController differenceController;
  // late final TextEditingController statusController;
  late final TextEditingController noteController;

  @override
  void initState() {
    final item = widget.item;
    // productImageController = TextEditingController(text: item.imageUrl);
    // skuController = TextEditingController(text: item.sku);
    // warehouseController = TextEditingController(text: item.warehouse);
    // nameController = TextEditingController(text: item.productName);
    // initialQuantityController =
    //     TextEditingController(text: '${item.initialQuantity}');
    // countedQuantityController =
    //     TextEditingController(text: '${item.countedQuantity}');
    // differenceController = TextEditingController(text: '${item.difference}');
    // statusController = TextEditingController(text: item.status);
    noteController = TextEditingController(text: item.note);
    super.initState();
  }

  @override
  void dispose() {
    // productImageController.dispose();
    // skuController.dispose();
    // warehouseController.dispose();
    // nameController.dispose();
    // initialQuantityController.dispose();
    // countedQuantityController.dispose();
    // differenceController.dispose();
    // statusController.dispose();
    noteController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: context.deviceWidth - 600.0,
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
                  'Edit Stock Opname',
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
            // CustomImagePicker(
            //   label: 'Image',
            //   onChanged: (imagePath) =>
            //       productImageController.text = imagePath.toString(),
            // ),
            // const SpaceHeight(16.0),
            // Row(
            //   children: [
            //     Flexible(
            //       child: CustomTextField(
            //         controller: skuController,
            //         label: 'SKU (Stock Keeping Unit)',
            //         hintText: 'Please Enter SKU (Stock Keeping Unit)',
            //         textInputAction: TextInputAction.next,
            //         keyboardType: TextInputType.text,
            //       ),
            //     ),
            //     const SpaceWidth(16.0),
            //     Flexible(
            //       child: CustomTextField(
            //         controller: warehouseController,
            //         label: 'Warehouse',
            //         hintText: 'Please Enter Warehouse',
            //         textInputAction: TextInputAction.next,
            //         keyboardType: TextInputType.text,
            //       ),
            //     ),
            //   ],
            // ),
            // const SpaceHeight(16.0),
            // CustomTextField(
            //   controller: nameController,
            //   label: 'Product Name',
            //   hintText: 'Please Enter Product Name',
            //   textInputAction: TextInputAction.next,
            //   keyboardType: TextInputType.text,
            // ),
            // const SpaceHeight(16.0),
            // CustomTextField(
            //   controller: initialQuantityController,
            //   label: 'Initial Quantity',
            //   hintText: 'Please Enter Initial Quantity',
            //   textInputAction: TextInputAction.next,
            //   keyboardType: TextInputType.number,
            // ),
            // const SpaceHeight(16.0),
            // CustomTextField(
            //   controller: countedQuantityController,
            //   label: 'Counted Quantity',
            //   hintText: 'Please Enter Counted Quantity',
            //   textInputAction: TextInputAction.next,
            //   keyboardType: TextInputType.number,
            // ),
            // const SpaceHeight(16.0),
            // CustomTextField(
            //   controller: differenceController,
            //   label: 'Difference',
            //   hintText: 'Please Enter Difference',
            //   textInputAction: TextInputAction.next,
            //   keyboardType: TextInputType.number,
            // ),
            // const SpaceHeight(16.0),
            // CustomTextField(
            //   controller: statusController,
            //   label: 'Status',
            //   hintText: 'Please Enter Status',
            //   textInputAction: TextInputAction.next,
            //   keyboardType: TextInputType.text,
            // ),
            // const SpaceHeight(16.0),
            CustomTextField(
              controller: noteController,
              label: 'Notes',
              hintText: 'Please Enter Notes',
              keyboardType: TextInputType.text,
              maxLines: 5,
            ),
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
                    child: BlocConsumer<EditSoBloc, EditSoState>(
                      listener: (context, state) {
                        state.maybeWhen(
                          orElse: () {},
                          success: (data) {
                            context.pop();
                            ScaffoldMessenger.of(context).showSnackBar(
                              const SnackBar(
                                content: Text('So Edit Successfully'),
                              ),
                            );
                            context
                                .read<GetSoBloc>()
                                .add(const GetSoEvent.fetch());
                          },
                        );
                      },
                      builder: (context, state) {
                        return state.maybeWhen(
                          orElse: () {
                            return Button.filled(
                              onPressed: () {
                                context.read<EditSoBloc>().add(
                                      EditSoEvent.edit(
                                        id: widget.item.id!,
                                        note: noteController.text,
                                      ),
                                    );
                              },
                              label: 'Update',
                            );
                          },
                          loading: () => const Center(
                            child: CircularProgressIndicator(),
                          ),
                        );
                      },
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
