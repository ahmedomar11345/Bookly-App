import 'package:bookly_app/Features/home/presentation/views/widgets/custom_book_details_app_bar.dart';
import 'package:bookly_app/Features/home/presentation/views/widgets/custom_book_item.dart';
import 'package:bookly_app/core/utils/styles.dart';
import 'package:flutter/material.dart';

class BookDetailsViewBody extends StatelessWidget {
  const BookDetailsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30),
      child: Column(children: [
        const CustomBookDetailsAppBar(),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: width * .2),
          child: const CustomBookImage(),
        ),
        SizedBox(height: 43,),
        Text('Fundamentals for Beginners', 
        style: Styles.textStyle25.copyWith(
          fontWeight: FontWeight.bold,
          ),
          ),
        SizedBox(height: 6,),
        Opacity(
          opacity: .7,
          child: Text('ALEXANDER BELL', 
          style: Styles.textStyle18.copyWith(
            fontWeight: FontWeight.w500,
            fontStyle: FontStyle.italic,
          ),),
        ),
        ],
      ),
    );
  }
}

