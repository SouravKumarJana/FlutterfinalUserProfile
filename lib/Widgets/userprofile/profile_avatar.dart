import 'package:flutter/material.dart';

class ProfileAvatar  extends StatelessWidget{
 
  final String imagePath;

  const ProfileAvatar({super.key, required this.imagePath});

  @override
  Widget build(BuildContext context) {
    return ClipOval(
      child:Material(
        color: Colors.grey[100],
        child: Ink.image(
          image: AssetImage(imagePath),
          fit: BoxFit.cover,
          width: 150,
          height: 150,
          child: InkWell(
            onTap: (){},
            child:Semantics(label: "Profile Picture",)
          )
        ),
      )
    );
  }

}