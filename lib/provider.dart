import 'package:flutter/material.dart';
import 'bloc.dart';

class Provider extends InheritedWidget {
  final bloc = Bloc();
//required super.child
  Provider({required Key? key, required Widget child}) : super(child: child);
  //covariant InheritedWidget oldWidget

  @override
  bool updateShouldNotify(_) {
    // TODO: implement updateShouldNotify
    return true;
  }

  static Bloc of(BuildContext context) {
    return (context.dependOnInheritedWidgetOfExactType<Provider>() as Provider)
        .bloc;
  }
}
