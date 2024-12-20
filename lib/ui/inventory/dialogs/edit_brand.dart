import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:image_picker/image_picker.dart';

import '../../../core/components/custom_image_picker.dart';
import '../../../core/core.dart';
import '../../../data/models/response/inventory_response/brands_response_model.dart';
import '../bloc/brand/brand_bloc.dart';

class EditBrand extends StatefulWidget {
  final Brand item;
  final VoidCallback onConfirmTap;
  const EditBrand({
    super.key,
    required this.item,
    required this.onConfirmTap,
  });

  @override
  State<EditBrand> createState() => _EditBrandState();
}

class _EditBrandState extends State<EditBrand> {
  late final TextEditingController brandNameController;
  XFile? _image;

  @override
  void initState() {
    brandNameController = TextEditingController(text: widget.item.name);
    // brandLogoController = TextEditingController(text: widget.item.brandLogo);
    super.initState();
  }

  @override
  void dispose() {
    brandNameController.dispose();
    // brandLogoController.dispose();
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
                  'Edit Brand',
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
                      child: BlocConsumer<BrandBloc, BrandState>(
                        listener: (context, state) {
                          state.maybeWhen(
                              orElse: () {},
                              loaded: (_) {
                                context.pop();
                              });
                        },
                        builder: (context, state) {
                          return state.maybeWhen(orElse: () {
                            return Button.filled(
                              onPressed: () {
                                context.read<BrandBloc>().add(
                                      BrandEvent.updateBrand(
                                        id: widget.item.id!,
                                        name: brandNameController.text,
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
                          // return Button.filled(
                          //   onPressed: () {
                          //     context.read<BrandBloc>().add(
                          //           BrandEvent.updateBrand(
                          //             id: widget.item.id!,
                          //             name: widget.item.name!,
                          //             image: _image!,
                          //           ),
                          //         );
                          //   },
                          //   label: 'Update',
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
