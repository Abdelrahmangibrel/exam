import 'package:flutter/material.dart';
import '../models/register_models.dart';
import '../services/signup_services.dart';

class SignUpProvider extends ChangeNotifier
{
  RegistrationModel? registrationModel;

  Future<bool> signup (name, email, password) async
  {
    try
    {
      await SignUpService.addData(name, email, password);
      notifyListeners();
      return true;
    }
    catch(e)
    {
      print(e);
    }
    return false;
  }
}