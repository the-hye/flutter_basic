import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Scaffold(
      appBar: AppBar(
        title: Text('Stateless vs Stateful'),
      ),
      body: Body(),
    ),
  ));
}

class Body extends StatelessWidget {
  const Body({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      ExampleStateless(),
      ExampleStateful(),
    ]);
  }
}

class ExampleStateless extends StatelessWidget {
  const ExampleStateless({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 1,
      child: Container(
        color: Colors.red,
      ),
    );
  }
}

class ExampleStateful extends StatefulWidget {
  // final int index;

  const ExampleStateful({super.key});

  @override
  State<ExampleStateful> createState() => _ExampleStatefulState();
}

class _ExampleStatefulState extends State<ExampleStateful> {
  // late : 값을 할당하지 않아도 되지만, 다른 상황에서 값이 할당되는지 확인해야 함
  late int index;
  late TextEditingController textController;

  @override
  void initState() {
    // super : 이 위젯의 상위 status도 init이 됨
    super.initState();
    index = 5;
    textController = TextEditingController();
  }

  @override
  void dispose() {
    textController.dispose();
    super.dispose();

  }

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 1,
      child: GestureDetector(
        onTap: () {
          // setState : 상태가 변경됐음을 알려주는 함수
          setState(() {
            if (index == 5) {
              index = 0;
              return;
            }
            index++;

          });
        },
        child: Container(
          color: Colors.blue.withOpacity(index/5),
          child: Center(
            child: Text('$index'),
          ),
        ),
      ),
    );
  }
}
