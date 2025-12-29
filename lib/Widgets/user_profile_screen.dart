import 'package:flutter/material.dart';
import 'userprofile/profile_avatar.dart';
import 'userprofile/info_card_stack.dart';
import 'userprofile/rounded_button.dart';
import 'userprofile/text_style/button_text_style.dart';
import 'userprofile/text_style/text_style.dart';
import '../items/contact_data.dart';

class UserprofileScreen extends StatelessWidget{
  final Contact contact;

  const UserprofileScreen({super.key, required this.contact});

  @override
  Widget build (BuildContext context){
    return Scaffold(
      backgroundColor: Colors.grey[100],
      appBar: AppBar(title: const Text('User Profile'), centerTitle: true ),
      body: SafeArea(
        child: SingleChildScrollView(
          padding: EdgeInsets.all(14),
          child: Center(
            child: ConstrainedBox(
              constraints: const BoxConstraints(maxWidth: 700),
              child: Container(
                padding: EdgeInsets.all(20),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  border: Border.all(color: Colors.grey.shade100, width: 2),
                  color: Colors.white,
                  boxShadow:[
                    BoxShadow(color: Colors.grey.withValues(alpha: 0.15), blurRadius: 8, offset: const Offset(0, 6))
                  ],
                
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const SizedBox(height: 10),
                    ProfileAvatar(imagePath: contact.image),
                    const SizedBox(height: 14),
                    NameStyle(contact.name),
                    const SizedBox(height: 6),
                    SubtitleStyle(contact.email),
                    SizedBox(height: 20,),
                    InfoCardStack(contactInfo: contact),
                    SizedBox(
                      width: double.infinity,
                      height: 56,
                      child: RoundedButton(
                        btnName: 'Edit Profile', 
                        callback: (){},
                        textStyle: buttonTextStyle
                      )
                     
                    ),
                  ],
                )
            )
          ),

        )
      ),
      ),
    );
  }
}

