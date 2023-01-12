import 'package:bitirme_projesi/utils/colors_utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: CustomScrollView(
          slivers: <Widget>[
            SliverAppBar(
              automaticallyImplyLeading: false,
              expandedHeight: 250.0,
              backgroundColor: AppColors.primaryBlue,
              floating: false,
              pinned: true,
              elevation: 50,
              flexibleSpace: FlexibleSpaceBar(
                centerTitle: true,
                title: FittedBox(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      CircleAvatar(
                        radius: 50.0,
                        backgroundImage: NetworkImage(
                            "https://avatars.githubusercontent.com/u/92443831?v=4"),
                      ),
                      Text(
                        "Username",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 16.0,
                        ),
                      ),
                      Text(
                        "User Description",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 8.0,
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Column(
                            children: [
                              Text(
                                "Followers",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 8.0,
                                ),
                              ),
                              Text(
                                "0",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 8.0,
                                ),
                              ),
                            ],
                          ),
                          Column(
                            children: [
                              Text(
                                "Following",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 8.0,
                                ),
                              ),
                              Text(
                                "0",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 8.0,
                                ),
                              ),
                            ],
                          ),
                        ],
                      )
                    ],
                  ),
                ),
                background: SvgPicture.asset(
                  "assets/background.svg",
                  fit: BoxFit.cover,
                ),
              ),
            ),
            SliverList(
              delegate: SliverChildListDelegate(
                <Widget>[
                  Container(
                    height: 250,
                    margin: EdgeInsets.all(8),
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: Colors.cyanAccent,
                        width: 2,
                      ),
                    ),
                  ),
                  Container(
                    height: 250,
                    margin: EdgeInsets.all(8),
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: Colors.cyanAccent,
                        width: 2,
                      ),
                    ),
                  ),
                  Container(
                    height: 250,
                    margin: EdgeInsets.all(8),
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: Colors.cyanAccent,
                        width: 2,
                      ),
                    ),
                  ),
                  Container(
                    height: 250,
                    margin: EdgeInsets.all(8),
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: Colors.cyanAccent,
                        width: 2,
                      ),
                    ),
                  ),
                  Container(
                    height: 250,
                    margin: EdgeInsets.all(8),
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: Colors.cyanAccent,
                        width: 2,
                      ),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
