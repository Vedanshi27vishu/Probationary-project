import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<String> items = [
    'Apple',
    'Banana',
    'Cherry',
    'Date',
    'Elderberry',
    'Fig',
    'Grape',
    'Honeydew',
    'Apple',
    'Apple2',
  ];
  List<String> filteredItems = [];

  @override
  void initState() {
    super.initState();
    filteredItems = List.from(items);
  }

  void _filterItems(String query) {
    if (query.isEmpty) {
      setState(() {
        filteredItems = List.from(items);
      });
      return;
    }

    setState(() {
      filteredItems = items
          .where((item) => item.toLowerCase().contains(query.toLowerCase()))
          .toList();
      final unmatchedItems = items
          .where((item) => !item.toLowerCase().contains(query.toLowerCase()))
          .toList();
      filteredItems.addAll(unmatchedItems);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 20.0),
              child: Text(
                'Logo',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              
            ),
          ],
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 20.0, right: 20.0),
        child: Column(
          children: [
            Padding(
                padding: const EdgeInsets.only(left: 10.0, right: 10.0),
                child: Container(
                  height: 30,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: Color.fromARGB(255, 186, 186, 186),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Expanded(
                        child: TextField(
                          decoration: InputDecoration(
                            contentPadding:
                                EdgeInsets.only(left: 15, bottom: 10),
                            hintText: 'Search name here...',
                            hintStyle: TextStyle(
                                color: Color.fromARGB(255, 121, 121, 121)),
                            border: InputBorder.none,
                          ),
                          onChanged: (value) => _filterItems(value),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 10.0),
                        child: Icon(
                          Icons.search,
                          color: Color.fromARGB(255, 121, 121, 121),
                        ),
                      ),
                    ],
                  ),
                )),
            Expanded(
              child: ListView.builder(
                itemCount: filteredItems.length,
                itemBuilder: (context, index) {
                  return ListTile(
                    title: Text(filteredItems[index]),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
