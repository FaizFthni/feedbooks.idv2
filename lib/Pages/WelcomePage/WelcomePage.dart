import 'package:ebookpb/Components/PrimaryButtons.dart';
import 'package:ebookpb/Pages/HomePage/HomePage.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_navigation/get_navigation.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            height: 500,
            padding: const EdgeInsets.all(20),
            color: Theme.of(context).colorScheme.primary,
            child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
              Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const SizedBox(height: 50),
                    Image.asset(
                      "Assets/Images/book.png",
                      width: 380,
                    ),
                    const SizedBox(height: 60),
                    Text(
                      "FeedsBook.id",
                      style: Theme.of(context).textTheme.headlineLarge?.copyWith(
                          color: Theme.of(context).colorScheme.background,
                        ),
                    ),
                    const SizedBox(height: 10),
                    Flexible(
                      child: Text(
                        "Here You can find book for you and you can also read book and listens book",
                        textAlign: TextAlign.center,
                        style: Theme.of(context).textTheme.labelSmall?.copyWith(
                            color: Theme.of(context).colorScheme.background,
                          ),
                      ),
                    )
                  ],
                ),
              )
            ],),
          ),
          Padding(
            padding: const EdgeInsets.all(10),
            child: Column(
              children: [
                const SizedBox(height: 30),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Disclaimer",
                      style: Theme.of(context).textTheme.labelMedium,
                    ),
                  ],
                ),
                const SizedBox(height: 10),
                Row(
                  children: [
                    Flexible(
                      child: Text(
                      "It is a long established fact that a reader will be distracted by the readable content of a page.",
                      textAlign: TextAlign.center,
                      style: Theme.of(context).textTheme.labelSmall,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          const SizedBox(height: 90),
          Padding(
            padding: const EdgeInsets.all(10),
            child: PrimaryButton(
              btnName: "LOGIN WITH GOOGLE", 
              onTap: () {
                Get.offAll(HomePage());
              },
            ),
          )     
        ],
      )
    );
  }
}