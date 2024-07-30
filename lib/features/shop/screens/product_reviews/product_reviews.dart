import 'package:flutter/material.dart';
import 'package:mystore/common/widgets/appbar/appbar.dart';

class ProductReviewsScreen extends StatelessWidget {
  const ProductReviewsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: MyAppBar(
        showBackArrow: true,
        title: Text('Reviews & Ratings'),
      ),
      body: SingleChildScrollView(),
    );
  }
}
