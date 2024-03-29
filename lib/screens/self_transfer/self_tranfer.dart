// ignore_for_file: camel_case_types, non_constant_identifier_names

import '../../utils/export_file.dart';

class Self_tranfer extends StatefulWidget {
  const Self_tranfer({super.key});

  @override
  State<Self_tranfer> createState() => _SelftranferState();
}

class _SelftranferState extends State<Self_tranfer> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: white,
      appBar: AppBar(
        elevation: 2,
        shadowColor: white,
        backgroundColor: white,
        titleSpacing: 60.w,
        title: Text(
          "Self Transfer",
          style: GoogleFonts.inter(
            letterSpacing: 1,
            fontSize: kEighteenFont,
            fontWeight: kFW600,
            color: darkGrey,
          ),
        ),
        leading: Align(
            alignment: Alignment.centerLeft,
            child: GestureDetector(
                onTap: () {
                  Get.back();
                },
                child: Container(
                    margin: const EdgeInsets.only(left: 10),
                    child: const Icon(
                      Icons.arrow_back_ios_new,
                      color: darkGrey,
                    )))),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: 10.h,
          ),
          Container(
              margin: const EdgeInsets.only(left: 15, top: 20),
              child: Text(
                "Select bank account to transfer from",
                style: GoogleFonts.inter(
                    fontSize: kTwelveFont, fontWeight: kFW400, color: darkGrey),
              )),
          SizedBox(
            height: 5.h,
          ),
          transfer_fromback(),
          Container(
              margin: const EdgeInsets.only(left: 15, top: 20),
              child: Text(
                "Select bank account to transfer Recivce",
                style: GoogleFonts.inter(
                  fontSize: kTwelveFont,
                  fontWeight: kFW400,
                ),
              )),
          SizedBox(
            height: 5.h,
          ),
          transfer_TOback(),
          Container(
              margin: const EdgeInsets.only(left: 15, top: 20),
              child: Text(
                "Add Bank Account +",
                style: GoogleFonts.inter(
                  fontSize: kFourteenFont,
                  fontWeight: kFW500,
                ),
              )),
          SizedBox(height: 250.h),
          Procees_button(),
        ],
      ),
    );
  }

  Widget transfer_fromback() {
    return Container(
      margin: const EdgeInsets.only(left: 10, top: 0, right: 10),
      child: Card(
        elevation: 0,
        child: Row(
          children: <Widget>[
            Align(
              alignment: Alignment.centerLeft,
              child: SizedBox(
                child: Container(
                  decoration: const BoxDecoration(
                    color: darkGrey,
                    borderRadius: BorderRadius.all(Radius.circular(3.0)),
                  ),
                ),
              ),
            ),
            Expanded(
              child: Theme(
                data: Theme.of(context)
                    .copyWith(dividerColor: Colors.transparent),
                child: Container(
                  //height: double.infinity,

                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10.r),
                    gradient: const LinearGradient(
                        begin: Alignment.topRight,
                        end: Alignment.bottomLeft,
                        colors: [kblue, kgreen]),
                  ),
                  child: ExpansionTile(
                    leading: Image.asset(
                      "assets/images/bank3.png",
                      height: 20.h,
                    ),
                    title: Text(
                      'Bank of America',
                      style: GoogleFonts.inter(
                        fontSize: kFourteenFont,
                        fontWeight: kFW500,
                      ),
                    ),
                    children: const <Widget>[
                      Padding(
                        padding: EdgeInsets.only(
                          left: 25,
                        ),
                        child: ListTile(
                          title: Text('Swiss Bank'),
                          //subtitle: Text('child subtitle'),
                          trailing: Icon(Icons.chevron_right),
                          //leading:Text("ram")//Image.asset("assets/images/usa.png"),//Image.asset("assets/images/usa.png"),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 25),
                        child: ListTile(
                          title: Text('Indian Bank'),
                          //subtitle: Text('child subtitle'),
                          trailing: Icon(Icons.chevron_right),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget transfer_TOback() {
    return Container(
      margin: const EdgeInsets.only(left: 10, top: 0, right: 10),
      child: Card(
        elevation: 0,
        child: Row(
          children: <Widget>[
            Align(
              alignment: Alignment.centerLeft,
              child: SizedBox(
                child: Container(
                  decoration: const BoxDecoration(
                    color: darkGrey,
                    borderRadius: BorderRadius.all(Radius.circular(3.0)),
                  ),
                ),
              ),
            ),
            Expanded(
              child: Theme(
                data: Theme.of(context)
                    .copyWith(dividerColor: Colors.transparent),
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10.r),
                    gradient: const LinearGradient(
                        begin: Alignment.topRight,
                        end: Alignment.bottomLeft,
                        colors: [kblue, kgreen]),
                  ),
                  child: ExpansionTile(
                    //backgroundColor:Colors.blue,
                    leading: Image.asset(
                      "assets/images/bank2.png",
                      height: 20.h,
                    ),
                    title: Text(
                      'SBI',
                      style: GoogleFonts.inter(
                        fontSize: kFourteenFont,
                        fontWeight: kFW500,
                      ),
                    ),

                    children: const <Widget>[
                      Padding(
                        padding: EdgeInsets.only(
                          left: 25,
                        ),
                        child: ListTile(
                          title: Text('Swiss Bank'),
                          trailing: Icon(Icons.chevron_right),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 25),
                        child: ListTile(
                          title: Text('Indian Bank'),
                          trailing: Icon(Icons.chevron_right),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget Procees_button() {
    return Column(
      children: [
        Container(
            alignment: Alignment.center,
            margin: const EdgeInsets.only(left: 15, top: 20),
            child: Text(
              "Select another account for transfer",
              style: GoogleFonts.inter(
                fontSize: kTenFont,
                fontWeight: kFW400,
              ),
            )),
        Center(
          child: Container(
            margin: const EdgeInsets.only(top: 20),
            height: 40.h,
            width: 150.w,
            child: TextButton(
              onPressed: () {
                Get.toNamed(KAmount_screen);
              },
              style: ButtonStyle(
                  backgroundColor:
                      const MaterialStatePropertyAll<Color>(purple),
                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                      RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10.r),
                          side: const BorderSide(color: purple)))),
              child: const Text("Proceed",
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w700,
                      fontSize: 15)),
            ),
          ),
        ),
      ],
    );
  }
}
