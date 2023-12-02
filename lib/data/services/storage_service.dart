import 'dart:convert';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

class StorageService extends GetxService {
  static StorageService get to => Get.find<StorageService>();
  late GetStorage _box;

  @override
  Future<StorageService> init() async {
    _box = GetStorage('userSetting');
    await _box.initStorage;

    return this;
  }

  void reset() async {
    await _box.erase();
  }

//first time
  void setFirstTimeFlag() => _box.write(_Keys.firstTime, false);
  bool get getFirstTimeFlag => _box.read(_Keys.firstTime) ?? true;
  // User Token & Id SET + GET
  void setUserToken(String token) => _box.write(_Keys.token, json.encode(token));
  String? get getUserToken => _box.read(_Keys.token) ?? '';

  void setUserrole(String role) => _box.write(_Keys.userRole, json.encode(role));
  String? get getUserRole => _box.read(_Keys.userRole) ?? '';


  void setUserId(int userId) => _box.write(_Keys.userId, json.encode(userId));
  int? get getUserId => json.decode(_box.read(_Keys.userId) ?? json.encode("")) ?? '';

  //  User Refresh token
  void setUserRefreshToken(String refreshToken) => _box.write(_Keys.refreshToken, json.encode(refreshToken));
  String? get getUserRefreshToken => _box.read(_Keys.refreshToken) ?? '';
  void setCompanyId(int companyId) => _box.write(_Keys.companyId, json.encode(companyId));
  int? get getCompanyId => json.decode(_box.read(_Keys.companyId) ?? json.encode("")) ?? '';
}

abstract class _Keys {
  static const String firstTime = 'first_time';
  static const String token = 'token';
  static const String refreshToken = 'refresh_token';
  static const String userId = 'userId';
  static const String companyId = 'companyId';
  static const String userRole = 'userRole';
}
