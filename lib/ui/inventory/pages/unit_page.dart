import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../core/core.dart';
import '../bloc/unit/unit_bloc.dart';
import '../dialogs/add_new_unit.dart';
import '../dialogs/delete_dialog.dart';
import '../dialogs/edit_unit.dart';
import '../models/variation_model.dart';
import '../widgets/app_bar_widget.dart';

class UnitPage extends StatefulWidget {
  const UnitPage({super.key});

  @override
  State<UnitPage> createState() => _VariationPageState();
}

class _VariationPageState extends State<UnitPage> {
  bool isEmptyData = false;

  final searchController = TextEditingController();
  late List<VariationModel> searchResult;

  @override
  void initState() {
    searchResult = variations;
    context.read<UnitBloc>().add(const UnitEvent.getUnits());
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const PreferredSize(
        preferredSize: Size.fromHeight(70.0),
        child: AppBarWidget(title: 'Units'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Card(
          color: AppColors.white,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Row(
                  children: [
                    Flexible(
                      flex: 3,
                      child: SearchInput(
                        controller: searchController,
                        hintText: 'Quick search..',
                        onChanged: (value) {
                          searchResult = variations
                              .where((element) => element.variationName
                                  .toLowerCase()
                                  .contains(
                                      searchController.text.toLowerCase()))
                              .toList();
                          setState(() {});
                        },
                      ),
                    ),
                    const SpaceWidth(16.0),
                    Button.filled(
                      onPressed: () => showDialog(
                        context: context,
                        builder: (context) => AddNewUnit(
                          onConfirmTap: () {},
                        ),
                      ),
                      label: 'Add New Unit',
                      fontSize: 14.0,
                      width: 250.0,
                    ),
                  ],
                ),
              ),
              // if (isEmptyData) ...[
              //   const Padding(
              //     padding: EdgeInsets.all(70.0),
              //     child: Center(
              //       child: EmptyPlaceholder2(),
              //     ),
              //   ),
              // ] else ...[
              BlocBuilder<UnitBloc, UnitState>(
                builder: (context, state) {
                  return state.maybeWhen(
                    orElse: () => const SizedBox(),
                    loading: () => const Center(
                      child: CircularProgressIndicator(),
                    ),
                    loaded: (data) {
                      return Expanded(
                        child: SingleChildScrollView(
                          child: Column(
                            children: [
                              Align(
                                alignment: Alignment.topLeft,
                                child: SingleChildScrollView(
                                  scrollDirection: Axis.horizontal,
                                  child: DataTable(
                                    dataRowMinHeight: 30.0,
                                    dataRowMaxHeight: 60.0,
                                    columns: [
                                      DataColumn(
                                        label: SizedBox(
                                          height: 24.0,
                                          width: 24.0,
                                          child: Checkbox(
                                            value: false,
                                            onChanged: (value) {},
                                          ),
                                        ),
                                      ),
                                      const DataColumn(
                                          label: Text('Unit Name')),
                                      const DataColumn(
                                          label: Text('Short Name')),
                                      const DataColumn(label: Text('Action')),
                                    ],
                                    rows: data.isEmpty
                                        ? [
                                            const DataRow(
                                              cells: [
                                                DataCell(Row(
                                                  children: [
                                                    Icon(Icons.highlight_off),
                                                    SpaceWidth(4.0),
                                                    Text(
                                                        'Data tidak ditemukan..'),
                                                  ],
                                                )),
                                                DataCell.empty,
                                                DataCell.empty,
                                                DataCell.empty,
                                              ],
                                            ),
                                          ]
                                        : data
                                            .map(
                                              (item) => DataRow(cells: [
                                                DataCell(
                                                  SizedBox(
                                                    height: 24.0,
                                                    width: 24.0,
                                                    child: Checkbox(
                                                      value: false,
                                                      onChanged: (value) {},
                                                    ),
                                                  ),
                                                ),
                                                DataCell(Text(
                                                  item.name ?? '',
                                                  style: const TextStyle(
                                                    fontSize: 16.0,
                                                    fontWeight: FontWeight.w500,
                                                    color: AppColors.black,
                                                  ),
                                                )),
                                                DataCell(Text(
                                                  item.shortName ?? '',
                                                  style: const TextStyle(
                                                    fontSize: 16.0,
                                                    fontWeight: FontWeight.w500,
                                                    color: AppColors.black,
                                                  ),
                                                )),
                                                DataCell(Row(
                                                  children: [
                                                    IconButton(
                                                      onPressed: () =>
                                                          showDialog(
                                                        context: context,
                                                        builder: (context) =>
                                                            DeleteDialog(
                                                          onConfirmTap: () {
                                                            context
                                                                .read<
                                                                    UnitBloc>()
                                                                .add(
                                                                  UnitEvent
                                                                      .deleteUnit(
                                                                    item.id!,
                                                                  ),
                                                                );
                                                            context.pop();
                                                            ScaffoldMessenger
                                                                    .of(context)
                                                                .showSnackBar(
                                                              const SnackBar(
                                                                content: Text(
                                                                    'Unit Deleted Successfully'),
                                                                backgroundColor:
                                                                    AppColors
                                                                        .red,
                                                              ),
                                                            );
                                                          },
                                                        ),
                                                      ),
                                                      icon: const Icon(
                                                          Icons.delete_outline),
                                                    ),
                                                    IconButton(
                                                      onPressed: () =>
                                                          showDialog(
                                                        context: context,
                                                        builder: (context) =>
                                                            EditUnit(
                                                          item: item,
                                                          onConfirmTap: () {},
                                                        ),
                                                      ),
                                                      icon: const Icon(
                                                          Icons.edit_outlined),
                                                    ),
                                                  ],
                                                )),
                                              ]),
                                            )
                                            .toList(),
                                  ),
                                ),
                              ),
                              // if (searchResult.isNotEmpty)
                              //   const Padding(
                              //     padding: EdgeInsets.all(16.0),
                              //     child: PaginationWidget(),
                              //   ),
                            ],
                          ),
                        ),
                      );
                    },
                  );
                },
              ),
            ],
            // ],
          ),
        ),
      ),
    );
  }
}