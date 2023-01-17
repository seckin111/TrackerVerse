import 'package:bitirme_projesi/utils/colors_utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class EpisodeInfo extends StatefulWidget {
  const EpisodeInfo({super.key});

  @override
  State<EpisodeInfo> createState() => _EpisodeInfoState();
}

class _EpisodeInfoState extends State<EpisodeInfo> {
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
                color: Colors.red,
                child: Column(
                  children: [
                    const Text("Season 1"),
                    const Text("Season 2"),
                    const Text("Season 3"),
                    const Text("Season 4"),
                    const Text("Season 5"),
                  ],
                )),
          ),
          Expanded(
            flex: 8,
            child: Container(
              color: Colors.blue,
              child: Column(
                children: [
                  const Text("Episode 1"),
                  const Text("Episode 2"),
                  const Text("Episode 3"),
                  const Text("Episode 4"),
                  const Text("Episode 5"),
                ],
              ),
            ),
          ),
        ],
      ),
    );
