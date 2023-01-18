import 'package:bitirme_projesi/utils/colors_utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../widgets/rounded_check_box.dart';

class EpisodeInfo extends StatefulWidget {
  const EpisodeInfo({super.key});

  @override
  State<EpisodeInfo> createState() => _EpisodeInfoState();
}

class _EpisodeInfoState extends State<EpisodeInfo> {
  bool checkBoxValue = false;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        child: CustomScrollView(
          slivers: [
            SliverAppBar(
              backgroundColor: AppColors.primaryBlue,
              automaticallyImplyLeading: true,
              floating: true,
              pinned: true,
              expandedHeight: 280.0,
              flexibleSpace: FlexibleSpaceBar(
                collapseMode: CollapseMode.pin,
                centerTitle: true,
                background: Stack(
                  children: <Widget>[
                    Stack(
                      fit: StackFit.expand,
                      children: [
                        Image.asset(
                          'assets/series/breaking_bad.jpg',
                          fit: BoxFit.cover,
                        ),
                      ],
                    ),
                    Container(
                      decoration: BoxDecoration(
                        gradient: LinearGradient(
                          begin: Alignment.topCenter,
                          end: Alignment.bottomCenter,
                          colors: [
                            Colors.transparent,
                            Colors.black.withOpacity(0.6),
                          ],
                        ),
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.only(left: 20.0, bottom: 20.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.end,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        // mainAxisSize: MainAxisSize.min,
                        children: [
                          const SizedBox(height: 10.0),
                          const Text(
                            "Breaking Bad",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 30.0,
                            ),
                          ),
                          const SizedBox(height: 10.0),
                          const Text(
                            "Crime, Drama, Thriller",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 16.0,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              actions: [
                IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.settings,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
            episodes(),
          ],
        ),
      ),
    );
  }
}

Widget episodes() => SliverToBoxAdapter(
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
