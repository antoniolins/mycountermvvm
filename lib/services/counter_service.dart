
import 'package:mycountermvvm/repositories/counter_repository.dart';

class CounterService implements CounterRepository {
  
 @override
 int incrementCounter(int currentCounter)  {
     return currentCounter+1;
  }
  
@override
 int decrementCounter(int currentCounter) {
    if (currentCounter > 0) { return currentCounter-1; }
    else { return currentCounter;}

    } 

 } //