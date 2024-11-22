import 'package:geolocator/geolocator.dart';
import 'package:oncoto/model/localizacao_model.dart';

class HomeController {
  Position? localizacao;
  String resultado = "";
  double lat = -22.9108706 , long = -50.4234834;
  bool mapavisivel = false;
  bool carregando = false;

  Future<Position> obterlocalizacao() async{
    return await LocalizacaoModel.determinePosition();
  }
}