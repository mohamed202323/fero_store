
import 'package:flutter_dotenv/flutter_dotenv.dart';

enum envTypeEnum {
  dev,
  prod
}
class EnvVariabels {

  EnvVariabels._();
  String _envType  = '' ;
  static final instance = EnvVariabels._();

  Future<void> init({required envTypeEnum envType}) async {
    switch (envType) {
      case envTypeEnum.dev :
        await dotenv.load(fileName: '.env.dev');
      case envTypeEnum.prod:
        await dotenv.load(fileName: '.env.prod');
    }
    _envType = dotenv.get('ENV_TYPE') ;
  }

  bool get debugMode => _envType == 'dev' ;
}
