void main() {
  final myString =
      'https://us06web.zoom.us/j/80302474263?pwd=ZYhEdHExMHovZ1YvaDNjXnBnTFh2UT09';

// find a variable length hex value at the beginning of the line
  final regexp = RegExp(r'(\d{11})');
  final regexp_2 = RegExp(r'(?:=/=................................)');

// find the first match though you could also do `allMatches`
  final match = regexp.firstMatch(myString);
  final match_2 = regexp_2.firstMatch(myString);

// group(0) is the full matched text
// if your regex had groups (using parentheses) then you could get the
// text from them by using group(1), group(2), etc.
  late final matchedText = match?.group(0); // 25F8
  late final matchedText_2 = match_2?.group(0);

  print('Login: $matchedText');
  print('Senha : $matchedText_2');
}
