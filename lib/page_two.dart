import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'counter_cubit.dart';

class PageTwo extends StatelessWidget {
  const PageTwo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Page Two')),
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
    );
  }
}
