import 'package:flutter/material.dart';
import 'package:getwidget/components/carousel/gf_carousel.dart';

class HomeView extends StatefulWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  _HomeViewState createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  final List<String> imageList = [
    "https://cdn.pixabay.com/photo/2017/01/26/02/06/platter-2009590_960_720.jpg",
    "https://cdn.pixabay.com/photo/2017/03/23/19/57/asparagus-2169305_960_720.jpg",
    "https://cdn.pixabay.com/photo/2016/09/15/19/24/salad-1672505_960_720.jpg",
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: const Text("Yemeksepeti"),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 8.0, bottom: 8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  SizedBox(
                    width: MediaQuery.of(context).size.width / 2.2,
                    height: MediaQuery.of(context).size.width * 0.10,
                    child: ElevatedButton(
                      style: ButtonStyle(
                          backgroundColor:
                              MaterialStateProperty.all<Color>(Colors.white),
                          shape:
                              MaterialStateProperty.all<RoundedRectangleBorder>(
                                  RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(5.0),
                                      side: BorderSide(
                                          color: Theme.of(context).primaryColor,
                                          width: 1.5)))),
                      child: Text(
                        'Yemeksepeti',
                        style: TextStyle(
                            color: Theme.of(context).primaryColor,
                            fontSize: 14,
                            fontWeight: FontWeight.bold),
                      ),
                      onPressed: () {},
                    ),
                  ),
                  SizedBox(
                    width: MediaQuery.of(context).size.width / 2.2,
                    height: MediaQuery.of(context).size.width * 0.10,
                    child: ElevatedButton(
                      style: ButtonStyle(
                          backgroundColor:
                              MaterialStateProperty.all<Color>(Colors.white),
                          shape:
                              MaterialStateProperty.all<RoundedRectangleBorder>(
                                  RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(5.0),
                                      side: const BorderSide(
                                          color: Colors.grey, width: 1)))),
                      child: Text(
                        'YemeksepetiBanabi',
                        style: TextStyle(
                            color: Theme.of(context).primaryColor,
                            fontSize: 12,
                            fontWeight: FontWeight.bold),
                      ),
                      onPressed: () {},
                    ),
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 9.0, right: 9.0),
              child: Card(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5),
                    side: const BorderSide(color: Colors.grey, width: 1)),
                elevation: 2,
                child: const ListTile(
                    leading: Icon(
                      Icons.home,
                      color: Colors.black,
                    ),
                    title: Text(
                      "Ev özlem sitesi - Merkez (Karaçayır Mah.)",
                      style: TextStyle(color: Colors.black),
                    ),
                    trailing: Icon(Icons.arrow_downward)),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 9.0, right: 9.0, top: 5),
              child: Stack(
                children: [
                  Card(
                    color: Colors.blue,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5),
                        side: const BorderSide(color: Colors.grey, width: 1)),
                    elevation: 2,
                    child: ListTile(
                      leading: Container(
                        decoration: BoxDecoration(
                          color: Colors.grey[200],
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: const Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Icon(Icons.person),
                        ),
                      ),
                      title: const Text(
                        "ÖMER KAAN SAĞLAM",
                        style: TextStyle(
                            color: Colors.white, fontWeight: FontWeight.bold),
                      ),
                      subtitle: const Text(
                        "9999,918 Puan",
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ),
                  Positioned(
                    right: 10,
                    bottom: 10,
                    child: Container(
                      height: MediaQuery.of(context).size.height * 0.080,
                      width: MediaQuery.of(context).size.width * 0.35,
                      decoration: BoxDecoration(
                        color: Colors.grey[200],
                        borderRadius: BorderRadius.circular(3),
                      ),
                      child: Column(
                        children: const [
                          Icon(
                            Icons.wallet_travel,
                            color: Colors.red,
                          ),
                          Text(
                            "CÜZDAN",
                            style: TextStyle(
                                fontSize: 14, fontWeight: FontWeight.bold),
                          ),
                          Text(
                            " 999999,999 TL",
                            style: TextStyle(
                                fontSize: 12, fontWeight: FontWeight.bold),
                          )
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 8.0, bottom: 8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  SizedBox(
                    width: MediaQuery.of(context).size.width / 2.2,
                    height: MediaQuery.of(context).size.width * 0.10,
                    child: ElevatedButton(
                      style: ButtonStyle(
                          backgroundColor:
                              MaterialStateProperty.all<Color>(Colors.white),
                          shape:
                              MaterialStateProperty.all<RoundedRectangleBorder>(
                                  RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(5.0),
                                      side: BorderSide(
                                          color: Colors.grey, width: 1)))),
                      child: Text(
                        'Seçilmiş Menüler',
                        style: TextStyle(
                            color: Theme.of(context).primaryColor,
                            fontSize: 14,
                            fontWeight: FontWeight.bold),
                      ),
                      onPressed: () {},
                    ),
                  ),
                  SizedBox(
                    width: MediaQuery.of(context).size.width / 2.2,
                    height: MediaQuery.of(context).size.width * 0.10,
                    child: ElevatedButton(
                      style: ButtonStyle(
                          backgroundColor:
                              MaterialStateProperty.all<Color>(Colors.white),
                          shape:
                              MaterialStateProperty.all<RoundedRectangleBorder>(
                                  RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(5.0),
                                      side: const BorderSide(
                                          color: Colors.grey, width: 1)))),
                      child: Text(
                        'Vodafone Menüleri',
                        style: TextStyle(
                            color: Theme.of(context).primaryColor,
                            fontSize: 12,
                            fontWeight: FontWeight.bold),
                      ),
                      onPressed: () {},
                    ),
                  ),
                ],
              ),
            ),
            GFCarousel(
              aspectRatio: 1,
              height: MediaQuery.of(context).size.height*0.2,
              autoPlay: true,
              activeIndicator: Colors.red,
              pagination: true,
              pagerSize: 5,
              passiveIndicator: Colors.white,
              items: imageList.map(
                (url) {
                  return Container(
                    margin: const EdgeInsets.all(8.0),
                    child: ClipRRect(
                      borderRadius: BorderRadius.all(Radius.circular(5.0)),
                      child:
                          Image.network(url, fit: BoxFit.cover, width: 1000.0),
                    ),
                  );
                },
              ).toList(),
              onPageChanged: (index) {
                setState(() {
                  index;
                });
              },
            ),
            Container(
              decoration: BoxDecoration(
              color: Colors.green[600],
                borderRadius: BorderRadius.circular(5)
              ),
              width: MediaQuery.of(context).size.width*0.92,
              height: MediaQuery.of(context).size.height*0.06,
              child: const Align(
                alignment: Alignment.center,
                child: Text("RESTORANLARI LİSTELE",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),)),
            ),
            ListTile(
              trailing: TextButton(onPressed: (){}, child: const Text("Tümü",style: TextStyle(fontSize: 11,color: Colors.black),)),
              title: const Text("Önceki Siparişlerim",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold),)
            ),
            const ListTile(
              title: Text("1 Adet Değerlendirilmemiş Siparişiniz Var!",style: TextStyle(color: Colors.grey,fontSize:12,fontWeight: FontWeight.bold),)
            ),
                  
            Container(
              height: 130,
              child: Card(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5),
                        side: BorderSide(
                          color: Colors.grey,
                          width: 1
                        )
                      ),
                      child: Column(
                        children: [
                          ListTile(
                            leading: Container(color: Colors.green,child: const Padding(
                              padding: EdgeInsets.all(8.0),
                              child: Text("9,9",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),),
                            ),),
                            title: const Text("Ekrem Coşkun Döner",style: TextStyle(color: Colors.grey,fontWeight: FontWeight.bold),),
                            subtitle: const Text("Döner - Merkez (Tabaklar Mah.)",style: TextStyle(color: Colors.grey,fontWeight: FontWeight.normal),),
                          ),
                          const Divider(),
                          Row(
                            children: [
                              Row(
                                children: const[
                                  Icon(Icons.arrow_downward),
                                  Text("Detay",style: TextStyle(color: Colors.black,fontWeight: FontWeight.normal),),
                                ],
                              ),
                              SizedBox(width: 10,),
                              Row(
                                children: const[
                                  Icon(Icons.mode_comment,color: Colors.amber,),
                                  Text("Değerlendir",style: TextStyle(color: Colors.black,fontWeight: FontWeight.normal),),
                                ],
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
            )
          ],
        ),
      ),
    );
  }
}
