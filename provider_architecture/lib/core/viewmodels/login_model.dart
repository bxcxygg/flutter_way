import '../../locator.dart';
import '../enums/viewstates.dart';
import '../services/authentication_service.dart';
import 'base_model.dart';

class LoginModel extends BaseModel {
  final AuthenticationService _authenticatorService = locator<AuthenticationService>();

  String errorMessage;

  Future<bool> login(String userIdText) async {
    setState(ViewState.Busy);

    var userId = int.tryParse(userIdText);
    if (userId == null) {
      errorMessage = "Value entered is not a number";
      setState(ViewState.Idle);
      return false;
    }
    var success = await _authenticatorService.login(userId);

    setState(ViewState.Idle);
    return success;
  }
}
