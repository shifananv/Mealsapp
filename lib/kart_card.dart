import 'package:flutter/material.dart';
import 'package:food/home_screen.dart';
import 'package:food/incrementer.dart';

class KartCard extends StatefulWidget {
  final String title;
  final String subtitle;

  const KartCard({Key? key, required this.title, required this.subtitle})
      : super(key: key);

  @override
  State<KartCard> createState() => _KartCardState();
}

class _KartCardState extends State<KartCard> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: GestureDetector(
        onTap: () {
          Navigator.push(context,
              MaterialPageRoute(builder: (context) => const SelectOutlet()));
        },
        child: Container(
          width: 323,
          height: 122,
          decoration: ShapeDecoration(
            color: Colors.white,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15),
            ),
          ),
          child: Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(right: 0.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(
                      height: 9,
                    ),
                    Row(
                      children: [
                        const SizedBox(
                          width: 15,
                        ),
                        Text.rich(
                          TextSpan(
                            children: [
                              TextSpan(
                                text: widget.title,
                                style: const TextStyle(
                                  color: Colors.black,
                                  fontSize: 20,
                                  fontFamily: 'Montserrat',
                                  fontWeight: FontWeight.w600,
                                  height: 0,
                                ),
                              ),
                              const WidgetSpan(
                                child: SizedBox(width: 14),
                              ),
                              TextSpan(
                                text: widget.subtitle,
                                style: const TextStyle(
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
                      ],
                    ),
                    const SizedBox(height: 13),
                    Center(
                      child: Row(
                        children: [
                          const SizedBox(
                            width: 15,
                          ),
                          const Padding(
                            padding: EdgeInsets.only(right: 0.0, left: 0),
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
                              containerColor: const Color(0xFFD9D9D9),
                              labelText: '3',
                              labelTextColor: Colors.black,
                              iconColor: Colors.black,
                            ),
                          )
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 28,
                    ),
                    const Row(
                      children: [
                        Padding(
                          padding: EdgeInsets.only(left: 130.0),
                          child: Text(
                            'Remove Item',
                            textAlign: TextAlign.end,
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 12,
                              fontFamily: 'Montserrat',
                              fontWeight: FontWeight.w500,
                              height: 0,
                            ),
                          ),
                        )
                      ],
                    ),
                  ],
                ),
              ),
              const SizedBox(
                width: 7,
              ),
              const Spacer(),
              Padding(
                padding: const EdgeInsets.only(right: 6.0),
                child: Container(
                  width: 106,
                  height: 107,
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
