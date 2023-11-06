class WeatherModels {
  String _name;
  String _icon;
  String _avgtemp_f;
  String _text;
  String _mintemp_f;
  String _maxtemp_f;
  String _totalprecip_mm;
  String _avgtemp_c;
  String _gust_kph;//الرياح
  String _temp_f_hour;
  String _icon_hour;
  String _time_hour;

  WeatherModels(
      this._name,
      this._icon,
      this._avgtemp_f,
      this._text,
      this._mintemp_f,
      this._maxtemp_f,
      this._totalprecip_mm,
      this._avgtemp_c,
      this._gust_kph,
      this._temp_f_hour,
      this._icon_hour,
      this._time_hour);

  String get time_hour => _time_hour;

  String get icon_hour => _icon_hour;

  String get temp_f_hour => _temp_f_hour;

  String get gust_kph => _gust_kph;

  String get avgtemp_c => _avgtemp_c;

  String get totalprecip_mm => _totalprecip_mm;

  String get maxtemp_f => _maxtemp_f;

  String get mintemp_f => _mintemp_f;

  String get text => _text;

  String get avgtemp_f => _avgtemp_f;

  String get icon => _icon;

  String get name => _name;
}