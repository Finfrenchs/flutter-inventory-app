import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../core/core.dart';
import '../../../data/models/response/inventory_response/warehouse_response_model.dart';
import '../bloc/warehouse/warehouse_bloc.dart';

class EditWarehouse extends StatefulWidget {
  final Warehouse item;
  final VoidCallback onConfirmTap;
  const EditWarehouse({
    super.key,
    required this.item,
    required this.onConfirmTap,
  });

  @override
  State<EditWarehouse> createState() => _EditVariationState();
}

class _EditVariationState extends State<EditWarehouse> {
  late final TextEditingController nameController;
  late final TextEditingController addressController;
  late final TextEditingController phoneController;
  late final TextEditingController emailController;

  @override
  void initState() {
    nameController = TextEditingController(text: widget.item.name);
    addressController = TextEditingController(text: widget.item.address);
    phoneController = TextEditingController(text: widget.item.phone);
    emailController = TextEditingController(text: widget.item.email);
    super.initState();
  }

  @override
  void dispose() {
    nameController.dispose();
    addressController.dispose();
    phoneController.dispose();
    emailController.dispose();
    nameController.dispose();
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
                  'Edit Unit',
                  style: TextStyle(
                    fontSize: 20.0,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                const SpaceHeight(24.0),
                CustomTextField(
                  controller: nameController,
                  label: 'Name',
                  hintText: 'Please Enter Name',
                  textInputAction: TextInputAction.next,
                ),
                const SpaceHeight(24),
                CustomTextField(
                  controller: addressController,
                  label: 'Address Name',
                  hintText: 'Please Enter Address Name',
                  textInputAction: TextInputAction.next,
                ),
                const SpaceHeight(24.0),
                CustomTextField(
                  controller: phoneController,
                  label: 'Phone ',
                  hintText: 'Please Enter Phone',
                  textInputAction: TextInputAction.next,
                ),
                const SpaceHeight(24.0),
                CustomTextField(
                  controller: emailController,
                  label: 'Emai',
                  hintText: 'Please Enter Email',
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
                      child: BlocConsumer<WarehouseBloc, WarehouseState>(
                        listener: (context, state) {
                          state.maybeWhen(
                            loaded: (_) {
                              context.pop();
                              ScaffoldMessenger.of(context).showSnackBar(
                                const SnackBar(
                                  content:
                                      Text('Warehouse Updated Successfully'),
                                ),
                              );
                            },
                            error: (message) {
                              ScaffoldMessenger.of(context).showSnackBar(
                                SnackBar(
                                  content: Text(message),
                                ),
                              );
                            },
                            orElse: () {},
                          );
                        },
                        builder: (context, state) {
                          return state.maybeWhen(
                            orElse: () {
                              return Button.filled(
                                onPressed: () {
                                  context.read<WarehouseBloc>().add(
                                        WarehouseEvent.updateWarehouse(
                                          id: widget.item.id!,
                                          name: nameController.text,
                                          address: addressController.text,
                                          phone: phoneController.text,
                                          email: emailController.text,
                                        ),
                                      );
                                },
                                label: 'Update',
                              );
                            },
                            loading: () {
                              return const Center(
                                child: CircularProgressIndicator(),
                              );
                            },
                          );
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
