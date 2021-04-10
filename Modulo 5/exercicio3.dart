void main() {
  int contador = 0;
  String nome =
      'Pedro de Alcântara Francisco Antônio João Carlos Xavier de Paula Miguel Rafael Joaquim José Gonzaga Pascoal Cipriano Serafim de Bragança e Bourbon';

  List<String> nomes = nome.split(' ');

  for (var n in nomes) {
    if (n != 'e' && n != 'de') {
      contador++;
    }
  }

  print(contador);
}
