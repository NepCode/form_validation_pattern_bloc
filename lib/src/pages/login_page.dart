import 'package:flutter/material.dart';


class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          _renderBackground(context),
          _loginForm(context),
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
      height: 100.0,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(100.0),
        color: Color.fromRGBO(255, 255, 255, 0.05)
      ),
    );

    return Stack(
      children: <Widget>[
        purpleBackground,
        Positioned(child: circle, top: 90.0, left: 30.0),
        Positioned(child: circle, top: -40.0, right: -30.0),
        Positioned(child: circle, bottom: -50.0, right: -10.0),
        Positioned(child: circle, bottom: 120.0, right: 20.0),
        Positioned(child: circle, bottom: -50.0, left: -20.0),

        Container(
          padding: EdgeInsets.only(top: 80.0),
          child: Column(
            children: <Widget>[
              Icon( Icons.person_pin_circle, color: Colors.white, size: 100.0),
              SizedBox(height: size.height * 0.02 , width: double.infinity),
              Text('Antonio Aguila', style: TextStyle(color: Colors.white, fontSize: 25.0))
            ],
          ),
        )
      ],
    );

  }

  Widget _loginForm(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Column(
        children: <Widget>[
          SafeArea(child: Container(
            height: 180.0,
          )),
          Container(
            width: size.width * 0.85,
            margin: EdgeInsets.symmetric(vertical: 30.0),
            padding: EdgeInsets.symmetric(vertical: 50.0),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(5.0),
              boxShadow: <BoxShadow> [
                BoxShadow(
                  color: Colors.black26,
                  blurRadius: 3.0,
                  offset: Offset(0.0, 5.0 ),
                  spreadRadius: 3.0
                )
              ]
            ),
            child: Column(
              children: <Widget>[
                Text('Login', style: TextStyle(fontSize: 20.0)),
                SizedBox(height: size.height * 0.05 ),
                _inputEmail(),
                SizedBox(height: size.height * 0.025 ),
                _inputPassword(),
                SizedBox(height: size.height * 0.0250 ),
                _renderLoginButton()
              ],
            ),
          ),
          Text('forget password?'),
          SizedBox(height: 100)
        ],
      ),
    );
  }

  Widget _inputEmail() {
    return Container(
     padding: EdgeInsets.symmetric(horizontal: 20.0),
     child: TextField(
       keyboardType: TextInputType.emailAddress,
       decoration: InputDecoration(
         icon: Icon(Icons.alternate_email, color: Colors.deepPurple),
         hintText: 'email@domain.com',
         labelText: 'Email',
       ),
     ),
    );
  }

  Widget _inputPassword() {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20.0),
      child: TextField(
        keyboardType: TextInputType.emailAddress,
        decoration: InputDecoration(
          icon: Icon(Icons.alternate_email, color: Colors.deepPurple),
          hintText: 'password',
          labelText: 'Password',
        ),
      ),
    );
  }

  Widget _renderLoginButton() {
    return RaisedButton(
      onPressed: (){},
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 80.0, vertical: 15.0 ),
      child: Text('Login'),
    ),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(5.0)
      ),
      elevation: 5.0,
      color: Colors.deepPurple,
      textColor: Colors.white,
    );
  }


}