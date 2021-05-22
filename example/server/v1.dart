
import 'package:noaa_wrapper/server_v1.dart';

void main() async {
  final noaa = NOAAServer()
    ..date('today')
    ..station('8454000')
    ..product('water_level')
    ..units('english')
    ..timeZone('gmt')
    ..datum('STND')
    ..format('csv');

  final data = await noaa.get();

  print(data);

  // var fileCopy = await File('data/data.json').writeAsString(data);
  // print(await fileCopy.exists());
  // print(await fileCopy.length());
}
