import 'package:flutter/material.dart';
import 'package:food/kart_card.dart';
import 'package:food/payment_screen.dart';

class KartScreen extends StatefulWidget {
  const KartScreen({super.key});

  @override
  State<KartScreen> createState() => _KartScreenState();
}

class _KartScreenState extends State<KartScreen> {
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
      body: Column(
        children: [
          const SizedBox(
            height: 30,
          ),
          const KartCard(
            title: 'Lollipop',
  subtitle: 'Chicken',
          ),
          const SizedBox(
            height: 34,
          ),
          const KartCard(
            title: 'Alfaham',
  subtitle: 'Full Chicken',
          ),
          const SizedBox(
            height: 34,
          ),
          const KartCard(
            title: 'Biriyani',
  subtitle: 'Chicken',
          ),
          const SizedBox(
            height: 34,
          ),
          const KartCard(
            title: 'Biriyani',
  subtitle: 'Beef',
          ),
          const SizedBox(height: 90,),
          GestureDetector(
            onTap: () {
               Navigator.push(context, MaterialPageRoute(builder: (context) => const PaymentScreen()));
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
              child:
               const Padding(
                padding: EdgeInsets.only(top:11.0),
                child: Text(
                  'CONTINUE to PAYMENT',
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
          )
        ],
      ),
    );
  }
}
