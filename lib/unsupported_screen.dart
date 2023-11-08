import 'package:flutter/material.dart';
import 'package:my_portfolio/utils/constants.dart';

class UnsupportedScreen extends StatelessWidget {
  const UnsupportedScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        height: 200,
        width: 200,
        decoration: const BoxDecoration(
            shape: BoxShape.circle,
            image: DecorationImage(
                image: AssetImage(
                  AppConstants.profileimg,
                ),
                fit: BoxFit.contain)),
      ),
    );
  }
}
