import 'package:flutter/material.dart';
import 'package:yemeksepeticlone/core/init/navigation/navigation_service.dart';

class IntroView extends StatefulWidget {
  const IntroView({Key? key}) : super(key: key);

  @override
  _IntroViewState createState() => _IntroViewState();
}

class _IntroViewState extends State<IntroView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appbarBuilder(context),
      body: bodyBuilder(context),
    );
  }

  Column bodyBuilder(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            InkWell(
              onTap: () {
                NavigationService.instance.navigateToPage(path: '/home');
              },
              child: Padding(
                padding: const EdgeInsets.only(top: 10.0, bottom: 20),
                child: Card(
                  elevation: 5,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10)),
                  child: Container(
                    height: MediaQuery.of(context).size.height * 0.4,
                    width: MediaQuery.of(context).size.width * 0.4,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      image: DecorationImage(
                        image: AssetImage("assets/images/introcardimage.png"),
                        fit: BoxFit.cover,
                        alignment: Alignment.topCenter,
                      ),
                    ),
                  ),
                ),
              ),
            ),
            InkWell(
              onTap: () {
                NavigationService.instance.navigateToPage(path: '/home');
              },
              child: Padding(
                padding: const EdgeInsets.only(top: 10.0, bottom: 20),
                child: Card(
                  elevation: 5,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10)),
                  child: Container(
                    height: MediaQuery.of(context).size.height * 0.4,
                    width: MediaQuery.of(context).size.width * 0.4,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      image: DecorationImage(
                        image: AssetImage("assets/images/introcardimage.png"),
                        fit: BoxFit.cover,
                        alignment: Alignment.topCenter,
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
        Padding(
          padding: const EdgeInsets.only(left: 30.0, bottom: 5, top: 10),
          child: Align(
              alignment: Alignment.centerLeft,
              child: Text(
                "Yemek Kampanyaları",
                style: Theme.of(context).textTheme.headline2,
              )),
        ),
        Expanded(
            flex: 2,
            child: ListView.builder(
                padding: EdgeInsets.only(left: 20, bottom: 10),
                scrollDirection: Axis.horizontal,
                itemCount: 5,
                itemBuilder: (context, index) {
                  return InkWell(
                    onTap: () {
                      NavigationService.instance
                          .navigateToPage(path: '/home');
                    },
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        height: 10,
                        width: MediaQuery.of(context).size.width * 0.4,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          image: const DecorationImage(
                              image: AssetImage("assets/images/1.jpeg"),
                              fit: BoxFit.fill),
                        ),
                      ),
                    ),
                  );
                })),
        Padding(
          padding: const EdgeInsets.only(left: 30.0, bottom: 5, top: 10),
          child: Align(
              alignment: Alignment.centerLeft,
              child: Text(
                "Market Kampanyaları",
                style: Theme.of(context).textTheme.headline2,
              )),
        ),
        Expanded(
            flex: 2,
            child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: 5,
                padding: EdgeInsets.only(left: 20, bottom: 10),
                itemBuilder: (context, index) {
                  return InkWell(
                    onTap: () {
                      NavigationService.instance
                          .navigateToPage(path: '/home');
                    },
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        height: 10,
                        width: MediaQuery.of(context).size.width * 0.4,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          image: const DecorationImage(
                              image: AssetImage("assets/images/1.jpeg"),
                              fit: BoxFit.fill),
                        ),
                      ),
                    ),
                  );
                })),
        SizedBox(
          height: 50,
        )
      ],
    );
  }

  AppBar appbarBuilder(BuildContext context) {
    return AppBar(
      title: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(Icons.place,size: 15,),
          Text(
            "Ev özlem sitesi - Merkez (Karaçayır Mah.)",
            style: Theme.of(context).textTheme.subtitle1,
          ),
          Icon(Icons.arrow_downward,size: 15,),
        ],
      ),
    );
  }
}
