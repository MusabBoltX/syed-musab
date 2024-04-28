import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:responsive_framework/responsive_framework.dart';
import 'package:web_portfolio/models/education.dart';
import 'package:web_portfolio/utils/constants.dart';
import 'package:web_portfolio/utils/globals.dart';
import 'package:web_portfolio/utils/screen_helper.dart';

final List<Education> educationList = [
  Education(
      description:
          "1. Develop highly scalable and production applications.\n\n2. Overseeing the entire lifecycle of products and projects, starting from development through to deployment. This involves coordinating tasks, resources, and timelines to ensure efficient progress and successful delivery. \n\n3. Identifying and addressing any issues or bugs that arise during development or testing phases. This includes debugging and implementing solutions to ensure the product meets quality standards and user expectations.",
      linkName: "https://www.digitechinfra.com",
      company: "Digitech Infra Associates",
      period: "JANUARY 2024 - PRESENT",
      designation: "SENIOR FLUTTER DEVELOPER"),
  Education(
    description:
        "1. Seamlessly integrate Google Maps functionality into the app with customized markers, overlays, and clustering for improved visualization and user experience.\n\n2. Optimized package flutter_polyline_points to render longer routes accurately and efficiently, enhancing the mapping functionality of the app.\n\n3. Implement a feature allowing users to record their trails accurately, incorporating distance filters for precise tracking and analysis of their activities.",
    linkName: "https://www.codevative.com",
    company: "CODEVATIVE",
    period: "JANUARY 2023 - JANUARY 2024",
    designation: "SENIOR SOFTWARE ENGINEER",
  ),
  Education(
    description:
        "1. Develop apps with responsive UI and stitched APIs with proper error handling.\n\n2. Integrated Regula-SDK using flutter_document_reader_core_ocrandmrz package for Emirates ID cards verification.\n\n3. Successfully liveliness verification using google_ml_kit and Emirates ID using instructed actions.",
    linkName: "https://logicera.net/",
    company: "LOGICERA - MICROSOFT CLOUD PARTNERS",
    period: "JANUARY 2022 - JANUARY 2023",
    designation: "FLUTTER DEVELOPER",
  ),
  Education(
      description:
          "1.Developed HEALTHSOLUTIONS the first virtual hospital and e-commerce solution which was appreciated by App Store Team.\n\n2. In-App Audio/Video Meetings integration.",
      linkName: "https://www.engitechservices.com/",
      company: "ENGITECH SERVICES",
      period: "NOVEMBER 2020 - JANUARY 2022",
      designation: "FLUTTER DEVELOPER"),
];

class ExperienceSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: ScreenHelper(
        desktop: _buildUi(kDesktopMaxWidth),
        tablet: _buildUi(kTabletMaxWidth),
        mobile: _buildUi(getMobileMaxWidth(context)),
      ),
    );
  }

  Widget _buildUi(double width) {
    return Container(
      alignment: Alignment.center,
      child: ResponsiveWrapper(
        maxWidth: width,
        minWidth: width,
        defaultScale: false,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              "PROFESSIONAL EXPERIENCE",
              style: GoogleFonts.oswald(
                color: Colors.white,
                fontWeight: FontWeight.w900,
                fontSize: 30.0,
                height: 1.3,
              ),
            ),
            SizedBox(
              height: 5.0,
            ),
            Wrap(
              children: [
                Container(
                  constraints: BoxConstraints(maxWidth: 400.0),
                  child: Text(
                    "A senior flutter developer while 4+ years of experience. A Proactive, tech enthusiast who is highly skilled towards product development and furious towards projects delivery",
                    style: TextStyle(
                      color: Colors.white,
                      height: 1.5,
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 40.0,
            ),
            LayoutBuilder(
              builder: (context, constraints) {
                return Container(
                  child: Wrap(
                    spacing: 20.0,
                    runSpacing: 20.0,
                    children: educationList
                        .map(
                          (education) => Container(
                            width: constraints.maxWidth / 2.0 - 20.0,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  education.designation,
                                  style: GoogleFonts.oswald(
                                    color: Colors.white,
                                    fontWeight: FontWeight.w700,
                                    fontSize: 20.0,
                                  ),
                                ),
                                SizedBox(
                                  height: 5.0,
                                ),
                                Text(
                                  education.company,
                                  style: GoogleFonts.oswald(
                                    color: Colors.white,
                                    fontWeight: FontWeight.w500,
                                    fontSize: 18.0,
                                  ),
                                ),
                                SizedBox(
                                  height: 5.0,
                                ),
                                Text(
                                  education.period,
                                  style: GoogleFonts.oswald(
                                    color: Colors.white,
                                    fontWeight: FontWeight.w400,
                                    fontSize: 16.0,
                                  ),
                                ),
                                SizedBox(
                                  height: 5.0,
                                ),
                                Text(
                                  education.description,
                                  maxLines: 14,
                                  overflow: TextOverflow.ellipsis,
                                  style: TextStyle(
                                    color: kCaptionColor,
                                    height: 1.5,
                                  ),
                                ),
                                SizedBox(
                                  height: 20.0,
                                ),
                                MouseRegion(
                                  cursor: SystemMouseCursors.click,
                                  child: GestureDetector(
                                    onTap: () {
                                      Globals.openUrl(education.linkName);
                                    },
                                    child: Text(
                                      education.linkName,
                                      style: TextStyle(
                                        color: Colors.white,
                                      ),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  height: 40.0,
                                )
                              ],
                            ),
                          ),
                        )
                        .toList(),
                  ),
                );
              },
            )
          ],
        ),
      ),
    );
  }
}
