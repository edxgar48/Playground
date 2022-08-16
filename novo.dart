void main() {
  final myString =
      'https://us06web.zoom.us/j/80302474263?pwd=ZYhEdHExMHovZ1YvaDNjXnBnTFh2UT09';

//pega a primeira REGEX com 11 digitos sequenciais
  final regexp = RegExp(r'(\d{11})');
//pega a segunda REGEX que casa tudo depois do = (até o =)
  final regexp_2 =
      RegExp(r'=([\s\S]*)$'); //preciso aprender a negar o = aqui r'=([\s\S]*)$'
  // talvés algo assim r'[^=](*$)'

//casa as REGEX
  final match = regexp.firstMatch(myString);
  final match_2 = regexp_2.firstMatch(myString);

// group(0) é todo casamento

  late final matchedText = match?.group(0);
  late final matchedText_2 = match_2?.group(0);

  print('Login: $matchedText'); //Login: 80302474263
  print('Senha : $matchedText_2'); //Senha : =ZYhEdHExMHovZ1YvaDNjXnBnTFh2UT09
}
