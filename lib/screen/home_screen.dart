import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Welcome back...",
              style: TextStyle(fontSize: 12, color: Color(0xffAF7950)),
            ),
            Text(
              "The Brown",
              style: TextStyle(
                fontSize: 20,
                color: Color(0xffAF7950),
                fontWeight: FontWeight.w500,
              ),
            ),
          ],
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: CircleAvatar(
              backgroundColor: Colors.white,
              child: Icon(Icons.notifications_none),
            ),
          ),
        ],
      ),
      body: Column(
        children: [
          Hero(
            tag: "hero_home-screen",
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 14.0),
              child: TextField(
                enabled: false,
                decoration: InputDecoration(
                  filled: true,
                  fillColor: Colors.brown.shade50,
                  hint: Text("Search products..."),
                  suffixIcon: Icon(Icons.search),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 14.0, vertical: 10),
            child: Stack(
              children: [
                Image(image: AssetImage("assets/image/banner.png")),

                // Positioned(
                Positioned(
                  top: 15,
                  left: 20,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        padding: const EdgeInsets.only(
                          right: 210,
                          left: 10,
                          top: 5,
                          bottom: 5,
                        ),
                        decoration: BoxDecoration(
                          color: Color(0xffAF7950),
                          borderRadius: BorderRadius.circular(8),
                        ),
                        child: Text(
                          "Seasonal Special",
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w400,
                            color: Color(0xffF7F2EE),
                          ),
                        ),
                      ),
                      SizedBox(height: 10),

                      Text(
                        "NISHIO Premium grade\n(japen) 14",
                        style: TextStyle(
                          color: Color(0xffF7F2EE),
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(height: 10),

                      FilledButton(
                        onPressed: () {},
                        style: FilledButton.styleFrom(
                          backgroundColor: Color(0xffAF7950),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8),
                          ),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 10.0),
                          child: Text(
                            "Shop Now",
                            style: TextStyle(
                              color: Color(0xffF7F2EE),
                              fontSize: 16,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),

          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 14.0),
            child: Row(
              children: [
                Text(
                  "Categories",
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
                ),
              ],
            ),
          ),
          SizedBox(height: 10),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 14.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Column(
                    children: [
                      Container(
                        padding: const EdgeInsets.all(20),
                        decoration: BoxDecoration(
                          color: Color(0xFFDFC9B9),
                          borderRadius: BorderRadius.circular(100),
                        ),
                        child: Icon(Icons.grain_outlined, color: Colors.black),
                      ),
                      SizedBox(height: 5),
                      Text("Coffee", style: TextStyle(fontSize: 16)),
                    ],
                  ),
                ),
                Column(
                  children: [
                    Container(
                      padding: const EdgeInsets.all(20),
                      decoration: BoxDecoration(
                        color: Color(0xFFDFC9B9),
                        borderRadius: BorderRadius.circular(100),
                      ),
                      child: Icon(Icons.coffee_outlined, color: Colors.black),
                    ),
                    SizedBox(height: 5),
                    Text("Matcha", style: TextStyle(fontSize: 16)),
                  ],
                ),
                Column(
                  children: [
                    Container(
                      padding: const EdgeInsets.all(20),
                      decoration: BoxDecoration(
                        color: Color(0xFFDFC9B9),
                        borderRadius: BorderRadius.circular(100),
                      ),
                      child: Icon(
                        Icons.energy_savings_leaf_outlined,
                        color: Colors.black,
                      ),
                    ),
                    SizedBox(height: 5),
                    Text("Tea", style: TextStyle(fontSize: 16)),
                  ],
                ),
                Column(
                  children: [
                    Container(
                      padding: const EdgeInsets.all(20),
                      decoration: BoxDecoration(
                        color: Color(0xFFDFC9B9),
                        borderRadius: BorderRadius.circular(100),
                      ),
                      child: Icon(
                        Icons.settings_input_svideo,
                        color: Colors.black,
                      ),
                    ),
                    SizedBox(height: 5),
                    Text("Material", style: TextStyle(fontSize: 16)),
                  ],
                ),
              ],
            ),
          ),
          SizedBox(height: 10),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 14.0),
            child: Row(
              children: [
                Text(
                  "Recently Viewed",
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
                ),
              ],
            ),
          ),
          SizedBox(height: 10),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 14.0),
            child: Row(
              children: [
                Container( 
                  width: 160,  
                  decoration: BoxDecoration(
                    color: Colors.white, 
                    borderRadius: BorderRadius.circular(12),
                  ), 
                  child: Padding( 
                    padding: const EdgeInsets.only(top: 8.0, left: 8, right: 8, bottom: 12),
                    child: Stack(
                      children: [
                        Column( 
                          crossAxisAlignment: CrossAxisAlignment.start, 
                          children: [ 
                            ClipRRect(
                              borderRadius: BorderRadius.only(topLeft: Radius.circular(8), topRight: Radius.circular(8)),  
                              child: Image.asset(
                                "assets/image/matcha.png", 
                                width: double.infinity,
                                height: 100,
                                fit: BoxFit.cover,
                              ),
                            ),
                            SizedBox(height: 10),
                            Text(
                              "Matcha", 
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            SizedBox(height: 5,), 
                            Text(
                              "Medium Roast",
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            SizedBox(height: 5,),
                            Text( 
                              "\$10.00",
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                           
                          ],
                        ),
                        Positioned(
                          bottom: 0, 
                          right: 10, 
                          child: Container(
                            decoration: BoxDecoration(
                              color: Color(0xFFDFC9B9),
                              borderRadius: BorderRadius.circular(100),
                            ),
                            child: Container(
                              width: 30,
                              height: 30,
                              child: IconButton(
                                padding: EdgeInsets.zero,
                                onPressed: () {},
                                icon: Icon(Icons.add),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
