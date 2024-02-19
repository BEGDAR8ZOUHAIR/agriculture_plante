import 'package:agriculture_plante/data/product.dart';
import 'package:agriculture_plante/widgets/product_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_iconly/flutter_iconly.dart';

class ExplorePage extends StatelessWidget {
  const ExplorePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(padding: const EdgeInsets.all(20), children: [
        // search and filter
        Padding(
          padding: const EdgeInsets.only(bottom: 15),
          child: Row(children: [
            const Expanded(
              child: TextField(
                decoration: InputDecoration(
                  hintText: "Search for plants",
                  isDense: true,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(
                      Radius.circular(10),
                    ),
                  ),
                  prefixIcon: Icon(IconlyLight.search),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: IconButton.filledTonal(
                  onPressed: () {},
                  icon: const Icon(IconlyLight.filter),
                  iconSize: 40,
                  // i want add border radius to icon like textfield
                  style: ButtonStyle(
                      shape: MaterialStateProperty.all(
                    const RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                    ),
                  ))),
            )
          ]),
        ),

        // consolting cards
        Padding(
          padding: const EdgeInsets.only(bottom: 15),
          child: SizedBox(
            height: 170,
            child: Card(
              color: Colors.green.shade50,
              elevation: 0.1,
              shadowColor: Colors.green.shade100,
              child: Padding(
                padding: const EdgeInsets.all(12),
                child: Row(children: [
                  Flexible(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Free Consultation",
                          style:
                              Theme.of(context).textTheme.titleLarge!.copyWith(
                                    color: Colors.green.shade700,
                                  ),
                        ),
                        const Text("Get free consultation with our experts"),
                        FilledButton(
                            onPressed: () {},
                            child: const Text("Get Consultation")),
                      ],
                    ),
                  ),
                  Image.asset('assets/contact_us.png')
                ]),
              ),
            ),
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text("Featured Products",
                style: Theme.of(context).textTheme.titleMedium),
            TextButton(onPressed: () {}, child: const Text("See All"))
          ],
        ),
        // featured products
        GridView.builder(
          shrinkWrap: true,
          itemCount: products.length,
          physics: const NeverScrollableScrollPhysics(),
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            mainAxisSpacing: 16,
            crossAxisSpacing: 16,
            childAspectRatio: 0.9,
          ),
          itemBuilder: (context, index) {
            return  ProductCard( product: products[index]);
          },
        ),
      ]),
    );
  }
}
