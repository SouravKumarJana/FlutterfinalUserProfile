import 'package:flutter/material.dart';

class BarElement extends StatelessWidget{
  final String? name;
  final Icon icon;
  final TextStyle textStyle;
  final VoidCallback callback;

  const BarElement({super.key, 
  this.name, 
  required this.icon, 
  required this.textStyle, 
  required this.callback
});



@override
  Widget build(BuildContext context) {
    
    return InkWell(
        onTap: callback,
        child: Column(
            children: [
                icon,
                const SizedBox(height: 6),
                if(name!= null )...[
                  Text(name!, style: textStyle),
                ]
            ],
        ),
    );
  }

}

// // import 'package:flutter/material.dart';
// // import 'text_style_widgets/button_text_style.dart';

// // class RoundedButton extends StatelessWidget{
// //   final String btnName;
// //   final Icon? icon;
// //   final Color bgColor;
// //   final TextStyle? textStyle;
// //   final VoidCallback? callback;

// //   const RoundedButton({ super.key,
// //     required this.btnName,    // Create Constructor
// //     this.icon,
// //     this.bgColor =Colors.blue, 
// //     this.textStyle, 
// //     this.callback
// //   });
  
// //   @override
// //   Widget build(BuildContext context) {
// //     return ElevatedButton(
// //       onPressed: callback,

// //       style: ElevatedButton.styleFrom(
// //         backgroundColor: bgColor,
// //         shadowColor: Colors.grey[300],
// //         padding: EdgeInsets.symmetric(vertical: 2),
// //         shape: RoundedRectangleBorder(
// //           borderRadius: BorderRadius.circular(12)
// //         )
// //       ),

// //       child: icon!= null ? Row(
// //         children: [
// //           icon!,
// //           SizedBox(width: 12,),
// //           Text(btnName, style: buttonTextStyle),
// //         ],
// //       ): Text(btnName, style: buttonTextStyle),

      
// //     );
   
// //   }
  

// // }