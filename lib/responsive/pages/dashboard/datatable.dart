import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Datatable extends StatefulWidget {
  @override
  _DatatableState createState() => _DatatableState();
}

class _DatatableState extends State<Datatable> {
  ScrollController a = ScrollController();
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10), color: Colors.white),
      padding: EdgeInsets.only(
          left: size.width / 50, right: size.width / 50, top: 15, bottom: 15),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('Responsive Table',
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
                        DataCell(Container(
                            height: 30,
                            width: 60,
                            decoration: BoxDecoration(
                                color: Colors.green,
                                borderRadius: BorderRadius.circular(5)),
                            child: Center(
                                child: Text(
                              'paid',
                              style:
                                  GoogleFonts.montserrat(color: Colors.white),
                            )))),
                        DataCell(Text('#133slf'))
                      ]),
                      DataRow(cells: [
                        DataCell(Text('#133slf')),
                        DataCell(Text('#133slf')),
                        DataCell(Text('#133slf')),
                        DataCell(Text('#133slf')),
                        DataCell(Container(
                            height: 30,
                            width: 80,
                            decoration: BoxDecoration(
                                color: Colors.red,
                                borderRadius: BorderRadius.circular(5)),
                            child: Center(
                                child: Text(
                              'shipped',
                              style:
                                  GoogleFonts.montserrat(color: Colors.white),
                            )))),
                        DataCell(Text('#133slf'))
                      ]),
                      DataRow(cells: [
                        DataCell(Text('#133slf')),
                        DataCell(Text('#133slf')),
                        DataCell(Text('#133slf')),
                        DataCell(Text('#133slf')),
                        DataCell(Container(
                            height: 30,
                            width: 60,
                            decoration: BoxDecoration(
                                color: Colors.green,
                                borderRadius: BorderRadius.circular(5)),
                            child: Center(
                                child: Text(
                              'paid',
                              style:
                                  GoogleFonts.montserrat(color: Colors.white),
                            )))),
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
