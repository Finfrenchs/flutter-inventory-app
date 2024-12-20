import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../core/core.dart';
import '../bloc/supplier/supplier_bloc.dart';

class AddNewSupplier extends StatefulWidget {
  const AddNewSupplier({super.key});

  @override
  State<AddNewSupplier> createState() => _AddNewSupplierState();
}

class _AddNewSupplierState extends State<AddNewSupplier> {
  late final TextEditingController phoneNumberController;
  late final TextEditingController nameController;
  late final TextEditingController emailController;
  late final TextEditingController addressController;

  @override
  void initState() {
    phoneNumberController = TextEditingController();
    nameController = TextEditingController();
    emailController = TextEditingController();
    addressController = TextEditingController();

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
                  'Add New Supplier',
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
              label: 'Phone Number',
              hintText: 'Please Enter Phone Number',
              textInputAction: TextInputAction.next,
              keyboardType: TextInputType.phone,
            ),
            const SpaceHeight(16.0),
            CustomTextField(
              controller: addressController,
              label: 'Address',
              hintText: 'Please Enter Address',
              textInputAction: TextInputAction.done,
              keyboardType: TextInputType.text,
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
                          loaded: (_) {
                            context.pop();
                            ScaffoldMessenger.of(context).showSnackBar(
                              const SnackBar(
                                content: Text('Supplier added successfully'),
                              ),
                            );
                          },
                        );
                      },
                      builder: (context, state) {
                        return Button.filled(
                          onPressed: () {
                            context.read<SupplierBloc>().add(
                                  SupplierEvent.addSupplier(
                                    name: nameController.text,
                                    email: emailController.text,
                                    phone: phoneNumberController.text,
                                    address: addressController.text,
                                  ),
                                );
                          },
                          label: 'Create',
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
