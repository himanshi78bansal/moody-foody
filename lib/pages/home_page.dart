import 'package:flutter/material.dart';
import 'dart:math';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage>
    with SingleTickerProviderStateMixin {
  int leftimage = 0;
  int rightimage = 0;
  int leftimage1 = 0;
  int rightimage1 = 0;
  int leftimage2 = 0;
  int rightimage2 = 0;
  int leftimage3 = 0;
  int rightimage3 = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      backgroundColor: Colors.transparent,
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 110, 32, 16),
        elevation: 0,
        leading: IconButton(
            onPressed: () {}, icon: const Icon(Icons.more_vert_rounded)),

        // titles
        title: Text(
          "Moody Foody",
          style: TextStyle(
            fontFamily: 'Pacifico',
            fontWeight: FontWeight.bold,
            fontSize: 25.0,
            color: Colors.white,
          ),
        ),

        actions: [
          Stack(
            alignment: AlignmentDirectional.center,
            children: [
              IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.shopping_cart_rounded,
                  size: 30,
                ),
              ),
              Positioned(
                top: 4,
                right: 6,
                child: Container(
                  height: 22,
                  width: 22,
                  decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                    color: Color(0xFFee7b64),
                  ),
                  child: const Center(
                      child: Text(
                    "2",
                    style: TextStyle(
                      fontSize: 11,
                      fontWeight: FontWeight.bold,
                    ),
                  )),
                ),
              ),
            ],
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.settings),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage("images/back.jpg"), fit: BoxFit.cover),
          ),
          child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
            const SizedBox(
              height: 60,
            ),
            // Heading 1
            Padding(
              padding: EdgeInsets.fromLTRB(10, 0, 210, 0),
              child: Text(
                "Breakfast",
                style: TextStyle(
                    fontFamily: 'Pacifico',
                    fontWeight: FontWeight.bold,
                    fontSize: 25.0,
                    letterSpacing: 2.0,
                    wordSpacing: 4.0),
              ),
            ),
            // Images 1
            Row(
              children: [
                Expanded(
                  child: GestureDetector(
                    child: Padding(
                      padding: EdgeInsets.all(15),
                      child: Container(
                        decoration: BoxDecoration(
                          border: Border.all(width: 5),
                        ),
                        child: Image(
                          image: AssetImage("images/b$leftimage.jpg"),
                        ),
                      ),
                    ),
                  ),
                ),
                // ),
                Expanded(
                  child: GestureDetector(
                    child: Padding(
                      padding: EdgeInsets.all(15),
                      child: Container(
                        decoration: BoxDecoration(
                          border: Border.all(width: 5),
                        ),
                        child: Image(
                          image: AssetImage("images/be$rightimage.jpg"),
                        ),
                      ),
                    ),
                  ),
                )
              ],
            ),

            // Button 1
            Row(
              children: [
                Spacer(),
                ElevatedButton(
                  onPressed: () {
                    setState(() {
                      leftimage = Random().nextInt(10);
                    });
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Color.fromARGB(255, 110, 32, 16),
                  ),
                  child: const Text(
                    "Dish",
                    style: TextStyle(
                      fontFamily: 'Pacifico',
                      fontWeight: FontWeight.bold,
                      fontSize: 10.0,
                      color: Colors.white,
                    ),
                  ),
                ),
                Spacer(),
                ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Color.fromARGB(255, 110, 32, 16),
                  ),
                  child: const Text(
                    "Add to Cart",
                    style: TextStyle(
                      fontFamily: 'Pacifico',
                      fontWeight: FontWeight.bold,
                      fontSize: 20.0,
                      color: Colors.white,
                    ),
                  ),
                ),
                Spacer(),
                ElevatedButton(
                  onPressed: () {
                    setState(() {
                      rightimage = Random().nextInt(10);
                    });
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Color.fromARGB(255, 110, 32, 16),
                  ),
                  child: const Text(
                    "Drinks",
                    style: TextStyle(
                      fontFamily: 'Pacifico',
                      fontWeight: FontWeight.bold,
                      fontSize: 10.0,
                      color: Colors.white,
                    ),
                  ),
                ),
                Spacer()
              ],
            ),

            const SizedBox(
              height: 30,
            ),

            // Heading 2
            Padding(
              padding: EdgeInsets.fromLTRB(10, 0, 170, 0),
              child: Text(
                "Main Course",
                style: TextStyle(
                    fontFamily: 'Pacifico',
                    fontWeight: FontWeight.bold,
                    fontSize: 25.0,
                    letterSpacing: 2.0,
                    wordSpacing: 4.0),
              ),
            ),
            // Images 2
            Row(
              children: [
                Expanded(
                  child: GestureDetector(
                    child: Padding(
                      padding: EdgeInsets.all(15),
                      child: Container(
                        decoration: BoxDecoration(
                          border: Border.all(width: 5),
                        ),
                        child: Image(
                          image: AssetImage("images/m$leftimage1.jpg"),
                        ),
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: GestureDetector(
                    child: Padding(
                      padding: EdgeInsets.all(15),
                      child: Container(
                        decoration: BoxDecoration(
                          border: Border.all(width: 5),
                        ),
                        child: Image(
                          image: AssetImage("images/me$rightimage1.jpg"),
                        ),
                      ),
                    ),
                  ),
                )
              ],
            ),
            // Button 2
            Row(
              children: [
                Spacer(),
                ElevatedButton(
                  onPressed: () {
                    setState(() {
                      leftimage1 = Random().nextInt(10);
                    });
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Color.fromARGB(255, 110, 32, 16),
                  ),
                  child: const Text(
                    "Dish",
                    style: TextStyle(
                      fontFamily: 'Pacifico',
                      fontWeight: FontWeight.bold,
                      fontSize: 10.0,
                      color: Colors.white,
                    ),
                  ),
                ),
                Spacer(),
                ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Color.fromARGB(255, 110, 32, 16),
                  ),
                  child: const Text(
                    "Add to Cart",
                    style: TextStyle(
                      fontFamily: 'Pacifico',
                      fontWeight: FontWeight.bold,
                      fontSize: 20.0,
                      color: Colors.white,
                    ),
                  ),
                ),
                Spacer(),
                ElevatedButton(
                  onPressed: () {
                    setState(() {
                      rightimage1 = Random().nextInt(10);
                    });
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Color.fromARGB(255, 110, 32, 16),
                  ),
                  child: const Text(
                    "Parallel",
                    style: TextStyle(
                      fontFamily: 'Pacifico',
                      fontWeight: FontWeight.bold,
                      fontSize: 10.0,
                      color: Colors.white,
                    ),
                  ),
                ),
                Spacer()
              ],
            ),

            const SizedBox(
              height: 30,
            ),

            // Heading 3
            Padding(
              padding: EdgeInsets.fromLTRB(10, 0, 240, 0),
              child: Text(
                "Snacks",
                style: TextStyle(
                    fontFamily: 'Pacifico',
                    fontWeight: FontWeight.bold,
                    fontSize: 25.0,
                    letterSpacing: 2.0,
                    wordSpacing: 4.0),
              ),
            ),
            // Images 3
            Row(
              children: [
                Expanded(
                  child: GestureDetector(
                    child: Padding(
                      padding: EdgeInsets.all(15),
                      child: Container(
                        decoration: BoxDecoration(
                          border: Border.all(width: 5),
                        ),
                        child: Image(
                          image: AssetImage("images/s$leftimage2.jpg"),
                        ),
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: GestureDetector(
                    child: Padding(
                      padding: EdgeInsets.all(15),
                      child: Container(
                        decoration: BoxDecoration(
                          border: Border.all(width: 5),
                        ),
                        child: Image(
                          image: AssetImage("images/se$rightimage2.jpg"),
                        ),
                      ),
                    ),
                  ),
                )
              ],
            ),

            // Button 3
            Row(
              children: [
                Spacer(),
                ElevatedButton(
                  onPressed: () {
                    setState(() {
                      leftimage2 = Random().nextInt(10);
                    });
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Color.fromARGB(255, 110, 32, 16),
                  ),
                  child: const Text(
                    "Dish",
                    style: TextStyle(
                      fontFamily: 'Pacifico',
                      fontWeight: FontWeight.bold,
                      fontSize: 10.0,
                      color: Colors.white,
                    ),
                  ),
                ),
                Spacer(),
                ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Color.fromARGB(255, 110, 32, 16),
                  ),
                  child: const Text(
                    "Add to Cart",
                    style: TextStyle(
                      fontFamily: 'Pacifico',
                      fontWeight: FontWeight.bold,
                      fontSize: 20.0,
                      color: Colors.white,
                    ),
                  ),
                ),
                Spacer(),
                ElevatedButton(
                  onPressed: () {
                    setState(() {
                      rightimage2 = Random().nextInt(10);
                    });
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Color.fromARGB(255, 110, 32, 16),
                  ),
                  child: const Text(
                    "Drinks",
                    style: TextStyle(
                      fontFamily: 'Pacifico',
                      fontWeight: FontWeight.bold,
                      fontSize: 10.0,
                      color: Colors.white,
                    ),
                  ),
                ),
                Spacer()
              ],
            ),

            const SizedBox(
              height: 30,
            ),

            // Heading 4
            Padding(
              padding: EdgeInsets.fromLTRB(10, 0, 240, 0),
              child: Text(
                "Dessert",
                style: TextStyle(
                    fontFamily: 'Pacifico',
                    fontWeight: FontWeight.bold,
                    fontSize: 25.0,
                    letterSpacing: 2.0,
                    wordSpacing: 4.0),
              ),
            ),
            // Images 4
            Row(
              children: [
                Expanded(
                  child: GestureDetector(
                    child: Padding(
                      padding: EdgeInsets.all(15),
                      child: Container(
                        decoration: BoxDecoration(
                          border: Border.all(width: 5),
                        ),
                        child: Image(
                          image: AssetImage("images/d$leftimage3.jpg"),
                        ),
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: GestureDetector(
                    child: Padding(
                      padding: EdgeInsets.all(15),
                      child: Container(
                        decoration: BoxDecoration(
                          border: Border.all(width: 5),
                        ),
                        child: Image(
                          image: AssetImage("images/f$rightimage3.jpg"),
                        ),
                      ),
                    ),
                  ),
                )
              ],
            ),
            // Button 4
            Row(
              children: [
                Spacer(),
                ElevatedButton(
                  onPressed: () {
                    setState(() {
                      leftimage3 = Random().nextInt(10);
                    });
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Color.fromARGB(255, 110, 32, 16),
                  ),
                  child: const Text(
                    "Sweets",
                    style: TextStyle(
                      fontFamily: 'Pacifico',
                      fontWeight: FontWeight.bold,
                      fontSize: 10.0,
                      color: Colors.white,
                    ),
                  ),
                ),
                Spacer(),
                ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Color.fromARGB(255, 110, 32, 16),
                  ),
                  child: const Text(
                    "Add to Cart",
                    style: TextStyle(
                      fontFamily: 'Pacifico',
                      fontWeight: FontWeight.bold,
                      fontSize: 20.0,
                      color: Colors.white,
                    ),
                  ),
                ),
                Spacer(),
                ElevatedButton(
                  onPressed: () {
                    setState(() {
                      rightimage3 = Random().nextInt(10);
                    });
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Color.fromARGB(255, 110, 32, 16),
                  ),
                  child: const Text(
                    "Fruits",
                    style: TextStyle(
                      fontFamily: 'Pacifico',
                      fontWeight: FontWeight.bold,
                      fontSize: 10.0,
                      color: Colors.white,
                    ),
                  ),
                ),
                Spacer(),
              ],
            ),

            const SizedBox(
              height: 50,
            ),

            MaterialButton(
              minWidth: double.infinity,
              height: 60,
              color: Color.fromARGB(255, 110, 32, 16),
              onPressed: () {},
              child: const Text(
                "Place Order",
                style: TextStyle(
                  fontFamily: 'Pacifico',
                  fontWeight: FontWeight.bold,
                  fontSize: 20.0,
                  color: Colors.white,
                ),
              ),
            ),
          ]),
        ),
      ),
    );
  }
}
