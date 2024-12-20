import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../core/core.dart';
import '../bloc/category/category_bloc.dart';
import '../dialogs/add_new_category.dart';
import '../dialogs/delete_dialog.dart';
import '../dialogs/edit_category.dart';
import '../models/category_model.dart';
import '../widgets/app_bar_widget.dart';

class CategoryPage extends StatefulWidget {
  const CategoryPage({super.key});

  @override
  State<CategoryPage> createState() => _CategoryPageState();
}

class _CategoryPageState extends State<CategoryPage> {
  bool isEmptyData = false;

  final searchController = TextEditingController();
  late List<CategoryModel> searchResult;

  @override
  void initState() {
    searchResult = categories;
    context.read<CategoryBloc>().add(const CategoryEvent.getCategories());
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const PreferredSize(
        preferredSize: Size.fromHeight(70.0),
        child: AppBarWidget(title: 'Categories'),
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
                          searchResult = categories
                              .where((element) => element.categoryName
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
                        builder: (context) => AddNewCategory(
                          onConfirmTap: () {},
                        ),
                      ),
                      label: 'Add New Category',
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
              BlocBuilder<CategoryBloc, CategoryState>(
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
                                          label: Text('Category Name')),
                                      const DataColumn(
                                          label: Text('Category Logo')),
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
                                                DataCell(
                                                  ClipRRect(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            6.0),
                                                    child: CachedNetworkImage(
                                                      imageUrl:
                                                          '${Variables.baseUrl}/storage/${item.image!}',
                                                      height: 50.0,
                                                      width: 80.0,
                                                      fit: BoxFit.cover,
                                                      placeholder:
                                                          (context, url) =>
                                                              const Center(
                                                        child:
                                                            CircularProgressIndicator(),
                                                      ),
                                                    ),
                                                  ),
                                                ),
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
                                                                    CategoryBloc>()
                                                                .add(
                                                                  CategoryEvent
                                                                      .deleteCategory(
                                                                          item.id!),
                                                                );
                                                            context.pop();
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
                                                            EditCategory(
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
                    error: (error) => Center(
                      child: Text(error),
                    ),
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
