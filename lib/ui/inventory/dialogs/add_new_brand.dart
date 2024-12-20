import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:image_picker/image_picker.dart';

import '../../../core/components/custom_image_picker.dart';
import '../../../core/core.dart';
import '../bloc/brand/brand_bloc.dart';

class AddNewBrand extends StatefulWidget {
  final VoidCallback onConfirmTap;
  const AddNewBrand({super.key, required this.onConfirmTap});

  @override
  State<AddNewBrand> createState() => _AddNewBrandState();
}

class _AddNewBrandState extends State<AddNewBrand> {
  late final TextEditingController brandNameController;
  late final TextEditingController brandLogoController;

  XFile? _image;

  @override
  void initState() {
    brandNameController = TextEditingController();
    brandLogoController = TextEditingController();
    super.initState();
  }

  @override
  void dispose() {
    brandNameController.dispose();
    brandLogoController.dispose();
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
                  'Add New Brand',
                  style: TextStyle(
                    fontSize: 20.0,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                const SpaceHeight(24.0),
                CustomTextField(
                  controller: brandNameController,
                  label: 'Name',
                  hintText: 'Please Enter Name',
                  textInputAction: TextInputAction.next,
                ),
                const SpaceHeight(12.0),
                CustomImagePicker(
                  label: 'Brand Logo',
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
                      child: BlocListener<BrandBloc, BrandState>(
                        listener: (context, state) {
                          state.maybeMap(
                            orElse: () {},
                            loaded: (_) {
                              context.pop();
                              ScaffoldMessenger.of(context).showSnackBar(
                                const SnackBar(
                                  content: Text('Brand Added Successfully'),
                                  backgroundColor: AppColors.green,
                                ),
                              );
                            },
                            error: (value) {
                              ScaffoldMessenger.of(context).showSnackBar(
                                SnackBar(
                                  content: Text(value.message),
                                  backgroundColor: AppColors.red,
                                ),
                              );
                            },
                          );
                        },
                        child: BlocBuilder<BrandBloc, BrandState>(
                          builder: (context, state) {
                            return state.maybeWhen(orElse: () {
                              return Button.filled(
                                onPressed: () {
                                  context.read<BrandBloc>().add(
                                        BrandEvent.addBrand(
                                          name: brandNameController.text,
                                          image: _image!,
                                        ),
                                      );
                                  // ScaffoldMessenger.of(context).showSnackBar(
                                  //   SnackBar(
                                  //     content: Text('Brand Added Successfully'),
                                  //     backgroundColor: AppColors.green,
                                  //   ),
                                  // );
                                },
                                label: 'Create',
                              );
                            }, loading: () {
                              return const CircularProgressIndicator();
                            });
                          },
                        ),
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
