import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:my_portfolio/models/project.dart';
import 'package:my_portfolio/provider/theme.dart';
import 'package:my_portfolio/utils/constants.dart';
import 'package:my_portfolio/utils/screen_helper.dart';
import 'package:my_portfolio/utils/utils.dart';

class ProjectSection extends StatelessWidget {
  final List<ProjectModel> projects;

  const ProjectSection({Key? key, required this.projects}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: ScreenHelper(
        desktop: _buildUi(kDesktopMaxWidth, context),
        tablet: _buildUi(kTabletMaxWidth, context),
        mobile: _buildUi(getMobileMaxWidth(context), context),
      ),
    );
  }

  Widget _buildUi(double width, BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
          horizontal: ScreenHelper.isMobile(context) ? 0 : 88),
      child: Center(
        child: Wrap(
          direction: Axis.horizontal,
          alignment: WrapAlignment.center,
          runAlignment: WrapAlignment.center,
          children: projects
              .map((e) => Container(
                  width:ScreenHelper.isMobile(context)?500: width * .32,
                  margin: const EdgeInsets.symmetric(
                    horizontal: 20,
                    vertical: 15,
                  ),
                  child: _buildProject(width, e)))
              .toList(),
        ),
      ),
    );
  }

  Center _buildProject(double width, ProjectModel projectModel) {
    return Center(
      child: LayoutBuilder(
        builder: (context, constraints) {
          return Consumer(builder: (context, ref, _) {
            return Container(
              width:ScreenHelper.isMobile(context)?420: width * .3,
              padding: const EdgeInsets.all(10),
              decoration: BoxDecoration(
                  color: ref.watch(themeProvider).isDarkMode
                      ? const Color.fromARGB(100, 172, 152, 0)
                      : Colors.grey[100],
                  borderRadius: BorderRadius.circular(5)),
              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      projectModel.project,
                      style: GoogleFonts.josefinSans(
                        color: kPrimaryColor,
                        fontWeight: FontWeight.w900,
                        fontSize: 16.0,
                      ),
                    ),
                    const SizedBox(
                      height: 15.0,
                    ),
                    Text(
                      projectModel.title,
                      style: GoogleFonts.josefinSans(
                        fontWeight: FontWeight.w900,
                        height: 1.3,
                        fontSize: 28.0,
                      ),
                    ),
                    const SizedBox(
                      height: 10.0,
                    ),
                    Text(
                      projectModel.description,
                      style:  TextStyle(
                        color: ref.watch(themeProvider).isDarkMode
                            ? kdarkCaptionColor
                            : klightCaptionColor,
                        height: 1.5,
                        fontSize: 15.0,
                        fontWeight: FontWeight.bold,
                        overflow: TextOverflow.ellipsis,

                      ),
                      textAlign: TextAlign.justify,
                      maxLines: 3,
                    ),
                    const SizedBox(
                      height: 20.0,
                    ),
                    projectModel.techUsed.isEmpty
                        ? Container()
                        : Text(
                            "Technologies Used",
                            style: GoogleFonts.josefinSans(
                              fontWeight: FontWeight.w900,
                              fontSize: 16.0,
                            ),
                          ),
                    Wrap(
                      children: projectModel.techUsed
                          .map((e) => Container(
                                margin: const EdgeInsets.all(10),
                                width: 25,
                                color: e.logo == AppConstants.ubuntuImage
                                    ? Colors.white
                                    : null,
                                height: 25,
                                child: Image.asset(e.logo),
                              ))
                          .toList(),
                    ),
                    const SizedBox(
                      height: 25.0,
                    ),
                    MouseRegion(
                      cursor: SystemMouseCursors.click,
                      child: Container(
                        width: 170,
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
                            Utilty.openUrl(projectModel.projectLink);
                          },
                          child: Center(
                            child: Text(
                              (projectModel.buttonText!)
                                  .toUpperCase(),
                              style: const TextStyle(
                                fontSize: 13.0,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            );
          });
        },
      ),
    );
  }
}
