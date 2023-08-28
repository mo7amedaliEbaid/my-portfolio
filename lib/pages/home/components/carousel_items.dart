import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:my_portfolio/utils/constants.dart';
import 'package:my_portfolio/utils/screen_helper.dart';
import 'package:my_portfolio/utils/utils.dart';

import '../../../models/carousel_item_model.dart';
import '../../../models/technology.dart';
import '../../../provider/theme.dart';

List<CarouselItemModel> carouselItems(double carouselContainerHeight,BuildContext context) =>
    List.generate(
      5,
      (index) => CarouselItemModel(
        text: SizedBox(
          height: carouselContainerHeight,
          child: Stack(
            children: [
              Center(
                child: Padding(
                  padding:  EdgeInsets.only(top:MediaQuery.sizeOf(context).height>835? 68.0:0),
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
                        children: const [
                          Text(
                            "Software Engineer, ",
                            style: TextStyle(
                              color: kCaptionColor,
                              fontSize: 15.0,
                              height: 1.0,
                            ),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Icon(
                            Icons.location_on,
                            color: kCaptionColor,
                            size: 14,
                          ),
                          SizedBox(
                            width: 2,
                          ),
                          Text(
                            "Cairo",
                            style: TextStyle(
                              color: kCaptionColor,
                              fontSize: 15.0,
                              height: 1.0,
                            ),
                          )
                        ],
                      ),
                      Expanded(
                        child: const SizedBox(
                          height: 10.0,
                        ),
                      ),
                      Row(
                        children: const [
                          Text(
                            "26 Years Old",
                            style: TextStyle(
                              color: kCaptionColor,
                              fontSize: 15.0,
                              height: 1.0,
                            ),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Icon(
                            Icons.man,
                            color: kCaptionColor,
                            size: 14,
                          ),
                          SizedBox(
                            width: 2,
                          ),
                          Text(
                            "Male",
                            style: TextStyle(
                              color: kCaptionColor,
                              fontSize: 15.0,
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

                      MouseRegion(
                        cursor: SystemMouseCursors.click,
                        child: SizedBox(
                          height: 50,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: AppConstants.socialLoginDatas
                                .map((e) => InkWell(
                              onTap: e.onTap,
                              child: Container(
                                width: 35,
                                height: 35,

                                margin: const EdgeInsets.all(10),
                                decoration: BoxDecoration(
                                 // color: Colors.red,
                                  image: DecorationImage(image: AssetImage(e.title,), fit: BoxFit.fill,/*filterQuality: FilterQuality.medium,colorFilter: ColorFilter.mode(Colors.blue, BlendMode.color)*/)
                                ),
                             //   child: Image.asset(e.title,fit: BoxFit.fill,),
                              ),
                            ))
                                .toList(),
                          ),
                        ),
                      ),
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
                          color: kCaptionColor,
                          height: 1.5,
                          fontSize: 15.0,
                        ),
                      ),
                      Expanded(
                        child: const SizedBox(
                          height: 20.0,
                        ),
                      ),
                      MediaQuery.sizeOf(context).height<835?SizedBox.shrink():
                      const Text(
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
                      MediaQuery.sizeOf(context).height<835?SizedBox.shrink():
                      Consumer(builder: (context, ref, _) {
                       return Wrap(
                         direction: Axis.horizontal,
                        // spacing: 2,
                         children: TechnologyConstants.technologyLearned
                             .map((e) => MouseRegion(
                           cursor: SystemMouseCursors.click,
                           child: Container(
                             width: ScreenHelper.isMobile(context)?90:130,
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
                                     Container(
                                       width:ScreenHelper.isMobile(context)?30:70 ,
                                       child: Text(
                                         e.name,
                                         overflow: TextOverflow.ellipsis,
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
          child:
              Image.asset(AppConstants.profileimg, /*semanticsLabel: 'Guy Logo'*/),
        ),
      ),
    );
