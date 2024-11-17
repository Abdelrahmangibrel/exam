import 'package:flutter/material.dart';

import '../models/register_models.dart';
import '../services/login_services.dart';

class LoginProvider extends ChangeNotifier
{
  RegistrationModel? registrationModel;

  Future<bool> login (email, password) async
  {
    try
    {
      await LoginService.addData(email, password);
      notifyListeners();
      return true ;
    }
    catch(e)
    {
      print(e);
    }
    return false;
  }
}
//aaaasss