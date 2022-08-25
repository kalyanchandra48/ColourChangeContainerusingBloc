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
      debugShowCheckedModeBanner: false,
      home: BlocProvider(
        create: (context) => ColourChangeBlocState(),
        child: const MyHomePage(),
      ),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ColourChangeBlocState, Color>(
      builder: (context, state) {
        return Scaffold(
          body: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                height: 190,
                width: 170,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(19), color: state),
              ),
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
                            .read<ColourChangeBlocState>()
                            .add(YellowColourChangeEvent());
                      },
                      child: const Text('yellow')),
                  TextButton(
                      onPressed: () {
                        context
                            .read<ColourChangeBlocState>()
                            .add((BlueColourChangeEvent()));
                      },
                      child: const Text('blue')),
                  TextButton(
                      onPressed: () {
                        context
                            .read<ColourChangeBlocState>()
                            .add((OrangeColourChangeEvent()));
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
