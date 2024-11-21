import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:t_square/core/utils/app_router.dart';
import 'package:t_square/features/birthday_screen/presentation/views/widgets/birthday_button_widget.dart';

class BirthdayPage extends StatelessWidget {
  const BirthdayPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () => GoRouter.of(context).push(AppRouter.KHomePage),
          icon: Icon(Icons.arrow_back_outlined),
        ),
        title: const Text("Birthday"),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        child: ListView(
          children: [
            const SizedBox(height: 30),
            _buildInfoContainer(),
            const SizedBox(height: 24),
            _buildSectionTitle("Cakes"),
            const SizedBox(height: 8),
            _buildCakeItem(
              context,
              imagePath: "images/image19.png",
              description: "From 1 to 6 person",
              price: "300 LE",
              itemCount: 2, // Example for showing count
              isSelected: true, // Highlight the selected cake
            ),
            _buildCakeItem(
              context,
              imagePath: "images/image19.png",
              description: "From 7 to 10 persons",
              price: "500 LE",
            ),
            _buildCakeItem(
              context,
              imagePath: "images/image19.png",
              description: "From 11 to 20 person",
              price: "750 LE",
            ),
            const SizedBox(height: 24),
            _buildSectionTitle("Decoration"),
            const SizedBox(height: 8),
            _buildCakeItem(
              context,
              imagePath: "images/image19.png",
              description:
              "2 helium balloons",
              price: "450 LE",
            ),
            _buildCakeItem(
              context,
              imagePath: "images/image19.png",
              description: "Without helium balloons",
              price: "350 LE",
            ),
            const SizedBox(height: 50),
            const BirthdayButtonWidget(),
          ],
        ),
      ),
    );
  }

  Widget _buildInfoContainer() {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.1),
            blurRadius: 10,
            offset: const Offset(0, 5),
          ),
        ],
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _buildDotsColumn(),
          const SizedBox(width: 16),
          Expanded(
            child: const Text(
              "You can buy them from anywhere else without any cost or services.",
              style: TextStyle(fontSize: 16),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildDotsColumn() {
    return Column(
      children: List.generate(3 * 2 - 5, (index) {
        if (index % 2 == 0) {
          return Container(
            width: 10.0,
            height: 10.0,
            margin: const EdgeInsets.only(bottom: 8),
            decoration: const BoxDecoration(
              color: Colors.red,
              shape: BoxShape.circle,
            ),
          );
        } else {
          return SizedBox(
            height: 60.0,
            child: VerticalDivider(
              color: Colors.red.withOpacity(0.5),
              thickness: 2.0,
            ),
          );
        }
      }),
    );
  }

  Widget _buildSectionTitle(String title) {
    return Text(
      title,
      style: const TextStyle(fontSize: 20, fontWeight: FontWeight.w400),
    );
  }

  Widget _buildCakeItem(BuildContext context,
      {required String imagePath,
        required String description,
        required String price,
        int itemCount = 0,
        bool isSelected = false}) {
    return Padding(
      padding: const EdgeInsets.only(left: 24, bottom: 15, right: 10),
      child: Container(
        decoration: BoxDecoration(
          color: isSelected ? Colors.red.withOpacity(0.2) : Colors.white,
          borderRadius: BorderRadius.circular(16.0),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.1),
              spreadRadius: 1,
              blurRadius: 10,
              offset: Offset(0, 5),
            ),
          ],
        ),
        width: 450,
        height: 80,
        child: Row(
          children: [
            Padding(
              padding: const EdgeInsets.only(
                  left: 8, top: 10, bottom: 10, right: 20),
              child: Image.asset(imagePath),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.only(top: 16, bottom: 19),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(description),
                    Text(price),
                  ],
                ),
              ),
            ),
            Row(
              children: [
                IconButton(
                  icon: Icon(Icons.remove_circle_outline, color: Colors.red),
                  onPressed: () {
                    // Handle decrement action
                  },
                ),
                Text('$itemCount'),
                IconButton(
                  icon: Icon(Icons.add_circle_outline, color: Colors.red),
                  onPressed: () {
                    // Handle increment action
                  },
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}