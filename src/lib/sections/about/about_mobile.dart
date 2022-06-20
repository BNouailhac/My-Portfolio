import 'package:flutter/foundation.dart';
import 'package:folio/configs/configs.dart';
import 'package:folio/utils/about_utils.dart';
import 'package:folio/utils/utils.dart';
import 'package:folio/utils/work_utils.dart';

import 'package:folio/widget/custom_text_heading.dart';
import 'package:universal_html/html.dart' as html;
import 'package:folio/responsive/responsive.dart';
import 'package:flutter/material.dart';
import 'package:folio/constants.dart';
import 'package:folio/widget/about_me_data.dart';
import 'package:folio/widget/community_button.dart';
import 'package:folio/widget/tech_widget.dart';

class AboutMobile extends StatelessWidget {
  const AboutMobile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;

    return Container(
      padding: Space.h,
      child: Column(
        children: [
          const CustomSectionHeading(
            text: '\nÀ propos de moi',
          ),
          Space.y1!,
          Image.asset(
            StaticUtils.mobilePhoto,
            height: height * 0.27,
          ),
          SizedBox(
            height: height * 0.03,
          ),
          Align(
            alignment: Alignment.centerLeft,
            child: Text(
              "Baptiste Nouailhac",
              style: AppText.b2!.copyWith(
                color: AppTheme.c!.primary,
              ),
            ),
          ),
          Space.y1!,
          Text(
            AboutUtils.aboutMeHeadline,
            style: AppText.b2b!.copyWith(
              fontFamily: 'Montserrat',
            ),
          ),
          SizedBox(
            height: height * 0.02,
          ),
          Text(
            AboutUtils.aboutMeDetail,
            style: AppText.l1!.copyWith(
              height: 2,
              letterSpacing: 1.1,
              fontFamily: 'Montserrat',
            ),
          ),
          Center(
            child: SizedBox(
              height: AppDimensions.normalize(25),
              width: AppDimensions.normalize(60),
              child: Row(
                children: StaticUtils.universityicon
                    .asMap()
                    .entries
                    .map(
                      (e) => Padding(
                        padding: Responsive.isMobile(context)
                            ? Space.all(0.2, 0)
                            : Space.h!,
                        child: IconButton(
                          highlightColor: Colors.white54,
                          splashRadius: AppDimensions.normalize(12),
                          icon: Image.network(
                            e.value,
                            height: Responsive.isMobile(context)
                                ? AppDimensions.normalize(10)
                                : null,
                          ),
                          iconSize: Responsive.isMobile(context)
                              ? AppDimensions.normalize(20)
                              : AppDimensions.normalize(20),
                          onPressed: () => openURL(
                            StaticUtils.universityiconlinks[e.key],
                          ),
                        ),
                      ),
                    )
                    .toList(),
              ),
            ),
          ),
          Divider(
            color: Colors.grey[800],
            thickness: AppDimensions.normalize(0.5),
          ),
          Space.y!,
          Text(
            'Technologies que je maitrise:',
            style: AppText.l1!.copyWith(
              color: AppTheme.c!.primary,
            ),
          ),
          Space.y!, 
          Row(
            children: StaticUtils.ThecIcon.asMap()
                .entries
                .map(
                  (e) => Padding(
                    padding: Responsive.isMobile(context)
                        ? Space.all(0.7, 0)
                        : Space.h!,
                    child: IconButton(
                      highlightColor: Colors.white54,
                      splashRadius: AppDimensions.normalize(8),
                      icon: Image.network(
                        e.value,
                        height: Responsive.isMobile(context)
                            ? AppDimensions.normalize(10)
                            : null,
                      ),
                      iconSize: Responsive.isMobile(context)
                          ? AppDimensions.normalize(10)
                          : AppDimensions.normalize(15),
                      onPressed: () => openURL(
                        StaticUtils.ThecIconLinks[e.key],
                      ),
                    ),
                  ),
                )
                .toList(),
          ),
          Space.y!,
          Divider(
            color: Colors.grey[800],
            thickness: AppDimensions.normalize(0.5),
          ),
          Text(
            'J\'ai eu la chance de travailler avec:',
            style: AppText.l1!.copyWith(
              color: AppTheme.c!.primary,
            ),
          ),
          Space.y!,
          Center(
            child: SizedBox(
              height: AppDimensions.normalize(25),
              width: AppDimensions.normalize(60),
              child:Row(
                children: StaticUtils.CompanyIcon.asMap()
                    .entries
                    .map(
                      (e) => Padding(
                        padding: Responsive.isMobile(context)
                            ? Space.all(0.5, 0)
                            : Space.h!,
                        child: IconButton(
                          highlightColor: Colors.white54,
                          splashRadius: AppDimensions.normalize(8),
                          icon: Image.network(
                            e.value,
                            height: Responsive.isMobile(context)
                                ? AppDimensions.normalize(10)
                                : null,
                          ),
                          iconSize: Responsive.isMobile(context)
                              ? AppDimensions.normalize(9)
                              : AppDimensions.normalize(14),
                          onPressed: () => openURL(
                            StaticUtils.CompanyIconLinks[e.key],
                          ),
                        ),
                      ),
                    )
                    .toList(),
              ),
            ),
          ),
          Space.y!,
          OutlinedButton(
              child: const Text("Mon CV"),
              onPressed: () {
                kIsWeb
                    ? html.window.open(StaticUtils.resume, "pdf")
                    : openURL(StaticUtils.resume);
              }),
        ],
      ),
    );
  }
}
