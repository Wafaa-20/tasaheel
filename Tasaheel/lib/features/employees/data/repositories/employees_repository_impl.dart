import 'package:dartz/dartz.dart';
import 'package:tasaheel/core/error/failures.dart';
import 'package:tasaheel/features/employees/data/datasources/employees_datasource.dart';
import 'package:tasaheel/features/employees/domain/entities/employees.dart';
import 'package:tasaheel/features/employees/domain/repositories/employees_repository.dart';

class EmployeesRepositoryImpl implements EmployeesRepository {
  final EmployeesDatasource datasource;

  EmployeesRepositoryImpl(this.datasource);

  @override
  Future<Either<Failure, Employees>> getEmployees() async {
    try {
      final result = await datasource.getEmployees();
      return Right(result.toEntity());
    } on Exception {
      return Left(ServerFailure(message: "Something went wrong!"));
    }
  }
}
