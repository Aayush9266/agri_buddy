import 'package:agri_buddy/widgets/add_product.dart';
import 'package:agri_buddy/widgets/farmer_cart_item.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../models/product.dart';
import '../data/products.dart';
import '../widgets/product_cart.dart';

class FarmerExplorePage extends StatefulWidget {
  const FarmerExplorePage({super.key});

  @override
  State<FarmerExplorePage> createState() => _FarmerExplorePageState();
}

class _FarmerExplorePageState extends State<FarmerExplorePage> {
  List<Product> displayedProducts = List.from(products);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Text(
          "Your Products ",

          style: TextStyle(fontSize: 20),
          // style: Theme.of(context).textTheme.titleMedium),
        ),
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
              itemCount: displayedProducts.length,
              itemBuilder: (context, index) {
                return Stack(
                  children: [
                    FarmerCartItem(cartItem: displayedProducts[index]),
                    // Positioned(
                    //     top: 14,
                    //     right: 25,
                    //     child: Icon(Icons.add)),
                    Positioned(
                      top: 0,
                      right: 10,
                      child: IconButton(
                        icon: const Icon(Icons.remove_circle,
                            color: Colors.green),
                        onPressed: () {
                          setState(() {
                            displayedProducts.removeAt(index);
                          });
                          ScaffoldMessenger.of(context).showSnackBar(
                            SnackBar(
                                content: Text(
                                    '${displayedProducts[index].name} removed')),
                          );
                        },
                      ),
                    ),
                  ],
                );
              },
            ),
            // child: GridView.builder(
            //   itemCount: displayedProducts.length,
            //   padding: const EdgeInsets.all(16.0),
            //   gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            //     crossAxisCount: 1,
            //     childAspectRatio: 2,
            //     crossAxisSpacing: 1,
            //     mainAxisSpacing: 1,
            //   ),
            //   itemBuilder: (context, index) {
            //     return Stack(
            //       children: [
            //         FarmerCartItem(cartItem: displayedProducts[index]),
            //         Positioned(
            //           top: 143,
            //           right: 25,
            //           child: IconButton(
            //             icon: const Icon(Icons.remove_circle, color: Colors.green),
            //             onPressed: () {
            //               setState(() {
            //                 displayedProducts.removeAt(index);
            //               });
            //               ScaffoldMessenger.of(context).showSnackBar(
            //                 SnackBar(content: Text('${displayedProducts[index].name} removed')),
            //               );
            //             },
            //           ),
            //         ),
            //       ],
            //     );
            //   },
            // ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () async {
          // Navigate to AddCropPage and wait for the result
          final result = await Navigator.of(context).push(
            MaterialPageRoute(builder: (context) => const AddProduct()),
          );

          // If a crop was selected, add it to the displayedProducts list
          if (result != null && result is String) {
            final selectedProduct = products.firstWhere(
              (product) => product.name == result,
              // orElse: () => null,
            );
            if (selectedProduct != null &&
                !displayedProducts.contains(selectedProduct)) {
              setState(() {
                displayedProducts.add(selectedProduct);
              });
            } else {
              ScaffoldMessenger.of(context).showSnackBar(
                const SnackBar(
                    content: Text('Crop already added or not found')),
              );
            }
          }
        },
        child: const Icon(Icons.add),
        tooltip: 'Add Crop',
      ),
    );
  }
}
