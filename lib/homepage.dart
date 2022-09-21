// ignore_for_file: unused_import, implementation_imports

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/text.dart';
import 'package:percent_indicator/percent_indicator.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          //**agregar despues de alinear la columna */
          padding: EdgeInsets.all(20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              CircularPercentIndicator(
                //**agregar un widget column depues de terninar el indicador */
                animation: true, //**agregar al finalizar  */
                animationDuration: 2000,
                radius: 200,
                lineWidth: 50, //**grozor de linea */
                percent: 1,
                backgroundColor: const Color.fromARGB(255, 226, 226, 226),
                progressColor: const Color.fromARGB(255, 54, 54, 54),
                circularStrokeCap: CircularStrokeCap.round,
                center: const Text("100%",
                    style: TextStyle(
                      fontSize: 50,
                      color: Color.fromARGB(255, 63, 63, 63),
                    )),
              ),
              LinearPercentIndicator(
                animation: true, //**agregar al finalizar  */
                animationDuration: 2000,
                lineHeight: 40,
                percent: 1,
                backgroundColor: const Color.fromARGB(255, 226, 226, 226),
                progressColor: const Color.fromARGB(255, 54, 54, 54),
              )
            ],
          ),
        ),
      ),
    );
  }
}
