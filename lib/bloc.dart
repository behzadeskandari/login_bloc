import 'dart:async';
import 'validators.dart';

class Bloc extends Object with Validators {
  final _email = StreamController<String>();
  final _passwrod = StreamController<String>();

  Stream<String> get email => _email.stream.transform(validateEmail);
  Stream<String> get password => _passwrod.stream.transform(validatePassword);

  Function(String) get changeEmail => _email.sink.add;

  Function(String) get changePassword => _passwrod.sink.add;

  dispose() {
    _email.close();
    _passwrod.close();
  }

  // submitButton() {
  //   _email.stream.listen((event) {
  //
  //   });
  //   _passwrod.stream.listen((event) {});
  // }
}
//global instance
//final bloc = Bloc();
