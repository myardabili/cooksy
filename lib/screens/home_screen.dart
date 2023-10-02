import 'package:dicoding_cook_easy/model/food_category_model.dart';
import 'package:dicoding_cook_easy/model/food_menu_model.dart';
import 'package:dicoding_cook_easy/screens/detail_screen.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

var selectedCategory = 0;

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          flexibleSpace: _appbar(),
        ),
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                height: 20,
              ),
              _search(),
              const SizedBox(
                height: 42,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 30),
                child: Text(
                  'Category',
                  style: GoogleFonts.poppins(
                      fontSize: 20,
                      color: const Color(0xFF752A00),
                      fontWeight: FontWeight.w500),
                ),
              ),
              const SizedBox(
                height: 18,
              ),
              _category(),
              const SizedBox(
                height: 42,
              ),
              _menuList()
            ],
          ),
        ),
        bottomNavigationBar: _bottomNavBar());
  }

  SafeArea _appbar() {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            IconButton(
              onPressed: () {},
              icon: Image.asset(
                'assets/icons/menu.png',
                height: 35,
                width: 35,
                color: const Color(0xFFFF6433),
              ),
            ),
            Stack(
              children: [
                IconButton(
                  onPressed: () {},
                  icon: Image.asset(
                    'assets/icons/bell.png',
                    height: 30,
                    width: 30,
                    color: const Color(0xFFFF6433),
                  ),
                ),
                Positioned(
                  bottom: 12,
                  right: 12,
                  child: Container(
                    height: 9,
                    width: 9,
                    decoration: const BoxDecoration(
                      color: Color(0xFFFF0000),
                      shape: BoxShape.circle,
                    ),
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget _search() {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 30),
      height: 56,
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
      decoration: BoxDecoration(
        color: const Color(0xFFF8F8F8),
        borderRadius: BorderRadius.circular(22),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.10),
            blurRadius: 15,
            offset: const Offset(0, 4),
          )
        ],
      ),
      child: TextFormField(
        decoration: InputDecoration(
          border: InputBorder.none,
          hintText: 'Search for a recipe...',
          hintStyle: GoogleFonts.roboto(
            fontSize: 13,
            color: const Color(0xFFA6A6A6),
            letterSpacing: 0.5,
          ),
          prefixIcon: const ImageIcon(
            AssetImage('assets/icons/search.png'),
            color: Color(0xFFA6A6A6),
          ),
        ),
      ),
    );
  }

  SizedBox _category() {
    return SizedBox(
      height: 26,
      child: ListView.separated(
          padding: const EdgeInsets.symmetric(horizontal: 30),
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) {
            return Container(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              decoration: BoxDecoration(
                color: selectedCategory == index
                    ? const Color(0xFFFE784E)
                    : const Color(0xFFFE784E).withOpacity(0.30),
                borderRadius: BorderRadius.circular(6),
              ),
              child: Center(
                child: Text(
                  FoodCategoryModel.category()[index],
                  style: GoogleFonts.poppins(
                    fontSize: 14,
                    letterSpacing: 0.1,
                    color: selectedCategory == index
                        ? Colors.white
                        : const Color(0xFFFE784E),
                  ),
                ),
              ),
            );
          },
          separatorBuilder: (context, index) => const SizedBox(
                width: 16,
              ),
          itemCount: FoodCategoryModel.category().length),
    );
  }

  GridView _menuList() {
    return GridView.builder(
      padding: const EdgeInsets.symmetric(horizontal: 30),
      physics: const NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      itemCount: foodMenuList.length,
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        mainAxisSpacing: 25,
        crossAxisSpacing: 20,
      ),
      itemBuilder: (context, index) {
        final FoodMenuModel foodMenu = foodMenuList[index];
        return InkWell(
          onTap: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => DetailScreen(
                          foodMenu: foodMenu,
                        )));
          },
          child: Container(
            height: 184,
            width: 174,
            clipBehavior: Clip.antiAlias,
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(20),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.25),
                    blurRadius: 4,
                    offset: const Offset(0, 4),
                  )
                ]),
            child: _infromationMenu(foodMenu),
          ),
        );
      },
    );
  }

  Column _infromationMenu(FoodMenuModel foodMenu) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Image.network(
          foodMenu.image,
          height: 98,
          width: double.maxFinite,
          fit: BoxFit.cover,
        ),
        const SizedBox(
          height: 10,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                foodMenu.name,
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
                style: GoogleFonts.poppins(
                  fontSize: 12,
                  fontWeight: FontWeight.w500,
                ),
              ),
              Column(
                children: [
                  const Icon(
                    Icons.star,
                    size: 16,
                    color: Color(0xFFFFBA34),
                  ),
                  Text(
                    '4.6',
                    style: GoogleFonts.poppins(
                      fontSize: 9,
                      color: const Color(0xFF979797),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: Row(
            children: [
              Text(
                foodMenu.cookingTime,
                style: GoogleFonts.poppins(
                  fontSize: 9,
                  color: const Color(0xFF5F5F5F),
                ),
              ),
              const SizedBox(
                width: 4,
              ),
              Container(
                height: 3,
                width: 3,
                decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                  color: Color(0xFF797979),
                ),
              ),
              const SizedBox(
                width: 4,
              ),
              Text(
                foodMenu.difficultyLevel,
                style: GoogleFonts.poppins(
                  fontSize: 9,
                  color: const Color(0xFF5F5F5F),
                ),
              ),
            ],
          ),
        )
      ],
    );
  }

  BottomNavigationBar _bottomNavBar() {
    return BottomNavigationBar(
      items: [
        BottomNavigationBarItem(
          icon: IconButton(
              onPressed: () {},
              icon: const ImageIcon(AssetImage('assets/icons/home.png'))),
          label: 'Home',
        ),
        BottomNavigationBarItem(
          icon: IconButton(
              onPressed: () {},
              icon: const ImageIcon(AssetImage('assets/icons/search.png'))),
          label: 'Search',
        ),
        BottomNavigationBarItem(
          icon: IconButton(
              onPressed: () {},
              icon: const ImageIcon(AssetImage('assets/icons/heart.png'))),
          label: 'Favorite',
        ),
        BottomNavigationBarItem(
          icon: IconButton(
              onPressed: () {},
              icon: const ImageIcon(AssetImage('assets/icons/user.png'))),
          label: 'Profile',
        ),
      ],
      type: BottomNavigationBarType.fixed,
      selectedItemColor: const Color(0xFFFF6433),
      unselectedItemColor: Colors.grey,
      showSelectedLabels: false,
      showUnselectedLabels: false,
    );
  }
}
