import 'package:pokedex/Cosa.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class vistUno extends StatelessWidget {
  const vistUno({super.key});

  void _onPressed() {
    print('Todo chido');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 252, 0, 0),
        centerTitle: true,
        title: const Text(
          'Pokedex',
          style: TextStyle(
            color: Color.fromARGB(255, 0, 0, 0),
            fontSize: 40,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: Stack(
        children: [
          Container(
            color: Color.fromARGB(255, 255, 255, 255),
          ),
          Column(
            children: [
              const Text(
                'Tipos de busqueda',
                style: TextStyle(
                  color: Color.fromARGB(255, 0, 0, 0),
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const Row(
                children: [
                  Padding(
                    padding: EdgeInsets.only(left: 30),
                    child: Text(
                      'Region',
                      style: TextStyle(
                        color: Color.fromARGB(255, 0, 189, 16),
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 50,
                  ),
                  Text(
                    'Busqueda',
                    style: TextStyle(
                      color: Color.fromARGB(255, 65, 0, 139),
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(
                    width: 50,
                  ),
                  Text(
                    'Tipo',
                    style: TextStyle(
                      color: Color.fromARGB(255, 133, 0, 93),
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
              const Cosa(
                title: "busqueda por region",
                boxColor: Colors.green,
              ),
              const Cosa(
                title: "busqueda por nombre",
                boxColor: Colors.deepPurple,
              ),
              InkWell(
                onTap: _onPressed,
                child: const Cosa(
                  title: "busqueda por tipo",
                  boxColor: Colors.purple,
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
