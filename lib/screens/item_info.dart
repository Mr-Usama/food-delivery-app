import 'package:flutter/material.dart';

class ItemInfo extends StatelessWidget {
  const ItemInfo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                customAppBar(context),
                const SizedBox(
                  height: 10,
                ),
                const Text(
                  'Primavera\nPizza',
                  style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
                ),
                const SizedBox(
                  height: 10,
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    Text(
                      '\$',
                      style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                        color: Color(0xfff46b2b),
                      ),
                    ),
                    Text(
                      '5.99',
                      style: TextStyle(
                        fontSize: 40,
                        fontWeight: FontWeight.bold,
                        color: Color(0xfff46b2b),
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        Text(
                          'Size',
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.w400,
                            color: Color(0xffc7c9ca),
                          ),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Text(
                          'Medium 14"',
                          style: TextStyle(
                            fontSize: 30,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          'Crust',
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.w400,
                            color: Color(0xffc7c9ca),
                          ),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Text(
                          'Thin Crust',
                          style: TextStyle(
                            fontSize: 30,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          'Delivery in',
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.w400,
                            color: Color(0xffc7c9ca),
                          ),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Text(
                          '30 min',
                          style: TextStyle(
                            fontSize: 30,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ],
                    ),
                    Image.asset(
                      'assets/pizza.png',
                      height: 170,
                      width: 150,
                    ),
                  ],
                ),
                const SizedBox(
                  height: 10,
                ),
                const Text(
                  'Ingredients',
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Row(
                  children: [
                    Expanded(
                      child: Container(
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(30),
                        ),
                        child: Image.asset(
                          'assets/salad.png',
                          height: 150,
                          width: 150,
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Expanded(
                      child: Container(
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(30),
                        ),
                        child: Image.asset(
                          'assets/tomato.png',
                          height: 150,
                          width: 150,
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Expanded(
                      child: Container(
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(30),
                        ),
                        child: Image.asset(
                          'assets/onion.png',
                          height: 150,
                          width: 150,
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 10,
                ),
              ],
            ),
          ),
        ),
      ),
      bottomSheet: Container(
        height: 50,
        decoration: const BoxDecoration(
          color: Color(0xffFDC913),
          borderRadius: BorderRadius.only(
              topRight: Radius.circular(20.0), topLeft: Radius.circular(20.0)),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [
            Text(
              'Place an Order',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w400,
                color: Colors.black,
              ),
            ),
            Icon(
              Icons.arrow_forward_ios,
              color: Colors.black,
              size: 15,
            ),
          ],
        ),
      ),
    );
  }

  Row customAppBar(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        GestureDetector(
          onTap: () => Navigator.pop(context),
          child: Container(
            padding: const EdgeInsets.all(10),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                border: Border.all(width: 1, color: Colors.grey)),
            child: const Icon(Icons.chevron_left),
          ),
        ),
        Container(
          padding: const EdgeInsets.all(10),
          decoration: BoxDecoration(
            color: const Color(0xffFFC913),
            borderRadius: BorderRadius.circular(15),
          ),
          child: const Icon(Icons.star, color: Colors.white),
        ),
      ],
    );
  }
}
