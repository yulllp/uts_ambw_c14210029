// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
// import 'package:uts_c14210029/home.dart';

// class DiscoveryPage extends StatefulWidget {
//   const DiscoveryPage({super.key});

//   @override
//   State<DiscoveryPage> createState() => _DiscoveryPageState();
// }

// class _DiscoveryPageState extends State<DiscoveryPage> {
//   int curInd = 1;
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(

//       body: Center(child: Text("Discovery Page")),
//       bottomNavigationBar: BottomNavigationBar(
//         currentIndex: curInd,
//         onTap: (int value) {
//           setState(() {
//             curInd = value;
//           });
//           switch (value) {
//             case 0:
//               child = MyHomePage();
//               break;
//             case 1:
//               Navigator.pushNamed(context, '/discovery');
//               break;
//             case 2:
//               Navigator.pushNamed(context, '/bookmark');
//               break;
//             case 3:
//               Navigator.pushNamed(context, '/top_foodie');
//               break;
//             case 4:
//               Navigator.pushNamed(context, '/profile');
//               break;
//           }
//         },
//         selectedItemColor: Colors.amber,
//         unselectedItemColor: Colors.grey,
//         showUnselectedLabels: true,
//         type: BottomNavigationBarType.fixed,
//         items: const [
//           BottomNavigationBarItem(
//             icon: Icon(Icons.home),
//             label: "Home",
//           ),
//           BottomNavigationBarItem(
//             icon: Icon(Icons.location_on_outlined),
//             label: "Discovery",
//           ),
//           BottomNavigationBarItem(
//             icon: Icon(Icons.bookmark_outline),
//             label: "Bookmark",
//           ),
//           BottomNavigationBarItem(
//             icon: Icon(Icons.emoji_events_outlined),
//             label: "Top Foodie",
//           ),
//           BottomNavigationBarItem(
//             icon: Icon(Icons.person_2_outlined),
//             label: "Profile",
//           ),
//         ],
//       ),
//     );
//   }
// }