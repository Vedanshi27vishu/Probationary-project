import 'package:flutter/material.dart';

class ScreenWidget extends StatelessWidget {
  final String title;
  final String subtitle;
  final String? subtitle2; 
  final String buttontext;

  ScreenWidget({
    Key? key,
    required this.title,
    required this.buttontext,
    required this.subtitle,
    this.subtitle2, 
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            decoration: BoxDecoration(
              color: Color(0x0A1B1B1B),
              borderRadius: BorderRadius.all(Radius.circular(100)),
            ),
            child: Icon(
              Icons.arrow_back_ios_new,
              size: 14,
            ),
          ),
        ),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.only(top: 34, left: 10, right: 10),
          child: Column(
            children: [
              Text(
                title,
                style: TextStyle(
                  fontWeight: FontWeight.w600,
                  fontSize: 26,
                  color: Color.fromRGBO(27, 30, 40, 1.0),
                ),
              ),
              SizedBox(height: 8),
              Text(
                subtitle,
                style: TextStyle(
                  color: Color.fromRGBO(125, 132, 141, 1.0),
                  fontSize: 16,
                ),
              ),
              if (subtitle2 != null) ...[
                Text(
                  subtitle2!,
                  style: TextStyle(
                    color: Color.fromRGBO(125, 132, 141, 1.0),
                    fontSize: 16,
                  ),
                ),
              ],
              SizedBox(height: 40),
              Container(
                height: 56,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(14)),
                  color: Color(0x0A1B1B1B),
                ),
                child: TextFormField(
                  cursorColor: Colors.black,
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    contentPadding: EdgeInsets.all(18),
                  ),
                ),
              ),
              if (subtitle2 == null) ...[
                SizedBox(height: 20),
                Container(
                  height: 56,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(14)),
                    color: Color(0x0A1B1B1B),
                  ),
                  child: TextFormField(
                    cursorColor: Colors.black,
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      contentPadding: EdgeInsets.all(18),
                    ),
                  ),
                ),
              ],
              SizedBox(height: 40),
              Container(
                height: 56,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(16)),
                  color: Color.fromRGBO(25, 176, 21, 1.0),
                ),
                child: Center(
                  child: Text(
                    buttontext,
                    style: TextStyle(
                      fontSize: 16,
                      color: Color.fromRGBO(255, 255, 255, 1.0),
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
