import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_bloc_counter/cubit/counter_cubit.dart';
import 'package:flutter_bloc_counter/inc_dec.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  
  // int _counter = 0;

  // void _incrementCounter() {
  //   setState(() {

  //     _counter++;
  //   });
  // }

  @override
  Widget build(BuildContext context) {
    final counter = BlocProvider.of<CounterCubit>(context);
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'You have pushed the button this many times:',
            ),
            BlocBuilder<CounterCubit,int>(
              bloc :counter,
              builder: (context, state) {
                return Text(
                  '${counter.state}',
                  style: Theme.of(context).textTheme.headlineMedium,
                );
              },
            ),
          ],
        ),
      ),
      floatingActionButton: 
          FloatingActionButton(
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) => incdec()));
              
            },
            tooltip: 'Increment',
            child: const Icon(Icons.add),
          ),

          
      // floatingActionButton: Column(
      //   mainAxisAlignment: MainAxisAlignment.end,
      //   children: [
      //     FloatingActionButton(
      //       onPressed: () {
      //         counter.increment();
              
      //       },
      //       tooltip: 'Increment',
      //       child: const Icon(Icons.add),
      //     ),

      //     SizedBox(height:15),
      //      FloatingActionButton(
      //       onPressed: () {
      //         counter.decrement();
              
      //       },
      //       tooltip: 'Decrement',
      //       child: const Icon(Icons.remove),
      //     ),
        
      //   ],
      // ),
    );
  }
}
