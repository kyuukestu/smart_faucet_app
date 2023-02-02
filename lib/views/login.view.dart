import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:smart_faucet_app/utils/global.colors.dart';
import 'package:smart_faucet_app/views/home.view.dart';
import 'package:smart_faucet_app/views/signup.view.dart';
import 'package:smart_faucet_app/widgets/button.global.dart';
import 'package:smart_faucet_app/widgets/text.form.global.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../widgets/social.login.dart';

class LoginView extends StatelessWidget {
  LoginView({Key? key}) : super(key: key);
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final String faucet = 'assets/faucet.svg';

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

                //Header (Faucet Icon & Company Name)
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
                      ],
                    ),
                  ],
                ),

                const SizedBox(height: 50),
                Text(
                  'Log in to continue.',
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

                const SizedBox(height: 15),
                //Login in Button
                InkWell(
                  onTap: () {
                    Get.to(HomeView());
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
                      'Sign In',
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
              'Don\'t have an account?',
            ),
            InkWell(
              onTap: () {
                Get.to(SignUpView());
              },
              child: Text(' SIGN UP ',
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
