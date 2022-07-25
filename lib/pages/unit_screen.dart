import 'package:flutter/material.dart';

class UnitScreen extends StatefulWidget {
  const UnitScreen({Key? key}) : super(key: key);

  @override
  State<UnitScreen> createState() => _UnitScreenState();
}

class _UnitScreenState extends State<UnitScreen> {
  final TextEditingController myController = TextEditingController();
  var _result = "";
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: const Text(
            "Unit Converter",
            style:
                TextStyle(fontFamily: "Poppins", fontWeight: FontWeight.bold),
          ),
          centerTitle: true,
        ),
        body: SingleChildScrollView(
          child: Column(
            // ignore: prefer_const_literals_to_create_immutables
            children: [
              const Padding(
                padding: EdgeInsets.all(28.0),
                child: Text(
                  "Convert MM to KM",
                  style: TextStyle(
                      fontFamily: "Poppins",
                      fontSize: 20.0,
                      fontWeight: FontWeight.bold),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(18.0),
                child: TextField(
                  maxLength: 18,
                  keyboardType: TextInputType.number,
                  controller: myController,
                  decoration: const InputDecoration(
                    hintText: "Enter mm",
                    hintStyle: TextStyle(
                        fontFamily: "Popppins",
                        fontSize: 20.0,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ),
              const SizedBox(
                height: 20.0,
              ),
              Padding(
                padding: const EdgeInsets.all(18.0),
                child: ElevatedButton(
                  onPressed: () {
                    setState(() {
                      _result = '${double.parse(myController.text) / 1000000}';
                    });
                  },
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(Colors.purple),
                  ),
                  child: const Text(
                    "Convert",
                    style: TextStyle(
                        fontFamily: "Poppins",
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                        fontSize: 16.0),
                  ),
                ),
              ),
              const SizedBox(
                height: 10.0,
              ),
              Text(
                _result,
                style: const TextStyle(
                  fontFamily: "Poppins",
                  fontSize: 22.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              FlatButton(
                  onPressed: () {
                    setState(() {
                      _result = " ";
                      myController.text = " ";
                    });
                  },
                  child: const Text(
                    "Clear",
                    style: TextStyle(
                      color: Colors.purple,
                      fontFamily: "Poppins",
                      fontSize: 20.0,
                      fontWeight: FontWeight.bold,
                    ),
                  )),
              SafeArea(child: Text(""))
            ],
          ),
        ),
      ),
    );
  }
}
