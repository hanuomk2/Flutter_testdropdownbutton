import 'package:flutter/material.dart';
import 'package:test_dropdownbotton/dropdownbutton.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final List<String> _lists = ["orange", "apple", "strawberry", "banana", "grape"];
  var _text = "";

  void _change_text(String value) {
    setState(() {
      _text = "$valueが選択されました";
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('test_dropdownbutton'),
      ),
      body: Center(
        child: Column(
          children: [
            custom_dropdownbutton(input_param: _lists, output_func: _change_text),
            Text(_text),
          ],
        ),
      ),
    );
  }
}