import 'package:noaa_wrapper/noaa_wrapper_client.dart';
import 'package:noaa_wrapper/noaa_wrapper_server.dart';
import 'package:test/test.dart';

void main() {
  group('A group of tests', () {
    NOAAServer noaa;

    setUp(() {
      noaa = NOAAServer();
    });

    test('First Test', () async {
      noaa
        ..date('today')
        ..station('8454000')
        ..product('water_temperature')
        ..units('english')
        ..timeZone('gmt')
        ..format('csv');

      print(await noaa.get());
    });
  });

  group('2 A group of tests', () {
    NOAAClient noaa;

    setUp(() {
      noaa = NOAAClient();
    });

    test('First Test', () async {
      noaa
        ..date('today')
        ..station('8454000')
        ..product('water_temperature')
        ..units('english')
        ..timeZone('gmt')
        ..format('csv');

      print(await noaa.get());
    });
  });
}
