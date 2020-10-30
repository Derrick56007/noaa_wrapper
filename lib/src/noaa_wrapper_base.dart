abstract class NOAA {
  static const baseUrl =
      'https://api.tidesandcurrents.noaa.gov/api/prod/datagetter?';

  final params = {};

  void clearParams() {
    params.clear();
  }

  void station(String station) {
    params['station'] = 'station=$station';
  }

  void date(String d) {
    const validParams = ['today', 'recent', 'latest'];

    assert(validParams.contains(d));

    params['date'] = 'date=$d';
  }

  void dateBeginAndEnd(String begin, String end) {
    params['date'] = 'begin_date=$begin&end_date=$end';
  }

  void dateBeginAndRange(String begin, int range) {
    params['date'] = 'begin_date=$begin';

    dateRange(range);
  }

  void dateEndAndRange(String begin, int range) {
    params['date'] = 'end_date=$begin';

    dateRange(range);
  }

  void dateRange(int range) {
    params['range'] = 'range=$range';
  }

  void product(String product) {
    const validProducts = [
      'air_gap',
      'air_pressure',
      'air_temperature',
      'conductivity',
      'currents',
      'currents_survey',
      'currents_predictions',
      'daily_mean',
      'datums',
      'high_low',
      'hourly_height',
      'humidity',
      'monthly_mean',
      'one_minute_water_level',
      'predictions',
      'salinity',
      'visibility',
      'water_level',
      'water_temperature',
      'wind'
    ];

    assert(validProducts.contains(product));

    params['product'] = 'product=$product';
  }

  void datum(String datum) {
    const list = [
      'CRD',
      'IGLD',
      'LWD',
      'MHHW',
      'MHW',
      'MTL',
      'MSL',
      'MLW',
      'MLLW',
      'NAVD',
      'STND'
    ];
    const validDatums = list;

    assert(validDatums.contains(datum));

    params['datum'] = 'datum=$datum';
  }

  void velocityType(String velType) {
    const validVelTypes = ['speed_dir', 'default'];

    assert(validVelTypes.contains(velType));

    params['velType'] = 'vel_type=$velType';
  }

  void units(String units) {
    const validUnits = ['metric', 'english'];

    assert(validUnits.contains(units));

    params['units'] = 'units=$units';
  }

  void timeZone(String timeZone) {
    const validTimeZones = ['gmt', 'lst', 'lst_ldt'];

    assert(validTimeZones.contains(timeZone));

    params['timeZone'] = 'time_zone=$timeZone';
  }

  void format(String format) {
    const validFormats = ['json', 'xml', 'csv'];

    assert(validFormats.contains(format));

    params['format'] = 'format=$format';
  }

  void interval(String interval) {
    const validIntervals = [
      'h',
      'hilo',
      '1',
      '6',
      '20',
      '30',
      '60',
      'MAX_SLACK'
    ];

    assert(validIntervals.contains(interval));

    params['interval'] = 'interval=$interval';
  }

  void bin(int binNum) {
    params['bin'] = 'bin=$binNum';
  }

  void application(String app) {
    params['application'] = 'application=$app';
  }

  Future<String> get();
}
