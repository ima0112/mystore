import 'package:flutter/material.dart';
import 'package:mystore/common/widgets/appbar/appbar.dart';

class AddNewAddressScreen extends StatelessWidget {
  const AddNewAddressScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: MyAppBar(showBackArrow: true, title: Text('Add new Address')),
    );
  }
}
