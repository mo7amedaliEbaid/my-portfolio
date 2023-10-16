part of '../../dashboard.dart';

class _HomeView extends StatelessWidget {
  _HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double containerHeight = MediaQuery.of(context).size.height *
        (ScreenHelper.isMobile(context) ? .92 : .85);
    return Consumer(builder: (context, ref, _) {
      return SizedBox(
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
                    desktop: _DesktopHomeView(
                      containerHeight: containerHeight,
                      ref: ref,
                    ),
                    tablet: _TabletHomeView(
                      containerHeight: containerHeight,
                      ref: ref,
                    ),
                    mobile: _MobileHomeView(
                      containerHeight: containerHeight,
                      ref: ref,
                    ),
                  ),
                )),
          ],
        ),
      );
    });
  }
}
