import 'package:noaa_wrapper/noaa_wrapper.dart';

void main() async {
  final noaa = NOAA()
    ..date('today')
    ..station('8454000')
    ..product('water_temperature')
    ..units('english')
    ..timeZone('gmt')
    ..format('csv');

  print(await noaa.get());
}
