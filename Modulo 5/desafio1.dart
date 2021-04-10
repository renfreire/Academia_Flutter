void main(List<String> args) {
  var pacientes = [
    'Rodrigo Rahman|35|desenvolvedor|SP',
    'Manoel Silva|12|estudante|MG',
    'Joaquim Rahman|18|estudante|SP',
    'Fernando Verne|35|estudante|MG',
    'Gustavo Silva|40|estudante|MG',
    'Sandra Silva|40|estudante|MG',
    'Regina Verne|35|estudante|MG',
    'João Rahman|55|Jornalista|SP',
  ];

  List<dynamic> listaPacientes = [];

  for (var p in pacientes) {
    var listaaux = p.split('|');
    if (int.parse(listaaux[1]) > 20) {
      var familia = listaaux[0].split(' ');
      listaaux.insert(0, familia[1]);
      listaPacientes.add(listaaux);
    }
  }

  listaPacientes.sort((a, b) => a[0].compareTo(b[0]));

  // Apresente a quantidade de pacientes com mais de 20 anos
  print(
      'A quantidade de pacientes com mais de 20 anos é ${listaPacientes.length}');

  // Agrupar os pacientes por familia(considerar o sobrenome) apresentar por familia.

  var nomeFamilia = '';

  for (var c in listaPacientes) {
    if (nomeFamilia == '') {
      nomeFamilia = c[0];
      print('Familia $nomeFamilia');
    } else if (nomeFamilia != c[0]) {
      nomeFamilia = c[0];
      print('Familia $nomeFamilia');
    }

    print('  - ${c[1]} tem ${c[2]} anos, é ${c[3]} e mora em ${c[4]}');
  }
}
