import 'package:data_table_2/data_table_2.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:response/data/recentfile_data.dart';

import '../../../constant.dart';

class RecentFiles extends StatelessWidget {
  const RecentFiles({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(defaultPadding),
      decoration: BoxDecoration(
        color: secondaryColor,
        borderRadius: const BorderRadius.all(Radius.circular(10)),
      ),
      child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        Text(
          "Recent Files",
          style: Theme.of(context).textTheme.subtitle1,
        ),
        SizedBox(
          width: double.infinity,
          child: DataTable2(
            columnSpacing: defaultPadding,
            minWidth: 600,
            columns: [
              DataColumn(
                label: Text("File Name"),
              ),
              DataColumn(
                label: Text("Date"),
              ),
              DataColumn(
                label: Text("Size"),
              ),
            ],
            rows: List.generate(
              demoRecentFiles.length,
              (index) => rowdata(demoRecentFiles[index]),
            ),
          ),
        )
      ]),
    );
  }

  DataRow rowdata(RecentFile file) {
    return DataRow(
      cells: [
        DataCell(Row(
          children: [
            SvgPicture.asset(
              file.icon!,
              height: 30,
              width: 30,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: defaultPadding),
              child: Text(file.title!),
            ),
          ],
        )),
        DataCell(Text(file.date!)),
        DataCell(Text(file.size!)),
      ],
    );
  }
}
