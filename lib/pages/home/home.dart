import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:web_portfolio/pages/home/components/carousel.dart';
import 'package:web_portfolio/pages/home/components/cv_section.dart';
import 'package:web_portfolio/pages/home/components/education_section.dart';
import 'package:web_portfolio/pages/home/components/experience_section.dart';
import 'package:web_portfolio/pages/home/components/footer.dart';
import 'package:web_portfolio/pages/home/components/header.dart';
import 'package:web_portfolio/pages/home/components/ios_app_ad.dart';
import 'package:web_portfolio/pages/home/components/portfolio_stats.dart';
import 'package:web_portfolio/pages/home/components/skill_section.dart';
import 'package:web_portfolio/pages/home/components/sponsors.dart';
import 'package:web_portfolio/pages/home/components/testimonial_widget.dart';
import 'package:web_portfolio/pages/home/components/website_ad.dart';
import 'package:web_portfolio/utils/constants.dart';
import 'package:web_portfolio/utils/globals.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: Globals.scaffoldKey,
      endDrawer: Drawer(
        child: SafeArea(
          child: Padding(
            padding: EdgeInsets.symmetric(
              horizontal: 16.0,
              vertical: 24.0,
            ),
            child: ListView.separated(
              itemBuilder: (BuildContext context, int index) {
                return headerItems[index].isButton
                    ? MouseRegion(
                        cursor: SystemMouseCursors.click,
                        child: Container(
                          decoration: BoxDecoration(
                            color: kDangerColor,
                            borderRadius: BorderRadius.circular(8.0),
                          ),
                          padding: EdgeInsets.symmetric(horizontal: 28.0),
                          child: TextButton(
                            onPressed: headerItems[index].onTap,
                            child: Text(
                              headerItems[index].title,
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 13.0,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ),
                      )
                    : ListTile(
                        title: Text(
                          headerItems[index].title,
                          style: TextStyle(
                            color: Colors.white,
                          ),
                        ),
                      );
              },
              separatorBuilder: (BuildContext context, int index) {
                return SizedBox(
                  height: 10.0,
                );
              },
              itemCount: headerItems.length,
            ),
          ),
        ),
      ),
      body: Container(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                child: Header(),
              ),
              Carousel(),
              Divider(color: kCaptionColor),
              SizedBox(height: 50.0),
              // Divider(color: kCaptionColor),
              CvSection(),
              // IosAppAd(),
              // SizedBox(
              //   height: 70.0,
              // ),
              // WebsiteAd(),
              // Padding(
              //   padding: const EdgeInsets.symmetric(vertical: 28.0),
              //   child: PortfolioStats(),
              // ),
              // SizedBox(height: 25.0),
              Divider(color: kCaptionColor),
              SizedBox(height: 50.0),
              ExperienceSection(),
              SizedBox(height: 50.0),
              Divider(color: kCaptionColor),
              SizedBox(height: 50.0),
              EducationSection(),
              SizedBox(height: 50.0),
              Divider(color: kCaptionColor),
              SizedBox(height: 50.0),
              SkillSection(),
              // SizedBox(
              //   height: 50.0,
              // ),
              // Sponsors(),
              SizedBox(
                height: 50.0,
              ),
              Divider(color: kCaptionColor),
              SizedBox(height: 50.0),
              Align(
                alignment: Alignment.center,
                child: Text(
                  "A SNEAK PEAK TO MY WORK",
                  style: GoogleFonts.oswald(
                    color: Colors.white,
                    fontWeight: FontWeight.w900,
                    fontSize: 28.0,
                    height: 1.3,
                  ),
                ),
              ),
              Image.asset("assets/SneakPeak.png"),
              SizedBox(height: 50.0),
              // TestimonialWidget(),
              Divider(color: kCaptionColor),
              Footer(),
            ],
          ),
        ),
      ),
    );
  }
}
