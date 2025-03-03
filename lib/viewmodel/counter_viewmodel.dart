
import 'package:flutter/material.dart';
import 'package:mycountermvvm/models/counter.dart';
import 'package:mycountermvvm/repositories/counter_repository.dart';


class CounterViewModel extends ChangeNotifier {

  
CounterViewModel({
  required CounterRepository repository,
}): _repository = repository ;

 final CounterRepository _repository; 


CounterModel counter = CounterModel();

 int get count => counter.count;

  void increment(){
     counter.count = _repository.incrementCounter(counter.count);
    notifyListeners();
 }

  void decrement(){
    counter.count = _repository.decrementCounter(counter.count);
    notifyListeners();
 }

}
