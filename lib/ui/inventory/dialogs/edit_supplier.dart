import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../core/core.dart';
import '../../../data/models/response/inventory_response/supplier_response_model.dart';
import '../bloc/supplier/supplier_bloc.dart';

class EditSupplier extends StatefulWidget {
  final Supplier item;
  const EditSupplier({super.key, required this.item});

  @override
  State<EditSupplier> createState() => _EditSupplierState();
}

class _EditSupplierState extends State<EditSupplier> {
  late final TextEditingController phoneNumberController;
  late final TextEditingController nameController;
  late final TextEditingController emailController;
  late final TextEditingController addressController;

  @override
  void initState() {
    final item = widget.item;
    nameController = TextEditingController(text: item.name);
    phoneNumberController = TextEditingController(text: item.phone);
    emailController = TextEditingController(text: item.email);
    addressController = TextEditingController(text: item.address);
    // productImageController = TextEditingController(text: item.imageUrl);
    // warehouseController = TextEditingController(text: item.warehouse);
    // phoneNumberController = TextEditingController(text: item.phoneNumber);
    // nameController = TextEditingController(text: item.name);
    // emailController = TextEditingController(text: item.email);
    // statusController = TextEditingController(text: item.status);
    // taxNumberController = TextEditingController(text: item.taxNumber);
    // openingBalanceController =
    //     TextEditingController(text: item.openingBalance.toString());
    // creditPeriodController =
    //     TextEditingController(text: item.creditPeriod.toString());
    // creditLimitController =
    //     TextEditingController(text: item.creditLimit.toString());
    super.initState();
  }

  @override
  void dispose() {
    phoneNumberController.dispose();
    nameController.dispose();
    emailController.dispose();
    addressController.dispose();
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
                  'Edit Supplier',
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
              controller: emailController,
              label: 'Email',
              hintText: 'Please Enter Email',
              textInputAction: TextInputAction.next,
              keyboardType: TextInputType.emailAddress,
            ),
            const SpaceHeight(16.0),
            CustomTextField(
              controller: phoneNumberController,
              label: 'phone',
              hintText: 'Please Enter phone',
              textInputAction: TextInputAction.next,
              keyboardType: TextInputType.emailAddress,
            ),
            const SpaceHeight(16.0),
            CustomTextField(
              controller: addressController,
              label: 'Address',
              hintText: 'Please Enter address',
              textInputAction: TextInputAction.next,
              keyboardType: TextInputType.emailAddress,
              maxLines: 3,
            ),
            const SpaceHeight(16.0),
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
                  Flexible(
                    child: Button.outlined(
                      onPressed: () => context.pop(),
                      label: 'Cancel',
                    ),
                  ),
                  const SpaceWidth(16.0),
                  Flexible(
                    child: BlocConsumer<SupplierBloc, SupplierState>(
                      listener: (context, state) {
                        state.maybeWhen(
                          orElse: () {},
                          error: (message) {
                            ScaffoldMessenger.of(context).showSnackBar(
                              SnackBar(
                                content: Text(message),
                                backgroundColor: AppColors.red,
                              ),
                            );
                          },
                          loaded: (_) {
                            context.pop();
                            ScaffoldMessenger.of(context).showSnackBar(
                              const SnackBar(
                                content: Text('Supplier updated successfully'),
                              ),
                            );
                          },
                        );
                      },
                      builder: (context, state) {
                        return Button.filled(
                          onPressed: () {
                            context.read<SupplierBloc>().add(
                                  SupplierEvent.updateSupplier(
                                    id: widget.item.id!,
                                    name: nameController.text,
                                    phone: phoneNumberController.text,
                                    email: emailController.text,
                                    address: addressController.text,
                                  ),
                                );
                          },
                          label: 'Update',
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
    );
  }
}
