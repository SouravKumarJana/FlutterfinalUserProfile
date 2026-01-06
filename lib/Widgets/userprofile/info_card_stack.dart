import 'package:flutter/material.dart';
import 'card.dart';
import '../../data/contact_data.dart';

class InfoCardStack extends StatelessWidget{
  final Contact contactInfo;
  const InfoCardStack({super.key, required this.contactInfo});
  @override
  Widget build(BuildContext context) {
   return Column(
    children: [
      InfoCard(icon: Icons.group, title: 'Followers', value: contactInfo.followers),
     InfoCard(icon: Icons.person_2, title: 'Following', value: contactInfo.following),
     InfoCard(icon: Icons.ice_skating, title: 'Posts', value:contactInfo.post),
    ]
  );
  }
}