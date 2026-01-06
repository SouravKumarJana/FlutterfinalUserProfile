import 'package:flutter/material.dart';
import '../data/contact_data.dart';
import 'user_profile_screen.dart';

class ContactList extends StatelessWidget {
  const ContactList({super.key});

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
      child: ListView.separated(

        itemCount: contacts.length,
        
        separatorBuilder: (_, __) => const Divider(height: 0.2, thickness: 0.2,),
        
        itemBuilder: (context, index) {
          final contact = contacts[index];
          return ListTile(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (_) =>
                      UserprofileScreen(contact: contact),
                ),
              );
            },
            title: Text(contact.name),
            trailing: const Icon(Icons.person_outline),
          );
        },
      ),
    );
  }
}



// class ContactList extends StatelessWidget {
//   const ContactList({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return ColoredBox(
//       color: const Color.fromARGB(255, 255, 255, 255),
//       child: ListView.separated(
//         itemCount: contacts.length,
      
//         separatorBuilder: (context, index) => const Divider(
//           height: 0.2,
//           thickness: 0.2,
//         ),
      
//         itemBuilder: (context, index) {
//           return Material(
//               child: InkWell(
//                 onTap: (){
//                   Navigator.push(context, 
//                   MaterialPageRoute(
//                     builder: (context) => UserprofileScreen(contact: contacts[index] )
//                     ),
//                   ),
//                 },
//                 child: Padding(
//                   padding: const EdgeInsets.all(5),
//                   child: ListTile(
//                     title: Text(contacts[index].name),
//                     trailing: const Icon(Icons.person_outline),
                    
//                   ),
//                 ),
                
//               ),
//             );
//         },
//       ),
//     );
//   }
// }
