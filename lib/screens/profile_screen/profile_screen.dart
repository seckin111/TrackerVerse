import 'package:bitirme_projesi/utils/colors_utils.dart';
import 'package:bitirme_projesi/utils/series_info.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../discover_screen/discover_screen.dart';
import 'widgets/show_widget.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  bool _button1Selected = true;
  bool _button2Selected = false;

  void _selectButton1() {
    setState(() {
      _button1Selected = true;
      _button2Selected = false;
    });
  }

  void _selectButton2() {
    setState(() {
      _button1Selected = false;
      _button2Selected = true;
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          color: AppColors.backGround,
          child: CustomScrollView(
            slivers: [
              SliverAppBar(
                backgroundColor: AppColors.primaryBlue,
                automaticallyImplyLeading: false,
                floating: true,
                pinned: true,
                expandedHeight: 370.0,
                flexibleSpace: FlexibleSpaceBar(
                  collapseMode: CollapseMode.pin,
                  centerTitle: true,
                  background: Stack(
                    children: <Widget>[
                      SvgPicture.asset(
                        'assets/backgrounds/profile_screen_background.svg',
                        fit: BoxFit.cover,
                      ),
                      Container(
                        decoration: BoxDecoration(
                          gradient: LinearGradient(
                            begin: Alignment.topCenter,
                            end: Alignment.bottomCenter,
                            colors: [
                              Colors.transparent,
                              Colors.black.withOpacity(0.8),
                            ],
                          ),
                        ),
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.end,
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          const SizedBox(height: 30.0),
                          Container(
                            width: 140.0,
                            height: 140.0,
                            decoration: BoxDecoration(
                              border: Border.all(
                                  color:
                                      const Color.fromARGB(255, 255, 255, 255),
                                  width: 2.0),
                              shape: BoxShape.circle,
                            ),
                            child: const CircleAvatar(
                              radius: 60.0,
                              backgroundImage: NetworkImage(
                                  "https://avatars.githubusercontent.com/u/92443831?v=4"),
                            ),
                          ),
                          const SizedBox(height: 10.0),
                          const Text(
                            "Username",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 30.0,
                            ),
                          ),
                          const SizedBox(height: 10.0),
                          const Text(
                            "User Description",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 16.0,
                            ),
                          ),
                          const SizedBox(height: 10.0),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Column(
                                children: [
                                  Text(
                                    "Followers",
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 14.0,
                                    ),
                                  ),
                                  Text(
                                    "0",
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 14.0,
                                    ),
                                  ),
                                  SizedBox(height: 30.0),
                                  ElevatedButton(
                                    onPressed: () {
                                      _selectButton1();
                                      // Navigator.push(
                                      //   context,
                                      //   MaterialPageRoute(
                                      //       builder: (context) =>
                                      //           DiscoverScreen()),
                                      // );
                                    },
                                    style: TextButton.styleFrom(
                                      maximumSize: Size(500, 200),
                                      foregroundColor: _button1Selected
                                          ? Color.fromARGB(255, 187, 190, 0)
                                          : Color.fromARGB(239, 255, 255, 255),
                                      backgroundColor:
                                          Color.fromARGB(255, 0, 0, 0),
                                    ),
                                    child: Text('Watching'),
                                  ),
                                ],
                              ),
                              const SizedBox(width: 5.0),
                              Column(
                                children: [
                                  Text(
                                    "Following",
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 14.0,
                                    ),
                                  ),
                                  Text(
                                    "0",
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 14.0,
                                    ),
                                  ),
                                  SizedBox(height: 30.0),
                                  ElevatedButton(
                                    onPressed: () {
                                      _selectButton2();
                                      // Navigator.push(
                                      //   context,
                                      //   MaterialPageRoute(
                                      //       builder: (context) =>
                                      //           DiscoverScreen()),
                                      // );
                                    },
                                    style: TextButton.styleFrom(
                                      minimumSize: Size(100, 50),
                                      maximumSize: Size(100, 50),
                                      foregroundColor: _button2Selected
                                          ? Color.fromARGB(255, 187, 190, 0)
                                          : Color.fromARGB(239, 255, 255, 255),
                                      backgroundColor:
                                          Color.fromARGB(255, 0, 0, 0),
                                    ),
                                    child: Text('Watched'),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const SizedBox(height: 10.0),
                        ],
                      ),
                    ],
                  ),
                ),
                title: const Text(
                  'Profile',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold,
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
              buildImages(),
            ],
          ),
        ),
      ),
    );
  }
}

int seriesCount = 1;

Widget buildImages() => SliverToBoxAdapter(
      child: GridView.builder(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          childAspectRatio: 0.75,
        ),
        shrinkWrap: true,
        primary: false,
        itemCount: seriesList.length,
        itemBuilder: (context, index) => ImageWidget(
          seriesID: '${seriesCount + index}',
        ),
      ),
    );
