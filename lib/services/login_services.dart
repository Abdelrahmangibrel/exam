import 'package:dio/dio.dart';
import '../models/register_models.dart';

class LoginService
{
  //dd
  //
  //
  //
  //
  //
  //
  // ,mcldsk jklmsclm
  static Dio dio = Dio();
  static addData (String email , String password) async
  {
    Response response = await dio.post("https://student.valuxapps.com/api/login",
        data: {
          "email":email,
          "password" : password,
        }
    );
    if(response.statusCode! >= 200 && response.statusCode! < 300)
    {
      print(response.data);
      return RegistrationModel.ConvermFronJson (response.data);
    }
    else
    {
      throw Exception("Server Error ");
    }
  }
}