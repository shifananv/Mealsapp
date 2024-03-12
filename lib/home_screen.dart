import 'package:flutter/material.dart';
import 'package:food/account_screen.dart';
import 'package:food/kart_screen.dart';
import 'package:food/outlet_card.dart';
import 'package:food/menu_category.dart';
import 'package:food/unavailable_screen.dart';

class SelectOutlet extends StatefulWidget {
  const SelectOutlet({Key? key}) : super(key: key);

  @override
  State<SelectOutlet> createState() => _SelectOutletState();
}

class _SelectOutletState extends State<SelectOutlet> {
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
                  MaterialPageRoute(builder: (context) => const KartScreen()));
            },
            icon: Image.asset('assets/images/Shopping_Cart.png'),
          ),
        ),
        actions: [
          const SizedBox(height: 10, width: 200),
          Padding(
            padding: const EdgeInsets.only(right: 11.0),
            child: GestureDetector(
              onTap: () {
                Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const AccountScreen()));
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
          children: [
            const SizedBox(
              height: 13,
              width: 10,
            ),
            const Padding(
              padding: EdgeInsets.only(right: 140.0),
              child: Text(
                'Select a Outlet Near You..!',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 17,
                  fontFamily: 'Montserrat',
                  fontWeight: FontWeight.w600,
                  height: 0,
                ),
              ),
            ),
            GestureDetector(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const UnavailabeScreen()));
                },
                child: const SizedBox(
                  height: 13,
                  width: 10,
                )),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: GestureDetector(
                onTap: () {
                  Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const UnavailabeScreen()));
                },
                child: Container(
                  width: 380,
                  height: 36,
                  decoration: ShapeDecoration(
                    color: Colors.white,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                  child: Row(
                    children: [
                      const SizedBox(width: 4,),
                      const Icon(Icons.search),
                      const SizedBox(width: 4,),
                      Text(
                          'Search for your location !',
                           style: TextStyle(
                            color: Colors.black.withOpacity(0.5),
                            fontSize: 15,
                            fontFamily: 'Montserrat',
                            fontWeight: FontWeight.w600,
                          ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Expanded(
              child: GridView.count(
                crossAxisCount: 2,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: OutletCard(
                      imagePath: 'assets/images/place.png',
                      outletName: 'Kannur',
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const MenuCategory()));
                      },
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: OutletCard(
                      imagePath: 'assets/images/place.png',
                      outletName: 'Thalassery',
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const MenuCategory()));
                      },
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: OutletCard(
                      imagePath: 'assets/images/place.png',
                      outletName: 'Payyannur',
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const MenuCategory()));
                      },
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: OutletCard(
                      imagePath: 'assets/images/place.png',
                      outletName: 'Thaliparamba',
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const MenuCategory()));
                      },
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: OutletCard(
                      imagePath: 'assets/images/place.png',
                      outletName: 'Koothuparamba',
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const MenuCategory()));
                      },
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: OutletCard(
                      imagePath: 'assets/images/place.png',
                      outletName: 'Eranholi',
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const MenuCategory()));
                      },
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 30),
              child: Container(
                width: 230,
                height: 44,
                decoration: ShapeDecoration(
                  color: Colors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(50),
                  ),
                ),
                child: const Padding(
                  padding: EdgeInsets.only(top: 7.0),
                  child: Text(
                    'Nothing near You ?\n Find Our Collaborative Outlets',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 12,
                      fontFamily: 'Montserrat',
                      fontWeight: FontWeight.w600,
                      height: 0,
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
