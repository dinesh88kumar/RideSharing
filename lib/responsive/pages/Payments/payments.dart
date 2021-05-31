import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hovering/hovering.dart';
import 'package:smoose_20_05/responsive/pages/Payments/payment_datatable.dart';
import 'package:smoose_20_05/responsive/pages/Payments/settlement_table.dart';
import 'package:smoose_20_05/responsive/responsive.dart';

class Payments extends StatefulWidget {
  @override
  _PaymentsState createState() => _PaymentsState();
}

class _PaymentsState extends State<Payments> {
  @override
  Widget build(BuildContext context) {
    return Responsive(
        mobile: MobilePay(),
        tab: PayTab(),
        maxViewDesktop: PayMax(),
        minViewDesktop: Paymin());
  }
}

int index = 0;

class PayMax extends StatefulWidget {
  @override
  _PayMaxState createState() => _PayMaxState();
}

class _PayMaxState extends State<PayMax> {
  List<Widget> page = [MaxTran(), MaxSettle()];
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: ListView(
        padding: EdgeInsets.all(20),
        children: [
          Row(
            children: [
              GestureDetector(
                onTap: () {
                  setState(() {
                    index = 0;
                  });
                },
                child: Text('Transactions | ',
                    style: GoogleFonts.montserrat(
                        fontSize: 20,
                        fontWeight: FontWeight.w500,
                        color: index == 0 ? Colors.black : Colors.grey)),
              ),
              GestureDetector(
                onTap: () {
                  setState(() {
                    index = 1;
                  });
                },
                child: Text(' settlement',
                    style: GoogleFonts.montserrat(
                        fontSize: 20,
                        fontWeight: FontWeight.w500,
                        color: index == 1 ? Colors.black : Colors.grey)),
              ),
            ],
          ),
          SizedBox(height: 40),
          Container(height: 800, child: page[index])
        ],
      ),
    );
  }
}

class MaxTran extends StatefulWidget {
  @override
  _MaxTranState createState() => _MaxTranState();
}

class _MaxTranState extends State<MaxTran> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
        body: Container(
      child: Column(
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                padding:
                    EdgeInsets.only(left: 7, right: 7, top: 20, bottom: 20),
                width: size.width / 4,
                height: 140,
                decoration: BoxDecoration(
                    color: Color(0xfff72b50),
                    borderRadius: BorderRadius.circular(15)),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Container(
                        height: 80,
                        width: 80,
                        decoration: BoxDecoration(
                            shape: BoxShape.circle, color: Color(0xfff9607c)),
                        child: Icon(Icons.free_breakfast_outlined,
                            color: Colors.white)),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Transaction amout',
                          style: GoogleFonts.montserrat(
                              fontSize: 16,
                              color: Colors.white,
                              fontWeight: FontWeight.w400),
                        ),
                        Text(
                          '56',
                          style: GoogleFonts.montserrat(
                              fontSize: 30,
                              fontWeight: FontWeight.w600,
                              color: Colors.white),
                        ),
                      ],
                    )
                  ],
                ),
              ),
              SizedBox(width: 30),
              //2
              Container(
                padding:
                    EdgeInsets.only(left: 7, right: 7, top: 20, bottom: 20),
                width: size.width / 5,
                height: 140,
                decoration: BoxDecoration(
                    color: Color(0xfff72b50),
                    borderRadius: BorderRadius.circular(15)),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Container(
                        height: 80,
                        width: 80,
                        decoration: BoxDecoration(
                            shape: BoxShape.circle, color: Color(0xfff9607c)),
                        child: Icon(Icons.free_breakfast_outlined,
                            color: Colors.white)),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Transaction amout',
                          style: GoogleFonts.montserrat(
                              fontSize: 16,
                              color: Colors.white,
                              fontWeight: FontWeight.w400),
                        ),
                        Text(
                          '56',
                          style: GoogleFonts.montserrat(
                              fontSize: 30,
                              fontWeight: FontWeight.w600,
                              color: Colors.white),
                        ),
                      ],
                    )
                  ],
                ),
              ),
              SizedBox(width: 30),
              //3
              Container(
                padding:
                    EdgeInsets.only(left: 7, right: 7, top: 20, bottom: 20),
                width: size.width / 5.5,
                height: 140,
                decoration: BoxDecoration(
                    color: Color(0xff3e4954),
                    borderRadius: BorderRadius.circular(15)),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Container(
                        height: 80,
                        width: 80,
                        decoration: BoxDecoration(
                            shape: BoxShape.circle, color: Color(0xff6e777f)),
                        child: Icon(Icons.free_breakfast_outlined,
                            color: Colors.white)),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Transaction amout',
                          style: GoogleFonts.montserrat(
                              fontSize: 16,
                              color: Colors.white,
                              fontWeight: FontWeight.w400),
                        ),
                        Text(
                          '56',
                          style: GoogleFonts.montserrat(
                              fontSize: 30,
                              fontWeight: FontWeight.w600,
                              color: Colors.white),
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ],
          ),
          SizedBox(height: 20),
          TransactionTable()
        ],
      ),
    ));
  }
}

class MaxSettle extends StatefulWidget {
  @override
  _MaxSettleState createState() => _MaxSettleState();
}

class _MaxSettleState extends State<MaxSettle> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
        backgroundColor: Colors.grey.shade100,
        body: Container(
          padding: EdgeInsets.all(20),
          child: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(
                  height: 20,
                ),
                Container(
                  padding: EdgeInsets.only(left: 20, right: 20),
                  height: 100,
                  width: size.width / 1,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.white,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text('Amount to be settled',
                              style: GoogleFonts.montserrat(
                                  fontSize: 18, fontWeight: FontWeight.w400)),
                          Text('Rs. 10000.0',
                              style: GoogleFonts.montserrat(
                                  fontSize: 18, fontWeight: FontWeight.w400)),
                        ],
                      ),
                      HoverContainer(
                        height: 50,
                        width: size.width / 6,
                        hoverHeight: 50,
                        hoverWidth: size.width / 6,
                        decoration: BoxDecoration(
                            color: Colors.green.shade600,
                            borderRadius: BorderRadius.circular(10)),
                        hoverDecoration: BoxDecoration(
                            color: Colors.green.shade900,
                            borderRadius: BorderRadius.circular(10)),
                        child: Center(
                            child: Text('Request Settlement',
                                style: GoogleFonts.montserrat(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w500,
                                    color: Colors.white))),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 20),
                SettlementTable()
              ],
            ),
          ),
        ));
  }
}

//min

class Paymin extends StatefulWidget {
  @override
  _PayminState createState() => _PayminState();
}

class _PayminState extends State<Paymin> {
  List<Widget> page = [MinTra(), MinSettle()];
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: ListView(
        padding: EdgeInsets.all(20),
        children: [
          Row(
            children: [
              GestureDetector(
                onTap: () {
                  setState(() {
                    index = 0;
                  });
                },
                child: Text('Transactions | ',
                    style: GoogleFonts.montserrat(
                        fontSize: 20,
                        fontWeight: FontWeight.w500,
                        color: index == 0 ? Colors.black : Colors.grey)),
              ),
              GestureDetector(
                onTap: () {
                  setState(() {
                    index = 1;
                  });
                },
                child: Text(' settlement',
                    style: GoogleFonts.montserrat(
                        fontSize: 20,
                        fontWeight: FontWeight.w500,
                        color: index == 1 ? Colors.black : Colors.grey)),
              ),
            ],
          ),
          SizedBox(height: 40),
          Container(height: 1000, child: page[index])
        ],
      ),
    );
  }
}

class MinTra extends StatefulWidget {
  @override
  _MinTraState createState() => _MinTraState();
}

class _MinTraState extends State<MinTra> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
        body: Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                padding:
                    EdgeInsets.only(left: 7, right: 7, top: 20, bottom: 20),
                width: size.width / 4,
                height: 140,
                decoration: BoxDecoration(
                    color: Color(0xfff72b50),
                    borderRadius: BorderRadius.circular(15)),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Container(
                        height: 80,
                        width: 80,
                        decoration: BoxDecoration(
                            shape: BoxShape.circle, color: Color(0xfff9607c)),
                        child: Icon(Icons.free_breakfast_outlined,
                            color: Colors.white)),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Transaction amout',
                          style: GoogleFonts.montserrat(
                              fontSize: 16,
                              color: Colors.white,
                              fontWeight: FontWeight.w400),
                        ),
                        Text(
                          '56',
                          style: GoogleFonts.montserrat(
                              fontSize: 30,
                              fontWeight: FontWeight.w600,
                              color: Colors.white),
                        ),
                      ],
                    )
                  ],
                ),
              ),
              SizedBox(width: 30),
              //2
              Container(
                padding:
                    EdgeInsets.only(left: 7, right: 7, top: 20, bottom: 20),
                width: size.width / 3,
                height: 140,
                decoration: BoxDecoration(
                    color: Color(0xfff72b50),
                    borderRadius: BorderRadius.circular(15)),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Container(
                        height: 80,
                        width: 80,
                        decoration: BoxDecoration(
                            shape: BoxShape.circle, color: Color(0xfff9607c)),
                        child: Icon(Icons.free_breakfast_outlined,
                            color: Colors.white)),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Transaction amout',
                          style: GoogleFonts.montserrat(
                              fontSize: 16,
                              color: Colors.white,
                              fontWeight: FontWeight.w400),
                        ),
                        Text(
                          '56',
                          style: GoogleFonts.montserrat(
                              fontSize: 30,
                              fontWeight: FontWeight.w600,
                              color: Colors.white),
                        ),
                      ],
                    )
                  ],
                ),
              ),

              //3
            ],
          ),
          SizedBox(height: 20),
          Container(
            padding: EdgeInsets.only(left: 7, right: 7, top: 20, bottom: 20),
            width: size.width / 4,
            height: 140,
            decoration: BoxDecoration(
                color: Color(0xff3e4954),
                borderRadius: BorderRadius.circular(15)),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Container(
                    height: 80,
                    width: 80,
                    decoration: BoxDecoration(
                        shape: BoxShape.circle, color: Color(0xff6e777f)),
                    child: Icon(Icons.free_breakfast_outlined,
                        color: Colors.white)),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Transaction amout',
                      style: GoogleFonts.montserrat(
                          fontSize: 16,
                          color: Colors.white,
                          fontWeight: FontWeight.w400),
                    ),
                    Text(
                      '56',
                      style: GoogleFonts.montserrat(
                          fontSize: 30,
                          fontWeight: FontWeight.w600,
                          color: Colors.white),
                    ),
                  ],
                )
              ],
            ),
          ),
          SizedBox(height: 20),
          TransactionTable()
        ],
      ),
    ));
  }
}

class MinSettle extends StatefulWidget {
  @override
  _MinSettleState createState() => _MinSettleState();
}

class _MinSettleState extends State<MinSettle> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
        backgroundColor: Colors.grey.shade100,
        body: Container(
          padding: EdgeInsets.all(20),
          child: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(
                  height: 20,
                ),
                Container(
                  padding: EdgeInsets.only(left: 20, right: 20),
                  height: 100,
                  width: size.width / 1,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.white,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text('Amount to be settled',
                              style: GoogleFonts.montserrat(
                                  fontSize: 18, fontWeight: FontWeight.w400)),
                          Text('Rs. 10000.0',
                              style: GoogleFonts.montserrat(
                                  fontSize: 18, fontWeight: FontWeight.w400)),
                        ],
                      ),
                      HoverContainer(
                        height: 50,
                        width: size.width / 6,
                        hoverHeight: 50,
                        hoverWidth: size.width / 6,
                        decoration: BoxDecoration(
                            color: Colors.green.shade600,
                            borderRadius: BorderRadius.circular(10)),
                        hoverDecoration: BoxDecoration(
                            color: Colors.green.shade900,
                            borderRadius: BorderRadius.circular(10)),
                        child: Center(
                            child: Text('Request Settlement',
                                style: GoogleFonts.montserrat(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w500,
                                    color: Colors.white))),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 20),
                SettlementTable()
              ],
            ),
          ),
        ));
  }
}

class PayTab extends StatefulWidget {
  @override
  _PayTabState createState() => _PayTabState();
}

class _PayTabState extends State<PayTab> {
  List<Widget> page = [TabTran(), TabSet()];
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: ListView(
        padding: EdgeInsets.all(20),
        children: [
          Row(
            children: [
              GestureDetector(
                onTap: () {
                  setState(() {
                    index = 0;
                  });
                },
                child: Text('Transactions | ',
                    style: GoogleFonts.montserrat(
                        fontSize: 18,
                        fontWeight: FontWeight.w500,
                        color: index == 0 ? Colors.black : Colors.grey)),
              ),
              GestureDetector(
                onTap: () {
                  setState(() {
                    index = 1;
                  });
                },
                child: Text(' settlement',
                    style: GoogleFonts.montserrat(
                        fontSize: 18,
                        fontWeight: FontWeight.w500,
                        color: index == 1 ? Colors.black : Colors.grey)),
              ),
            ],
          ),
          SizedBox(height: 40),
          Container(height: 1400, child: page[index])
        ],
      ),
    );
  }
}

class TabTran extends StatefulWidget {
  @override
  _TabTranState createState() => _TabTranState();
}

class _TabTranState extends State<TabTran> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
        body: Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                padding:
                    EdgeInsets.only(left: 10, right: 10, top: 20, bottom: 20),
                width: size.width / 3,
                height: 140,
                decoration: BoxDecoration(
                    color: Color(0xfff72b50),
                    borderRadius: BorderRadius.circular(15)),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Container(
                        height: 70,
                        width: 70,
                        decoration: BoxDecoration(
                            shape: BoxShape.circle, color: Color(0xfff9607c)),
                        child: Icon(Icons.free_breakfast_outlined,
                            color: Colors.white)),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Transaction amout',
                          style: GoogleFonts.montserrat(
                              fontSize: 16,
                              color: Colors.white,
                              fontWeight: FontWeight.w400),
                        ),
                        Text(
                          '56',
                          style: GoogleFonts.montserrat(
                              fontSize: 30,
                              fontWeight: FontWeight.w600,
                              color: Colors.white),
                        ),
                      ],
                    )
                  ],
                ),
              ),
              SizedBox(width: 20),
              Container(
                padding:
                    EdgeInsets.only(left: 10, right: 10, top: 20, bottom: 20),
                width: size.width / 3,
                height: 140,
                decoration: BoxDecoration(
                    color: Color(0xfff72b50),
                    borderRadius: BorderRadius.circular(15)),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Container(
                        height: 70,
                        width: 70,
                        decoration: BoxDecoration(
                            shape: BoxShape.circle, color: Color(0xfff9607c)),
                        child: Icon(Icons.free_breakfast_outlined,
                            color: Colors.white)),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Transaction amout',
                          style: GoogleFonts.montserrat(
                              fontSize: 16,
                              color: Colors.white,
                              fontWeight: FontWeight.w400),
                        ),
                        Text(
                          '56',
                          style: GoogleFonts.montserrat(
                              fontSize: 30,
                              fontWeight: FontWeight.w600,
                              color: Colors.white),
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ],
          ),
          SizedBox(height: 20),
          Container(
            padding: EdgeInsets.only(left: 20, right: 20, top: 20, bottom: 20),
            width: size.width / 2,
            height: 140,
            decoration: BoxDecoration(
                color: Color(0xfff72b50),
                borderRadius: BorderRadius.circular(15)),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Container(
                    height: 80,
                    width: 80,
                    decoration: BoxDecoration(
                        shape: BoxShape.circle, color: Color(0xfff9607c)),
                    child: Icon(Icons.free_breakfast_outlined,
                        color: Colors.white)),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Transaction amout',
                      style: GoogleFonts.montserrat(
                          fontSize: 16,
                          color: Colors.white,
                          fontWeight: FontWeight.w400),
                    ),
                    Text(
                      '56',
                      style: GoogleFonts.montserrat(
                          fontSize: 30,
                          fontWeight: FontWeight.w600,
                          color: Colors.white),
                    ),
                  ],
                )
              ],
            ),
          ),
          SizedBox(height: 20),
          TransactionTable()
        ],
      ),
    ));
  }
}

class TabSet extends StatefulWidget {
  @override
  _TabSetState createState() => _TabSetState();
}

class _TabSetState extends State<TabSet> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
        backgroundColor: Colors.grey.shade100,
        body: Container(
          padding: EdgeInsets.all(20),
          child: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(
                  height: 20,
                ),
                Container(
                  padding: EdgeInsets.only(left: 20, right: 20),
                  height: 100,
                  width: size.width / 1,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.white,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text('Amount to be settled',
                              style: GoogleFonts.montserrat(
                                  fontSize: 18, fontWeight: FontWeight.w400)),
                          Text('Rs. 10000.0',
                              style: GoogleFonts.montserrat(
                                  fontSize: 18, fontWeight: FontWeight.w400)),
                        ],
                      ),
                      HoverContainer(
                        height: 50,
                        width: size.width / 6,
                        hoverHeight: 50,
                        hoverWidth: size.width / 5,
                        decoration: BoxDecoration(
                            color: Colors.green.shade600,
                            borderRadius: BorderRadius.circular(10)),
                        hoverDecoration: BoxDecoration(
                            color: Colors.green.shade900,
                            borderRadius: BorderRadius.circular(10)),
                        child: Center(
                            child: Text('Request Settlement',
                                style: GoogleFonts.montserrat(
                                    fontSize: 15,
                                    fontWeight: FontWeight.w500,
                                    color: Colors.white))),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 20),
                SettlementTable()
              ],
            ),
          ),
        ));
  }
}

class MobilePay extends StatefulWidget {
  @override
  _MobilePayState createState() => _MobilePayState();
}

class _MobilePayState extends State<MobilePay> {
  List<Widget> page = [MobileTra(), MobileSettle()];
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: ListView(
        padding: EdgeInsets.all(10),
        children: [
          Row(
            children: [
              GestureDetector(
                onTap: () {
                  setState(() {
                    index = 0;
                  });
                },
                child: Text('Transactions | ',
                    style: GoogleFonts.montserrat(
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                        color: index == 0 ? Colors.black : Colors.grey)),
              ),
              GestureDetector(
                onTap: () {
                  setState(() {
                    index = 1;
                  });
                },
                child: Text(' settlement',
                    style: GoogleFonts.montserrat(
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                        color: index == 1 ? Colors.black : Colors.grey)),
              ),
            ],
          ),
          SizedBox(height: 40),
          Container(height: 1400, child: page[index])
        ],
      ),
    );
  }
}

class MobileTra extends StatefulWidget {
  @override
  _MobileTraState createState() => _MobileTraState();
}

class _MobileTraState extends State<MobileTra> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
        body: Container(
      child: Column(
        //   crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            width: size.width / 1,
            height: 140,
            decoration: BoxDecoration(
                color: Color(0xfff72b50),
                borderRadius: BorderRadius.circular(15)),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Container(
                    height: 70,
                    width: 70,
                    decoration: BoxDecoration(
                        shape: BoxShape.circle, color: Color(0xfff9607c)),
                    child: Icon(Icons.free_breakfast_outlined,
                        color: Colors.white)),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Transaction amout',
                      style: GoogleFonts.montserrat(
                          fontSize: 16,
                          color: Colors.white,
                          fontWeight: FontWeight.w400),
                    ),
                    Text(
                      '56',
                      style: GoogleFonts.montserrat(
                          fontSize: 30,
                          fontWeight: FontWeight.w600,
                          color: Colors.white),
                    ),
                  ],
                )
              ],
            ),
          ),
          SizedBox(height: 20),
          Container(
            width: size.width / 1,
            height: 140,
            decoration: BoxDecoration(
                color: Color(0xfff72b50),
                borderRadius: BorderRadius.circular(15)),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Container(
                    height: 70,
                    width: 70,
                    decoration: BoxDecoration(
                        shape: BoxShape.circle, color: Color(0xfff9607c)),
                    child: Icon(Icons.free_breakfast_outlined,
                        color: Colors.white)),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Transaction amout',
                      style: GoogleFonts.montserrat(
                          fontSize: 16,
                          color: Colors.white,
                          fontWeight: FontWeight.w400),
                    ),
                    Text(
                      '56',
                      style: GoogleFonts.montserrat(
                          fontSize: 30,
                          fontWeight: FontWeight.w600,
                          color: Colors.white),
                    ),
                  ],
                )
              ],
            ),
          ),
          SizedBox(height: 20),
          Container(
            width: size.width / 1,
            height: 140,
            decoration: BoxDecoration(
                color: Color(0xfff72b50),
                borderRadius: BorderRadius.circular(15)),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Container(
                    height: 80,
                    width: 80,
                    decoration: BoxDecoration(
                        shape: BoxShape.circle, color: Color(0xfff9607c)),
                    child: Icon(Icons.free_breakfast_outlined,
                        color: Colors.white)),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Transaction amout',
                      style: GoogleFonts.montserrat(
                          fontSize: 16,
                          color: Colors.white,
                          fontWeight: FontWeight.w400),
                    ),
                    Text(
                      '56',
                      style: GoogleFonts.montserrat(
                          fontSize: 30,
                          fontWeight: FontWeight.w600,
                          color: Colors.white),
                    ),
                  ],
                )
              ],
            ),
          ),
          SizedBox(height: 20),
          TransactionTable()
        ],
      ),
    ));
  }
}

class MobileSettle extends StatefulWidget {
  @override
  _MobileSettleState createState() => _MobileSettleState();
}

class _MobileSettleState extends State<MobileSettle> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Scaffold(
        backgroundColor: Colors.grey.shade100,
        body: Container(
          padding: EdgeInsets.all(20),
          child: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(
                  height: 20,
                ),
                Container(
                  child: Column(
                    children: [
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text('Amount to be settled',
                              style: GoogleFonts.montserrat(
                                  fontSize: 15, fontWeight: FontWeight.w400)),
                          Text('Rs. 10000.0',
                              style: GoogleFonts.montserrat(
                                  fontSize: 16, fontWeight: FontWeight.w400)),
                        ],
                      ),
                      SizedBox(height: 20),
                      HoverContainer(
                        height: 50,
                        width: size.width / 2,
                        hoverHeight: 50,
                        hoverWidth: size.width / 2,
                        decoration: BoxDecoration(
                            color: Colors.green.shade600,
                            borderRadius: BorderRadius.circular(5)),
                        hoverDecoration: BoxDecoration(
                            color: Colors.green.shade900,
                            borderRadius: BorderRadius.circular(5)),
                        child: Center(
                            child: Text('Request Settlement',
                                style: GoogleFonts.montserrat(
                                    fontSize: 14,
                                    fontWeight: FontWeight.w400,
                                    color: Colors.white))),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 20),
                SettlementTable()
              ],
            ),
          ),
        ));
  }
}
