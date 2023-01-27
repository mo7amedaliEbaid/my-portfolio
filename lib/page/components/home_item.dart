import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:my_portfolio/provider/mouse.dart';
import 'package:my_portfolio/utils/constants.dart';
import 'package:my_portfolio/utils/screen_helper.dart';
import 'package:my_portfolio/utils/utils.dart';

import '../../../models/carousel_item_model.dart';
import '../../../models/technology.dart';
import '../../../provider/theme.dart';

HomeItemModel homeItem(
    double containerHeight, BuildContext context, WidgetRef ref) {
  // int pressedAttentionIndex = -1;
//  final pressAttention = pressedAttentionIndex == index;
  /* onTap: () {
    setState(() {
      pressedAttentionIndex = index;
    });
  },*/
/*  pressAttention
      ? Icon(
    Icons.check_circle,
    size: 35,
    color: Colors.green,
  )
      : Icon(
    Icons.change_circle_sharp,
    size: 35,
  )*/
  return HomeItemModel(
    text: SizedBox(
      height: containerHeight,
      child: Stack(
        children: [
          Center(
            child: Padding(
              padding: EdgeInsets.only(
                  top: MediaQuery.sizeOf(context).height > 835 ? 68.0 : 0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.max,
                children: [
                  Text(
                    "Flutter Developer",
                    style: GoogleFonts.josefinSans(
                      color: kPrimaryColor,
                      fontWeight: FontWeight.w900,
                      fontSize: 18.0,
                      letterSpacing: 2,
                    ),
                  ),
                  Expanded(
                    child: const SizedBox(
                      height: 18.0,
                    ),
                  ),
                  Text(
                    "Mohamed Ali".toUpperCase(),
                    style: GoogleFonts.josefinSans(
                      fontSize: 40.0,
                      fontWeight: FontWeight.w900,
                      height: 1.3,
                      letterSpacing: 2.3,
                    ),
                  ),
                  Expanded(
                    child: const SizedBox(
                      height: 10.0,
                    ),
                  ),
                  Row(
                    children: [
                      Text(
                        "Software Engineer, ",
                        style: TextStyle(
                            color: ref.watch(themeProvider).isDarkMode
                                ? kdarkCaptionColor
                                : klightCaptionColor,
                            fontSize: 20.0,
                            height: 1.0,
                            fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      Icon(
                        Icons.location_on,
                        color: ref.watch(themeProvider).isDarkMode
                            ? kdarkCaptionColor
                            : klightCaptionColor,
                        size: 24,
                      ),
                      SizedBox(
                        width: 2,
                      ),
                      Text(
                        "Cairo",
                        style: TextStyle(
                            color: ref.watch(themeProvider).isDarkMode
                                ? kdarkCaptionColor
                                : klightCaptionColor,
                            fontSize: 20.0,
                            height: 1.0,
                            fontWeight: FontWeight.bold),
                      )
                    ],
                  ),
                  Expanded(
                    child: const SizedBox(
                      height: 10.0,
                    ),
                  ),
                  Row(
                    children: [
                      Text(
                        "26 Years Old",
                        style: TextStyle(
                          color: ref.watch(themeProvider).isDarkMode
                              ? kdarkCaptionColor
                              : klightCaptionColor,
                          fontSize: 20.0,
                          height: 1.0,
                        ),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Icon(
                        Icons.man,
                        color: ref.watch(themeProvider).isDarkMode
                            ? kdarkCaptionColor
                            : klightCaptionColor,
                        size: 24,
                      ),
                      SizedBox(
                        width: 2,
                      ),
                      Text(
                        "Male",
                        style: TextStyle(
                          color: ref.watch(themeProvider).isDarkMode
                              ? kdarkCaptionColor
                              : klightCaptionColor,
                          fontSize: 20.0,
                          height: 1.0,
                        ),
                      )
                    ],
                  ),
                  Expanded(
                    child: const SizedBox(
                      height: 15.0,
                    ),
                  ),
                  Consumer(builder: (context, mouseref, _) {
                    return SizedBox(
                      height: 65,
                      child: ListView.builder(
                          shrinkWrap: true,
                          physics: NeverScrollableScrollPhysics(),
                          scrollDirection: Axis.horizontal,
                          itemCount: AppConstants.socialLoginDatas.length,
                          itemBuilder: (context, index) {
                            return MouseRegion(
                              cursor: SystemMouseCursors.alias,
                              onEnter: (event) {
                                mouseref
                                    .watch(mouseProvider)
                                    .setashovered(index);
                              },
                              onExit: (event) {
                                mouseref.watch(mouseProvider).setasnothovered();
                              },
                              child: InkWell(
                                onTap:
                                    AppConstants.socialLoginDatas[index].onTap,
                                child: Card(
                                  elevation: mouseref
                                          .watch(mouseProvider)
                                          .ishovered(index)
                                      ? 55
                                      : 0,
                                  color: mouseref
                                          .watch(mouseProvider)
                                          .ishovered(index)
                                      ? Colors.grey.shade500
                                      : Colors.white,
                                  borderOnForeground: false,
                                  child: Container(
                                    width: mouseref
                                            .watch(mouseProvider)
                                            .ishovered(index)
                                        ? 75
                                        : 55,
                                    height: mouseref
                                            .watch(mouseProvider)
                                            .ishovered(index)
                                        ? 55
                                        : 55,
                                    margin: mouseref
                                            .watch(mouseProvider)
                                            .ishovered(index)
                                        ? EdgeInsets.all(0)
                                        : EdgeInsets.all(10),
                                    decoration: BoxDecoration(
                                        image: DecorationImage(
                                      image: AssetImage(
                                        AppConstants
                                            .socialLoginDatas[index].title,
                                      ),
                                      fit: BoxFit.fill,
                                    )),
                                  ),
                                ),
                              ),
                            );
                          }),
                    );
                  }),
                  Expanded(
                    child: const SizedBox(
                      height: 15.0,
                    ),
                  ),
                  Text(
                    "I'm Mohamed Ali, A Flutter Developer",
                    style: GoogleFonts.josefinSans(
                      fontWeight: FontWeight.bold,
                      height: 1.3,
                      fontSize: 24.0,
                    ),
                  ),
                  Expanded(
                    child: const SizedBox(
                      height: 10.0,
                    ),
                  ),
                  const Text(
                    "I have graduated from faculty of engineering on 2021. I have been developing Flutter Apps for more than 1 years now.",
                    style: TextStyle(
                      color: klightCaptionColor,
                      height: 1.5,
                      fontSize: 15.0,
                    ),
                  ),
                  Expanded(
                    child: const SizedBox(
                      height: 20.0,
                    ),
                  ),
                  MediaQuery.sizeOf(context).height < 835
                      ? SizedBox.shrink()
                      : const Text(
                          "Technology I have worked with",
                          style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                  Expanded(
                    child: const SizedBox(
                      height: 10.0,
                    ),
                  ),
                  MediaQuery.sizeOf(context).height < 835
                      ? SizedBox.shrink()
                      : Consumer(builder: (context, ref, _) {
                          return Wrap(
                            direction: Axis.horizontal,
                            // spacing: 2,
                            children: TechnologyConstants.technologyLearned
                                .map((e) => MouseRegion(
                                      cursor: SystemMouseCursors.click,
                                      child: Container(
                                        width: ScreenHelper.isMobile(context)
                                            ? 90
                                            : 130,
                                        height: 30,
                                        decoration: BoxDecoration(
                                          color: ref
                                                  .watch(themeProvider)
                                                  .isDarkMode
                                              ? Colors.grey[800]
                                              : Colors.grey[200],
                                          borderRadius:
                                              BorderRadius.circular(4.0),
                                        ),
                                        margin: const EdgeInsets.symmetric(
                                            horizontal: 5, vertical: 5),
                                        padding: const EdgeInsets.symmetric(
                                            horizontal: 8.0, vertical: 6),
                                        child: InkWell(
                                          onTap: () {},
                                          child: Center(
                                            child: Row(
                                              children: [
                                                SizedBox(
                                                    width: 20,
                                                    height: 20,
                                                    child: Image.asset(e.logo)),
                                                const SizedBox(
                                                  width: 10,
                                                ),
                                                Container(
                                                  width: ScreenHelper.isMobile(
                                                          context)
                                                      ? 30
                                                      : 70,
                                                  child: Text(
                                                    e.name,
                                                    overflow:
                                                        TextOverflow.ellipsis,
                                                    style: const TextStyle(
                                                      fontSize: 12.0,
                                                      fontWeight:
                                                          FontWeight.bold,
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                      ),
                                    ))
                                .toList(),
                          );
                        }),
                  Expanded(
                    child: const SizedBox(
                      height: 10.0,
                    ),
                  ),
                  MouseRegion(
                    cursor: SystemMouseCursors.click,
                    child: Container(
                      decoration: BoxDecoration(
                        color: kPrimaryColor,
                        borderRadius: BorderRadius.circular(8.0),
                      ),
                      height: 48.0,
                      padding: const EdgeInsets.symmetric(
                        horizontal: 28.0,
                      ),
                      child: TextButton(
                        onPressed: () {
                          Utilty.openUrl(AppConstants.linkedInUrl);
                        },
                        child: Text(
                          "Let's Talk",
                          style: TextStyle(
                            color: Colors.grey[800],
                            fontSize: 13.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    ),
    image: Container(
      height: 200,
      width: 200,
      margin: EdgeInsets.all(50),
      decoration: BoxDecoration(
          shape: BoxShape.circle,
          image: DecorationImage(
              image: AssetImage(
                AppConstants.profileimg,
              ),
              fit: BoxFit.contain)),
    ),
  );
}
