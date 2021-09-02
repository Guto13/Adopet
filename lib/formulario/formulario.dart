import 'package:adopet/componentes_gerais/constants.dart';
import 'package:adopet/formulario/campo_formulario.dart';
import 'package:flutter/material.dart';

class Formulario extends StatefulWidget {
  const Formulario({Key? key}) : super(key: key);

  @override
  _FormularioState createState() => _FormularioState();
}

enum possuiPet { yes, no }
enum moradia { Casa, Apartamento }
enum animalPreferido { Cao, Gato }

class _FormularioState extends State<Formulario> {
  final _nameController = TextEditingController();
  final _idadeController = TextEditingController();
  final _emailController = TextEditingController();
  final _cidadeController = TextEditingController();
  final _enderecoController = TextEditingController();
  final _bairroController = TextEditingController();
  final _estadoController = TextEditingController();
  possuiPet _possuiPet = possuiPet.yes;
  moradia _moradia = moradia.Casa;
  animalPreferido _animalPreferido = animalPreferido.Cao;

  var _formKey = new GlobalKey<FormState>();
  RangeValues _currentRangeValues = const RangeValues(1000, 2000);

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        children: [
          CampoFormulario(
              textInputType: TextInputType.text,
              nameController: _nameController,
              label: 'Nome Completo',
              erro: 'Coloque Seu Nome'),
          SizedBox(
            height: 10,
          ),
          CampoFormulario(
              textInputType: TextInputType.number,
              nameController: _idadeController,
              label: 'Idade',
              erro: 'Coloque Sua Idade'),
          SizedBox(
            height: 10,
          ),
          CampoFormulario(
              textInputType: TextInputType.emailAddress,
              nameController: _emailController,
              label: 'Email',
              erro: 'Coloque Seu Email'),
          SizedBox(
            height: 10,
          ),
          CampoFormulario(
              textInputType: TextInputType.text,
              nameController: _enderecoController,
              label: 'Endereço',
              erro: 'Coloque Seu Endereço'),
          SizedBox(
            height: 10,
          ),
          CampoFormulario(
              textInputType: TextInputType.text,
              nameController: _bairroController,
              label: 'Bairo',
              erro: 'Coloque Seu Bairro'),
          SizedBox(
            height: 10,
          ),
          CampoFormulario(
              textInputType: TextInputType.text,
              nameController: _cidadeController,
              label: 'Cidade',
              erro: 'Coloque Sua Cidade'),
          SizedBox(
            height: 10,
          ),
          CampoFormulario(
              textInputType: TextInputType.text,
              nameController: _estadoController,
              label: 'Estado',
              erro: 'Coloque Seu Estado'),
          SizedBox(
            height: 10,
          ),
          Container(
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10),
            ),
            child: Padding(
              padding: EdgeInsets.only(left: 5, right: 5, bottom: 5),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    'Já possui um Pet?',
                    style: TextStyle(
                      color: KTextColor,
                      fontSize: 15,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  Row(
                    children: [
                      Flexible(
                        flex: 1,
                        child: RadioListTile<possuiPet>(
                          activeColor: KButtonColor,
                          title: const Text('Sim'),
                          value: possuiPet.yes,
                          groupValue: _possuiPet,
                          onChanged: (possuiPet? value) {
                            setState(() {
                              _possuiPet = value!;
                            });
                          },
                        ),
                      ),
                      Flexible(
                        flex: 1,
                        child: RadioListTile<possuiPet>(
                          activeColor: KButtonColor,
                          title: const Text('Não'),
                          value: possuiPet.no,
                          groupValue: _possuiPet,
                          onChanged: (possuiPet? value) {
                            setState(() {
                              _possuiPet = value!;
                            });
                          },
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Container(
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10),
            ),
            child: Padding(
              padding: EdgeInsets.only(left: 5, right: 5, bottom: 5),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    'Moradia',
                    style: TextStyle(
                      color: KTextColor,
                      fontSize: 15,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  Row(
                    children: [
                      Flexible(
                        flex: 1,
                        child: RadioListTile<moradia>(
                          activeColor: KButtonColor,
                          title: const Text('Casa'),
                          value: moradia.Casa,
                          groupValue: _moradia,
                          onChanged: (moradia? value) {
                            setState(() {
                              _moradia = value!;
                            });
                          },
                        ),
                      ),
                      Flexible(
                        flex: 1,
                        child: RadioListTile<moradia>(
                          activeColor: KButtonColor,
                          title: const Text('Apartamento'),
                          value: moradia.Apartamento,
                          groupValue: _moradia,
                          onChanged: (moradia? value) {
                            setState(() {
                              _moradia = value!;
                            });
                          },
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Container(
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10),
            ),
            child: Padding(
              padding: EdgeInsets.only(left: 5, right: 5, bottom: 5),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    'Animal Preferido',
                    style: TextStyle(
                      color: KTextColor,
                      fontSize: 15,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  Row(
                    children: [
                      Flexible(
                        flex: 1,
                        child: RadioListTile<animalPreferido>(
                          activeColor: KButtonColor,
                          title: const Text('Cão'),
                          value: animalPreferido.Cao,
                          groupValue: _animalPreferido,
                          onChanged: (animalPreferido? value) {
                            setState(() {
                              _animalPreferido = value!;
                            });
                          },
                        ),
                      ),
                      Flexible(
                        flex: 1,
                        child: RadioListTile<animalPreferido>(
                          activeColor: KButtonColor,
                          title: const Text('Gato'),
                          value: animalPreferido.Gato,
                          groupValue: _animalPreferido,
                          onChanged: (animalPreferido? value) {
                            setState(() {
                              _animalPreferido = value!;
                            });
                          },
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Container(
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10),
            ),
            child: Padding(
              padding: EdgeInsets.only(left: 5, right: 5, bottom: 5),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    'Renda Mensal (Em R\$)',
                    style: TextStyle(
                      color: KTextColor,
                      fontSize: 15,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  RangeSlider(
                    activeColor: KButtonColor,
                    values: _currentRangeValues,
                    min: 0,
                    max: 5000,
                    divisions: 10,
                    labels: RangeLabels(
                      _currentRangeValues.start.round().toString(),
                      _currentRangeValues.end.round().toString(),
                    ),
                    onChanged: (RangeValues values) {
                      setState(() {
                        _currentRangeValues = values;
                      });
                    },
                  ),
                ],
              ),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          InkWell(
            onTap: () {
              if (_formKey.currentState!.validate()) {
                print('object');
              }
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
                  'Enviar',
                  style: TextStyle(
                      color: Colors.white, fontWeight: FontWeight.bold),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
