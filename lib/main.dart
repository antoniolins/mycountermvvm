import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:mycountermvvm/services/counter_service.dart';

import 'package:mycountermvvm/view/counter_view.dart';
import 'package:mycountermvvm/viewmodel/counter_viewmodel.dart';
import 'package:provider/provider.dart';


void main() {

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {

  const MyApp({super.key});
  
  @override
  Widget build(BuildContext context) {
    
    return MultiProvider(providers: [
      ChangeNotifierProvider<CounterViewModel>(
        create: (_) => CounterViewModel(repository: CounterService()),
      ),
    ],
    child: const MaterialApp(
        home: CounterView(),
    ));
  }
}