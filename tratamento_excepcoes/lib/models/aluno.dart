class Aluno {
  String _nome = "";
  List<double> _notas = [];

  Aluno(String nome) {
    _nome = nome;
  }

  void setNome(String nome) => _nome = nome;
  void setNotas(List<double> notas) => _notas = notas;

  String getNome() => _nome;
  List<double> getNotas() => _notas;

  double media(List<double> notas) {
    var total = 0.0;
    for (var nota in notas) {
      total += nota;
    }

    return total / notas.length;
  }
}
