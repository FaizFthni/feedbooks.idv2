import 'package:ebookpb/Components/BackButton.dart';
import 'package:ebookpb/Components/BookTile.dart';
import 'package:ebookpb/Models/Data.dart';
import 'package:ebookpb/Pages/AddNewBook/AddNewBook.dart';
import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get.dart';
import 'package:get/get_navigation/get_navigation.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Get.to(const AddNewBookPage());
        },
        child: Icon(
          Icons.add,
          color: Theme.of(context).colorScheme.background,
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              // height: 500,
              padding: const EdgeInsets.symmetric(vertical: 40, horizontal: 20),
              color: Theme.of(context).colorScheme.primary,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Expanded(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SizedBox(height: 20),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            MyBackButton(),
                            Text(
                              "My Profile",
                              style: Theme.of(context)
                                  .textTheme
                                  .bodyLarge
                                  ?.copyWith(
                                      color: Theme.of(context)
                                          .colorScheme
                                          .background),
                            ),
                            // SizedBox(width: 10)
                          ],
                        ),
                        SizedBox(height: 60),
                        Container(
                          padding: EdgeInsets.all(1),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(100),
                              border: Border.all(
                                width: 2,
                                color: Theme.of(context).colorScheme.background,
                              )),
                          child: Container(
                            width: 150,
                            height: 150,
                            child: ClipRRect(
                                borderRadius: BorderRadius.circular(100),
                                child: Image.asset(
                                  "Assets/Images/profil.jpg",
                                  fit: BoxFit.cover,
                                )),
                          ),
                        ),
                        SizedBox(height: 20),
                        Text(
                          "Sahrul Rizal",
                          style: Theme.of(context)
                              .textTheme
                              .bodyLarge
                              ?.copyWith(
                                  color:
                                      Theme.of(context).colorScheme.background),
                        ),
                        Text(
                          "zahrulputra03@gmail.com",
                          style:
                              Theme.of(context).textTheme.labelMedium?.copyWith(
                                    color: Theme.of(context)
                                        .colorScheme
                                        .onPrimaryContainer,
                                  ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10),
              child: Column(
                children: [
                  Row(
                    children: [
                      Text("Your Books",
                          style: Theme.of(context).textTheme.labelMedium),
                    ],
                  ),
                  SizedBox(height: 20),
                  Column(
                    children: bookData
                        .map((e) => BookTile(
                              title: e.title!,
                              coverUrl: e.coverUrl!,
                              author: e.author!,
                              price: e.price!,
                              rating: e.rating!,
                              totalRating: e.numberofRating!,
                              ontap: () {},
                            ))
                        .toList(),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
