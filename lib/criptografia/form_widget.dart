import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class FormWidget extends StatelessWidget {
  final String jamp;
  final String description;
  final ValueChanged<String> onChangedJamp;
  final ValueChanged<String> onChangedDescription;
  final VoidCallback onSave;

  const FormWidget({
    Key? key,
    this.jamp = '',
    this.description = '',
    required this.onChangedJamp,
    required this.onChangedDescription,
    required this.onSave,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          buildjamp(),
          SizedBox(height: 8),
          buildDescription(),
          SizedBox(height: 32),
          buildButton(),
        ],
      ),
    );
  }

  Widget buildjamp() => TextFormField(
        maxLines: 1,
        initialValue: jamp,
        keyboardType:
            TextInputType.numberWithOptions(decimal: false, signed: false),
        inputFormatters: <TextInputFormatter>[
          FilteringTextInputFormatter.digitsOnly
        ],
        onChanged: onChangedJamp,
        validator: (jamp) {
          if (jamp!.isEmpty) {
            return 'Esta valor não pode ser nulo';
          }
          return null;
        },
        decoration: InputDecoration(
          border: UnderlineInputBorder(),
          labelText: 'Valor numérico para encriptação',
        ),
      );

  buildDescription() => TextFormField(
        maxLines: 1,
        initialValue: description,
        onChanged: onChangedDescription,
        validator: (description) {
          if (description!.isEmpty) {
            return 'Esta valor não pode ser nulo';
          }
          return null;
        },
        decoration: InputDecoration(
          border: UnderlineInputBorder(),
          labelText: 'Texto a ser encriptado',
        ),
      );

  buildButton() => SizedBox(
        width: double.infinity,
        child: ElevatedButton(
          onPressed: onSave,
          child: Text('Iniciar encriptação'),
          style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all(Colors.black)),
        ),
      );
}
