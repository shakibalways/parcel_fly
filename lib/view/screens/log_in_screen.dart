import 'package:flutter/material.dart';
import 'package:parcel_fly_ui/view/screens/dasboard_page.dart';

class LogInScreen extends StatefulWidget {
  const LogInScreen({super.key});

  @override
  State<LogInScreen> createState() => _LogInScreenState();
}

class _LogInScreenState extends State<LogInScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.only(top: 150),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Column(
                children: [
                  Image.asset("assets/vector/fast.png"),
                  const SizedBox(height: 10,),
                  Image.asset("assets/vector/parcelfly.png"),
                  const SizedBox(height: 10,),
                  Image.asset("assets/vector/blackvector.png"),
                  const Text("Login to your account & start delivering."),
                  const SizedBox(
                    height: 15,
                  ),
                  const SizedBox(
                    width: 420,
                    height: 60,
                    child: TextField(
                      decoration: InputDecoration(
                          hintText: "Enter Your Email",
                          hintStyle: TextStyle(color: Color(0xffAAAEBE)),
                          focusColor: Colors.orange,
                          border: OutlineInputBorder()),
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  const SizedBox(
                    width: 420,
                    height: 60,
                    child: TextField(
                      decoration: InputDecoration(
                          hintText: "Enter Your Password",
                          hintStyle: TextStyle(color: Color(0xffAAAEBE)),
                          suffixIcon: Icon(Icons.remove_red_eye_outlined),
                          focusColor: Colors.orange,
                          border: OutlineInputBorder()),
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  const Text(
                    "Forgot Password?",
                    style: TextStyle(color: Color(0xffEF232F)),
                  ),
                ],
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.phone,
                        color: Color(0xffEF232F),
                      ),
                      Text(
                        'Login with phone number',
                        style: TextStyle(color: Color(0xffEF232F)),
                      )
                    ],
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  InkWell(
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>const DasboardPage()));
                    },
                    child: Container(
                      height: 60,
                      width: 420,
                      decoration: BoxDecoration(
                        color: const Color(0xffEF232F),
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: const Center(child: Text("Login")),
                    ),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
