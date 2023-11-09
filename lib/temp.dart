// import 'package:flutter/material.dart';

// class PopUp extends StatelessWidget {
//   void showpopup(BuildContext context) {
//     showDialog(
//         context: context,
//         builder: (BuildContext) {
//           return AlertDialog(
//             title: Text('Alert'),
//             content: Text('This is an alert!'),
//             actions: [
//               TextButton(
//                 onPressed: () {
//                   Navigator.pop(context);
//                 },
//                 child: Text('close'),
//               )
//             ],
//           );
//         });
//   }

//   const PopUp({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(title: Text("My widget")),
//       body: Center(
//         child: ElevatedButton(
//             onPressed: () {
//               Navigator.pop(context);
//             },
//             child: Text('pop')),
//       ),
//     );
//   }
// }
