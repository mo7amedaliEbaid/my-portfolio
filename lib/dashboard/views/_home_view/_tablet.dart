part of '../../dashboard.dart';

class _TabletHomeView extends StatelessWidget {
  const _TabletHomeView({ required this.containerHeight, required this.ref});
  final double containerHeight;
  final WidgetRef ref;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: containerHeight,
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisSize: MainAxisSize.max,
          children: [
            Expanded(
              flex: 100,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
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
                      const SizedBox(
                        height: 10.0,
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
                    ],
                  ),
                ],
              ),
            ),
            const Expanded(
              child: const SizedBox(
                height: 15.0,
              ),
            ),
            Consumer(builder: (context, mouseref, _) {
              return SizedBox(
                height: 50,
                child: ListView.builder(
                    shrinkWrap: true,
                    physics: NeverScrollableScrollPhysics(),
                    scrollDirection: Axis.horizontal,
                    itemCount: AppConstants.socialLoginDatas.length,
                    itemBuilder: (context, index) {
                      return MouseRegion(
                        cursor: SystemMouseCursors.alias,
                        onEnter: (event) {
                          mouseref.watch(mouseProvider).setashovered(index);
                        },
                        onExit: (event) {
                          mouseref.watch(mouseProvider).setasnothovered();
                        },
                        child: InkWell(
                          onTap: AppConstants.socialLoginDatas[index].onTap,
                          child: Card(
                            elevation:
                            mouseref.watch(mouseProvider).ishovered(index)
                                ? 55
                                : 0,
                            color:
                            mouseref.watch(mouseProvider).ishovered(index)
                                ? Colors.blue.shade900
                                : Colors.white,
                            borderOnForeground: false,
                            child: Container(
                              width: 45,
                              height: 45,
                              margin: EdgeInsets.all(5),
                              decoration: BoxDecoration(
                                  image: DecorationImage(
                                    image: AssetImage(
                                      AppConstants.socialLoginDatas[index].title,
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
            const Expanded(
              child: SizedBox(
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
            const Expanded(
              child: SizedBox(
                height: 30.0,
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(top: 18.0),
              child: Text(
                "Technologies I have worked with",
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            const Expanded(
              child: SizedBox(
                height: 20.0,
              ),
            ),
            Expanded(
                flex: 100,
                child: Container(
                  margin: EdgeInsets.fromLTRB(0, 20, 0, 0),
                  child: Wrap(
                    direction: Axis.horizontal,
                    children: TechnologyConstants.technologyLearned
                        .map((e) => MouseRegion(
                      cursor: SystemMouseCursors.alias,
                      child: Container(
                        width: 100,
                        height: 50,
                        decoration: BoxDecoration(
                          color: ref.watch(themeProvider).isDarkMode
                              ? Colors.grey[800]
                              : Colors.grey[200],
                          borderRadius: BorderRadius.circular(4.0),
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
                                SizedBox(
                                  width: 5,
                                ),
                                Container(
                                  width: 52,
                                  child: Text(
                                    e.name,
                                    overflow: TextOverflow.ellipsis,
                                    style: TextStyle(
                                      fontSize: 15,
                                      fontWeight: FontWeight.bold,
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
          ],
        ),
      ),
    );
  }
}
