import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:home_rental_app/detail.dart';
import 'package:home_rental_app/model.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<Model> villaList = [
    Model(
        name: 'Night Hill Villa',
        imageUrl: 'assets/nightvilla.png',
        location: 'London,Night Hill',
        price: 5900,
        rating: 4.9,
        detailUrl: 'assets/nightVilllaDatail.png'
        
        ),
    Model(
        name: 'London,New Park',
        imageUrl: 'assets/nighthill.png',
        location: 'London,Night Hill',
        price: 4900,
        rating: 4.8,
        detailUrl: 'assets/nighthilldetail.jpg'),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color.fromRGBO(237, 237, 237, 1),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.only(left: 20, right: 20),
           child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              const SizedBox(
                height: 40,
              ),
              Row(children: [
                Text(
                  "Hey Dravid,",
                  style: GoogleFonts.poppins(
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                      color: const Color.fromRGBO(101, 101, 101, 1)),
                ),
                const Spacer(),
                Image.asset("assets/profile.png")
              ]),
              const SizedBox(
                height: 10,
              ),
              Text(
                "Let's find your best",
                style: GoogleFonts.poppins(
                    fontSize: 20,
                    fontWeight: FontWeight.w500,
                    color: const Color.fromRGBO(0, 0, 0, 1)),
              ),
              Text(
                "residence",
                style: GoogleFonts.poppins(
                    fontSize: 20,
                    fontWeight: FontWeight.w500,
                    color: const Color.fromRGBO(0, 0, 0, 1)),
              ),
              const SizedBox(
                height: 20,
              ),
              TextFormField(
                decoration: InputDecoration(
                    prefixIcon: const Icon(
                      Icons.search,
                      size: 24,
                      weight: 24,
                    ),
                    filled: true,
                    fillColor: const Color.fromRGBO(255, 255, 255, 1),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30),
                        borderSide: BorderSide.none),
                    hintText: 'Search your favourite paradise',
                    hintStyle: GoogleFonts.poppins(
                        fontSize: 13,
                        fontWeight: FontWeight.w600,
                        color: const Color.fromRGBO(33, 33, 33, 1))),
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                children: [
                  Text(
                    "Most popular",
                    style: GoogleFonts.poppins(
                        fontSize: 22,
                        fontWeight: FontWeight.w500,
                        color: const Color.fromRGBO(0, 0, 0, 1)),
                  ),
                  const Spacer(),
                  GestureDetector(
                    onTap: () {},
                    child: Text(
                      "See All",
                      style: GoogleFonts.poppins(
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                          color: const Color.fromRGBO(32, 169, 247, 1)),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 15,
              ),
              SizedBox(
                height: 306,
                child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: villaList.length,
                    itemBuilder: (context, index) {
                      return GestureDetector(
                        onTap: (){
                          Navigator.of(context).push(MaterialPageRoute(builder: (context){
                           return  Detail(villaList[index]);
                          }));
                        },
                        child: Container(
                          margin: const EdgeInsets.only(right: 18),
                          width: 211,
                          decoration: BoxDecoration(
                              color: const Color.fromRGBO(255, 255, 255, 1),
                              borderRadius: BorderRadius.circular(15)),
                          child: Padding(
                            padding: const EdgeInsets.all(10),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Stack(children: [
                                  Image.asset(villaList[index].imageUrl),
                                  Positioned(
                                      top: 10,
                                      left: 135,
                                      child: Row(children: [
                                        Container(
                                          height: 23,
                                          width: 45,
                                          decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(15),
                                              color: const Color.fromRGBO(
                                                  12, 200, 250, 1)),
                                          child: Row(
                                            children: [
                                              const Icon(
                                                Icons.star,
                                                color:
                                                    Color.fromRGBO(251, 227, 12, 1),
                                                size: 15,
                                                weight: 15,
                                              ),
                                              Text(
                                                "${villaList[index].rating}",
                                                style: GoogleFonts.poppins(
                                                    fontSize: 12,
                                                    fontWeight: FontWeight.w500,
                                                    color: const Color.fromRGBO(
                                                        255, 255, 255, 1)),
                                              ),
                                            ],
                                          ),
                                        )
                                      ]))
                                ]),
                                const SizedBox(
                                  height: 5,
                                ),
                                Text(
                                  villaList[index].name,
                                  textAlign: TextAlign.start,
                                  style: GoogleFonts.poppins(
                                      fontSize: 16,
                                      fontWeight: FontWeight.w600,
                                      color: const Color.fromRGBO(0, 0, 0, 1)),
                                ),
                                const SizedBox(
                                  height: 5,
                                ),
                                Text(
                                  villaList[index].location,
                                  textAlign: TextAlign.start,
                                  style: GoogleFonts.poppins(
                                      fontSize: 12,
                                      fontWeight: FontWeight.w500,
                                      color: const Color.fromRGBO(72, 72, 72, 1)),
                                ),
                                RichText(
                                  text: TextSpan(children: [
                                    TextSpan(
                                        text: "\$${villaList[index].price}",
                                        style: GoogleFonts.poppins(
                                            fontSize: 12,
                                            fontWeight: FontWeight.w500,
                                            color: const Color.fromRGBO(
                                                32, 169, 247, 1))),
                                    TextSpan(
                                        text: '/month',
                                        style: GoogleFonts.poppins(
                                            fontSize: 12,
                                            fontWeight: FontWeight.w500,
                                            color: const Color.fromRGBO(
                                                72, 72, 72, 1)))
                                  ]),
                                ),
                                const SizedBox(
                                  height: 5,
                                ),
                              ],
                            ),
                          ),
                        ),
                      );
                    }),
              ),
              const SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  Text(
                    "Nearby your location",
                    style: GoogleFonts.poppins(
                        fontSize: 22,
                        fontWeight: FontWeight.w600,
                        color: const Color.fromRGBO(0, 0, 0, 1)),
                  ),
                  const Spacer(),
                  GestureDetector(
                    onTap: () {},
                    child: Text(
                      "More",
                      style: GoogleFonts.poppins(
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                          color: const Color.fromRGBO(32, 169, 247, 1)),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  Container(
                    padding: const EdgeInsets.all(8),
                    height: 108,
                    width: 346,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: const Color.fromRGBO(255, 255, 255, 1)),
                    child: Row(
                      children: [
                        Image.asset("assets/golfVilla.png"),
                        const SizedBox(
                          width: 10,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Jumeriah Golf Estates Villa",
                              style: GoogleFonts.poppins(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w600,
                                  color: const Color.fromRGBO(0, 0, 0, 1)),
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            Row(
                              children: [
                                const Icon(Icons.location_on_sharp),
                                const SizedBox(
                                  width: 5,
                                ),
                                Text(
                                  "London,Area Plam Jumeriah",
                                  style: GoogleFonts.poppins(
                                      fontSize: 11,
                                      fontWeight: FontWeight.w600,
                                      color: const Color.fromRGBO(90, 90, 90, 1)),
                                ),
                              ],
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            Row(
                              children: [
                                const Icon(Icons.bed_outlined),
                                const SizedBox(
                                  width: 5,
                                ),
                                Text(
                                  "4 Bedrooms",
                                  style: GoogleFonts.poppins(
                                      fontSize: 9,
                                      fontWeight: FontWeight.w600,
                                      color: const Color.fromRGBO(90, 90, 90, 1)),
                                ),
                                const SizedBox(
                                  width: 10,
                                ),
                                const Icon(Icons.bathtub_rounded),
                                const SizedBox(
                                  width: 5,
                                ),
                                Text(
                                  "5 Bathrooms",
                                  style: GoogleFonts.poppins(
                                      fontSize: 9,
                                      fontWeight: FontWeight.w600,
                                      color: const Color.fromRGBO(90, 90, 90, 1)),
                                )
                              ],
                            )
                          ],
                        ),
                      ],
                    ),
                  )
                ],
              )
            ]),
          ),
        ));
  }
}
