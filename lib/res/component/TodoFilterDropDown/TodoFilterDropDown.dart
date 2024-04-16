// import 'package:flutter/material.dart';
// import 'package:provider/provider.dart';
// import 'package:todo_app_full_stack/data/Response/Status.dart';
// import 'package:todo_app_full_stack/utils/Colors/AppColor.dart';
// import 'package:todo_app_full_stack/viewModel/HomeViewModel/HomeViewModel.dart';

// class TodoFilterDropdown extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       decoration: BoxDecoration(
//         color: AppColor.backgroundColor, // Background color
//         borderRadius:
//             BorderRadius.circular(10.0), // Optional: Add border radius
//       ),
//       padding: EdgeInsets.symmetric(horizontal: 16.0),
//       child: Consumer<HomeViewModel>(
//         builder: (context, filterViewModel, _) => DropdownButton<String>(
//           value: filterViewModel.selectedFilter,
//           icon: const Icon(Icons.arrow_drop_down, color: Colors.white),
//           iconSize: 24,
//           elevation: 16,
//           style: TextStyle(color: Colors.white),
//           underline: Container(
//             height: 2,
//             color: Colors.transparent,
//           ),
//           onChanged: (String? newValue) {
//             filterViewModel.setselectedFilter(newValue ?? '');
//           },
//           items: 
//         ),
//       ),
//     );
//   }
// }
