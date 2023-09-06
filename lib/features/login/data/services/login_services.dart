import 'package:beta_nation/utils/api/api_helper.dart';
import 'package:beta_nation/utils/api/models/betanation_response.dart';

class LoginService {


  Future<BetaNationApiResponse> login(Map body) async {
  
    const url = "/login";

    final response = await helper.post(url, body);
    
    return response;
  }
}
