import 'package:flutter/material.dart';

import 'package:mystore/common/widgets/custom_shapes/containers/circular_container.dart';
import 'package:mystore/common/widgets/custom_shapes/curved_edges/curved_edges.dart';
import 'package:mystore/utils/constants/colors.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            ClipPath(
              clipper: MyCustomCurvedEdges(),
              child: Container(
                color: MyColors.primary,
                padding: const EdgeInsets.all(0),
                child: SizedBox(
                  height: 400,
                  child: Stack(
                    children: [
                      Positioned(
                        top: -150,
                        right: -250,
                        child: MyCircularContainer(
                            backgroundColor:
                                MyColors.textWhite.withOpacity(0.1)),
                      ),
                      Positioned(
                        top: 100,
                        right: -300,
                        child: MyCircularContainer(
                            backgroundColor:
                                MyColors.textWhite.withOpacity(0.1)),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}