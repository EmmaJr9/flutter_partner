import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_partnership/util/featured_card.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar:

          //No need to add padding to BottomNavigationBar
          BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        fixedColor: Colors.deepPurpleAccent,
        showSelectedLabels: true,
        showUnselectedLabels: true,
        selectedFontSize: 15,
        unselectedFontSize: 12,
        selectedLabelStyle: const TextStyle(height: 1.5),
        unselectedLabelStyle: const TextStyle(height: 1.5),
        unselectedIconTheme: const IconThemeData(color: Colors.black54),
        items: const [
          BottomNavigationBarItem(
            label: 'Home',
            icon: Icon(
              Icons.home,
              size: 30,
            ),
          ),
          BottomNavigationBarItem(
            label: 'Save',
            icon: Icon(
              Icons.save_rounded,
              size: 30,
            ),
          ),
          BottomNavigationBarItem(
            label: 'Inbox',
            icon: Icon(
              FontAwesomeIcons.envelope,
              size: 30,
            ),
          ),
          BottomNavigationBarItem(
            label: 'Profile',
            icon: Icon(
              FontAwesomeIcons.user,
              size: 30,
            ),
          ),
        ],
        currentIndex: currentIndex,
        onTap: (int index) {
          setState(() {
            currentIndex = index;
          });
        },
      ),
      body: SafeArea(
        child: Column(
          children: [
            Container(
              width: double.infinity,
              decoration: BoxDecoration(
                color: Colors.pink[100],
              ),
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Sunday, October 30',
                              style: TextStyle(
                                color: Colors.purple[400],
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            const SizedBox(height: 5),
                            Row(
                              children: [
                                const Text(
                                  'Good morning, Doto',
                                  style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                const SizedBox(width: 5),
                                Image.asset(
                                  'lib/icons/goodbye.png',
                                  height: 17,
                                ),
                                //const SizedBox(width: 115)
                              ],
                            ),
                          ],
                        ),
                        Image.asset('lib/icons/bell.png', height: 20),
                      ],
                    ),
                    const SizedBox(height: 20),
                    // location
                    SizedBox(
                      height: 100,
                      child: Container(
                        width: double.infinity,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(15),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                children: const [
                                  Icon(
                                    Icons.location_on,
                                    color: Colors.black54,
                                  ),
                                  SizedBox(width: 10),
                                  Text(
                                    'Sreet, City .....',
                                    style: TextStyle(
                                      color: Colors.black45,
                                      fontSize: 17,
                                    ),
                                  ),
                                ],
                              ),
                              Row(
                                children: [
                                  Row(
                                    children: const [
                                      Icon(
                                        Icons.bed,
                                        color: Colors.black54,
                                      ),
                                      SizedBox(width: 5),
                                      Text(
                                        'Bed',
                                        style: TextStyle(
                                          color: Colors.black45,
                                          fontSize: 17,
                                        ),
                                      ),
                                    ],
                                  ),
                                  const SizedBox(width: 15),
                                  Row(
                                    children: const [
                                      Icon(
                                        Icons.monetization_on_outlined,
                                        color: Colors.black54,
                                      ),
                                      SizedBox(width: 5),
                                      Text(
                                        '150 - 170',
                                        style: TextStyle(
                                          color: Colors.black45,
                                          fontSize: 17,
                                        ),
                                      ),
                                    ],
                                  ),
                                  const SizedBox(width: 15),
                                  Row(
                                    children: const [
                                      Icon(
                                        Icons.type_specimen_outlined,
                                        color: Colors.black54,
                                      ),
                                      SizedBox(width: 5),
                                      Text(
                                        'Type',
                                        style: TextStyle(
                                          color: Colors.black45,
                                          fontSize: 17,
                                        ),
                                      ),
                                    ],
                                  ),
                                  const SizedBox(width: 15),
                                  const Icon(
                                    Icons.keyboard_arrow_down_rounded,
                                    color: Colors.black54,
                                  )
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(height: 10),
                    //Search button
                    SizedBox(
                      height: 40,
                      child: Container(
                        width: double.infinity,
                        decoration: BoxDecoration(
                          color: Colors.blue[600],
                          borderRadius: BorderRadius.circular(12),
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: const [
                            Text(
                              'Search',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 15,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 10),

            // Featured and See All
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  Text(
                    'Featured',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    'See All',
                    style: TextStyle(
                      color: Colors.purpleAccent,
                      fontSize: 15,
                    ),
                  )
                ],
              ),
            ),

            // Featured Cards
            SizedBox(
              height: 270,
              child: ListView(
                scrollDirection: Axis.horizontal,
                padding: const EdgeInsets.symmetric(horizontal: 20),
                children: const [
                  FeaturedCard(
                    estateImagePath: 'lib/icons/real_estate_1.png',
                    estateName: 'Big House',
                    estateRating: 4.7,
                    estateLocation: 'Baratajaya, Surabaya City, Jawa Timur',
                    estatePricePerDay: 350,
                    bedAvailable: 2,
                    bathAvailable: 1,
                  ),
                  SizedBox(width: 20),
                  FeaturedCard(
                    estateImagePath: 'lib/icons/real_estate_2.png',
                    estateName: 'Vintage Pentouse',
                    estateRating: 4.7,
                    estateLocation: 'Baratajaya, Surabaya City, Jawa Timur',
                    estatePricePerDay: 400,
                    bedAvailable: 2,
                    bathAvailable: 1,
                  ),
                  SizedBox(width: 20),
                  FeaturedCard(
                    estateImagePath: 'lib/icons/real_estate_3.png',
                    estateName: 'Semi Modern House',
                    estateRating: 4.7,
                    estateLocation: 'Gubeng, Surabaya City, Jawa Timur',
                    estatePricePerDay: 500,
                    bedAvailable: 4,
                    bathAvailable: 2,
                  ),
                ],
              ),
            ),
            /*
                */

            // Nearby and See All
            /*Padding(
              padding: const EdgeInsets.all(20.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  Text(
                    'Nearby',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    'See All',
                    style: TextStyle(
                      color: Colors.purpleAccent,
                      fontSize: 15,
                    ),
                  )
                ],
              ),
            ),
            */
          ],
        ),
      ),
    );
  }
}
