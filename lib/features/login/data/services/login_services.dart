import 'package:beta_nation/utils/api/api_helper.dart';
import 'package:beta_nation/utils/api/models/betanation_response.dart';

class LoginService {
  ApiBaseHelper _helper = ApiBaseHelper();

  Future<BetaNationApiResponse> login(Map body) {
  
    const url = "/login";

    final response = _helper.post(url, body);
    return response;
  }
}
