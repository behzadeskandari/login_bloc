import 'package:flutter/material.dart';
import 'package:login_bloc/provider.dart';
import 'login_screen.dart';

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  build(context) {
    return Provider(
        key: key, //const ValueKey<String>('ApplicationKey'),
        child: const MaterialApp(
          title: 'Log Me In',
          home: Scaffold(
            body: LoginScreen(),
          ),
        ));
  }
}
