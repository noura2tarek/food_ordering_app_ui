import 'package:flutter/material.dart';
import 'package:food_ordering_app_ui/core/app_images.dart';
import 'package:food_ordering_app_ui/view/screens/item_screen.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({super.key});

  final List<String> food = [
    "Burger",
    "Pizza",
    "Snacks",
    "water",
  ];

  // image links
  final List<String> foodImages = [
    Assets.imagesBurger,
    Assets.imagesPizza,
    Assets.imagesSnacks,
    Assets.imagesWater,
  ];
  final List<String> food2 = [
    "Chicken Burger",
    "Cheese Pizza",
  ];

  //  second list image links
  final List<String> food2Images = [
    Assets.imagesChickenBurger,
    Assets.imagesCheesePizza,
  ];

  final List<Color> bgColors = [
    Color(0xfffbdcda),
    Color(0xffd4eef3),
    Color(0xfffae6d5),
    Color(0xffefcfe7),
  ];

  @override
  Widget build(BuildContext context) {
    // try material widget instead of scaffold.
    return Material(
      color: Colors.white,
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(
              height: 50.0,
            ),
            ////  first row
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 17.0),
              child: Row(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Deliver to",
                        style: TextStyle(
                          color: Colors.black45,
                          fontSize: 18.0,
                        ),
                      ),
                      Row(
                        children: [
                          Icon(Icons.location_on, color: Color(0xffff2f08)),
                          Text(
                            "New York, USA",
                            style: TextStyle(
                              fontSize: 18.0,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Icon(
                            Icons.arrow_drop_down,
                            color: Color(0xffff2f08),
                          ),
                        ],
                      ),
                    ],
                  ),
                  const Spacer(),

                  /// profile stack
                  Stack(
                    alignment: Alignment.topRight,
                    children: [
                      Container(
                        clipBehavior: Clip.antiAliasWithSaveLayer,
                        height: 50.0,
                        width: 50.0,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(
                            Radius.circular(15.0),
                          ),
                          image: DecorationImage(
                            image: AssetImage(Assets.imagesProfile),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      Positioned(
                        left: 38.0,
                        child: Container(
                          padding: EdgeInsets.all(5),
                          decoration: BoxDecoration(
                            color: Color(0xffff2f08),
                            shape: BoxShape.circle,
                            border: Border.all(
                              color: Colors.white,
                              width: 2.0,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 20.0,
            ),
            //// second row
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  width: MediaQuery.of(context).size.width / 1.4,
                  padding:
                      EdgeInsets.symmetric(horizontal: 10.0, vertical: 5.0),
                  decoration: BoxDecoration(
                    color: Color(0xfff3f3f3),
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                  ),
                  alignment: Alignment.center,
                  child: TextFormField(
                    decoration: InputDecoration(
                      prefixIcon: Icon(
                        Icons.search,
                      ),
                      border: InputBorder.none,
                      hintText: "Search your food here...",
                    ),
                  ),
                ),
                InkWell(
                  onTap: () {
                    // filter list
                  },
                  child: Container(
                    height: 55.0,
                    width: 55.0,
                    decoration: BoxDecoration(
                      color: Color(0xffff2f08),
                      borderRadius: BorderRadius.all(
                        Radius.circular(10.0),
                      ),
                    ),
                    child: Icon(
                      Icons.filter_list,
                      color: Colors.white,
                      size: 28.0,
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 20.0,
            ),
            /////- banner
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 10.0,
                vertical: 5.0,
              ),
              child: ClipRRect(
                borderRadius: BorderRadius.all(Radius.circular(15.0)),
                child: Image.asset(Assets.imagesBanner),
              ),
            ),

            ///// third row -- categories
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 15.0, vertical: 5.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Categories",
                    style: TextStyle(
                      fontSize: 22.0,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  // see all button
                  TextButton(
                      onPressed: () {},
                      child: Text(
                        "See All",
                        style: TextStyle(
                          color: Color(0xffff2f08),
                          fontSize: 17.0,
                          fontWeight: FontWeight.bold,
                        ),
                      )),
                ],
              ),
            ),

            // list view horizontal of categories
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: SizedBox(
                height: 120.0,
                child: ListView.separated(
                  scrollDirection: Axis.horizontal,
                  shrinkWrap: true,
                  itemBuilder: (context, index) {
                    return Container(
                      height: 200.0,
                      width: 100.0,
                      decoration: BoxDecoration(
                        color: bgColors[index],
                        borderRadius: BorderRadius.all(Radius.circular(10.0)),
                      ),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset(
                            foodImages[index],
                            width: 80.0,
                            height: 80.0,
                            fit: BoxFit.cover,
                          ),
                          SizedBox(
                            height: 6.0,
                          ),
                          Text(
                            food[index],
                            style: TextStyle(
                              fontWeight: FontWeight.w500,
                              fontSize: 16.0,
                              color: Colors.black54,
                            ),
                          ),
                        ],
                      ),
                    );
                  },
                  separatorBuilder: (context, index) => const SizedBox(
                    width: 10.0,
                  ),
                  itemCount: food.length,
                ),
              ),
            ),

            ///// fourth row -- popular items
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 15.0, vertical: 5.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Popular",
                    style: TextStyle(
                      fontSize: 22.0,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  // see all button
                  TextButton(
                    onPressed: () {},
                    child: Text(
                      "See All",
                      style: TextStyle(
                        color: Color(0xffff2f08),
                        fontSize: 17.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            // list view horizontal of popular items
            SizedBox(
              height: 220.0,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                shrinkWrap: true,
                itemCount: food2.length,
                itemBuilder: (context, index) {
                  return InkWell(
                    onTap: () {
                      // nav to item details.
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => ItemScreen(),
                        ),
                      );
                    },
                    child: Container(
                      width: MediaQuery.of(context).size.width / 1.4,
                      clipBehavior: Clip.antiAliasWithSaveLayer,
                      margin:
                          EdgeInsets.only(left: 15.0, bottom: 10, right: 6.0),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(10.0)),
                          color: Colors.white,
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black12,
                              blurRadius: 4.0,
                              spreadRadius: 2.0,
                            ),
                          ]),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          // item image
                          ClipRRect(
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(10.0),
                              topRight: Radius.circular(10.0),
                            ),
                            child: Image.asset(
                              food2Images[index],
                              height: 120.0,
                              width: MediaQuery.of(context).size.width / 1.4,
                              fit: BoxFit.cover,
                            ),
                          ),
                          // row
                          Padding(
                            padding: const EdgeInsets.only(left: 10.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                // first column
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      food2[index],
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 16.0,
                                        color: Colors.black,
                                      ),
                                    ),
                                    SizedBox(
                                      height: 5.0,
                                    ),
                                    Text(
                                      "Fast Food",
                                      style: TextStyle(
                                          color: Colors.black45,
                                          fontSize: 15.0),
                                    ),
                                    SizedBox(
                                      height: 5.0,
                                    ),
                                    Row(
                                      children: [
                                        Icon(
                                          Icons.star,
                                          size: 20.0,
                                          color: Color(0xffff2f08),
                                        ),
                                        const SizedBox(
                                          width: 3.0,
                                        ),
                                        Text(
                                          "4.7",
                                          style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                        const SizedBox(
                                          width: 5.0,
                                        ),
                                        Text(
                                          "(941 Ratings)",
                                          style: TextStyle(
                                            color: Colors.black45,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                                // second column
                                Column(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceAround,
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Row(
                                        children: [
                                          Icon(
                                            Icons.location_on,
                                            size: 20.0,
                                            color: Color(0xffff2f08),
                                          ),
                                          Text(
                                            "1 KM",
                                            style: TextStyle(
                                              color: Colors.black45,
                                              fontWeight: FontWeight.w500,
                                            ),
                                          )
                                        ],
                                      ),
                                    ),
                                    SizedBox(
                                      height: 10.0,
                                    ),
                                    Container(
                                      padding: EdgeInsets.all(8.0),
                                      decoration: BoxDecoration(
                                        color: Color(0xffff2f08),
                                        borderRadius: BorderRadius.only(
                                            topLeft: Radius.circular(10.0)),
                                      ),
                                      child: Text(
                                        "\$15.99",
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 16.0,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),

                          // second row
                        ],
                      ),
                    ),
                  );
                },
              ),
            ),
            SizedBox(
              height: 30.0,
            ),
          ],
        ),
      ),
    );
  }
}
