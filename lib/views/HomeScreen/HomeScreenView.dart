import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:slideable/slideable.dart';
import 'package:todo_app_full_stack/data/Response/Status.dart';
import 'package:todo_app_full_stack/models/UserModel/UserModel.dart';
import 'package:todo_app_full_stack/res/component/CustomizedFeilds/SearchBar.dart';
import 'package:todo_app_full_stack/res/component/LoadingWidget/LoadingWidget.dart';
import 'package:todo_app_full_stack/res/component/TodoContainer/TodoContainer.dart';
import 'package:todo_app_full_stack/res/component/TodoEmpty/TodoEmpty.dart';
import 'package:todo_app_full_stack/res/routes/RoutesNames.dart';
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
  void initState() {
    super.initState();
    // This is Called when the widget is initialized
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      Provider.of<HomeViewModel>(context, listen: false)
          .fetchAllTodoList(widget.args.id);
    });
  }

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
    final fetchProvider = Provider.of<HomeViewModel>(context,listen: true);
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
          InkWell(
            onTap: () {
              Navigator.pushNamed(
                context,
                RoutesNames.profileScreen,
                arguments: widget.args.id,
              );
            },
            child: const Icon(
              Icons.account_circle_outlined,
              color: AppColor.whiteColor,
            ),
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
                            var data = value.apiResponse.data!.success![index];
                            return Slideable(
                              items: <ActionItems>[
                                ActionItems(
                                  icon: const Icon(
                                    Icons.delete,
                                    color: Colors.red,
                                  ),
                                  onPress: () {},
                                  backgroudColor: Colors.transparent,
                                ),
                                ActionItems(
                                  icon: const Icon(
                                    Icons.edit,
                                    color: Colors.blue,
                                  ),
                                  onPress: () {},
                                  backgroudColor: Colors.transparent,
                                ),
                              ],
                              child: TodoContainer(
                                title: data.title,
                                date: data.createdDate.toString(),
                                description: data.description,
                              ),
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
        ],
      ),
      floatingActionButton: FloatingActionButton(
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
        tooltip: 'Add Task',
        foregroundColor: AppColor.whiteColor,
        shape: const StadiumBorder(),
        elevation: 5.0,
        isExtended: true,
        child: const Icon(Icons.task),
      ),
    );
  }
}
