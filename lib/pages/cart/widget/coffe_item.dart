import 'package:flutter/material.dart';

import 'package:house_cafe/components/models/coffee_model.dart';
import '../../../components/app_box_shadown.dart';
import '../../../components/button/app_rating_bar.dart';

class CoffeeItem extends StatelessWidget {
  const CoffeeItem(
    this.coffee, {
    super.key,
    this.onAdd,
    this.onRemove,
    this.onDelete,
  });

  final Function()? onAdd;
  final Function()? onRemove;
  final Function()? onDelete;
  final CoffeeModel coffee;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      decoration: const BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.all(Radius.circular(16.0)),
        boxShadow: AppBoxShadow.boxShadow,
      ),
      child: Row(
        children: [
          ClipRRect(
            borderRadius: const BorderRadius.all(Radius.circular(16.0)),
            child: Image.asset(
              coffee.imageStr ?? '',
              width: 120.0,
            ),
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Text(
                  coffee.name ?? '-:-',
                  style: const TextStyle(
                    color: Colors.brown,
                    fontSize: 16.0,
                    fontWeight: FontWeight.w500,
                  ),
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.left,
                ),
                const SizedBox(height: 4.0),
                Text(
                  '',
                  style: TextStyle(color: Colors.red.shade300),
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.left,
                ),
                Row(
                  children: [
                    Text(
                      coffee.price?.toStringAsFixed(2) ?? '-:-',
                      style: const TextStyle(fontSize: 16.8),
                    ),
                    const Text(
                      '\$',
                      style: TextStyle(
                        color: Colors.red,
                        fontSize: 16.8,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    const Spacer(),
                    SizedBox(
                      width: 46.0,
                      child: TextButton(
                        onPressed: onAdd,
                        child: const Text(
                          '+',
                          style:
                              TextStyle(color: Colors.orange, fontSize: 24.0),
                        ),
                      ),
                    ),
                    Text(
                      '${coffee.quantity ?? 0}',
                      style: const TextStyle(color: Colors.red, fontSize: 16.8),
                    ),
                    SizedBox(
                      width: 46.0,
                      child: TextButton(
                        onPressed: onRemove,
                        child: const Text(
                          '-',
                          style:
                              TextStyle(color: Colors.orange, fontSize: 24.0),
                        ),
                      ),
                    ),
                  ],
                ),
                Row(
                  children: [
                    AppRatingBar(
                      rating: coffee.rating ?? 0.0,
                      onRatingUpdate: (value) {},
                    ),
                    const Spacer(),
                    GestureDetector(
                      onTap: onDelete,
                      behavior: HitTestBehavior.translucent,
                      child: Padding(
                        padding: const EdgeInsets.all(2.0).copyWith(right: 8.0),
                        child: CircleAvatar(
                          backgroundColor: Colors.red.withOpacity(0.8),
                          radius: 12.6,
                          child: const Icon(
                            Icons.delete,
                            size: 14.6,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
