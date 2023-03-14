import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_bloc_02022023/demo_bloc_lib/count_lib_bloc.dart';
import 'package:flutter_bloc_02022023/demo_bloc_lib/counter_lib_event.dart';
import 'package:flutter_bloc_02022023/demo_bloc_lib/counter_lib_state.dart';
import 'package:flutter_bloc_02022023/demo_bloc_pattern/counter_bloc.dart';
import 'package:flutter_bloc_02022023/demo_bloc_pattern/counter_event.dart';

class DemoBlocLibWidget extends StatefulWidget {
  const DemoBlocLibWidget({Key? key}) : super(key: key);

  @override
  State<DemoBlocLibWidget> createState() => _DemoBlocLibWidgetState();
}

class _DemoBlocLibWidgetState extends State<DemoBlocLibWidget> {
  final CounterLibBLoc bloc = CounterLibBLoc();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Demp bloc pattern"),
      ),
      body: Container(
        constraints: BoxConstraints.expand(),
        child: CounterWidget(
          bloc: bloc,
        ),
      ),
    );
  }

  @override
  void dispose() {
    super.dispose();
    bloc.close();
  }
}

class CounterWidget extends StatelessWidget {
  CounterLibBLoc bloc;

  CounterWidget({required this.bloc});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        BlocConsumer<CounterLibBLoc, CounterLibStateBase>(
          listener: (context, state) {
            
          },
          bloc: bloc,
          builder: (context, state) {
            return Text("Counter ${state.value}");
          },
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            ElevatedButton(
                onPressed: () {
                  bloc.add(InCreaseLibEvent(value: 1));
                },
                child: Text("+")),
            ElevatedButton(onPressed: () {}, child: Text("-")),
            ElevatedButton(onPressed: () {}, child: Text("= 0")),
          ],
        )
      ],
    );
  }
}
