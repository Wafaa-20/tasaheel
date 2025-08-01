import 'package:tasaheel/core/text/app_text.dart';

class NavigationModel {
  final String svgPath;
  final String fillSvgPath;
  final String label;

  NavigationModel({
    required this.svgPath,
    required this.fillSvgPath,
    required this.label,
  });
}

final List<NavigationModel> items = [
  NavigationModel(
    svgPath: 'assets/image/home.svg',
    label: AppText.home,
    fillSvgPath: 'assets/image/home2.svg',
  ),
  NavigationModel(
    svgPath: 'assets/image/employees.svg',
    label: AppText.employees,
    fillSvgPath: 'assets/image/employees2.svg',
  ),
  NavigationModel(
    svgPath: 'assets/image/documents.svg',
    label: AppText.documents,
    fillSvgPath: 'assets/image/documents2.svg',
  ),
];
