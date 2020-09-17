// import 'package:flutter/material.dart';
// import 'package:meals/screens/favorites_screen.dart';
// import './categories_screen.dart';

// class TabsScreen extends StatefulWidget {
//   @override
//   _TabsScreenState createState() => _TabsScreenState();
// }

// class _TabsScreenState extends State<TabsScreen> {
//   @override
//   Widget build(BuildContext context) {
//     return DefaultTabController(
//       length: 2,
//       child: Scaffold(
//         appBar: AppBar(
//           title: Text("Meals"),
//           bottom: TabBar(tabs: [
//             Tab(
//               icon: Icon(
//                 Icons.category,
//               ),
//             ),
//             Tab(
//               icon: Icon(
//                 Icons.favorite,
//                 color: Colors.red,
//               ),
//               text: 'Favorites',
//             ),
//           ]),
//         ),
//         body: TabBarView(
//           children: [
//             CategoriesScreen(),
//             FavoritesScreen(),
//           ],
//         ),
//       ),
//     );
//   }
// }
