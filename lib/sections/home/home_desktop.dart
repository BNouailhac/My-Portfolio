import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:folio/animations/entrance_fader.dart';
import 'package:folio/configs/configs.dart';

import 'package:folio/utils/utils.dart';
import 'package:folio/widget/social_links.dart';

class HomeDesktop extends StatelessWidget {
  const HomeDesktop({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Container(
      decoration: const BoxDecoration(
        image: DecorationImage(image: AssetImage(StaticUtils.hi), fit: BoxFit.cover),
      ),
      height: size.height * 1.025,
      padding: Space.h,
      child: Image.asset(
                  StaticUtils.hi,
                  height: AppDimensions.normalize(12),
                ),
    );
  }
}
