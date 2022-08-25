import 'package:colour_change/bloc/events.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ColourChangeBloc extends Bloc<ColourChange, Color> {
  ColourChangeBloc() : super(Colors.black) {
    on<YellowColourChange>((event, emit) => emit(Colors.yellow));
    on<BlueColourChange>((event, emit) => emit(Colors.blue));
    on<OrangeColourChange>((event, emit) => emit(Colors.orange));
  }
}
