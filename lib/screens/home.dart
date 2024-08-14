// screens/home.dart
import 'package:flutter/material.dart';
import 'package:to_do_app/constraints/colors.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _buildAppBar(),
      body: Container(
        padding: const EdgeInsets.symmetric(
          horizontal: 20,
          vertical: 15,
        ),
        child: Column(
          children: [
            _searchBox(),
            const SizedBox(height: 20),
            Expanded(
              child: ListView(
                children: const [
                  Padding(
                    padding: EdgeInsets.only(
                      top: 50,
                      bottom: 20,
                    ),
                    child: Text(
                      'All ToDos',
                      style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  // Widget for the search box
  Widget _searchBox() {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
      ),
      child: const TextField(
        decoration: InputDecoration(
          contentPadding: EdgeInsets.all(0),
          prefixIcon: Icon(
            Icons.search,
            color: tdBlack,
            size: 20,
          ),
          prefixIconConstraints: BoxConstraints(
            maxHeight: 20,
            minWidth: 25,
          ),
          border: InputBorder.none,
          hintText: 'Search',
          hintStyle: TextStyle(color: tdBlack),
        ),
      ),
    );
  }

  // AppBar widget
  AppBar _buildAppBar() {
    return AppBar(
      backgroundColor: tdBGColor,
      elevation: 0,
      title: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const Icon(
            Icons.menu,
            color: tdBlack,
            size: 30,
          ),
          Container(
            height: 40,
            width: 40,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color:
                  Colors.grey.shade200, // Background color for the placeholder
            ),
            child: const Icon(Icons.person,
                color: tdBlack, size: 30), // Placeholder for a profile picture
          ),
        ],
      ),
    );
  }
}
