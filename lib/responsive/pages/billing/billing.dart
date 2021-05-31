import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hovering/hovering.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';
import 'package:smoose_20_05/responsive/responsive.dart';

class Billingpage extends StatefulWidget {
  @override
  _BillingpageState createState() => _BillingpageState();
}

class _BillingpageState extends State<Billingpage> {
  @override
  Widget build(BuildContext context) {
    return Responsive(
        mobile: MobileBilling(),
        tab: MinBilling(),
        maxViewDesktop: Billing(),
        minViewDesktop: MinBilling());
  }
}

class Billing extends StatefulWidget {
  @override
  _BillingState createState() => _BillingState();
}

class _BillingState extends State<Billing> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.grey.shade100,
      body: Container(
        padding: EdgeInsets.all(20),
        child: Container(
          color: Colors.white54,
          child: ListView(
            padding: EdgeInsets.all(20),
            children: [
              AutoSizeText('Reviews',
                  style: GoogleFonts.montserrat(
                      fontSize: 26,
                      fontWeight: FontWeight.w500,
                      textStyle: TextStyle())),
              SizedBox(
                height: 20,
              ),
              Row(
                children: [
                  Container(
                    padding: EdgeInsets.all(20),
                    color: Colors.white,
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Icon(
                              Icons.alarm_add,
                              color: Color(0xffff5a1e),
                              size: 50,
                            ),
                            SizedBox(
                              width: 20,
                            ),
                            Column(
                              children: [
                                AutoSizeText('REMAINING DAYS',
                                    style: GoogleFonts.montserrat(
                                        fontWeight: FontWeight.w600,
                                        fontSize: 18,
                                        textStyle: TextStyle())),
                                AutoSizeText('165 days',
                                    style: GoogleFonts.montserrat(
                                        fontWeight: FontWeight.w600,
                                        fontSize: 18,
                                        textStyle: TextStyle())),
                              ],
                            ),
                            SizedBox(
                              width: 30,
                            ),
                            Column(
                              children: [
                                AutoSizeText('EXPIRY DATE',
                                    style: GoogleFonts.montserrat(
                                        fontWeight: FontWeight.w400,
                                        color: Colors.black54,
                                        fontSize: 15,
                                        textStyle: TextStyle())),
                                SizedBox(
                                  height: 5,
                                ),
                                AutoSizeText('08/21',
                                    style: GoogleFonts.montserrat(
                                        fontWeight: FontWeight.w400,
                                        fontSize: 16,
                                        textStyle: TextStyle())),
                              ],
                            ),
                            SizedBox(
                              width: 30,
                            ),
                            Column(
                              children: [
                                AutoSizeText('Card Holder',
                                    style: GoogleFonts.montserrat(
                                        fontWeight: FontWeight.w400,
                                        color: Colors.black54,
                                        fontSize: 15,
                                        textStyle: TextStyle())),
                                SizedBox(
                                  height: 5,
                                ),
                                AutoSizeText('Franklin jr.',
                                    style: GoogleFonts.montserrat(
                                        fontWeight: FontWeight.w400,
                                        fontSize: 16,
                                        textStyle: TextStyle())),
                              ],
                            ),
                            SizedBox(
                              width: 30,
                            ),
                            HoverWidget(
                                child: Container(
                                  height: 50,
                                  width: size.width / 7,
                                  decoration: BoxDecoration(
                                      border: Border.all(
                                          color: Color(0xffff5a1e), width: 2),
                                      color: Colors.white,
                                      borderRadius: BorderRadius.circular(30)),
                                  child: Center(
                                    child: AutoSizeText('View card details',
                                        style: GoogleFonts.montserrat(
                                            fontWeight: FontWeight.w400,
                                            fontSize: 18,
                                            textStyle: TextStyle(
                                                color: Color(0xffff5a1e)))),
                                  ),
                                ),
                                hoverChild: Container(
                                  height: 50,
                                  width: size.width / 7,
                                  decoration: BoxDecoration(
                                      color: Color(0xffff5a1e),
                                      borderRadius: BorderRadius.circular(30)),
                                  child: Center(
                                    child: AutoSizeText('View card details',
                                        style: GoogleFonts.montserrat(
                                            fontWeight: FontWeight.w400,
                                            fontSize: 18,
                                            textStyle: TextStyle(
                                                color: Colors.white))),
                                  ),
                                ),
                                onHover: (e) {})
                          ],
                        ),
                        SizedBox(
                          height: 60,
                        ),
                        LinearPercentIndicator(
                          width: size.width / 2.05,
                          animation: true,
                          lineHeight: 20,
                          percent: 0.2,
                          backgroundColor: Colors.grey.shade400,
                          progressColor: Color(0xffff5a1e),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    width: 60,
                  ),
                  Container(
                    height: 180,
                    width: size.width / 6,
                    padding: EdgeInsets.all(15),
                    decoration: BoxDecoration(
                        color: Colors.green.shade800,
                        borderRadius: BorderRadius.circular(20)),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          height: 10,
                        ),
                        AutoSizeText('Current plan',
                            style: GoogleFonts.montserrat(
                                fontWeight: FontWeight.w300,
                                fontSize: 20,
                                textStyle: TextStyle(color: Colors.white))),
                        SizedBox(
                          height: 10,
                        ),
                        AutoSizeText('Spark',
                            style: GoogleFonts.montserrat(
                                fontWeight: FontWeight.w600,
                                fontSize: 20,
                                textStyle: TextStyle(color: Colors.white))),
                        SizedBox(
                          height: 20,
                        ),
                        HoverWidget(
                            child: Container(
                              height: 50,
                              width: size.width / 8,
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(10)),
                              child: Center(
                                child: AutoSizeText('Upgrade Plan',
                                    style: GoogleFonts.montserrat(
                                        fontWeight: FontWeight.w400,
                                        fontSize: 18,
                                        textStyle: TextStyle(
                                            color: Colors.green.shade800))),
                              ),
                            ),
                            hoverChild: Container(
                              height: 50,
                              width: size.width / 8,
                              decoration: BoxDecoration(
                                  color: Colors.green.shade800,
                                  borderRadius: BorderRadius.circular(10)),
                              child: Center(
                                child: AutoSizeText('Upgrade Plan',
                                    style: GoogleFonts.montserrat(
                                        fontWeight: FontWeight.w400,
                                        fontSize: 18,
                                        textStyle:
                                            TextStyle(color: Colors.white))),
                              ),
                            ),
                            onHover: (e) {})
                      ],
                    ),
                  )
                ],
              ),
              SizedBox(
                height: 40,
              ),
              Container(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    AutoSizeText('Subscription History',
                        style: GoogleFonts.montserrat(
                            fontWeight: FontWeight.w500,
                            fontSize: 22,
                            textStyle: TextStyle())),
                    SizedBox(
                      height: 20,
                    ),
                    Container(
                      padding: EdgeInsets.only(
                          left: 40, right: 40, top: 20, bottom: 20),
                      decoration: BoxDecoration(
                          color: Colors.green.shade100,
                          borderRadius: BorderRadius.circular(10)),
                      child: Column(
                        children: [
                          PaymentBillingRow(size: size),
                          SizedBox(
                            height: 20,
                          ),
                          PaymentBillingRow(size: size),
                          SizedBox(
                            height: 20,
                          ),
                          PaymentBillingRow(size: size),
                          SizedBox(
                            height: 20,
                          ),
                          PaymentBillingRow(size: size),
                        ],
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class PaymentBillingRow extends StatelessWidget {
  const PaymentBillingRow({
    Key? key,
    required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          children: [
            AutoSizeText('Spark',
                style: GoogleFonts.montserrat(
                    fontWeight: FontWeight.w600,
                    fontSize: 16,
                    textStyle: TextStyle())),
            AutoSizeText('66 days',
                style: GoogleFonts.montserrat(
                    fontWeight: FontWeight.w400,
                    fontSize: 16,
                    textStyle: TextStyle())),
          ],
        ),
        AutoSizeText('#999',
            style: GoogleFonts.montserrat(
                fontWeight: FontWeight.w500,
                fontSize: 16,
                textStyle: TextStyle())),
        AutoSizeText('09/11/2020',
            style: GoogleFonts.montserrat(
                fontWeight: FontWeight.w500,
                fontSize: 16,
                textStyle: TextStyle())),
        Column(
          children: [
            AutoSizeText('xxxx xxxx 1234',
                style: GoogleFonts.montserrat(
                    fontWeight: FontWeight.w500,
                    fontSize: 16,
                    textStyle: TextStyle())),
            AutoSizeText('MASTER CARD',
                style: GoogleFonts.montserrat(
                    fontWeight: FontWeight.w500,
                    fontSize: 16,
                    textStyle: TextStyle())),
          ],
        ),
        HoverWidget(
            child: Container(
              height: 50,
              width: size.width / 8,
              decoration: BoxDecoration(
                  border: Border.all(color: Colors.green.shade800, width: 2),
                  color: Colors.green.shade100,
                  borderRadius: BorderRadius.circular(30)),
              child: Center(
                child: AutoSizeText('Paid',
                    style: GoogleFonts.montserrat(
                        fontWeight: FontWeight.w400,
                        fontSize: 18,
                        textStyle: TextStyle(color: Colors.green.shade800))),
              ),
            ),
            hoverChild: Container(
              height: 50,
              width: size.width / 8,
              decoration: BoxDecoration(
                  color: Colors.green.shade800,
                  borderRadius: BorderRadius.circular(30)),
              child: Center(
                child: AutoSizeText('paid',
                    style: GoogleFonts.montserrat(
                        fontWeight: FontWeight.w400,
                        fontSize: 18,
                        textStyle: TextStyle(color: Colors.white))),
              ),
            ),
            onHover: (e) {})
      ],
    );
  }
}

class MinBilling extends StatefulWidget {
  @override
  _MinBillingState createState() => _MinBillingState();
}

class _MinBillingState extends State<MinBilling> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.grey.shade100,
      body: Container(
        padding: EdgeInsets.all(20),
        child: Container(
          color: Colors.white54,
          child: ListView(
            padding: EdgeInsets.all(20),
            children: [
              AutoSizeText('Reviews',
                  style: GoogleFonts.montserrat(
                      fontSize: 26,
                      fontWeight: FontWeight.w500,
                      textStyle: TextStyle())),
              SizedBox(
                height: 20,
              ),
              Container(
                padding: EdgeInsets.only(top: 20, bottom: 20),
                color: Colors.white,
                child: Column(
                  children: [
                    Row(
                      children: [
                        Icon(
                          Icons.alarm_add,
                          color: Color(0xffff5a1e),
                          size: 30,
                        ),
                        SizedBox(
                          width: size.width > 900
                              ? size.width / 30
                              : size.width / 60,
                        ),
                        Column(
                          children: [
                            AutoSizeText('REMAINING DAYS',
                                style: GoogleFonts.montserrat(
                                    fontWeight: FontWeight.w600,
                                    fontSize: 16,
                                    textStyle: TextStyle())),
                            AutoSizeText('165 days',
                                style: GoogleFonts.montserrat(
                                    fontWeight: FontWeight.w600,
                                    fontSize: 16,
                                    textStyle: TextStyle())),
                          ],
                        ),
                        SizedBox(
                          width: size.width > 900
                              ? size.width / 30
                              : size.width / 60,
                        ),
                        Column(
                          children: [
                            AutoSizeText('EXPIRY DATE',
                                style: GoogleFonts.montserrat(
                                    fontWeight: FontWeight.w400,
                                    color: Colors.black54,
                                    fontSize: 14,
                                    textStyle: TextStyle())),
                            SizedBox(
                              height: 5,
                            ),
                            AutoSizeText('08/21',
                                style: GoogleFonts.montserrat(
                                    fontWeight: FontWeight.w400,
                                    fontSize: 15,
                                    textStyle: TextStyle())),
                          ],
                        ),
                        SizedBox(
                          width: size.width > 900
                              ? size.width / 30
                              : size.width / 60,
                        ),
                        Column(
                          children: [
                            AutoSizeText('Card Holder',
                                style: GoogleFonts.montserrat(
                                    fontWeight: FontWeight.w400,
                                    color: Colors.black54,
                                    fontSize: 14,
                                    textStyle: TextStyle())),
                            SizedBox(
                              height: 5,
                            ),
                            AutoSizeText('Franklin jr.',
                                style: GoogleFonts.montserrat(
                                    fontWeight: FontWeight.w400,
                                    fontSize: 15,
                                    textStyle: TextStyle())),
                          ],
                        ),
                        SizedBox(
                          width: size.width > 900
                              ? size.width / 30
                              : size.width / 60,
                        ),
                        HoverWidget(
                            child: Container(
                              height: 50,
                              width: size.width > 900
                                  ? size.width / 6
                                  : size.width / 7,
                              decoration: BoxDecoration(
                                  border: Border.all(
                                      color: Color(0xffff5a1e), width: 2),
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(30)),
                              child: Center(
                                child: AutoSizeText('View card details',
                                    style: GoogleFonts.montserrat(
                                        fontWeight: FontWeight.w400,
                                        fontSize: 13,
                                        textStyle: TextStyle(
                                            color: Color(0xffff5a1e)))),
                              ),
                            ),
                            hoverChild: Container(
                              height: 50,
                              width: size.width > 900
                                  ? size.width / 6
                                  : size.width / 7,
                              decoration: BoxDecoration(
                                  color: Color(0xffff5a1e),
                                  borderRadius: BorderRadius.circular(30)),
                              child: Center(
                                child: AutoSizeText('View card details',
                                    style: GoogleFonts.montserrat(
                                        fontWeight: FontWeight.w400,
                                        fontSize: 13,
                                        textStyle:
                                            TextStyle(color: Colors.white))),
                              ),
                            ),
                            onHover: (e) {})
                      ],
                    ),
                    SizedBox(
                      height: 60,
                    ),
                    LinearPercentIndicator(
                      width: size.width / 2.05,
                      animation: true,
                      lineHeight: 20,
                      percent: 0.2,
                      backgroundColor: Colors.grey.shade400,
                      progressColor: Color(0xffff5a1e),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Container(
                height: 180,
                width: size.width / 6,
                padding: EdgeInsets.all(15),
                decoration: BoxDecoration(
                    color: Colors.green.shade800,
                    borderRadius: BorderRadius.circular(20)),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: 10,
                    ),
                    AutoSizeText('Current plan',
                        style: GoogleFonts.montserrat(
                            fontWeight: FontWeight.w300,
                            fontSize: 20,
                            textStyle: TextStyle(color: Colors.white))),
                    SizedBox(
                      height: 10,
                    ),
                    AutoSizeText('Spark',
                        style: GoogleFonts.montserrat(
                            fontWeight: FontWeight.w600,
                            fontSize: 20,
                            textStyle: TextStyle(color: Colors.white))),
                    SizedBox(
                      height: 20,
                    ),
                    HoverWidget(
                        child: Container(
                          height: 50,
                          width: size.width / 4,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(10)),
                          child: Center(
                            child: AutoSizeText('Upgrade Plan',
                                style: GoogleFonts.montserrat(
                                    fontWeight: FontWeight.w400,
                                    fontSize: 18,
                                    textStyle: TextStyle(
                                        color: Colors.green.shade800))),
                          ),
                        ),
                        hoverChild: Container(
                          height: 50,
                          width: size.width / 4,
                          decoration: BoxDecoration(
                              color: Colors.green.shade800,
                              borderRadius: BorderRadius.circular(10)),
                          child: Center(
                            child: AutoSizeText('Upgrade Plan',
                                style: GoogleFonts.montserrat(
                                    fontWeight: FontWeight.w400,
                                    fontSize: 18,
                                    textStyle: TextStyle(color: Colors.white))),
                          ),
                        ),
                        onHover: (e) {})
                  ],
                ),
              ),
              SizedBox(
                height: 40,
              ),
              Container(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    AutoSizeText('Subscription History',
                        style: GoogleFonts.montserrat(
                            fontWeight: FontWeight.w500,
                            fontSize: 22,
                            textStyle: TextStyle())),
                    SizedBox(
                      height: 20,
                    ),
                    Container(
                      padding: EdgeInsets.only(
                          left: 40, right: 40, top: 20, bottom: 20),
                      decoration: BoxDecoration(
                          color: Colors.green.shade100,
                          borderRadius: BorderRadius.circular(10)),
                      child: Column(
                        children: [
                          PaymentBillingRow(size: size),
                          SizedBox(
                            height: 20,
                          ),
                          PaymentBillingRow(size: size),
                          SizedBox(
                            height: 20,
                          ),
                          PaymentBillingRow(size: size),
                          SizedBox(
                            height: 20,
                          ),
                          PaymentBillingRow(size: size),
                        ],
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class MobileBilling extends StatefulWidget {
  @override
  _MobileBillingState createState() => _MobileBillingState();
}

class _MobileBillingState extends State<MobileBilling> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
        backgroundColor: Colors.grey.shade100,
        body: Container(
            child: Container(
                color: Colors.white38,
                child: ListView(
                    padding: EdgeInsets.only(left: 7, right: 7, top: 20),
                    children: [
                      AutoSizeText('Reviews',
                          style: GoogleFonts.montserrat(
                              fontSize: 22,
                              fontWeight: FontWeight.w500,
                              textStyle: TextStyle())),
                      Container(
                        padding: EdgeInsets.all(10),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Icon(
                                  Icons.alarm_add,
                                  color: Color(0xffff5a1e),
                                  size: 30,
                                ),
                                Column(
                                  children: [
                                    AutoSizeText('REMAINING DAYS',
                                        style: GoogleFonts.montserrat(
                                            fontWeight: FontWeight.w600,
                                            fontSize: 16,
                                            textStyle: TextStyle())),
                                    AutoSizeText('165 days',
                                        style: GoogleFonts.montserrat(
                                            fontWeight: FontWeight.w600,
                                            fontSize: 16,
                                            textStyle: TextStyle())),
                                  ],
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 15,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Column(
                                  children: [
                                    AutoSizeText('EXPIRY DATE',
                                        style: GoogleFonts.montserrat(
                                            fontWeight: FontWeight.w400,
                                            color: Colors.black54,
                                            fontSize: 14,
                                            textStyle: TextStyle())),
                                    SizedBox(
                                      height: 5,
                                    ),
                                    AutoSizeText('08/21',
                                        style: GoogleFonts.montserrat(
                                            fontWeight: FontWeight.w400,
                                            fontSize: 15,
                                            textStyle: TextStyle())),
                                  ],
                                ),
                                Column(
                                  children: [
                                    AutoSizeText('Card Holder',
                                        style: GoogleFonts.montserrat(
                                            fontWeight: FontWeight.w400,
                                            color: Colors.black54,
                                            fontSize: 14,
                                            textStyle: TextStyle())),
                                    SizedBox(
                                      height: 5,
                                    ),
                                    AutoSizeText('Franklin jr.',
                                        style: GoogleFonts.montserrat(
                                            fontWeight: FontWeight.w400,
                                            fontSize: 15,
                                            textStyle: TextStyle())),
                                  ],
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 15,
                            ),
                            Align(
                              alignment: Alignment.topLeft,
                              child: HoverWidget(
                                  child: Container(
                                    height: 40,
                                    width: size.width / 1.8,
                                    decoration: BoxDecoration(
                                        border: Border.all(
                                            color: Color(0xffff5a1e), width: 2),
                                        color: Colors.white,
                                        borderRadius:
                                            BorderRadius.circular(30)),
                                    child: Center(
                                      child: AutoSizeText('View card details',
                                          style: GoogleFonts.montserrat(
                                              fontWeight: FontWeight.w400,
                                              fontSize: 13,
                                              textStyle: TextStyle(
                                                  color: Color(0xffff5a1e)))),
                                    ),
                                  ),
                                  hoverChild: Container(
                                    height: 40,
                                    width: size.width / 1.8,
                                    decoration: BoxDecoration(
                                        color: Color(0xffff5a1e),
                                        borderRadius:
                                            BorderRadius.circular(30)),
                                    child: Center(
                                      child: AutoSizeText('View card details',
                                          style: GoogleFonts.montserrat(
                                              fontWeight: FontWeight.w400,
                                              fontSize: 13,
                                              textStyle: TextStyle(
                                                  color: Colors.white))),
                                    ),
                                  ),
                                  onHover: (e) {}),
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            LinearPercentIndicator(
                              width: size.width / 1.5,
                              animation: true,
                              lineHeight: 10,
                              percent: 0.2,
                              backgroundColor: Colors.grey.shade400,
                              progressColor: Color(0xffff5a1e),
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            Container(
                              height: 180,
                              width: size.width / 1,
                              padding: EdgeInsets.all(15),
                              decoration: BoxDecoration(
                                  color: Colors.green.shade800,
                                  borderRadius: BorderRadius.circular(20)),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  SizedBox(
                                    height: 10,
                                  ),
                                  AutoSizeText('Current plan',
                                      style: GoogleFonts.montserrat(
                                          fontWeight: FontWeight.w300,
                                          fontSize: 20,
                                          textStyle:
                                              TextStyle(color: Colors.white))),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  AutoSizeText('Spark',
                                      style: GoogleFonts.montserrat(
                                          fontWeight: FontWeight.w600,
                                          fontSize: 20,
                                          textStyle:
                                              TextStyle(color: Colors.white))),
                                  SizedBox(
                                    height: 20,
                                  ),
                                  HoverWidget(
                                      child: Container(
                                        height: 50,
                                        width: size.width / 2,
                                        decoration: BoxDecoration(
                                            color: Colors.white,
                                            borderRadius:
                                                BorderRadius.circular(10)),
                                        child: Center(
                                          child: AutoSizeText('Upgrade Plan',
                                              style: GoogleFonts.montserrat(
                                                  fontWeight: FontWeight.w400,
                                                  fontSize: 18,
                                                  textStyle: TextStyle(
                                                      color: Colors
                                                          .green.shade800))),
                                        ),
                                      ),
                                      hoverChild: Container(
                                        height: 50,
                                        width: size.width / 2,
                                        decoration: BoxDecoration(
                                            color: Colors.green.shade800,
                                            borderRadius:
                                                BorderRadius.circular(10)),
                                        child: Center(
                                          child: AutoSizeText('Upgrade Plan',
                                              style: GoogleFonts.montserrat(
                                                  fontWeight: FontWeight.w400,
                                                  fontSize: 18,
                                                  textStyle: TextStyle(
                                                      color: Colors.white))),
                                        ),
                                      ),
                                      onHover: (e) {})
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Container(
                        padding: EdgeInsets.all(7),
                        decoration: BoxDecoration(
                            color: Colors.green.shade100,
                            borderRadius: BorderRadius.circular(10)),
                        child: Column(
                          children: [
                            MobileBillingColumn(size: size),
                            SizedBox(
                              height: 20,
                            ),
                            MobileBillingColumn(size: size),
                            SizedBox(
                              height: 20,
                            ),
                            MobileBillingColumn(size: size),
                            SizedBox(
                              height: 20,
                            ),
                            MobileBillingColumn(size: size),
                          ],
                        ),
                      )
                    ]))));
  }
}

class MobileBillingColumn extends StatelessWidget {
  const MobileBillingColumn({
    Key? key,
    required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Column(
              children: [
                AutoSizeText('Spark',
                    style: GoogleFonts.montserrat(
                        fontWeight: FontWeight.w600,
                        fontSize: 16,
                        textStyle: TextStyle())),
                AutoSizeText('66 days',
                    style: GoogleFonts.montserrat(
                        fontWeight: FontWeight.w400,
                        fontSize: 16,
                        textStyle: TextStyle())),
              ],
            ),
            AutoSizeText('#999',
                style: GoogleFonts.montserrat(
                    fontWeight: FontWeight.w500,
                    fontSize: 16,
                    textStyle: TextStyle())),
            AutoSizeText('09/11/2020',
                style: GoogleFonts.montserrat(
                    fontWeight: FontWeight.w500,
                    fontSize: 16,
                    textStyle: TextStyle())),
          ],
        ),
        SizedBox(
          height: 15,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Column(
              children: [
                AutoSizeText('xxxx xxxx 1234',
                    style: GoogleFonts.montserrat(
                        fontWeight: FontWeight.w500,
                        fontSize: 16,
                        textStyle: TextStyle())),
                AutoSizeText('MASTER CARD',
                    style: GoogleFonts.montserrat(
                        fontWeight: FontWeight.w500,
                        fontSize: 16,
                        textStyle: TextStyle())),
              ],
            ),
            HoverWidget(
                child: Container(
                  height: 50,
                  width: size.width / 3,
                  decoration: BoxDecoration(
                      border:
                          Border.all(color: Colors.green.shade800, width: 2),
                      color: Colors.green.shade100,
                      borderRadius: BorderRadius.circular(30)),
                  child: Center(
                    child: AutoSizeText('Paid',
                        style: GoogleFonts.montserrat(
                            fontWeight: FontWeight.w400,
                            fontSize: 18,
                            textStyle:
                                TextStyle(color: Colors.green.shade800))),
                  ),
                ),
                hoverChild: Container(
                  height: 50,
                  width: size.width / 3,
                  decoration: BoxDecoration(
                      color: Colors.green.shade800,
                      borderRadius: BorderRadius.circular(30)),
                  child: Center(
                    child: AutoSizeText('paid',
                        style: GoogleFonts.montserrat(
                            fontWeight: FontWeight.w400,
                            fontSize: 18,
                            textStyle: TextStyle(color: Colors.white))),
                  ),
                ),
                onHover: (e) {})
          ],
        )
      ],
    );
  }
}
