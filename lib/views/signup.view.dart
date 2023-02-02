import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:smart_faucet_app/views/login.view.dart';

import '../utils/global.colors.dart';
import '../widgets/button.global.dart';
import '../widgets/social.login.dart';
import '../widgets/text.form.global.dart';

class SignUpView extends StatelessWidget {
  SignUpView({Key? key}) : super(key: key);
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController confirmPasswordController =
      TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Container(
            width: double.infinity,
            padding: const EdgeInsets.all(15.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Container(
                //   alignment: Alignment.center,
                //   child: Text(
                //     'Logo',
                //     style: TextStyle(
                //       color: GlobalColors.mainColor,
                //       fontSize: 35,
                //       fontWeight: FontWeight.bold,
                //     ),
                //   ),
                // ),

                // Faucet Icon
                Row(
                  children: [
                    Expanded(
                      child: Text(
                        'Smart Faucet Inc.'.toUpperCase(),
                        style: TextStyle(
                          color: GlobalColors.mainColor,
                          fontSize: 35,
                          fontWeight: FontWeight.bold,
                          letterSpacing: 3,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                    Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          SvgPicture.asset(
                            'assets/images/faucet.svg',
                            height: 50,
                            color: Colors.black,
                          ),
                        ]),
                  ],
                ),

                const SizedBox(height: 50),
                Text(
                  'Sign up to continue.',
                  style: TextStyle(
                    color: GlobalColors.textColor,
                    fontSize: 15,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                const SizedBox(height: 20),

                // Email Input
                TextFormGlobal(
                  controller: emailController,
                  obscure: false,
                  text: 'Email',
                  textInputType: TextInputType.emailAddress,
                ),

                const SizedBox(height: 20),
                //Password Input
                TextFormGlobal(
                  controller: passwordController,
                  obscure: true,
                  text: 'Password',
                  textInputType: TextInputType.text,
                ),

                const SizedBox(height: 20),
                //Confirm Password Input
                TextFormGlobal(
                  controller: confirmPasswordController,
                  obscure: true,
                  text: 'Confirm Password',
                  textInputType: TextInputType.text,
                ),

                const SizedBox(height: 15),
                //Sign Up Button
                InkWell(
                  onTap: () {
                    Get.to(LoginView());
                  },
                  child: Container(
                    alignment: Alignment.center,
                    height: 55,
                    decoration: BoxDecoration(
                      color: GlobalColors.mainColor,
                      borderRadius: BorderRadius.circular(6),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withOpacity(0.1),
                          blurRadius: 10,
                        ),
                      ],
                    ),
                    child: const Text(
                      'Sign Up',
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 30),
                //Social Logins
                SocialLogin(),
              ],
            ),
          ),
        ),
      ),
      bottomNavigationBar: Container(
        height: 50,
        color: Colors.white,
        alignment: Alignment.center,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'Already have an account?',
            ),
            InkWell(
              onTap: () {
                Get.to(LoginView());
              },
              child: Text(' SIGN IN ',
                  style: TextStyle(
                    color: GlobalColors.mainColor,
                  )),
            ),
          ],
        ),
      ),
    );
  }
}
