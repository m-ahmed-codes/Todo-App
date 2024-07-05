import 'package:flutter/material.dart';

class Progressbar extends StatefulWidget {
   int  index;
   Progressbar({required  this.index});

  @override
  State<Progressbar> createState() => ProgressbarState();
}

class ProgressbarState extends State<Progressbar> {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: List.generate(3, (index) {
        return Container(
          width: 30,
          height: 5,
          margin: EdgeInsets.symmetric(horizontal: 5),
          // child: Text('${widget.index},, ${index}', style: TextStyle(color: Colors.amber),),
          decoration: BoxDecoration(
            color:  widget.index ==  index ? Colors.white : Colors.grey,
            borderRadius: BorderRadius.circular(15),
          ),
        );
      }),
    );
  }
}


