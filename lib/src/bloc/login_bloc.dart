import 'dart:async';
import 'package:form_validation_bloc_pattern/src/bloc/validators.dart';
import 'package:rxdart/rxdart.dart';

class LoginBloc with Validators {
 /* final _emailController = StreamController<String>.broadcast();
  final _passwordController = StreamController<String>.broadcast();*/
  final _emailController = BehaviorSubject<String>();
  final _passwordController = BehaviorSubject<String>();

  //listen to stream data
  Stream<String> get emailStream =>
      _emailController.stream.transform(validateEmail);
  Stream<String> get passwordStream =>
      _passwordController.stream.transform(validatePassword);

  Stream<bool> get formValidStream =>
      CombineLatestStream.combine2(emailStream, passwordStream, (e, p) => true);

  //set values in stream
  Function(String) get changeEmail => _emailController.sink.add;
  Function(String) get changePassword => _passwordController.sink.add;

  //get last value set in streams
  String get email => _emailController.value;
  String get password => _passwordController.value;


  dispose() {
    _emailController?.close();
    _passwordController?.close();
  }
}
