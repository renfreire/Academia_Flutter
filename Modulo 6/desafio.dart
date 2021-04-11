main(List<String> args) {
  var pessoas = [
    'Rodrigo Rahman|35|Masculino',
    'Jose|56|Masculino',
    'Joaquim|84|Masculino',
    'Rodrigo Rahman|35|Masculino',
    'Maria|88|Feminino',
    'Helena|24|Feminino',
    'Leonardo|5|Masculino',
    'Laura Maria|29|Feminino',
    'Joaquim|72|Masculino',
    'Helena|24|Feminino',
    'Guilherme|15|Masculino',
    'Manuela|85|Masculino',
    'Leonardo|5|Masculino',
    'Helena|24|Feminino',
    'Laura|29|Feminino',
  ];

  // 1 - Remover os duplicados
  Set<String> pessoasUnicas = Set<String>.from(pessoas);

  // 2 - Me mostre a quantidade de pessoas do sexo Masculino e Feminino
  int totalMasculino = 0;
  int totalFeminino = 0;
  List totalGeral = [];

  for (var p in pessoasUnicas) {
    var pessoa = p.split('|');

    if (pessoa[2] == 'Masculino') {
      totalMasculino++;
    } else if (pessoa[2] == 'Feminino') {
      totalFeminino++;
    }

    totalGeral.add(pessoa);
  }

  print('O total de pessoas do sexo Masculino é ${totalMasculino}');
  print('');
  print('O total de pessoas do sexo Feminino é ${totalFeminino}');
  print('');

  // 3 - Filtrar e deixar a lista somente com pessoas maiores de 18 anos
  //     e mostre a quantidade de pessoas com mais de 18 anos
  List totalMaiores = totalGeral.where((i) => int.parse(i[1]) > 18).toList();
  print(
      'O total de pessoas maiores de 18 anos é ${totalMaiores.length} ${totalMaiores.length > 1 ? 'pessoas' : 'pessoa'}');

  // 4 - Encontre a pessoa mais velha.
  totalMaiores.sort((a, b) => b[1].compareTo(a[1]));
  print('');
  print(
      'A pessoa mais velha da lista é a ${totalMaiores[0][0]} que possui ${totalMaiores[0][1]} anos');
}
