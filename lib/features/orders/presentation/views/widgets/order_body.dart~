import 'package:flutter/material.dart';
import 'package:shaghf/core/utils/style.dart';

import '../../../../../const.dart';

class OrderBody extends StatefulWidget {
  const OrderBody({super.key});

  @override
  State<OrderBody> createState() => _OrderBodyState();
}

class _OrderBodyState extends State<OrderBody> {
  int totalPrice = 0;
  String selectedCategory = 'Cold Drinks';

  void updatePrice(int priceChange) {
    setState(() {
      totalPrice += priceChange;
    });
  }

  // تغيير الفئة المختارة عند الضغط على فئة معينة
  void selectCategory(String category) {
    setState(() {
      selectedCategory = category;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'What’s on your mind?',
            style: Styles.textStyle16.copyWith(color: KblackColor),
          ),
          const SizedBox(height: 14),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              buildCategoryItem('images/drink.jpg', 'Cold Drinks', KredColor),
              buildCategoryItem('images/hotdrink.jpg', 'Hot Drinks', KblackColor),
              buildCategoryItem('images/snanks.jpg', 'Snacks', KblackColor),
            ],
          ),
          Expanded(
            child: ListView(
              children: [
                const SizedBox(height: 20),
                Text(
                  selectedCategory,
                  style: Styles.textStyle16.copyWith(color: KColor),
                ),
                ...buildItemsForCategory(selectedCategory),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 32),
            child: TextButton(
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(KColor),
                shape: MaterialStateProperty.all(
                  RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
              ),
              onPressed: () {},
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Next',
                    style: Styles.textStyle16.copyWith(
                      fontWeight: FontWeight.w600,
                      color: Colors.white,
                    ),
                  ),
                  Text(
                    'EGP\t$totalPrice',
                    style: Styles.textStyle16.copyWith(
                      fontWeight: FontWeight.w600,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Column buildCategoryItem(String imagePath, String title, Color color) {
    return Column(
      children: [
        GestureDetector(
          onTap: () => selectCategory(title),
          child: Container(
            width: 80,
            height: 80,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              image: DecorationImage(
                image: AssetImage(imagePath),
                fit: BoxFit.fill,
              ),
            ),
          ),
        ),
        const SizedBox(height: 8),
        Text(
          title,
          style: Styles.textStyle14.copyWith(color: color),
        ),
      ],
    );
  }

  // عرض العناصر حسب الفئة المختارة
  List<Widget> buildItemsForCategory(String category) {
    List<Widget> items = [];

    if (category == 'Cold Drinks') {
      items.add(Items(
        imageUrl: 'images/water.jpg',
        title: 'Water',
        price: 10,
        onPriceUpdate: updatePrice,
      ));
      items.add(Items(
        imageUrl: 'images/water.jpg',
        title: 'Juice',
        price: 15,
        onPriceUpdate: updatePrice,
      ));
      items.add(Items(
        imageUrl: 'images/water.jpg',
        title: 'Fresh Juice',
        price: 20,
        onPriceUpdate: updatePrice,
      ));
    } else if (category == 'Hot Drinks') {
      items.add(Items(
        imageUrl: 'images/water.jpg',
        title: 'Coffee',
        price: 25,
        onPriceUpdate: updatePrice,
      ));
      items.add(Items(
        imageUrl: 'images/water.jpg',
        title: 'Tea',
        price: 15,
        onPriceUpdate: updatePrice,
      ));
    } else if (category == 'Snacks') {
      items.add(Items(
        imageUrl: 'images/water.jpg',
        title: 'Cookies',
        price: 30,
        onPriceUpdate: updatePrice,
      ));
      items.add(Items(
        imageUrl: 'images/water.jpg',
        title: 'Chips',
        price: 20,
        onPriceUpdate: updatePrice,
      ));
    }

    return items;
  }
}

class Items extends StatefulWidget {
  final String imageUrl;
  final String title;
  final int price;
  final Function(int) onPriceUpdate;

  const Items({
    super.key,
    required this.imageUrl,
    required this.title,
    required this.price,
    required this.onPriceUpdate,
  });

  @override
  State<Items> createState() => _ItemsState();
}

class _ItemsState extends State<Items> {
  int quantity = 0;

  void _increaseQuantity() {
    setState(() {
      quantity++;
      widget.onPriceUpdate(widget.price);
    });
  }

  void _decreaseQuantity() {
    if (quantity > 0) {
      setState(() {
        quantity--;
        widget.onPriceUpdate(-widget.price);
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
      child: ListTile(
        leading: Image.asset(
          widget.imageUrl,
          width: 60,
          height: 60,
          fit: BoxFit.fill,
        ),
        title: Text(
          widget.title,
          style: Styles.textStyle16.copyWith(color: KblackColor),
        ),
        subtitle: Text(
          '${widget.price} LE x $quantity = ${widget.price * quantity} LE',
          style: Styles.textStyle12
              .copyWith(fontWeight: FontWeight.w700, color: KblackColor),
        ),
        trailing: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            IconButton(
              onPressed: _decreaseQuantity,
              icon: const Icon(Icons.remove),
            ),
            Text(quantity.toString()),
            IconButton(
              onPressed: _increaseQuantity,
              icon: const Icon(Icons.add),
            ),
          ],
        ),
      ),
    );
  }
}
