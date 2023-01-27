import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:my_portfolio/models/state_management.dart';
import 'package:my_portfolio/provider/theme.dart';
import 'package:my_portfolio/utils/constants.dart';
import 'package:my_portfolio/utils/screen_helper.dart';
import 'package:responsive_framework/responsive_framework.dart';

class FlutterSkillsSection extends StatefulWidget {
  const FlutterSkillsSection({Key? key}) : super(key: key);

  @override
  State<FlutterSkillsSection> createState() => _FlutterSkillsSectionState();
}

class _FlutterSkillsSectionState extends State<FlutterSkillsSection> {
  @override
  Widget build(BuildContext context) {
    return ScreenHelper(
      desktop: _buildUi(kDesktopMaxWidth),
      tablet: _buildUi(kTabletMaxWidth),
      mobile: _buildUi(getMobileMaxWidth(context)),
    );
  }

  Widget _buildUi(double width) {
    return Center(
      child: LayoutBuilder(
        builder: (context, constraints) {
          return ResponsiveWrapper(
            maxWidth: width,
            minWidth: width,
            defaultScale: false,
            child: Flex(
              direction:
                  constraints.maxWidth > 720 ? Axis.horizontal : Axis.vertical,
              children: [
                Expanded(
                  flex: constraints.maxWidth > 720.0 ? 1 : 0,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(vertical: 58.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const SizedBox(
                          height: 15.0,
                        ),
                        Text(
                          "Flutter Skills",
                          style: GoogleFonts.josefinSans(
                            fontWeight: FontWeight.w900,
                            height: 1.3,
                            fontSize: 35.0,
                          ),
                        ),
                        const SizedBox(
                          height: 25.0,
                        ),
                    /*    Text(
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
                        const Text(
                          "I have graduated from faculty of engineering on 2021. I have been developing Flutter Apps for more than 1 years now.",
                          style: TextStyle(
                            color: kCaptionColor,
                            height: 1.5,
                            fontSize: 15.0,
                          ),
                        ),
                        const SizedBox(
                          height: 20.0,
                        ),
                        const Text(
                          "Technology I have worked with",
                          style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const SizedBox(
                          height: 10.0,
                        ),
                        Consumer(builder: (context, ref, _) {
                          return ScrollConfiguration(
                            behavior: ScrollConfiguration.of(context)
                                .copyWith(scrollbars: false),
                            child: SingleChildScrollView(
                              scrollDirection: Axis.horizontal,
                              child: Row(
                                children: TechnologyConstants.technologyLearned
                                    .map((e) => MouseRegion(
                                          cursor: SystemMouseCursors.click,
                                          child: Container(
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
                                                horizontal: 5),
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
                                                        child:
                                                            Image.asset(e.logo)),
                                                    const SizedBox(
                                                      width: 10,
                                                    ),
                                                    Text(
                                                      e.name,
                                                      style: const TextStyle(
                                                        fontSize: 12.0,
                                                        fontWeight:
                                                            FontWeight.bold,
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
                            ),
                          );
                        }),
                        const SizedBox(
                          height: 70.0,
                        )*/
                        const Text(
                          "State Management",
                          style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const SizedBox(
                          height: 10.0,
                        ),
                        Consumer(builder: (context, ref, _) {
                          return ScrollConfiguration(
                            behavior: ScrollConfiguration.of(context)
                                .copyWith(scrollbars: false),
                            child: SingleChildScrollView(
                              scrollDirection: Axis.horizontal,
                              child: Row(
                                children: StateManagementConstants.StateManagementLearned
                                    .map((e) => MouseRegion(
                                  cursor: SystemMouseCursors.click,
                                  child: Container(
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
                                        horizontal: 5),
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
                                                child:
                                                Image.asset(e.logo)),
                                            const SizedBox(
                                              width: 10,
                                            ),
                                            Text(
                                              e.name,
                                              style: const TextStyle(
                                                fontSize: 12.0,
                                                fontWeight:
                                                FontWeight.bold,
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
                            ),
                          );
                        }),
                        const SizedBox(
                          height: 15.0,
                        ),
                        const Text(
                          "Firebase",
                          style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const SizedBox(
                          height: 10.0,
                        ),
                        Consumer(builder: (context, ref, _) {
                          return Wrap(
                            direction: Axis.horizontal,
                            children: AppConstants.firebaseSkills
                                .map((e) => MouseRegion(
                              cursor: SystemMouseCursors.click,
                              child: Container(
                                width: 120,
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
                                    horizontal: 5,vertical: 5),
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 8.0, vertical: 6),
                                child: InkWell(
                                  onTap: () {},
                                  child: Center(
                                    child: Text(
                                      e,
                                      style: const TextStyle(
                                        fontSize: 12.0,
                                        fontWeight:
                                        FontWeight.bold,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ))
                                .toList(),
                          );
                        }),
                        const SizedBox(
                          height: 15.0,
                        ),
                        const Text(
                          "Databases",
                          style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const SizedBox(
                          height: 10.0,
                        ),
                        Consumer(builder: (context, ref, _) {
                          return Wrap(
                            direction: Axis.horizontal,
                            children: AppConstants.databases
                                .map((e) => MouseRegion(
                              cursor: SystemMouseCursors.click,
                              child: Container(
                                width: 100,
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
                                    horizontal: 5,vertical: 5),
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 8.0, vertical: 6),
                                child: InkWell(
                                  onTap: () {},
                                  child: Center(
                                    child: Text(
                                      e,
                                      style: const TextStyle(
                                        fontSize: 12.0,
                                        fontWeight:
                                        FontWeight.bold,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ))
                                .toList(),
                          );
                        }),
                        const SizedBox(
                          height: 15.0,
                        ),
                        const Text(
                          "Common Packages",
                          style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const SizedBox(
                          height: 10.0,
                        ),
                        Consumer(builder: (context, ref, _) {
                          return Wrap(
                            direction: Axis.horizontal,
                            children: AppConstants.commonpackages
                                .map((e) => MouseRegion(
                              cursor: SystemMouseCursors.click,
                              child: Container(
                                width: 130,
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
                                    horizontal: 5,vertical: 5),
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 8.0, vertical: 6),
                                child: InkWell(
                                  onTap: () {},
                                  child: Center(
                                    child: Text(
                                      e,
                                      style: const TextStyle(
                                        fontSize: 12.0,
                                        fontWeight:
                                        FontWeight.bold,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ))
                                .toList(),
                          );
                        }),
                        const SizedBox(
                          height: 70.0,
                        )
                      ],
                    ),
                  ),
                ),
                const SizedBox(
                  width: 25.0,
                ),
                if (ScreenHelper.isDesktop(context) ||
                    ScreenHelper.isTablet(context))
                  Expanded(
                    flex: constraints.maxWidth > 720.0 ? 1 : 0,
                    child: RotatedBox(
                      quarterTurns: 3,
                      child: Container(
                        height: 400,
                        width: 400,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          image: DecorationImage(image: AssetImage(AppConstants.profile1img,), fit: BoxFit.contain,filterQuality: FilterQuality.medium,colorFilter: ColorFilter.mode(Colors.yellowAccent, BlendMode.darken))
                        ),
                  /*    child: Image.asset(
                          AppConstants.profile1img,
                          width: constraints.maxWidth > 720.0 ? null : 350.0,
                          fit: BoxFit.fill,
                        ),*/
                      ),
                    ),
                  ),
              ],
            ),
          );
        },
      ),
    );
  }
}
