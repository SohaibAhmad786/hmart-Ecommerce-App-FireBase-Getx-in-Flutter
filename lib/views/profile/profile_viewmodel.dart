import 'package:get/get.dart';
import 'package:h_mart/consts/consts.dart';
import 'package:h_mart/consts/global_variables.dart';
import 'package:h_mart/views/edit_profile/edit_profile_view.dart';
import 'package:h_mart/views/login/login_view.dart';
import 'package:h_mart/views/profile/profile_model.dart';

class ProfileViewModel extends GetxController {
  Rx<ProfileModel> profileModel = ProfileModel().obs;

  @override
  void onInit() {
    super.onInit();
    getProfileDetailsFromFireBase();
  }

  signOutMehtod() async {
    try {
      auth.signOut();
    } catch (e) {
      VxToast.show(Get.context!, msg: e.toString());
    }
  }

  logoutBtn() async {
    GlobalVariables.showLoader.value = true;
    signOutMehtod();
    GlobalVariables.showLoader.value = false;
    Get.offAll(() => LoginView());
  }

  getProfileDetailsFromFireBase() async {
    var store = firestore.collection(userCollecetion).doc(currentUser!.uid);
    await store.get().then((value) {
      profileModel.value = ProfileModel.fromJson(value.data()!);
    });
  }

  editBtn() {
    Get.to(() => EditProfileView(), arguments: {'data': profileModel.value});
  }
}
