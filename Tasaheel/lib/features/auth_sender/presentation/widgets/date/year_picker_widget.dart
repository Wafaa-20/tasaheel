import 'package:flutter/material.dart';
import 'package:tasaheel/features/auth_sender/presentation/widgets/date/custom_date_widget.dart';

class YearPickerWidget extends StatelessWidget {
  final int selectedYear;
  final ValueChanged<int> onSelected;

  const YearPickerWidget({
    super.key,
    required this.selectedYear,
    required this.onSelected,
  });

  @override
  Widget build(BuildContext context) {
    return CustomDateWidget(
      scrollController: FixedExtentScrollController(
        initialItem: selectedYear - 2000,
      ),
      onSelectedItemChanged: (index) => onSelected(2000 + index),
      children: List.generate(
        100,
        (index) => Center(child: Text('${2000 + index}')),
      ),
    );
  }
}
