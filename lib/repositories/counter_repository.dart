

import 'package:mycountermvvm/services/counter_service.dart';

abstract class CounterRepository {


    CounterRepository({

    required CounterService service,
  }): _service = service ;


  final CounterService _service;


  int incrementCounter(int currentCounter) {
    return _service.incrementCounter(currentCounter);
  }
  
  int decrementCounter(int currentCounter) {
    return _service.decrementCounter(currentCounter);
  }
 

}