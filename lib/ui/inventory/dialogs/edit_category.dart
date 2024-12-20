import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:image_picker/image_picker.dart';

import '../../../core/components/custom_image_picker.dart';
import '../../../core/core.dart';
import '../../../data/models/response/inventory_response/category_response_model.dart';
import '../bloc/category/category_bloc.dart';

class EditCategory extends StatefulWidget {
  final Category item;
  final VoidCallback onConfirmTap;
  const EditCategory({
    super.key,
    required this.item,
    required this.onConfirmTap,
  });

  @override
  State<EditCategory> createState() => _EditCategoryState();
}

class _EditCategoryState extends State<EditCategory> {
  late final TextEditingController categoryNameController;
  // late final TextEditingController categoryLogoController;
  XFile? _image;

  @override
  void initState() {
    categoryNameController = TextEditingController(text: widget.item.name);

    super.initState();
  }

  @override
  void dispose() {
    categoryNameController.dispose();
    // categoryLogoController.dispose();
    super.dispose();
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
                  'Edit Category',
                  style: TextStyle(
                    fontSize: 20.0,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                const SpaceHeight(24.0),
                CustomTextField(
                  controller: categoryNameController,
                  label: 'Name',
                  hintText: 'Please Enter Name',
                  textInputAction: TextInputAction.next,
                ),
                const SpaceHeight(12.0),
                CustomImagePicker(
                  label: 'Brand Logo',
                  imageUrl: '${Variables.baseUrl}/storage/${widget.item.image}',
                  onChanged: (imagePath) => _image = imagePath,
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
                      child: BlocConsumer<CategoryBloc, CategoryState>(
                        listener: (context, state) {
                          state.maybeWhen(
                            orElse: () {},
                            error: (error) {
                              ScaffoldMessenger.of(context).showSnackBar(
                                SnackBar(
                                  content: Text(error),
                                  backgroundColor: Colors.red,
                                ),
                              );
                            },
                            loaded: (data) {
                              context.pop();
                            },
                          );
                        },
                        builder: (context, state) {
                          return state.maybeWhen(orElse: () {
                            return Button.filled(
                              onPressed: () {
                                context.read<CategoryBloc>().add(
                                      CategoryEvent.updateCategory(
                                        id: widget.item.id!,
                                        name: categoryNameController.text,
                                        image: _image,
                                      ),
                                    );
                              },
                              label: 'Update',
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
