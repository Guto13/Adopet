import 'package:adopet/classes/animal.dart';
import 'package:adopet/classes/formularioClasse.dart';
import 'package:adopet/classes/resultado.dart';
import 'package:adopet/componentes_gerais/constants.dart';
import 'package:adopet/dicas/dicas_screen.dart';
import 'package:adopet/formulario/campo_formulario.dart';
import 'package:adopet/resultado/resultado_screen.dart';
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
  final _numeroPets = TextEditingController();
  possuiPet _possuiPet = possuiPet.yes;
  moradia _moradia = moradia.Casa;
  animalPreferido _animalPreferido = animalPreferido.Cao;

  var _formKey = new GlobalKey<FormState>();
  RangeValues _currentRangeValues = const RangeValues(1000, 2000);

  @override
  Widget build(BuildContext context) {
    Resultado _resultadoFinal = Resultado();
    Animal _animal = Animal();
    FormularioClasse _formularioClasse = FormularioClasse();
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
              label: 'Bairro',
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
          _possuiPet == possuiPet.yes
              ? CampoFormulario(
                  textInputType: TextInputType.number,
                  nameController: _numeroPets,
                  label: 'Quantos?',
                  erro: 'Coloque o Numero de pets')
              : Container(),
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
                _resultadoFinal.dicas = dicasCao;
                _resultadoFinal.podeAdotar = true;
                if (_currentRangeValues.end < 1000) {
                  print("Não pode adotar");
                  _resultadoFinal.podeAdotar = false;
                } else if (_currentRangeValues.end <= 2000) {
                  if (_possuiPet == possuiPet.yes) {
                    var aux = int.parse(_numeroPets.text) * 250;
                    aux = _currentRangeValues.end.toInt() - aux;
                    if (aux > 1000) {
                      if (_animalPreferido == animalPreferido.Cao) {
                        print("Cão porte pequeno");
                        _animal.porte = 'pequeno';
                        _animal.tipo = 'cão';
                        _resultadoFinal.videos = videosCaoPequeno;
                      } else {
                        print("Gato");
                        _animal.porte = 'pequeno';
                        _animal.tipo = 'gato';
                        _resultadoFinal.dicas = dicasGato;
                        _resultadoFinal.videos = videosGatos;
                      }
                    } else {
                      print("Não pode adotar");
                      _resultadoFinal.podeAdotar = false;
                    }
                  } else {
                    if (_animalPreferido == animalPreferido.Cao) {
                      print("Cão porte pequeno");
                      _animal.porte = 'pequeno';
                      _animal.tipo = 'cão';
                      _resultadoFinal.videos = videosCaoPequeno;
                    } else {
                      print("Gato");
                      _animal.porte = 'pequeno';
                      _animal.tipo = 'gato';
                      _resultadoFinal.dicas = dicasGato;
                      _resultadoFinal.videos = videosGatos;
                    }
                  }
                } else if (_currentRangeValues.end <= 2500) {
                  if (_possuiPet == possuiPet.yes) {
                    var aux = int.parse(_numeroPets.text) * 250;
                    aux = _currentRangeValues.end.toInt() - aux;
                    if (aux > 1000) {
                      if (_moradia == moradia.Apartamento) {
                        if (_animalPreferido == animalPreferido.Cao) {
                          print("Cão porte pequeno");
                          _animal.porte = 'pequeno';
                          _animal.tipo = 'cão';
                          _resultadoFinal.videos = videosCaoPequeno;
                        } else {
                          print("Gato");
                          _animal.porte = 'pequeno';
                          _animal.tipo = 'gato';
                          _resultadoFinal.dicas = dicasGato;
                          _resultadoFinal.videos = videosGatos;
                        }
                      } else {
                        if (_animalPreferido == animalPreferido.Cao) {
                          print("Cão porte pequeno ou médio");
                          _animal.porte = 'medio';
                          _animal.tipo = 'cão';
                          _resultadoFinal.videos = videosCaoMedio;
                        } else {
                          print("Gato");
                          _animal.porte = 'pequeno';
                          _animal.tipo = 'gato';
                          _resultadoFinal.dicas = dicasGato;
                          _resultadoFinal.videos = videosGatos;
                        }
                      }
                    } else {
                      print("Não pode adotar");
                      _resultadoFinal.podeAdotar = false;
                    }
                  } else {
                    if (_moradia == moradia.Apartamento) {
                      if (_animalPreferido == animalPreferido.Cao) {
                        print("Cão porte pequeno");
                        _animal.porte = 'pequeno';
                        _animal.tipo = 'cão';
                        _resultadoFinal.videos = videosCaoPequeno;
                      } else {
                        print("Gato");
                        _animal.porte = 'pequeno';
                        _animal.tipo = 'gato';
                        _resultadoFinal.dicas = dicasGato;
                        _resultadoFinal.videos = videosGatos;
                      }
                    } else {
                      if (_animalPreferido == animalPreferido.Cao) {
                        print("Cão porte pequeno, médio");
                        _animal.porte = 'medio';
                        _animal.tipo = 'cão';
                        _resultadoFinal.videos = videosCaoMedio;
                      } else {
                        print("Gato");
                        _animal.porte = 'pequeno';
                        _animal.tipo = 'gato';
                        _resultadoFinal.dicas = dicasGato;
                        _resultadoFinal.videos = videosGatos;
                      }
                    }
                  }
                } else {
                  if (_possuiPet == possuiPet.yes) {
                    var aux = int.parse(_numeroPets.text) * 250;

                    aux = _currentRangeValues.end.toInt() - aux;
                    if (aux > 1000) {
                      if (_moradia == moradia.Apartamento) {
                        if (_animalPreferido == animalPreferido.Cao) {
                          print("Cão porte pequeno");
                          _animal.porte = 'pequeno';
                          _animal.tipo = 'cão';
                          _resultadoFinal.videos = videosCaoPequeno;
                        } else {
                          print("Gato");
                          _animal.porte = 'pequeno';
                          _animal.tipo = 'gato';
                          _resultadoFinal.dicas = dicasGato;
                          _resultadoFinal.videos = videosGatos;
                        }
                      } else {
                        if (_animalPreferido == animalPreferido.Cao) {
                          print("Cão de qualquer porte");
                          _animal.porte = 'grande';
                          _animal.tipo = 'cão';
                          _resultadoFinal.videos = videosCaoGrande;
                        } else {
                          print("Gato");
                          _animal.porte = 'pequeno';
                          _animal.tipo = 'gato';
                          _resultadoFinal.dicas = dicasGato;
                          _resultadoFinal.videos = videosGatos;
                        }
                      }
                    } else {
                      print("Não pode adotar");
                      _resultadoFinal.podeAdotar = false;
                    }
                  } else {
                    if (_moradia == moradia.Apartamento) {
                      if (_animalPreferido == animalPreferido.Cao) {
                        print("Cão porte pequeno");
                        _animal.porte = 'pequeno';
                        _animal.tipo = 'cão';
                        _resultadoFinal.videos = videosCaoPequeno;
                      } else {
                        print("Gato");
                        _animal.porte = 'pequeno';
                        _animal.tipo = 'gato';
                        _resultadoFinal.dicas = dicasGato;
                        _resultadoFinal.videos = videosGatos;
                      }
                    } else {
                      if (_animalPreferido == animalPreferido.Cao) {
                        print("Cão de qualquer porte");
                        _animal.porte = 'grande';
                        _animal.tipo = 'cão';
                        _resultadoFinal.videos = videosCaoGrande;
                      } else {
                        print("Gato");
                        _animal.porte = 'pequeno';
                        _animal.tipo = 'gato';
                        _resultadoFinal.dicas = dicasGato;
                        _resultadoFinal.videos = videosGatos;
                      }
                    }
                  }
                }
                _formularioClasse.nome = _nameController.text;
                _formularioClasse.idade = int.parse(_idadeController.text);
                _formularioClasse.email = _emailController.text;
                _formularioClasse.endereco = _enderecoController.text;
                _formularioClasse.bairro = _bairroController.text;
                _formularioClasse.cidade = _cidadeController.text;
                _formularioClasse.estado = _estadoController.text;
                _formularioClasse.tipoMoradia =
                    _moradia == moradia.Casa ? 'Casa' : 'Apartamento';
                _formularioClasse.rendaFinal = _currentRangeValues.end.round();
                _formularioClasse.animalPreferido = _animal.tipo;
                _resultadoFinal.animal = _animal;
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) =>
                          ResultadoScreen(_resultadoFinal, _formularioClasse)),
                );
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
