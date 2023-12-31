import 'package:e_commerce_mobile_app/widget/image_slider.dart';
import 'package:e_commerce_mobile_app/widget/logo.dart';
import 'package:flutter/material.dart';
import '../widget/headline_widget.dart';
import '../widget/shoes_brend.dart';

class HomePage extends StatefulWidget {

  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final TextEditingController searchController = TextEditingController(text: 'asdf');

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.white,
      bottomNavigationBar: TextButton(child: Text('asdf'), onPressed: () {
        
        setState(() {
          searchController.text +='hello';
        });
      },),
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Colors.white,
        centerTitle: true,
        title: Text('Insightlancer', style: TextStyle(fontSize: 24, fontWeight: FontWeight.w700, color: Colors.grey[350])),
        leading: const Icon(Icons.sort, color: Colors.black),
        actions: const [
          Padding(
            padding: EdgeInsets.only(right: 15.0),
            child: Icon(Icons.notifications, color: Colors.black),
          ),
        ],
      ),
      body: Stack(
        children: [
          Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 15.0, bottom: 25.0),
                child: Container(
                  padding: const EdgeInsets.symmetric(horizontal: 20.0),
                  height: 49,
                  width: 344,
                  decoration: BoxDecoration(color: const Color(0xFFE7ECF6), borderRadius: BorderRadius.circular(30)),
                  child: TextField(
                    controller: searchController,
                    decoration: const InputDecoration(
                      icon: Icon(Icons.search),
                      iconColor: Colors.black54,
                      border: InputBorder.none,
                      hintText: 'What are you looking for',
                      hintStyle: TextStyle(fontSize: 14.0, fontWeight: FontWeight.w700, color: Colors.black54),
                    ),
                  ),
                ),
              ),
              const ImageSlider(),
              const HeadlineWidget(title: 'Brands', subtitle: 'See all'),
              const SizedBox(
                height: 110,
                child: LogoScroller(),
              ),
              const HeadlineWidget(title: 'New Arrial', subtitle: 'See all'),
              const Expanded(
                child: ShoesBrend(),
              ),
            ],
          ),
          Positioned(
              right: 20,
              left: 20,
              bottom: 20,
              child: Container(
                height: 65,
                width: 300,
                decoration: BoxDecoration(
                  color: Colors.black,
                  borderRadius: BorderRadius.circular(50),
                ),
                child: const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Icon(Icons.home, color: Colors.white, size: 35),
                    Icon(Icons.search, color: Colors.white54, size: 35),
                    Icon(Icons.favorite, color: Colors.white54, size: 35),
                    Icon(Icons.person, color: Colors.white54, size: 35),
                  ],
                ),
              )),
        ],
      ),
    );
  }
}
