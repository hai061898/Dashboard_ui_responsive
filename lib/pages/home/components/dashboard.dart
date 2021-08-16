
import 'package:flutter/material.dart';

import 'package:response/pages/home/components/recenFile.dart';
import 'package:response/pages/home/components/starageDetails.dart';

import '../../../constant.dart';
import '../../../responsive.dart';
import 'header.dart';
import 'myfile.dart';

class DashboardScreen extends StatelessWidget {
  const DashboardScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        child: Column(
          children: [
            Header(),
            SizedBox(height: defaultPadding),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  flex: 5,
                  child: Column(
                    children: [
                      MyFiles(),
                      SizedBox(height: defaultPadding),
                      RecentFiles(),
                        if (Responsive.isMobile(context))
                        SizedBox(height: defaultPadding),
                      if (Responsive.isMobile(context)) StarageDetails(),
                    ],
                  ),
                ),

                if (!Responsive.isMobile(context))
                  SizedBox(width: defaultPadding),
               
                if (!Responsive.isMobile(context))
                  Expanded(
                    flex: 2,
                    child: StarageDetails(),
                  ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}


