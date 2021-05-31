import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TransactionTable extends StatefulWidget {
  @override
  _TransactionTableState createState() => _TransactionTableState();
}

class _TransactionTableState extends State<TransactionTable> {
  ScrollController a = ScrollController();
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10), color: Colors.white),
      padding: EdgeInsets.only(top: 15, bottom: 15),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('Transaction History',
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
