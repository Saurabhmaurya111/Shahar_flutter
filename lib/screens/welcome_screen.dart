import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:shahar/screens/home_screen.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('images/bg.jpg'),
            fit: BoxFit.cover,
            opacity: 0.9,
          ),
        ),
        child: Material(
          color: Colors.transparent,
          child: SafeArea(
            child: Padding(
              padding:  const EdgeInsets.symmetric(vertical: 65, horizontal: 25),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                 const   Text(
                    'Enjoy',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 35,
                        fontWeight: FontWeight.bold,
                        letterSpacing: 1.5),
                  ),
                  const SizedBox(
                    height: 2,
                  ),
                  Text(
                    'the World!',
                    style: TextStyle(
                      color: Colors.white.withOpacity(0.7),
                      fontSize: 35,
                      fontWeight: FontWeight.w400,
                      letterSpacing: 1.5,
                    ),
                  ),
                  const SizedBox(
                    height: 12,
                  ),
                  Text(
                    "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s.",
                    style: TextStyle(
                        color: Colors.white.withOpacity(0.7),
                        fontSize: 16,
                        letterSpacing: 1.2),
                  ),
                  const SizedBox(height: 30,),
                  InkWell(
                    onTap: (){
                      Navigator.push(context , MaterialPageRoute(builder: (context) =>HomePage()) );
                    },
                    child: Ink(
                     padding:  const  EdgeInsets.all(15),
                      decoration: BoxDecoration(
                        color: Colors.white, 
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child:  const Icon(Icons.arrow_forward_ios , 
                      color: Colors.black54,
                      size: 20,
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
