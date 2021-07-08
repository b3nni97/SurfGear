/**
* A set of data parsers
*/

/// parsing in [int]
int parseInt(dynamic from) {
  if (from == null) return from;
  if (from is int) return from;
  if (from is String) return int.parse(from);
  if (from is double) return from.toInt();

  throw FormatException("can't parse to int");
}

/// parsing in [double]
double parseDouble(dynamic from) {
  if (from == null) return from;
  if (from is int) return from.toDouble();
  if (from is String) return double.parse(from);
  if (from is double) return from;

  throw FormatException("can't parse to double");
}
