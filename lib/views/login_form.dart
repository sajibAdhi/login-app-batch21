import 'package:flutter/material.dart';

class LoginForm extends StatefulWidget {
  const LoginForm({Key? key}) : super(key: key);

  @override
  _LoginFormState createState() => _LoginFormState();
}

class _LoginFormState extends State<LoginForm> {
  final TextEditingController _userName = TextEditingController();
  final TextEditingController _password = TextEditingController();
  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0xFFBd5d3e9),
        body: SingleChildScrollView(
          child: Form(
            key: _formKey,
            child: Column(
              children: [
                Container(
                    padding: const EdgeInsets.only(
                        left: 20, top: 80, right: 20, bottom: 20),
                    child: Container(
                      child: Center(
                        child: Text(
                          'Log In',
                          style: new TextStyle(
                            fontSize: 30.0,
                            color: Colors.black87,
                          ),
                        ),
                      ),
                    )),
                Container(
                  padding: const EdgeInsets.only(
                      left: 20, top: 10, right: 20, bottom: 10),
                  child: Image(
                    image: AssetImage('assets/images/welcome_image.png'),
                    fit: BoxFit.cover,
                    width: double.infinity,
                    height: 230,
                  ),
                ),
                Container(
                  padding: const EdgeInsets.all(20),
                  child: TextFormField(
                    controller: _userName,
                    decoration: InputDecoration(
                      icon: Icon(Icons.person),
                      labelText: 'User Name',
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(5.0),
                        borderSide:
                            const BorderSide(color: Colors.blue, width: 1.0),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(5.0),
                        borderSide: const BorderSide(
                            color: Colors.lightGreen, width: 1.0),
                      ),
                    ),
                  ),
                ),
                Container(
                  padding: const EdgeInsets.all(20),
                  child: TextFormField(
                    obscureText: true,
                    controller: _password,
                    validator: (value) {
                      if (value!.isEmpty) {
                        print('Please enter some text');
                      }
                      return null;
                    },
                    decoration: InputDecoration(
                      icon: Icon(Icons.phonelink_lock),
                      labelText: 'Password',
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(5.0),
                        borderSide:
                            const BorderSide(color: Colors.blue, width: 1.0),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(5.0),
                        borderSide: const BorderSide(
                            color: Colors.lightGreen, width: 1.0),
                      ),
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.all(20),
                  child: ElevatedButton(
                    onPressed: () {
                      print(_userName.text);
                      print(_password.text);
                    },
                    child: Container(
                      padding: EdgeInsets.all(10),
                      width: double.infinity,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50),
                      ),
                      child: Center(
                        child: Text(
                          'Submit',
                          style: TextStyle(
                            fontSize: 20.0,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
