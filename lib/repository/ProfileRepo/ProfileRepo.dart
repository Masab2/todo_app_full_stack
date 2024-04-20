import 'package:todo_app_full_stack/data/Network/BaseApiServices.dart';
import 'package:todo_app_full_stack/data/Network/NetworkApiServices.dart';
import 'package:todo_app_full_stack/models/ProfileModel/profile_model.dart';
import 'package:todo_app_full_stack/utils/AppUrl/AppUrl.dart';

class ProfileRepo {
  final BaseApi _api = NetworkApiServices();

  Future<ProfileModelResponse> fetchUserProfile(userId) async {
    dynamic response =
        await _api.getGetApiServies(AppUrl.getProfileUrl(userId));
    return ProfileModelResponse.fromJson(response);
  }
}
