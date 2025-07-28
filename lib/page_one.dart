import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:v1/page_two.dart';

import 'counter_cubit.dart';

class PageOne extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Cubit Counter")),
      body: Center(
        child: Column(
          children: [
            BlocBuilder<CounterCubit, int>(
              builder: (context, state) {
                return Text(
                  'Counter: $state',
                  style: const TextStyle(fontSize: 32),
                );
              },
            ),

            //   buttons
            Row(
              children: [
                ElevatedButton(
                  onPressed: () {
                    BlocProvider.of<CounterCubit>(context).increase();
                  },
                  child: Text('Increase'),
                ),

                ElevatedButton(
                  onPressed: () {
                    BlocProvider.of<CounterCubit>(context).decrease();
                  },
                  child: Text('Decrease'),
                ),
              ],
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        heroTag: 'decrease',
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => PageTwo()),
          );
        },
        child: const Icon(Icons.navigate_next),
      ),
    );
  }
}
