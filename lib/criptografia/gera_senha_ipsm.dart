class GeraSenhaIPSM {
  final int chave;
  final String textoOriginal;
  var _textoCifrado = '';
  GeraSenhaIPSM({required this.chave, required this.textoOriginal});
  // Converte caracter para inteiro ASCII em UTF-16 e soma a chave
  // Desloca 94 posições se valor acima de 126
  // Converte para ASCII
  String encriptar() {
    for (var i = 0; i < textoOriginal.length; i++) {
      var letraCifrada = textoOriginal.codeUnitAt(i) + chave;
      while (letraCifrada > 126) {
        letraCifrada -= 94;
      }
      _textoCifrado += String.fromCharCode(letraCifrada);
    }

    return _textoCifrado;
  }

  // valor ASCII é convertido para Hexadecimal
  String textoCifradoHex() {
    encriptar();
    var textoCifradoHex = '';
    for (var i = 0; i < _textoCifrado.length; i++) {
      textoCifradoHex += _textoCifrado.codeUnitAt(i).toRadixString(16);
    }
    return textoCifradoHex;
  }
}
