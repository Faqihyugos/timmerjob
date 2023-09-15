import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class JobsDetail extends StatelessWidget {
  static const double kBasePadding = 4.0;
  static const double kSafePadding = 16.0;
  final String jobPosition;
  final String companyName;
  final String location;
  final String salaryRange;
  final String logoName;

  JobsDetail(
      {required this.jobPosition,
      required this.companyName,
      required this.location,
      required this.salaryRange,
      required this.logoName});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            backgroundColor: Colors.grey[200],
            elevation: 0,
            leading: IconButton(
                icon: Icon(Icons.arrow_back, color: Colors.blue[700]),
                onPressed: () {
                  Navigator.pop(context);
                }),
            centerTitle: true,
            title: Text(companyName,
                style: GoogleFonts.poppins(
                    color: Colors.black,
                    fontSize: 16.0,
                    fontWeight: FontWeight.w600))),
        body: SingleChildScrollView(
          child: SafeArea(
            minimum: EdgeInsets.all(kSafePadding),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Container(
                  padding: EdgeInsets.only(top: kSafePadding),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Image.asset(
                        'images/$logoName',
                        scale: 1.5,
                      ),
                      const SizedBox(width: kSafePadding),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(jobPosition,
                              style: GoogleFonts.lato(
                                  color: Colors.black,
                                  fontSize: 20.0,
                                  fontWeight: FontWeight.w700)),
                          Text(companyName,
                              style: GoogleFonts.lato(
                                  color: Colors.grey[800],
                                  fontSize: 18.0,
                                  fontWeight: FontWeight.w700)),
                          Text(location,
                              style: GoogleFonts.lato(
                                  color: Colors.grey[800], fontSize: 16.0)),
                          Text(salaryRange,
                              style: GoogleFonts.lato(
                                  color: Colors.grey[800],
                                  fontSize: 16.0,
                                  fontWeight: FontWeight.w600))
                        ],
                      )
                    ],
                  ),
                ),
                const SizedBox(height: 1.5 * kSafePadding),
                Container(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      Text('Job Description',
                          style: GoogleFonts.poppins(
                              color: Colors.black,
                              fontSize: 20.0,
                              fontWeight: FontWeight.w700)),
                      const SizedBox(height: kBasePadding),
                      Text(
                        'I am looking for a strong and efficient UI/UX designer to add to my team. Candidate must pay strong attention to Material.io guidelines. Client must also be proficient with the following technologies: Adobe XD, Invision, Photoshop, Illustrator, Zeplin.',
                        textAlign: TextAlign.justify,
                        style: GoogleFonts.lato(
                            color: Colors.black, fontSize: 16.0),
                      )
                    ],
                  ),
                ),
                const SizedBox(height: 1.5 * kSafePadding),
                Container(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      Text('Qualifications',
                          style: GoogleFonts.poppins(
                              color: Colors.black,
                              fontSize: 20.0,
                              fontWeight: FontWeight.w700)),
                      const SizedBox(height: kBasePadding),
                      Text('•\tMin level of education: B.Sc. in CSE',
                          style: GoogleFonts.lato(
                              color: Colors.black, fontSize: 16.0)),
                      Text('•\tExpert in Laravel framework',
                          style: GoogleFonts.lato(
                              color: Colors.black, fontSize: 16.0)),
                      Text('•\tFluent in English language',
                          style: GoogleFonts.lato(
                              color: Colors.black, fontSize: 16.0)),
                    ],
                  ),
                ),
                const SizedBox(height: 1.5 * kSafePadding),
                Container(
                  padding: EdgeInsets.all(2 * kSafePadding),
                  decoration: BoxDecoration(
                      color: Colors.grey[200],
                      borderRadius: BorderRadius.circular(8.0)),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      Row(
                        children: [
                          Icon(
                            Icons.people_outline,
                            color: Colors.blue[800],
                            size: 28.0,
                          ),
                          const SizedBox(width: 1.5 * kSafePadding),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text('Vacancy',
                                  style: GoogleFonts.lato(
                                      color: Colors.black,
                                      fontSize: 16.0,
                                      fontWeight: FontWeight.w500)),
                              const SizedBox(height: kBasePadding),
                              Text('03',
                                  style: GoogleFonts.lato(
                                      color: Colors.black,
                                      fontSize: 16.0,
                                      fontWeight: FontWeight.w700))
                            ],
                          )
                        ],
                      ),
                      const SizedBox(height: kSafePadding),
                      Row(
                        children: [
                          Icon(
                            Icons.calendar_today,
                            color: Colors.blue[800],
                            size: 28.0,
                          ),
                          const SizedBox(width: 1.5 * kSafePadding),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text('Application Deadline',
                                  style: GoogleFonts.lato(
                                      color: Colors.black,
                                      fontSize: 16.0,
                                      fontWeight: FontWeight.w500)),
                              const SizedBox(height: kBasePadding),
                              Text('31 Aug 2020',
                                  style: GoogleFonts.lato(
                                      color: Colors.black,
                                      fontSize: 16.0,
                                      fontWeight: FontWeight.w700))
                            ],
                          )
                        ],
                      ),
                      const SizedBox(height: kSafePadding),
                      Row(
                        children: [
                          Icon(
                            Icons.picture_in_picture_alt,
                            color: Colors.blue[800],
                            size: 28.0,
                          ),
                          const SizedBox(width: 1.5 * kSafePadding),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text('Interview',
                                  style: GoogleFonts.lato(
                                      color: Colors.black,
                                      fontSize: 16.0,
                                      fontWeight: FontWeight.w500)),
                              const SizedBox(height: kBasePadding),
                              Text('05 Sep 2020',
                                  style: GoogleFonts.lato(
                                      color: Colors.black,
                                      fontSize: 16.0,
                                      fontWeight: FontWeight.w700))
                            ],
                          )
                        ],
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
        ));
  }
}
