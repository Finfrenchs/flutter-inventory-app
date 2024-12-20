import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../core/core.dart';
import '../../../data/models/request/inventory_request/warehouse_stock_request_model.dart';
import '../../../data/models/response/inventory_response/product_response_model.dart';
import '../../../data/models/response/inventory_response/warehouse_response_model.dart';
import '../bloc/product/product_bloc.dart';
import '../bloc/warehouse/warehouse_bloc.dart';
import '../bloc/warehouse_stock/warehouse_stock_bloc.dart';

class AddWarehouseStock extends StatefulWidget {
  final VoidCallback onConfirmTap;
  const AddWarehouseStock({super.key, required this.onConfirmTap});

  @override
  State<AddWarehouseStock> createState() => _AddNewVariationState();
}

class _AddNewVariationState extends State<AddWarehouseStock> {
  late final TextEditingController stockController;
  Warehouse? selectedWarehouse;
  Product? selectedProduct;

  @override
  void initState() {
    stockController = TextEditingController();
    context.read<WarehouseBloc>().add(const WarehouseEvent.getWarehouses());
    context.read<ProductBloc>().add(const ProductEvent.getProducts());
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
    stockController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      content: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SizedBox(
          width: 500.0,
          child: SingleChildScrollView(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  'Add New Warehouse',
                  style: TextStyle(
                    fontSize: 20.0,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                const SpaceHeight(24.0),
                BlocBuilder<WarehouseBloc, WarehouseState>(
                  builder: (context, state) {
                    return state.maybeWhen(orElse: () {
                      return CustomDropdown<Warehouse>(
                        value: selectedWarehouse,
                        items: const [],
                        label: 'label',
                      );
                    }, loaded: (warehouse) {
                      return CustomDropdown<Warehouse>(
                        value: selectedWarehouse,
                        items: warehouse,
                        label: 'Warehouse',
                        onChanged: (value) {
                          setState(() {
                            selectedWarehouse = value;
                          });
                        },
                      );
                    });
                  },
                ),
                const SpaceHeight(24.0),
                BlocBuilder<ProductBloc, ProductState>(
                  builder: (context, state) {
                    return state.maybeWhen(orElse: () {
                      return CustomDropdown<Product>(
                        value: selectedProduct,
                        items: const [],
                        label: 'label',
                      );
                    }, loaded: (product) {
                      return CustomDropdown<Product>(
                        value: selectedProduct,
                        items: product,
                        label: 'Product',
                        onChanged: (value) {
                          setState(() {
                            selectedProduct = value;
                          });
                        },
                      );
                    });
                  },
                ),
                const SpaceHeight(24.0),
                CustomTextField(
                  controller: stockController,
                  label: 'New Stock',
                  hintText: 'Please Enter New Stock',
                  textInputAction: TextInputAction.next,
                ),
                const SpaceHeight(24.0),
                Row(
                  children: [
                    Flexible(
                        child: Button.outlined(
                      onPressed: () => context.pop(),
                      label: 'Cancel',
                    )),
                    const SpaceWidth(16.0),
                    Flexible(
                      child:
                          BlocConsumer<WarehouseStockBloc, WarehouseStockState>(
                        listener: (context, state) {
                          state.maybeWhen(
                            orElse: () {},
                            successAdd: (_) {
                              context.pop();
                              ScaffoldMessenger.of(context).showSnackBar(
                                const SnackBar(
                                  content: Text(
                                      'Warehouse Stock Added Successfully'),
                                ),
                              );
                              context
                                  .read<WarehouseStockBloc>()
                                  .add(const WarehouseStockEvent.fetch());
                            },
                          );
                        },
                        builder: (context, state) {
                          return state.maybeWhen(orElse: () {
                            return Button.filled(
                              onPressed: () {
                                final dataReq = WarehouseStockRequestModel(
                                    warehouseId: selectedWarehouse!.id,
                                    productId: selectedProduct!.id,
                                    stock: int.tryParse(stockController.text));
                                context
                                    .read<WarehouseStockBloc>()
                                    .add(WarehouseStockEvent.add(dataReq));
                              },
                              label: 'Create',
                            );
                          }, loading: () {
                            return const Center(
                              child: CircularProgressIndicator(),
                            );
                          });
                        },
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
