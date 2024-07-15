import 'package:flutter/material.dart';

class MyCard extends StatelessWidget {
  const MyCard({super.key});

  @override
  Widget build(BuildContext context) {
    // Use MediaQuery to make the widget responsive
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;

    return Padding(
      padding: const EdgeInsets.only(top: 8.0),
      child: SizedBox(
        width: double.infinity,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CircleAvatar(
                  radius: width * 0.075, // Responsive radius
                  backgroundImage:
                      AssetImage("asset/m.jpeg"), // Ensure the path is correct
                ),
                SizedBox(width: width * 0.06), // Responsive width
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Akash Kumar",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: width * 0.04, // Responsive font size
                          color: Color(0xFF010101)),
                    ),
                    Container(
                      width: width * 0.4, // Responsive width
                      child: Text(
                        "Requested for video sample from 2:15 PM to 3:00 PM.",
                        maxLines: 2,
                        style: TextStyle(
                          fontSize: width * 0.03, // Responsive font size
                          color: Color(0xFF010101),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 40.0),
              child: Text(
                "8:59 AM",
                style: TextStyle(
                  fontSize: width * 0.025, // Responsive font size
                  color: Color(0xFF010101),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
