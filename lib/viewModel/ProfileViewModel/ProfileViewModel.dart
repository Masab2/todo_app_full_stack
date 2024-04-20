import 'package:flutter/material.dart';
import 'package:todo_app_full_stack/data/Response/ApiResponse.dart';
import 'package:todo_app_full_stack/models/ProfileModel/profile_model.dart';
import 'package:todo_app_full_stack/repository/ProfileRepo/ProfileRepo.dart';

class ProfileViewModel with ChangeNotifier {
  final ProfileRepo repo = ProfileRepo();
  ApiResponse<ProfileModelResponse> apiResponse = ApiResponse.loading();
  final List<IconData> iconList = [
    Icons.person,
    Icons.email,
    Icons.description_rounded,
  ];

  setProfileData(ApiResponse<ProfileModelResponse> response) {
    apiResponse = response;
    notifyListeners();
  }

  // Hit The Api
  Future<void> fetchUserProfile(userId) async {
    setProfileData(ApiResponse.loading());
    repo.fetchUserProfile(userId).then((value) {
      setProfileData(ApiResponse.completed(value));
    }).onError((error, stackTrace) {
      setProfileData(ApiResponse.error(error.toString()));
    });
  }
}
