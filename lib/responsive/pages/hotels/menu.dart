import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hovering/hovering.dart';
import 'package:smoose_20_05/responsive/responsive.dart';

class Menu1 extends StatefulWidget {
  @override
  _Menu1State createState() => _Menu1State();
}

class _Menu1State extends State<Menu1> {
  @override
  Widget build(BuildContext context) {
    return Responsive(
        mobile: MobileMenu(),
        tab: TabMenu(),
        maxViewDesktop: Menu(),
        minViewDesktop: Menu());
  }
}

class Menu extends StatefulWidget {
  @override
  _MenuState createState() => _MenuState();
}

class _MenuState extends State<Menu> {
  List<Widget> list = [Starter(), MainCourse(), Desserts()];
  var index = 0;
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
        color: Colors.grey.shade100,
        child: ListView(
            padding: EdgeInsets.all(size.width > 800 ? 10 : 2),
            children: [
              index == 0
                  ? Container(
                      padding: EdgeInsets.only(
                          left: size.width > 800 ? 10 : 2,
                          right: size.width > 800 ? 10 : 2,
                          top: 10),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.white,
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            height: 100,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    AutoSizeText('Menu',
                                        style: GoogleFonts.montserrat(
                                            fontSize: 26,
                                            fontWeight: FontWeight.w500,
                                            textStyle: TextStyle())),
                                    SizedBox(
                                      height: 15,
                                    ),
                                    Container(
                                      padding: EdgeInsets.all(5),
                                      height: 50,
                                      width: size.width / 4,
                                      decoration: BoxDecoration(
                                          color: Colors.grey.shade200,
                                          borderRadius:
                                              BorderRadius.circular(8)),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceEvenly,
                                        children: [
                                          GestureDetector(
                                            onTap: () {
                                              setState(() {
                                                dish = 0;
                                              });
                                            },
                                            child: Container(
                                              decoration: BoxDecoration(
                                                  color: dish == 0
                                                      ? Colors.white
                                                      : Colors.grey.shade100,
                                                  borderRadius:
                                                      BorderRadius.circular(8)),
                                              height: 40,
                                              width: size.width / 14,
                                              child: Center(
                                                child: Text(
                                                  'Starters',
                                                  style: TextStyle(
                                                      color: dish == 0
                                                          ? Colors.black
                                                          : Colors.black54),
                                                ),
                                              ),
                                            ),
                                          ),
                                          GestureDetector(
                                            onTap: () {
                                              setState(() {
                                                dish = 1;
                                              });
                                            },
                                            child: Container(
                                              decoration: BoxDecoration(
                                                  color: dish == 1
                                                      ? Colors.white
                                                      : Colors.grey.shade100,
                                                  borderRadius:
                                                      BorderRadius.circular(8)),
                                              height: 40,
                                              width: size.width / 14,
                                              child: Center(
                                                child: Text(
                                                  'Main course',
                                                  style: TextStyle(
                                                      color: dish == 1
                                                          ? Colors.black
                                                          : Colors.black54),
                                                ),
                                              ),
                                            ),
                                          ),
                                          GestureDetector(
                                            onTap: () {
                                              setState(() {
                                                dish = 2;
                                              });
                                            },
                                            child: Container(
                                              decoration: BoxDecoration(
                                                  color: dish == 2
                                                      ? Colors.white
                                                      : Colors.grey.shade100,
                                                  borderRadius:
                                                      BorderRadius.circular(8)),
                                              height: 40,
                                              width: size.width / 14,
                                              child: Center(
                                                child: Text(
                                                  'desserts',
                                                  style: TextStyle(
                                                      color: dish == 2
                                                          ? Colors.black
                                                          : Colors.black54),
                                                ),
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                                HoverWidget(
                                  child: GestureDetector(
                                    onTap: () {
                                      setState(() {
                                        index = 1;
                                      });
                                    },
                                    child: Row(
                                      children: [
                                        Icon(
                                          Icons.add_to_photos_rounded,
                                          color: Colors.black54,
                                        ),
                                        AutoSizeText('Add food',
                                            style: GoogleFonts.montserrat(
                                                fontSize: 20,
                                                color: Colors.black54,
                                                fontWeight: FontWeight.w500,
                                                textStyle: TextStyle())),
                                      ],
                                    ),
                                  ),
                                  hoverChild: GestureDetector(
                                    onTap: () {
                                      setState(() {
                                        index = 1;
                                      });
                                    },
                                    child: Row(
                                      children: [
                                        Icon(
                                          Icons.add_to_photos_rounded,
                                          color: Colors.indigo,
                                        ),
                                        AutoSizeText('Add foods',
                                            style: GoogleFonts.montserrat(
                                                fontSize: 20,
                                                color: Colors.indigo,
                                                fontWeight: FontWeight.w500,
                                                textStyle: TextStyle())),
                                      ],
                                    ),
                                  ),
                                  onHover: (event) {},
                                )
                              ],
                            ),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          list[dish]
                        ],
                      ),
                    )
                  : Container(
                      padding: EdgeInsets.only(left: 20, right: 20, top: 10),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.white,
                      ),
                      child: Column(
                        children: [
                          Container(
                            height: 60,
                            child: Row(
                              children: [
                                IconButton(
                                  icon: Icon(Icons.arrow_back),
                                  onPressed: () {
                                    setState(() {
                                      index = 0;
                                    });
                                  },
                                ),
                                SizedBox(
                                  width: 20,
                                ),
                                AutoSizeText('Form step',
                                    style: GoogleFonts.montserrat(
                                        fontSize: 20,
                                        color: Colors.black,
                                        fontWeight: FontWeight.w500,
                                        textStyle: TextStyle())),
                              ],
                            ),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          AddFood()
                        ],
                      ),
                    )
            ]),
      ),
    );
  }
}

class Starter extends StatefulWidget {
  @override
  _StarterState createState() => _StarterState();
}

class _StarterState extends State<Starter> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      color: Colors.white,
      child: Column(
        children: [
          Starterrow(size: size),
          SizedBox(
            height: 20,
          ),
          Starterrow(size: size),
          SizedBox(
            height: 20,
          ),
          Starterrow(size: size),
          SizedBox(
            height: 20,
          ),
          Starterrow(size: size),
        ],
      ),
    );
  }
}

class Starterrow extends StatelessWidget {
  const Starterrow({
    Key? key,
    required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          padding: EdgeInsets.only(top: 30),
          child: Text(
            '#1',
            style: GoogleFonts.montserrat(
                fontSize: 30,
                fontWeight: FontWeight.w600,
                color: Colors.black54),
          ),
        ),
        SizedBox(
          width: size.width / 50,
        ),
        ClipRRect(
          borderRadius: BorderRadius.circular(8),
          child: Image.network(
            'https://lh3.googleusercontent.com/fsYoIEccNZN9-XtB2FGM0tuou7HK1Eu_d3wpRYglUE4wEWxw6hRuG1vrL4i_6t85TyDrKAO7-Mfy5R1mq8XTOg=s1200-e365',
            fit: BoxFit.cover,
            height: 100,
            width: 90,
          ),
        ),
        SizedBox(
          width: size.width / 80,
        ),
        Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              AutoSizeText('Tuna soup spinach with himalaya salt',
                  style: GoogleFonts.montserrat(
                      fontSize: 18,
                      fontWeight: FontWeight.w400,
                      textStyle: TextStyle())),
              SizedBox(
                height: 15,
              ),
              AutoSizeText('MAIN COURSE',
                  style: GoogleFonts.montserrat(
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                      color: Color(0xffff5a1e),
                      textStyle: TextStyle())),
              SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  AutoSizeText('Serves for 4 person',
                      style: GoogleFonts.montserrat(
                          fontSize: 15,
                          fontWeight: FontWeight.w400,
                          color: Colors.black54,
                          textStyle: TextStyle())),
                  SizedBox(
                    width: size.width / 50,
                  ),
                  AutoSizeText('24 mins',
                      style: GoogleFonts.montserrat(
                          fontSize: 15,
                          fontWeight: FontWeight.w400,
                          color: Colors.black54,
                          textStyle: TextStyle())),
                ],
              ),
            ],
          ),
        ),
        SizedBox(
          width: size.width / 5,
        ),
        Container(
          padding: EdgeInsets.only(top: 20),
          child: Row(
            children: [
              AutoSizeText('Rs.524',
                  style: GoogleFonts.montserrat(
                      fontSize: 26,
                      fontWeight: FontWeight.w600,
                      textStyle: TextStyle())),
              SizedBox(
                height: size.width / 60,
              ),
              PopupMenuButton(
                  itemBuilder: (context) => [
                        PopupMenuItem(
                          child: Text('Edit'),
                          value: 1,
                        ),
                        PopupMenuItem(
                          child: Text('Delete'),
                          value: 2,
                        )
                      ])
            ],
          ),
        ),
      ],
    );
  }
}

class MainCourse extends StatefulWidget {
  @override
  _MainCourseState createState() => _MainCourseState();
}

class _MainCourseState extends State<MainCourse> {
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}

class Desserts extends StatefulWidget {
  @override
  _DessertsState createState() => _DessertsState();
}

class _DessertsState extends State<Desserts> {
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}

var dish = 0;

class AddFood extends StatefulWidget {
  @override
  _AddFoodState createState() => _AddFoodState();
}

class _AddFoodState extends State<AddFood> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
        color: Colors.white,
        child: Column(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                AutoSizeText('Name',
                    style: GoogleFonts.montserrat(
                        fontSize: size.width > 800 ? 20 : 15,
                        color: Colors.black54,
                        fontWeight: FontWeight.w300,
                        textStyle: TextStyle())),
                SizedBox(
                  height: 10,
                ),
                TextField(
                    decoration: InputDecoration(
                        enabledBorder: OutlineInputBorder(
                            borderSide:
                                BorderSide(color: Colors.black12, width: 0.3)),
                        focusedBorder: OutlineInputBorder(
                            borderSide:
                                BorderSide(color: Colors.black54, width: 1)))),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                AutoSizeText('Price',
                    style: GoogleFonts.montserrat(
                        fontSize: size.width > 800 ? 20 : 15,
                        color: Colors.black54,
                        fontWeight: FontWeight.w300,
                        textStyle: TextStyle())),
                SizedBox(
                  height: 10,
                ),
                TextField(
                    decoration: InputDecoration(
                        enabledBorder: OutlineInputBorder(
                            borderSide:
                                BorderSide(color: Colors.black12, width: 0.3)),
                        focusedBorder: OutlineInputBorder(
                            borderSide:
                                BorderSide(color: Colors.black54, width: 1)))),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                AutoSizeText('Description',
                    style: GoogleFonts.montserrat(
                        fontSize: size.width > 800 ? 20 : 15,
                        color: Colors.black54,
                        fontWeight: FontWeight.w300,
                        textStyle: TextStyle())),
                SizedBox(
                  height: 10,
                ),
                TextField(
                    decoration: InputDecoration(
                        enabledBorder: OutlineInputBorder(
                            borderSide:
                                BorderSide(color: Colors.black12, width: 0.3)),
                        focusedBorder: OutlineInputBorder(
                            borderSide:
                                BorderSide(color: Colors.black54, width: 1)))),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                AutoSizeText('Category',
                    style: GoogleFonts.montserrat(
                        fontSize: size.width > 800 ? 20 : 15,
                        color: Colors.black54,
                        fontWeight: FontWeight.w300,
                        textStyle: TextStyle())),
                SizedBox(
                  height: 10,
                ),
                TextField(
                    decoration: InputDecoration(
                        enabledBorder: OutlineInputBorder(
                            borderSide:
                                BorderSide(color: Colors.black12, width: 0.3)),
                        focusedBorder: OutlineInputBorder(
                            borderSide:
                                BorderSide(color: Colors.black54, width: 1)))),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                AutoSizeText('Subcategory',
                    style: GoogleFonts.montserrat(
                        fontSize: size.width > 800 ? 20 : 15,
                        color: Colors.black54,
                        fontWeight: FontWeight.w300,
                        textStyle: TextStyle())),
                SizedBox(
                  height: 10,
                ),
                TextField(
                    decoration: InputDecoration(
                        enabledBorder: OutlineInputBorder(
                            borderSide:
                                BorderSide(color: Colors.black12, width: 0.3)),
                        focusedBorder: OutlineInputBorder(
                            borderSide:
                                BorderSide(color: Colors.black54, width: 1)))),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                AutoSizeText('Ingredients of the food',
                    style: GoogleFonts.montserrat(
                        fontSize: size.width > 800 ? 20 : 15,
                        color: Colors.black54,
                        fontWeight: FontWeight.w300,
                        textStyle: TextStyle())),
                SizedBox(
                  height: 10,
                ),
                TextField(
                    decoration: InputDecoration(
                        enabledBorder: OutlineInputBorder(
                            borderSide:
                                BorderSide(color: Colors.black12, width: 0.3)),
                        focusedBorder: OutlineInputBorder(
                            borderSide:
                                BorderSide(color: Colors.black54, width: 1)))),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            size.width > 800
                ? Row(
                    children: [
                      AutoSizeText('Is Customisable',
                          style: GoogleFonts.montserrat(
                              fontSize: size.width > 800 ? 20 : 15,
                              color: Colors.black54,
                              fontWeight: FontWeight.w300,
                              textStyle: TextStyle())),
                      SizedBox(
                        width: size.width / 70,
                      ),
                      AutoSizeText('yes',
                          style: GoogleFonts.montserrat(
                              fontSize: size.width > 800 ? 20 : 15,
                              color: Colors.black54,
                              fontWeight: FontWeight.w300,
                              textStyle: TextStyle())),
                      SizedBox(
                        width: size.width / 70,
                      ),
                      Radio(
                          activeColor: Colors.black54,
                          value: 1,
                          groupValue: selectRadiovalue,
                          onChanged: (value) {
                            setState(() {
                              selectRadiovalue = value;
                            });
                          }),
                      SizedBox(
                        width: size.width / 70,
                      ),
                      AutoSizeText('No',
                          style: GoogleFonts.montserrat(
                              fontSize: size.width > 800 ? 20 : 15,
                              color: Colors.black54,
                              fontWeight: FontWeight.w300,
                              textStyle: TextStyle())),
                      SizedBox(
                        width: size.width / 70,
                      ),
                      Radio(
                          activeColor: Colors.black54,
                          value: 2,
                          groupValue: selectRadiovalue,
                          onChanged: (value) {
                            setState(() {
                              selectRadiovalue = value;
                            });
                          }),
                    ],
                  )
                : Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      AutoSizeText('Is Customisable',
                          style: GoogleFonts.montserrat(
                              fontSize: size.width > 800 ? 20 : 15,
                              color: Colors.black54,
                              fontWeight: FontWeight.w300,
                              textStyle: TextStyle())),
                      SizedBox(
                        height: 20,
                      ),
                      Row(
                        children: [
                          AutoSizeText('yes',
                              style: GoogleFonts.montserrat(
                                  fontSize: size.width > 800 ? 20 : 15,
                                  color: Colors.black54,
                                  fontWeight: FontWeight.w300,
                                  textStyle: TextStyle())),
                          SizedBox(
                            width: size.width / 70,
                          ),
                          Radio(
                              activeColor: Colors.black54,
                              value: 1,
                              groupValue: selectRadiovalue,
                              onChanged: (value) {
                                setState(() {
                                  selectRadiovalue = value;
                                });
                              }),
                          SizedBox(
                            width: size.width / 70,
                          ),
                          AutoSizeText('No',
                              style: GoogleFonts.montserrat(
                                  fontSize: size.width > 800 ? 20 : 15,
                                  color: Colors.black54,
                                  fontWeight: FontWeight.w300,
                                  textStyle: TextStyle())),
                          SizedBox(
                            width: size.width / 70,
                          ),
                          Radio(
                              activeColor: Colors.black54,
                              value: 2,
                              groupValue: selectRadiovalue,
                              onChanged: (value) {
                                setState(() {
                                  selectRadiovalue = value;
                                });
                              }),
                        ],
                      )
                    ],
                  ),
            SizedBox(
              height: 20,
            ),
            size.width > 800
                ? Row(
                    children: [
                      AutoSizeText('Is vegetarian ',
                          style: GoogleFonts.montserrat(
                              fontSize: size.width > 800 ? 20 : 15,
                              color: Colors.black54,
                              fontWeight: FontWeight.w300,
                              textStyle: TextStyle())),
                      SizedBox(
                        width: size.width / 80,
                      ),
                      AutoSizeText('Veg',
                          style: GoogleFonts.montserrat(
                              fontSize: size.width > 800 ? 20 : 15,
                              color: Colors.black54,
                              fontWeight: FontWeight.w300,
                              textStyle: TextStyle())),
                      SizedBox(
                        width: size.width / 80,
                      ),
                      Radio(
                          activeColor: Colors.black54,
                          value: 1,
                          groupValue: vegorNonveg,
                          onChanged: (value) {
                            setState(() {
                              vegorNonveg = value;
                            });
                          }),
                      SizedBox(
                        width: size.width / 80,
                      ),
                      AutoSizeText('Nonveg',
                          style: GoogleFonts.montserrat(
                              fontSize: size.width > 800 ? 20 : 15,
                              color: Colors.black54,
                              fontWeight: FontWeight.w300,
                              textStyle: TextStyle())),
                      SizedBox(
                        width: size.width / 80,
                      ),
                      Radio(
                          activeColor: Colors.black54,
                          value: 2,
                          groupValue: vegorNonveg,
                          onChanged: (value) {
                            setState(() {
                              vegorNonveg = value;
                            });
                          }),
                    ],
                  )
                : Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      AutoSizeText('Is vegetarian ',
                          style: GoogleFonts.montserrat(
                              fontSize: size.width > 800 ? 20 : 15,
                              color: Colors.black54,
                              fontWeight: FontWeight.w300,
                              textStyle: TextStyle())),
                      SizedBox(
                        height: 20,
                      ),
                      Row(
                        children: [
                          AutoSizeText('Veg',
                              style: GoogleFonts.montserrat(
                                  fontSize: size.width > 800 ? 20 : 15,
                                  color: Colors.black54,
                                  fontWeight: FontWeight.w300,
                                  textStyle: TextStyle())),
                          SizedBox(
                            width: size.width / 80,
                          ),
                          Radio(
                              activeColor: Colors.black54,
                              value: 1,
                              groupValue: vegorNonveg,
                              onChanged: (value) {
                                setState(() {
                                  vegorNonveg = value;
                                });
                              }),
                          SizedBox(
                            width: size.width / 80,
                          ),
                          AutoSizeText('Nonveg',
                              style: GoogleFonts.montserrat(
                                  fontSize: size.width > 800 ? 20 : 15,
                                  color: Colors.black54,
                                  fontWeight: FontWeight.w300,
                                  textStyle: TextStyle())),
                          SizedBox(
                            width: size.width / 80,
                          ),
                          Radio(
                              activeColor: Colors.black54,
                              value: 2,
                              groupValue: vegorNonveg,
                              onChanged: (value) {
                                setState(() {
                                  vegorNonveg = value;
                                });
                              }),
                        ],
                      )
                    ],
                  ),
            SizedBox(
              height: 20,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                AutoSizeText('Calories',
                    style: GoogleFonts.montserrat(
                        fontSize: size.width > 800 ? 20 : 15,
                        color: Colors.black54,
                        fontWeight: FontWeight.w300,
                        textStyle: TextStyle())),
                SizedBox(
                  height: 10,
                ),
                TextField(
                    decoration: InputDecoration(
                        enabledBorder: OutlineInputBorder(
                            borderSide:
                                BorderSide(color: Colors.black12, width: 0.3)),
                        focusedBorder: OutlineInputBorder(
                            borderSide:
                                BorderSide(color: Colors.black54, width: 1)))),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                AutoSizeText('Spice level',
                    style: GoogleFonts.montserrat(
                        fontSize: size.width > 800 ? 20 : 15,
                        color: Colors.black,
                        fontWeight: FontWeight.w300,
                        textStyle: TextStyle())),
                SizedBox(
                  height: 20,
                ),
                Row(
                  children: [
                    Radio(
                        activeColor: Colors.black54,
                        value: 1,
                        groupValue: spicelevel,
                        onChanged: (value) {
                          setState(() {
                            spicelevel = value;
                          });
                        }),
                    SizedBox(
                      width: size.width / 50,
                    ),
                    Radio(
                        activeColor: Colors.black54,
                        value: 2,
                        groupValue: spicelevel,
                        onChanged: (value) {
                          setState(() {
                            spicelevel = value;
                          });
                        }),
                    SizedBox(
                      width: size.width / 50,
                    ),
                    Radio(
                        activeColor: Colors.black54,
                        value: 3,
                        groupValue: spicelevel,
                        onChanged: (value) {
                          setState(() {
                            spicelevel = value;
                          });
                        }),
                    SizedBox(
                      width: size.width / 50,
                    ),
                    Radio(
                        activeColor: Colors.black54,
                        value: 4,
                        groupValue: spicelevel,
                        onChanged: (value) {
                          setState(() {
                            spicelevel = value;
                          });
                        }),
                    SizedBox(
                      width: size.width / 50,
                    ),
                    Radio(
                        activeColor: Colors.black54,
                        value: 5,
                        groupValue: spicelevel,
                        onChanged: (value) {
                          setState(() {
                            spicelevel = value;
                          });
                        }),
                  ],
                )
              ],
            ),
            SizedBox(
              height: 20,
            ),
            HoverContainer(
              height: 50,
              width: size.width / 4,
              hoverHeight: 50,
              hoverWidth: size.width / 4,
              decoration: BoxDecoration(
                  color: Colors.green.shade600,
                  borderRadius: BorderRadius.circular(5)),
              hoverDecoration: BoxDecoration(
                  color: Colors.green.shade900,
                  borderRadius: BorderRadius.circular(5)),
              child: Center(
                  child: Text('Submit',
                      style: GoogleFonts.montserrat(
                          fontSize: size.width > 800 ? 20 : 15,
                          fontWeight: FontWeight.w500,
                          color: Colors.white))),
            ),
          ],
        ));
  }
}

dynamic selectRadiovalue = 0;
dynamic vegorNonveg = 0;
dynamic spicelevel = 0;

class TabMenu extends StatefulWidget {
  @override
  _TabMenuState createState() => _TabMenuState();
}

class _TabMenuState extends State<TabMenu> {
  List<Widget> list = [TabStarter(), MainCourse(), Desserts()];
  var index = 0;
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
        color: Colors.grey.shade100,
        child: ListView(
            padding: EdgeInsets.all(size.width > 800 ? 10 : 2),
            children: [
              index == 0
                  ? Container(
                      padding: EdgeInsets.only(
                          left: size.width > 800 ? 10 : 2,
                          right: size.width > 800 ? 10 : 2,
                          top: 10),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.white,
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            height: 100,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    AutoSizeText('Menu',
                                        style: GoogleFonts.montserrat(
                                            fontSize: 26,
                                            fontWeight: FontWeight.w500,
                                            textStyle: TextStyle())),
                                    SizedBox(
                                      height: 15,
                                    ),
                                    Container(
                                      padding: EdgeInsets.all(5),
                                      height: 50,
                                      width: size.width / 3,
                                      decoration: BoxDecoration(
                                          color: Colors.grey.shade200,
                                          borderRadius:
                                              BorderRadius.circular(8)),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceEvenly,
                                        children: [
                                          GestureDetector(
                                            onTap: () {
                                              setState(() {
                                                dish = 0;
                                              });
                                            },
                                            child: Container(
                                              decoration: BoxDecoration(
                                                  color: dish == 0
                                                      ? Colors.white
                                                      : Colors.grey.shade100,
                                                  borderRadius:
                                                      BorderRadius.circular(8)),
                                              height: 40,
                                              width: size.width / 10,
                                              child: Center(
                                                child: Text(
                                                  'Starters',
                                                  style: TextStyle(
                                                      color: dish == 0
                                                          ? Colors.black
                                                          : Colors.black54),
                                                ),
                                              ),
                                            ),
                                          ),
                                          GestureDetector(
                                            onTap: () {
                                              setState(() {
                                                dish = 1;
                                              });
                                            },
                                            child: Container(
                                              decoration: BoxDecoration(
                                                  color: dish == 1
                                                      ? Colors.white
                                                      : Colors.grey.shade100,
                                                  borderRadius:
                                                      BorderRadius.circular(8)),
                                              height: 40,
                                              width: size.width / 10,
                                              child: Center(
                                                child: Text(
                                                  'Main course',
                                                  style: TextStyle(
                                                      color: dish == 1
                                                          ? Colors.black
                                                          : Colors.black54),
                                                ),
                                              ),
                                            ),
                                          ),
                                          GestureDetector(
                                            onTap: () {
                                              setState(() {
                                                dish = 2;
                                              });
                                            },
                                            child: Container(
                                              decoration: BoxDecoration(
                                                  color: dish == 2
                                                      ? Colors.white
                                                      : Colors.grey.shade100,
                                                  borderRadius:
                                                      BorderRadius.circular(8)),
                                              height: 40,
                                              width: size.width / 10,
                                              child: Center(
                                                child: Text(
                                                  'desserts',
                                                  style: TextStyle(
                                                      color: dish == 2
                                                          ? Colors.black
                                                          : Colors.black54),
                                                ),
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                                HoverWidget(
                                  child: GestureDetector(
                                    onTap: () {
                                      setState(() {
                                        index = 1;
                                      });
                                    },
                                    child: Row(
                                      children: [
                                        Icon(
                                          Icons.add_to_photos_rounded,
                                          color: Colors.black54,
                                        ),
                                        AutoSizeText('Add food',
                                            style: GoogleFonts.montserrat(
                                                fontSize: 20,
                                                color: Colors.black54,
                                                fontWeight: FontWeight.w500,
                                                textStyle: TextStyle())),
                                      ],
                                    ),
                                  ),
                                  hoverChild: GestureDetector(
                                    onTap: () {
                                      setState(() {
                                        index = 1;
                                      });
                                    },
                                    child: Row(
                                      children: [
                                        Icon(
                                          Icons.add_to_photos_rounded,
                                          color: Colors.indigo,
                                        ),
                                        AutoSizeText('Add foods',
                                            style: GoogleFonts.montserrat(
                                                fontSize: 20,
                                                color: Colors.indigo,
                                                fontWeight: FontWeight.w500,
                                                textStyle: TextStyle())),
                                      ],
                                    ),
                                  ),
                                  onHover: (event) {},
                                )
                              ],
                            ),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          list[dish]
                        ],
                      ),
                    )
                  : Container(
                      padding: EdgeInsets.only(left: 20, right: 20, top: 10),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.white,
                      ),
                      child: Column(
                        children: [
                          Container(
                            height: 60,
                            child: Row(
                              children: [
                                IconButton(
                                  icon: Icon(Icons.arrow_back),
                                  onPressed: () {
                                    setState(() {
                                      index = 0;
                                    });
                                  },
                                ),
                                SizedBox(
                                  width: 20,
                                ),
                                AutoSizeText('Form step',
                                    style: GoogleFonts.montserrat(
                                        fontSize: 20,
                                        color: Colors.black,
                                        fontWeight: FontWeight.w500,
                                        textStyle: TextStyle())),
                              ],
                            ),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          AddFood()
                        ],
                      ),
                    )
            ]),
      ),
    );
  }
}

class TabStarter extends StatefulWidget {
  @override
  _TabStarterState createState() => _TabStarterState();
}

class _TabStarterState extends State<TabStarter> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      color: Colors.white,
      child: Column(
        children: [
          TabStarterRow(size: size),
          SizedBox(
            height: 20,
          ),
          TabStarterRow(size: size),
          SizedBox(
            height: 20,
          ),
          TabStarterRow(size: size),
          SizedBox(
            height: 20,
          ),
          TabStarterRow(size: size),
        ],
      ),
    );
  }
}

class TabStarterRow extends StatelessWidget {
  const TabStarterRow({
    Key? key,
    required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          padding: EdgeInsets.only(top: 30),
          child: Text(
            '#1',
            style: GoogleFonts.montserrat(
                fontSize: 20,
                fontWeight: FontWeight.w600,
                color: Colors.black54),
          ),
        ),
        SizedBox(
          width: size.width / 70,
        ),
        ClipRRect(
          borderRadius: BorderRadius.circular(8),
          child: Image.network(
            'https://lh3.googleusercontent.com/fsYoIEccNZN9-XtB2FGM0tuou7HK1Eu_d3wpRYglUE4wEWxw6hRuG1vrL4i_6t85TyDrKAO7-Mfy5R1mq8XTOg=s1200-e365',
            fit: BoxFit.cover,
            height: 90,
            width: 80,
          ),
        ),
        SizedBox(
          width: size.width / 80,
        ),
        Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              AutoSizeText('Tuna soup spinach with himalaya salt',
                  style: GoogleFonts.montserrat(
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                      textStyle: TextStyle())),
              SizedBox(
                height: 15,
              ),
              AutoSizeText('MAIN COURSE',
                  style: GoogleFonts.montserrat(
                      fontSize: 13,
                      fontWeight: FontWeight.w400,
                      color: Color(0xffff5a1e),
                      textStyle: TextStyle())),
              SizedBox(
                height: 15,
              ),
              Row(
                children: [
                  AutoSizeText('Serves for 4 person',
                      style: GoogleFonts.montserrat(
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                          color: Colors.black54,
                          textStyle: TextStyle())),
                  SizedBox(
                    width: size.width / 60,
                  ),
                  AutoSizeText('24 mins',
                      style: GoogleFonts.montserrat(
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                          color: Colors.black54,
                          textStyle: TextStyle())),
                ],
              ),
            ],
          ),
        ),
        SizedBox(
          width: size.width / 10,
        ),
        Container(
          padding: EdgeInsets.only(top: 20),
          child: Row(
            children: [
              AutoSizeText('Rs.524',
                  style: GoogleFonts.montserrat(
                      fontSize: 20,
                      fontWeight: FontWeight.w600,
                      textStyle: TextStyle())),
              SizedBox(
                height: size.width / 60,
              ),
              PopupMenuButton(
                  itemBuilder: (context) => [
                        PopupMenuItem(
                          child: Text('Edit'),
                          value: 1,
                        ),
                        PopupMenuItem(
                          child: Text('Delete'),
                          value: 2,
                        )
                      ])
            ],
          ),
        ),
      ],
    );
  }
}

class MobileMenu extends StatefulWidget {
  @override
  _MobileMenuState createState() => _MobileMenuState();
}

class _MobileMenuState extends State<MobileMenu> {
  List<Widget> list = [MobileStarter(), MainCourse(), Desserts()];
  var index = 0;
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
        color: Colors.grey.shade100,
        child: ListView(
            padding: EdgeInsets.all(size.width > 800 ? 10 : 2),
            children: [
              index == 0
                  ? Container(
                      padding: EdgeInsets.only(
                          left: size.width > 800 ? 10 : 2,
                          right: size.width > 800 ? 10 : 2,
                          top: 10),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.white,
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            height: 150,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    AutoSizeText('Menu',
                                        style: GoogleFonts.montserrat(
                                            fontSize: 24,
                                            fontWeight: FontWeight.w500,
                                            textStyle: TextStyle())),
                                    SizedBox(
                                      height: 15,
                                    ),
                                    Container(
                                      padding: EdgeInsets.all(5),
                                      height: 50,
                                      width: size.width / 1,
                                      decoration: BoxDecoration(
                                          color: Colors.grey.shade200,
                                          borderRadius:
                                              BorderRadius.circular(8)),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceAround,
                                        children: [
                                          GestureDetector(
                                            onTap: () {
                                              setState(() {
                                                dish = 0;
                                              });
                                            },
                                            child: Container(
                                              decoration: BoxDecoration(
                                                  color: dish == 0
                                                      ? Colors.white
                                                      : Colors.grey.shade100,
                                                  borderRadius:
                                                      BorderRadius.circular(8)),
                                              height: 40,
                                              width: size.width / 5,
                                              child: Center(
                                                child: Text(
                                                  'Starters',
                                                  style: TextStyle(
                                                      color: dish == 0
                                                          ? Colors.black
                                                          : Colors.black54),
                                                ),
                                              ),
                                            ),
                                          ),
                                          GestureDetector(
                                            onTap: () {
                                              setState(() {
                                                dish = 1;
                                              });
                                            },
                                            child: Container(
                                              decoration: BoxDecoration(
                                                  color: dish == 1
                                                      ? Colors.white
                                                      : Colors.grey.shade100,
                                                  borderRadius:
                                                      BorderRadius.circular(8)),
                                              height: 40,
                                              width: size.width / 4,
                                              child: Center(
                                                child: Text(
                                                  'Main course',
                                                  style: TextStyle(
                                                      color: dish == 1
                                                          ? Colors.black
                                                          : Colors.black54),
                                                ),
                                              ),
                                            ),
                                          ),
                                          GestureDetector(
                                            onTap: () {
                                              setState(() {
                                                dish = 2;
                                              });
                                            },
                                            child: Container(
                                              decoration: BoxDecoration(
                                                  color: dish == 2
                                                      ? Colors.white
                                                      : Colors.grey.shade100,
                                                  borderRadius:
                                                      BorderRadius.circular(8)),
                                              height: 40,
                                              width: size.width / 5,
                                              child: Center(
                                                child: Text(
                                                  'desserts',
                                                  style: TextStyle(
                                                      color: dish == 2
                                                          ? Colors.black
                                                          : Colors.black54),
                                                ),
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                                HoverWidget(
                                  child: GestureDetector(
                                    onTap: () {
                                      setState(() {
                                        index = 1;
                                      });
                                    },
                                    child: Row(
                                      children: [
                                        Icon(
                                          Icons.add_to_photos_rounded,
                                          color: Colors.black54,
                                        ),
                                        AutoSizeText('Add food',
                                            style: GoogleFonts.montserrat(
                                                fontSize: 16,
                                                color: Colors.black54,
                                                fontWeight: FontWeight.w500,
                                                textStyle: TextStyle())),
                                      ],
                                    ),
                                  ),
                                  hoverChild: GestureDetector(
                                    onTap: () {
                                      setState(() {
                                        index = 1;
                                      });
                                    },
                                    child: Row(
                                      children: [
                                        Icon(
                                          Icons.add_to_photos_rounded,
                                          color: Colors.indigo,
                                        ),
                                        AutoSizeText('Add foods',
                                            style: GoogleFonts.montserrat(
                                                fontSize: 20,
                                                color: Colors.indigo,
                                                fontWeight: FontWeight.w500,
                                                textStyle: TextStyle())),
                                      ],
                                    ),
                                  ),
                                  onHover: (event) {},
                                )
                              ],
                            ),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          list[dish]
                        ],
                      ),
                    )
                  : Container(
                      padding: EdgeInsets.only(left: 20, right: 20, top: 10),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.white,
                      ),
                      child: Column(
                        children: [
                          Container(
                            height: 60,
                            child: Row(
                              children: [
                                IconButton(
                                  icon: Icon(Icons.arrow_back),
                                  onPressed: () {
                                    setState(() {
                                      index = 0;
                                    });
                                  },
                                ),
                                SizedBox(
                                  width: 20,
                                ),
                                AutoSizeText('Form step',
                                    style: GoogleFonts.montserrat(
                                        fontSize: 20,
                                        color: Colors.black,
                                        fontWeight: FontWeight.w500,
                                        textStyle: TextStyle())),
                              ],
                            ),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          AddFood()
                        ],
                      ),
                    )
            ]),
      ),
    );
  }
}

class MobileStarter extends StatefulWidget {
  @override
  _MobileStarterState createState() => _MobileStarterState();
}

class _MobileStarterState extends State<MobileStarter> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      color: Colors.white,
      child: Column(
        children: [
          MobileStarterRow(size: size),
          SizedBox(
            height: 20,
          ),
          MobileStarterRow(size: size),
          SizedBox(
            height: 20,
          ),
          MobileStarterRow(size: size),
          SizedBox(
            height: 20,
          ),
          MobileStarterRow(size: size)
        ],
      ),
    );
  }
}

class MobileStarterRow extends StatelessWidget {
  const MobileStarterRow({
    Key? key,
    required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          padding: EdgeInsets.only(top: 15),
          child: Text(
            '#1',
            style: GoogleFonts.montserrat(
                fontSize: 12,
                fontWeight: FontWeight.w600,
                color: Colors.black54),
          ),
        ),
        SizedBox(
          width: size.width / 70,
        ),
        ClipRRect(
          borderRadius: BorderRadius.circular(8),
          child: Image.network(
            'https://lh3.googleusercontent.com/fsYoIEccNZN9-XtB2FGM0tuou7HK1Eu_d3wpRYglUE4wEWxw6hRuG1vrL4i_6t85TyDrKAO7-Mfy5R1mq8XTOg=s1200-e365',
            fit: BoxFit.cover,
            height: 60,
            width: size.width / 8,
          ),
        ),
        SizedBox(
          width: size.width / 80,
        ),
        Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                width: size.width > 350 ? size.width / 3 : size.width / 2,
                child: AutoSizeText(
                  'Tuna soup spinach with himalaya salt',
                  style: GoogleFonts.montserrat(
                      fontSize: 12,
                      fontWeight: FontWeight.w400,
                      textStyle: TextStyle()),
                  maxLines: 3,
                ),
              ),
              SizedBox(
                height: 5,
              ),
              AutoSizeText('MAIN COURSE',
                  style: GoogleFonts.montserrat(
                      fontSize: 12,
                      fontWeight: FontWeight.w400,
                      color: Color(0xffff5a1e),
                      textStyle: TextStyle())),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  AutoSizeText('Serves for 4 person',
                      style: GoogleFonts.montserrat(
                          fontSize: 12,
                          fontWeight: FontWeight.w400,
                          color: Colors.black54,
                          textStyle: TextStyle())),
                  SizedBox(),
                  AutoSizeText('24 mins',
                      style: GoogleFonts.montserrat(
                          fontSize: 12,
                          fontWeight: FontWeight.w400,
                          color: Colors.black54,
                          textStyle: TextStyle())),
                ],
              ),
            ],
          ),
        ),
        SizedBox(
          width: size.width > 360 ? size.width / 10 : size.width / 150,
        ),
        Container(
          padding: EdgeInsets.only(top: 10),
          child: Row(
            children: [
              AutoSizeText('R.524',
                  style: GoogleFonts.montserrat(
                      fontSize: 12,
                      fontWeight: FontWeight.w600,
                      textStyle: TextStyle())),
              PopupMenuButton(
                  iconSize: 12,
                  itemBuilder: (context) => [
                        PopupMenuItem(
                          child: Text('Edit'),
                          value: 1,
                        ),
                        PopupMenuItem(
                          child: Text('Delete'),
                          value: 2,
                        )
                      ])
            ],
          ),
        ),
      ],
    );
  }
}
