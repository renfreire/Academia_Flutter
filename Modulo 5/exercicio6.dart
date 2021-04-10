void main() {
  List paciente = [
    'Rodrigo Rahman|35',
    'Guilheme Rahman|10',
    'João Rahman|17',
    'Joaquin Rahman|28',
    'Luan Rahman|23',
  ];

  List pacientesMaiores = [];

  for (var p in paciente) {
    var nomePaciente = p.split('|');
    if (int.parse(nomePaciente[1]) > 18) {
      pacientesMaiores.add(nomePaciente);
      print('${nomePaciente[0]} tem ${nomePaciente[1]} anos');
    }
  }
}
