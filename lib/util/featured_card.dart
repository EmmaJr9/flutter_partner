import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class FeaturedCard extends StatelessWidget {
  final String estateImagePath;
  final String estateName;
  final double estateRating;
  final String estateLocation;
  final int estatePricePerDay;
  final int bedAvailable;
  final int bathAvailable;

  const FeaturedCard({
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
          color: Colors.grey[200],
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
              padding: const EdgeInsets.all(8.0),
              child: Column(
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
                      Row(
                        children: [
                          Text(estateRating.toString()),
                          const Icon(
                            Icons.star,
                            color: Colors.yellowAccent,
                          ),
                        ],
                      ),
                    ],
                  ),
                  const SizedBox(height: 5),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        estateLocation,
                        style: const TextStyle(
                          color: Colors.black26,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 15),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Row(
                            children: [
                              const Icon(Icons.bed),
                              const SizedBox(width: 5),
                              Text(bedAvailable.toString()),
                            ],
                          ),
                          const SizedBox(width: 15),
                          Row(
                            children: [
                              const Icon(FontAwesomeIcons.bath),
                              const SizedBox(width: 5),
                              Text(bathAvailable.toString()),
                            ],
                          ),
                          const SizedBox(width: 15),
                          Row(
                            children: const [
                              Icon(Icons.type_specimen_outlined),
                              SizedBox(width: 5),
                              Text('PentHouse')
                            ],
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Text(
                            '\$' + estatePricePerDay.toString() + '/',
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
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
