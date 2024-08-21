import 'package:flutter/material.dart';
import 'package:house_cafe/components/appBar/app_bar.dart';
import 'package:house_cafe/components/models/coffee_model.dart';
import 'package:house_cafe/pages/cart/widget/coffe_item.dart';

import '../../components/app_dialog.dart';

class CoffeePage extends StatefulWidget {
  const CoffeePage({super.key});

  @override
  State<CoffeePage> createState() => _CoffeePageState();
}

class _CoffeePageState extends State<CoffeePage> {
  double get totalPrice {
    double total = 0.0;
    for (CoffeeModel coffee in coffees) {
      total = total + coffee.total;
    }
    return total;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CoffeeAppBar(
        leftPressed: () {},
        title: 'House Coffee',
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0).copyWith(
              top: MediaQuery.of(context).padding.top + 20.0, bottom: 30.0),
          child: Column(
            children: [
              ListView.separated(
                physics: const NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                padding: EdgeInsets.zero,
                itemBuilder: (context, index) {
                  final coffee = coffees[index];
                  return CoffeeItem(
                    coffee,
                    onAdd: () => setState(
                        () => coffee.quantity = (coffee.quantity ?? 0) + 1),
                    onRemove: coffee.quantity == 1
                        ? null
                        : () => setState(
                            () => coffee.quantity = (coffee.quantity ?? 0) - 1),
                    onDelete: () => AppDialog.dialog(
                      context,
                      title: '😐',
                      content: 'Delete this coffee?',
                      action: () => setState(
                          () => coffees.removeWhere((e) => e.id == coffee.id)),
                    ),
                  );
                },
                separatorBuilder: (context, index) =>
                    const SizedBox(height: 20.0),
                itemCount: coffees.length,
              )
            ],
          ),
        ),
      ),
    );
  }
}
