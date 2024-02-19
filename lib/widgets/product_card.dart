import 'package:flutter/material.dart';
import 'package:flutter_iconly/flutter_iconly.dart';

class ProductCard extends StatelessWidget {
  const ProductCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      clipBehavior: Clip.antiAlias,
      elevation: 0.4,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.all(Radius.circular(10)),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 100,
            alignment: Alignment.topRight,
            width: double.infinity,
            padding: const EdgeInsets.all(6),
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(10),
                topRight: Radius.circular(10),
              ),
              image: DecorationImage(
                image: AssetImage("assets/tomato.jpg"),
                fit: BoxFit.cover,
              ),
            ),
            child: SizedBox(
              height: 30,
              width: 30,
              child: IconButton.filledTonal(
                  padding: EdgeInsets.zero,
                  onPressed: () {},
                  iconSize: 16,
                  icon: const Icon(IconlyLight.bookmark)),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(bottom: 8.0),
                  child: Text(
                    "Tomato",
                    style: Theme.of(context).textTheme.bodyMedium,
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    RichText(
                      text: TextSpan(children: [
                        TextSpan(
                          text: "\$20",
                          style: Theme.of(context).textTheme.bodyMedium,
                        ),
                        TextSpan(
                          text: "/kg",
                          style: Theme.of(context).textTheme.bodySmall,
                        ),
                      ]),
                    ),
                    // icon plus
                    IconButton.filledTonal(
                        padding: EdgeInsets.zero,
                        onPressed: () {},
                        iconSize: 16,
                        icon: const Icon(IconlyLight.plus)),
                  ],
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
