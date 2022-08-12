class PegaLog {
  final link_do_zoom =
      'https://us06web.zoom.us/j/80302474263?pwd=ZYhEdHExMHovZ1YvaDNjXnBnTFh2UT09';

  // Regex_login->>>>                               (r'/(?<=(\d{11})?pwd)/gm')
  // depois que aparecer o seguinte casamento       ?pwd
  // olhando pra pra trás                           ?<=
  // casando um grupo sequencial de 11 digitos      (\d{11})

  // ou essa REGEX MAIS SIMPLES QUE CASA TODAS OS 11 DIGITOS SEQUENCIAIS->>>>     (r'\d{11}/gm')

  final Regex_login = RegExp(r'\d{11}/gm');
  late var isLogin = Regex_login.firstMatch(link_do_zoom);
  // NÃO SEI POR QUAL MOTIVO SÓ FUNCIONA COM O LATE
  // não sei porque motivo retorna null e não a string

  //final Regex_pwd = RegExp(r'/(?<=pwd=)(................................)/gm');
  //late var isPwd = Regex_pwd.firstMatch(link_do_zoom);

  void printar() {
    print('Login:$isLogin');
    //print('Pwd:$isPwd');
  }
}

void main() {
  //print("Hello Word !!");
  final mostra = PegaLog();
  mostra.printar();
}
