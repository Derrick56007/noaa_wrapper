import 'package:noaa_wrapper/noaa_wrapper.dart';
import 'package:test/test.dart';

void main() {
  group('A group of tests', () {
    NOAA noaa;

    setUp(() {
      noaa = NOAA();
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
