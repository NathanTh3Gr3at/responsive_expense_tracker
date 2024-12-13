import 'package:flutter/material.dart';

class DatePickerRow extends StatelessWidget {
  final DateTime? selectedDate;
  final Function() onDatePickerPressed;
  final String Function(DateTime) formatter;

  const DatePickerRow({
    super.key,
    required this.selectedDate,
    required this.onDatePickerPressed,
    required this.formatter,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Text(
          selectedDate == null
              ? 'No date selected'
              : formatter(selectedDate!),
        ),
        IconButton(
          onPressed: onDatePickerPressed,
          icon: const Icon(Icons.calendar_month),
        ),
      ],
    );
  }
}