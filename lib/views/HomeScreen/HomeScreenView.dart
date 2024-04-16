import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:todo_app_full_stack/data/Response/Status.dart';
import 'package:todo_app_full_stack/models/UserModel/UserModel.dart';
import 'package:todo_app_full_stack/res/component/CustomizedFeilds/SearchBar.dart';
import 'package:todo_app_full_stack/res/component/LoadingWidget/LoadingWidget.dart';
import 'package:todo_app_full_stack/res/component/TodoContainer/TodoContainer.dart';
import 'package:todo_app_full_stack/res/component/TodoEmpty/TodoEmpty.dart';
import 'package:todo_app_full_stack/utils/Colors/AppColor.dart';
import 'package:todo_app_full_stack/utils/Utils.dart';
import 'package:todo_app_full_stack/utils/extenshion/extenshion.dart';
import 'package:todo_app_full_stack/viewModel/CreateTodoViewModel/CreateTodoViewModel.dart';
import 'package:todo_app_full_stack/viewModel/HomeViewModel/HomeViewModel.dart';

class HomeScreenView extends StatefulWidget {
  final UserModel args;
  const HomeScreenView({super.key, required this.args});

  @override
  State<HomeScreenView> createState() => _HomeScreenViewState();
}

class _HomeScreenViewState extends State<HomeScreenView> {
  final TextEditingController _taskController = TextEditingController();
  final TextEditingController _descController = TextEditingController();
  final TextEditingController _searchController = TextEditingController();

  @override
  void dispose() {
    _taskController.dispose();
    _descController.dispose();
    _searchController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final createTodoProvider = Provider.of<CreateTodoViewModel>(context);
    final fetchProvider = Provider.of<HomeViewModel>(context);
    return Scaffold(
      appBar: AppBar(
        leading: const Icon(
          Icons.filter_list_outlined,
          color: AppColor.whiteColor,
        ),
        centerTitle: true,
        title: RichText(
          text: TextSpan(
            style: TextStyle(
              fontSize: context.mh * 0.028,
              fontWeight: FontWeight.bold,
            ),
            children: const <TextSpan>[
              TextSpan(
                text: 'Up',
                style: TextStyle(color: Colors.white),
              ),
              TextSpan(
                text: 'Todo',
                style: TextStyle(color: AppColor.btnColor),
              ),
            ],
          ),
        ),
        actions: [
          const Icon(
            Icons.account_circle_outlined,
            color: AppColor.whiteColor,
          ),
          0.03.pw(context),
        ],
      ),
      body: Column(
        children: [
          0.02.ph(context),
          SearchBarCustomized(controller: _searchController),
          0.03.ph(context),
          Expanded(
            child: ChangeNotifierProvider(
              create: (_) => HomeViewModel()..fetchAllTodoList(widget.args.id),
              child: RefreshIndicator(
                color: AppColor.btnColor,
                backgroundColor: AppColor.backgroundColor,
                strokeWidth: 2.0,
                triggerMode: RefreshIndicatorTriggerMode.anywhere,
                onRefresh: () {
                  return fetchProvider.fetchAllTodoList(widget.args.id);
                },
                child: Consumer<HomeViewModel>(
                  builder: (context, value, child) {
                    switch (value.apiResponse.status) {
                      case Status.loading:
                        return const LoadingWidget();
                      case Status.error:
                        return const Text('Error Occured');
                      case Status.completed:
                        if (value.apiResponse.data!.success!.isEmpty) {
                          return const TodoEmpty();
                        } else {
                          return ListView.builder(
                            physics: const BouncingScrollPhysics(
                              parent: AlwaysScrollableScrollPhysics(),
                            ),
                            itemCount: value.apiResponse.data!.success!.length,
                            itemBuilder: (context, index) {
                              var data =
                                  value.apiResponse.data!.success![index];
                              return TodoContainer(
                                title: data.title,
                                date: data.createdDate.toString(),
                                description: data.description,
                              );
                            },
                          );
                        }
                      default:
                        return Container();
                    }
                  },
                ),
              ),
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton.extended(
        backgroundColor: AppColor.floatingActionColor,
        onPressed: () {
          Utils.showAddTaskBottomSheet(
            context,
            () {
              createTodoProvider.createTodoApi(
                _taskController,
                _descController,
                widget.args.id.toString(),
                createTodoProvider.pickedDate.toIso8601String(),
                context,
              );
            },
            _taskController,
            _descController,
          );
          log(widget.args.id.toString());
        },
        label: Text(
          'Add Task',
          style: GoogleFonts.lato(
            fontSize: context.mh * 0.018,
          ),
        ),
        icon: const Icon(Icons.task),
        isExtended: true,
      ),
    );
  }
}
