import 'package:flutter/material.dart';
import 'package:food/courses_category.dart';
import 'package:food/home_screen.dart';

class MenuCategory extends StatelessWidget {
  const MenuCategory({Key? key}) : super(key: key);

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
              MaterialPageRoute(builder: (context) => const SelectOutlet()));
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
      body: Container(
        color: const Color(0xFFD9D9D9),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(
              height: 15,
            ),
            const Padding(
              padding: EdgeInsets.only(left: 33.0),
              child: Text(
                'Select a Menu Category',
                textAlign: TextAlign.left,
                style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'Montserrat'),
              ),
            ),
            const SizedBox(
              height: 25,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  width: 141,
                  height: 135,
                  decoration: ShapeDecoration(
                    color: Colors.white,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15),
                    ),
                  ),
                  
                  child: Container(
                    width: 117,
                    height: 117,
                    child: Stack(
                      children: [
                        GestureDetector(
                          onTap: () {
                            Navigator.push(context, MaterialPageRoute(builder: (context) => const CoursesCategory()));
                          },
                          child: Container(
                            decoration: ShapeDecoration(
                              image: const DecorationImage(
                                image: AssetImage('assets/images/menu.png'),
                              ),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(15),
                              ),
                            ),
                          ),
                        ),
                        Positioned(
                          top: 95,
                          left: 24,
                          child: Container(
                            width: 94,
                            height: 23,
                            decoration:
                                const BoxDecoration(color: Colors.white),
                            child: const Text(
                              'Non-Veg',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 17,
                                fontFamily: 'Montserrat',
                                fontWeight: FontWeight.w600,
                                height: 0,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Container(
                  width: 141,
                  height: 135,
                  decoration: ShapeDecoration(
                    color: Colors.white,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15),
                    ),
                  ),
                  child: Container(
                    width: 117,
                    height: 117,
                    child: Stack(
                      children: [
                        GestureDetector(
                          onTap: () {
                            Navigator.push(context, MaterialPageRoute(builder: (context) => const CoursesCategory()));
                          },
                          child: Container(
                            decoration: ShapeDecoration(
                              image: const DecorationImage(
                                image: AssetImage('assets/images/menu.png'),
                              ),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(15),
                              ),
                            ),
                          ),
                        ),
                        Positioned(
                          top: 95,
                          left: 24,
                          child: Container(
                            width: 94,
                            height: 23,
                            decoration:
                                const BoxDecoration(color: Colors.white),
                            child: const Text(
                              'Veg',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 17,
                                fontFamily: 'Montserrat',
                                fontWeight: FontWeight.w600,
                                height: 0,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 52),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  width: 141,
                  height: 135,
                  decoration: ShapeDecoration(
                    color: Colors.white,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15),
                    ),
                  ),
                  child: Container(
                    width: 117,
                    height: 117,
                    child: Stack(
                      children: [
                        GestureDetector(
                          onTap: () {
                            Navigator.push(context, MaterialPageRoute(builder: (context) => const CoursesCategory()));
                          },
                          child: Container(
                            decoration: ShapeDecoration(
                              image: const DecorationImage(
                                image: AssetImage('assets/images/menu.png'),
                              ),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(15),
                              ),
                            ),
                          ),
                        ),
                        
                        Positioned(
                          top: 95,
                          left: 24, 
                          child: Container(
                            width: 94,
                            height: 23,
                            decoration:
                                const BoxDecoration(color: Colors.white),
                            child: const Text(
                              'Mixed',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 17,
                                fontFamily: 'Montserrat',
                                fontWeight: FontWeight.w600,
                                height: 0,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 190.0),
                  child: Container(
                    width: 320,
                    height: 50,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: const Center(
                        child: Text(
                      'Customize Menu',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 17,
                        fontFamily: 'Montserrat',
                        fontWeight: FontWeight.w600,
                        height: 0,
                      ),
                    )),
                  ),
                ),
              ],
            ),
            Row(
              children: [
                const SizedBox(
                  width: 140,
                ),
                Column(
                  children: [
                    const SizedBox(
                      height: 60,
                    ),
                    const Text(
                      'Powered by',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontFamily: 'Montserrat',
                        fontWeight: FontWeight.w500,
                        height: 0,
                      ),
                    ),
                    Container(
                      width: 115,
                      height: 64,
                      decoration: const BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage('assets/images/imiot_logo.png'),
                          fit: BoxFit.fill,
                        ),
                      ),
                    )
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
