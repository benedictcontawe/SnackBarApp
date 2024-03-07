import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_storage/controllers/login_controller.dart';
import 'package:getx_storage/views/base_view.dart';

class LoginPage extends BaseView<LoginController> {
  
  const LoginPage( { super.key } );
  
  @override
  Widget build(BuildContext context) {
    return Scaffold (
      backgroundColor: Colors.grey,
      body: Center (
        child: Padding (
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const FlutterLogo (
                size: 80,
              ),
              const SizedBox(height: 20),
              TextField (
                controller: controller.emailController,
                decoration: InputDecoration (
                  hintText: 'Email',
                  prefixIcon: const Icon(Icons.email),
                  filled: true,
                  fillColor: Colors.white,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide.none,
                  ),
                ),
              ),
              const SizedBox(height: 10),
              Obx(() => TextField (
                controller: controller.passwordController,
                obscureText: controller.observePasswordHidden().isTrue,
                decoration: InputDecoration (
                  hintText: 'Password',
                  prefixIcon: const Icon(Icons.lock),
                  filled: true,
                  fillColor: Colors.white,
                  border: OutlineInputBorder (
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide.none,
                  ),
                  suffixIcon: InkWell (
                    onTap: () {
                      controller.onTogglePasswordVisibility();
                    },
                    child: controller.observePasswordHidden().isTrue ? const Icon(Icons.visibility) : const Icon(Icons.visibility_off),
                  ),
                ),
              ),),
              const SizedBox(height: 20),
              ElevatedButton (
                onPressed: () {
                  controller.onCheckCredential();
                },
                child: const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 40, vertical: 12),
                  child: Text('Login'),
                ),
              ),
              const SizedBox(height: 20),
              ElevatedButton (
                onPressed: () {
                  controller.launchRegister();
                },
                child: const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 40, vertical: 12),
                  child: Text('Go to Register'),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}