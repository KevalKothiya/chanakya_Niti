import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class NitiPage extends StatefulWidget {
  const NitiPage({Key? key}) : super(key: key);

  @override
  State<NitiPage> createState() => _NitiPageState();
}

class _NitiPageState extends State<NitiPage> {
  @override
  Widget build(BuildContext context) {
    Map<String, dynamic> data =
        ModalRoute.of(context)!.settings.arguments as Map<String, dynamic>;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xffd18e33),
        title: const Text("Ntit Page"),
        centerTitle: true,
          leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: const Icon(
              Icons.arrow_back_ios_rounded,
              color: Colors.black,
            ),
          )
      ),
      body: (data.isNotEmpty)
          ? Container(
              padding: EdgeInsets.all(2.h),
              alignment: Alignment.topCenter,
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage("assests/image/bg_image.png"),
                  fit: BoxFit.fill,
                ),
              ),
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    Container(
                      height: 25.h,
                      width: 100.h,
                      decoration: const BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage("assests/image/chanaky.png"),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 5.h,
                    ),
                    Text(
                      data['Niti'],
                      style: TextStyle(
                        fontSize: 2.4.h,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(
                      height: 7.h,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(
                          "Hindi :",
                          style: TextStyle(
                            fontSize: 2.2.h,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 1.h,
                    ),
                    Text(
                      data['Sanskrit'],
                      style: TextStyle(
                        fontSize: 2.h,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    SizedBox(
                      height: 3.h,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(
                          "Gujarati :",
                          style: TextStyle(
                            fontSize: 2.2.h,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 1.h,
                    ),
                    Text(
                      data['Gujarati'],
                      style: TextStyle(
                        fontSize: 2.h,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    SizedBox(
                      height: 3.h,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(
                          "English :",
                          style: TextStyle(
                            fontSize: 2.2.h,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 1.h,
                    ),
                    Text(
                      data['English'],
                      style: TextStyle(
                        fontSize: 2.h,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ],
                ),
              ),
            )
          : Container(
              alignment: Alignment.center,
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage("assests/image/bg_image.png"),
                  fit: BoxFit.fill,
                ),
              ),
              child: const Text("not ok"),
            ),
    );
  }
}
