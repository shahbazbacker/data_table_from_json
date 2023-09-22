import 'package:flutter/material.dart';
import 'package:test_one/table_provider/table_provider.dart';
import 'package:provider/provider.dart';

import 'models/table_model.dart';

class CustomTable extends StatefulWidget {
  const CustomTable({Key? key}) : super(key: key);

  @override
  State<CustomTable> createState() => _CustomTableState();
}

class _CustomTableState extends State<CustomTable> {
  @override
  void initState() {
    tableData = context.read<TableProvider>().getData();
    super.initState();
  }

  List<TableModel>? tableData;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: DataTable(
            columns: const <DataColumn>[
              DataColumn(
                label:TitleText( title: 'Name',),
              ),
              DataColumn(
                label:TitleText( title: 'Age',),
              ),   DataColumn(
                label:TitleText( title: 'Gender',),
              ),

            ],
            rows:  List.generate(tableData!.length, (index) => DataRow(
              cells: <DataCell>[
                DataCell(Text(tableData![index].name)),
                DataCell(Text(tableData![index].age)),
                DataCell(Text(tableData![index].gender)),
              ],
            ),)
        ),
      ),
    );
  }
}

class TitleText extends StatelessWidget {
  const TitleText({
    super.key,
    required this.title,

  });

  final String title;

  @override
  Widget build(BuildContext context) {
    return
      Expanded(
        child: Text(title,  style: TextStyle(fontStyle: FontStyle.italic),),
      );
  }
}

