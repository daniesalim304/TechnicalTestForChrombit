import 'package:chrombittest/homepage.dart';
import 'package:chrombittest/register.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Chrombit Test',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Chrombit Test'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      body: Container(
          child: SingleChildScrollView(
        child: Padding(
            padding: const EdgeInsets.fromLTRB(35, 50, 35, 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Center(
                  child: Image.asset(
                    'assets/image/logo2.png',
                    scale: 3.0,
                  ),
                ),
                const SizedBox(
                  height: 45,
                ),
                const Text(
                  'Sign In',
                  style: TextStyle(
                      fontSize: 30,
                      fontFamily: 'LatoBold',
                      fontWeight: FontWeight.w800,
                      color: Color.fromRGBO(67, 67, 67, 1)),
                ),
                const SizedBox(
                  height: 60,
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    Text(
                      'E-mail',
                      style: TextStyle(
                          color: Color.fromRGBO(67, 67, 67, 1),
                          fontSize: 14,
                          fontFamily: 'LatoBold',
                          fontWeight: FontWeight.w700),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    TextField(
                      decoration: InputDecoration(
                        suffixIcon: Icon(Icons.person),
                        hintText: 'youremail@mail.com',
                        hintStyle: TextStyle(color: Colors.grey),
                        border: OutlineInputBorder(),
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Text(
                      'Password',
                      style: TextStyle(
                          color: Color.fromRGBO(67, 67, 67, 1),
                          fontSize: 14,
                          fontFamily: 'LatoBold',
                          fontWeight: FontWeight.w700),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    TextField(
                      obscureText: true,
                      decoration: InputDecoration(
                        suffixIcon: Icon(Icons.password_outlined),
                        hintText: 'Your Password',
                        hintStyle: TextStyle(color: Colors.grey),
                        border: OutlineInputBorder(),
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 30,
                ),
                Container(
                  width: double.infinity,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    gradient: LinearGradient(
                      colors: [
                        Color.fromRGBO(108, 74, 182, 1),
                        Color.fromRGBO(141, 114, 255, 1)
                      ],
                      begin: FractionalOffset.centerLeft,
                      end: FractionalOffset.centerRight,
                    ),
                  ),
                  child: TextButton(
                    child: const Text(
                      'Login',
                      style: TextStyle(
                          fontSize: 16,
                          fontFamily: 'LatoBold',
                          fontWeight: FontWeight.w800,
                          color: Color.fromARGB(255, 255, 255, 255)),
                    ),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const Homepage()),
                      );
                    },
                  ),
                ),
                const SizedBox(
                  height: 30,
                ),
                const Text("or Login with"),
                const SizedBox(
                  height: 30,
                ),
                Row(
                  children: [
                    Expanded(
                        child: OutlinedButton.icon(
                      style: OutlinedButton.styleFrom(
                        minimumSize: const Size.fromHeight(45),
                      ),
                      label: const Text(
                        'Facebook',
                        style: TextStyle(
                            fontSize: 16,
                            fontFamily: 'LatoBold',
                            fontWeight: FontWeight.w800,
                            color: Color.fromARGB(255, 0, 0, 0)),
                      ),
                      icon: Image.asset(
                        'assets/icons/facebook.png',
                        width: 20,
                      ),
                      onPressed: () {},
                    )),
                    const SizedBox(
                      width: 10,
                    ),
                    Expanded(
                        child: OutlinedButton.icon(
                      style: OutlinedButton.styleFrom(
                        minimumSize: const Size.fromHeight(45),
                      ),
                      label: const Text(
                        'Google',
                        style: TextStyle(
                            fontSize: 16,
                            fontFamily: 'LatoBold',
                            fontWeight: FontWeight.w800,
                            color: Color.fromARGB(255, 0, 0, 0)),
                      ),
                      icon: Image.asset(
                        'assets/icons/google.png',
                        width: 20,
                      ),
                      onPressed: () {},
                    )),
                  ],
                ),
                const SizedBox(
                  height: 120,
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const Text(
                      "Don't have account yet?",
                      style: TextStyle(
                          fontSize: 15,
                          fontFamily: 'LatoReguler',
                          fontWeight: FontWeight.w500,
                          color: Color.fromARGB(255, 0, 0, 0)),
                    ),
                    TextButton(
                        child: const Text(
                          "Register Here",
                          style: TextStyle(
                              fontSize: 15,
                              fontFamily: 'LatoReguler',
                              fontWeight: FontWeight.w600,
                              color: Color.fromRGBO(141, 114, 255, 1)),
                        ),
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const RegisterPage()),
                          );
                        })
                  ],
                )
              ],
            )),
      )),
    );
  }
}
