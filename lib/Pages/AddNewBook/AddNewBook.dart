import 'package:ebookpb/Components/BackButton.dart';
import 'package:ebookpb/Components/MultiLineTextFormField.dart';
import 'package:ebookpb/Components/MyTextFormField.dart';
import 'package:flutter/material.dart';

class AddNewBookPage extends StatelessWidget {
  const AddNewBookPage({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController controller = TextEditingController();
    return Scaffold(
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
                              "Add New Book",
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
                        const SizedBox(height: 60),
                        Container(
                          height: 190,
                          width: 150,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: Theme.of(context).colorScheme.background,
                          ),
                          child: const Icon(
                            Icons.add,
                            size: 30,
                          ),
                        ),
                        const SizedBox(height: 20),
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
                      Expanded(
                        child: Container(
                          padding: const EdgeInsets.all(16),
                          decoration: BoxDecoration(
                            color: Theme.of(context).colorScheme.primary,
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(
                                Icons.upload_sharp,
                                color: Theme.of(context).colorScheme.background,
                              ),
                              const SizedBox(width: 8),
                              Text(
                                "Book PDF",
                                style: Theme.of(context)
                                    .textTheme
                                    .bodyLarge
                                    ?.copyWith(
                                      color: Theme.of(context)
                                          .colorScheme
                                          .background,
                                    ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(width: 10),
                      Expanded(
                        child: Container(
                          padding: EdgeInsets.all(16),
                          decoration: BoxDecoration(
                            color: Theme.of(context).colorScheme.primary,
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(
                                Icons.upload_sharp,
                                color: Theme.of(context).colorScheme.background,
                              ),
                              SizedBox(width: 8),
                              Text(
                                "Book Audio",
                                style: Theme.of(context)
                                    .textTheme
                                    .bodyLarge
                                    ?.copyWith(
                                      color: Theme.of(context)
                                          .colorScheme
                                          .background,
                                    ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 10),
                  MyTextFormField(
                    hintText: "Book title",
                    icon: Icons.book,
                    controller: controller,
                  ),
                  SizedBox(height: 10),
                  MultiLineTextFormField(
                      hintText: "Book Description", controller: controller),
                  SizedBox(height: 10),
                  MyTextFormField(
                    hintText: "Author Name",
                    icon: Icons.copyright,
                    controller: controller,
                  ),
                  SizedBox(height: 10),
                  MyTextFormField(
                    hintText: "About Name",
                    icon: Icons.copyright,
                    controller: controller,
                  ),
                  SizedBox(height: 10),
                  Row(
                    children: [
                      Expanded(
                        child: MyTextFormField(
                          hintText: "Price",
                          icon: Icons.attach_money_outlined,
                          controller: controller,
                        ),
                      ),
                      SizedBox(width: 10),
                      Expanded(
                        child: MyTextFormField(
                          hintText: "Pages",
                          icon: Icons.file_copy_outlined,
                          controller: controller,
                        ),
                      )
                    ],
                  ),
                  SizedBox(height: 10),
                  Row(
                    children: [
                      Expanded(
                        child: MyTextFormField(
                          hintText: "Language",
                          icon: Icons.translate,
                          controller: controller,
                        ),
                      ),
                      SizedBox(width: 10),
                      Expanded(
                        child: MyTextFormField(
                          hintText: "Audio Len",
                          icon: Icons.audiotrack,
                          controller: controller,
                        ),
                      )
                    ],
                  ),
                  SizedBox(height: 20),
                  Row(
                    children: [
                      Expanded(
                        child: Container(
                          padding: EdgeInsets.all(16),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            border: Border.all(
                              width: 2,
                              color: Theme.of(context).colorScheme.primary,
                            ),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(
                                Icons.close,
                                color: Theme.of(context).colorScheme.primary,
                              ),
                              SizedBox(width: 8),
                              Text(
                                "Cancel",
                                style: Theme.of(context)
                                    .textTheme
                                    .bodyLarge
                                    ?.copyWith(
                                      color:
                                          Theme.of(context).colorScheme.primary,
                                    ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(width: 10),
                      Expanded(
                        child: Container(
                          padding: EdgeInsets.all(16),
                          decoration: BoxDecoration(
                            color: Theme.of(context).colorScheme.primary,
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(
                                Icons.upload_sharp,
                                color: Theme.of(context).colorScheme.background,
                              ),
                              SizedBox(width: 8),
                              Text(
                                "Upload",
                                style: Theme.of(context)
                                    .textTheme
                                    .bodyLarge
                                    ?.copyWith(
                                      color: Theme.of(context)
                                          .colorScheme
                                          .background,
                                    ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

// 3.38.09
