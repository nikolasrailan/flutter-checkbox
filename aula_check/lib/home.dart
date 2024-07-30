import 'package:aula_check/check_box_option.dart';
import 'package:aula_check/check_custom_widget.dart';
import 'package:flutter/material.dart';
import 'package:aula_check/home.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _HomeState();
}

class _HomeState extends State<MyHomePage> {
  bool cbIsSelected_1 = false;

  _HomeState();

  final List<CheckBoxOption> months = [
    CheckBoxOption(title: 'Janeiro'),
    CheckBoxOption(title: 'Fevereiro'),
    CheckBoxOption(title: 'Março'),
    CheckBoxOption(title: 'Abril'),
    CheckBoxOption(title: 'Maio'),
    CheckBoxOption(title: 'Junho'),
    CheckBoxOption(title: 'Julho'),
    CheckBoxOption(title: 'Agosto'),
    CheckBoxOption(title: 'Setembro'),
    CheckBoxOption(title: 'Outubro'),
    CheckBoxOption(title: 'Novembro'),
    CheckBoxOption(title: 'Dezembro'),
  ];

  String resposta = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(widget.title),
        ),
        body: Row(
          children: <Widget>[
            Row(
              children: <Widget>[
                Radio(
                    value: 'sim',
                    groupValue: resposta,
                    onChanged: (value) {
                      setState(() {
                        resposta = value.toString();
                      });
                    }),
                const Text('sim'),
              ],
            ),
            Row(
              children: <Widget>[
                Radio(
                    value: 'nao',
                    groupValue: resposta,
                    onChanged: (value) {
                      setState(() {
                        resposta = value.toString();
                      });
                    }),
                const Text('nao'),
              ],
            )
          ],
        ));
  }

  void printSelectedMonths() {
    List<CheckBoxOption> selectedMonths =
        List.from(months.where((item) => item.checked));

    selectedMonths.forEach((item) {
      print(item.title);
    });
  }
}

//ListView.builder(
//            shrinkWrap: true,
//            physics: const NeverScrollableScrollPhysics(),
//            itemCount: months.length,
//            itemBuilder: (_, index) {
//              return CheckboxCustomWidget(item: months[index]);
//            }),