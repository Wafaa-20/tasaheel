import 'package:dartz/dartz.dart';
import 'package:tasaheel/core/error/failures.dart';
import 'package:tasaheel/features/employees/domain/entities/employees.dart';

abstract class EmployeesRepository {
  Future<Either<Failure, Employees>> getEmployees();
}
