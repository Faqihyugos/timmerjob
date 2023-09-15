import 'package:flutter/material.dart';
import 'package:timmerjob/core.dart';
import 'package:timmerjob/model/jobs.dart';
import '../view/job_view.dart';

class JobController extends State<JobView> {
  static late JobController instance;
  late JobView view;

  @override
  void initState() {
    instance = this;
    super.initState();
  }

  @override
  void dispose() => super.dispose();

  @override
  Widget build(BuildContext context) => widget.build(context, this);

  List<Jobs> recommendedJobs = [
    Jobs(
        jobPosition: 'Product Designer',
        companyName: 'Google',
        location: 'Stockholm, Sweden',
        salaryRange: '\$90 - \$120K',
        logoName: 'google.png',
        savedJob: false),
    Jobs(
        jobPosition: 'UX Engineer',
        companyName: 'UBER',
        location: 'San Fransisco, USA',
        salaryRange: '\$65 - \$80K',
        logoName: 'uber.png',
        savedJob: false),
    Jobs(
        jobPosition: 'UX Designer',
        companyName: 'Microsoft',
        location: 'Washington DC, USA',
        salaryRange: '\$65 - \$90K',
        logoName: 'microsoft.png',
        savedJob: false),
    Jobs(
        jobPosition: 'Product Designer',
        companyName: 'Google',
        location: 'Stockholm, Sweden',
        salaryRange: '\$90 - \$120K',
        logoName: 'google.png',
        savedJob: false),
    Jobs(
        jobPosition: 'UX Engineer',
        companyName: 'UBER',
        location: 'San Fransisco, USA',
        salaryRange: '\$65 - \$80K',
        logoName: 'uber.png',
        savedJob: false),
    Jobs(
        jobPosition: 'UX Designer',
        companyName: 'Microsoft',
        location: 'Washington DC, USA',
        salaryRange: '\$65 - \$90K',
        logoName: 'microsoft.png',
        savedJob: false)
  ];

  List<Jobs> recentJobs = [
    Jobs(
        jobPosition: 'Senior UX Designer',
        companyName: 'Apple Inc.',
        location: 'California, United States',
        salaryRange: '\$110 - \$130K',
        logoName: 'apple.png',
        savedJob: false),
    Jobs(
        jobPosition: 'Software Engineer - Web',
        companyName: 'Reddit',
        location: 'California, United States',
        salaryRange: '\$60 - \$75K',
        logoName: 'reddit.png',
        savedJob: false),
    Jobs(
        jobPosition: 'Senior UX Designer',
        companyName: 'Apple Inc.',
        location: 'California, United States',
        salaryRange: '\$110 - \$130K',
        logoName: 'apple.png',
        savedJob: false),
    Jobs(
        jobPosition: 'Software Engineer - Web',
        companyName: 'Reddit',
        location: 'California, United States',
        salaryRange: '\$60 - \$75K',
        logoName: 'reddit.png',
        savedJob: false),
    Jobs(
        jobPosition: 'Senior UX Designer',
        companyName: 'Apple Inc.',
        location: 'California, United States',
        salaryRange: '\$110 - \$130K',
        logoName: 'apple.png',
        savedJob: false),
    Jobs(
        jobPosition: 'Software Engineer - Web',
        companyName: 'Reddit',
        location: 'California, United States',
        salaryRange: '\$60 - \$75K',
        logoName: 'reddit.png',
        savedJob: false)
  ];
}
