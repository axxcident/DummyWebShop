import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:shopperpro/constants.dart';
import 'package:shopperpro/models/Product.dart';
import 'package:shopperpro/screens/details/components/body.dart';

class DetailsScreen extends StatelessWidget {
  final Product product;

  const DetailsScreen({Key? key, required this.product}) : super(key: key);
  // const DetailsScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: product.color,
      appBar: buildAppBar(context),
      body: Body(
        product: product,
      ),
    );
  }

  AppBar buildAppBar(BuildContext context) {
    return AppBar(
      backgroundColor: product.color,
      elevation: 0.0,
      leading: IconButton(
          onPressed: () => Navigator.pop(context),
          icon: SvgPicture.asset(
            "assets/icons/back.svg",
            colorFilter: const ColorFilter.mode(Colors.white, BlendMode.srcIn),
            // color: Colors.white,
          )),
      actions: <Widget>[
        IconButton(
            onPressed: () {},
            icon: SvgPicture.asset("assets/icons/search.svg")),
        IconButton(
            onPressed: () {}, icon: SvgPicture.asset("assets/icons/cart.svg")),
        const SizedBox(
          width: kDefaultPaddin / 2,
        )
      ],
    );
  }
}
