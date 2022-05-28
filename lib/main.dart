import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  static const String _title = 'Sample App';

  @override
  Widget build(BuildContext context) {
    const Violet50 = const Color(0xffeaf4fe);
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: _title,
      home: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          leading: Padding(
            padding: const EdgeInsets.all(1.0),
            child: Icon(
              Icons.chevron_left,
              size: 50,
              color: Color.fromARGB(221, 4, 61, 108),
            ),
          ),
          title: const Text(
            "Register",
            style: TextStyle(color: const Color(0xff043E6C)),
          ),
          backgroundColor: Violet50,
        ),
        body: const MyStatefulWidget(),
      ),
    );
  }
}

class MyStatefulWidget extends StatefulWidget {
  const MyStatefulWidget({Key? key}) : super(key: key);

  @override
  State<MyStatefulWidget> createState() => _MyStatefulWidgetState();
}

class _MyStatefulWidgetState extends State<MyStatefulWidget> {
  TextEditingController parenticnoController = TextEditingController();
  TextEditingController nameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.all(10),
        child: ListView(
          children: <Widget>[
            Container(
              padding: const EdgeInsets.fromLTRB(10, 100, 10, 10),
              child: TextField(
                controller: parenticnoController,
                decoration: InputDecoration(
                  fillColor: Colors.white,
                  filled: true,
                  enabledBorder: UnderlineInputBorder(
                    borderSide: BorderSide(
                      color: const Color(0xff043E6C),
                      width: 3,
                    ),
                  ),
                  labelText: 'Parent IC NO',
                  prefixIcon: Icon(
                    Icons.person_pin_sharp,
                    color: Color.fromARGB(221, 4, 61, 108),
                  ),
                ),
              ),
            ),
            Container(
              padding: const EdgeInsets.fromLTRB(10, 50, 10, 10),
              child: TextField(
                obscureText: true,
                controller: nameController,
                decoration: InputDecoration(
                  fillColor: Colors.white,
                  filled: true,
                  enabledBorder: UnderlineInputBorder(
                    borderSide: BorderSide(
                      color: const Color(0xff043E6C),
                      width: 3,
                    ),
                  ),
                  labelText: 'Name',
                  prefixIcon: Icon(
                    Icons.school,
                    color: Color.fromARGB(221, 4, 61, 108),
                  ),
                ),
              ),
            ),
            Container(
              padding: const EdgeInsets.fromLTRB(10, 50, 10, 10),
              child: TextField(
                controller: emailController,
                decoration: InputDecoration(
                  fillColor: Colors.white,
                  filled: true,
                  enabledBorder: UnderlineInputBorder(
                    borderSide: BorderSide(
                      color: const Color(0xff043E6C),
                      width: 3,
                    ),
                  ),
                  labelText: 'Email',
                  prefixIcon: Icon(
                    Icons.email,
                    color: Color.fromARGB(221, 4, 61, 108),
                  ),
                ),
              ),
            ),
            Container(
              padding: const EdgeInsets.fromLTRB(10, 50, 10, 10),
              child: TextField(
                controller: passwordController,
                decoration: InputDecoration(
                  fillColor: Colors.white,
                  filled: true,
                  enabledBorder: UnderlineInputBorder(
                    borderSide: BorderSide(
                      color: const Color(0xff043E6C),
                      width: 3,
                    ),
                  ),
                  labelText: 'Password',
                  prefixIcon: Icon(
                    Icons.visibility,
                    color: Color.fromARGB(221, 4, 61, 108),
                  ),
                ),
              ),
            ),
            Container(
                height: 50,
                margin: const EdgeInsets.only(top: 100.0),
                padding: const EdgeInsets.fromLTRB(30, 0, 30, 0),
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    primary: const Color(0xff043E6C),
                    onPrimary: Colors.white,
                    shadowColor: Colors.black,
                    elevation: 3,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(32.0)),
                    minimumSize: Size(100, 40), //////// HERE
                  ),
                  child: const Text('Register'),
                  onPressed: () {
                    print(nameController.text);
                    print(passwordController.text);
                  },
                )),
          ],
        ));
  }
}
