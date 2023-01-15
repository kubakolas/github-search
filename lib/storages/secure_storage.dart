import 'package:flutter_secure_storage/flutter_secure_storage.dart';

class SecureStorage {
  static const FlutterSecureStorage _secureStorage = FlutterSecureStorage(
    aOptions: AndroidOptions(
      encryptedSharedPreferences: true,
    ),
  );

  const SecureStorage();

  Future<String?> getString(String key) => _secureStorage.read(
        key: key,
      );

  Future<void> putString(String key, String value) => _secureStorage.write(
        key: key,
        value: value,
      );
}
