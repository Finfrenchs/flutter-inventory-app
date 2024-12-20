import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:image_picker/image_picker.dart';

import '../../../core/components/custom_image_picker.dart';
import '../../../core/core.dart';
import '../../../data/models/response/inventory_response/brands_response_model.dart';
import '../../../data/models/response/inventory_response/category_response_model.dart';
import '../../../data/models/response/inventory_response/product_response_model.dart';
import '../../../data/models/response/inventory_response/unit_response_model.dart';
import '../bloc/brand/brand_bloc.dart';
import '../bloc/category/category_bloc.dart';
import '../bloc/product/product_bloc.dart';
import '../bloc/unit/unit_bloc.dart';
// import '../models/product_model.dart';

class EditProduct extends StatefulWidget {
  final Product item;
  const EditProduct({super.key, required this.item});

  @override
  State<EditProduct> createState() => _EditProductState();
}

class _EditProductState extends State<EditProduct> {
  // late final TextEditingController productImageController;
  // late final TextEditingController productTypeController;
  // late final TextEditingController categoryController;
  late final TextEditingController nameController;
  // late final TextEditingController brandController;
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
    final item = widget.item;
    nameController = TextEditingController(text: item.name);
    descriptionController = TextEditingController(text: item.description);
    // image = XFile(item.photo);
    selectedUnit = item.unit;
    selectedCategory = item.category;
    selectedBrand = item.brand;
    status = item.status == 1;
    priceController = TextEditingController(text: item.price.toString());
    stockController = TextEditingController(text: item.stock.toString());
    alertStockController =
        TextEditingController(text: item.alertStock.toString());
    itemCodeController = TextEditingController(text: item.itemCode);
    context.read<UnitBloc>().add(const UnitEvent.getUnits());
    context.read<CategoryBloc>().add(const CategoryEvent.getCategories());
    context.read<BrandBloc>().add(const BrandEvent.getBrands());
    super.initState();
  }

  @override
  void dispose() {
    // productImageController.dispose();
    // productTypeController.dispose();
    // categoryController.dispose();
    nameController.dispose();
    // brandController.dispose();
    priceController.dispose();

    stockController.dispose();
    alertStockController.dispose();
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
                  'Edit Product',
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
              keyboardType: TextInputType.text,
            ),
            const SpaceHeight(16.0),
            CustomImagePicker(
              label: 'Image',
              imageUrl: widget.item.photo,
              onChanged: (imagePath) => setState(() => image = imagePath),
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
                          label: 'Unit',
                          onChanged: (value) {
                            selectedUnit = value;
                          },
                        );
                      }, loaded: (units) {
                        return CustomDropdown<Unit>(
                          value: widget.item.unit,
                          items: units,
                          label: 'Unit',
                          onChanged: (value) {
                            selectedUnit = value;
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
                        label: 'Category',
                        onChanged: (value) {
                          selectedCategory = value;
                        },
                      );
                    }, loaded: (categories) {
                      return CustomDropdown<Category>(
                        value: widget.item.category,
                        items: categories,
                        label: 'Category',
                        onChanged: (value) {
                          selectedCategory = value;
                        },
                      );
                    });
                  }),
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
                          label: 'Brand',
                          onChanged: (value) {
                            selectedBrand = value;
                          },
                        );
                      }, loaded: (brands) {
                        return CustomDropdown<Brand>(
                          value: widget.item.brand,
                          items: brands,
                          label: 'Brand',
                          onChanged: (value) {
                            selectedBrand = value;
                          },
                        );
                      });
                    },
                  ),
                ),
                const SpaceWidth(16.0),
                Flexible(
                  child: CustomTextField(
                    controller: itemCodeController,
                    label: 'Item Code',
                    hintText: 'Please Enter Item Code',
                    textInputAction: TextInputAction.next,
                    keyboardType: TextInputType.text,
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
                  const SpaceWidth(16.0),
                  Flexible(
                    child: Button.filled(
                      onPressed: () {
                        // final product = Product(
                        //   id: widget.item.id,
                        //   name: nameController.text,
                        //   description: descriptionController.text,
                        //   photo: image?.path ?? widget.item.photo,
                        //   unit: selectedUnit,
                        //   category: selectedCategory,
                        //   brand: selectedBrand,
                        //   price: priceController.text,
                        //   stock: int.parse(stockController.text),
                        //   alertStock: int.parse(alertStockController.text),
                        //   itemCode: itemCodeController.text,
                        //   status: status ? 1 : 0,
                        // );
                        context.read<ProductBloc>().add(
                              ProductEvent.updateProduct(
                                  id: widget.item.id!,
                                  name: nameController.text,
                                  description: descriptionController.text,
                                  photo: image!,
                                  unitId: selectedUnit!.id!,
                                  categoryId: selectedCategory!.id!,
                                  brandId: selectedBrand!.id!,
                                  price: priceController.text,
                                  stock: int.parse(stockController.text),
                                  alertStock:
                                      int.parse(alertStockController.text),
                                  itemCode: itemCodeController.text,
                                  status: status ? 1 : 0,
                                  warehouseId: 1),
                            );
                        context.pop();
                      },
                      label: 'Update',
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
