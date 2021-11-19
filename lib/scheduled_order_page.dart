import 'package:currency_text_input_formatter/currency_text_input_formatter.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class ScheduledOrderPage extends StatefulWidget {
  const ScheduledOrderPage({Key? key}) : super(key: key);

  @override
  _ScheduledOrderPageState createState() => _ScheduledOrderPageState();
}

class _ScheduledOrderPageState extends State<ScheduledOrderPage> {
  TextEditingController textController = TextEditingController();
  final CurrencyTextInputFormatter _formatter = CurrencyTextInputFormatter();
  double value = 0.0025;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          child: Center(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 24.0),
              child: TextField(
                inputFormatters: <TextInputFormatter>[
                  CurrencyTextInputFormatter(
                    turnOffGrouping: true,
                    decimalDigits: 2,
                  ),
                ],
                keyboardType: TextInputType.number,
                controller: textController,
                onTap: () {
                  setState(() {
                    textController.text = value.toString();
                  });
                },
                textAlign: TextAlign.center,
                decoration: InputDecoration(
                    prefixIcon: InkWell(
                        onTap: () {
                          setState(() {
                            textController.text =
                                (double.parse(textController.text) + 1)
                                    .toString();
                          });

                          print("tıklandı prefix");
                        },
                        child: Icon(Icons.add)),
                    suffixIcon: InkWell(
                        onTap: () {
                          setState(() {
                            textController.text =
                                (double.parse(textController.text) + 1)
                                    .toString();
                          });

                          print("tıklandı suffix");
                        },
                        child: Icon(Icons.remove))),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
