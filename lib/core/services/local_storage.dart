import 'package:flutter_secure_storage/flutter_secure_storage.dart';

class LocalStorage {

  final FlutterSecureStorage _storage = const FlutterSecureStorage();
  // _storage (underscore to make if  accessible  only in this  class) make it private

  // Create an LOcalstorage  (Save the token)
  Future<void> SaveToken(String token) async{
    return  _storage.write(key: "auth_token", value: token);
  }
  // Access the token 
  Future<String ?> getToken()async{
    return _storage.read(key: "auth_token");
  }

  // Remove Token(Delete token)
  Future<void>logout()async{
    return _storage.delete(key: "auth_token");
  }


}