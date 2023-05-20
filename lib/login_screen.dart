import 'package:flutter/material.dart';
import 'bloc.dart';
import 'provider.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final bloc = Provider.of(context);

    return Container(
      margin: EdgeInsets.all(20.0),
      child: Column(
        children: [
          emailField(bloc),
          passwordField(bloc),
          submitButton(),
        ],
      ),
    );
  }

  Widget emailField(Bloc bloc) {
    return StreamBuilder(
      stream: bloc.email,
      builder: (context, snapshot) {
        return TextField(
          keyboardType: TextInputType.emailAddress,
          decoration: InputDecoration(
            hintText: 'you@example.com',
            labelText: 'Email Address',
            errorText: snapshot.error != null ? snapshot.error.toString() : '',
          ),
          onChanged: bloc.changeEmail,
        );
      },
    );
  }

  Widget passwordField(Bloc bloc) {
    return StreamBuilder(
      stream: bloc.password,
      builder: (context, snapshot) {
        return TextField(
          decoration: InputDecoration(
            hintText: 'password',
            labelText: 'password',
            errorText: snapshot.error != null ? snapshot.error.toString() : '',
          ),
          onChanged: bloc.changePassword,
        );
      },
    );
  }

  Widget submitButton() {
    return TextButton(
      onPressed: () {},
      child: Text('Submit'),
    );
  }
}
