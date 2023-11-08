import 'package:animated_theme_switcher/animated_theme_switcher.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:my_portfolio/models/project.dart';

import 'package:my_portfolio/provider/dashboard.dart';
import 'package:my_portfolio/provider/theme.dart';
import 'package:my_portfolio/utils/globals.dart';
import 'package:my_portfolio/utils/screen_helper.dart';
import 'package:my_portfolio/widgets/switch.dart';
import 'package:responsive_framework/responsive_value.dart';
import 'package:responsive_framework/responsive_wrapper.dart';

import '../models/footer_item.dart';
import '../models/header_item.dart';
import '../models/technology.dart';
import '../provider/mouse.dart';
import '../routes/routes.dart';
import '../unsupported_screen.dart';
import '../utils/constants.dart';
import '../utils/utils.dart';


part 'views/_home_view/_home_view.dart';
part 'views/_home_view/_desktop.dart';
part 'views/_home_view/_mobile.dart';
part 'views/_home_view/_tablet.dart';

part 'views/_project_view/_project_view.dart';

part 'components/_footer.dart';
part 'components/_header.dart';

class Dashboard extends ConsumerStatefulWidget {
  const Dashboard({Key? key}) : super(key: key);

  @override
  ConsumerState<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends ConsumerState<Dashboard>
    with SingleTickerProviderStateMixin {
  late DashboardProvider _dashboardprovider;
  final ScrollController scrollController = ScrollController();

  @override
  void initState() {
    _dashboardprovider = ref.read(dashboardProvider);
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  Widget _buildView() {
    return Stack(
      children: [
        ScrollConfiguration(
          behavior: ScrollConfiguration.of(context).copyWith(scrollbars: false),
          child: SingleChildScrollView(
            physics: const BouncingScrollPhysics(),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: ScreenHelper.isDesktop(context) ? 30 : 20,
                ),
                _HomeView(
                  key: _dashboardprovider.homeKey,
                ),
                const SizedBox(
                  height: 20.0,
                ),
                SizedBox(
                  key: _dashboardprovider.portfolioKey,
                  height: 100.0,
                ),
                Center(
                    child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      "Portfolio",
                      style: GoogleFonts.josefinSans(
                        fontWeight: FontWeight.w900,
                        fontSize: 36,
                      ),
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    Text(
                      "Portofolio of some relevant projects:",
                      style: GoogleFonts.josefinSans(
                        color: Colors.grey[400],
                        fontSize: 14,
                      ),
                    ),
                    const SizedBox(
                      height: 15,
                    )
                  ],
                )),
                _ProjectView(
                  projects: ProjectModel.projects
                ),
                const SizedBox(
                  height: 50.0,
                ),
                _Footer(
                  key: _dashboardprovider.contactKey,
                )
              ],
            ),
          ),
        ),
        Header(
          themeSwitch: ThemeSwitcher(
              clipper: const ThemeSwitcherBoxClipper(),
              builder: (context) {
                return CustomSwitch(
                  value: ref.watch(themeProvider).isDarkMode,
                  onChanged: (val) {
                    ref.read(themeProvider).changeTheme(val);
                    ThemeSwitcher.of(context).changeTheme(
                        theme: ref.read(themeProvider).getCurrentTheme,
                        isReversed: true // default: false
                        );
                  },
                );
              }),
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return ThemeSwitchingArea(
      child: Scaffold(
        key: Globals.scaffoldKey,
        endDrawer: Drawer(
          child: SafeArea(
            child: Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 16.0,
                vertical: 24.0,
              ),
              child: ListView.separated(
                itemBuilder: (BuildContext context, int index) {
                  return ListTile(
                    onTap: () {
                      if (Globals.scaffoldKey.currentState != null) {
                        if (Globals.scaffoldKey.currentState!.isEndDrawerOpen) {
                          Navigator.pop(context);
                          _dashboardprovider.scrollBasedOnHeader(
                              HeaderRow.headerItems[index]);
                        }
                      }
                    },
                    leading: Icon(
                      HeaderRow.headerItems[index].iconData,
                    ),
                    title: Text(
                      HeaderRow.headerItems[index].title,
                      style: const TextStyle(),
                    ),
                    trailing: HeaderRow.headerItems[index].isDarkTheme != null
                        ? HeaderRow.headerItems[index].isDarkTheme!
                            ? SizedBox(
                                width: 50,
                                child: CustomSwitch(
                                  value: ref.watch(themeProvider).isDarkMode,
                                  onChanged: (val) {
                                    ref.read(themeProvider).changeTheme(val);
                                    ThemeSwitcher.of(context).changeTheme(
                                        theme: ref
                                            .read(themeProvider)
                                            .getCurrentTheme,
                                        isReversed: true // default: false
                                        );
                                  },
                                ),
                              )
                            : null
                        : null,
                  );
                },
                separatorBuilder: (BuildContext context, int index) {
                  return const SizedBox(
                    height: 10.0,
                  );
                },
                itemCount: HeaderRow.headerItems.length,
              ),
            ),
          ),
        ),
        body: _buildView(),
      ),
    );
  }
}
