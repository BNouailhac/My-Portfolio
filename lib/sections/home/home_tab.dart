import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:folio/animations/entrance_fader.dart';
import 'package:folio/configs/configs.dart';

import 'package:folio/utils/utils.dart';
import 'package:folio/widget/social_links.dart';

class HomeTab extends StatelessWidget {
  const HomeTab({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Container(
      decoration: const BoxDecoration(
        image: DecorationImage(image: AssetImage("hi.gif"), fit: BoxFit.cover),
      ),
      height: size.height * 1.025,
      padding: Space.h,
      child: Stack(
        children: [
          Container(
            margin: EdgeInsets.fromLTRB(
              AppDimensions.normalize(20),
              AppDimensions.normalize(110),
              0,
              0,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                      'MY PORTFOLIO : ',
                      style: AppText.b1!.copyWith(
                        fontFamily: 'Montserrat',
                        fontSize: AppDimensions.normalize(6),
                      ),
                    ),
                  ],
                ),
                Space.y1!,
                /*Text(
                  "Baptiste",
                  style: AppText.h1!.copyWith(
                    fontFamily: 'Montserrat',
                    fontSize: AppDimensions.normalize(25),
                    fontWeight: FontWeight.w100,
                  ),
                ),*/
                Row(
                  children: [
                    Center(
                      child: Text(
                        "Baptiste NOUAILHAC",
                        style: AppText.h1b!.copyWith(
                          fontSize: AppDimensions.normalize(13),
                          height: 1,
                        ),
                      ),
                    ),
                    Container(
                      width: 80,
                      margin: const EdgeInsets.only(left: 30.0),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(1000),
                        child: Image.asset(
                          StaticUtils.mobilePhoto,
                        ),
                      ),
                    ),
                    const Spacer(),
                  ],
                ),
                EntranceFader(
                  offset: const Offset(-10, 0),
                  delay: const Duration(seconds: 1),
                  duration: const Duration(milliseconds: 800),
                  child: Row(
                    children: [
                      Icon(
                        Icons.play_arrow_rounded,
                        color: AppTheme.c!.primary!,
                      ),
                      Text(
                        "Flutter/Javascript Full-stack Dev",
                        style: AppText.b1,
                      ),

                      /*AnimatedTextKit(
                        animatedTexts: [
                          TyperAnimatedText(
                            ' Flutter Developer',
                            speed: const Duration(milliseconds: 50),
                            textStyle: AppText.b1,
                          ),
                          TyperAnimatedText(
                            ' UI/UX Enthusiast',
                            speed: const Duration(milliseconds: 50),
                            textStyle: AppText.b1,
                          ),
                          TyperAnimatedText(
                            ' A friend :)',
                            speed: const Duration(milliseconds: 50),
                            textStyle: AppText.b1,
                          ),
                        ],
                        isRepeatingAnimation: true,
                      ),*/
                    ],
                  ),
                ),
                Space.y2!,
                const SocialLinks(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
