import 'package:flutter/material.dart';
import 'package:food/menu_category.dart';
import 'package:food/course_card.dart';
import 'package:food/menu_apetizers.dart';

class CoursesCategory extends StatelessWidget {
  const CoursesCategory({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                      builder: (context) => const MenuCategory()));
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
      body: SingleChildScrollView(
        child: Container(
          color: const Color(0xFFD9D9D9),
          child: Column(
            children: [
              const SizedBox(
                height: 20,
              ),
              const Padding(
                padding: EdgeInsets.only(right: 147.0),
                child: Text(
                  'Select a Menu Category',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 17,
                    fontFamily: 'Montserrat',
                    fontWeight: FontWeight.w600,
                    height: 0,
                  ),
                ),
              ),
              const SizedBox(
                height: 35,
              ),
              Center(
                child: CourseCard(
                  imagePath: 'assets/images/menu.png',
                  coursename: 'Soups',
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const FoodItem()));
                  },
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              CourseCard(
                imagePath: 'assets/images/menu.png',
                coursename: 'Starters',
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const FoodItem()));
                },
              ),
              const SizedBox(
                height: 15,
              ),
              CourseCard(
                imagePath: 'assets/images/menu.png',
                coursename: 'Combo Meals',
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const FoodItem()));
                },
              ),
              const SizedBox(
                height: 15,
              ),
              CourseCard(
                imagePath: 'assets/images/menu.png',
                coursename: 'Jumbo Meals',
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const FoodItem()));
                },
              ),
              const SizedBox(
                height: 15,
              ),
              CourseCard(
                imagePath: 'assets/images/bread.png',
                coursename: 'Bread Items',
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const FoodItem()));
                },
              ),
              const SizedBox(
                height: 15,
              ),
              CourseCard(
                imagePath: 'assets/images/rice.png',
                coursename: 'Rice & Noodles',
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const FoodItem()));
                },
              ),
              const SizedBox(
                height: 15,
              ),
              CourseCard(
                imagePath: 'assets/images/curry.png',
                coursename: 'Curry Items',
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const FoodItem()));
                },
              ),
              const SizedBox(
                height: 15,
              ),
              CourseCard(
                imagePath: 'assets/images/salad.png',
                coursename: 'Salads',
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const FoodItem()));
                },
              ),
              const SizedBox(
                height: 15,
              ),
              CourseCard(
                imagePath: 'assets/images/continental.png',
                coursename: 'Continental',
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const FoodItem()));
                },
              ),
              const SizedBox(
                height: 15,
              ),
              CourseCard(
                imagePath: 'assets/images/continental.png',
                coursename: 'Traditional',
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const FoodItem()));
                },
              ),
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
      ),
    );
  }
}
