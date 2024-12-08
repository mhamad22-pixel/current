class Country {
  final String _name;
  final String _currencyCode;
  final double _ratioFromUSD;
  final double _ratioToUSD;
  final String _flagUnicode;
  String _flag = "";

  Country(this._name, this._currencyCode, this._ratioFromUSD, this._ratioToUSD, this._flagUnicode)
  {
    Runes flag = Runes(_flagUnicode);
    _flag = String.fromCharCodes(flag);
  }

  String get name => _name;

  String get currencyCode => _currencyCode;

  double get ratioFromUSD => _ratioFromUSD;

  double get ratioToUSD => _ratioToUSD;

  String get flagUnicode => _flagUnicode;

  String get flag => _flag;

  /* Takes a list of countries and returns all of the names in the list in a new list of Strings. */
  static List<String> getNames(List<Country> countries){
    List<String> names = [];
    for (var country in countries) {
      names.add("${country.flag} ${country.name}");
    }
    return names;
  }

  static List<String> getCodes(List<Country> countries){
    List<String> codes = [];
    for (var country in countries){
      codes.add("${country.flag} ${country.currencyCode}");
    }
    return codes;
  }

  static List<String> getNamesWithCodes(List<Country> countries){
    List<String> namesWithCodes = [];
    for (var country in countries){
      namesWithCodes.add("${country.flag} ${country.name} - (${country.currencyCode})");
    }
    return namesWithCodes;
  }
}
