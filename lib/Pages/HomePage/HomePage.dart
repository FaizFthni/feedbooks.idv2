import 'package:ebookpb/Components/BookCard.dart';
import 'package:ebookpb/Components/BookTile.dart';
import 'package:ebookpb/Models/Data.dart';
import 'package:ebookpb/Pages/BookDetails/BookDetails.dart';
import 'package:ebookpb/Pages/HomePage/Widgets/AppBar.dart';
import 'package:ebookpb/Pages/HomePage/Widgets/CategoryWidget.dart';
import 'package:ebookpb/Pages/HomePage/Widgets/MyInputsTextField.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
//import 'package:get/get.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              padding: const EdgeInsets.all(10),
              color: Theme.of(context).colorScheme.primary,
              //height: 500,
              child: Expanded(
                child: Row(
                  children: [
                    Expanded(
                      child: Column(
                        children: [
                          SizedBox(height: 50),
                          HomeAppBar(),
                          SizedBox(height: 30),
                          Row(
                            children: [
                              Text(
                                "✨Good Morning, ",
                                style: Theme.of(context)
                                    .textTheme
                                    .bodyLarge
                                    ?.copyWith(
                                      color: Theme.of(context)
                                          .colorScheme
                                          .background,
                                    ),
                              ),
                              Text(
                                "Sahrul",
                                style: Theme.of(context)
                                    .textTheme
                                    .headlineMedium
                                    ?.copyWith(
                                      color: Theme.of(context)
                                          .colorScheme
                                          .background,
                                    ),
                              ),
                            ],
                          ),
                          SizedBox(height: 5),
                          Row(
                            children: [
                              Flexible(
                                child: Text(
                                  "Time to read Book and enhance your Knowledge",
                                  style: Theme.of(context)
                                      .textTheme
                                      .labelSmall
                                      ?.copyWith(
                                        color: Theme.of(context)
                                            .colorScheme
                                            .background,
                                      ),
                                ),
                              ),
                            ],
                          ),
                          SizedBox(height: 20),
                          MyInputTextField(),
                          SizedBox(height: 20),
                          Row(
                            children: [
                              Text(
                                "Topics",
                                style: Theme.of(context)
                                    .textTheme
                                    .labelMedium
                                    ?.copyWith(
                                      color: Theme.of(context)
                                          .colorScheme
                                          .background,
                                    ),
                              ),
                            ],
                          ),
                          const SizedBox(height: 10),
                          SingleChildScrollView(
                            scrollDirection: Axis.horizontal,
                            child: Row(
                              children: categoryData
                                  .map((e) => CategoryWidget(
                                      iconPath: e["icon"]!,
                                      btnName: e["label"]!))
                                  .toList(),
                            ),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.all(10),
              child: Column(
                children: [
                  Row(
                    children: [
                      Text(
                        "Trending",
                        style: Theme.of(context).textTheme.labelMedium,
                      ),
                    ],
                  ),
                  SizedBox(height: 10),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: bookData
                          .map(
                            (e) => BookCard(
                              title: e.title!,
                              coverUrl: e.coverUrl!,
                              ontap: () {
                                Get.to(
                                  BookDetails(
                                    book: e,
                                ));
                              },
                            ),
                          )
                          .toList(),
                    ),
                  ),
                  SizedBox(height: 10),
                  Row(
                    children: [
                      Text(
                        "Your Interest",
                        style: Theme.of(context).textTheme.labelMedium,
                      ),
                    ],
                  ),
                  SizedBox(height: 10),
                  Column(
                      children: bookData
                          .map((e) => BookTile(
                              title: e.title!,
                              coverUrl: e.coverUrl!,
                              author: e.author!,
                              price: e.price!,
                              rating: e.rating!,
                              totalRating: e.numberofRating!, 
                              ontap: () {},))
                          .toList())
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
