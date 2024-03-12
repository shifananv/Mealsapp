import 'package:flutter/material.dart';
import 'package:food/incrementer.dart';
import 'package:food/item_details.dart';

class ApetizerCard extends StatefulWidget {
  const ApetizerCard({super.key});

  @override
  State<ApetizerCard> createState() => _ApetizerCardState();
}

class _ApetizerCardState extends State<ApetizerCard> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: GestureDetector(
        onTap: () {
          Navigator.push(context,
              MaterialPageRoute(builder: (context) => const ItemDetails()));
        },
        child: Container(
          width: 362,
          height: 77,
          decoration: ShapeDecoration(
            color: Colors.white,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15),
            ),
          ),
          child: Row(
            children: [
               Column(
                children: [
                  const Padding(
                    padding: EdgeInsets.only(left: 19.0, top: 6),
                    child: Text.rich(
                      TextSpan(
                        children: [
                          TextSpan(
                            text: 'Hot & Sour ',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 20,
                              fontFamily: 'Montserrat',
                              fontWeight: FontWeight.w600,
                              height: 0,
                            ),
                          ),
                          TextSpan(
                            text: 'Chicken',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 15,
                              fontFamily: 'Montserrat',
                              fontWeight: FontWeight.w600,
                              height: 0,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(height: 10),
                  Center(
                    child: Row(
                      children: [
                        const Padding(
                          padding: EdgeInsets.only(right: 0.0, left: 1),
                          child: Text(
                            'Qty',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 15,
                              fontFamily: 'Montserrat',
                              fontWeight: FontWeight.w600,
                              height: 0,
                            ),
                          ),
                        ),
                        const SizedBox(
                          width: 42,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(right: 0.0),
                          child: Incrementer(
                            containerColor: Color(0xFFD9D9D9), 
                            labelText:'3',
                            labelTextColor: Colors.black,
                            iconColor:Colors.black ,
                          ),
                        )
                      ],
                    ),
                  ),
                ],
              ),
              const Spacer(),
              Padding(
                padding: const EdgeInsets.only(right: 6.0),
                child: Container(
                  width: 81,
                  height: 68,
                  decoration: ShapeDecoration(
                    image: const DecorationImage(
                      image: AssetImage('assets/images/menu.png'),
                      fit: BoxFit.fill,
                    ),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
