import 'package:tasaheel/features/employees/domain/entities/employees.dart';

class EmployeesModel {
  final String id;
  final String name;

  EmployeesModel({
    required this.id,
    required this.name,
  });

  factory EmployeesModel.fromJson(Map<String, dynamic> json) {
    return EmployeesModel(
      id: json['id'],
      name: json['name'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'name': name,
    };
  }

  Employees toEntity() {
    return Employees(
      id: id,
      name: name,
    );
  }
}
