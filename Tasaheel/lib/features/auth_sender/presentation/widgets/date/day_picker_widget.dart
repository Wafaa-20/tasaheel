import 'package:flutter/cupertino.dart';
import 'package:tasaheel/features/auth_sender/presentation/widgets/date/custom_date_widget.dart';

class DayPickerWidget extends StatelessWidget {
  final int selectedDay;
  final ValueChanged<int> onSelected;

  const DayPickerWidget({
    super.key,
    required this.selectedDay,
    required this.onSelected,
  });

  @override
  Widget build(BuildContext context) {
    return CustomDateWidget(
      scrollController: FixedExtentScrollController(
        initialItem: selectedDay - 1,
      ),
      onSelectedItemChanged: (index) => onSelected(index + 1),
      children: List.generate(
        31,
        (index) => Center(child: Text('${index + 1}')),
      ),
    );
  }
}
