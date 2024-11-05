import 'package:feggy_network/imports_bindings.dart';

final _dio = Dio()
  ..interceptors.add(
    CookieManager(
      PersistCookieJar(
        ignoreExpires: true,
        deleteHostCookiesWhenLoadFailed: false,
        storage: FileStorage(
          '${FeggyNetwork().appDocDir}/.cookies/',
        ),
      ),
    ),
  );

/// Provides a configured Dio instance with cookie management capabilities.
///
/// Uses [PersistCookieJar] to store cookies in the app's document directory.
/// Cookies are persisted between app sessions and are managed automatically
/// for all requests made through this Dio instance.
///
/// Throws an exception if [appDocDir] is not configured in [FeggyNetwork].
Dio get cookieDio {
  if (FeggyNetwork().appDocDir == null) {
    assert(false, 'appDocDir is null');
    throw Exception('appDocDir is null');
  }
  return _dio;
}
