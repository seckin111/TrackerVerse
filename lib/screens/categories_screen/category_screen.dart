import 'package:flutter/material.dart';

import '../../utils/colors_utils.dart';
import '../category_filter_screen/category_filter_screen.dart';
import '../search_series_screen/search_series_screen.dart';
import 'widgets/category_model.dart';

class CategoryPage extends StatefulWidget {
  const CategoryPage({super.key});

  @override
  State<CategoryPage> createState() => _CategoryPageState();
}

class _CategoryPageState extends State<CategoryPage> {
  List<CategorieModel> categories = [];

  @override
  void initState() {
    super.initState();
    categories = getCategories();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backGround,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Padding(
                padding: EdgeInsets.symmetric(vertical: 20, horizontal: 15),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Categories",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 30,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                padding: const EdgeInsets.all(10),
                margin: const EdgeInsets.symmetric(horizontal: 10),
                height: 60,
                decoration: BoxDecoration(
                  color: AppColors.primaryBlue,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Row(
                  children: [
                    const Icon(
                      Icons.search,
                      color: Colors.white54,
                      size: 30,
                    ),
                    Container(
                      width: 300,
                      margin: const EdgeInsets.only(left: 5, bottom: 8),
                      child: TextField(
                        onSubmitted: (value) {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => SearchScreen(
                                query: value,
                              ),
                            ),
                          );
                        },
                        style: const TextStyle(color: Colors.white),
                        decoration: const InputDecoration(
                          border: InputBorder.none,
                          hintText: "Search",
                          hintStyle: TextStyle(
                            color: Colors.white54,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 15),
              ListView.builder(
                shrinkWrap: true,
                itemCount: categories.length,
                // physics: const ClampingScrollPhysics(),
                physics: const NeverScrollableScrollPhysics(),
                scrollDirection: Axis.vertical,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.symmetric(
                        vertical: 10, horizontal: 15),
                    child: GestureDetector(
                      behavior: HitTestBehavior.translucent,
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => CategoryFilter(
                              seriesCategoryId: categories[index].id,
                              seriesCategoryName:
                                  categories[index].categorieName,
                            ),
                          ),
                        );

                        // Navigator.pushNamed(context, '/category',
                        //     arguments: categories[index].categorieName);
                      },
                      child: Column(
                        children: [
                          Row(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              ClipRRect(
                                borderRadius: BorderRadius.circular(10),
                                child: Image.network(
                                  categories[index].imgAdress,
                                  height: 70,
                                  width: 90,
                                  fit: BoxFit.cover,
                                ),
                              ),
                              const SizedBox(width: 10),
                              Text(
                                categories[index].categorieName,
                                style: const TextStyle(
                                  fontSize: 22,
                                  color: Colors.white,
                                ),
                              ),
                              const Spacer(),
                              const Icon(
                                Icons.arrow_forward_ios,
                                color: Colors.white,
                                size: 23,
                              )
                            ],
                          ),
                          Container(
                            margin: const EdgeInsets.only(top: 10),
                            child: const Divider(
                              height: 5,
                              thickness: 1.5,
                              indent: 100,
                              endIndent: 0,
                              color: Colors.white38,
                            ),
                          ),
                        ],
                      ),
                    ),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}

// import 'package:flutter/material.dart';

// class CategoryPage extends StatelessWidget {
//   const CategoryPage({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: SingleChildScrollView(
//         child: SafeArea(
//           child: Column(
//             crossAxisAlignment: CrossAxisAlignment.start,
//             children: [
//               Padding(
//                 padding: EdgeInsets.symmetric(vertical: 20, horizontal: 15),
//                 child: Column(
//                   crossAxisAlignment: CrossAxisAlignment.start,
//                   children: [
//                     InkWell(
//                       onTap: () {
//                         Navigator.pop(context);
//                       },
//                       child: Icon(
//                         Icons.arrow_back,
//                         color: Colors.white,
//                         size: 30,
//                       ),
//                     ),
//                     SizedBox(
//                       height: 30,
//                     ),
//                     Text(
//                       "Discover",
//                       style: TextStyle(
//                         color: Colors.white,
//                         fontSize: 30,
//                         fontWeight: FontWeight.w500,
//                       ),
//                     ),
//                   ],
//                 ),
//               ),
//               Padding(
//                 padding: EdgeInsets.symmetric(
//                   vertical: 20,
//                   horizontal: 15,
//                 ),
//                 child: Column(children: [
//                   for (int i = 1; i < 11; i++)
//                     Padding(
//                       padding: EdgeInsets.symmetric(vertical: 10),
//                       child: Row(
//                         children: [
//                           ClipRRect(
//                             borderRadius: BorderRadius.circular(10),
//                             child: Image.asset(
//                               "assets/avatars/jimmy.jpg",
//                               height: 70,
//                               width: 90,
//                               fit: BoxFit.cover,
//                             ),
//                           ),
//                           SizedBox(width: 10),
//                           Text(
//                             "Category",
//                             style: TextStyle(
//                               fontSize: 22,
//                               color: Colors.white,
//                             ),
//                           ),
//                           Spacer(),
//                           Icon(
//                             Icons.arrow_forward_ios,
//                             color: Colors.white,
//                             size: 23,
//                           )
//                         ],
//                       ),
//                     ),
//                 ]),
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }
