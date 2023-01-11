// ignore_for_file: avoid_unnecessary_containers, sized_box_for_whitespace

import 'package:farmers_network_screens/widgets/CustomAppBar_details.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

class CommentSection extends StatefulWidget {
  const CommentSection({Key? key}) : super(key: key);

  @override
  State<CommentSection> createState() => _CommentSectionState();
}

class _CommentSectionState extends State<CommentSection> {
  TextEditingController commets = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppbar_Details(
        backgroundColor: HexColor("#165a18"),
        title: 'Communities',
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                height: 80,
                width: MediaQuery.of(context).size.width,
                child: Row(
                  children: [
                    SizedBox(
                      height: 100,
                      width: 100,
                      child: Image.asset("assets/images/farmer.jpeg"),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 10.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Farmers Network",
                            style: TextStyle(
                                color: HexColor("#508234"),
                                fontWeight: FontWeight.w700),
                          ),
                          const SizedBox(
                            height: 5,
                          ),
                          const Text(
                            "Business Management, Productivity & Networking \nfarmers 2",
                            style: TextStyle(fontSize: 10),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
            Container(
              height: 90,
              width: MediaQuery.of(context).size.width,
              // color: Colors.greenAccent,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 8.0, left: 20),
                    child: Text(
                        "Lore et dolore magna aliqua. Ut enim ad minim veniam, \nquis nostrud exercitation ullamco laboris nisi ut aliquip \nex ea commodo consequat. Duis aute irure dol",
                        style: TextStyle(
                            fontSize: 12, color: HexColor("#508234"))),
                  ),
                  Align(
                    alignment: Alignment.bottomRight,
                    child: Text(
                      "...See More",
                      style: TextStyle(
                        fontSize: 12,
                        color: HexColor("#508234"),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 8, left: 100),
              child: Container(
                height: 150,
                width: 150,
                // color: Colors.grey[700],
                child: Image.asset(
                  "assets/newImg/porridge.png",
                  fit: BoxFit.contain,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20.0, right: 5),
              child: Row(
                children: [
                  Icon(
                    Icons.thumb_up_alt,
                    color: HexColor("#558335"),
                  ),
                  const SizedBox(
                    width: 8,
                  ),
                  Text(
                    "Mr Jembe and 35 others",
                    style: TextStyle(
                      color: HexColor("#558335"),
                    ),
                  ),
                  const SizedBox(
                    width: 70,
                  ),
                  Text("9 comments",
                      style: TextStyle(
                        color: HexColor("#558335"),
                      )),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 25.0, left: 20, right: 15),
              child: Row(
                children: [
                  SizedBox(
                    height: 25,
                    width: 25,
                    child: Image.asset("assets/images/farmer.jpeg"),
                  ),
                  Icon(
                    Icons.arrow_drop_down_sharp,
                    size: 35,
                    color: HexColor("#558335"),
                  ),
                  const SizedBox(
                    width: 15,
                  ),
                  Icon(
                    Icons.thumb_up,
                    color: HexColor("#558335"),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Text(
                    "Like",
                    style: TextStyle(
                      color: HexColor("#558335"),
                    ),
                  ),
                  const SizedBox(
                    width: 90,
                  ),
                  Icon(
                    Icons.message_sharp,
                    color: HexColor("#558335"),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Text(
                    "Comment",
                    style: TextStyle(
                      color: HexColor("#558335"),
                    ),
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 25.0, left: 20, right: 15),
              child: Row(
                children: [
                  SizedBox(
                    height: 25,
                    width: 25,
                    child: Image.asset("assets/images/farmer.jpeg"),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Container(
                    padding: EdgeInsets.all(2),
                    height: 35,
                    width: 250,
                    decoration: BoxDecoration(
                        border: Border.all(
                          width: 0.5,
                          color: HexColor("#2d2d2d"),
                        ),
                        borderRadius: BorderRadius.circular(3)),
                    child: Text(
                      "edfetg tsgshhrfx aefthrjsrt tsghrujht6y yjfx",
                      style: TextStyle(
                        color: HexColor("#558335"),
                      ),
                    ),
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 8.0, left: 20),
              child: Text(
                "More relevants",
                style: TextStyle(
                    color: HexColor("#558335"), fontWeight: FontWeight.w900),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 25.0, left: 20, right: 15),
              child: Row(
                children: [
                  SizedBox(
                    height: 25,
                    width: 25,
                    child: Image.asset("assets/images/farmer.jpeg"),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Container(
                    padding: EdgeInsets.all(5),
                    height: 60,
                    width: 250,
                    decoration: BoxDecoration(
                        border: Border.all(
                          width: 0.5,
                          color: HexColor("#2d2d2d"),
                        ),
                        borderRadius: BorderRadius.circular(3)),
                    child: Text(
                      "edfetg tsgshhrfx aefthrjsrt tsghrujht6y yjfx",
                      style: TextStyle(
                        color: HexColor("#558335"),
                      ),
                    ),
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 8.0, left: 20),
              child: Text(
                "More relevants",
                style: TextStyle(
                    color: HexColor("#558335"), fontWeight: FontWeight.w900),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
