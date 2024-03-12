import 'package:flutter/material.dart';

class CourseCard extends StatelessWidget {
  final String imagePath;
  final String coursename;
  final VoidCallback onTap;

  const CourseCard({
    required this.imagePath,
    required this.coursename,
    required this.onTap,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: 362,
        height: 60,
        decoration: ShapeDecoration(
          color: Colors.white,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15),
          ),
        ),
        child: Row(
          children: [
            const SizedBox(width: 7,),
            Text(
              coursename,
              style: const TextStyle(
                color: Colors.black,
                fontSize: 17,
                fontFamily: 'Montserrat',
                fontWeight: FontWeight.w600,
                height: 0,
              ),
            ),
            const Spacer(),
            Container(
              width: 61,
              height: 51,
              decoration: ShapeDecoration(
                image: DecorationImage(
                  image: AssetImage(imagePath),
                  fit: BoxFit.fill,
                ),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15),
                ),
              ),
            ),
            const SizedBox(width: 6,),
          ],
        ),
      ),
    );
  }
}