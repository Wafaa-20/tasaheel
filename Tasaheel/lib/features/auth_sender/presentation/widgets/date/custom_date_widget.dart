import 'package:flutter/cupertino.dart';

class CustomDateWidget extends StatelessWidget {
  const CustomDateWidget({
    super.key,
    this.scrollController,
    this.onSelectedItemChanged,
    required this.children,
  });
  final FixedExtentScrollController? scrollController;
  final void Function(int)? onSelectedItemChanged;
  final List<Widget> children;

  @override
  Widget build(BuildContext context) {
    return CupertinoPicker(
      itemExtent: 32,
      scrollController: scrollController,
      onSelectedItemChanged: onSelectedItemChanged,
      children: children,
    );
  }
}
