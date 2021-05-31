import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SettlementTable extends StatefulWidget {
  @override
  _SettlementTableState createState() => _SettlementTableState();
}

class _SettlementTableState extends State<SettlementTable> {
  ScrollController a = ScrollController();
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10), color: Colors.white),
      padding: EdgeInsets.all(15),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('Settlements History',
              style: GoogleFonts.montserrat(
                  fontSize: 20, fontWeight: FontWeight.w500)),
          SizedBox(height: 20),
          Scrollbar(
            showTrackOnHover: true,
            isAlwaysShown: true,
            controller: a,
            child: SingleChildScrollView(
              controller: a,
              scrollDirection: Axis.horizontal,
              child: Container(
                child: DataTable(
                    decoration: BoxDecoration(color: Colors.white),
                    columnSpacing: MediaQuery.of(context).size.width / 10,
                    columns: [
                      DataColumn(
                        label: Text('INVOICE'),
                      ),
                      DataColumn(
                        label: Text('USER'),
                      ),
                      DataColumn(
                        label: Text('DATE'),
                      ),
                      DataColumn(
                        label: Text('AMOUNT'),
                      ),
                      DataColumn(
                        label: Text('STATUS'),
                      ),
                      DataColumn(
                        label: Text('COUNTRY'),
                      )
                    ],
                    rows: [
                      DataRow(cells: [
                        DataCell(Text('#133slf')),
                        DataCell(Text('#133slf')),
                        DataCell(Text('#133slf')),
                        DataCell(Text('#133slf')),
                        DataCell(Text('#133slf')),
                        DataCell(Text('#133slf'))
                      ]),
                      DataRow(cells: [
                        DataCell(Text('#133slf')),
                        DataCell(Text('#133slf')),
                        DataCell(Text('#133slf')),
                        DataCell(Text('#133slf')),
                        DataCell(Text('#133slf')),
                        DataCell(Text('#133slf'))
                      ]),
                      DataRow(cells: [
                        DataCell(Text('#133slf')),
                        DataCell(Text('#133slf')),
                        DataCell(Text('#133slf')),
                        DataCell(Text('#133slf')),
                        DataCell(Text('#133slf')),
                        DataCell(Text('#133slf'))
                      ])
                    ]),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
