
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'clr_event.dart';
import 'clr_state.dart';

class ColorBloc extends Bloc<ColorEvent, ColorState> {
  ColorBloc() : super(const ColorState(Colors.white)) {
    // Register an event handler for all color events
    on<ColorEvent>((event, emit) {
      // Use a switch case statement to handle different events
      switch (event) {
        case ColorEvent.red:
          // Emit a new state with red color
          emit(ColorState(Colors.red));
          break;
        case ColorEvent.green:
          // Emit a new state with green color
          emit(ColorState(Colors.green));
          break;
        // Handle other color events
        case ColorEvent.blue:
        emit(ColorState(Colors.blue));
          // TODO: Handle this case.
          break;
       
      }
    });
  }
}