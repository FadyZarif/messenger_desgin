


import 'package:abdullah_mansour/counter/cubit/cubit.dart';
import 'package:abdullah_mansour/counter/cubit/states.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CounterScreen extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (BuildContext context) => CounterCubit() ,
      child: BlocConsumer<CounterCubit,CounterStates>(
        listener: (BuildContext context, Object? state) {  },
        builder: (BuildContext context, state) { return Scaffold(
          appBar: AppBar(
            title: Text(
                "Counter"
            ),
          ),
          body: Center(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextButton(
                  onPressed: (){
                  CounterCubit.get(context).minus();
                 //  counter--;

                  },
                  child: Text(
                    "Minus", style: TextStyle(fontSize: 18),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Text(
                    "${CounterCubit.get(context).counter}",style: TextStyle(fontSize: 30,color: Colors.black),),
                ),
                TextButton(
                  onPressed: (){
                    CounterCubit.get(context).plus();
                  //  counter++;

                  },
                  child: Text(
                      "Plus",
                      style: TextStyle(fontSize: 18)
                  ),
                ),

              ],
            ),
          ),
        ); },
      ),
    );
  }
}


