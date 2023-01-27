import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:lottie/lottie.dart';
import 'package:responsive_framework/responsive_framework.dart';

import '../../../utils/constants.dart';
import '../../../utils/screen_helper.dart';
import '../../provider/theme.dart';
import 'home_item.dart';

class Carousel extends StatelessWidget {
  Carousel({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double containerHeight = MediaQuery.of(context).size.height *
        (ScreenHelper.isMobile(context) ? .7 : .85);
    return Consumer(builder: (context, ref, _) {
      return Stack(
        children: [
          ref.watch(themeProvider).isDarkMode
              ? Center(
                  child: Lottie.asset(AppConstants.backgroundLottie),
                )
              : Center(
                  child: Lottie.asset(AppConstants.backgroundLottie1),
                ),
          Container(
            color: ref.watch(themeProvider).isDarkMode
                ? Colors.transparent.withOpacity(.5)
                : Colors.transparent.withOpacity(.1),
            height: MediaQuery.sizeOf(context).height,
            width: MediaQuery.sizeOf(context).width,
            child: SizedBox(
              height: containerHeight,
              width: double.infinity,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Container(
                      alignment: Alignment.center,
                      child: Container(
                        constraints: BoxConstraints(
                          minHeight: containerHeight,
                        ),
                        child: ScreenHelper(
                          desktop: _buildDesktop(
                            context,
                            homeItem(containerHeight, context, ref).text,
                            homeItem(containerHeight, context, ref).image,
                          ),
                          tablet: _buildTablet(
                            context,
                            homeItem(containerHeight, context, ref).text,
                            homeItem(containerHeight, context, ref).image,
                          ),
                          mobile: _buildMobile(
                            context,
                            homeItem(containerHeight, context, ref).text,
                            homeItem(containerHeight, context, ref).image,
                          ),
                        ),
                      )),
                ],
              ),
            ),
          ),
        ],
      );
    });
  }
}

// Big screens
Widget _buildDesktop(BuildContext context, Widget text, Widget image) {
  return Center(
    child: ResponsiveWrapper(
      maxWidth: kDesktopMaxWidth,
      minWidth: kDesktopMaxWidth,
      defaultScale: false,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: text,
          ),
          Expanded(
            child: image,
          )
        ],
      ),
    ),
  );
}

// Mid screens
Widget _buildTablet(BuildContext context, Widget text, Widget image) {
  return Center(
    child: ResponsiveWrapper(
      maxWidth: kTabletMaxWidth,
      minWidth: kTabletMaxWidth,
      defaultScale: false,
      child: Row(
        children: [
          Expanded(
            child: text,
          ),
          Expanded(
            child: image,
          )
        ],
      ),
    ),
  );
}

// SMall Screens

Widget _buildMobile(BuildContext context, Widget text, Widget image) {
  return Container(
    constraints: BoxConstraints(
      maxWidth: getMobileMaxWidth(context),
    ),
    width: double.infinity,
    child: text,
  );
}
