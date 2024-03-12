import 'package:flutter/material.dart';
import 'package:food/home_screen.dart';

class AccountScreen extends StatelessWidget {
  const AccountScreen({Key? key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xFF817400),
        leadingWidth: 360,
        leading: Padding(
          padding: const EdgeInsets.only(right: 284.0),
          child: IconButton(
            onPressed: () {},
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
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 17.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 20),
            const Text(
              'My Profile',
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Color(0xFF250231),
                fontSize: 23,
                fontFamily: 'Montserrat',
                fontWeight: FontWeight.w600,
                letterSpacing: 1,
              ),
            ),
            const SizedBox(height: 23),
            const Text(
              'First Name',
              style: TextStyle(
                color: Color(0xFF250231),
                fontSize: 18,
                fontFamily: 'Montserrat',
                fontWeight: FontWeight.w600,
                letterSpacing: 0.75,
              ),
            ),
            const SizedBox(height: 8),
            Container(
              width: 394,
              height: 45,
              decoration: ShapeDecoration(
                color: Colors.white,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(5),
                ),
              ),
              child: const Padding(
                padding: EdgeInsets.only(top: 10, left: 10),
                child: Text(
                  'Akshay Ashokan Pothan',
                  style: TextStyle(
                    color: Color(0xFF250231),
                    fontSize: 18,
                    fontFamily: 'Montserrat',
                    fontWeight: FontWeight.w600,
                    letterSpacing: 0.75,
                  ),
                ),
              ),
            ),
            const SizedBox(height: 23),
            const Text(
              'Last Name',
              style: TextStyle(
                color: Color(0xFF250231),
                fontSize: 18,
                fontFamily: 'Montserrat',
                fontWeight: FontWeight.w600,
                letterSpacing: 0.75,
              ),
            ),
            const SizedBox(height: 8),
            Container(
              width: 394,
              height: 45,
              decoration: ShapeDecoration(
                color: Colors.white,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(5),
                ),
              ),
              child: const Padding(
                padding: EdgeInsets.only(top: 10, left: 10),
                child: Text(
                  'Manuel Jacob',
                  style: TextStyle(
                    color: Color(0xFF250231),
                    fontSize: 18,
                    fontFamily: 'Montserrat',
                    fontWeight: FontWeight.w600,
                    letterSpacing: 0.75,
                  ),
                ),
              ),
            ),
            const SizedBox(height: 23),
            const Row(
              children: [
                Text(
                  'Address',
                  style: TextStyle(
                    color: Color(0xFF250231),
                    fontSize: 18,
                    fontFamily: 'Montserrat',
                    fontWeight: FontWeight.w600,
                    letterSpacing: 0.75,
                  ),
                ),
                Spacer(),
                Text(
                  'Work',
                  style: TextStyle(
                    color: Color(0xFF250231),
                    fontSize: 18,
                    fontFamily: 'Montserrat',
                    fontWeight: FontWeight.w600,
                    letterSpacing: 0.75,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 8),
            Container(
              width:  double.infinity,
              height: 128,
              decoration: ShapeDecoration(
                color: Colors.white,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(5),
                ),
              ),
              child: const Padding(
                padding: EdgeInsets.only(top: 10, left: 10),
                child: Text(
                  'Imiot TechnoLabs,\nTechnology Business Incubator\nCollege of Engineering Thalassery\nEranholi P O - 670007',
                  style: TextStyle(
                    color: Color(0xFF250231),
                    fontSize: 18,
                    fontFamily: 'Montserrat',
                    fontWeight: FontWeight.w600,
                    letterSpacing: 0.75,
                  ),
                ),
              ),
            ),
            const SizedBox(height: 8),
            const Text(
              'Change',
              textAlign: TextAlign.right,
              style: TextStyle(
                color: Color(0xFF250231),
                fontSize: 15,
                fontFamily: 'Montserrat',
                fontWeight: FontWeight.w600,
                decoration: TextDecoration.underline,
                letterSpacing: 0.60,
              ),
            ),
            const SizedBox(height: 8),
            const Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text(
                  'Home',
                  style: TextStyle(
                    color: Color(0xFF250231),
                    fontSize: 18,
                    fontFamily: 'Montserrat',
                    fontWeight: FontWeight.w600,
                    letterSpacing: 0.75,
                  ),
                ),
              ],
            ),
            Container(
              width:  double.infinity,
              height: 150,
              decoration: ShapeDecoration(
                color: Colors.white,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(5),
                ),
              ),
              child: const Padding(
                padding: EdgeInsets.only(top: 10, left: 10),
                child: Text.rich(
                  TextSpan(
                    children: [
                      TextSpan(
                        text: 'Pothan’s\n“Gananaayakam”\n',
                        style: TextStyle(
                          color: Color(0xFF250231),
                          fontSize: 18,
                          fontFamily: 'Montserrat',
                          fontWeight: FontWeight.w600,
                          letterSpacing: 0.75,
                        ),
                      ),
                      TextSpan(
                        text: 'Opp. Pazhayatheru Sree Mahaganapathi Kshethram\n',
                        style: TextStyle(
                          color: Color(0xFF250231),
                          fontSize: 18,
                          fontFamily: 'Montserrat',
                          fontWeight: FontWeight.w600,
                          letterSpacing: 0.65,
                        ),
                      ),
                      TextSpan(
                        text: 'Pazhayatheru, Muzhappilangad 670662\n',
                        style: TextStyle(
                          color: Color(0xFF250231),
                          fontSize: 18,
                          fontFamily: 'Montserrat',
                          fontWeight: FontWeight.w600,
                          letterSpacing: 0.75,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            const SizedBox(height: 8),
            const Text(
              'Change',
              textAlign: TextAlign.right,
              style: TextStyle(
                color: Color(0xFF250231),
                fontSize: 15,
                fontFamily: 'Montserrat',
                fontWeight: FontWeight.w600,
                decoration: TextDecoration.underline,
                letterSpacing: 0.60,
              ),
            ),
            const SizedBox(height: 50),
            Center(
              child: GestureDetector(
                onTap: () {
                  Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const SelectOutlet()));
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
                    padding: EdgeInsets.only(top: 10),
                    child: Text(
                      'CONTINUE to HOME',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                        fontFamily: 'Montserrat',
                        fontWeight: FontWeight.w600,
                        letterSpacing: 0.75,
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
