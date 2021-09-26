import 'package:adopet/classes/formularioClasse.dart';
import 'package:adopet/classes/resultado.dart';
import 'package:adopet/componentes_gerais/constants.dart';
import 'package:flutter/material.dart';

class BodyDicas extends StatefulWidget {
  BodyDicas(this.resultadoFinal, this.formulario);

  final Resultado resultadoFinal;
  final FormularioClasse formulario;

  @override
  _BodyDicasState createState() => _BodyDicasState();
}

class _BodyDicasState extends State<BodyDicas> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: EdgeInsets.all(20),
        child: ListView.builder(
            itemCount: widget.resultadoFinal.dicas.length,
            itemBuilder: (_, index) {
              return Column(
                children: [
                  Container(
                    padding: EdgeInsets.all(15),
                    decoration: BoxDecoration(
                      color: KButtonColor,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Wrap(
                          children: [
                            Text(
                              widget.resultadoFinal.dicas[index].titulo,
                              style: TextStyle(
                                  color: KPrimaryColor,
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold),
                            ),
                            Spacer(),
                            IconButton(
                              onPressed: () {
                                setState(() {
                                  if (widget.resultadoFinal.dicas[index]
                                      .statusAtivo) {
                                    widget.resultadoFinal.dicas[index]
                                        .statusAtivo = false;
                                  } else {
                                    widget.resultadoFinal.dicas[index]
                                        .statusAtivo = true;
                                  }
                                });
                              },
                              icon: Icon(
                                Icons.arrow_drop_down,
                                color: KPrimaryColor,
                              ),
                            ),
                          ],
                        ),
                        widget.resultadoFinal.dicas[index].statusAtivo
                            ? Text(
                                widget.resultadoFinal.dicas[index].descricao,
                                style: TextStyle(color: KPrimaryColor),
                              )
                            : SizedBox(),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  )
                ],
              );
            }),
      ),
    );
  }
}
