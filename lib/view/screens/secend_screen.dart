import 'package:flutter/material.dart';
import 'package:parcel_fly_ui/view/screens/log_in_screen.dart';

class SecendScreen extends StatelessWidget {
  const SecendScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Center(
        child: Padding(
          padding: const EdgeInsets.only(top: 100),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset("assets/vector/PngItem.png"),
              const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CircleAvatar(
                    radius: 10,
                    backgroundColor: Colors.red,
                  ),
                  SizedBox(
                    width: 8,
                  ),
                  CircleAvatar(
                    radius: 10,
                  ),
                  SizedBox(
                    width: 8,
                  ),
                  CircleAvatar(
                    radius: 10,
                  ),
                ],
              ),
              const Text(
                "Get started on \nOrdering your Food",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
                textAlign: TextAlign.center,
              ),
              const SizedBox(
                height: 20,
              ),
              const Text(
                "Please create an account or sign in to your \nexisting account to start parcel delivery.",
                textAlign: TextAlign.center,
              ),
              const SizedBox(
                height: 80,
              ),
              Row(
                children: [
                  Container(
                    margin: const EdgeInsets.only(
                      left: 10
                    ),
                    height: 60,
                    width: 210,
                    decoration: BoxDecoration(
                        color: const Color(0xfffde7ec),
                        borderRadius: BorderRadius.circular(15)),
                    child: const Center(
                      child: Text(
                        "Skip",
                        style: TextStyle(color: Color(0xffEF232F)),
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Container(
                    height: 60,
                    width: 210,
                    decoration: BoxDecoration(
                        color: const Color(0xffEF232F),
                        borderRadius: BorderRadius.circular(15)),
                    child: Center(
                      child: InkWell(
                        onTap: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>const LogInScreen()));
                        },
                        child: const Text(
                          "Continue",
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
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
