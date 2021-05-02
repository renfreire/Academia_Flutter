import 'funcoes.dart';

Future<void> main() async {
  final estados = await getListEstados();
  await cadastrarEstado(estados);

  for (var est in estados) {
    var listamun = await getListMunicipios(est.id);
    await cadastrarMunicipio(listamun, est.id);
  }

  print('Final da rotina de cadastros');
}
