import 'package:flutter/material.dart';
import 'package:responsive_expense_tracker/widgets/extra_cleanup/category.dart';



class CategoryDropdown extends StatelessWidget {
  final Category selectedCategory;
  final ValueChanged<Category?> onChanged;

  const CategoryDropdown({
    super.key,
    required this.selectedCategory,
    required this.onChanged,
  });

  @override
  Widget build(BuildContext context) {
    return DropdownButton(
      value: selectedCategory,
      items: Category.values
          .map(
            (category) => DropdownMenuItem(
              value: category,
              child: Text(category.name.toUpperCase()),
            ),
          )
          .toList(),
      onChanged: onChanged,
    );
  }
}