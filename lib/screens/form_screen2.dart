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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Nova Tarefa 2'),
      ),
      body: Center(
        child: Container(
          height: 400,
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
        )],
        ),
      ),
    ),);
  }
}
