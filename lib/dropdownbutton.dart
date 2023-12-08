import 'package:flutter/material.dart';

class custom_dropdownbutton extends StatefulWidget {
  final List<String> input_param;
  final Function(String) output_func;
  const custom_dropdownbutton({Key? key,
                               required this.input_param,
                               required this.output_func}) : super(key: key);

  @override
  _customDDBState createState() => _customDDBState();
}

class _customDDBState extends State<custom_dropdownbutton> {
  final List<String> _lists = [];
  String _selectedValue = "";

  @override
  void initState() {
    super.initState();

    _selectedValue = widget.input_param[0];
    for(var list in widget.input_param) _lists.add(list);
  }

  @override
  Widget build(BuildContext context) {
    return  DropdownButton<String>(
      value: _selectedValue,
      items: _lists.map<DropdownMenuItem<String>>((String value) {
        return DropdownMenuItem<String>(
          value: value,
          child: Text('$value'),
        );
      }).toList(),
      onChanged: (String? value) {
        setState(() {
          _selectedValue = value!;
        });
        widget.output_func(value!);
      },
    );
  }
}