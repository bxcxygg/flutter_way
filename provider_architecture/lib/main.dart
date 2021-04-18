import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'core/models/user.dart';
import 'core/services/authentication_service.dart';
import 'locator.dart';
import 'ui/router.dart' as R;

void main() {
  setupLocator();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return StreamProvider<User>(
      initialData: User.initial(),
      create: (context) => locator<AuthenticationService>().userController.stream,
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(),
        initialRoute: "/login",
        onGenerateRoute: R.Router.generateRoute,
      ),
    );
  }
}
