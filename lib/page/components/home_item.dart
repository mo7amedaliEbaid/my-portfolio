import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:my_portfolio/provider/mouse.dart';
import 'package:my_portfolio/utils/constants.dart';
import 'package:my_portfolio/utils/screen_helper.dart';

import '../../../models/home_item_model.dart';
import '../../../models/technology.dart';
import '../../../provider/theme.dart';

HomeItemModel homeItem(
    double containerHeight, BuildContext context, WidgetRef ref) {
  double width = MediaQuery.sizeOf(context).width;
  log("width=${width}");
  double h = MediaQuery.sizeOf(context).height;
  log("height=${h}");

  return HomeItemModel(
    text: h < 230
        ? SizedBox.shrink()
        : SizedBox(
            height: containerHeight,
            child: Stack(
              children: [
                Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Expanded(
                        flex: 100,
                        child: h < 277
                            ? SizedBox.shrink()
                            : Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  ScreenHelper.isMobile(context) && h < 700
                                      ? SizedBox.shrink()
                                      : Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            Text(
                                              "Flutter Developer",
                                              style: GoogleFonts.josefinSans(
                                                color: kPrimaryColor,
                                                fontWeight: FontWeight.w900,
                                                fontSize: 20.0,
                                                letterSpacing: 2,
                                              ),
                                            ),
                                            const SizedBox(
                                              height: 18.0,
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
                                            const SizedBox(
                                              height: 10.0,
                                            ),
                                            Row(
                                              children: [
                                                Text(
                                                  "Software Engineer, ",
                                                  style: TextStyle(
                                                      color: ref
                                                              .watch(
                                                                  themeProvider)
                                                              .isDarkMode
                                                          ? kdarkCaptionColor
                                                          : klightCaptionColor,
                                                      fontSize: 20.0,
                                                      height: 1.0,
                                                      fontWeight:
                                                          FontWeight.bold),
                                                ),
                                                SizedBox(
                                                  width: 20,
                                                ),
                                                Icon(
                                                  Icons.location_on,
                                                  color: ref
                                                          .watch(themeProvider)
                                                          .isDarkMode
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
                                                      color: ref
                                                              .watch(
                                                                  themeProvider)
                                                              .isDarkMode
                                                          ? kdarkCaptionColor
                                                          : klightCaptionColor,
                                                      fontSize: 20.0,
                                                      height: 1.0,
                                                      fontWeight:
                                                          FontWeight.bold),
                                                )
                                              ],
                                            ),
                                            const SizedBox(
                                              height: 10.0,
                                            ),
                                            Row(
                                              children: [
                                                Text(
                                                  "26 Years Old",
                                                  style: TextStyle(
                                                    color: ref
                                                            .watch(
                                                                themeProvider)
                                                            .isDarkMode
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
                                                  color: ref
                                                          .watch(themeProvider)
                                                          .isDarkMode
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
                                                    color: ref
                                                            .watch(
                                                                themeProvider)
                                                            .isDarkMode
                                                        ? kdarkCaptionColor
                                                        : klightCaptionColor,
                                                    fontSize: 20.0,
                                                    height: 1.0,
                                                  ),
                                                )
                                              ],
                                            ),
                                          ],
                                        ),
                                  ScreenHelper.isMobile(context)
                                      ? SizedBox.shrink()
                                      : Container(
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
                                ],
                              ),
                      ),
                      Expanded(
                        child: const SizedBox(
                          height: 15.0,
                        ),
                      ),
                      h < 353
                          ? SizedBox.shrink()
                          : Consumer(builder: (context, mouseref, _) {
                              return ScreenHelper.isMobile(context)
                                  ? h < 775
                                      ? SizedBox.shrink()
                                      : SizedBox(
                                          height: 50,
                                          child: ListView.builder(
                                              shrinkWrap: true,
                                              physics:
                                                  NeverScrollableScrollPhysics(),
                                              scrollDirection: Axis.horizontal,
                                              itemCount: AppConstants
                                                  .socialLoginDatas.length,
                                              itemBuilder: (context, index) {
                                                return MouseRegion(
                                                  cursor:
                                                      SystemMouseCursors.alias,
                                                  onEnter: (event) {
                                                    mouseref
                                                        .watch(mouseProvider)
                                                        .setashovered(index);
                                                  },
                                                  onExit: (event) {
                                                    mouseref
                                                        .watch(mouseProvider)
                                                        .setasnothovered();
                                                  },
                                                  child: InkWell(
                                                    onTap: AppConstants
                                                        .socialLoginDatas[index]
                                                        .onTap,
                                                    child: Card(
                                                      elevation: mouseref
                                                              .watch(
                                                                  mouseProvider)
                                                              .ishovered(index)
                                                          ? 55
                                                          : 0,
                                                      color: mouseref
                                                              .watch(
                                                                  mouseProvider)
                                                              .ishovered(index)
                                                          ? Colors.blue.shade900
                                                          : Colors.white,
                                                      borderOnForeground: false,
                                                      child: Container(
                                                        width: 45,
                                                        height: 45,
                                                        margin:
                                                            EdgeInsets.all(5),
                                                        decoration:
                                                            BoxDecoration(
                                                                image:
                                                                    DecorationImage(
                                                          image: AssetImage(
                                                            AppConstants
                                                                .socialLoginDatas[
                                                                    index]
                                                                .title,
                                                          ),
                                                          fit: BoxFit.fill,
                                                        )),
                                                      ),
                                                    ),
                                                  ),
                                                );
                                              }),
                                        )
                                  : SizedBox(
                                      height: 65,
                                      child: ListView.builder(
                                          shrinkWrap: true,
                                          physics:
                                              NeverScrollableScrollPhysics(),
                                          scrollDirection: Axis.horizontal,
                                          itemCount: AppConstants
                                              .socialLoginDatas.length,
                                          itemBuilder: (context, index) {
                                            return MouseRegion(
                                              cursor: SystemMouseCursors.alias,
                                              onEnter: (event) {
                                                mouseref
                                                    .watch(mouseProvider)
                                                    .setashovered(index);
                                              },
                                              onExit: (event) {
                                                mouseref
                                                    .watch(mouseProvider)
                                                    .setasnothovered();
                                              },
                                              child: InkWell(
                                                onTap: AppConstants
                                                    .socialLoginDatas[index]
                                                    .onTap,
                                                child: Card(
                                                  elevation: mouseref
                                                          .watch(mouseProvider)
                                                          .ishovered(index)
                                                      ? 55
                                                      : 0,
                                                  color: mouseref
                                                          .watch(mouseProvider)
                                                          .ishovered(index)
                                                      ? Colors.blue.shade900
                                                      : Colors.white,
                                                  borderOnForeground: false,
                                                  child: Container(
                                                    width: mouseref
                                                            .watch(
                                                                mouseProvider)
                                                            .ishovered(index)
                                                        ? 75
                                                        : 55,
                                                    height: mouseref
                                                            .watch(
                                                                mouseProvider)
                                                            .ishovered(index)
                                                        ? 55
                                                        : 55,
                                                    margin: mouseref
                                                            .watch(
                                                                mouseProvider)
                                                            .ishovered(index)
                                                        ? EdgeInsets.all(0)
                                                        : EdgeInsets.all(10),
                                                    decoration: BoxDecoration(
                                                        image: DecorationImage(
                                                      image: AssetImage(
                                                        AppConstants
                                                            .socialLoginDatas[
                                                                index]
                                                            .title,
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
                      const SizedBox(
                        height: 10.0,
                      ),
                      Text(
                        "I have graduated from faculty of engineering in 2021. I have been developing Flutter Apps for more than 2 years now.",
                        style: TextStyle(
                            color: ref.watch(themeProvider).isDarkMode
                                ? kdarkCaptionColor
                                : klightCaptionColor,
                            height: 1.5,
                            fontSize: 19,
                            fontWeight: FontWeight.bold),
                      ),
                      Expanded(
                        child: const SizedBox(
                          height: 30.0,
                        ),
                      ),
                      MediaQuery.sizeOf(context).height < 835
                          ? SizedBox.shrink()
                          : Padding(
                              padding: const EdgeInsets.only(top: 18.0),
                              child: const Text(
                                "Technologies I have worked with",
                                style: TextStyle(
                                  fontSize: 24,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                      Expanded(
                        child: const SizedBox(
                          height: 20.0,
                        ),
                      ),
                      MediaQuery.sizeOf(context).height < 521
                          ? SizedBox.shrink()
                          : Expanded(
                              flex: 100,
                              child: Container(
                                margin: EdgeInsets.fromLTRB(0, 20, 0, 0),
                                child: /*ScreenHelper.isMobile(context)
                              ?*/ /*Wrap(
                                  direction: Axis.horizontal,
                                  children: TechnologyConstants
                                      .technologyLearned
                                      .map((e) => MouseRegion(
                                            cursor: SystemMouseCursors.alias,
                                            child: Container(
                                              width:
                                                  ScreenHelper.isMobile(context)
                                                      ? 90
                                                      : 150,
                                              height: 50,
                                              decoration: BoxDecoration(
                                                color: ref
                                                        .watch(themeProvider)
                                                        .isDarkMode
                                                    ? Colors.grey[800]
                                                    : Colors.grey[200],
                                                borderRadius:
                                                    BorderRadius.circular(4.0),
                                              ),
                                              margin:
                                                  const EdgeInsets.symmetric(
                                                      horizontal: 5,
                                                      vertical: 5),
                                              padding:
                                                  const EdgeInsets.symmetric(
                                                      horizontal: 8.0,
                                                      vertical: 6),
                                              child: InkWell(
                                                onTap: () {},
                                                child: Center(
                                                  child: Row(
                                                    children: [
                                                      SizedBox(
                                                          width: 30,
                                                          height: 30,
                                                          child: Image.asset(
                                                              e.logo)),
                                                      const SizedBox(
                                                        width: 10,
                                                      ),
                                                      Container(
                                                        width: ScreenHelper
                                                                .isMobile(
                                                                    context)
                                                            ? 30
                                                            : 80,
                                                        child: Text(
                                                          e.name,
                                                          overflow: TextOverflow
                                                              .ellipsis,
                                                          style:
                                                              const TextStyle(
                                                            fontSize: 18.0,
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
                                )
                              : */
                                    Wrap(
                                  direction: Axis.horizontal,
                                  children: TechnologyConstants
                                      .technologyLearned
                                      .map((e) => MouseRegion(
                                            cursor: SystemMouseCursors.alias,
                                            child: Container(
                                              width:
                                                  ScreenHelper.isMobile(context)
                                                      ? 100
                                                      : 150,
                                              height: 50,
                                              decoration: BoxDecoration(
                                                color: ref
                                                        .watch(themeProvider)
                                                        .isDarkMode
                                                    ? Colors.grey[800]
                                                    : Colors.grey[200],
                                                borderRadius:
                                                    BorderRadius.circular(4.0),
                                              ),
                                              margin:
                                                  const EdgeInsets.symmetric(
                                                      horizontal: 5,
                                                      vertical: 5),
                                              padding:
                                                  const EdgeInsets.symmetric(
                                                      horizontal: 8.0,
                                                      vertical: 6),
                                              child: InkWell(
                                                onTap: () {},
                                                child: Center(
                                                  child: Row(
                                                    children: [
                                                      SizedBox(
                                                          width: ScreenHelper
                                                                  .isMobile(
                                                                      context)
                                                              ? 20
                                                              : 30,
                                                          height: ScreenHelper
                                                                  .isMobile(
                                                                      context)
                                                              ? 20
                                                              : 30,
                                                          child: Image.asset(
                                                              e.logo)),
                                                      ScreenHelper.isMobile(
                                                              context)
                                                          ? SizedBox(
                                                              width: 5,
                                                            )
                                                          : const SizedBox(
                                                              width: 10,
                                                            ),
                                                      Container(
                                                        width: ScreenHelper
                                                                .isMobile(
                                                                    context)
                                                            ? 52
                                                            : 80,
                                                        child: Text(
                                                          e.name,
                                                          overflow: TextOverflow
                                                              .ellipsis,
                                                          style: TextStyle(
                                                            fontSize: ScreenHelper
                                                                    .isMobile(
                                                                        context)
                                                                ? 15
                                                                : 18.0,
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
                                ),
                              )),
                      /* Expanded(
                  child: const SizedBox(
                    height: 10.0,
                  ),
                ),*/
                      /*MouseRegion(
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
                ),*/
                    ],
                  ),
                ),
              ],
            ),
          ),
    image: SizedBox.shrink(
        ),
  );
}
