import 'package:dartz/dartz.dart';
import 'package:tasaheel/core/error/failures.dart';
import 'package:tasaheel/features/documents/domain/entities/documents.dart';
import 'package:tasaheel/features/documents/domain/repositories/documents_repository.dart';

class GetDocuments {
  final DocumentsRepository repository;

  GetDocuments(this.repository);

  Future<Either<Failure, Documents>> call() async {
    return await repository.getDocuments();
  }
}
