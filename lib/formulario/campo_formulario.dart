import 'package:adopet/componentes_gerais/constants.dart';
import 'package:flutter/material.dart';

class CampoFormulario extends StatelessWidget {
  const CampoFormulario({
    Key? key,
    required TextEditingController nameController,
    required String label,
    required String erro,
    required TextInputType textInputType,
  })  : _nameController = nameController,
        _label = label,
        _erro = erro,
        _textInputType = textInputType,
        super(key: key);

  final TextEditingController _nameController;
  final String _label;
  final String _erro;
  final TextInputType _textInputType;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Padding(
        padding: EdgeInsets.only(left: 5, right: 5, bottom: 5),
        child: TextFormField(
          cursorColor: Colors.black87,
          controller: _nameController,
          keyboardType: _textInputType,
          decoration: InputDecoration(
            border: InputBorder.none,
            labelText: _label,
            labelStyle: TextStyle(
              color: KTextColor,
              fontSize: 15,
              fontWeight: FontWeight.w500,
            ),
          ),
          style: TextStyle(
            fontSize: 18,
            color: KButtonColor,
          ),
          validator: (value) {
            if (value!.isEmpty) {
              return _erro;
            } else {
              return null;
            }
          },
        ),
      ),
    );
  }
}
