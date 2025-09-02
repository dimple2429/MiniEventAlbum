import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

class AuthController extends GetxController{
  var isLoading = false.obs;
  var isLogin = true.obs;

  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();

  Future<void> authenticate() async{
    final email = _emailController.text;
    final password = _passwordController.text;
    final supabase = Supabase.instance.client;

    try {
      isLoading(true);
      if (isLogin.value) {
        final response = await supabase.auth.signInWithPassword(
          email: email,
          password: password,
        );
        if (response.error != null) {
          throw response.error!;
        }
        Get.offAllNamed('/dashboard');
      } else {
        final response = await supabase.auth.signUp(
          email: email,
          password: password,
        );
        if (response.error != null) {
          throw response.error!;
        }
        Get.offAllNamed('/dashboard');
      }
    } catch (error) {
      Get.snackbar('Error', error.toString(), snackPosition: SnackPosition.BOTTOM);
    } finally {
      isLoading(false);
    }
  }

  @override
  void onClose() {
    _emailController.dispose();
    _passwordController.dispose();
    super.onClose();
  }
