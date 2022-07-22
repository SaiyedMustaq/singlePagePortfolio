import 'package:flutter/material.dart';
import 'package:singlpageportfolio/utils/colorsAsset.dart';
import 'package:singlpageportfolio/utils/stringAsset.dart';
import 'package:singlpageportfolio/utils/styleAsset.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Portfolio',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Portfolio'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        children: const [
          FirstColum(),
          SecondColumn(),
          ThirdColumn(),
        ],
      ),
    );
  }
}

class ThirdColumn extends StatelessWidget {
  const ThirdColumn({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 2,
      child: Column(
        children: [
          Container(
            height: MediaQuery.of(context).size.height,
            color: Colors.red,
            child: Column(
              children: [],
            ),
          )
        ],
      ),
    );
  }
}

class SecondColumn extends StatelessWidget {
  const SecondColumn({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 2,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: MediaQuery.of(context).size.height,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 120),
                Text(
                  'Bio:',
                  style: StyleAsset.tittleStyle.copyWith(
                    color: ColorsAsset.primaryColor,
                    decoration: TextDecoration.underline,
                  ),
                ),
                const SizedBox(height: 10),
                Text(
                  'Some of us need a little push to finally download that free trial or go in a new direction. Using your portfolio as one of your pieces can provide the motivation to explore and give you something tangible to show for it. You might:',
                  style: StyleAsset.subTittleStyle.copyWith(
                      color: Colors.black, fontWeight: FontWeight.w400),
                ),
                const SizedBox(height: 100),
                Text(
                  'Personality:',
                  style: StyleAsset.tittleStyle.copyWith(
                    color: ColorsAsset.primaryColor,
                    decoration: TextDecoration.underline,
                  ),
                ),
                const SizedBox(height: 10),
                RichText(
                  text: TextSpan(
                    text: "",
                    style: DefaultTextStyle.of(context).style,
                    children: const <TextSpan>[
                      TextSpan(
                          text: 'bold',
                          style: TextStyle(fontWeight: FontWeight.bold)),
                      TextSpan(text: ' world!'),
                    ],
                  ),
                ),
                Text(
                  'Some of us need a little push to finally download that free trial or go in a new direction. Using your portfolio as one of your pieces can provide the motivation to explore and give you something tangible to show for it. You might:',
                  style: StyleAsset.subTittleStyle.copyWith(
                      color: Colors.black, fontWeight: FontWeight.w400),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}

class FirstColum extends StatelessWidget {
  const FirstColum({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 2,
      child: Column(
        children: [
          Container(
            padding: const EdgeInsets.only(left: 20, right: 20),
            height: MediaQuery.of(context).size.height,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: [
                const SizedBox(height: 80),
                const Center(child: UserImagWidget()),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Expanded(
                    child: Container(
                      decoration: BoxDecoration(
                          color: ColorsAsset.primaryColor,
                          borderRadius: BorderRadius.circular(10.0)),
                      padding: const EdgeInsets.all(10),
                      child: Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const SizedBox(height: 10),
                            Text(
                                'User name ${MediaQuery.of(context).size.width}',
                                style: StyleAsset.tittleStyle),
                            const SizedBox(height: 10),
                            Text('User roll', style: StyleAsset.subTittleStyle),
                            const SizedBox(height: 10),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: const [
                                Icon(Icons.facebook,
                                    color: Colors.white, size: 50),
                                Icon(Icons.facebook,
                                    color: Colors.white, size: 50),
                                Icon(Icons.facebook,
                                    color: Colors.white, size: 50),
                                Icon(Icons.facebook,
                                    color: Colors.white, size: 50),
                              ],
                            ),
                            const SizedBox(height: 10),
                            Text('User Short Description',
                                style: StyleAsset.descriptionStyle),
                            const SizedBox(height: 10),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 20),
                Text(
                  'About',
                  style: StyleAsset.tittleStyle
                      .copyWith(fontSize: 30.0, color: Colors.black),
                ),
                const SizedBox(height: 8),
                Expanded(
                  child: Row(
                    children: [
                      Text(
                        "Location: ",
                        style: StyleAsset.subTittleStyle
                            .copyWith(color: ColorsAsset.primaryColor),
                      ),
                      Text(
                        "Ahmedabad",
                        style: StyleAsset.subTittleStyle
                            .copyWith(color: Colors.black),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 8),
                Expanded(
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Flexible(
                        child: Text(
                          "Education: ",
                          maxLines: null,
                          style: StyleAsset.subTittleStyle
                              .copyWith(color: ColorsAsset.primaryColor),
                        ),
                      ),
                      Flexible(
                        child: Text(
                          "Post Graduation(Msc IT)",
                          maxLines: null,
                          textAlign: TextAlign.center,
                          style: StyleAsset.subTittleStyle
                              .copyWith(color: Colors.black),
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 8),
                Expanded(
                  child: Row(
                    children: [
                      Text(
                        "Occupation: ",
                        style: StyleAsset.subTittleStyle
                            .copyWith(color: ColorsAsset.primaryColor),
                      ),
                      Text(
                        "Flutter Developer",
                        style: StyleAsset.subTittleStyle
                            .copyWith(color: Colors.black),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 30),
                Row(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                          color: ColorsAsset.primaryColor,
                          border: Border.all(color: Colors.white, width: 2)),
                      padding: const EdgeInsets.all(20.0),
                      child: const Text("SOME DATA"),
                    ),
                    Container(
                      decoration: BoxDecoration(
                          color: ColorsAsset.primaryColor,
                          border: Border.all(color: Colors.white, width: 2)),
                      padding: const EdgeInsets.all(20.0),
                      child: const Text("SOME DATA"),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                          color: ColorsAsset.primaryColor,
                          border: Border.all(color: Colors.white, width: 2)),
                      padding: const EdgeInsets.all(20.0),
                      child: const Text("SOME DATA"),
                    ),
                    Container(
                      decoration: BoxDecoration(
                          color: ColorsAsset.primaryColor,
                          border: Border.all(color: Colors.white, width: 2)),
                      padding: const EdgeInsets.all(20.0),
                      child: const Text("SOME DATA"),
                    ),
                  ],
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}

class UserImagWidget extends StatelessWidget {
  const UserImagWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      ImageAsset.andoirdLogo,
      height: 200,
      width: 150,
    );
  }
}
