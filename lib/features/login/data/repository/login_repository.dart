import 'package:beta_nation/features/login/data/services/login_services.dart';
import 'package:beta_nation/utils/api/models/betanation_response.dart';

class LoginRepositories {

  final  _service = LoginService();
  Future<BetaNationApiResponse> login(String nin, String password) async {
    final response = await _service.login({
      "username":"ujunwa12",
      "password":'12'


    });
    return response;
  }
}
