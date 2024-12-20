import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:image_picker/image_picker.dart';

import '../../../core/components/custom_image_picker.dart';
import '../../../core/core.dart';
import '../bloc/category/category_bloc.dart';

class AddNewCategory extends StatefulWidget {
  final VoidCallback onConfirmTap;
  const AddNewCategory({super.key, required this.onConfirmTap});

  @override
  State<AddNewCategory> createState() => _AddNewCategoryState();
}

class _AddNewCategoryState extends State<AddNewCategory> {
  late final TextEditingController categoryNameController;

  XFile? _image;

  @override
  void initState() {
    categoryNameController = TextEditingController();

    super.initState();
  }

  @override
  void dispose() {
    categoryNameController.dispose();

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
                  'Add New Category',
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
                  label: 'Category Logo',
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
                                ),
                              );

                            },
                            loaded: (data) {
                              context.pop();
                              ScaffoldMessenger.of(context).showSnackBar(
                                const SnackBar(
                                  content: Text('Category Added Successfully'),
                                ),
                              );
                            },
                          );
                        },
                        builder: (context, state) {
                          return state.maybeWhen(orElse: () {
                            return Button.filled(
                              onPressed: () {
                                context.read<CategoryBloc>().add(
                                      CategoryEvent.addCategory(
                                        name: categoryNameController.text,
                                        image: _image!,
                                      ),
                                    );
                              },
                              label: 'Create',
                            );
                          }, loading: () {
                            return const Center(
                              child: CircularProgressIndicator(),
                            );
                          });
                          // return Button.filled(
                          //   onPressed: widget.onConfirmTap,
                          //   label: 'Create',
                          // );
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
