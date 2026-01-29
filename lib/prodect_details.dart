import 'package:flutter/material.dart';

class ProductDetailPage extends StatefulWidget {
  const ProductDetailPage({super.key});

  @override
  State<ProductDetailPage> createState() => _ProductDetailPageState();
}

class _ProductDetailPageState extends State<ProductDetailPage> {
  int quantity = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        leading: IconButton(icon: Icon(Icons.arrow_back, color: Colors.black),onPressed: () {},),
        actions:  [
          IconButton(icon: Icon(Icons.share_outlined, color: Colors.black),onPressed: () {},)

        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Product Image
            Center(
              child: Image.asset(
                'assets/apple.png',
                height: 220,
              ),
            ),
            const SizedBox(height: 24),

            // Product Name
            const Text(
              'Naturel Red Apple',
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 4),

            // Weight
            const Text(
              '1kg, Price',
              style: TextStyle(
                color: Colors.grey,
                fontSize: 14,
              ),
            ),
            const SizedBox(height: 16),

            // Quantity + Price
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    IconButton(
                      onPressed: () {
                        if (quantity > 1) {
                          setState(() => quantity--);
                        }
                      },
                      icon: const Icon(Icons.remove),
                    ),
                    Text(
                      quantity.toString(),
                      style: const TextStyle(fontSize: 18),
                    ),
                    IconButton(
                      onPressed: () {
                        setState(() => quantity++);
                      },
                      icon: const Icon(Icons.add),
                    ),
                  ],
                ),
                const Text(
                  '\$4.99',
                  style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),

            const Divider(height: 32),

            // Product Detail
            const Text(
              'Product Detail',
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 8),
            const Text(
              'Apples Are Nutritious. Apples May Be Good For Weight Loss. '
              'Apples May Be Good For Your Heart. As Part Of A Healthful '
              'And Varied Diet.',
              style: TextStyle(
                color: Colors.grey,
                fontSize: 14,
              ),
            ),

            const SizedBox(height: 24),

            // Nutrition
            ListTile(
              contentPadding: EdgeInsets.zero,
              title: const Text('Nutritions'),
              trailing: const Icon(Icons.arrow_forward_ios, size: 16),
              onTap: () {},
            ),

            // Review
            ListTile(
              contentPadding: EdgeInsets.zero,
              title: const Text('Review'),
              trailing: Row(
                mainAxisSize: MainAxisSize.min,
                children: const [
                  Icon(Icons.star, color: Colors.orange, size: 16),
                  Icon(Icons.star, color: Colors.orange, size: 16),
                  Icon(Icons.star, color: Colors.orange, size: 16),
                  Icon(Icons.star, color: Colors.orange, size: 16),
                  Icon(Icons.star, color: Colors.orange, size: 16),
                  SizedBox(width: 8),
                  Icon(Icons.arrow_forward_ios, size: 16),
                ],
              ),
              onTap: () {},
            ),
          ],
        ),
      ),
    );
  }
}
