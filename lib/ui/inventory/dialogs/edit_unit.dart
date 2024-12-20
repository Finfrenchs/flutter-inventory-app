import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../core/core.dart';
import '../../../data/models/response/inventory_response/unit_response_model.dart';
import '../bloc/unit/unit_bloc.dart';

class EditUnit extends StatefulWidget {
  final Unit item;
  final VoidCallback onConfirmTap;
  const EditUnit({
    super.key,
    required this.item,
    required this.onConfirmTap,
  });

  @override
  State<EditUnit> createState() => _EditVariationState();
}

class _EditVariationState extends State<EditUnit> {
  late final TextEditingController nameController;
  late final TextEditingController shortNameController;

  @override
  void initState() {
    nameController = TextEditingController(text: widget.item.name);
    shortNameController = TextEditingController(text: widget.item.shortName);
    super.initState();
  }

  @override
  void dispose() {
    nameController.dispose();
    shortNameController.dispose();
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
                  controller: shortNameController,
                  label: 'Short Name',
                  hintText: 'Please Enter Name',
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
                      child: BlocConsumer<UnitBloc, UnitState>(
                        listener: (context, state) {
                          state.maybeWhen(
                            loaded: (_) {
                              context.pop();
                              ScaffoldMessenger.of(context).showSnackBar(
                                const SnackBar(
                                  content: Text('Unit Updated Successfully'),
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
                                  context.read<UnitBloc>().add(
                                        UnitEvent.updateUnit(
                                          id: widget.item.id!,
                                          name: nameController.text,
                                          shortName: shortNameController.text,
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
