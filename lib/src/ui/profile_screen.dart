// import 'package:flutter/material.dart';
// import 'package:go_router/go_router.dart';

// import '../utils/app_pages.dart';
// import '../utils/app_shared.dart';
// import '../utils/app_variable.dart';

// class ProfileScreen extends StatefulWidget {
//   const ProfileScreen({super.key});

//   @override
//   State<ProfileScreen> createState() => _ProfileScreenState();
// }

// class _ProfileScreenState extends State<ProfileScreen> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Column(
//         mainAxisAlignment: MainAxisAlignment.center,
//         children: [
//           Row(),
//           const Text('Profile screen'),
//           ElevatedButton(
//               onPressed: () {
//                 getIt.get<AppShared>().setLoginValue(false);
//                 context.push(AppPages.home);
//               },
//               child: const Text('Log out'))
//         ],
//       ),
//     );
//   }
// }
