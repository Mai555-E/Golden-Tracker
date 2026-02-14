import 'package:flutter/material.dart';
import 'package:gold_tracker/core/routing/app_routes.dart';

import '../constants/app_colors.dart';
import '../constants/app_strings.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.black,
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: AppColors.black,
        title: Text("Golden / Silver", style: TextStyle(color: AppColors.secondary)),
      ),
      body: Center(
        child: Stack(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                CustomElevatedButton(title: AppStrings.golden),
                CustomElevatedButton(title: AppStrings.silver),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class CustomElevatedButton extends StatelessWidget {
  final String title;
  const CustomElevatedButton({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 140,
      child: ElevatedButton(
        onPressed: () {
          (title == AppStrings.golden) ? Navigator.pushNamed(context, NamedRoutes.gold) : Navigator.pushNamed(context, NamedRoutes.silver);
        },
        style: ElevatedButton.styleFrom(maximumSize: Size.fromHeight(50), minimumSize: Size.fromHeight(45)),
        child: Text(
          (title == AppStrings.golden) ? AppStrings.golden : AppStrings.silver,
          style: TextStyle(color: (title == AppStrings.golden) ? AppColors.primary : AppColors.black, fontSize: 20),
        ),
      ),
    );
  }
}
