import 'dart:math';

import 'package:agri_buddy/data/orders.dart';
import 'package:agri_buddy/widgets/order_item.dart';
import 'package:flutter/material.dart';

class FarmerOrderPage extends StatelessWidget {
  const FarmerOrderPage({super.key});

  @override
  Widget build(BuildContext context) {
    final tabs = ["Processing", "Picking", "Shipping", "Delivered"];

    return DefaultTabController(
      length: 4,
      initialIndex: 0,
      child: Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: false,
          title: const Text("Order Status"),
          bottom: TabBar(
            physics: const BouncingScrollPhysics(),
            isScrollable: true,
            indicatorSize: TabBarIndicatorSize.label,
            tabs: List.generate(tabs.length, (index) {
              return Tab(
                text: "${tabs[index]} ${Random().nextInt(10)}",
              );
            }),
          ),
        ),
        body: TabBarView(
          children: List.generate(
            tabs.length,
                (index) {
              return ListView(
                padding: const EdgeInsets.all(16),
                children: List.generate(
                  orders.length,
                      (index) {
                    return Padding(
                      padding: const EdgeInsets.only(bottom: 10),
                      child: OrderItem(order: orders[index]),
                    );
                  },
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}
