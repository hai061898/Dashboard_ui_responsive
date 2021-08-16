import 'package:flutter/material.dart';
import 'package:response/controller/home_controller.dart';
import 'package:provider/provider.dart';
import 'package:response/pages/home/components/dashboard.dart';
import '../../responsive.dart';
import 'components/side_menu.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: context.read<MenuController>().scaffoldKey,
      drawer: SideMenu(),
      body: SafeArea(
        child: Row(
          children: [
                 if (Responsive.isDesktop(context))
            Expanded(
              child: SideMenu(),
            ),
            SizedBox(
              width: 5,
            ),
            Expanded(
              flex: 5,
              child: DashboardScreen(),
            ),
          ],
        ),
      ),
    );
  }
}
