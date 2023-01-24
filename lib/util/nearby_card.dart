import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class NearbyCard extends StatelessWidget {
  final String estateImagePath;
  final String estateName;
  final double estateRating;
  final String estateLocation;
  final int estatePricePerDay;
  final int bedAvailable;
  final int bathAvailable;

  const NearbyCard({
    Key? key,
    required this.estateImagePath,
    required this.estateName,
    required this.estateRating,
    required this.estateLocation,
    required this.estatePricePerDay,
    required this.bedAvailable,
    required this.bathAvailable,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 270,
      child: Container(
        width: 320,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(20),
        ),
        child: Column(
          children: [
            ClipRRect(
              borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(20),
                topRight: Radius.circular(20),
              ),
              child: Image.asset(
                estateImagePath,
                height: 170,
                width: 320,
                fit: BoxFit.fill,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        estateName,
                        style: const TextStyle(
                          fontSize: 17,
                          fontWeight: FontWeight.bold,
                        ),
                      ),

                      //This widget spreads the widgets to the farthest
                      //of the space given.
                      const Spacer(),

                      //Use string interpolation instead of calling toString()
                      Text("$estateRating"),
                      //Text(estateRating.toString()),

                      const Icon(
                        Icons.star,
                        color: Colors.yellowAccent,
                      ),
                    ],
                  ),
                  const SizedBox(height: 5),

                  //This does not have to be in a row

                  Text(
                    estateLocation,
                    style: const TextStyle(
                      color: Colors.black26,
                    ),
                  ),
                  const SizedBox(height: 15),

                  //Everything can be in one single Row widget
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      //Learn about responsiveness and use it here.
                      //hint: Expanded widget
                      const Icon(Icons.bed, size: 16),
                      const SizedBox(width: 5),
                      Text("$bedAvailable"),
                      const SizedBox(width: 12),
                      const Icon(FontAwesomeIcons.bath, size: 16),
                      const SizedBox(width: 5),
                      Text("$bathAvailable"),
                      const SizedBox(width: 12),
                      const Icon(Icons.type_specimen_outlined, size: 16),
                      const SizedBox(width: 5),
                      const Text('PentHouse'),
                      const Spacer(),

                      //You can use Text.rich() for something like this
                      Text(
                        //Use string interpolation for this
                        '\$$estatePricePerDay/',
                        // '\$' + estatePricePerDay.toString() + '/',
                        style: const TextStyle(
                          fontSize: 19,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const Text(
                        'day',
                        style: TextStyle(
                          color: Colors.black26,
                          fontSize: 17,
                        ),
                      )
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
