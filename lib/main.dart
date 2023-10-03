import 'package:flutter/material.dart';
import 'package:one_of/one_of.dart';
import 'package:openapi/openapi.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  void _makeTestRequest() async {
    final requestBody = TestRequest(
      (b) => b
        ..type = TestRequestTypeEnum.requestB
        ..oneOf = OneOf1<RequestB>(
          value: RequestB(
            (b) => b
              ..name = ""
              ..credentials = RequestA((b) => b
                ..email = "email"
                ..password = "password").toBuilder(),
          ),
        ),
    );
    await Openapi().getDefaultApi().test(
          testRequest: requestBody,
        );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'You have pushed the button this many times:',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _makeTestRequest,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
    );
  }
}
