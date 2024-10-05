import 'dart:developer';

import 'package:fast_food_ordering_ui/custom_widgets/divider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ItemScreen extends StatefulWidget {
  String name;
  ItemScreen({super.key, required this.name});

  @override
  State<ItemScreen> createState() => _ItemScreenState();
}

class _ItemScreenState extends State<ItemScreen> {
  @override
  Widget build(BuildContext context) {
    //log("======777==========${widget.name}");

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        centerTitle: true,
        leading: InkWell(
          onTap: () {
            Navigator.pop(context);
          },
          child: const Icon(
            Icons.arrow_back_ios,
            color: Colors.black45,
          ),
        ),
        title: Text(
          widget.name,
          style: const TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.w500,
            fontSize: 25,
          ),
        ),
        actions: const [
          Padding(
            padding: EdgeInsets.only(right: 10),
            child: Icon(
              Icons.favorite,
              color: Colors.black38,
            ),
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(height: 10),
            const Text(
              "Mized pizza with beef ,chilli and cheese",
              style: TextStyle(color: Colors.black45, fontSize: 17),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 8),
            const Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  Icons.star,
                  size: 22,
                  color: Color(0xFFFF2f08),
                ),
                SizedBox(width: 2),
                Text(
                  "4.7",
                  style: TextStyle(fontSize: 16, color: Colors.black45),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(25),
              child: Image.asset("images/Pizza.png"),
            ),
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Column(
                  children: [
                    Text(
                      "Calories",
                      style: TextStyle(
                          fontSize: 17,
                          color: Colors.black45,
                          fontWeight: FontWeight.w500),
                    ),
                    SizedBox(height: 8),
                    Text(
                      "120",
                      style: TextStyle(
                          fontSize: 17,
                          color: Colors.black,
                          fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
                CustomDivider(),
                Column(
                  children: [
                    Text(
                      "Volume",
                      style: TextStyle(
                          fontSize: 17,
                          color: Colors.black45,
                          fontWeight: FontWeight.w500),
                    ),
                    SizedBox(height: 8),
                    Text(
                      "12 inch",
                      style: TextStyle(
                          fontSize: 17,
                          color: Colors.black,
                          fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
                CustomDivider(),
                Column(
                  children: [
                    Text(
                      "Distance",
                      style: TextStyle(
                          fontSize: 17,
                          color: Colors.black45,
                          fontWeight: FontWeight.w500),
                    ),
                    SizedBox(height: 8),
                    Text(
                      "1 KM",
                      style: TextStyle(
                          fontSize: 17,
                          color: Colors.black,
                          fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ],
            ),
            const SizedBox(height: 40),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    children: [
                      Text(
                        "Order",
                        style: TextStyle(
                            fontSize: 17,
                            color: Colors.black45,
                            fontWeight: FontWeight.w500),
                      ),
                      SizedBox(height: 8),
                      Row(
                        children: [
                          Icon(
                            Icons.add_circle_outline_rounded,
                            color: Colors.black45,
                          ),
                          SizedBox(width: 2),
                          Text(
                            "01",
                            style: TextStyle(
                                fontSize: 17,
                                // color: Colors.black45,
                                fontWeight: FontWeight.bold),
                          ),
                          SizedBox(width: 2),
                          Icon(
                            CupertinoIcons.minus_circle,
                            color: Colors.black45,
                          )
                        ],
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      Text(
                        "Delivery",
                        style: TextStyle(
                            fontSize: 17,
                            color: Colors.black45,
                            fontWeight: FontWeight.w500),
                      ),
                      SizedBox(height: 8),
                      Text(
                        "Express",
                        style: TextStyle(
                            fontSize: 17,
                            color: Colors.green,
                            fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      Text(
                        "Price",
                        style: TextStyle(
                            fontSize: 17,
                            color: Colors.black45,
                            fontWeight: FontWeight.w500),
                      ),
                      SizedBox(height: 8),
                      Text(
                        "\$8.99",
                        style: TextStyle(
                            fontSize: 17,
                            color: Color(0xFFFF2f08),
                            fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: InkWell(
        onTap: () {},
        child: Container(
          height: 60,
          margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
          padding: const EdgeInsets.symmetric(vertical: 20),
          decoration: BoxDecoration(
            color: const Color(0xFFFF2f08),
            borderRadius: BorderRadius.circular(10),
          ),
          child: const Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Add to cart",
                style: TextStyle(
                    fontSize: 16,
                    color: Colors.white,
                    fontWeight: FontWeight.bold),
              ),
               SizedBox(width: 10),
                Icon(
                            Icons.add_circle_outline_rounded,
                            color: Colors.white,
                            size: 20,
                          ),
            ],
          ),
        ),
      ),
    );
  }
}
