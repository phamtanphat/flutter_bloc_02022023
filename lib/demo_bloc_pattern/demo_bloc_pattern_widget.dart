import 'package:flutter/material.dart';
import 'package:flutter_bloc_02022023/demo_bloc_pattern/counter_bloc.dart';
import 'package:flutter_bloc_02022023/demo_bloc_pattern/counter_event.dart';

class DemoBlocPatternWidget extends StatefulWidget {
  const DemoBlocPatternWidget({Key? key}) : super(key: key);

  @override
  State<DemoBlocPatternWidget> createState() => _DemoBlocPatternWidgetState();
}

class _DemoBlocPatternWidgetState extends State<DemoBlocPatternWidget> {
  final CounterBloc bloc = CounterBloc();

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
}

class CounterWidget extends StatelessWidget {
  CounterBloc bloc;

  CounterWidget({required this.bloc});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        StreamBuilder<int>(
            stream: bloc.counterStreamController.stream,
            builder: (context, snapshot) {
              if (snapshot.hasData) {
                return Text("Count: ${snapshot.data}");
              }
              return Container();
            }),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            ElevatedButton(
                onPressed: () {
                  bloc.addEvent(InCreaseEvent(value: 1));
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
