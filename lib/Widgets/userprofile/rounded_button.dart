import 'package:flutter/material.dart';
import 'text_style/button_text_style.dart';

class RoundedButton extends StatelessWidget{
  final String btnName;
  final Icon? icon;
  final Color bgColor;
  final TextStyle? textStyle;
  final VoidCallback? callback;

  const RoundedButton({ super.key,
    required this.btnName,    // Create Constructor
    this.icon,
    this.bgColor =Colors.blue, 
    this.textStyle, 
    this.callback
  });
  
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: callback,

      style: ElevatedButton.styleFrom(
        backgroundColor: bgColor,
        shadowColor: Colors.grey[300],
        padding: EdgeInsets.symmetric(vertical: 2),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12)
        )
      ),

      child: icon!= null ? Row(
        children: [
          icon!,
          SizedBox(width: 12,),
          Text(btnName, style: buttonTextStyle),
        ],
      ): Text(btnName, style: buttonTextStyle),

      
    );
   
  }
  

}