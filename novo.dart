void main() {
  final myString =
      'https://us06web.zoom.us/j/80302474263?pwd=ZYhEdHExMHovZ1YvaDNjXnBnTFh2UT09';

// find a variable length hex value at the beginning of the line
  final regexp = RegExp(r'(\d{11})');

// find the first match though you could also do `allMatches`
  final match = regexp.firstMatch(myString);

// group(0) is the full matched text
// if your regex had groups (using parentheses) then you could get the
// text from them by using group(1), group(2), etc.
  late final matchedText = match?.group(0); // 25F8

  print('Login: $matchedText');
}
