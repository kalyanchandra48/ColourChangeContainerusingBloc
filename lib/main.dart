import 'package:colour_change/bloc/events.dart';
import 'package:colour_change/bloc/states.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: BlocProvider(
        create: (context) => ColourChangeBloc(),
        child: const MyHomePage(),
      ),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ColourChangeBloc, Color>(
      builder: (context, state) {
        return Scaffold(
          body: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(height: 100, width: 100, color: state),
              const SizedBox(
                height: 50,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                mainAxisSize: MainAxisSize.max,
                children: [
                  TextButton(
                      onPressed: () {
                        context
                            .read<ColourChangeBloc>()
                            .add(YellowColourChange());
                      },
                      child: const Text('yellow')),
                  TextButton(
                      onPressed: () {
                        context
                            .read<ColourChangeBloc>()
                            .add((BlueColourChange()));
                      },
                      child: const Text('blue')),
                  TextButton(
                      onPressed: () {
                        context
                            .read<ColourChangeBloc>()
                            .add((OrangeColourChange()));
                      },
                      child: const Text('orange'))
                ],
              )
            ],
          ),
        );
      },
    );
  }
}
