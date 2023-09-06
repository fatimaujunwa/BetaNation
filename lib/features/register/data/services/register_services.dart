import 'package:beta_nation/features/register/data/models/regions_model.dart';
import 'package:beta_nation/features/register/data/models/states_model.dart';
import 'package:beta_nation/utils/api/api_helper.dart';
import 'package:beta_nation/utils/api/env.dart';
import 'package:beta_nation/utils/api/models/betanation_response.dart';

class RegisterService {
  final lga = env.lga;

  Future<Regions> getLga(String stateOfOrigin) async {
    String url = lga + stateOfOrigin;

    final response = await helper.getRegion(url);

    return response;
  }

  Future<States> getStates() async {
    String url = lga;

    final response = await helper.getStates(url);

    return response;
  }
}
