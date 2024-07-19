import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:home_rental_app/model.dart';

class Detail extends StatefulWidget {
  final Model villa;
  const Detail(this.villa, {super.key});

  @override
  State<Detail> createState() => _DetailState();
}

class _DetailState extends State<Detail> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(237, 237, 237, 1),
      body:SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(left: 25, right: 15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                height: 50,
              ),
              Row(
                children: [
                  IconButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    icon: const Icon(Icons.arrow_back_ios_outlined,
                        color: Color.fromRGBO(0, 0, 0, 1)),
                  ),
                  const SizedBox(
                    width: 90,
                  ),
                  Text("Details",
                      style: GoogleFonts.poppins(
                          fontWeight: FontWeight.w500,
                          fontSize: 20,
                          color: const Color.fromRGBO(0, 0, 0, 1))),
                ],
              ),
              const SizedBox(
                height: 15,
              ),
              Stack(
                children: [
                  Image.asset(widget.villa.detailUrl),
                  Positioned(
                      top: 15,
                      left: 10,
                      child: Container(
                        height: 23,
                        width: 45,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            color: const Color.fromRGBO(12, 200, 250, 1)),
                        child: Row(
                          children: [
                            const Icon(
                              Icons.star,
                              color: Color.fromRGBO(251, 227, 12, 1),
                              size: 15,
                              weight: 15,
                            ),
                            Text(
                              "${widget.villa.rating}",
                              style: GoogleFonts.poppins(
                                  fontSize: 12,
                                  fontWeight: FontWeight.w500,
                                  color: const Color.fromRGBO(255, 255, 255, 1)),
                            ),
                          ],
                        ),
                      ))
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              Row(children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      widget.villa.name,
                      style: GoogleFonts.poppins(
                          fontSize: 22,
                          fontWeight: FontWeight.w600,
                          color: const Color.fromRGBO(0, 0, 0, 1)),
                    ),
                    Text(
                      widget.villa.location,
                      style: GoogleFonts.poppins(
                          fontSize: 12,
                          fontWeight: FontWeight.w500,
                          color: const Color.fromRGBO(72, 72, 72, 1)),
                    ),
                  ],
                ),
                const SizedBox(
                  width: 40,
                ),
                Column(
                  children: [
                    RichText(
                      text: TextSpan(children: [
                        TextSpan(
                          text: '\$${widget.villa.price}',
                          style: GoogleFonts.poppins(
                            fontSize: 16,
                            fontWeight: FontWeight.w600,
                            color: const Color.fromRGBO(32, 169, 247, 1),
                          ),
                        ),
                        TextSpan(
                            text: '/month',
                            style: GoogleFonts.poppins(
                                fontSize: 16,
                                fontWeight: FontWeight.w500,
                                color: const Color.fromRGBO(72, 72, 72, 1)))
                      ]),
                    ),
                  ],
                )
              ]),
              const SizedBox(
                height: 20,
              ),
              Row(
                children: [
                  Column(
                    children: [
                      Container(
                        padding: const EdgeInsets.only(left: 10, top: 20),
                        height: 141,
                        width: 112,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            color: const Color.fromRGBO(255, 255, 255, 1)),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Icon(Icons.bed_outlined),
                            const SizedBox(
                              height: 10,
                            ),
                            Text(
                              "Bedrooms",
                              style: GoogleFonts.poppins(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w600,
                                  color: const Color.fromRGBO(90, 90, 90, 1)),
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            Text(
                              "5",
                              style: GoogleFonts.poppins(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w600,
                                  color: const Color.fromRGBO(0, 0, 0, 1)),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Column(
                    children: [
                      Container(
                        padding: const EdgeInsets.only(left: 10, top: 20),
                        height: 141,
                        width: 112,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            color: const Color.fromRGBO(255, 255, 255, 1)),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Icon(Icons.bathtub),
                            const SizedBox(
                              height: 10,
                            ),
                            Text(
                              "Bathrooms",
                              style: GoogleFonts.poppins(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w600,
                                  color: const Color.fromRGBO(90, 90, 90, 1)),
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            Text(
                              "6",
                              style: GoogleFonts.poppins(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w600,
                                  color: const Color.fromRGBO(0, 0, 0, 1)),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                  const SizedBox(
                    width: 15,
                  ),
                  Column(
                    children: [
                      Container(
                        padding: const EdgeInsets.only(left: 10, top: 20),
                        height: 141,
                        width: 112,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            color: const Color.fromRGBO(255, 255, 255, 1)),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Icon(Icons.fullscreen),
                            const SizedBox(
                              height: 10,
                            ),
                            Text(
                              "Square ft",
                              style: GoogleFonts.poppins(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w600,
                                  color: const Color.fromRGBO(90, 90, 90, 1)),
                            ),
                            const SizedBox(
                              height: 15,
                            ),
                            Text(
                              "7,000 sq ft",
                              style: GoogleFonts.poppins(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w600,
                                  color: const Color.fromRGBO(0, 0, 0, 1)),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              const SizedBox(
                height: 15,
              ),
              
                    Text(
                      "Amet minim mollit non deserunt ullamco est sit aliqua dolor do amet sint. Velit officia consequat duis enim velit mollit. Exercitation veniam consequat sunt nostrud amet. Amet minim mollit non deserunt ullamco est sit aliqua dolor do amet sint. Velit officia consequat duis enim velit mollit. Exercitation veniam consequat sunt nostrud amet this i sdnofkndjs fsjogvbrj nvnsjov ",
                      style: GoogleFonts.poppins(
                          fontSize: 15,
                          fontWeight: FontWeight.w400,
                          color: const Color.fromRGBO(0, 0, 0, 1)),
                    ),
                  ],
                ),
              ),
      ),
            
    
          

  bottomSheet:
    Padding(
      padding: const EdgeInsets.all(8.0),
      child: ElevatedButton(
                style: const ButtonStyle(
                    backgroundColor:
                        MaterialStatePropertyAll(Color.fromRGBO(32, 169, 247, 1)),
                    minimumSize: MaterialStatePropertyAll(Size(220, 55))),
      
                onPressed: () {},
                child:  Text(
                  "Rent Now",
                    style: GoogleFonts.poppins(
                        fontSize: 22,
                        fontWeight: FontWeight.w400,
                        color: const Color.fromRGBO(255, 255, 255, 1)),
                  ),),
    ),
  
   
    );
  
  }
}
