import 'package:flutter/material.dart';

import 'package:mystore/core/common_widgets/widgets/appbar/appbar.dart';
import 'package:mystore/features/shop/screens/order/widgets/orders_list.dart';
import 'package:mystore/core/constants/sizes.dart';

class OrderScreen extends StatelessWidget {
  const OrderScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyAppBar(
        showBackArrow: true,
        title: Text(
          'My Orders',
          style: Theme.of(context).textTheme.headlineSmall,
        ),
      ),
      body: const Padding(
        padding: EdgeInsets.all(MySizes.defaultSpace),
        child: OrderListItems(),
      ),
    );
  }
}
