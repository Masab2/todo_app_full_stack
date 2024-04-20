import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todo_app_full_stack/data/Response/Status.dart';
import 'package:todo_app_full_stack/res/component/LoadingWidget/LoadingWidget.dart';
import 'package:todo_app_full_stack/res/component/UserInfoListTile/UserInfoListTile.dart';
import 'package:todo_app_full_stack/utils/Colors/AppColor.dart';
import 'package:todo_app_full_stack/utils/Utils.dart';
import 'package:todo_app_full_stack/utils/extenshion/extenshion.dart';
import 'package:todo_app_full_stack/viewModel/ProfileViewModel/ProfileViewModel.dart';

class ProfileScreen extends StatefulWidget {
  final String args;
  const ProfileScreen({super.key, required this.args});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  void initState() {
    super.initState();
    // This is Called when the widget is initialized
    WidgetsBinding.instance.addPostFrameCallback(
      (timeStamp) {
        Provider.of<ProfileViewModel>(context, listen: false)
            .fetchUserProfile(widget.args);
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.symmetric(
                horizontal: context.mw * 0.05,
                vertical: context.mh * 0.03,
              ),
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                border: Border.all(
                  color: AppColor.btnColor,
                  width: context.mh * 0.002,
                ),
              ),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(context.mh * 0.15),
                child: Icon(
                  Icons.person,
                  color: AppColor.btnColor,
                  size: context.mh * 0.140,
                ),
              ),
            ),
            0.03.ph(context),
            Consumer<ProfileViewModel>(
              builder: (context, value, child) {
                switch (value.apiResponse.status) {
                  case Status.loading:
                    return const LoadingWidget();
                  case Status.completed:
                    var data = value.apiResponse.data?.success;
                    return Padding(
                      padding:
                          EdgeInsets.symmetric(horizontal: context.mw * 0.02),
                      child: Column(
                        children: [
                          UserInfoListTile(
                              icon: Icons.person,
                              title: 'UserName',
                              subtitle: data?.name ?? ''),
                          0.01.ph(context),
                          UserInfoListTile(
                              icon: Icons.email_rounded,
                              title: 'Email Address',
                              subtitle: data?.email ?? ''),
                          0.01.ph(context),
                          UserInfoListTile(
                              icon: Icons.event_available_outlined,
                              title: 'UserId',
                              subtitle: data?.id ?? ''),
                          0.01.ph(context),
                          UserInfoListTile(
                            icon: Icons.date_range,
                            title: 'Join Date',
                            subtitle: Utils.formattedDate(data?.createdAt ?? ''),
                          ),
                        ],
                      ),
                    );
                  case Status.error:
                    return ErrorWidget('Error Occured');
                  default:
                    return Container();
                }
              },
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: context.mw * 0.02),
              child: Column(
                children: [
                  0.01.ph(context),
                  LogOutListTile(
                    icon: Icons.logout,
                    title: 'LogOut',
                    ontap: () {
                      Utils.showBlurDialog(
                          context, 'LogOut', 'Are you Sure', 'No', 'Yes');
                    },
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
