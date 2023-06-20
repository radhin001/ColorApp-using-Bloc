// import 'package:colorblock/bloc/clr_bloc.dart';
// import 'package:colorblock/bloc/clr_event.dart';
// import 'package:colorblock/provider.dart';
import 'package:colorblock/bloc/clr_bloc.dart';
import 'package:colorblock/bloc/clr_event.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'bloc/clr_state.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';
// import 'package:provider/provider.dart';

// import 'bloc/clr_state.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    // final ColorBloc colorBloc = BlocProvider.of<ColorBloc>(context);

    // final rad = Provider.of<Prov>(
    //   context,
    // );

    return Scaffold(
      body: Column(
        children: [
          Center(
            child: BlocBuilder<ColorBloc, ColorState>(
              builder: (context, state) {
                return Container(
                  height: 300,
                  width: 300,
                  color: state.color,
                  margin: EdgeInsets.only(top: 150),
                );
              },
            ),
          ),
          SizedBox(
            height: 50,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              ElevatedButton(
                  onPressed: () {
                    context.read<ColorBloc>().add(ColorEvent.blue);
                  },
                  child: Text("blue")),
              ElevatedButton(
                  onPressed: () {
                    context.read<ColorBloc>().add(ColorEvent.red);
                  },
                  child: Text("red")),
              ElevatedButton(
                  onPressed: () {
                    context.read<ColorBloc>().add(ColorEvent.green);
                  },
                  child: Text("green")),
            ],
          )
        ],
      ),
    );
  }
}
