import 'package:flutter/material.dart';

class FormScreen2 extends StatefulWidget {
  const FormScreen2({super.key});

  @override
  State<FormScreen2> createState() => _FormScreen2State();
}

class _FormScreen2State extends State<FormScreen2> {
  TextEditingController nameController = TextEditingController();
  TextEditingController surnameController = TextEditingController();
  TextEditingController image3Controller = TextEditingController();

  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Nova Tarefa 2'),
        ),
        body: Center(
          child: SingleChildScrollView(
            child: Container(
              height: 600,
              width: 350,
              decoration: BoxDecoration(
                  color: Colors.blueGrey,
                  border: Border.all(width: 1, color: Colors.black),
                  borderRadius: BorderRadius.circular(8)),
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
              Padding(
              padding: const EdgeInsets.all(8),
              child: TextFormField(
                validator: (String? value) {
                  if(value != null && value.isEmpty) {
                    return 'Favor insira um nome';
                  }
                  return null;
                },
                controller: nameController,
                textAlign: TextAlign.center,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  fillColor: Colors.white,
                  filled: true,
                  hintText: 'Name',
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextFormField(
                validator: (String? value) {
                  if(value != null && value.isEmpty) {
                    return 'Favor insira um sobrenome, mano';
                  }
                  return null;
                },
                controller: surnameController,
                textAlign: TextAlign.center,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  fillColor: Colors.white,
                  filled: true,
                  hintText: 'Surname',
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextFormField(
                onChanged: (text) {
                  setState(() {

                  });
                },
                validator: (value) {
                  if(value!.isEmpty) {
                    return 'Favor insira uma URL valida';
                  }
                  return null;
                },
                controller: image3Controller,
                textAlign: TextAlign.center,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  fillColor: Colors.white,
                  filled: true,
                  hintText: 'Image Path',
                ),
              ),
            ),
            Container(
              width: 80,
              height: 100,
              decoration: BoxDecoration(
                  color: Colors.red,
                  border: Border.all(width: 1, color: Colors.black),
                  borderRadius: BorderRadius.circular(8)
              ),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(8),
                child: Image.network(
                  image3Controller.text,
                  errorBuilder: (BuildContext context, Object exception,
                      StackTrace? stackTrace) {
                    return Image.asset('assets/images/nophoto.png');
                  },
                  fit: BoxFit.cover,
                ),
              ),
            ),
            ElevatedButton(onPressed: () {
              if(_formKey.currentState!.validate()) {
                print(nameController.text);
                print(surnameController.text);
                print(image3Controller.text);

                ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(
                        content: Text('Salvando nova tarefa')));
              }
            }, child: Text('Adicionar'))      ],
            ),
        ),
          ),
      ),),
    );
  }
}
