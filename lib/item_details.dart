import 'package:flutter/material.dart';
import 'package:food/courses_category.dart';
import 'package:food/incrementer.dart';
import 'package:food/menu_apetizers.dart';

class ItemDetails extends StatelessWidget {
  const ItemDetails({super.key});

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
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const FoodItem()));
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
      body: Column(
        children: [
          const SizedBox(
            height: 35,
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                const SizedBox(
                  width: 60,
                ),
                Container(
                  width: 140,
                  height: 140,
                  decoration: ShapeDecoration(
                    image: const DecorationImage(
                      image: AssetImage('assets/images/soop1.png'),
                      fit: BoxFit.fill,
                    ),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                  ),
                ),
                const SizedBox(
                  width: 20,
                ),
                Container(
                  width: 140,
                  height: 140,
                  decoration: ShapeDecoration(
                    image: const DecorationImage(
                      image: AssetImage('assets/images/soop2.png'),
                      fit: BoxFit.fill,
                    ),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                  ),
                ),
                const SizedBox(
                  width: 20,
                ),
                Container(
                  width: 140,
                  height: 140,
                  decoration: ShapeDecoration(
                    image: const DecorationImage(
                      image: AssetImage('assets/images/soop3.png'),
                      fit: BoxFit.fill,
                    ),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                  ),
                ),
                const SizedBox(
                  width: 20,
                ),
                Container(
                  width: 140,
                  height: 140,
                  decoration: ShapeDecoration(
                    image: const DecorationImage(
                      image: AssetImage('assets/images/soop4.png'),
                      fit: BoxFit.fill,
                    ),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                  ),
                ),
                const SizedBox(
                  width: 20,
                ),
                Container(
                  width: 140,
                  height: 140,
                  decoration: ShapeDecoration(
                    image: const DecorationImage(
                      image: AssetImage('assets/images/soop5.png'),
                      fit: BoxFit.fill,
                    ),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Column(
            children: [
              const SizedBox(
                height: 25,
              ),
              const Padding(
                padding: EdgeInsets.only(right: 145.0),
                child: Text(
                  'Hot & Sour Chicken Soup',
                  style: TextStyle(
                    color: Color(0xFF250231),
                    fontSize: 20,
                    fontFamily: 'Montserrat',
                    fontWeight: FontWeight.w600,
                    height: 0,
                  ),
                ),
              ),
              const SizedBox(
                height: 13,
              ),
              Row(
                children: [
                  const Column(
                    children: [
                      Padding(
                        padding: EdgeInsets.only(left: 17.0),
                        child: Text(
                          'Chinese Cusine',
                          style: TextStyle(
                            color: Color(0xFF810046),
                            fontSize: 15,
                            fontFamily: 'Montserrat',
                            fontWeight: FontWeight.w600,
                            height: 0,
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 6,
                      ),
                      Padding(
                        padding: EdgeInsets.only(right: 10.0),
                        child: Text(
                          '100% Non-Veg',
                          style: TextStyle(
                            color: Color(0xFF810046),
                            fontSize: 12,
                            fontStyle: FontStyle.italic,
                            fontFamily: 'Montserrat',
                            fontWeight: FontWeight.w600,
                            height: 0,
                          ),
                        ),
                      ),
                    ],
                  ),
                  const Spacer(),
                  Padding(
                    padding: const EdgeInsets.only(right: 9.0),
                    child: Image.asset(
                      'assets/images/nonveg.png',
                      width: 36,
                      height: 36,
                      fit: BoxFit.cover,
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 11,
              ),
              const Padding(
                padding: EdgeInsets.only(right: 296),
                child: Text(
                  'Description',
                  style: TextStyle(
                    color: Color(0xFF645A01),
                    fontSize: 15,
                    fontFamily: 'Montserrat',
                    fontWeight: FontWeight.w600,
                    height: 0,
                  ),
                ),
              ),
              const SizedBox(
                height: 6,
              ),
              const Padding(
                padding: EdgeInsets.only(left: 18.0, right: 26),
                child: Text(
                  'Hot and Sour Chicken Soup: A fiery blend of tender chicken, mushrooms, bamboo shoots, carrots, and bell peppers in a rich broth. With a tantalizing mix of soy sauce, rice vinegar, and chili paste, this soup delivers a perfect balance of heat and tang. A deliciously satisfying culinary adventure in every spoonful.\n',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 10,
                    fontFamily: 'Montserrat',
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
              const SizedBox(
                height: 7,
              ),
               Row(
                children: [
                  const SizedBox(
                    width: 20,
                  ),
                  const Text(
                    'Add this Item',
                    style: TextStyle(
                      color: Color(0xFF810046),
                      fontSize: 12,
                      fontStyle: FontStyle.italic,
                      fontFamily: 'Montserrat',
                      fontWeight: FontWeight.w600,
                      height: 0,
                    ),
                  ),
                  const SizedBox(
                    width: 17,
                  ),
                  Incrementer(
                    containerColor: const Color(0xFF817400),
                    labelText: '3',
                    labelTextColor: Colors.white,
                    iconColor: Colors.white,
                  ),
                ],
              ),
              const SizedBox(
                height: 65,
              ),
              GestureDetector(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => const CoursesCategory()));
                },
                child: Container(
                  width: 256,
                  height: 44,
                  decoration: ShapeDecoration(
                    color: const Color(0xFF817400),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15),
                    ),
                  ),
                  child: const Padding(
                    padding: EdgeInsets.only(top: 10.0),
                    child: Text(
                      'Add More Dishes',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 15,
                        fontFamily: 'Montserrat',
                        fontWeight: FontWeight.w600,
                        height: 0,
                        letterSpacing: 0.75,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
