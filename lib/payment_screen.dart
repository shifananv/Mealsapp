import 'package:flutter/material.dart';
import 'package:food/home_screen.dart';

class PaymentScreen extends StatelessWidget {
  const PaymentScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xFF817400),
        leadingWidth: 360,
        leading: const Padding(
          padding: EdgeInsets.only(right: 284.0),
          child: null, 
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
      body: Center(
        child: Column(
          children: [
            const SizedBox(height: 15,),
            const Padding(
              padding: EdgeInsets.only(right:117.0),
              child: Text(
                'Select a Method of Payment',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 20,
                  fontFamily: 'Montserrat',
                  fontWeight: FontWeight.w600,
                  height: 0,
                ),
              ),
            ),
            const SizedBox(height: 225,),
            const Text(
              'Success !',
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.black,
                fontSize: 50,
                fontFamily: 'Montserrat',
                fontWeight: FontWeight.w600,
                height: 0,
              ),
            ),
            const SizedBox(height: 20,),
            const Text(
              'Payment Successfully Completed',
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.black,
                fontSize: 18,
                fontFamily: 'Montserrat',
                fontWeight: FontWeight.w600,
                height: 0,
              ),
            ),
            const SizedBox(height: 135,),
            const Text.rich(
              TextSpan(
                children: [
                  TextSpan(
                    text: 'You will be Redirected to Main Menu\nin ',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 13,
                      fontFamily: 'Montserrat',
                      fontWeight: FontWeight.w600,
                      height: 0,
                    ),
                  ),
                  TextSpan(
                    text: '05',
                    style: TextStyle(
                      color: Color(0xFF817400),
                      fontSize: 13,
                      fontFamily: 'Montserrat',
                      fontWeight: FontWeight.w600,
                      height: 0,
                    ),
                  ),
                  TextSpan(
                    text: ' Seconds',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 13,
                      fontFamily: 'Montserrat',
                      fontWeight: FontWeight.w600,
                      height: 0,
                    ),
                  ),
                ],
              ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 15,),
            const Text(
              'or',
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.black,
                fontSize: 13,
                fontFamily: 'Montserrat',
                fontWeight: FontWeight.w600,
                height: 0,
              ),
            ),
            const SizedBox(height: 12,),
            GestureDetector(
              onTap: () {
                 Navigator.push(context, MaterialPageRoute(builder: (context) => const SelectOutlet()));
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
                  padding: EdgeInsets.only(top:13.0),
                  child: Text(
                    'CONTINUE to HOME',
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
            const SizedBox(height: 55,),
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
            ),
          ],
        ),
      ),
    );
  }
}
