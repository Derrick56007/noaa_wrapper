
import 'package:noaa_wrapper/server_v2.dart';

void main() async {
  final noaa = NOAAServer('')
    ..setEndPoint('/stations');
  // ..setToken('GZXebdoNgLZXjAwOvVdZwhgZJGYKFbwr');

  final data = await noaa.get();
  // final m = jsonDecode(data);
  // for (final row in m['data']) {
  //   print(row);
  // }

  print(data);

  // var fileCopy = await File('data/data.json').writeAsString(data);
  // print(await fileCopy.exists());
  // print(await fileCopy.length());
}
