import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:image_picker/image_picker.dart';

import '../../../core/components/custom_image_picker.dart';
import '../../../core/core.dart';
import '../../../data/models/response/inventory_response/brands_response_model.dart';
import '../../../data/models/response/inventory_response/category_response_model.dart';
import '../../../data/models/response/inventory_response/unit_response_model.dart';
import '../bloc/brand/brand_bloc.dart';
import '../bloc/category/category_bloc.dart';
import '../bloc/product/product_bloc.dart';
import '../bloc/unit/unit_bloc.dart';

class AddNewProduct extends StatefulWidget {
  const AddNewProduct({super.key});

  @override
  State<AddNewProduct> createState() => _AddNewProductState();
}

class _AddNewProductState extends State<AddNewProduct> {
  late final TextEditingController productImageController;
  late final TextEditingController productTypeController;
  late final TextEditingController categoryController;
  late final TextEditingController nameController;
  late final TextEditingController brandController;
  late final TextEditingController priceController;
  // late final TextEditingController purchasePriceController;
  late final TextEditingController stockController;
  //alert stock
  late final TextEditingController alertStockController;
  late final TextEditingController descriptionController;
  //item code
  late final TextEditingController itemCodeController;

  XFile? image;
  Unit? selectedUnit;
  Category? selectedCategory;
  Brand? selectedBrand;
  bool status = true;

  @override
  void initState() {
    productImageController = TextEditingController();
    productTypeController = TextEditingController();
    categoryController = TextEditingController();
    nameController = TextEditingController();
    brandController = TextEditingController();
    priceController = TextEditingController();
    stockController = TextEditingController();
    itemCodeController = TextEditingController();
    alertStockController = TextEditingController();
    descriptionController = TextEditingController();
    context.read<UnitBloc>().add(const UnitEvent.getUnits());
    context.read<CategoryBloc>().add(const CategoryEvent.getCategories());
    context.read<BrandBloc>().add(const BrandEvent.getBrands());
    super.initState();
  }

  @override
  void dispose() {
    productImageController.dispose();
    productTypeController.dispose();
    categoryController.dispose();
    nameController.dispose();
    brandController.dispose();
    priceController.dispose();
    alertStockController.dispose();
    stockController.dispose();
    descriptionController.dispose();
    itemCodeController.dispose();
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
                  'Add New Product',
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
          padding: const EdgeInsets.symmetric(horizontal: 16),
          children: [
            CustomTextField(
              controller: nameController,
              label: 'Name',
              hintText: 'Please Enter Name',
              textInputAction: TextInputAction.next,
              keyboardType: TextInputType.text,
            ),
            const SpaceHeight(16.0),
            CustomTextField(
              controller: descriptionController,
              label: 'Description',
              hintText: 'Please Enter Description',
              textInputAction: TextInputAction.next,
              maxLines: 3,
              keyboardType: TextInputType.text,
            ),
            const SpaceHeight(16.0),
            CustomImagePicker(
              label: 'Image',
              onChanged: (imagePath) => image = imagePath,
            ),
            const SpaceHeight(16.0),
            Row(
              children: [
                Flexible(
                  child: BlocBuilder<UnitBloc, UnitState>(
                    builder: (context, state) {
                      return state.maybeWhen(orElse: () {
                        return CustomDropdown<Unit>(
                          value: selectedUnit,
                          items: const [],
                          label: 'label',
                        );
                      }, loaded: (units) {
                        return CustomDropdown<Unit>(
                          value: selectedUnit,
                          items: units,
                          label: 'Unit',
                          onChanged: (value) {
                            setState(() {
                              selectedUnit = value;
                            });
                          },
                        );
                      });
                    },
                  ),
                ),
                const SpaceWidth(16.0),
                Flexible(
                  child: BlocBuilder<CategoryBloc, CategoryState>(
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
                ),
              ],
            ),
            const SpaceHeight(16.0),
            Row(
              children: [
                Flexible(
                  child: BlocBuilder<BrandBloc, BrandState>(
                    builder: (context, state) {
                      return state.maybeWhen(orElse: () {
                        return CustomDropdown<Brand>(
                          value: selectedBrand,
                          items: const [],
                          label: 'label',
                        );
                      }, loaded: (brands) {
                        return CustomDropdown<Brand>(
                          value: selectedBrand,
                          items: brands,
                          label: 'Brand',
                          onChanged: (value) {
                            setState(() {
                              selectedBrand = value;
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
            CustomTextField(
              controller: priceController,
              label: 'Price',
              hintText: 'Please Enter Price',
              textInputAction: TextInputAction.next,
              keyboardType: TextInputType.number,
            ),
            const SpaceHeight(16.0),
            CustomTextField(
              controller: stockController,
              label: 'Stock',
              hintText: 'Please Enter Stock',
              textInputAction: TextInputAction.next,
              keyboardType: TextInputType.number,
            ),
            const SpaceHeight(16.0),
            CustomTextField(
              controller: alertStockController,
              label: 'Alert Price',
              hintText: 'Please Enter Alert Price',
              textInputAction: TextInputAction.next,
              keyboardType: TextInputType.number,
            ),
            const SpaceHeight(16.0),
            CustomTextField(
              controller: itemCodeController,
              label: 'Item Code',
              hintText: 'Please Enter Item Code',
              textInputAction: TextInputAction.next,
              keyboardType: TextInputType.number,
            ),
            //status
            const SpaceHeight(16.0),
            Row(
              children: [
                const Text('Status'),
                const SpaceWidth(16.0),
                Switch(
                  value: status,
                  onChanged: (value) {
                    setState(() {
                      status = value;
                    });
                  },
                ),
              ],
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
                  // const Spacer(),
                  Flexible(
                    child: Button.outlined(
                      onPressed: () => context.pop(),
                      label: 'Cancel',
                    ),
                  ),
                  const SpaceWidth(8.0),
                  Flexible(
                    child: BlocConsumer<ProductBloc, ProductState>(
                      listener: (context, state) {
                        state.maybeWhen(
                          orElse: () {},
                          loaded: (data) {
                            context.pop();
                            ScaffoldMessenger.of(context).showSnackBar(
                              const SnackBar(
                                content: Text('Product Added Successfully'),
                              ),
                            );
                          },
                        );
                      },
                      builder: (context, state) {
                        return Button.filled(
                          onPressed: () {
                            context
                                .read<ProductBloc>()
                                .add(ProductEvent.addProduct(
                                  name: nameController.text,
                                  description: descriptionController.text,
                                  price: priceController.text,
                                  stock: int.parse(stockController.text),
                                  alertStock:
                                      int.parse(alertStockController.text),
                                  itemCode: itemCodeController.text,
                                  status: status ? 1 : 0,
                                  unitId: selectedUnit?.id ?? 0,
                                  categoryId: selectedCategory?.id ?? 0,
                                  brandId: selectedBrand?.id ?? 0,
                                  warehouseId: 1,
                                  photo: image!,
                                ));
                          },
                          label: 'Create',
                        );
                      },
                    ),
                  ),
                  // const Spacer(),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
