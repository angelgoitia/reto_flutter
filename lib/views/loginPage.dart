import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:reto_flutter/views/controller/userController.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final _formUser = new GlobalKey<FormState>();
  TextEditingController _controllerText = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: GetBuilder<UserController>(
          init: UserController(),
          builder: (_) => Container(
            child: Form(
              key: _formUser,
              child: ListView(
                children: [
                  TextFormField(
                    controller: _controllerText,
                    textCapitalization:TextCapitalization.words, 
                    decoration: InputDecoration(
                      icon: Icon(Icons.person, color: Colors.blue),
                      labelText: 'Nombre y Apellido',
                      labelStyle: TextStyle(
                        color: Colors.blue,
                        fontFamily: 'MontserratSemiBold',
                        fontSize: 14,
                      ),
                      focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Colors.blue),
                      ),
                    ),
                    validator: (String value) => value.length >= 3? null : 'Error nombre y apellido incorrecto!',
                    onFieldSubmitted: (value){
                      FocusScope.of(context).requestFocus(new FocusNode()); //save the keyboard
                      _.saveName(value); //process that will be carried out when you press the register button
                    },
                  ),
                  Padding(
                    padding: EdgeInsets.all(5),
                    child: OutlinedButton(
                      style: OutlinedButton.styleFrom(
                        backgroundColor: Colors.blue,
                        shape: RoundedRectangleBorder(borderRadius: new BorderRadius.circular(30.0)),
                      ),
                      onPressed: () => _formUser.currentState.validate()? _.saveName(_controllerText.text): null,
                      child: Text(
                        "Guardar",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                        ),
                      ),
                    ),
                  ) 
                ],
              )
            )
          ),
        ),
      )
    );
  }
}