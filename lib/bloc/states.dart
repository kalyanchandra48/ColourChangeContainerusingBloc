import 'package:colour_change/bloc/events.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ColourChangeBlocState extends Bloc<ColourChange, Color> {
  ColourChangeBlocState() : super(Colors.black) {
    on<YellowColourChangeEvent>((event, emit) => emit(Colors.yellow));
    on<BlueColourChangeEvent>((event, emit) => emit(Colors.blue));
    on<OrangeColourChangeEvent>((event, emit) => emit(Colors.orange));
  }
}
