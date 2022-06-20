import 'package:flutter/material.dart';
import 'package:folio/configs/configs.dart';
import 'package:folio/constants.dart';
import 'package:folio/utils/about_utils.dart';

import 'package:folio/utils/utils.dart';
import 'package:folio/utils/work_utils.dart';
import 'package:folio/widget/about_me_data.dart';
import 'package:folio/widget/community_button.dart';
import 'package:folio/widget/custom_text_heading.dart';
import 'package:folio/widget/tech_widget.dart';
import 'package:folio/responsive/responsive.dart';
import 'package:universal_html/html.dart' as html;

class AboutDesktop extends StatelessWidget {
  const AboutDesktop({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;

    return Container(
      padding: Space.h,
      child: Column(
        children: [
          const CustomSectionHeading(
            text: '\nÀ propos de moi',
          ),
          Space.y1!,
          Row(
            children: [
              Expanded(
                child: Image.asset(
                  StaticUtils.coloredPhoto,
                  height: height * 0.7,
                ),
              ),
              Expanded(
                flex: width < 1230 ? 2 : 1,
                child: Container(
                  padding: EdgeInsets.only(left: width < 1230 ? 25.0 : 0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Baptiste Nouailhac',
                        style: AppText.b1!.copyWith(
                          color: AppTheme.c!.primary,
                        ),
                      ),
                      Space.y1!,
                      Text(
                        AboutUtils.aboutMeHeadline,
                        style: AppText.b1b!.copyWith(
                          fontFamily: 'Montserrat',
                        ),
                      ),
                      Space.y!,
                      Text(
                        AboutUtils.aboutMeDetail,
                        style: AppText.b2!.copyWith(
                          height: 2,
                          letterSpacing: 1.1,
                          fontFamily: 'Montserrat',
                          fontSize: AppDimensions.normalize(5),
                        ),
                        textAlign: TextAlign.justify,
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
                                          ? AppDimensions.normalize(16)
                                          : AppDimensions.normalize(16),
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
                        children: StaticUtils.ThecIcon
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
                                      ? AppDimensions.normalize(9)
                                      : AppDimensions.normalize(14),
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
                      Row(
                        children: StaticUtils.CompanyIcon.asMap()
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
                      Space.y1!,
                      Center(
                        child: SizedBox(
                          height: AppDimensions.normalize(25),
                          width: AppDimensions.normalize(60),
                          child: OutlinedButton(
                            onPressed: () =>
                                html.window.open(StaticUtils.resume, 'pdf'),
                            child: const Text(
                              "Mon CV",
                            ),
                          ),
                        ),
                      ),
                      
                      
                      /*Row(
                        children: [
                          
                          Space.x1!,
                          Container(
                            color: Colors.grey[900]!,
                            width: AppDimensions.normalize(30),
                            height: AppDimensions.normalize(0.5),
                          ),
                          ...WorkUtils.logos.asMap().entries.map(
                                (e) => Expanded(
                                  child: CommunityIconBtn(
                                    icon: e.value,
                                    link: WorkUtils.communityLinks[e.key],
                                    height:
                                        WorkUtils.communityLogoHeight[e.key],
                                  ),
                                ),
                              )
                        ],
                      ),*/
                    ],
                  ),
                ),
                
              ),
              
              Container(
                width: width < 1230 ? width * 0.05 : width * 0.1,
              ),
              
            ],
          )
        ],
      ),
    );
  }
}
