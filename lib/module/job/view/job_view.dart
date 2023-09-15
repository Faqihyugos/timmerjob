import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:timmerjob/core.dart';
import 'package:timmerjob/module/job/view/job_detail_view.dart';
import 'package:timmerjob/module/job/widget/bookmark.dart';
import '../controller/job_controller.dart';

class JobView extends StatefulWidget {
  final String? displayName;
  static const double kBasePadding = 4.0;
  static const double kSafePadding = 16.0;
  const JobView({Key? key, this.displayName}) : super(key: key);

  Widget build(context, JobController controller) {
    controller.view = this;
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Colors.grey[200],
          elevation: 0,
          automaticallyImplyLeading: false,
          centerTitle: true,
          title: RichText(
            text: TextSpan(
              text: 'Timmer',
              style: GoogleFonts.poppins(
                color: Colors.black,
                fontSize: 48.0,
                fontWeight: FontWeight.w800,
              ),
              children: <TextSpan>[
                TextSpan(
                  text: 'Jobs',
                  style: GoogleFonts.poppins(
                    color: Color(0xFF1976D2),
                    fontSize: 48.0,
                    fontWeight: FontWeight.w800,
                  ),
                )
              ],
            ),
          ),
          actions: [
            IconButton(
                icon: Icon(
                  Icons.exit_to_app,
                  color: Colors.grey[800],
                ),
                onPressed: () {
                  Navigator.pop(context);
                })
          ]),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Container(
              padding: EdgeInsets.fromLTRB(
                  kSafePadding, 2 * kSafePadding, kSafePadding, 0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Hello ${displayName ?? ""},',
                      style: GoogleFonts.lato(
                          color: Colors.grey[800],
                          fontSize: 16.0,
                          fontWeight: FontWeight.w500)),
                  SizedBox(
                    height: 2.0,
                  ),
                  Text('Let\'s Find Your Job',
                      style: GoogleFonts.poppins(
                          color: Colors.black,
                          fontSize: 26.0,
                          fontWeight: FontWeight.w800))
                ],
              ),
            ),
            const SizedBox(height: 1.5 * kSafePadding),
            Container(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: kSafePadding),
                    child: Text(
                      'Recommended Jobs',
                      style: GoogleFonts.poppins(
                          color: Colors.black,
                          fontSize: 20.0,
                          fontWeight: FontWeight.w600),
                    ),
                  ),
                  const SizedBox(
                    height: 2.0 * kBasePadding,
                  ),
                  Container(
                    height: 14 * kSafePadding,
                    child: ListView.builder(
                      shrinkWrap: true,
                      scrollDirection: Axis.horizontal,
                      itemCount: controller.recommendedJobs.length,
                      itemBuilder: (context, index) {
                        return InkWell(
                          onTap: () {
                            Get.to(JobsDetail(
                              jobPosition:
                                  controller.recommendedJobs[index].jobPosition,
                              companyName:
                                  controller.recommendedJobs[index].companyName,
                              location:
                                  controller.recommendedJobs[index].location,
                              salaryRange:
                                  controller.recommendedJobs[index].salaryRange,
                              logoName:
                                  controller.recommendedJobs[index].logoName,
                            ));
                          },
                          child: Container(
                            width: 10 * kSafePadding,
                            margin:
                                index != controller.recommendedJobs.length - 1
                                    ? EdgeInsets.only(left: kSafePadding)
                                    : EdgeInsets.symmetric(
                                        horizontal: kSafePadding),
                            padding: EdgeInsets.symmetric(
                                vertical: kSafePadding,
                                horizontal: 2 * kBasePadding),
                            decoration: BoxDecoration(
                              border: Border.all(
                                color: const Color.fromARGB(255, 238, 238, 238),
                              ),
                              borderRadius: BorderRadius.circular(16.0),
                            ),
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Image.asset(
                                  'images/${controller.recommendedJobs[index].logoName}',
                                  scale: 2.0,
                                ),
                                const SizedBox(height: kSafePadding),
                                Column(
                                  crossAxisAlignment:
                                      CrossAxisAlignment.stretch,
                                  children: [
                                    Text(
                                        controller
                                            .recommendedJobs[index].jobPosition,
                                        style: GoogleFonts.lato(
                                            color: Colors.black,
                                            fontSize: 16.0,
                                            fontWeight: FontWeight.w700)),
                                    const SizedBox(height: 2.0),
                                    Text(
                                        controller
                                            .recommendedJobs[index].companyName,
                                        style: GoogleFonts.lato(
                                            color: Colors.grey[800],
                                            fontSize: 16.0,
                                            fontWeight: FontWeight.w700)),
                                    const SizedBox(height: 4.0),
                                    Text(
                                        controller
                                            .recommendedJobs[index].location,
                                        style: GoogleFonts.lato(
                                          color: Colors.grey[800],
                                        )),
                                    const SizedBox(height: 4.0),
                                    Text(
                                        controller
                                            .recommendedJobs[index].salaryRange,
                                        style: GoogleFonts.lato(
                                            color: Colors.grey[800],
                                            fontWeight: FontWeight.w600))
                                  ],
                                )
                              ],
                            ),
                          ),
                        );
                      },
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 1.5 * kSafePadding),
            Container(
              padding: EdgeInsets.symmetric(horizontal: kSafePadding),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Recent Jobs',
                    style: GoogleFonts.poppins(
                        color: Colors.black,
                        fontSize: 20.0,
                        fontWeight: FontWeight.w600),
                  ),
                  const SizedBox(height: 2 * kBasePadding),
                  ListView.builder(
                    physics: NeverScrollableScrollPhysics(),
                    shrinkWrap: true,
                    itemCount: controller.recentJobs.length,
                    itemBuilder: (context, index) {
                      return InkWell(
                        onTap: () {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) {
                            return JobsDetail(
                              jobPosition:
                                  controller.recentJobs[index].jobPosition,
                              companyName:
                                  controller.recentJobs[index].companyName,
                              location: controller.recentJobs[index].location,
                              salaryRange:
                                  controller.recentJobs[index].salaryRange,
                              logoName: controller.recentJobs[index].logoName,
                            );
                          }));
                        },
                        child: Container(
                          margin: EdgeInsets.only(bottom: kSafePadding),
                          padding: EdgeInsets.all(kSafePadding),
                          decoration: BoxDecoration(
                            border: Border.all(
                              color: const Color.fromARGB(
                                255,
                                238,
                                238,
                                238,
                              ),
                            ),
                            borderRadius: BorderRadius.circular(16.0),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Container(
                                child: Row(
                                  children: [
                                    Image.asset(
                                      'images/${controller.recentJobs[index].logoName}',
                                      scale: 2.0,
                                    ),
                                    const SizedBox(width: kSafePadding),
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                            controller
                                                .recentJobs[index].jobPosition,
                                            style: GoogleFonts.lato(
                                                color: Colors.black,
                                                fontSize: 16.0,
                                                fontWeight: FontWeight.w700)),
                                        const SizedBox(height: 2.0),
                                        Text(
                                            controller
                                                .recentJobs[index].companyName,
                                            style: GoogleFonts.lato(
                                                color: Colors.grey[800],
                                                fontSize: 16.0,
                                                fontWeight: FontWeight.w700)),
                                        const SizedBox(height: 4.0),
                                        Text(
                                            controller
                                                .recentJobs[index].location,
                                            style: GoogleFonts.lato(
                                              color: Colors.grey[800],
                                            )),
                                        const SizedBox(height: 4.0),
                                        Text(
                                            controller
                                                .recentJobs[index].salaryRange,
                                            style: GoogleFonts.lato(
                                                color: Colors.grey[800],
                                                fontWeight: FontWeight.w600))
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                              Bookmark(),
                            ],
                          ),
                        ),
                      );
                    },
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  @override
  State<JobView> createState() => JobController();
}
