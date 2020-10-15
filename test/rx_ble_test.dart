import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:rx_ble/rx_ble.dart';

void main() {
  const MethodChannel channel = MethodChannel('rx_ble');

  TestWidgetsFlutterBinding.ensureInitialized();

  setUp(() {
    channel.setMockMethodCallHandler((MethodCall methodCall) async {
      return '42';
    });
  });

  tearDown(() {
    channel.setMockMethodCallHandler(null);
  });

  test('getPlatformVersion', () async {
    expect(await RxBle.platformVersion, '42');
  });
}
