import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:home_rental_app/HomeScreen.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Column(
       
        children: [
          Container(
            height: 631,
            width: double.infinity,
            decoration:const  BoxDecoration(
              image: DecorationImage(image: AssetImage("assets/home.png"),
              fit: BoxFit.cover
              ),
            ), 
          ),
        const SizedBox(
            height: 10,
           ),
          Text("Lets find your Paradise",style: GoogleFonts.poppins(fontSize:22,fontWeight:FontWeight.w600),
          ),
            const SizedBox(
            height: 10,
           ),
           Text("Find your perfect dream space",style: GoogleFonts.poppins(fontSize:15,fontWeight:FontWeight.w400,color:const Color.fromRGBO(101, 101, 101, 1))),
         const SizedBox(
            height: 5,
           ),
           Text("with just a few clicks",style: GoogleFonts.poppins(fontSize:15,fontWeight:FontWeight.w400,color:const Color.fromRGBO(101, 101, 101, 1))),
          const SizedBox(
            height: 10,
           ),
           ElevatedButton(
         
           style:const ButtonStyle(backgroundColor: MaterialStatePropertyAll(Color.fromRGBO(32, 169, 247, 1)),minimumSize: MaterialStatePropertyAll(Size(220,55 ))),
            onPressed: (){
            
            Navigator.of(context).push(MaterialPageRoute(builder: (context){
                 return const  HomeScreen();
            }));

            }, child: Text("Get Started",style: GoogleFonts.poppins(fontSize:22,fontWeight:FontWeight.w400,color:const Color.fromRGBO(255, 255, 255, 1)),))
        ],
      ),
    );
  }
}