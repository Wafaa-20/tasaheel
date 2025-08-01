import 'package:tasaheel/features/auth_receiver/data/models/auth_receiver_model.dart';

abstract class Auth_receiverDatasource {
  Future<Auth_receiverModel> getAuth_receiver();
}

class Auth_receiverDatasourceImpl implements Auth_receiverDatasource {
  @override
  Future<Auth_receiverModel> getAuth_receiver() async {
    // TODO: implement actual data source logic
    // This is just a placeholder implementation
    return Auth_receiverModel(
      id: '1',
      name: 'Auth_receiver Name',
    );
  }
}
