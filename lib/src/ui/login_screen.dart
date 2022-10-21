// import 'package:first_project/src/utils/app_pages.dart';
// import 'package:flutter/material.dart';
// import 'package:go_router/go_router.dart';

// import '../utils/app_shared.dart';
// import '../utils/app_variable.dart';

// class LoginScreen extends StatefulWidget {
//   const LoginScreen({super.key});

//   @override
//   State<LoginScreen> createState() => _LoginScreenState();
// }

// class _LoginScreenState extends State<LoginScreen> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Column(
//         mainAxisAlignment: MainAxisAlignment.center,
//         children: [
//           Row(),
//           const Text('Login Screen'),
//           ElevatedButton(
//               onPressed: () {
//                 getIt.get<AppShared>().setLoginValue(true);
//                 context.push(AppPages.profile);
//               },
//               child: const Text('Login')),
//         ],
//       ),
//     );
//   }
// }
