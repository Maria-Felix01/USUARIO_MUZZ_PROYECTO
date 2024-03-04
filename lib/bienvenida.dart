

import 'package:flutter/material.dart';
import 'package:muzz_proyecto/crear_cuenta.dart';

import 'package:muzz_proyecto/crear_cuenta.dart';

import 'inicio_de_sesion.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: Bienvenida());
  }
}

class Bienvenida extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double buttonWidth = 250; // Ancho deseado para los botones

    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/login.png'), // Ruta de tu imagen de fondo
            fit: BoxFit.cover, // Ajusta la imagen al tamaño del contenedor
          ),
        ),
        padding: EdgeInsets.only(top: 280),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                onPressed: () {
                  Navigator.push( context,
                   MaterialPageRoute(builder: (context) => (LoginPage()))
                  );

                  // Acción para iniciar sesión con correo o algo similar
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color.fromARGB(255, 42, 46, 49), // Cambia el color de fondo del botón
                  minimumSize: Size(buttonWidth, 60), // Define el tamaño mínimo del botón
                ),
                child: Text('Iniciar sesión'),
              ),
              SizedBox(height: 20), // Espacio entre los botones
              ElevatedButton(
                onPressed: () {
                  Navigator.push( context,
                   MaterialPageRoute(builder: (context) => (CreateAccountPage()))
                  );
                  // Acción para crear una cuenta
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color.fromARGB(255, 42, 46, 49), // Cambia el color de fondo del botón
                  minimumSize: Size(buttonWidth, 60), // Define el tamaño mínimo del botón
                ),
                child: Text('Crear cuenta'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
