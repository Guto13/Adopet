import 'package:adopet/componentes_gerais/constants.dart';
import 'package:flutter/material.dart';

class CustomAppBar extends StatefulWidget {
  const CustomAppBar({Key? key}) : super(key: key);

  @override
  _CustomAppBarState createState() => _CustomAppBarState();
}

class _CustomAppBarState extends State<CustomAppBar> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: KPrimaryColor,
        boxShadow: [
          BoxShadow(
            color: Colors.black,
            blurRadius: 0.5,
            offset: Offset(0.5, 0.5),
          ),
        ],
      ),
      child: Padding(
        padding: EdgeInsets.all(20),
        child: Row(
          children: [
            Image.asset(
              'assets/images/Logo Adopet.png',
              height: 25,
              alignment: Alignment.topCenter,
            ),
            Spacer(),
            InkWell(
              onTap: () {},
              child: Text(
                'Home',
                style: TextStyle(
                  color: KTextColor,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            SizedBox(
              width: 10,
            ),
            InkWell(
              onTap: () {},
              child: Text(
                'Sobre',
                style: TextStyle(
                  color: KTextColor,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            SizedBox(
              width: 10,
            ),
            InkWell(
              onTap: () {},
              child: Text(
                'Blog',
                style: TextStyle(
                  color: KTextColor,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            SizedBox(
              width: 10,
            ),
            InkWell(
              onTap: () {},
              child: Text(
                'Apoie',
                style: TextStyle(
                  color: KTextColor,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            SizedBox(
              width: 10,
            ),
            InkWell(
              onTap: () {},
              child: Container(
                height: 25,
                decoration: BoxDecoration(
                  color: KButtonColor,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Center(
                  child: Padding(
                    padding: EdgeInsets.only(
                      left: 10,
                      right: 10,
                    ),
                    child: Text(
                      'Formulário',
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
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
