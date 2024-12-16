double calcularDesconto(double valor, double desconto, bool percemtual) {
  if (valor <= 0) {
    throw ArgumentError(
        'O valor do produto não pode ser menor ou igual a zero.');
  }
  if (percemtual) {
    return valor - ((valor * desconto) / 100);
  }
  return valor - desconto;
}
