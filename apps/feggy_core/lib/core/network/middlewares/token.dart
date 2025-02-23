// import 'package:dio/dio.dart';

// final _dio = Dio()
//   ..interceptors.add(
//     InterceptorsWrapper(
//       onRequest: (RequestOptions options, RequestInterceptorHandler handler) {
//         options.headers['Authorization'] = 'JWT ${App.navKey.currentContext?.read<AuthCubit>().state.verifyOtpResponse!.access}';
//         if (options.headers['Content-Type'] == null) {
//           options.headers['Content-Type'] = 'application/json';
//         }
//         return handler.next(options);
//       },
//       onResponse: (Response<dynamic> response, ResponseInterceptorHandler handler) {
//         return handler.next(response);
//       },
//       onError: (DioException error, ErrorInterceptorHandler handler) async {
//         if (error.response?.statusCode == 401) {
//           final res = await App.navKey.currentContext?.read<AuthCubit>().refreshToken(error: error, handler: handler);
//           if (res ?? false) {
//             return handler.resolve(await tokenDio.fetch(error.requestOptions));
//           }
//         }
//         return handler.next(error);
//       },
//     ),
//   );

// Dio get tokenDio {
//   return _dio;
// }
