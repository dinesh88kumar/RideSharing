import 'dart:html';

import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:smoose_20_05/responsive/responsive.dart';

class Manager extends StatefulWidget {
  @override
  _ManagerState createState() => _ManagerState();
}

class _ManagerState extends State<Manager> {
  @override
  Widget build(BuildContext context) {
    return Responsive(
        mobile: MobileManager(),
        tab: ManagerTab(),
        maxViewDesktop: Managermax(),
        minViewDesktop: Minmanager());
  }
}

class Managermax extends StatefulWidget {
  @override
  _ManagermaxState createState() => _ManagermaxState();
}

class _ManagermaxState extends State<Managermax> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.grey.shade100,
      body: Container(
        child: ListView(
          padding: EdgeInsets.all(20),
          children: [
            SizedBox(
              height: 20,
            ),
            AutoSizeText('Managers',
                style: GoogleFonts.montserrat(
                    fontSize: 24,
                    fontWeight: FontWeight.w500,
                    textStyle: TextStyle())),
            SizedBox(
              height: 50,
            ),
            Row(
              children: [
                Card(
                  elevation: 2,
                  child: Container(
                    height: 400,
                    width: size.width / 5,
                    child: Column(
                      children: [
                        Container(
                          decoration: BoxDecoration(

                              //  backgroundBlendMode: BlendMode.saturation,
                              image: DecorationImage(
                                  colorFilter: ColorFilter.mode(
                                      Color(0xffff5a1e), BlendMode.hardLight),
                                  image: NetworkImage(
                                      'https://st2.depositphotos.com/3591429/10366/i/950/depositphotos_103661132-stock-photo-people-enjoying-food.jpg'),
                                  fit: BoxFit.cover)),
                          height: 150,
                          width: size.width / 5,
                          child: Center(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                AutoSizeText('Deangelo Sena',
                                    style: GoogleFonts.montserrat(
                                        fontSize: 30,
                                        fontWeight: FontWeight.w500,
                                        color: Colors.white,
                                        textStyle: TextStyle())),
                                AutoSizeText('username 1',
                                    style: GoogleFonts.montserrat(
                                        fontSize: 20,
                                        color: Colors.white,
                                        fontWeight: FontWeight.w500,
                                        textStyle: TextStyle())),
                              ],
                            ),
                          ),
                        ),
                        Container(
                          height: 250,
                          width: size.width / 5,
                          color: Colors.white,
                          padding: EdgeInsets.all(30),
                          child: Column(
                            children: [
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  AutoSizeText('id',
                                      style: GoogleFonts.montserrat(
                                          fontSize: 18,
                                          color: Colors.black,
                                          fontWeight: FontWeight.w300,
                                          textStyle: TextStyle())),
                                  AutoSizeText('abcdu934@gmail.com',
                                      style: GoogleFonts.montserrat(
                                          fontSize: 18,
                                          color: Colors.black,
                                          fontWeight: FontWeight.w300,
                                          textStyle: TextStyle())),
                                ],
                              ),
                              SizedBox(
                                height: 20,
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  AutoSizeText('no of tables:',
                                      style: GoogleFonts.montserrat(
                                          fontSize: 18,
                                          color: Colors.black,
                                          fontWeight: FontWeight.w300,
                                          textStyle: TextStyle())),
                                  AutoSizeText('2',
                                      style: GoogleFonts.montserrat(
                                          fontSize: 18,
                                          color: Colors.black,
                                          fontWeight: FontWeight.w300,
                                          textStyle: TextStyle())),
                                ],
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  width: 40,
                ),
                Card(
                  elevation: 2,
                  child: Container(
                    height: 400,
                    width: size.width / 5,
                    child: Column(
                      children: [
                        Container(
                          decoration: BoxDecoration(

                              //  backgroundBlendMode: BlendMode.saturation,
                              image: DecorationImage(
                                  colorFilter: ColorFilter.mode(
                                      Color(0xffff5a1e), BlendMode.hardLight),
                                  image: NetworkImage(
                                      'https://st2.depositphotos.com/3591429/10366/i/950/depositphotos_103661132-stock-photo-people-enjoying-food.jpg'),
                                  fit: BoxFit.cover)),
                          height: 150,
                          width: size.width / 5,
                          child: Center(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                AutoSizeText('Deangelo Sena',
                                    style: GoogleFonts.montserrat(
                                        fontSize: 30,
                                        fontWeight: FontWeight.w500,
                                        color: Colors.white,
                                        textStyle: TextStyle())),
                                AutoSizeText('username 1',
                                    style: GoogleFonts.montserrat(
                                        fontSize: 20,
                                        color: Colors.white,
                                        fontWeight: FontWeight.w500,
                                        textStyle: TextStyle())),
                              ],
                            ),
                          ),
                        ),
                        Container(
                          height: 250,
                          width: size.width / 5,
                          color: Colors.white,
                          padding: EdgeInsets.all(30),
                          child: Column(
                            children: [
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  AutoSizeText('id',
                                      style: GoogleFonts.montserrat(
                                          fontSize: 18,
                                          color: Colors.black,
                                          fontWeight: FontWeight.w300,
                                          textStyle: TextStyle())),
                                  AutoSizeText('abcdu934@gmail.com',
                                      style: GoogleFonts.montserrat(
                                          fontSize: 18,
                                          color: Colors.black,
                                          fontWeight: FontWeight.w300,
                                          textStyle: TextStyle())),
                                ],
                              ),
                              SizedBox(
                                height: 20,
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  AutoSizeText('no of tables:',
                                      style: GoogleFonts.montserrat(
                                          fontSize: 18,
                                          color: Colors.black,
                                          fontWeight: FontWeight.w300,
                                          textStyle: TextStyle())),
                                  AutoSizeText('2',
                                      style: GoogleFonts.montserrat(
                                          fontSize: 18,
                                          color: Colors.black,
                                          fontWeight: FontWeight.w300,
                                          textStyle: TextStyle())),
                                ],
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 50,
            ),
            AutoSizeText('Tables',
                style: GoogleFonts.montserrat(
                    fontSize: 26,
                    fontWeight: FontWeight.w500,
                    textStyle: TextStyle())),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Card(
                  elevation: 3,
                  child: Container(
                    height: 350,
                    width: size.width / 4.3,
                    padding: EdgeInsets.only(top: 50, left: 80, right: 80),
                    child: Center(
                      child: Column(
                        children: [
                          AutoSizeText('Table3',
                              style: GoogleFonts.montserrat(
                                  fontSize: 26,
                                  fontWeight: FontWeight.w500,
                                  textStyle: TextStyle())),
                          SizedBox(
                            height: 10,
                          ),
                          Container(
                              height: 60,
                              width: size.width / 8,
                              child: Center(
                                child: DropdownButton(
                                  focusColor: Colors.white,
                                  dropdownColor: Colors.white,
                                  elevation: 0,
                                  value: assignment,
                                  items: [
                                    DropdownMenuItem(
                                      child: Container(
                                        child: Text(
                                          'Assignment',
                                          style: GoogleFonts.montserrat(
                                              textStyle: TextStyle(
                                                  color: Colors.black)),
                                        ),
                                      ),
                                      value: 1,
                                    ),
                                    DropdownMenuItem(
                                      child: Text(
                                        'Orders:01',
                                        style: GoogleFonts.montserrat(
                                            textStyle:
                                                TextStyle(color: Colors.black)),
                                      ),
                                      value: 2,
                                    ),
                                    DropdownMenuItem(
                                      child: Text(
                                        'Payments:01',
                                        style: GoogleFonts.montserrat(
                                            textStyle:
                                                TextStyle(color: Colors.black)),
                                      ),
                                      value: 3,
                                    ),
                                  ],
                                  onChanged: (dynamic value1) {
                                    setState(() {
                                      assignment = value1;
                                    });
                                  },
                                ),
                              )),
                          AutoSizeText('Empty',
                              style: GoogleFonts.montserrat(
                                  fontSize: 20,
                                  fontWeight: FontWeight.w300,
                                  textStyle: TextStyle(color: Colors.blue))),
                          SizedBox(
                            height: 15,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              AutoSizeText('Text1:',
                                  style: GoogleFonts.montserrat(
                                      fontSize: 20,
                                      fontWeight: FontWeight.w300,
                                      textStyle: TextStyle())),
                              AutoSizeText('1',
                                  style: GoogleFonts.montserrat(
                                      fontSize: 20,
                                      fontWeight: FontWeight.w300,
                                      textStyle: TextStyle())),
                            ],
                          ),
                          SizedBox(
                            height: 15,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              AutoSizeText('Text1:',
                                  style: GoogleFonts.montserrat(
                                      fontSize: 20,
                                      fontWeight: FontWeight.w300,
                                      textStyle: TextStyle())),
                              AutoSizeText('1',
                                  style: GoogleFonts.montserrat(
                                      fontSize: 20,
                                      fontWeight: FontWeight.w300,
                                      textStyle: TextStyle())),
                            ],
                          ),
                          SizedBox(
                            height: 15,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              AutoSizeText('Text1:',
                                  style: GoogleFonts.montserrat(
                                      fontSize: 20,
                                      fontWeight: FontWeight.w300,
                                      textStyle: TextStyle())),
                              AutoSizeText('1',
                                  style: GoogleFonts.montserrat(
                                      fontSize: 20,
                                      fontWeight: FontWeight.w300,
                                      textStyle: TextStyle())),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Card(
                  elevation: 3,
                  child: Container(
                    height: 350,
                    width: size.width / 4.3,
                    padding: EdgeInsets.only(top: 50, left: 80, right: 80),
                    child: Center(
                      child: Column(
                        children: [
                          AutoSizeText('Table3',
                              style: GoogleFonts.montserrat(
                                  fontSize: 26,
                                  fontWeight: FontWeight.w500,
                                  textStyle: TextStyle())),
                          SizedBox(
                            height: 10,
                          ),
                          Container(
                              height: 60,
                              width: size.width / 8,
                              child: Center(
                                child: DropdownButton(
                                  focusColor: Colors.white,
                                  dropdownColor: Colors.white,
                                  elevation: 0,
                                  value: assignment,
                                  items: [
                                    DropdownMenuItem(
                                      child: Container(
                                        child: Text(
                                          'Assignment',
                                          style: GoogleFonts.montserrat(
                                              textStyle: TextStyle(
                                                  color: Colors.black)),
                                        ),
                                      ),
                                      value: 1,
                                    ),
                                    DropdownMenuItem(
                                      child: Text(
                                        'Orders:01',
                                        style: GoogleFonts.montserrat(
                                            textStyle:
                                                TextStyle(color: Colors.black)),
                                      ),
                                      value: 2,
                                    ),
                                    DropdownMenuItem(
                                      child: Text(
                                        'Payments:01',
                                        style: GoogleFonts.montserrat(
                                            textStyle:
                                                TextStyle(color: Colors.black)),
                                      ),
                                      value: 3,
                                    ),
                                  ],
                                  onChanged: (dynamic value1) {
                                    setState(() {
                                      assignment = value1;
                                    });
                                  },
                                ),
                              )),
                          AutoSizeText('Empty',
                              style: GoogleFonts.montserrat(
                                  fontSize: 20,
                                  fontWeight: FontWeight.w300,
                                  textStyle: TextStyle(color: Colors.blue))),
                          SizedBox(
                            height: 15,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              AutoSizeText('Text1:',
                                  style: GoogleFonts.montserrat(
                                      fontSize: 20,
                                      fontWeight: FontWeight.w300,
                                      textStyle: TextStyle())),
                              AutoSizeText('1',
                                  style: GoogleFonts.montserrat(
                                      fontSize: 20,
                                      fontWeight: FontWeight.w300,
                                      textStyle: TextStyle())),
                            ],
                          ),
                          SizedBox(
                            height: 15,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              AutoSizeText('Text1:',
                                  style: GoogleFonts.montserrat(
                                      fontSize: 20,
                                      fontWeight: FontWeight.w300,
                                      textStyle: TextStyle())),
                              AutoSizeText('1',
                                  style: GoogleFonts.montserrat(
                                      fontSize: 20,
                                      fontWeight: FontWeight.w300,
                                      textStyle: TextStyle())),
                            ],
                          ),
                          SizedBox(
                            height: 15,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              AutoSizeText('Text1:',
                                  style: GoogleFonts.montserrat(
                                      fontSize: 20,
                                      fontWeight: FontWeight.w300,
                                      textStyle: TextStyle())),
                              AutoSizeText('1',
                                  style: GoogleFonts.montserrat(
                                      fontSize: 20,
                                      fontWeight: FontWeight.w300,
                                      textStyle: TextStyle())),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Card(
                  elevation: 3,
                  child: Container(
                    height: 350,
                    width: size.width / 4.3,
                    padding: EdgeInsets.only(top: 50, left: 80, right: 80),
                    child: Center(
                      child: Column(
                        children: [
                          AutoSizeText('Table3',
                              style: GoogleFonts.montserrat(
                                  fontSize: 26,
                                  fontWeight: FontWeight.w500,
                                  textStyle: TextStyle())),
                          SizedBox(
                            height: 10,
                          ),
                          Container(
                              height: 60,
                              width: size.width / 8,
                              child: Center(
                                child: DropdownButton(
                                  focusColor: Colors.white,
                                  dropdownColor: Colors.white,
                                  elevation: 0,
                                  value: assignment,
                                  items: [
                                    DropdownMenuItem(
                                      child: Container(
                                        child: Text(
                                          'Assignment',
                                          style: GoogleFonts.montserrat(
                                              textStyle: TextStyle(
                                                  color: Colors.black)),
                                        ),
                                      ),
                                      value: 1,
                                    ),
                                    DropdownMenuItem(
                                      child: Text(
                                        'Orders:01',
                                        style: GoogleFonts.montserrat(
                                            textStyle:
                                                TextStyle(color: Colors.black)),
                                      ),
                                      value: 2,
                                    ),
                                    DropdownMenuItem(
                                      child: Text(
                                        'Payments:01',
                                        style: GoogleFonts.montserrat(
                                            textStyle:
                                                TextStyle(color: Colors.black)),
                                      ),
                                      value: 3,
                                    ),
                                  ],
                                  onChanged: (dynamic value1) {
                                    setState(() {
                                      assignment = value1;
                                    });
                                  },
                                ),
                              )),
                          AutoSizeText('Empty',
                              style: GoogleFonts.montserrat(
                                  fontSize: 20,
                                  fontWeight: FontWeight.w300,
                                  textStyle: TextStyle(color: Colors.blue))),
                          SizedBox(
                            height: 15,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              AutoSizeText('Text1:',
                                  style: GoogleFonts.montserrat(
                                      fontSize: 20,
                                      fontWeight: FontWeight.w300,
                                      textStyle: TextStyle())),
                              AutoSizeText('1',
                                  style: GoogleFonts.montserrat(
                                      fontSize: 20,
                                      fontWeight: FontWeight.w300,
                                      textStyle: TextStyle())),
                            ],
                          ),
                          SizedBox(
                            height: 15,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              AutoSizeText('Text1:',
                                  style: GoogleFonts.montserrat(
                                      fontSize: 20,
                                      fontWeight: FontWeight.w300,
                                      textStyle: TextStyle())),
                              AutoSizeText('1',
                                  style: GoogleFonts.montserrat(
                                      fontSize: 20,
                                      fontWeight: FontWeight.w300,
                                      textStyle: TextStyle())),
                            ],
                          ),
                          SizedBox(
                            height: 15,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              AutoSizeText('Text1:',
                                  style: GoogleFonts.montserrat(
                                      fontSize: 20,
                                      fontWeight: FontWeight.w300,
                                      textStyle: TextStyle())),
                              AutoSizeText('1',
                                  style: GoogleFonts.montserrat(
                                      fontSize: 20,
                                      fontWeight: FontWeight.w300,
                                      textStyle: TextStyle())),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                )
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Card(
                  elevation: 3,
                  child: Container(
                    height: 350,
                    width: size.width / 4.3,
                    padding: EdgeInsets.only(top: 50, left: 80, right: 80),
                    child: Center(
                      child: Column(
                        children: [
                          AutoSizeText('Table3',
                              style: GoogleFonts.montserrat(
                                  fontSize: 26,
                                  fontWeight: FontWeight.w500,
                                  textStyle: TextStyle())),
                          SizedBox(
                            height: 10,
                          ),
                          Container(
                              height: 60,
                              width: size.width / 8,
                              child: Center(
                                child: DropdownButton(
                                  focusColor: Colors.white,
                                  dropdownColor: Colors.white,
                                  elevation: 0,
                                  value: assignment,
                                  items: [
                                    DropdownMenuItem(
                                      child: Container(
                                        child: Text(
                                          'Assignment',
                                          style: GoogleFonts.montserrat(
                                              textStyle: TextStyle(
                                                  color: Colors.black)),
                                        ),
                                      ),
                                      value: 1,
                                    ),
                                    DropdownMenuItem(
                                      child: Text(
                                        'Orders:01',
                                        style: GoogleFonts.montserrat(
                                            textStyle:
                                                TextStyle(color: Colors.black)),
                                      ),
                                      value: 2,
                                    ),
                                    DropdownMenuItem(
                                      child: Text(
                                        'Payments:01',
                                        style: GoogleFonts.montserrat(
                                            textStyle:
                                                TextStyle(color: Colors.black)),
                                      ),
                                      value: 3,
                                    ),
                                  ],
                                  onChanged: (dynamic value1) {
                                    setState(() {
                                      assignment = value1;
                                    });
                                  },
                                ),
                              )),
                          AutoSizeText('Empty',
                              style: GoogleFonts.montserrat(
                                  fontSize: 20,
                                  fontWeight: FontWeight.w300,
                                  textStyle: TextStyle(color: Colors.blue))),
                          SizedBox(
                            height: 15,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              AutoSizeText('Text1:',
                                  style: GoogleFonts.montserrat(
                                      fontSize: 20,
                                      fontWeight: FontWeight.w300,
                                      textStyle: TextStyle())),
                              AutoSizeText('1',
                                  style: GoogleFonts.montserrat(
                                      fontSize: 20,
                                      fontWeight: FontWeight.w300,
                                      textStyle: TextStyle())),
                            ],
                          ),
                          SizedBox(
                            height: 15,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              AutoSizeText('Text1:',
                                  style: GoogleFonts.montserrat(
                                      fontSize: 20,
                                      fontWeight: FontWeight.w300,
                                      textStyle: TextStyle())),
                              AutoSizeText('1',
                                  style: GoogleFonts.montserrat(
                                      fontSize: 20,
                                      fontWeight: FontWeight.w300,
                                      textStyle: TextStyle())),
                            ],
                          ),
                          SizedBox(
                            height: 15,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              AutoSizeText('Text1:',
                                  style: GoogleFonts.montserrat(
                                      fontSize: 20,
                                      fontWeight: FontWeight.w300,
                                      textStyle: TextStyle())),
                              AutoSizeText('1',
                                  style: GoogleFonts.montserrat(
                                      fontSize: 20,
                                      fontWeight: FontWeight.w300,
                                      textStyle: TextStyle())),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Card(
                  elevation: 3,
                  child: Container(
                    height: 350,
                    width: size.width / 4.3,
                    padding: EdgeInsets.only(top: 50, left: 80, right: 80),
                    child: Center(
                      child: Column(
                        children: [
                          AutoSizeText('Table3',
                              style: GoogleFonts.montserrat(
                                  fontSize: 26,
                                  fontWeight: FontWeight.w500,
                                  textStyle: TextStyle())),
                          SizedBox(
                            height: 10,
                          ),
                          Container(
                              height: 60,
                              width: size.width / 8,
                              child: Center(
                                child: DropdownButton(
                                  focusColor: Colors.white,
                                  dropdownColor: Colors.white,
                                  elevation: 0,
                                  value: assignment,
                                  items: [
                                    DropdownMenuItem(
                                      child: Container(
                                        child: Text(
                                          'Assignment',
                                          style: GoogleFonts.montserrat(
                                              textStyle: TextStyle(
                                                  color: Colors.black)),
                                        ),
                                      ),
                                      value: 1,
                                    ),
                                    DropdownMenuItem(
                                      child: Text(
                                        'Orders:01',
                                        style: GoogleFonts.montserrat(
                                            textStyle:
                                                TextStyle(color: Colors.black)),
                                      ),
                                      value: 2,
                                    ),
                                    DropdownMenuItem(
                                      child: Text(
                                        'Payments:01',
                                        style: GoogleFonts.montserrat(
                                            textStyle:
                                                TextStyle(color: Colors.black)),
                                      ),
                                      value: 3,
                                    ),
                                  ],
                                  onChanged: (dynamic value1) {
                                    setState(() {
                                      assignment = value1;
                                    });
                                  },
                                ),
                              )),
                          AutoSizeText('Empty',
                              style: GoogleFonts.montserrat(
                                  fontSize: 20,
                                  fontWeight: FontWeight.w300,
                                  textStyle: TextStyle(color: Colors.blue))),
                          SizedBox(
                            height: 15,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              AutoSizeText('Text1:',
                                  style: GoogleFonts.montserrat(
                                      fontSize: 20,
                                      fontWeight: FontWeight.w300,
                                      textStyle: TextStyle())),
                              AutoSizeText('1',
                                  style: GoogleFonts.montserrat(
                                      fontSize: 20,
                                      fontWeight: FontWeight.w300,
                                      textStyle: TextStyle())),
                            ],
                          ),
                          SizedBox(
                            height: 15,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              AutoSizeText('Text1:',
                                  style: GoogleFonts.montserrat(
                                      fontSize: 20,
                                      fontWeight: FontWeight.w300,
                                      textStyle: TextStyle())),
                              AutoSizeText('1',
                                  style: GoogleFonts.montserrat(
                                      fontSize: 20,
                                      fontWeight: FontWeight.w300,
                                      textStyle: TextStyle())),
                            ],
                          ),
                          SizedBox(
                            height: 15,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              AutoSizeText('Text1:',
                                  style: GoogleFonts.montserrat(
                                      fontSize: 20,
                                      fontWeight: FontWeight.w300,
                                      textStyle: TextStyle())),
                              AutoSizeText('1',
                                  style: GoogleFonts.montserrat(
                                      fontSize: 20,
                                      fontWeight: FontWeight.w300,
                                      textStyle: TextStyle())),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Card(
                  elevation: 3,
                  child: Container(
                    height: 350,
                    width: size.width / 4.3,
                    padding: EdgeInsets.only(top: 50, left: 80, right: 80),
                    child: Center(
                      child: Column(
                        children: [
                          AutoSizeText('Table3',
                              style: GoogleFonts.montserrat(
                                  fontSize: 26,
                                  fontWeight: FontWeight.w500,
                                  textStyle: TextStyle())),
                          SizedBox(
                            height: 10,
                          ),
                          Container(
                              height: 60,
                              width: size.width / 8,
                              child: Center(
                                child: DropdownButton(
                                  focusColor: Colors.white,
                                  dropdownColor: Colors.white,
                                  elevation: 0,
                                  value: assignment,
                                  items: [
                                    DropdownMenuItem(
                                      child: Container(
                                        child: Text(
                                          'Assignment',
                                          style: GoogleFonts.montserrat(
                                              textStyle: TextStyle(
                                                  color: Colors.black)),
                                        ),
                                      ),
                                      value: 1,
                                    ),
                                    DropdownMenuItem(
                                      child: Text(
                                        'Orders:01',
                                        style: GoogleFonts.montserrat(
                                            textStyle:
                                                TextStyle(color: Colors.black)),
                                      ),
                                      value: 2,
                                    ),
                                    DropdownMenuItem(
                                      child: Text(
                                        'Payments:01',
                                        style: GoogleFonts.montserrat(
                                            textStyle:
                                                TextStyle(color: Colors.black)),
                                      ),
                                      value: 3,
                                    ),
                                  ],
                                  onChanged: (dynamic value1) {
                                    setState(() {
                                      assignment = value1;
                                    });
                                  },
                                ),
                              )),
                          AutoSizeText('Empty',
                              style: GoogleFonts.montserrat(
                                  fontSize: 20,
                                  fontWeight: FontWeight.w300,
                                  textStyle: TextStyle(color: Colors.blue))),
                          SizedBox(
                            height: 15,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              AutoSizeText('Text1:',
                                  style: GoogleFonts.montserrat(
                                      fontSize: 20,
                                      fontWeight: FontWeight.w300,
                                      textStyle: TextStyle())),
                              AutoSizeText('1',
                                  style: GoogleFonts.montserrat(
                                      fontSize: 20,
                                      fontWeight: FontWeight.w300,
                                      textStyle: TextStyle())),
                            ],
                          ),
                          SizedBox(
                            height: 15,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              AutoSizeText('Text1:',
                                  style: GoogleFonts.montserrat(
                                      fontSize: 20,
                                      fontWeight: FontWeight.w300,
                                      textStyle: TextStyle())),
                              AutoSizeText('1',
                                  style: GoogleFonts.montserrat(
                                      fontSize: 20,
                                      fontWeight: FontWeight.w300,
                                      textStyle: TextStyle())),
                            ],
                          ),
                          SizedBox(
                            height: 15,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              AutoSizeText('Text1:',
                                  style: GoogleFonts.montserrat(
                                      fontSize: 20,
                                      fontWeight: FontWeight.w300,
                                      textStyle: TextStyle())),
                              AutoSizeText('1',
                                  style: GoogleFonts.montserrat(
                                      fontSize: 20,
                                      fontWeight: FontWeight.w300,
                                      textStyle: TextStyle())),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class Minmanager extends StatefulWidget {
  @override
  _MinmanagerState createState() => _MinmanagerState();
}

class _MinmanagerState extends State<Minmanager> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.grey.shade100,
      body: Container(
        child: ListView(
          padding: EdgeInsets.all(20),
          children: [
            SizedBox(
              height: 20,
            ),
            AutoSizeText('Managers',
                style: GoogleFonts.montserrat(
                    fontSize: 24,
                    fontWeight: FontWeight.w500,
                    textStyle: TextStyle())),
            SizedBox(
              height: 50,
            ),
            Row(
              children: [
                ManagerCard(size: size),
                SizedBox(
                  width: 40,
                ),
                ManagerCard(size: size),
              ],
            ),
            SizedBox(
              height: 50,
            ),
            AutoSizeText('Tables',
                style: GoogleFonts.montserrat(
                    fontSize: 26,
                    fontWeight: FontWeight.w500,
                    textStyle: TextStyle())),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Card(
                  elevation: 3,
                  child: Container(
                    height: 350,
                    width: size.width / 4.3,
                    padding: EdgeInsets.only(top: 50, left: 80, right: 80),
                    child: Center(
                      child: Column(
                        children: [
                          AutoSizeText('Table3',
                              style: GoogleFonts.montserrat(
                                  fontSize: 26,
                                  fontWeight: FontWeight.w500,
                                  textStyle: TextStyle())),
                          SizedBox(
                            height: 10,
                          ),
                          Container(
                              height: 60,
                              width: size.width / 8,
                              child: Center(
                                child: DropdownButton(
                                  focusColor: Colors.white,
                                  dropdownColor: Colors.white,
                                  elevation: 0,
                                  value: assignment,
                                  items: [
                                    DropdownMenuItem(
                                      child: Container(
                                        child: Text(
                                          'Assignment',
                                          style: GoogleFonts.montserrat(
                                              textStyle: TextStyle(
                                                  color: Colors.black)),
                                        ),
                                      ),
                                      value: 1,
                                    ),
                                    DropdownMenuItem(
                                      child: Text(
                                        'Orders:01',
                                        style: GoogleFonts.montserrat(
                                            textStyle:
                                                TextStyle(color: Colors.black)),
                                      ),
                                      value: 2,
                                    ),
                                    DropdownMenuItem(
                                      child: Text(
                                        'Payments:01',
                                        style: GoogleFonts.montserrat(
                                            textStyle:
                                                TextStyle(color: Colors.black)),
                                      ),
                                      value: 3,
                                    ),
                                  ],
                                  onChanged: (dynamic value1) {
                                    setState(() {
                                      assignment = value1;
                                    });
                                  },
                                ),
                              )),
                          AutoSizeText('Empty',
                              style: GoogleFonts.montserrat(
                                  fontSize: 20,
                                  fontWeight: FontWeight.w300,
                                  textStyle: TextStyle(color: Colors.blue))),
                          SizedBox(
                            height: 15,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              AutoSizeText('Text1:',
                                  style: GoogleFonts.montserrat(
                                      fontSize: 20,
                                      fontWeight: FontWeight.w300,
                                      textStyle: TextStyle())),
                              AutoSizeText('1',
                                  style: GoogleFonts.montserrat(
                                      fontSize: 20,
                                      fontWeight: FontWeight.w300,
                                      textStyle: TextStyle())),
                            ],
                          ),
                          SizedBox(
                            height: 15,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              AutoSizeText('Text1:',
                                  style: GoogleFonts.montserrat(
                                      fontSize: 20,
                                      fontWeight: FontWeight.w300,
                                      textStyle: TextStyle())),
                              AutoSizeText('1',
                                  style: GoogleFonts.montserrat(
                                      fontSize: 20,
                                      fontWeight: FontWeight.w300,
                                      textStyle: TextStyle())),
                            ],
                          ),
                          SizedBox(
                            height: 15,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              AutoSizeText('Text1:',
                                  style: GoogleFonts.montserrat(
                                      fontSize: 20,
                                      fontWeight: FontWeight.w300,
                                      textStyle: TextStyle())),
                              AutoSizeText('1',
                                  style: GoogleFonts.montserrat(
                                      fontSize: 20,
                                      fontWeight: FontWeight.w300,
                                      textStyle: TextStyle())),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Card(
                  elevation: 3,
                  child: Container(
                    height: 350,
                    width: size.width / 4.3,
                    padding: EdgeInsets.only(top: 50, left: 80, right: 80),
                    child: Center(
                      child: Column(
                        children: [
                          AutoSizeText('Table3',
                              style: GoogleFonts.montserrat(
                                  fontSize: 26,
                                  fontWeight: FontWeight.w500,
                                  textStyle: TextStyle())),
                          SizedBox(
                            height: 10,
                          ),
                          Container(
                              height: 60,
                              width: size.width / 8,
                              child: Center(
                                child: DropdownButton(
                                  focusColor: Colors.white,
                                  dropdownColor: Colors.white,
                                  elevation: 0,
                                  value: assignment,
                                  items: [
                                    DropdownMenuItem(
                                      child: Container(
                                        child: Text(
                                          'Assignment',
                                          style: GoogleFonts.montserrat(
                                              textStyle: TextStyle(
                                                  color: Colors.black)),
                                        ),
                                      ),
                                      value: 1,
                                    ),
                                    DropdownMenuItem(
                                      child: Text(
                                        'Orders:01',
                                        style: GoogleFonts.montserrat(
                                            textStyle:
                                                TextStyle(color: Colors.black)),
                                      ),
                                      value: 2,
                                    ),
                                    DropdownMenuItem(
                                      child: Text(
                                        'Payments:01',
                                        style: GoogleFonts.montserrat(
                                            textStyle:
                                                TextStyle(color: Colors.black)),
                                      ),
                                      value: 3,
                                    ),
                                  ],
                                  onChanged: (dynamic value1) {
                                    setState(() {
                                      assignment = value1;
                                    });
                                  },
                                ),
                              )),
                          AutoSizeText('Empty',
                              style: GoogleFonts.montserrat(
                                  fontSize: 20,
                                  fontWeight: FontWeight.w300,
                                  textStyle: TextStyle(color: Colors.blue))),
                          SizedBox(
                            height: 15,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              AutoSizeText('Text1:',
                                  style: GoogleFonts.montserrat(
                                      fontSize: 20,
                                      fontWeight: FontWeight.w300,
                                      textStyle: TextStyle())),
                              AutoSizeText('1',
                                  style: GoogleFonts.montserrat(
                                      fontSize: 20,
                                      fontWeight: FontWeight.w300,
                                      textStyle: TextStyle())),
                            ],
                          ),
                          SizedBox(
                            height: 15,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              AutoSizeText('Text1:',
                                  style: GoogleFonts.montserrat(
                                      fontSize: 20,
                                      fontWeight: FontWeight.w300,
                                      textStyle: TextStyle())),
                              AutoSizeText('1',
                                  style: GoogleFonts.montserrat(
                                      fontSize: 20,
                                      fontWeight: FontWeight.w300,
                                      textStyle: TextStyle())),
                            ],
                          ),
                          SizedBox(
                            height: 15,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              AutoSizeText('Text1:',
                                  style: GoogleFonts.montserrat(
                                      fontSize: 20,
                                      fontWeight: FontWeight.w300,
                                      textStyle: TextStyle())),
                              AutoSizeText('1',
                                  style: GoogleFonts.montserrat(
                                      fontSize: 20,
                                      fontWeight: FontWeight.w300,
                                      textStyle: TextStyle())),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Card(
                  elevation: 3,
                  child: Container(
                    height: 350,
                    width: size.width / 4.3,
                    padding: EdgeInsets.only(top: 50, left: 80, right: 80),
                    child: Center(
                      child: Column(
                        children: [
                          AutoSizeText('Table3',
                              style: GoogleFonts.montserrat(
                                  fontSize: 26,
                                  fontWeight: FontWeight.w500,
                                  textStyle: TextStyle())),
                          SizedBox(
                            height: 10,
                          ),
                          Container(
                              height: 60,
                              width: size.width / 8,
                              child: Center(
                                child: DropdownButton(
                                  focusColor: Colors.white,
                                  dropdownColor: Colors.white,
                                  elevation: 0,
                                  value: assignment,
                                  items: [
                                    DropdownMenuItem(
                                      child: Container(
                                        child: Text(
                                          'Assignment',
                                          style: GoogleFonts.montserrat(
                                              textStyle: TextStyle(
                                                  color: Colors.black)),
                                        ),
                                      ),
                                      value: 1,
                                    ),
                                    DropdownMenuItem(
                                      child: Text(
                                        'Orders:01',
                                        style: GoogleFonts.montserrat(
                                            textStyle:
                                                TextStyle(color: Colors.black)),
                                      ),
                                      value: 2,
                                    ),
                                    DropdownMenuItem(
                                      child: Text(
                                        'Payments:01',
                                        style: GoogleFonts.montserrat(
                                            textStyle:
                                                TextStyle(color: Colors.black)),
                                      ),
                                      value: 3,
                                    ),
                                  ],
                                  onChanged: (dynamic value1) {
                                    setState(() {
                                      assignment = value1;
                                    });
                                  },
                                ),
                              )),
                          AutoSizeText('Empty',
                              style: GoogleFonts.montserrat(
                                  fontSize: 20,
                                  fontWeight: FontWeight.w300,
                                  textStyle: TextStyle(color: Colors.blue))),
                          SizedBox(
                            height: 15,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              AutoSizeText('Text1:',
                                  style: GoogleFonts.montserrat(
                                      fontSize: 20,
                                      fontWeight: FontWeight.w300,
                                      textStyle: TextStyle())),
                              AutoSizeText('1',
                                  style: GoogleFonts.montserrat(
                                      fontSize: 20,
                                      fontWeight: FontWeight.w300,
                                      textStyle: TextStyle())),
                            ],
                          ),
                          SizedBox(
                            height: 15,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              AutoSizeText('Text1:',
                                  style: GoogleFonts.montserrat(
                                      fontSize: 20,
                                      fontWeight: FontWeight.w300,
                                      textStyle: TextStyle())),
                              AutoSizeText('1',
                                  style: GoogleFonts.montserrat(
                                      fontSize: 20,
                                      fontWeight: FontWeight.w300,
                                      textStyle: TextStyle())),
                            ],
                          ),
                          SizedBox(
                            height: 15,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              AutoSizeText('Text1:',
                                  style: GoogleFonts.montserrat(
                                      fontSize: 20,
                                      fontWeight: FontWeight.w300,
                                      textStyle: TextStyle())),
                              AutoSizeText('1',
                                  style: GoogleFonts.montserrat(
                                      fontSize: 20,
                                      fontWeight: FontWeight.w300,
                                      textStyle: TextStyle())),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                )
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Card(
                  elevation: 3,
                  child: Container(
                    height: 350,
                    width: size.width / 4.3,
                    padding: EdgeInsets.only(top: 50, left: 80, right: 80),
                    child: Center(
                      child: Column(
                        children: [
                          AutoSizeText('Table3',
                              style: GoogleFonts.montserrat(
                                  fontSize: 26,
                                  fontWeight: FontWeight.w500,
                                  textStyle: TextStyle())),
                          SizedBox(
                            height: 10,
                          ),
                          Container(
                              height: 60,
                              width: size.width / 8,
                              child: Center(
                                child: DropdownButton(
                                  focusColor: Colors.white,
                                  dropdownColor: Colors.white,
                                  elevation: 0,
                                  value: assignment,
                                  items: [
                                    DropdownMenuItem(
                                      child: Container(
                                        child: Text(
                                          'Assignment',
                                          style: GoogleFonts.montserrat(
                                              textStyle: TextStyle(
                                                  color: Colors.black)),
                                        ),
                                      ),
                                      value: 1,
                                    ),
                                    DropdownMenuItem(
                                      child: Text(
                                        'Orders:01',
                                        style: GoogleFonts.montserrat(
                                            textStyle:
                                                TextStyle(color: Colors.black)),
                                      ),
                                      value: 2,
                                    ),
                                    DropdownMenuItem(
                                      child: Text(
                                        'Payments:01',
                                        style: GoogleFonts.montserrat(
                                            textStyle:
                                                TextStyle(color: Colors.black)),
                                      ),
                                      value: 3,
                                    ),
                                  ],
                                  onChanged: (dynamic value1) {
                                    setState(() {
                                      assignment = value1;
                                    });
                                  },
                                ),
                              )),
                          AutoSizeText('Empty',
                              style: GoogleFonts.montserrat(
                                  fontSize: 20,
                                  fontWeight: FontWeight.w300,
                                  textStyle: TextStyle(color: Colors.blue))),
                          SizedBox(
                            height: 15,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              AutoSizeText('Text1:',
                                  style: GoogleFonts.montserrat(
                                      fontSize: 20,
                                      fontWeight: FontWeight.w300,
                                      textStyle: TextStyle())),
                              AutoSizeText('1',
                                  style: GoogleFonts.montserrat(
                                      fontSize: 20,
                                      fontWeight: FontWeight.w300,
                                      textStyle: TextStyle())),
                            ],
                          ),
                          SizedBox(
                            height: 15,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              AutoSizeText('Text1:',
                                  style: GoogleFonts.montserrat(
                                      fontSize: 20,
                                      fontWeight: FontWeight.w300,
                                      textStyle: TextStyle())),
                              AutoSizeText('1',
                                  style: GoogleFonts.montserrat(
                                      fontSize: 20,
                                      fontWeight: FontWeight.w300,
                                      textStyle: TextStyle())),
                            ],
                          ),
                          SizedBox(
                            height: 15,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              AutoSizeText('Text1:',
                                  style: GoogleFonts.montserrat(
                                      fontSize: 20,
                                      fontWeight: FontWeight.w300,
                                      textStyle: TextStyle())),
                              AutoSizeText('1',
                                  style: GoogleFonts.montserrat(
                                      fontSize: 20,
                                      fontWeight: FontWeight.w300,
                                      textStyle: TextStyle())),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Card(
                  elevation: 3,
                  child: Container(
                    height: 350,
                    width: size.width / 4.3,
                    padding: EdgeInsets.only(top: 50, left: 80, right: 80),
                    child: Center(
                      child: Column(
                        children: [
                          AutoSizeText('Table3',
                              style: GoogleFonts.montserrat(
                                  fontSize: 26,
                                  fontWeight: FontWeight.w500,
                                  textStyle: TextStyle())),
                          SizedBox(
                            height: 10,
                          ),
                          Container(
                              height: 60,
                              width: size.width / 8,
                              child: Center(
                                child: DropdownButton(
                                  focusColor: Colors.white,
                                  dropdownColor: Colors.white,
                                  elevation: 0,
                                  value: assignment,
                                  items: [
                                    DropdownMenuItem(
                                      child: Container(
                                        child: Text(
                                          'Assignment',
                                          style: GoogleFonts.montserrat(
                                              textStyle: TextStyle(
                                                  color: Colors.black)),
                                        ),
                                      ),
                                      value: 1,
                                    ),
                                    DropdownMenuItem(
                                      child: Text(
                                        'Orders:01',
                                        style: GoogleFonts.montserrat(
                                            textStyle:
                                                TextStyle(color: Colors.black)),
                                      ),
                                      value: 2,
                                    ),
                                    DropdownMenuItem(
                                      child: Text(
                                        'Payments:01',
                                        style: GoogleFonts.montserrat(
                                            textStyle:
                                                TextStyle(color: Colors.black)),
                                      ),
                                      value: 3,
                                    ),
                                  ],
                                  onChanged: (dynamic value1) {
                                    setState(() {
                                      assignment = value1;
                                    });
                                  },
                                ),
                              )),
                          AutoSizeText('Empty',
                              style: GoogleFonts.montserrat(
                                  fontSize: 20,
                                  fontWeight: FontWeight.w300,
                                  textStyle: TextStyle(color: Colors.blue))),
                          SizedBox(
                            height: 15,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              AutoSizeText('Text1:',
                                  style: GoogleFonts.montserrat(
                                      fontSize: 20,
                                      fontWeight: FontWeight.w300,
                                      textStyle: TextStyle())),
                              AutoSizeText('1',
                                  style: GoogleFonts.montserrat(
                                      fontSize: 20,
                                      fontWeight: FontWeight.w300,
                                      textStyle: TextStyle())),
                            ],
                          ),
                          SizedBox(
                            height: 15,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              AutoSizeText('Text1:',
                                  style: GoogleFonts.montserrat(
                                      fontSize: 20,
                                      fontWeight: FontWeight.w300,
                                      textStyle: TextStyle())),
                              AutoSizeText('1',
                                  style: GoogleFonts.montserrat(
                                      fontSize: 20,
                                      fontWeight: FontWeight.w300,
                                      textStyle: TextStyle())),
                            ],
                          ),
                          SizedBox(
                            height: 15,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              AutoSizeText('Text1:',
                                  style: GoogleFonts.montserrat(
                                      fontSize: 20,
                                      fontWeight: FontWeight.w300,
                                      textStyle: TextStyle())),
                              AutoSizeText('1',
                                  style: GoogleFonts.montserrat(
                                      fontSize: 20,
                                      fontWeight: FontWeight.w300,
                                      textStyle: TextStyle())),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Card(
                  elevation: 3,
                  child: Container(
                    height: 350,
                    width: size.width / 4.3,
                    padding: EdgeInsets.only(top: 50, left: 80, right: 80),
                    child: Center(
                      child: Column(
                        children: [
                          AutoSizeText('Table3',
                              style: GoogleFonts.montserrat(
                                  fontSize: 26,
                                  fontWeight: FontWeight.w500,
                                  textStyle: TextStyle())),
                          SizedBox(
                            height: 10,
                          ),
                          Container(
                              height: 60,
                              width: size.width / 8,
                              child: Center(
                                child: DropdownButton(
                                  focusColor: Colors.white,
                                  dropdownColor: Colors.white,
                                  elevation: 0,
                                  value: assignment,
                                  items: [
                                    DropdownMenuItem(
                                      child: Container(
                                        child: Text(
                                          'Assignment',
                                          style: GoogleFonts.montserrat(
                                              textStyle: TextStyle(
                                                  color: Colors.black)),
                                        ),
                                      ),
                                      value: 1,
                                    ),
                                    DropdownMenuItem(
                                      child: Text(
                                        'Orders:01',
                                        style: GoogleFonts.montserrat(
                                            textStyle:
                                                TextStyle(color: Colors.black)),
                                      ),
                                      value: 2,
                                    ),
                                    DropdownMenuItem(
                                      child: Text(
                                        'Payments:01',
                                        style: GoogleFonts.montserrat(
                                            textStyle:
                                                TextStyle(color: Colors.black)),
                                      ),
                                      value: 3,
                                    ),
                                  ],
                                  onChanged: (dynamic value1) {
                                    setState(() {
                                      assignment = value1;
                                    });
                                  },
                                ),
                              )),
                          AutoSizeText('Empty',
                              style: GoogleFonts.montserrat(
                                  fontSize: 20,
                                  fontWeight: FontWeight.w300,
                                  textStyle: TextStyle(color: Colors.blue))),
                          SizedBox(
                            height: 15,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              AutoSizeText('Text1:',
                                  style: GoogleFonts.montserrat(
                                      fontSize: 20,
                                      fontWeight: FontWeight.w300,
                                      textStyle: TextStyle())),
                              AutoSizeText('1',
                                  style: GoogleFonts.montserrat(
                                      fontSize: 20,
                                      fontWeight: FontWeight.w300,
                                      textStyle: TextStyle())),
                            ],
                          ),
                          SizedBox(
                            height: 15,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              AutoSizeText('Text1:',
                                  style: GoogleFonts.montserrat(
                                      fontSize: 20,
                                      fontWeight: FontWeight.w300,
                                      textStyle: TextStyle())),
                              AutoSizeText('1',
                                  style: GoogleFonts.montserrat(
                                      fontSize: 20,
                                      fontWeight: FontWeight.w300,
                                      textStyle: TextStyle())),
                            ],
                          ),
                          SizedBox(
                            height: 15,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              AutoSizeText('Text1:',
                                  style: GoogleFonts.montserrat(
                                      fontSize: 20,
                                      fontWeight: FontWeight.w300,
                                      textStyle: TextStyle())),
                              AutoSizeText('1',
                                  style: GoogleFonts.montserrat(
                                      fontSize: 20,
                                      fontWeight: FontWeight.w300,
                                      textStyle: TextStyle())),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class ManagerCard extends StatelessWidget {
  const ManagerCard({
    Key? key,
    required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 2,
      child: Container(
        height: 400,
        width: size.width / 5,
        child: Column(
          children: [
            Container(
              decoration: BoxDecoration(

                  //  backgroundBlendMode: BlendMode.saturation,
                  image: DecorationImage(
                      colorFilter: ColorFilter.mode(
                          Color(0xffff5a1e), BlendMode.hardLight),
                      image: NetworkImage(
                          'https://st2.depositphotos.com/3591429/10366/i/950/depositphotos_103661132-stock-photo-people-enjoying-food.jpg'),
                      fit: BoxFit.cover)),
              height: 150,
              width: size.width / 5,
              child: Center(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    AutoSizeText('Deangelo Sena',
                        style: GoogleFonts.montserrat(
                            fontSize: 30,
                            fontWeight: FontWeight.w500,
                            color: Colors.white,
                            textStyle: TextStyle())),
                    AutoSizeText('username 1',
                        style: GoogleFonts.montserrat(
                            fontSize: 20,
                            color: Colors.white,
                            fontWeight: FontWeight.w500,
                            textStyle: TextStyle())),
                  ],
                ),
              ),
            ),
            Container(
              height: 250,
              width: size.width / 5,
              color: Colors.white,
              padding:
                  EdgeInsets.only(top: 30, bottom: 30, right: 16, left: 16),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      AutoSizeText('id',
                          style: GoogleFonts.montserrat(
                              fontSize: 16,
                              color: Colors.black,
                              fontWeight: FontWeight.w300,
                              textStyle: TextStyle())),
                      AutoSizeText('abcdu934@gmail.com',
                          style: GoogleFonts.montserrat(
                              fontSize: 16,
                              color: Colors.black,
                              fontWeight: FontWeight.w300,
                              textStyle: TextStyle())),
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      AutoSizeText('no of tables:',
                          style: GoogleFonts.montserrat(
                              fontSize: 18,
                              color: Colors.black,
                              fontWeight: FontWeight.w300,
                              textStyle: TextStyle())),
                      AutoSizeText('2',
                          style: GoogleFonts.montserrat(
                              fontSize: 18,
                              color: Colors.black,
                              fontWeight: FontWeight.w300,
                              textStyle: TextStyle())),
                    ],
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

class ManagerTab extends StatefulWidget {
  @override
  _ManagerTabState createState() => _ManagerTabState();
}

class _ManagerTabState extends State<ManagerTab> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.grey.shade100,
      body: Container(
        child: ListView(
          padding: EdgeInsets.all(20),
          children: [
            SizedBox(
              height: 20,
            ),
            AutoSizeText('Managers',
                style: GoogleFonts.montserrat(
                    fontSize: 24,
                    fontWeight: FontWeight.w500,
                    textStyle: TextStyle())),
            SizedBox(
              height: 50,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ManagercardTab(size: size),
                SizedBox(
                  width: 40,
                ),
                ManagercardTab(size: size),
              ],
            ),
            SizedBox(
              height: 50,
            ),
            AutoSizeText('Tables',
                style: GoogleFonts.montserrat(
                    fontSize: 26,
                    fontWeight: FontWeight.w500,
                    textStyle: TextStyle())),
            SizedBox(
              height: 20,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Card2forTab(),
                SizedBox(
                  height: 20,
                ),
                Card2forTab(),
                SizedBox(
                  height: 20,
                ),
                Card2forTab(),
                SizedBox(
                  height: 20,
                ),
                Card2forTab(),
                SizedBox(
                  height: 20,
                ),
                Card2forTab(),
                SizedBox(
                  height: 20,
                ),
                Card2forTab(),
                SizedBox(
                  height: 20,
                ),
                Card2forTab(),
              ],
            )
          ],
        ),
      ),
    );
  }
}

class ManagercardTab extends StatelessWidget {
  const ManagercardTab({
    Key? key,
    required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 2,
      child: Container(
        height: 400,
        width: size.width / 3,
        child: Column(
          children: [
            Container(
              decoration: BoxDecoration(

                  //  backgroundBlendMode: BlendMode.saturation,
                  image: DecorationImage(
                      colorFilter: ColorFilter.mode(
                          Color(0xffff5a1e), BlendMode.hardLight),
                      image: NetworkImage(
                          'https://st2.depositphotos.com/3591429/10366/i/950/depositphotos_103661132-stock-photo-people-enjoying-food.jpg'),
                      fit: BoxFit.cover)),
              height: 150,
              width: size.width / 3,
              child: Center(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    AutoSizeText('Deangelo Sena',
                        style: GoogleFonts.montserrat(
                            fontSize: 30,
                            fontWeight: FontWeight.w500,
                            color: Colors.white,
                            textStyle: TextStyle())),
                    AutoSizeText('username 1',
                        style: GoogleFonts.montserrat(
                            fontSize: 20,
                            color: Colors.white,
                            fontWeight: FontWeight.w500,
                            textStyle: TextStyle())),
                  ],
                ),
              ),
            ),
            Container(
              height: 250,
              width: size.width / 3,
              color: Colors.white,
              padding:
                  EdgeInsets.only(top: 30, bottom: 30, left: 10, right: 10),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      AutoSizeText('id',
                          style: GoogleFonts.montserrat(
                              fontSize: 16,
                              color: Colors.black,
                              fontWeight: FontWeight.w300,
                              textStyle: TextStyle())),
                      AutoSizeText('abcdu934@gmail.com',
                          style: GoogleFonts.montserrat(
                              fontSize: 16,
                              color: Colors.black,
                              fontWeight: FontWeight.w300,
                              textStyle: TextStyle())),
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      AutoSizeText('no of tables:',
                          style: GoogleFonts.montserrat(
                              fontSize: 16,
                              color: Colors.black,
                              fontWeight: FontWeight.w300,
                              textStyle: TextStyle())),
                      AutoSizeText('2',
                          style: GoogleFonts.montserrat(
                              fontSize: 16,
                              color: Colors.black,
                              fontWeight: FontWeight.w300,
                              textStyle: TextStyle())),
                    ],
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

class Card2forTab extends StatefulWidget {
  @override
  _Card2forTabState createState() => _Card2forTabState();
}

class _Card2forTabState extends State<Card2forTab> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Card(
      elevation: 3,
      child: Container(
        height: 350,
        width: size.width / 3,
        padding: EdgeInsets.only(top: 50, left: 50, right: 50),
        child: Center(
          child: Column(
            children: [
              AutoSizeText('Table3',
                  style: GoogleFonts.montserrat(
                      fontSize: 26,
                      fontWeight: FontWeight.w500,
                      textStyle: TextStyle())),
              SizedBox(
                height: 10,
              ),
              Container(
                  height: 60,
                  width: size.width / 6,
                  child: Center(
                    child: DropdownButton(
                      focusColor: Colors.white,
                      dropdownColor: Colors.white,
                      elevation: 0,
                      value: assignment,
                      items: [
                        DropdownMenuItem(
                          child: Container(
                            child: Text(
                              'Assignment',
                              style: GoogleFonts.montserrat(
                                  textStyle: TextStyle(color: Colors.black)),
                            ),
                          ),
                          value: 1,
                        ),
                        DropdownMenuItem(
                          child: Text(
                            'Orders:01',
                            style: GoogleFonts.montserrat(
                                textStyle: TextStyle(color: Colors.black)),
                          ),
                          value: 2,
                        ),
                        DropdownMenuItem(
                          child: Text(
                            'Payments:01',
                            style: GoogleFonts.montserrat(
                                textStyle: TextStyle(color: Colors.black)),
                          ),
                          value: 3,
                        ),
                      ],
                      onChanged: (dynamic value1) {
                        setState(() {
                          assignment = value1;
                        });
                      },
                    ),
                  )),
              AutoSizeText('Empty',
                  style: GoogleFonts.montserrat(
                      fontSize: 20,
                      fontWeight: FontWeight.w300,
                      textStyle: TextStyle(color: Colors.blue))),
              SizedBox(
                height: 15,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  AutoSizeText('Text1:',
                      style: GoogleFonts.montserrat(
                          fontSize: 20,
                          fontWeight: FontWeight.w300,
                          textStyle: TextStyle())),
                  AutoSizeText('1',
                      style: GoogleFonts.montserrat(
                          fontSize: 20,
                          fontWeight: FontWeight.w300,
                          textStyle: TextStyle())),
                ],
              ),
              SizedBox(
                height: 15,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  AutoSizeText('Text1:',
                      style: GoogleFonts.montserrat(
                          fontSize: 20,
                          fontWeight: FontWeight.w300,
                          textStyle: TextStyle())),
                  AutoSizeText('1',
                      style: GoogleFonts.montserrat(
                          fontSize: 20,
                          fontWeight: FontWeight.w300,
                          textStyle: TextStyle())),
                ],
              ),
              SizedBox(
                height: 15,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  AutoSizeText('Text1:',
                      style: GoogleFonts.montserrat(
                          fontSize: 20,
                          fontWeight: FontWeight.w300,
                          textStyle: TextStyle())),
                  AutoSizeText('1',
                      style: GoogleFonts.montserrat(
                          fontSize: 20,
                          fontWeight: FontWeight.w300,
                          textStyle: TextStyle())),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class MobileManager extends StatefulWidget {
  @override
  _MobileManagerState createState() => _MobileManagerState();
}

class _MobileManagerState extends State<MobileManager> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.grey.shade100,
      body: Container(
        child: ListView(
          padding: EdgeInsets.all(20),
          children: [
            SizedBox(
              height: 20,
            ),
            AutoSizeText('Managers',
                style: GoogleFonts.montserrat(
                    fontSize: 24,
                    fontWeight: FontWeight.w500,
                    textStyle: TextStyle())),
            SizedBox(
              height: 50,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Card1formobile(),
                SizedBox(
                  width: 40,
                ),
                Card1formobile()
              ],
            ),
            SizedBox(
              height: 50,
            ),
            AutoSizeText('Tables',
                style: GoogleFonts.montserrat(
                    fontSize: 26,
                    fontWeight: FontWeight.w500,
                    textStyle: TextStyle())),
            SizedBox(
              height: 20,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Card2formobile(),
                SizedBox(
                  height: 20,
                ),
                Card2formobile(),
                SizedBox(
                  height: 20,
                ),
                Card2formobile(),
                SizedBox(
                  height: 20,
                ),
                Card2formobile(),
                SizedBox(
                  height: 20,
                ),
                Card2formobile(),
                SizedBox(
                  height: 20,
                ),
                Card2formobile(),
              ],
            )
          ],
        ),
      ),
    );
  }
}

class Card1formobile extends StatefulWidget {
  @override
  _Card1formobileState createState() => _Card1formobileState();
}

class _Card1formobileState extends State<Card1formobile> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Card(
      elevation: 2,
      child: Container(
        height: 400,
        width: size.width / 1,
        child: Column(
          children: [
            Container(
              decoration: BoxDecoration(

                  //  backgroundBlendMode: BlendMode.saturation,
                  image: DecorationImage(
                      colorFilter: ColorFilter.mode(
                          Color(0xffff5a1e), BlendMode.hardLight),
                      image: NetworkImage(
                          'https://st2.depositphotos.com/3591429/10366/i/950/depositphotos_103661132-stock-photo-people-enjoying-food.jpg'),
                      fit: BoxFit.cover)),
              height: 150,
              width: size.width / 1,
              child: Center(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    AutoSizeText('Deangelo Sena',
                        style: GoogleFonts.montserrat(
                            fontSize: 30,
                            fontWeight: FontWeight.w500,
                            color: Colors.white,
                            textStyle: TextStyle())),
                    AutoSizeText('username 1',
                        style: GoogleFonts.montserrat(
                            fontSize: 20,
                            color: Colors.white,
                            fontWeight: FontWeight.w500,
                            textStyle: TextStyle())),
                  ],
                ),
              ),
            ),
            Container(
              height: 250,
              width: size.width / 1,
              color: Colors.white,
              padding:
                  EdgeInsets.only(top: 30, bottom: 30, left: 10, right: 10),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      AutoSizeText('id',
                          style: GoogleFonts.montserrat(
                              fontSize: 16,
                              color: Colors.black,
                              fontWeight: FontWeight.w300,
                              textStyle: TextStyle())),
                      AutoSizeText('abcdu934@gmail.com',
                          style: GoogleFonts.montserrat(
                              fontSize: 16,
                              color: Colors.black,
                              fontWeight: FontWeight.w300,
                              textStyle: TextStyle())),
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      AutoSizeText('no of tables:',
                          style: GoogleFonts.montserrat(
                              fontSize: 16,
                              color: Colors.black,
                              fontWeight: FontWeight.w300,
                              textStyle: TextStyle())),
                      AutoSizeText('2',
                          style: GoogleFonts.montserrat(
                              fontSize: 16,
                              color: Colors.black,
                              fontWeight: FontWeight.w300,
                              textStyle: TextStyle())),
                    ],
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

class Card2formobile extends StatefulWidget {
  @override
  _Card2formobileState createState() => _Card2formobileState();
}

class _Card2formobileState extends State<Card2formobile> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Card(
      elevation: 3,
      child: Container(
        height: 350,
        width: size.width / 1,
        padding: EdgeInsets.only(top: 50, left: 40, right: 40),
        child: Center(
          child: Column(
            children: [
              AutoSizeText('Table3',
                  style: GoogleFonts.montserrat(
                      fontSize: 26,
                      fontWeight: FontWeight.w500,
                      textStyle: TextStyle())),
              SizedBox(
                height: 10,
              ),
              Container(
                  height: 60,
                  width: size.width / 2,
                  child: Center(
                    child: DropdownButton(
                      focusColor: Colors.white,
                      dropdownColor: Colors.white,
                      elevation: 0,
                      value: assignment,
                      items: [
                        DropdownMenuItem(
                          child: Container(
                            child: Text(
                              'Assignment',
                              style: GoogleFonts.montserrat(
                                  textStyle: TextStyle(color: Colors.black)),
                            ),
                          ),
                          value: 1,
                        ),
                        DropdownMenuItem(
                          child: Text(
                            'Orders:01',
                            style: GoogleFonts.montserrat(
                                textStyle: TextStyle(color: Colors.black)),
                          ),
                          value: 2,
                        ),
                        DropdownMenuItem(
                          child: Text(
                            'Payments:01',
                            style: GoogleFonts.montserrat(
                                textStyle: TextStyle(color: Colors.black)),
                          ),
                          value: 3,
                        ),
                      ],
                      onChanged: (dynamic value1) {
                        setState(() {
                          assignment = value1;
                        });
                      },
                    ),
                  )),
              AutoSizeText('Empty',
                  style: GoogleFonts.montserrat(
                      fontSize: 20,
                      fontWeight: FontWeight.w300,
                      textStyle: TextStyle(color: Colors.blue))),
              SizedBox(
                height: 15,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  AutoSizeText('Text1:',
                      style: GoogleFonts.montserrat(
                          fontSize: 20,
                          fontWeight: FontWeight.w300,
                          textStyle: TextStyle())),
                  AutoSizeText('1',
                      style: GoogleFonts.montserrat(
                          fontSize: 20,
                          fontWeight: FontWeight.w300,
                          textStyle: TextStyle())),
                ],
              ),
              SizedBox(
                height: 15,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  AutoSizeText('Text1:',
                      style: GoogleFonts.montserrat(
                          fontSize: 20,
                          fontWeight: FontWeight.w300,
                          textStyle: TextStyle())),
                  AutoSizeText('1',
                      style: GoogleFonts.montserrat(
                          fontSize: 20,
                          fontWeight: FontWeight.w300,
                          textStyle: TextStyle())),
                ],
              ),
              SizedBox(
                height: 15,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  AutoSizeText('Text1:',
                      style: GoogleFonts.montserrat(
                          fontSize: 20,
                          fontWeight: FontWeight.w300,
                          textStyle: TextStyle())),
                  AutoSizeText('1',
                      style: GoogleFonts.montserrat(
                          fontSize: 20,
                          fontWeight: FontWeight.w300,
                          textStyle: TextStyle())),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

int assignment = 1;
