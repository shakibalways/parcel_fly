import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:parcel_fly_ui/global_wieght/custom_container.dart';
import 'package:parcel_fly_ui/model/list_model.dart';
import 'package:parcel_fly_ui/utilits/constant/color_list.dart';
import 'package:parcel_fly_ui/utilits/constant/image_list.dart';
import 'package:parcel_fly_ui/utilits/constant/text_list.dart';

class DasboardPage extends StatefulWidget {
  const DasboardPage({super.key});

  @override
  State<DasboardPage> createState() => _DasboardPageState();
}

class _DasboardPageState extends State<DasboardPage> {
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;

    return Scaffold(
        body: Column(
          children: [
            Stack(
              clipBehavior: Clip.none,
              children: [
                Container(
                  height: height * 0.22,
                  color: const Color(0xff191D2C),
                  child: const Padding(
                    padding: EdgeInsets.only(bottom: 60),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            CircleAvatar(
                              radius: 30,
                            ),
                            SizedBox(
                              width: 20,
                            ),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "MD SHAKIB",
                                  style: TextStyle(
                                      color: Color(0xff21C781), fontSize: 18),
                                ),
                                Text(
                                  "Delivery Man",
                                  style: TextStyle(color: Color(0xffFFFFFF)),
                                )
                              ],
                            ),
                          ],
                        ),
                        Icon(
                          Icons.notification_important_outlined,
                          color: Color(0xffF89E02),
                        )
                      ],
                    ),
                  ),
                ),
                Positioned(
                  top: 120,
                  left: 25,
                  child: Container(
                    height: 190,
                    width: 400,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10),
                        boxShadow: [
                          BoxShadow(
                              color: Colors.grey.withOpacity(0.5),
                              offset: const Offset(0, 3),
                              blurRadius: 2,
                              spreadRadius: 2)
                        ]),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        const Text(
                          "Total Earning",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 18),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Column(
                              children: [
                                Image.asset('assets/images/dollor.png'),
                                const Text("Earning"),
                                const Text(
                                  "\$625.48",
                                  style: TextStyle(color: Color(0xff01888A)),
                                )
                              ],
                            ),
                            Column(
                              children: [
                                Image.asset('assets/images/percentage.png'),
                                const Text("Collection"),
                                const Text(
                                  "\$6225.48",
                                  style: TextStyle(color: Color(0xff01888A)),
                                )
                              ],
                            ),
                            Column(
                              children: [
                                Image.asset('assets/images/wallet.png'),
                                const Text("Balance"),
                                const Text(
                                  "\$1254.89",
                                  style: TextStyle(color: Color(0xff01888A)),
                                )
                              ],
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 110,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  "Overview",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
                Container(
                  decoration: BoxDecoration(
                      border: Border.all(color: Colors.black, width: 0.1)),
                  child: const Row(
                    children: [
                      Text("Month"),
                      Icon(Icons.arrow_drop_down_outlined),
                    ],
                  ),
                )
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    CustomContainer(
                        image: RImages.pending,
                        images: RImages.line,
                        text: RTexts.parcel0,
                        texts: RTexts.parcel4,
                        color: Color(int.parse(RColors.colors))),
                    const SizedBox(
                      width: 10,
                    ),
                    CustomContainer(
                        image: RImages.delivered,
                        images: RImages.line1,
                        text: RTexts.parcel1,
                        texts: RTexts.parcel5,
                        color: Color(int.parse(RColors.colors1)))
                  ],
                ),
                const SizedBox(
                  height: 15,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    CustomContainer(
                        image: RImages.partial,
                        images: RImages.line2,
                        text: RTexts.parcel2,
                        texts: RTexts.parcel6,
                        color: Color(int.parse(RColors.colors2))),
                    const SizedBox(
                      width: 10,
                    ),
                    CustomContainer(
                        image: RImages.returns,
                        images: RImages.line3,
                        text: RTexts.parcel3,
                        texts: RTexts.parcel7,
                        color: Color(int.parse(RColors.colors3)))
                  ],
                )
              ],
            ),
            const SizedBox(
              height: 15,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text("Pending Parcels"),
                Container(
                  width: 70,
                  height: 25,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(color: Colors.black, width: 0.1)),
                  child: const Text("View All"),
                )
              ],
            ),
            const SizedBox(
              height: 15,
            ),
            Container(
                height: 90,
                width: 420,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                          offset: const Offset(0, 2),
                          color: Colors.grey.withOpacity(0.2),
                          blurRadius: 1,
                          spreadRadius: 2)
                    ]),
                child: Row(
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset("assets/vector/containerimage.png"),
                      ],
                    ),
                    const SizedBox(
                      width: 20,
                    ),
                    const Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Exclusive Cotton Fiber Head Pillow",
                          style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.bold),
                        ),
                        Text(
                          "Size: 34”, Weight: 2.5K",
                          style: TextStyle(color: Color(0xff6A7189)),
                        ),
                        Text("\$1254.89",
                            style: TextStyle(color: Color(0xff6A7189)))
                      ],
                    )
                  ],
                )),
            const SizedBox(
              height: 10,
            ),
            Container(
              height: 90,
              width: 420,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                        offset: const Offset(0, 2),
                        color: Colors.grey.withOpacity(0.2),
                        blurRadius: 1,
                        spreadRadius: 2)
                  ]),
              child: Row(
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 10),
                        child: Image.asset("assets/vector/head.png"),
                      ),
                    ],
                  ),
                  const SizedBox(
                    width: 20,
                  ),
                  const Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Exclusive Cotton Fiber Head Pillow",
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.bold),
                      ),
                      Text(
                        "Size: 34”, Weight: 2.5K",
                        style: TextStyle(color: Color(0xff6A7189)),
                      ),
                      Text("\$1254.89",
                          style: TextStyle(color: Color(0xff6A7189)))
                    ],
                  )
                ],
              ),
            ),
          ],
        ),
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: _selectedIndex,
          onTap: _onItemTapped,

          type: BottomNavigationBarType.fixed,
          showUnselectedLabels: true,
          items: [
            BottomNavigationBarItem(
                icon: Image.asset("assets/bottom_navigator/category.png"),
                label: "Dashboard",
                backgroundColor: Colors.white),
            BottomNavigationBarItem(
                icon: Image.asset("assets/bottom_navigator/dollar.png"),
                label: "Payment",
                backgroundColor: Colors.white),
            BottomNavigationBarItem(
                icon: Image.asset("assets/bottom_navigator/mouse.png"),
                label: "Parcel",
              ),
            BottomNavigationBarItem(
                icon: Image.asset("assets/bottom_navigator/user.png"),
                label: "Profile",
                backgroundColor: Colors.white),
          ],
        ));
  }
}
