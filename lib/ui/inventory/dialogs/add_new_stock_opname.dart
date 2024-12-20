import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../core/core.dart';
import '../../../data/models/response/inventory_response/category_response_model.dart';
import '../../../data/models/response/inventory_response/product_response_model.dart';
import '../../../data/models/response/inventory_response/warehouse_response_model.dart';
import '../bloc/category/category_bloc.dart';
import '../bloc/product/product_bloc.dart';
import '../bloc/so/add_so/add_so_bloc.dart';
import '../bloc/so/get_so/get_so_bloc.dart';
import '../bloc/warehouse/warehouse_bloc.dart';

class AddNewStockOpname extends StatefulWidget {
  const AddNewStockOpname({super.key});

  @override
  State<AddNewStockOpname> createState() => _AddNewStockOpnameState();
}

class _AddNewStockOpnameState extends State<AddNewStockOpname> {
  late final TextEditingController productImageController;
  late final TextEditingController skuController;
  late final TextEditingController warehouseController;
  late final TextEditingController nameController;
  late final TextEditingController initialQuantityController;
  late final TextEditingController countedQuantityController;
  late final TextEditingController differenceController;
  late final TextEditingController statusController;
  late final TextEditingController noteController;
  late final TextEditingController categoryController;

  Category? selectedCategory;
  Warehouse? selectedWarehouse;
  Product? selectedProduct;

  @override
  void initState() {
    productImageController = TextEditingController();
    skuController = TextEditingController();
    warehouseController = TextEditingController();
    nameController = TextEditingController();
    initialQuantityController = TextEditingController();
    countedQuantityController = TextEditingController();
    differenceController = TextEditingController();
    statusController = TextEditingController();
    noteController = TextEditingController();
    categoryController = TextEditingController();
    context.read<CategoryBloc>().add(const CategoryEvent.getCategories());
    context.read<WarehouseBloc>().add(const WarehouseEvent.getWarehouses());
    context.read<ProductBloc>().add(const ProductEvent.getProducts());
    super.initState();
  }

  @override
  void dispose() {
    productImageController.dispose();
    skuController.dispose();
    warehouseController.dispose();
    nameController.dispose();
    initialQuantityController.dispose();
    countedQuantityController.dispose();
    differenceController.dispose();
    statusController.dispose();
    noteController.dispose();
    categoryController.dispose();
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
                  'Add New Stock Opname',
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
            Row(
              children: [
                // Flexible(
                //   child: CustomTextField(
                //     controller: skuController,
                //     label: 'SKU (Stock Keeping Unit)',
                //     hintText: 'Please Enter SKU (Stock Keeping Unit)',
                //     textInputAction: TextInputAction.next,
                //     keyboardType: TextInputType.text,
                //   ),
                // ),
                // const SpaceWidth(16.0),
                Flexible(
                  child: BlocBuilder<WarehouseBloc, WarehouseState>(
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
                ),
              ],
            ),
            const SpaceHeight(16.0),
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
            const SpaceHeight(16.0),
            CustomTextField(
              controller: initialQuantityController,
              label: 'Initial Quantity',
              hintText: 'Please Enter Initial Quantity',
              textInputAction: TextInputAction.next,
              keyboardType: TextInputType.number,
            ),
            const SpaceHeight(16.0),
            CustomTextField(
              controller: countedQuantityController,
              label: 'Counted Quantity',
              hintText: 'Please Enter Counted Quantity',
              textInputAction: TextInputAction.next,
              keyboardType: TextInputType.number,
            ),
            const SpaceHeight(16.0),
            BlocBuilder<CategoryBloc, CategoryState>(
              builder: (context, state) {
                return state.maybeWhen(orElse: () {
                  return CustomDropdown<Category>(
                    value: selectedCategory,
                    items: const [],
                    label: 'label',
                  );
                }, loaded: (categories) {
                  return CustomDropdown<Category>(
                    value: selectedCategory,
                    items: categories,
                    label: 'Category',
                    onChanged: (value) {
                      setState(() {
                        selectedCategory = value;
                      });
                    },
                  );
                });
              },
            ),
            const SpaceHeight(16.0),
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
                    child: BlocConsumer<AddSoBloc, AddSoState>(
                      listener: (context, state) {
                        state.maybeWhen(
                          orElse: () {},
                          success: (data) {
                            context.pop();
                            ScaffoldMessenger.of(context).showSnackBar(
                              const SnackBar(
                                content: Text('So Added Successfully'),
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
                                context.read<AddSoBloc>().add(
                                      AddSoEvent.add(
                                        warehouseId: selectedWarehouse?.id ?? 0,
                                        productId: selectedProduct?.id ?? 0,
                                        systemStock: int.parse(
                                            initialQuantityController.text),
                                        physicalStock: int.parse(
                                            countedQuantityController.text),
                                        categoryId: selectedCategory?.id ?? 0,
                                        note: noteController.text,
                                      ),
                                    );
                              },
                              label: 'Create',
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
