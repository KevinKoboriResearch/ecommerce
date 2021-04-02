import 'package:flutter/material.dart';

import 'categories.dart';
import 'discount_banner.dart';
import 'home_header.dart';
import 'popular_product.dart';
import 'special_offers.dart';
import 'search_field.dart';
import 'package:flutter/material.dart';
import 'package:shop_app/screens/cart/cart_screen.dart';

import 'icon_btn_with_counter.dart';
import 'search_field.dart';
import '../../../constants.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: CustomScrollView(
        slivers: <Widget>[
          const SliverToBoxAdapter(child: SizedBox(height: 16)),
          SliverAppBar(
            floating: true,
            snap: true,
            elevation: 0,
            backgroundColor: Colors.white,
            leading: Container(),
            leadingWidth: 0,
            title: SearchField(),
            actions: [
              IconBtnWithCounter(
                svgSrc: "assets/icons/Cart Icon.svg",
                press: () => Navigator.pushNamed(context, CartScreen.routeName),
              ),
              IconBtnWithCounter(
                svgSrc: "assets/icons/Bell.svg",
                numOfitem: 3,
                press: () {},
              ),
            ],
          ),
          SliverToBoxAdapter(
            child: SizedBox(height: (10)),
          ),
          SliverToBoxAdapter(
            child: DiscountBanner(),
          ),
          SliverToBoxAdapter(
            child: Categories(),
          ),
          SliverToBoxAdapter(
            child: SpecialOffers(),
          ),
          SliverToBoxAdapter(
            child: SizedBox(height: (30)),
          ),
          SliverToBoxAdapter(
            child: PopularProducts(),
          ),
          SliverToBoxAdapter(
            child: SizedBox(height: (30)),
          ),
        ],
      ),

      // SingleChildScrollView(
      //   child: Column(
      //     children: [
      //       SizedBox(height: (20)),
      //       HomeHeader(),
      //       SizedBox(height: (10)),
      //       DiscountBanner(),
      //       Categories(),
      //       SpecialOffers(),
      //       SizedBox(height: (30)),
      //       PopularProducts(),
      //       SizedBox(height: (30)),
      //     ],
      //   ),
      // ),
    );
  }
}
