import 'package:dartz/dartz.dart';
import 'package:tasaheel/core/error/failures.dart';
import 'package:tasaheel/features/employees/domain/entities/employees.dart';
import 'package:tasaheel/features/employees/domain/repositories/employees_repository.dart';

class GetEmployees {
  final EmployeesRepository repository;

  GetEmployees(this.repository);

  Future<Either<Failure, Employees>> call() async {
    return await repository.getEmployees();
  }
}
