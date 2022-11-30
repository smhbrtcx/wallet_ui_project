import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import '../util/my_buttons.dart';
import '../util/my_card.dart';
import '../util/my_lists.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => HomePageState();
}

class HomePageState extends State<HomePage> {
  final controller = PageController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      appBar: AppBar(
        backgroundColor: Colors.deepOrangeAccent,
        title: Text('Cüzdan Uygulamam'),
      ),

      body: SafeArea(
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Text(
                  "My Cards",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                    color: Colors.black,
                  ),
                ),
                Container(
                  margin: EdgeInsets.all(5),
                  padding: EdgeInsets.all(4),
                  decoration: BoxDecoration(
                    color: Colors.black26,
                    shape: BoxShape.circle,
                  ),
                  child: Icon(Icons.add),
                ),
              ],
            ),
            SizedBox(height: 5.0),
            Container(
              height: 170,
              padding: EdgeInsets.all(15),
              child: PageView(
                scrollDirection: Axis.horizontal,
                controller: controller, //yatay,
                children: [
                  CardUi(
                    balance: 5789.45,
                    cardNumber: 25358945687895,
                    expiryMonth: 10,
                    expiryYear: 23,
                    color: Colors.purple,
                    textColor: Colors.white,
                  ),
                  CardUi(
                    balance: 45789.45,
                    cardNumber: 25358945687895,
                    expiryMonth: 12,
                    expiryYear: 28,
                    color: Colors.brown,
                    textColor: Colors.white,
                  ),
                  CardUi(
                    balance: 7889.45,
                    cardNumber: 25358945687895,
                    expiryMonth: 11,
                    expiryYear: 25,
                    color: Colors.limeAccent,
                    textColor: Colors.black,
                  ),
                ],
              ), //slideshow
            ),
            SmoothPageIndicator(
              controller: controller,
              count: 3,
              effect: ExpandingDotsEffect(
                activeDotColor: Colors.deepOrange,
                dotColor: Colors.black54,
              ),
            ),
            SizedBox(
              height: 8.0,
            ),
            //button 3 adet -> send + pay + bills
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  //send button
                  MyButtons(
                    iconImagePath: "assets/money.jpg",
                    buttonText: "Gönder",
                  ),
                  MyButtons(iconImagePath: "assets/pay.png", buttonText: "Öde"),
                  MyButtons(
                      iconImagePath: "assets/bill.png", buttonText: "Bakiye")
                ],
              ),
            ),
            //istatistiki bilgiler
            Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Column(
               children: [
                 ListeElemani(
                     iconImagePath: "assets/statics.png",
                     baslik: "İstatistikler",
                     altBaslik: "Gelir ve  giderler."
                 ),
                 SizedBox(height: 8,),
                 ListeElemani(
                     iconImagePath: "assets/transactions.png",
                     baslik: "İşlemler",
                     altBaslik: "İşlemler geçmişi"
                 ),
               ],
              ),
            ),
          ],
        ),
      ),

      //app bar end

      //cards

      //cards end

      //buttons end

      //column -> stats +transferler
    );
  }
}
