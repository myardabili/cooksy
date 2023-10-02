// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:dicoding_cook_easy/screens/widget/favorite_button.dart';
import 'package:flutter/material.dart';
import 'package:dicoding_cook_easy/model/food_menu_model.dart';
import 'package:google_fonts/google_fonts.dart';

class DetailScreen extends StatelessWidget {
  final FoodMenuModel foodMenu;

  const DetailScreen({
    Key? key,
    required this.foodMenu,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        flexibleSpace: _appBar(context),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(
              height: 20,
            ),
            _imageBanner(context),
            const SizedBox(
              height: 10,
            ),
            _title(),
            _tabBar(),
          ],
        ),
      ),
    );
  }

  SafeArea _appBar(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.only(
          left: 30,
          right: 30,
          top: 10,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              height: 46,
              width: 46,
              decoration: const BoxDecoration(
                  color: Color(0xFFFF6433), shape: BoxShape.circle),
              child: IconButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                icon: Image.asset(
                  'assets/icons/arrow_left.png',
                  height: 20,
                  width: 20,
                  color: Colors.white,
                ),
              ),
            ),
            const FavoriteButton(),
          ],
        ),
      ),
    );
  }

  Container _imageBanner(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 30),
      height: 230,
      clipBehavior: Clip.hardEdge,
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: Colors.amber,
      ),
      child: Image.network(
        foodMenu.image,
        fit: BoxFit.cover,
      ),
    );
  }

  Column _title() {
    return Column(
      children: [
        Text(
          foodMenu.name,
          style: GoogleFonts.poppins(
            fontSize: 20,
            fontWeight: FontWeight.w500,
            color: const Color(0xFF752A00),
          ),
        ),
        Text(
          foodMenu.foodCategory,
          style: GoogleFonts.poppins(
            fontSize: 12,
            // fontWeight: FontWeight.w500,
            color: const Color(0xFF1D1D1D),
          ),
        ),
      ],
    );
  }

  DefaultTabController _tabBar() {
    return DefaultTabController(
        length: 2,
        child: Column(
          children: [
            const TabBar(
              labelColor: Color(0xFFFF6433),
              indicatorColor: Color(0xFFFF6433),
              tabs: [
                Tab(
                  text: 'Bahan',
                ),
                Tab(
                  text: 'Langkah-Langkah',
                ),
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30),
              child: SizedBox(
                height: 400,
                child: TabBarView(
                  children: [
                    Text(
                      foodMenu.ingredients.join('\n'),
                      style: GoogleFonts.poppins(
                        fontSize: 12,
                        wordSpacing: 2,
                      ),
                    ),
                    Text(
                      foodMenu.cookingSteps.join('\n'),
                      textAlign: TextAlign.justify,
                      style: GoogleFonts.poppins(
                        fontSize: 12,
                        wordSpacing: 2,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ));
  }
}
