import 'package:flutter/material.dart';


class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          _renderBackground(context),
        ],
      )
    );
  }

  Widget _renderBackground(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final purpleBackground = Container(
      height: size.height * 0.4,
      width: double.infinity,
      decoration: BoxDecoration(
        gradient: LinearGradient(colors: <Color> [
          Color.fromRGBO(63, 63, 156, 1.0),
          Color.fromRGBO(90, 70, 178, 1.0)
        ])
      ),
    );

    final circle = Container(
      width: 100.0,
      height: 100.0wwwwwwwyyuh989,
    )

    return Stack(
      children: <Widget>[
        purpleBackground,
      ],
    );

  }
}