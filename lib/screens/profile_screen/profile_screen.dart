import 'package:bitirme_projesi/utils/colors_utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import 'widgets/show_widget.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  bool _isButton1Selected = true;
  bool _isButton2Selected = true;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          color: AppColors.primaryBlue,
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
                                  Container(
                                    width: 220,
                                    height: 44.0,
                                    decoration: BoxDecoration(
                                      color: _isButton1Selected
                                          ? Color.fromARGB(255, 2, 18, 32)
                                          : Color.fromARGB(255, 220, 13, 13),
                                      borderRadius: BorderRadius.circular(10.0),
                                    ),
                                    child: ElevatedButton(
                                      child: Text('Watching'),
                                      onPressed: () {
                                        setState(() {
                                          _isButton1Selected = true;
                                          _isButton2Selected = false;
                                        });
                                      },
                                    ),
                                  )
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
                                  Container(
                                    width: 220,
                                    height: 44.0,
                                    decoration: BoxDecoration(
                                      color: _isButton2Selected
                                          ? Color.fromARGB(255, 16, 55, 18)
                                          : Color.fromARGB(255, 192, 19, 19),
                                      borderRadius: BorderRadius.circular(10.0),
                                    ),
                                    child: ElevatedButton(
                                      child: Text('Watched'),
                                      onPressed: () {
                                        setState(() {
                                          _isButton1Selected = false;
                                          print(_isButton1Selected);
                                          _isButton2Selected = true;
                                        });
                                      },
                                    ),
                                  )
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

Widget buildImages() => SliverToBoxAdapter(
      child: GridView.builder(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          childAspectRatio: 0.75,
        ),
        shrinkWrap: true,
        primary: false,
        itemCount: 100,
        itemBuilder: (context, index) => ImageWidget(index: index),
      ),
    );
