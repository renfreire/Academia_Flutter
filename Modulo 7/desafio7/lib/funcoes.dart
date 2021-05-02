import 'package:desafio7/models/estados.dart';
import 'package:desafio7/models/municipios.dart';
import 'package:dio/dio.dart';
import 'package:mysql1/mysql1.dart';

Future<List<EstadoModel>> getListEstados() async {
  var urlestados =
      'https://servicodados.ibge.gov.br/api/v1/localidades/estados';
  var dio = Dio();

  Response response = await dio.get(urlestados);

  if (response.statusCode == 200) {
    var respData = response.data as List;
    var estados = respData.map((item) => EstadoModel.fromJson(item)).toList();
    return estados;
  } else {
    return null;
  }
}

Future<List<MunicipioModel>> getListMunicipios(int idEstado) async {
  var urlMunicipios =
      'https://servicodados.ibge.gov.br/api/v1/localidades/estados/$idEstado/distritos';
  var diomun = Dio();

  Response response = await diomun.get(urlMunicipios);

  if (response.statusCode == 200) {
    var respData = response.data as List;
    var listamunicipios =
        respData.map((item) => MunicipioModel.fromJson(item)).toList();
    return listamunicipios;
  } else {
    return null;
  }
}

Future<MySqlConnection> getConectionDB() async {
  var settings = ConnectionSettings(
      host: '127.0.0.1',
      port: 3306,
      user: 'root',
      password: 'root',
      db: 'Desafio7');
  var conn = await MySqlConnection.connect(settings);
  return conn;
}

Future<void> cadastrarEstado(listEstado) async {
  var dbconn = await getConectionDB();

  for (var e in listEstado) {
    await dbconn.query(
        'insert into TBL_ESTADOS (id, sigla, nome ) values (?, ?, ?)',
        [e.id, e.sigla, e.nome]);
  }

  await dbconn.close();
}

Future<void> cadastrarMunicipio(listMunicipio, idEstado) async {
  var dbconn = await getConectionDB();

  for (var m in listMunicipio) {
    await dbconn.query(
        'insert into TBL_MUNICIPIOS (idmun, nomemun, idest ) values (?, ?, ?)',
        [m.id, m.nome, idEstado]);
  }

  await dbconn.close();

}
