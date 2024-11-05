/// Central export file that manages all internal and external dependencies.
///
/// Groups exports into two main categories:
/// 1. App sources - Internal library components
/// 2. External packages - Third-party dependencies
///
/// This file simplifies import management throughout the library by providing
/// a single point of access for all commonly used imports.
library;

//*================[ app sources ]=============================//
export 'api/api.dart';
export 'feggy_network.dart';

//*================[ external packages ]=============================//
export 'package:dio/dio.dart';
export 'package:fpdart/fpdart.dart';
export 'package:freezed_annotation/freezed_annotation.dart';
export 'package:connectivity_plus/connectivity_plus.dart';
export 'package:cookie_jar/cookie_jar.dart';
export 'package:dio_cookie_manager/dio_cookie_manager.dart';
