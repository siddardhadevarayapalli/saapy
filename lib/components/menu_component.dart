// ignore_for_file: non_constant_identifier_names, camel_case_types

import '../../utils/export_file.dart';

class Menu_Component extends StatefulWidget {
  const Menu_Component({super.key});

  @override
  State<Menu_Component> createState() => _MenuComponentState();
}

class _MenuComponentState extends State<Menu_Component> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          menu_Profile(),
          My_wallet(),
          PayMoney(),
          menu_list(),
          SizedBox(
            height: 20.h,
          ),
        ],
      ),
    );
  }

  Widget menu_Profile() {
    return Container(
      margin: const EdgeInsets.only(top: 10),
      child: Row(children: [
        Container(
            height: 100,
            width: 100,
            decoration: const BoxDecoration(shape: BoxShape.circle),

            // radius: 48, // Image radius
            child: ClipRRect(
              borderRadius: BorderRadius.circular(70),
              child: Image.asset(
                "assets/images/man1.png",
              ),
            )),
        const SizedBox(width: 10),
        Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Vishnu",
              style: GoogleFonts.inter(
                  fontSize: kFourteenFont,
                  color: darkGrey,
                  fontWeight: FontWeight.w600),
            ),
            Row(
              children: [
                Text(
                  "UPI ID - rickey786@icici.in",
                  style: GoogleFonts.inter(
                      fontSize: kTenFont,
                      color: lightgrey,
                      fontWeight: FontWeight.w600),
                ),
                SizedBox(width: 10.w),
                Icon(Icons.copy,
                    color: const Color.fromARGB(255, 147, 155, 147),
                    size: 15.w),
              ],
            ),
            Text(
              "My QR Code",
              style: GoogleFonts.inter(
                  fontSize: kTenFont,
                  color: lightgrey,
                  fontWeight: FontWeight.w500),
            ),
          ],
        )
      ]),
    );
  }

  Widget My_wallet() {
    return Container(
      padding: EdgeInsets.all(10.r),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "MY Wallet",
            style: GoogleFonts.inter(
                fontSize: kFourteenFont,
                color: lightgrey,
                fontWeight: FontWeight.w500),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Text('\u{20B9}',
                      style: GoogleFonts.inter(
                          fontSize: kEighteenFont,
                          color: darkGrey,
                          fontWeight: FontWeight.w700)),
                  Text('15,065',
                      style: GoogleFonts.inter(
                          fontSize: kEighteenFont,
                          color: darkGrey,
                          fontWeight: FontWeight.w700)),
                ],
              ),
              SizedBox(
                height: 35.h,
                child: ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    elevation: 0,
                    backgroundColor: purple,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    padding:
                        const EdgeInsets.symmetric(horizontal: 15, vertical: 0),
                    // textStyle: const TextStyle(
                    //     fontSize: 15,
                    //     fontWeight: FontWeight.w500)
                  ),
                  child: Row(
                    children: [
                      Text(
                        'Add Money',
                        style: GoogleFonts.inter(
                            fontSize: kTwelveFont,
                            color: white,
                            fontWeight: FontWeight.w500),
                      ),
                      const Icon(Icons.add),
                    ],
                  ),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }

  Widget PayMoney() {
    return Column(
      children: [
        Container(
          alignment: Alignment.topLeft,
          padding: EdgeInsets.only(left: 10.r),
          child: Text(
            "Pay Money",
            style: GoogleFonts.inter(
                fontSize: kFourteenFont,
                color: darkGrey,
                fontWeight: FontWeight.w600),
          ),
        ),
        Container(
            padding: EdgeInsets.all(10.r),
            // color: darkblue,
            height: 80.h,
            child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: 5,
                itemBuilder: ((context, index) {
                  return Card(
                    elevation: 2,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15)),
                    child: Container(
                      padding: const EdgeInsets.only(left: 5, right: 5),
                      width: 250.w,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15)),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Image.asset(
                            "assets/images/Phone.png",
                            width: 47.w,
                          ),
                          SizedBox(width: 6.w),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Abhinaav",
                                style: GoogleFonts.inter(
                                    fontSize: 13.sp,
                                    color: darkGrey,
                                    fontWeight: FontWeight.w500),
                              ),
                              Text(
                                "\u{20B9}${1202}",
                                style: GoogleFonts.inter(
                                    fontSize: kTwelveFont,
                                    color: darkGrey,
                                    fontWeight: FontWeight.w500),
                              ),
                            ],
                          ),
                          SizedBox(width: 10.w),
                          SizedBox(
                            height: 28.h,
                            child: ElevatedButton(
                              onPressed: () {},
                              style: ElevatedButton.styleFrom(
                                elevation: 0,
                                backgroundColor: Colors.blue,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 15, vertical: 0),
                                // textStyle: const TextStyle(
                                //     fontSize: 15,
                                //     fontWeight: FontWeight.w500)
                              ),
                              child: Text(
                                'Pay Now',
                                style: GoogleFonts.inter(
                                    fontSize: kTwelveFont,
                                    color: white,
                                    fontWeight: FontWeight.w500),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  );
                }))),
      ],
    );
  }

  Widget menu_list() {
    List categories = [
      {
        "name": "Edit profile",
        "image": "assets/images/edit.png",
        "route": KProfile
      },
      {
        "name": "Privacy & Security",
        "image": "assets/images/lock.png",
        "route": KProfile
      },
      {
        "name": "Offers & Rewards",
        "image": "assets/images/offers.png",
        "route": KScratch
      },
      {"name": "KYC", "image": "assets/images/kyc.png", "route": KKyc},
      {"name": "Help", "image": "assets/images/help.png", "route": KSupport},
      {
        "name": "Refund Policy",
        "image": "assets/images/policy.png",
        "route": KQrcode
      },
      {
        "name": "Terms & Conditions",
        "image": "assets/images/terms.png",
        "route": KQrcode
      },
      {
        "name": "Setting",
        "image": "assets/images/setting.png",
        "route": KQrcode
      },
      {
        "name": "Contact Us",
        "image": "assets/images/contact1.png",
        "route": KQrcode
      },
      {"name": "About US", "image": "assets/images/info.png", "route": KQrcode},
      {"name": "Logout", "image": "assets/images/logout.png", "route": KQrcode},
    ];
    return Column(
      children: [
        for (int i = 0; i < categories.length; i++)
          GestureDetector(
            onTap: () {
              Get.toNamed(categories[i]["route"]);
            },
            child: ListTile(
              title: Text(categories[i]["name"],
                  textAlign: TextAlign.left,
                  maxLines: 2,
                  style: GoogleFonts.inter(
                      fontSize: kTwelveFont,
                      color: darkGrey,
                      fontWeight: FontWeight.w500)),
              leading: Image.asset(
                categories[i]["image"],
                width: 25.w,
              ),
            ),
          ),
      ],
    );
  }
}
