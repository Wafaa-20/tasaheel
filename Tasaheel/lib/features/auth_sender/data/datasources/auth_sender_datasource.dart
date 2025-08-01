import 'package:tasaheel/features/auth_sender/data/models/auth_sender_model.dart';

abstract class Auth_senderDatasource {
  Future<Auth_senderModel> getAuth_sender();
}

class Auth_senderDatasourceImpl implements Auth_senderDatasource {
  @override
  Future<Auth_senderModel> getAuth_sender() async {
    // TODO: implement actual data source logic
    // This is just a placeholder implementation
    return Auth_senderModel(
      id: '1',
      name: 'Auth_sender Name',
    );
  }
}
