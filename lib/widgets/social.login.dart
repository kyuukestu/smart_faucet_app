import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:smart_faucet_app/utils/global.colors.dart';

class SocialLogin extends StatelessWidget {
  const SocialLogin({super.key});
  final String facebook = 'assets/facebook.svg';
  final String google = 'assets/google.svg';
  final String twitter = 'assets/twitter.svg';

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          alignment: Alignment.center,
          child: Text(
            '- Or use Socials -',
            style: TextStyle(
              color: GlobalColors.textColor,
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
        const SizedBox(height: 15),
        Container(
          width: MediaQuery.of(context).size.width * 0.8,
          child: Row(
            children: [
              //Google
              Expanded(
                child: Container(
                  alignment: Alignment.center,
                  height: 55,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(50),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.1),
                        blurRadius: 10,
                      ),
                    ],
                  ),
                  child:
                      SvgPicture.asset('assets/images/google.svg', height: 50),
                ),
              ),

              const SizedBox(width: 10),
              //Facebook
              Expanded(
                child: Container(
                  alignment: Alignment.center,
                  height: 55,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(50),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.1),
                        blurRadius: 10,
                      ),
                    ],
                  ),
                  child: SvgPicture.asset('assets/images/facebook.svg',
                      height: 50),
                ),
              ),

              const SizedBox(width: 10),
              //Twitter
              Expanded(
                child: Container(
                  alignment: Alignment.center,
                  height: 55,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(50),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.1),
                        blurRadius: 10,
                      ),
                    ],
                  ),
                  child:
                      SvgPicture.asset('assets/images/twitter.svg', height: 50),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
