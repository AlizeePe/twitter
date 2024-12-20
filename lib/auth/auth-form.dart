import 'package:flutter/material.dart';
import 'package:email_validator/email_validator.dart';

class AuthForm extends StatefulWidget {
  @override
  State<AuthForm> createState() => _AuthFormState();
}

class _AuthFormState extends State<AuthForm> {
  var formKey = GlobalKey<FormState>();

  bool isActivated = false;
  String username = "";
  String password = "";


  String? validatePassword(value) {
    if (value == null || value.trim().isEmpty) {
      return "Le mot de passe est obligatoire";
    }
    return null;
  }


  String? validateEmail(value) {
    if (value == null || value.trim().isEmpty) {
      return "L'identifiant' est obligatoire";
    }
    if(!EmailValidator.validate(value)){
      return "Le format du mail n'est pas correct";
    }
    return null;
  }

  void _showDialog(){
    showDialog(
      context: context,
      builder: (BuildContext context){
        return AlertDialog(
          title: Text("Connexion"),
          content: Text("Connexion réussie !"),
          actions: [
            TextButton(onPressed: (){
              Navigator.pop(context);
            }, child: Text("ok"))
          ],
        );
      }
    );
  }

  @override
  Widget build(BuildContext context) {
    return Form(
        key: formKey,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Connexion à Twitter"),
                ],
              ),
              TextFormField(
                onSaved: (value) {
                  if (value != null) {
                    username = value;
                  }
                },
                validator: validateEmail,
                decoration: InputDecoration(
                  labelText: 'Identifiant',
                  hintText: "Identifiant",
                ),
              ),
              TextFormField(
                onSaved: (value) {
                  if (value != null) {
                    password = value;
                  }
                },
                validator: validatePassword,
                decoration: InputDecoration(
                  labelText: 'Password',
                  hintText: "Mot de passe",
                ),
              ),
              Row(
                children: [
                  Switch(value: false, onChanged: (value) {
                    setState(() {
                      isActivated = value;
                    });
                  }),
                  Text("Mémoriser mes informations")
                ],
              ),
              Row(
                children: [
                  Expanded(
                    child: ElevatedButton(
                        onPressed: () {
                          // déclenche les callbacks de validation -> validator
                          if (formKey.currentState!.validate()) {
                            // déclenche les callbacks de sauvegarde -> onSaved
                            formKey.currentState!.save();
                            _showDialog();
                            Navigator.pushNamed(context, '/tweet', arguments: "a@acom");
                          }
                        },
                        child: Text('Enregistrer', style: TextStyle(color: Colors.white)),
                        style: ButtonStyle(backgroundColor: WidgetStateProperty.all(Colors.blueAccent))),
                  ),
                ],
              )
            ],
          ),
        ));
  }
}
