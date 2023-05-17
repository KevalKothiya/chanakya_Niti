// ignore_for_file: unnecessary_null_comparison

import 'package:departure/modal/globals.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class DetailsPage extends StatefulWidget {
  const DetailsPage({Key? key}) : super(key: key);

  @override
  State<DetailsPage> createState() => _DetailsPageState();
}

class _DetailsPageState extends State<DetailsPage> {
  @override
  Widget build(BuildContext context) {
    Shloka_Model data =
        ModalRoute.of(context)!.settings.arguments as Shloka_Model;
    return Scaffold(
      appBar: AppBar(
        title: const Text("Shlok"),
        centerTitle: true,
        backgroundColor: const Color(0xffd18e33),
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(
            Icons.arrow_back_ios_rounded,
            color: Colors.black,
          ),
        ),
      ),
      body: (data != null)
          ? Container(
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage("assests/image/bg_image.png"),
                  fit: BoxFit.fill,
                ),
              ),
              padding: EdgeInsets.all(2.h),
              child: ListView.builder(
                shrinkWrap: true,
                itemCount: data.details.length,
                itemBuilder: (context, i) {
                  return Column(
                    children: [
                      ListTile(
                        onTap: () {
                          Navigator.of(context).pushNamed('NitiPage',
                              arguments: data.details[i]);
                        },
                        leading: Text(
                          data.details[i]['id'].toString(),
                        ),
                        title: Text(data.details[i]['Niti']
                            .toString()
                            .split("।")[0]),
                      ),
                      const Divider(),
                    ],
                  );
                },
              ),
            )
          : Container(
              alignment: Alignment.center,
              child: const Text("no data Aviable.."),
            ),
    );
  }
}
