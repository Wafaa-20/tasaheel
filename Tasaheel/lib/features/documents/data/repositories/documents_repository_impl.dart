import 'package:dartz/dartz.dart';
import 'package:tasaheel/core/error/failures.dart';
import 'package:tasaheel/features/documents/data/datasources/documents_datasource.dart';
import 'package:tasaheel/features/documents/domain/entities/documents.dart';
import 'package:tasaheel/features/documents/domain/repositories/documents_repository.dart';

class DocumentsRepositoryImpl implements DocumentsRepository {
  final DocumentsDatasource datasource;

  DocumentsRepositoryImpl(this.datasource);

  @override
  Future<Either<Failure, Documents>> getDocuments() async {
    try {
      final result = await datasource.getDocuments();
      return Right(result.toEntity());
    } on Exception {
      return Left(ServerFailure(message: "Something went wrong!"));
    }
  }
}
