import 'package:tasaheel/features/employees/data/models/employees_model.dart';

abstract class EmployeesDatasource {
  Future<EmployeesModel> getEmployees();
}

class EmployeesDatasourceImpl implements EmployeesDatasource {
  @override
  Future<EmployeesModel> getEmployees() async {
    // TODO: implement actual data source logic
    // This is just a placeholder implementation
    return EmployeesModel(
      id: '1',
      name: 'Employees Name',
    );
  }
}
