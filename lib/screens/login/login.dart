import 'package:cblaze/screens/login/login_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/instance_manager.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final _controller = Get.find<LoginController>();
  final _formKey = GlobalKey<FormState>();
  bool _isObscure = true;
  final _usernameController = TextEditingController();
  final _passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Login')),
      body: SafeArea(
        child: Form(
          key: _formKey,
          child: Padding(
            padding: const EdgeInsets.all(12.0),
            child: Center(
                child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                TextFormField(
                  controller: _usernameController,
                  keyboardType: TextInputType.emailAddress,
                  autovalidateMode: AutovalidateMode.onUserInteraction,
                  decoration: InputDecoration(
                      prefixIcon: const Icon(Icons.verified_user),
                      labelText: 'Username',
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(15.0))),
                  validator: (value) {
                    if ((value?.length)! < 5) {
                      return 'Username length cannot be less than 5';
                    }
                    return null;
                  },
                ),
                const SizedBox(height: 12.0),
                TextFormField(
                    controller: _passwordController,
                    obscureText: _isObscure ? true : false,
                    keyboardType: TextInputType.number,
                    autovalidateMode: AutovalidateMode.onUserInteraction,
                    decoration: InputDecoration(
                        prefixIcon: const Icon(Icons.lock),
                        labelText: 'Password',
                        suffixIcon: IconButton(
                          icon: Icon(_isObscure
                              ? Icons.visibility
                              : Icons.visibility_off),
                          onPressed: () {
                            setState(() {
                              _isObscure = !_isObscure;
                            });
                          },
                        ),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(15.0))),
                    validator: (value) {
                      if ((value?.length)! < 6) {
                        return 'Password length cannot be less than 5';
                      }
                      return null;
                    }),
                const SizedBox(height: 15.0),
                ElevatedButton(
                    onPressed: () async {
                      if (_usernameController.text.isNotEmpty &&
                          _passwordController.text.isNotEmpty) {
                        await _controller.login(
                            username: _usernameController.text.trim(),
                            password: _passwordController.text.trim());
                      }
                    },
                    style:
                        ElevatedButton.styleFrom(shape: const StadiumBorder()),
                    child: const Padding(
                      padding: EdgeInsets.all(12.0),
                      child: Text(
                        'Login',
                        style: TextStyle(fontSize: 16.0),
                      ),
                    ))
              ],
            )),
          ),
        ),
      ),
    );
  }
}
