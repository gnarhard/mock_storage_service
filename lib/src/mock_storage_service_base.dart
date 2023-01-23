import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';

class MockStorageService {
  static void useMockStorage() {
    // Set mock method channel for path_provider package.
    const MethodChannel channel =
        MethodChannel('plugins.flutter.io/path_provider_macos');
    channel.setMockMethodCallHandler((MethodCall methodCall) async {
      return ".";
    });
  }
}
