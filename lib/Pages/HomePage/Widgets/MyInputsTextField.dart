import 'package:flutter/material.dart';

class MyInputTextField extends StatelessWidget {
  const MyInputTextField({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Theme.of(context).colorScheme.background,
      ),
      child: Row(
        children: [
          SizedBox(width: 20),
          const Icon(Icons.search),
          SizedBox(width: 10),
          Expanded(
            child: TextFormField(
              decoration: InputDecoration(
                hintText: "Search Books in Here....",
                border: OutlineInputBorder(
                  borderSide: BorderSide.none
                )
              ),
            ),
          ),
        ],
      ),
    );
  }
}