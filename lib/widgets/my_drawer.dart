
import 'package:agri_buddy/pages/cart_page.dart';

//import 'package:agri_buddy/pages/policy_page.dart';
import 'package:agri_buddy/pages/profile_page.dart';
//import 'package:agri_buddy/pages/rating_page.dart';
import 'package:agri_buddy/pages/categories_page.dart';
import 'package:agri_buddy/pages/home_page.dart';
import 'package:agri_buddy/pages/services_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_iconly/flutter_iconly.dart';

//import '../pages/customercare_page.dart';
//import '../pages/settings_page.dart';

class MyDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final imageUrl =
        "https://in.images.search.yahoo.com/images/view;_ylt=AwrKAKn_28xmZsUOZY3GHAx.;_ylu=c2VjA2ZwLXRodW1icwRzbGsDaW1nBG9pZANlZDEwMTFhNWQ4ZWIxNzkzODliMTdkNjJhOTVjODA3ZARncG9zAzIxBGl0A2Jpbmc-?back=https%3A%2F%2Fin.images.search.yahoo.com%2Fsearch%2Fimages%3Fp%3Dfarmer%2Blogo%26type%3DE210IN1289G0%26fr%3Dmcafee%26fr2%3Dpiv-web%26tab%3Dorganic%26ri%3D18&w=1600&h=1690&imgurl=thumbs.dreamstime.com%2Fz%2Fvintage-portrait-farmer-logo-organic-products-design-template-192984691.jpg&rurl=https%3A%2F%2Fwww.dreamstime.com%2Fvintage-portrait-farmer-logo-organic-products-design-template-image192984691&size=82.5KB&p=farmer+logo&oid=ed1011a5d8eb179389b17d62a95c807d&fr2=piv-web&fr=mcafee&tt=Vintage+Portrait+Farmer+Logo%2C+Organic+Products+Logo+Design+Template+...&b=0&ni=21&no=21&ts=&tab=organic&sigr=.97HwMreYdTw&sigb=j2SWP4fAw3u7&sigi=hsgJIiXsmFkG&sigt=Ykn10A_dV3CD&.crumb=jTd6ltRAiKa&fr=mcafee&fr2=piv-web&type=E210IN1289G0";
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          DrawerHeader(
            padding : EdgeInsets.zero,
            child: UserAccountsDrawerHeader(
              margin: EdgeInsets.zero,
              accountName: Text("Aayush Khirraiyya"),
              accountEmail: Text("ayushasati04@gmail.com"),
              currentAccountPicture: CircleAvatar(
                backgroundImage: AssetImage("assets/me.jpg"),
              ),
            ),
          ),


          _buildDrawerItem(
            context,
            IconlyLight.home,
            'Home',
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const HomePage()),
              );
            },
          ),
          _buildDrawerItem(
            context,
            IconlyLight.category,
            'Categories',
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const CategoriesPage()),
              );
            },
          ),
          _buildDrawerItem(
            context,
            IconlyLight.setting,
            'Settings',
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const ProfilePage()),
              );
            },
          ),
          _buildDrawerItem(
            context,
            IconlyLight.infoSquare,
            'Customer care',
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const ServicesPage()),
              );
            },
          ),
          _buildDrawerItem(
            context,
            IconlyLight.document,
            'Policy',
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const ProfilePage()),
              );
            },
          ),
          _buildDrawerItem(
            context,
            IconlyLight.star,
            'Rating',
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const ProfilePage()),
              );
            },
          ),
        ],
      ),
    );
  }

  ListTile _buildDrawerItem(BuildContext context, IconData icon, String title,
      {Function()? onTap}) {
    return ListTile(
      leading: Icon(icon),
      title: Text(title),
      onTap: onTap,
    );
  }
}

