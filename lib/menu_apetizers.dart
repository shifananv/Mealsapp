import 'package:flutter/material.dart';
import 'package:food/apetizer_card.dart';
import 'package:food/courses_category.dart';
class FoodItem extends StatefulWidget {
  const FoodItem({super.key});

  @override
  State<FoodItem> createState() => _FoodItemState();
}

class _FoodItemState extends State<FoodItem> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xFF817400),
        leadingWidth: 360,
        leading: Padding(
          padding: const EdgeInsets.only(right: 284.0),
          child: IconButton(
            onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const CoursesCategory()));
            },
            icon: Image.asset('assets/images/backbutton.png'),
          ),
        ),
        actions: [
          const SizedBox(height: 10, width: 200),
          Padding(
            padding: const EdgeInsets.only(right: 11.0),
            child: GestureDetector(
              onTap: () {
                print('Profile picture pressed');
              },
              child: Container(
                width: 39,
                height: 39,
                decoration: const ShapeDecoration(
                  image: DecorationImage(
                    image: AssetImage('assets/images/profile.gif'),
                    fit: BoxFit.fill,
                  ),
                  shape: CircleBorder(),
                ),
              ),
            ),
          )
        ],
      ),
      body:  SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(height: 35,),
            const ApetizerCard(),
            const SizedBox(height: 15,),
            const ApetizerCard(),
            const SizedBox(height: 15,),
            const ApetizerCard(),
            const SizedBox(height: 15,),
            const ApetizerCard(),
            const SizedBox(height: 15,),
            const ApetizerCard(),
            const SizedBox(height: 15,),
            const ApetizerCard(),
            const SizedBox(height: 15,),
            const ApetizerCard(),
            Container(
                  width: 325,
                  height: 260,
                  decoration: ShapeDecoration(
                    color: const Color(0xFFD9D9D9),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15),
                    ),
                  ),
                )
          ],
        ),
      ),
    );
  }
}