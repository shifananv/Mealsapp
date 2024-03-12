import 'package:flutter/material.dart';

class OutletCard extends StatelessWidget {
  final String imagePath;
  final String outletName;
  final VoidCallback onTap;

  const OutletCard({
    required this.imagePath,
    required this.outletName,
    required this.onTap,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: 141,
        height: 135,
        decoration: ShapeDecoration(
        color: Colors.white,
        shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15),
),
),
        child: Card(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image(
                image: AssetImage(imagePath),
                height: 84,
                width: 88,
                fit: BoxFit.fill,
              ),
              Text(outletName),
            ],
          ),
        ),
      ),
    );
  }
}