import 'package:flutter/material.dart';
import 'package:flutter_typeahead/flutter_typeahead.dart';

import '../../../core/constants/colors.dart';
import '../../../data/models/response/inventory_response/product_response_model.dart';

class SearchProduct extends StatelessWidget {
  final TextEditingController controller;
  final List<Product> items;
  final void Function(Product value) onSelected;
  final String hintText;
  final Widget? suffixIcon;

  const SearchProduct({
    super.key,
    required this.controller,
    required this.items,
    required this.onSelected,
    this.hintText = 'Search product name here..',
    this.suffixIcon,
  });

  @override
  Widget build(BuildContext context) {
    return TypeAheadField<Product>(
      controller: controller,
      onSelected: (value) {
        controller.text = value.name ?? '';
        onSelected(value);
      },
      suggestionsCallback: (pattern) => items
          .where((item) =>
              item.name!.toLowerCase().contains(pattern.toLowerCase()))
          .toList(),
      itemBuilder: (context, suggestion) => ListTile(
        title: Text(suggestion.name ?? ''),
      ),
      itemSeparatorBuilder: (context, index) => const Divider(),
      builder: (context, searchController, focusNode) => TextField(
        controller: searchController,
        focusNode: focusNode,
        decoration: InputDecoration(
          hintText: hintText,
          filled: true,
          fillColor: AppColors.white,
          prefixIcon: const Icon(
            Icons.search,
            color: AppColors.gray,
          ),
          suffixIcon: suffixIcon,
          contentPadding: const EdgeInsets.all(16.0),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8.0),
            borderSide: const BorderSide(color: AppColors.stroke),
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8.0),
            borderSide: const BorderSide(color: AppColors.stroke),
          ),
        ),
      ),
      decorationBuilder: (context, child) {
        return Material(
          type: MaterialType.card,
          elevation: 4,
          borderRadius: BorderRadius.circular(8.0),
          child: child,
        );
      },
    );
  }
}
