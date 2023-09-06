

import 'package:beta_nation/features/register/data/models/regions_model.dart';
import 'package:beta_nation/features/register/data/models/states_model.dart';
import 'package:beta_nation/features/register/data/services/register_services.dart';
import 'package:beta_nation/utils/api/models/betanation_response.dart';

class RegisterRepository{

  final  _service = RegisterService();
  Future<Regions> getLga(String stateOfOrigin) async {
    final response = await _service.getLga(stateOfOrigin);
    
    return response;
  }

  Future<States> getStates() async {
    final response = await _service.getStates();
    
    return response;
  }

}