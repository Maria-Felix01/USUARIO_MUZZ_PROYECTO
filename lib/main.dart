import 'package:flutter/material.dart';
import 'package:muzz_proyecto/bienvenida.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter App',
      // Establecer directamente la página que deseas abrir al iniciar la aplicación
      home: Bienvenida(),
    );
  }
}

