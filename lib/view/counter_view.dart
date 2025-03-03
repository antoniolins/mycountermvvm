

import 'package:flutter/material.dart';
import 'package:mycountermvvm/viewmodel/counter_viewmodel.dart';
import 'package:provider/provider.dart';

class CounterView extends StatelessWidget {
  const CounterView({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(

      backgroundColor: const Color(0xff2e2e2e),

      appBar: AppBar(
        centerTitle: true,
        title: const Text("Counter MVVM"),
      ),

      body: Center(
        child: Consumer<CounterViewModel>(builder: (context, conterViewModel, child){

          return Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text("Count", style: TextStyle(color: Colors.white, fontSize: 22),),
              Text("${conterViewModel.count}", style: const TextStyle(color: Colors.white,fontSize: 22),),
              const SizedBox(height: 20,),

              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ElevatedButton(onPressed: (){
                  //  Provider.of<CounterViewModel>(context, listen: false).increment();
                      conterViewModel.increment();
                  }, child: const Text("Increment",
                    style: TextStyle(color: Colors.black,fontSize: 20),),
                    ),

                const SizedBox(width: 20,),

                  ElevatedButton(onPressed: (){
                  //    Provider.of<CounterViewModel>(context, listen: false).decrement();
                        conterViewModel.decrement();
                        },  child: const Text("Decrement",
                            style: TextStyle(color: Colors.black,fontSize: 20),), 
                   ),
              ],
            ),             
            ],
          );

        })),
        
        );
  }
}