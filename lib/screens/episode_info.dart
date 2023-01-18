import 'package:bitirme_projesi/utils/colors_utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../widgets/rounded_check_box.dart';

import 'package:bitirme_projesi/utils/colors_utils.dart';
import 'package:flutter/material.dart';

class EpisodeInfo extends StatelessWidget {
  final String seriesImage;
  final String seriesTitle;
  final String seriesGenre;

  const EpisodeInfo({
    super.key,
    required this.seriesImage,
    required this.seriesTitle,
    required this.seriesGenre,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.primaryBlue,
      body: SafeArea(
        child: Stack(
          children: [
            Opacity(
              opacity: 0.4,
              child: Image.asset(
                seriesImage,
                height: 280,
                width: double.infinity,
                fit: BoxFit.cover,
              ),
            ),
            SingleChildScrollView(
              child: SafeArea(
                child: Column(
                  children: [
                    Padding(
                      padding: EdgeInsets.symmetric(
                        vertical: 10,
                        horizontal: 25,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          InkWell(
                            onTap: () {
                              Navigator.pop(context);
                            },
                            child: Icon(
                              Icons.arrow_back,
                              color: Colors.white70,
                              size: 30,
                            ),
                          ),
                          InkWell(
                            onTap: () {},
                            child: Icon(
                              Icons.favorite_border,
                              color: Colors.white70,
                              size: 35,
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 60),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              boxShadow: [
                                BoxShadow(
                                  color: AppColors.fourthBlue.withOpacity(0.5),
                                  spreadRadius: 1,
                                  blurRadius: 8,
                                ),
                              ],
                            ),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(20),
                              child: Image.asset(
                                seriesImage,
                                height: 250,
                                width: 180,
                                fit: BoxFit.fill,
                              ),
                            ),
                          ),
                          Column(
                            children: [
                              Text(
                                seriesTitle,
                                style: const TextStyle(
                                  color: Colors.white,
                                  fontSize: 30,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                              Text(
                                seriesGenre,
                                style: const TextStyle(
                                  color: Colors.white,
                                  fontSize: 20,
                                  fontWeight: FontWeight.w500,
                                ),
                              )
                            ],
                          ),
                        ],
                      ),
                    ),
                    Test(),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class Test extends StatefulWidget {
  const Test({super.key});

  @override
  State<Test> createState() => _TestState();
}

class _TestState extends State<Test> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        children: [
          Expanded(
            flex: 2,
            child: Container(
              height: 600,
              decoration: BoxDecoration(
                color: AppColors.primaryBlue,
                borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(20.0),
                  topRight: Radius.circular(20.0),
                  bottomLeft: Radius.circular(20.0),
                  bottomRight: Radius.circular(20.0),
                ),
                border: Border.all(
                  color: AppColors.white,
                ),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const SizedBox(height: 10.0),
                  Text(
                    "Seasons",
                    style: TextStyle(fontSize: 20.0, color: Colors.white),
                  ),
                  const SizedBox(height: 10.0),
                  Container(
                    width: 50.0,
                    height: 50.0,
                    decoration: BoxDecoration(
                        shape: BoxShape.circle, color: AppColors.fourthBlue),
                    child: InkWell(
                      onTap: () {
                        print("Button tapped");
                      },
                      child: Center(
                        child: Text(
                          "1",
                          style: TextStyle(fontSize: 20.0, color: Colors.white),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 10.0),
                  Container(
                    width: 50.0,
                    height: 50.0,
                    decoration: BoxDecoration(
                        shape: BoxShape.circle, color: AppColors.fourthBlue),
                    child: InkWell(
                      onTap: () {
                        print("Button tapped");
                      },
                      child: Center(
                        child: Text(
                          "2",
                          style: TextStyle(fontSize: 20.0, color: Colors.white),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 10.0),
                  Container(
                    width: 50.0,
                    height: 50.0,
                    decoration: BoxDecoration(
                        shape: BoxShape.circle, color: AppColors.fourthBlue),
                    child: InkWell(
                      onTap: () {
                        print("Button tapped");
                      },
                      child: Center(
                        child: Text(
                          "3",
                          style: TextStyle(fontSize: 20.0, color: Colors.white),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 10.0),
                  Container(
                    width: 50.0,
                    height: 50.0,
                    decoration: BoxDecoration(
                        shape: BoxShape.circle, color: AppColors.fourthBlue),
                    child: InkWell(
                      onTap: () {
                        print("Button tapped");
                      },
                      child: Center(
                        child: Text(
                          "4",
                          style: TextStyle(fontSize: 20.0, color: Colors.white),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 10.0),
                  Container(
                    width: 50.0,
                    height: 50.0,
                    decoration: BoxDecoration(
                        shape: BoxShape.circle, color: AppColors.fourthBlue),
                    child: InkWell(
                      onTap: () {
                        print("Button tapped");
                      },
                      child: Center(
                        child: Text(
                          "5",
                          style: TextStyle(fontSize: 20.0, color: Colors.white),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 10.0),
                ],
              ),
            ),
          ),
          SizedBox(
            width: 10.0,
          ),
          Expanded(
            flex: 8,
            child: Container(
              decoration: BoxDecoration(
                color: AppColors.primaryBlue,
                borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(20.0),
                  topRight: Radius.circular(20.0),
                  bottomLeft: Radius.circular(20.0),
                  bottomRight: Radius.circular(20.0),
                ),
                border: Border.all(
                  color: AppColors.white,
                ),
              ),
              padding: const EdgeInsets.all(20.0),
              margin: const EdgeInsets.only(top: 20.0),
              child: Column(
                children: [
                  Text(
                    "Episodes",
                    style: TextStyle(fontSize: 20.0, color: Colors.white),
                  ),
                  SizedBox(
                    height: 5.0,
                  ),
                  Divider(
                    color: Colors.white54,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        '1',
                        style: TextStyle(fontSize: 20.0, color: Colors.white),
                      ),
                      Text(
                        "Pilot",
                        style: TextStyle(fontSize: 20.0, color: Colors.white),
                      ),
                      RoundCheckbox(),
                    ],
                  ),
                  Divider(
                    color: Colors.white54,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        '2',
                        style: TextStyle(fontSize: 20.0, color: Colors.white),
                      ),
                      Text(
                        "Cat's in the Bag...",
                        style: TextStyle(fontSize: 20.0, color: Colors.white),
                      ),
                      RoundCheckbox(),
                    ],
                  ),
                  Divider(
                    color: Colors.white54,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        '3',
                        style: TextStyle(fontSize: 20.0, color: Colors.white),
                      ),
                      Text(
                        "...And the Bag's in the River",
                        style: TextStyle(fontSize: 20.0, color: Colors.white),
                      ),
                      RoundCheckbox(),
                    ],
                  ),
                  Divider(
                    color: Colors.white54,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        '4',
                        style: TextStyle(fontSize: 20.0, color: Colors.white),
                      ),
                      Text(
                        "Crazy Handful of Nothin'",
                        style: TextStyle(fontSize: 20.0, color: Colors.white),
                      ),
                      RoundCheckbox(),
                    ],
                  ),
                  Divider(
                    color: Colors.white54,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        '5',
                        style: TextStyle(fontSize: 20.0, color: Colors.white),
                      ),
                      Text(
                        "A No-Rough-Stuff-Type Deal",
                        style: TextStyle(fontSize: 20.0, color: Colors.white),
                      ),
                      RoundCheckbox(),
                    ],
                  ),
                  Divider(
                    color: Colors.white54,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        '6',
                        style: TextStyle(fontSize: 20.0, color: Colors.white),
                      ),
                      Text(
                        "Seven Thirty-Seven",
                        style: TextStyle(fontSize: 20.0, color: Colors.white),
                      ),
                      RoundCheckbox(),
                    ],
                  ),
                  Divider(
                    color: Colors.white54,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        '7',
                        style: TextStyle(fontSize: 20.0, color: Colors.white),
                      ),
                      Text(
                        "Grilled",
                        style: TextStyle(fontSize: 20.0, color: Colors.white),
                      ),
                      RoundCheckbox(),
                    ],
                  ),
                  Divider(
                    color: Colors.white54,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        '8',
                        style: TextStyle(fontSize: 20.0, color: Colors.white),
                      ),
                      Text(
                        "The Good, the Bad, and the Ugly",
                        style: TextStyle(fontSize: 20.0, color: Colors.white),
                      ),
                      RoundCheckbox(),
                    ],
                  ),
                  Divider(
                    color: Colors.white54,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        '9',
                        style: TextStyle(fontSize: 20.0, color: Colors.white),
                      ),
                      Text(
                        "I Ain't Superstitious",
                        style: TextStyle(fontSize: 20.0, color: Colors.white),
                      ),
                      RoundCheckbox(),
                    ],
                  ),
                  Divider(
                    color: Colors.white54,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        '10',
                        style: TextStyle(fontSize: 20.0, color: Colors.white),
                      ),
                      Text(
                        "Baby, You Know What I Mean",
                        style: TextStyle(fontSize: 20.0, color: Colors.white),
                      ),
                      RoundCheckbox(),
                    ],
                  ),
                  Divider(
                    color: Colors.white54,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        '11',
                        style: TextStyle(fontSize: 20.0, color: Colors.white),
                      ),
                      Text(
                        "The Unblinking Vigil",
                        style: TextStyle(fontSize: 20.0, color: Colors.white),
                      ),
                      RoundCheckbox(),
                    ],
                  ),
                  Divider(
                    color: Colors.white54,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        '12',
                        style: TextStyle(fontSize: 20.0, color: Colors.white),
                      ),
                      Text(
                        "The Trial",
                        style: TextStyle(fontSize: 20.0, color: Colors.white),
                      ),
                      RoundCheckbox(),
                    ],
                  ),
                  Divider(
                    color: Colors.white54,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        '13',
                        style: TextStyle(fontSize: 20.0, color: Colors.white),
                      ),
                      Text(
                        "The Lonesome Death of Hattie Carroll",
                        style: TextStyle(fontSize: 20.0, color: Colors.white),
                      ),
                      RoundCheckbox(),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
