import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:intl_phone_number_input/intl_phone_number_input.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({super.key});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  @override
  Widget build(BuildContext context) {
    bool value = false;
    return Scaffold(
      resizeToAvoidBottomInset: true,
      body: SingleChildScrollView(
        child: Container(
          child: Padding(
            padding: const EdgeInsets.fromLTRB(35, 50, 35, 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Image.asset(
                      'assets/image/logo2.png',
                      scale: 10.0,
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    const Text(
                      'Create Account',
                      style: TextStyle(
                          fontSize: 30,
                          fontFamily: 'LatoBold',
                          fontWeight: FontWeight.w600,
                          color: Color.fromRGBO(67, 67, 67, 1)),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    const Text(
                      'Connect with your friend today',
                      style: TextStyle(
                          fontSize: 15,
                          fontFamily: 'Lato',
                          color: Color.fromARGB(255, 139, 139, 139)),
                    ),
                    const SizedBox(
                      height: 50,
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
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
                        SizedBox(
                          height: 55,
                          child: TextField(
                            decoration: InputDecoration(
                              hintText: 'Enter your Email',
                              hintStyle: TextStyle(color: Colors.grey),
                              enabledBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                      color: Colors.grey, width: 1.5)),
                            ),
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
                        SizedBox(
                          height: 55,
                          child: TextField(
                            obscureText: true,
                            decoration: InputDecoration(
                              suffixIcon: Icon(Icons.remove_red_eye),
                              hintText: 'Your Password',
                              hintStyle: TextStyle(color: Colors.grey),
                              enabledBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                      color: Colors.grey, width: 1.5)),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Text(
                          'Phone Number',
                          style: TextStyle(
                              color: Color.fromRGBO(67, 67, 67, 1),
                              fontSize: 14,
                              fontFamily: 'LatoBold',
                              fontWeight: FontWeight.w700),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        InternationalPhoneNumberInput(
                          onInputChanged: (value) {},
                          selectorConfig: SelectorConfig(
                            selectorType: PhoneInputSelectorType.DIALOG,
                          ),
                        ),
                        SizedBox(
                          height: 15,
                        ),
                        SizedBox(
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
                              'Sign Up',
                              style: TextStyle(
                                  fontSize: 16,
                                  fontFamily: 'LatoBold',
                                  fontWeight: FontWeight.w800,
                                  color: Color.fromARGB(255, 255, 255, 255)),
                            ),
                            onPressed: () {},
                          ),
                        ),
                        const SizedBox(
                          height: 30,
                        ),
                        Center(
                          child: Text("or Sign up with"),
                        ),
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
                      ],
                    ),
                    const SizedBox(
                      height: 85,
                    ),
                  ],
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const Text(
                      "Already Registered?",
                      style: TextStyle(
                          fontSize: 15,
                          fontFamily: 'LatoReguler',
                          fontWeight: FontWeight.w500,
                          color: Color.fromARGB(255, 0, 0, 0)),
                    ),
                    TextButton(
                        child: const Text(
                          "Login Here",
                          style: TextStyle(
                              fontSize: 15,
                              fontFamily: 'LatoReguler',
                              fontWeight: FontWeight.w600,
                              color: Color.fromRGBO(141, 114, 255, 1)),
                        ),
                        onPressed: () {
                          Navigator.pop(context);
                        })
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
