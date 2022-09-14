import 'package:doctors_project/screens/doctor_list.dart';
import 'package:doctors_project/screens/regestier.dart';
import 'package:flutter/material.dart';

class MyLogin extends StatefulWidget {

  @override
  _MyLoginState createState() => _MyLoginState();
}

class _MyLoginState extends State<MyLogin> {
  final formKey = GlobalKey<FormState>();
  final name = TextEditingController();
  final pass = TextEditingController();
  bool bol = false;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        image: DecorationImage(
            image: AssetImage('assets/images/login.png'), fit: BoxFit.cover),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: Form(
          key: formKey,
          child: Stack(children: [
            Container(
                padding: const EdgeInsets.only(left: 35, top: 80),
                child: const Text(
                  "Welcome\nBack",
                  style: TextStyle(color: Colors.white, fontSize: 33),
                ),
              ),
            SingleChildScrollView(
              child: Container(
                padding: EdgeInsets.only(
                    right: 35,
                    left: 35,
                    top: MediaQuery.of(context).size.height * 0.5),
                child: Column(children: [
                  TextFormField(
                    controller: name,
                    keyboardType: TextInputType.text,
                    decoration: InputDecoration(
                      fillColor: Colors.grey.shade100,
                      filled: true,
                      hintText: 'Email',
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                    validator: (String? value){
                      if(value!.isEmpty){
                        return "Please Enter your Email";
                      }
                    },
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  TextFormField(
                    controller: pass,
                    obscureText: true,
                    decoration: InputDecoration(
                      fillColor: Colors.grey.shade100,
                      filled: true,
                      hintText: 'Password',
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                    validator: (String? value){
                      if(value!.length < 8){
                        return "Password must be more than 8 ";
                      }
                    },
                  ),
                  const SizedBox(
                    height: 40,
                  ),
                  Row(
                    children: [
                      Checkbox(
                        value: this.bol,
                        onChanged: (bool? value) {
                          setState(() {
                            this.bol = value!;
                          });
                        },
                      ),
                      Text("I Accept the Terms of Use & Privacy Policy",
                        style: TextStyle(
                            color: Colors.black87,
                            fontSize: 12,
                            fontWeight: FontWeight.bold
                        ),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text(
                        'Sign In',
                        style: TextStyle(
                          color: Color(0xff4c505b),
                          fontSize: 27,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                      ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            onSurface: Colors.grey
                          ),
                          onPressed: bol? () {
                            if(formKey.currentState!.validate()){
                              Navigator.push(context, MaterialPageRoute(builder: (context)=>doctor()));
                            }
                            else {
                              return null;
                            }
                          } : null,
                          child: Icon(Icons.arrow_forward),
                        ),

                    ],
                  ),
                  const SizedBox(
                    height: 40,
                  ),
                  Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        TextButton(
                          onPressed: () {
                            Navigator.push(context, MaterialPageRoute(builder: (context)=> MyRegister()));
                          },
                          child: const Text(
                            'Sign Up',
                            style: TextStyle(
                              decoration: TextDecoration.underline,
                              fontSize: 18,
                              color: Color(0xff4c505b),
                            ),
                          ),
                        ),
                        TextButton(
                          onPressed: () {},
                          child: const Text(
                            'Forgot Password',
                            style: TextStyle(
                              decoration: TextDecoration.underline,
                              fontSize: 18,
                              color: Color(0xff4c505b),
                            ),
                          ),
                        ),
                      ]),
                ]),
              ),
            ),
          ]),
        ),
      ),
    );
  }
}
