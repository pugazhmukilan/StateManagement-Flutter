import  "package:flutter/material.dart";
import "package:flutter_bloc/flutter_bloc.dart";
import "package:flutter_bloc_counter/cubit/counter_cubit.dart";


class incdec extends StatefulWidget {
  const incdec({super.key});

  @override
  State<incdec> createState() => _incdecState();
}

class _incdecState extends State<incdec> {
  
  @override
  Widget build(BuildContext context) {
    final counter = BlocProvider.of<CounterCubit>(context);
    return Scaffold(
      floatingActionButton: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          FloatingActionButton(
            onPressed: () {
              counter.increment();
              
            },
            tooltip: 'Increment',
            child: const Icon(Icons.add),
          ),

          SizedBox(height:15),
           FloatingActionButton(
            onPressed: () {
              counter.decrement();
              
            },
            tooltip: 'Decrement',
            child: const Icon(Icons.remove),
          ),

           SizedBox(height:15),
           FloatingActionButton(
            onPressed: () {
              Navigator.pop(context);
              
            },
            tooltip: 'back pagee',
            child: const Icon(Icons.arrow_back_ios),
          ),
        
        ],
      ),
    );
  }
}