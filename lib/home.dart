import 'package:adopet/app_bar.dart';
import 'package:adopet/componentes_gerais/constants.dart';
import 'package:adopet/formulario/formulario_screen.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size(size.width, 1000),
        child: CustomAppBar(),
      ),
      backgroundColor: KPrimaryColor,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          children: [
            Container(
              height: 50,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/images/Logo Adopet.png'),
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              'Quer saber tudo sobre adotar e manter um pet?',
              style:
                  TextStyle(fontWeight: FontWeight.normal, color: KTextColor),
            ),
            SizedBox(
              height: 5,
            ),
            Text(
              'Basta responder o formulário',
              style:
                  TextStyle(fontWeight: FontWeight.normal, color: KTextColor),
            ),
            SizedBox(
              height: 20,
            ),
            InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => FormularioScreen()),
                );
              },
              child: Container(
                height: 30,
                width: 200,
                decoration: BoxDecoration(
                  color: KButtonColor,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Center(
                  child: Text(
                    'Responder Agora',
                    style: TextStyle(
                        color: Colors.white, fontWeight: FontWeight.bold),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
