import 'package:adopet/componentes_gerais/constants.dart';
import 'package:flutter/material.dart';

class ContainerDownload extends StatelessWidget {
  const ContainerDownload({
    Key? key,
    required this.titulo,
    required this.descricao,
    required this.titleButton,
    required this.function,
  }) : super(key: key);

  final String titulo;
  final String descricao;
  final String titleButton;
  final Function function;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 250,
      height: 250,
      decoration: BoxDecoration(
          color: KButtonColor, borderRadius: BorderRadius.circular(10)),
      padding: EdgeInsets.all(20),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            titulo,
            style: TextStyle(
                fontSize: 20,
                color: KPrimaryColor,
                fontWeight: FontWeight.bold),
          ),
          Spacer(),
          Text(
            descricao,
            style: TextStyle(color: KPrimaryColor),
          ),
          Spacer(),
          InkWell(
            onTap: () => function(),
            child: Container(
              decoration: BoxDecoration(
                color: KPrimaryColor,
                borderRadius: BorderRadius.circular(10),
              ),
              child: Center(
                child: Text(
                  titleButton,
                  style: TextStyle(color: KButtonColor),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
