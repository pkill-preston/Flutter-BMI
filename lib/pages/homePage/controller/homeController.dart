import 'package:flutter/material.dart';

class HomeController extends InheritedNotifier<ValueNotifier<int>> {
  HomeController({Key? key,required Widget child}) 
      : super(
      key: key,
      child: child,
      notifier: ValueNotifier(0)
  );

  int  get counter => notifier!.value;
  increment(){
    notifier!.value++;
  }
  static HomeController of(BuildContext context){
    return context.dependOnInheritedWidgetOfExactType<HomeController>()!;
  }

  @override
  bool updateShouldNotify(covariant InheritedWidget oldWidget){
    return false;
  }
}