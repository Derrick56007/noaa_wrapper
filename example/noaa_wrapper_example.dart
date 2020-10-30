import 'dart:convert';
import 'dart:io';

import 'package:noaa_wrapper/noaa_wrapper_server.dart';

void main() async {
  final noaa = NOAAServer()
    ..date('today')
    ..station('8454000')
    ..product('water_level')
    ..units('english')
    ..timeZone('gmt')
    ..datum('STND')
    ..format('json');

  final data = await noaa.get();
  final m = jsonDecode(data);
  for (final row in m['data']) {
    print(row);
  }

  // var fileCopy = await File('data/data.json').writeAsString(data);
  // print(await fileCopy.exists());
  // print(await fileCopy.length());
}
