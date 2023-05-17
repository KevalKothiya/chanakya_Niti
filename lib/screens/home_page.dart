import 'package:departure/controller/controller.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:sizer/sizer.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  void initState() {
    super.initState();
    loadJson();
  }

  loadJson() async {
    Provider.of<Shloka_Provider>(context, listen: false).Initialization();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        leading: IconButton(
          onPressed: () {},
          icon: const Icon(
            Icons.android,
            color: Colors.black,
          ),
        ),
        title: const Text("Adhyay"),
        backgroundColor: const Color(0xffd18e33),
        centerTitle: true,
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(
              CupertinoIcons.settings,
              color: Colors.black,
            ),
          ),
        ],
      ),
      body: Container(
        child: (Provider.of<Shloka_Provider>(context).shloka.isEmpty)
            ? Container(
                alignment: Alignment.center,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage("assests/image/bg_image.png"),
                    fit: BoxFit.fill,
                  ),
                ),
                child: const Text("list is Empty"),
              )
            : Container(
                padding: EdgeInsets.all(2.h),
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage("assests/image/bg_image.png"),
                    fit: BoxFit.fill,
                  ),
                ),
                child: ListView.builder(
                  itemCount:
                      Provider.of<Shloka_Provider>(context).shloka.length,
                  itemBuilder: (context, i) {
                    return Column(
                      children: [
                        ListTile(
                          onTap: () {
                            Navigator.pushNamed(context, 'DetailsPage',
                                arguments: Provider.of<Shloka_Provider>(context,
                                        listen: false)
                                    .shloka[i]);
                          },
                          leading: Text(
                            Provider.of<Shloka_Provider>(context)
                                .shloka[i]
                                .id
                                .toString(),
                          ),
                          title: Text(Provider.of<Shloka_Provider>(context)
                              .shloka[i]
                              .adhyay),
                        ),
                        const Divider(),
                      ],
                    );
                  },
                ),
              ),
      ),
    );
  }
}
