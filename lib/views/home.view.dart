import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:smart_faucet_app/utils/global.colors.dart';
import 'dart:convert';

import 'moreinfo.view.dart';

class HomeView extends StatelessWidget {
  HomeView({super.key});
  final String homeFaucet = 'assets/faucet.home.svg';
  var waterConsumption = [500, 250];

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

                //Body
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    //Your Faucets text
                    SizedBox(
                      height: 75,
                      child: Row(
                        children: [
                          Text(
                            'Your Paired Faucets:'.toUpperCase(),
                            style: const TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.w300,
                              color: Colors.black,
                              letterSpacing: 2,
                            ),
                          ),
                        ],
                      ),
                    ),

                    //Faucet 1
                    Container(
                      padding: const EdgeInsets.all(5.0),
                      decoration: BoxDecoration(
                        border: Border.all(width: 2),
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          //Faucet Icon & Faucet Name
                          SizedBox(
                            // height: 80,
                            // width: 140,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                SvgPicture.asset(
                                    'assets/images/faucet.home.svg',
                                    height: 35,
                                    color: Colors.blue),
                                Text(
                                  'Bathroom 1'.toUpperCase(),
                                  style: const TextStyle(
                                    fontSize: 15,
                                    fontWeight: FontWeight.w700,
                                    color: Colors.black,
                                    letterSpacing: 3,
                                  ),
                                ),
                              ],
                            ),
                          ),

                          //Water Consumption Display
                          Expanded(
                            child: SizedBox(
                              // height: 80,
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(
                                    children: [
                                      Text(
                                        'Consumption:'.toUpperCase(),
                                        textAlign: TextAlign.center,
                                        style: const TextStyle(
                                          fontSize: 10,
                                          fontWeight: FontWeight.w400,
                                          color: Colors.black,
                                          letterSpacing: 3,
                                        ),
                                      ),
                                    ],
                                  ),
                                  SizedBox(
                                    // height: 60,
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      children: [
                                        Text(
                                          '${waterConsumption[0]} mL',
                                          style: const TextStyle(
                                            fontSize: 20,
                                            fontWeight: FontWeight.w800,
                                            color: Colors.black,
                                            letterSpacing: 3,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),

                          //View More Icon
                          InkWell(
                            onTap: () {
                              Get.to(MoreInfoView());
                            },
                            child: SizedBox(
                              height: 80,
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  SvgPicture.asset('assets/images/moreInfo.svg',
                                      height: 30, color: Colors.grey)
                                ],
                              ),
                            ),
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
