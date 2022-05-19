import 'package:fase1/screens/details/components/perfil_recicladores/components/description.dart';
import 'package:flutter/material.dart';
import '../../../../constants.dart';

class Profile3 extends StatelessWidget{
  const Profile3({
    Key? key
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: kPrimaryColor,
        elevation: 0,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_sharp),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        actions: <Widget> [
          IconButton(
            icon: const Icon(Icons.search),
            onPressed: () {},
          ),
          const SizedBox(width:  kDefaultPadding / 2)
        ],
      ),
      body: Column(
        children: <Widget> [
          Container(
            height: 200,
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/images/PersonaMujer2.png'),
                fit: BoxFit.cover,
              ),
            ),
          ),

          Container(
            color: const Color.fromARGB(40, 0, 255, 0),
            padding: const EdgeInsets.symmetric(vertical: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget> [
                Column(
                  children: const <Widget> [
                    Text("Nombre",
                      style: TextStyle(
                        fontSize: 10
                      ),
                    ),
                    Text("Salomé Garcia",
                      style: TextStyle(
                        color: kTextR,
                        fontSize: 15
                        ),
                    ),

                  ],
                ),
                Column(
                  children: const <Widget> [
                    Text("Zona",
                      style: TextStyle(
                        fontSize: 10
                      ),
                    ),
                    Text("Sur",
                      style: TextStyle(
                        fontSize: 15
                      ),
                    )
                  ],
                )
              ],
            ),
          ),

          const Description(
              text: "Hola mi nombre es Salomé Garcia, estoy encargada de los residuos aprovechables y los residuos no aprovechables, en la zona sur de Santiago de Cali en las comunas 10, 19 y 20.",
          ),

        ],
      ),
    );
  }

}