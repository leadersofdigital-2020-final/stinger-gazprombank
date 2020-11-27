import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'requests/requests.dart';
import 'vacancy.dart';
import 'candidates.dart';
import 'account.dart';

class Navbar extends StatefulWidget {
  @override
  _NavbarState createState() => _NavbarState();
}

class _NavbarState extends State<Navbar> {
  PageController _controller = PageController(initialPage: 0);

  int currentPage = 0;

  void _onTapChange(int index) {
    currentPage = index;
    _controller.animateToPage(
        index,
        duration: Duration(milliseconds: 500),
        curve: Curves.ease);
  }

  @override
  Widget build(BuildContext context) => Scaffold(
      body: PageView(
        controller: _controller,
        onPageChanged: (value) => setState(() => currentPage = value),
        children: [
          Requests(),
          Vacancy(),
          Candidates(),
          Account(),
        ],
      ),
      bottomNavigationBar: Container(
          height: 83,
          decoration: BoxDecoration(color: Colors.white, boxShadow: [
            BoxShadow(blurRadius: 20, color: Colors.black.withOpacity(.1))
          ]),
          child: SafeArea(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 5.0, vertical: 8),
              child: GNav(
                gap: 8,
                activeColor: Colors.white,
                iconSize: 24,
                padding: EdgeInsets.symmetric(horizontal: 15, vertical: 5),
                duration: Duration(milliseconds: 800),
                tabBackgroundColor: Color(0xff053CC8),
                selectedIndex: currentPage,
                onTabChange: (index) => _onTapChange(index),
                textStyle: TextStyle(
                    color: Colors.white,
                    fontSize: 10
                ),
                tabs: [
                  GButton(
                    icon: Icons.request_page,
                    text: 'Заявки',
                  ),
                  GButton(
                    icon: Icons.star,
                    text: 'Вакансии',
                  ),
                  GButton(
                    icon: Icons.favorite,
                    text: 'Кандидаты',
                  ),
                  GButton(
                    icon: Icons.person,
                    text: 'Аккаунт',
                  ),
                ],
              ),
            ),
          )
      )
  );
}