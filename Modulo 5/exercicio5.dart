void main() {
  List paciente = [
    'Rodrigo Rahman|35',
    'Guilheme Rahman|10',
    'João Rahman|20',
    'Joaquin Rahman|25',
    'Luan Rahman|23',
  ];

  paciente.removeRange(2, 4);

  for (var p in paciente) {
    List<String> nomePaciente = p.split('|');
    print('${nomePaciente[0]} tem ${nomePaciente[1]} anos');
  }
}
