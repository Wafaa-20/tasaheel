import 'package:flutter/material.dart';
import 'package:tasaheel/features/auth_sender/presentation/widgets/date/custom_date_widget.dart';

class MonthPickerWidget extends StatelessWidget {
  final int selectedMonth;
  final ValueChanged<int> onSelected;

  const MonthPickerWidget({
    super.key,
    required this.selectedMonth,
    required this.onSelected,
  });

  @override
  Widget build(BuildContext context) {
    return CustomDateWidget(
      scrollController: FixedExtentScrollController(
        initialItem: selectedMonth - 1,
      ),
      onSelectedItemChanged: (index) => onSelected(index + 1),
      children: List.generate(
        12,
        (index) => Center(child: Text('${index + 1}')),
      ),
    );
  }
}
