import 'dart:math';

class Pessoa {
  String _nome = "";
  double _peso = 0;
  double _altura = 0;

  Pessoa(String nome, {double peso = 0.0, double altura = 0.0}) {
    _nome = nome;
    _peso = peso;
    _altura = altura;
  }

  void setNome(String nome) => _nome = nome;
  void setPeso(double peso) => _peso = peso;
  void setAltura(double altura) => _altura = altura;

  String getNome() => _nome;
  double getPeso() => _peso;
  double getAltura() => _altura;

  double calcularIMC() {
    var imc = 0.0;
    if (_peso.isNaN || _altura.isNaN) {
      return 0;
    }
    try {
      imc = _peso / pow(_altura, 2);
    } catch (e) {
      print('Verifique por favor os valor do Peso e da Altura');
    }
    return imc;
  }

  String qualificacaoIMC(double imc) {
    String mesnagem = '';
    if (imc < 16) {
      mesnagem = 'IMC: $imc. Magreza grave';
    } else if (imc > 16 && imc < 17) {
      mesnagem = 'IMC: $imc. Magreza moderada';
    } else if (imc > 17 && imc < 18.5) {
      mesnagem = 'IMC: $imc. Magreza leve';
    } else if (imc > 18.5 && imc < 25) {
      mesnagem = 'IMC: $imc. Saudável';
    } else if (imc > 25 && imc < 30) {
      mesnagem = 'IMC: $imc. Subrepeso';
    } else if (imc > 30 && imc < 35) {
      mesnagem = 'IMC: $imc. Obesidade Grau I';
    } else if (imc > 35 && imc < 40) {
      mesnagem = 'IMC: $imc. Obesidade Grau II (Severa)';
    } else if (imc >= 40) {
      mesnagem = 'IMC: $imc. Obesidade Grau III (Morbida)';
    }
    return mesnagem;
  }

  @override
  String toString() {
    return {
      'Nome': _nome,
      'Peso': _peso,
      'Altura': _altura,
    }.toString();
  }
}
