import 'package:flutter/material.dart';
import 'package:form_validation_bloc_pattern/src/bloc/provider.dart';
import 'package:form_validation_bloc_pattern/src/pages/home.page.dart';
import 'package:form_validation_bloc_pattern/src/pages/login_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Provider(
      child: MaterialApp (
        debugShowCheckedModeBanner: false,
        title: 'material app',
        initialRoute: 'login',
        routes: {
          'login' : ( BuildContext context ) => LoginPage(),
          'home' : ( BuildContext context ) => HomePage(),
        },
        theme: ThemeData(
          primaryColor: Colors.deepPurple
        ),
      )
    );

  }
}
