import 'package:tasaheel/features/documents/data/models/documents_model.dart';

abstract class DocumentsDatasource {
  Future<DocumentsModel> getDocuments();
}

class DocumentsDatasourceImpl implements DocumentsDatasource {
  @override
  Future<DocumentsModel> getDocuments() async {
    // TODO: implement actual data source logic
    // This is just a placeholder implementation
    return DocumentsModel(
      id: '1',
      name: 'Documents Name',
    );
  }
}
