import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../data/products.dart';
import '../widgets/product_cart.dart';

class CategoriesPage extends StatefulWidget {
  const CategoriesPage({super.key});

  @override
  State<CategoriesPage> createState() => _CategoriesPageState();
}

class _CategoriesPageState extends State<CategoriesPage> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "Featured Products",
              style: Theme.of(context).textTheme.titleMedium,
            ),
            TextButton(
              onPressed: () {},
              child: const Text("See all"),
            ),
          ],
        ),
        GridView.builder(
          itemCount: products.length,
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            childAspectRatio: 0.9,
            crossAxisSpacing: 16,
            mainAxisSpacing: 16,
          ),
          itemBuilder: (context, index) {
            return ProductCard(product: products[index]);
          },
        )
      ],
    );
  }
}
