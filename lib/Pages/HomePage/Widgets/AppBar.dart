import 'package:ebookpb/Config/Colors.dart';
import 'package:ebookpb/Pages/ProfilePage/ProfilePage.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

class HomeAppBar extends StatelessWidget {
  const HomeAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        SvgPicture.asset("Assets/Icons/dashboard.svg"),
        Text(
          "FeedsBook.id",
          style: Theme.of(context)
            .textTheme
            .headlineMedium
            ?.copyWith(
              color: Theme.of(context)
              .colorScheme
              .background
            ),
        ),
        InkWell(
          onTap: () {
            Get.to(ProfilePage());
          },
          child: CircleAvatar(
            
            backgroundColor: 
            Theme.of(context).colorScheme.background,
            child: const Text(
              "S",
              style: TextStyle(
                color: primaryColor,
              ),
            ),
          ),
        ),
      ],
    );
  }
}