import 'package:flutter/material.dart';

class Incrementer extends StatefulWidget {
  final Color containerColor;
  final String labelText;
  final Color labelTextColor;
  final Color iconColor;

    Incrementer({
    Key? key,
    required this.containerColor,
    required this.labelText,
    required this.labelTextColor,
    required this.iconColor,
  }) : super(key: key);

  @override
  State<Incrementer> createState() => _IncrementerState();
}

class _IncrementerState extends State<Incrementer> {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          width: 25,
          height: 26,
          decoration: ShapeDecoration(
            color: widget.containerColor,  
            shape: const RoundedRectangleBorder(side: BorderSide(width: 0.10)),
          ),
          child: IconButton(
            icon: Icon(Icons.remove, color: widget.iconColor), 
            onPressed: () {},
            iconSize: 14,
          ),
        ),
        Container(
          width: 25,
          height: 26,
          decoration: ShapeDecoration(
            color: widget.containerColor,  
            shape: const RoundedRectangleBorder(side: BorderSide(width: 0.10)),
          ),
          child: Padding(
            padding: const EdgeInsets.only(top: 2.0),
            child: Text(
              widget.labelText, 
              textAlign: TextAlign.center,
              style: TextStyle(color: widget.labelTextColor), 
            ),
          ),
        ),
        Container(
          width: 25,
          height: 26,
          decoration: ShapeDecoration(
            color: widget.containerColor,  
            shape: const RoundedRectangleBorder(side: BorderSide(width: 0.10)),
          ),
          alignment: Alignment.center,
          child: IconButton(
            alignment: Alignment.center,
            icon: Icon(Icons.add, color: widget.iconColor), 
            iconSize: 14,
            onPressed: () {},
          ),
        ),
      ],
    );
  }
}
