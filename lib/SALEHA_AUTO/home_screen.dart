import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // backgroundColor: Color(0xFF061E64FF),
        backgroundColor: Colors.blue,

        title: Center(child: Text('Saleha Auto Rice Mill')),
      ),
      body: Column(
        children: [
          Container(
            child: Padding(
              padding: const EdgeInsets.all(12.0),
              child: TextField(
                decoration: InputDecoration(

                  label:Text('Enter Seller Name') ,
                  icon: Icon(Icons.account_circle_outlined,size: 35,),
                  prefixText: 'Hi ',
                  border: OutlineInputBorder(

                  ),

                  suffixIcon: Icon(Icons.type_specimen_rounded),
                ),
                onTap: () {},
              ),
            ),
          ),
          Container(
            child: Padding(
              padding: const EdgeInsets.all(12.0),
              child: TextField(
                decoration: InputDecoration(

                  label:Text('Enter Buyer Name') ,
                  icon: Icon(Icons.account_circle_outlined,size: 35,),
                  prefixText: 'Hi ',
                  border: OutlineInputBorder(

                  ),

                  suffixIcon: Icon(Icons.type_specimen_rounded),
                ),
                onTap: () {},
              ),
            ),
          ),
          Container(
            child: Padding(
              padding: const EdgeInsets.all(12.0),
              child: TextField(
                decoration: InputDecoration(

                  label:Text('Enter Track Name') ,
                  icon: Icon(Icons.spatial_tracking_outlined,size: 35,),
                  prefixText: 'Hi ',
                  border: OutlineInputBorder(

                  ),

                  suffixIcon: Icon(Icons.type_specimen_rounded),
                ),
                onTap: () {},
              ),
            ),
          ),

          Container(
            child: Padding(
              padding: const EdgeInsets.all(12.0),
              child: TextField(
                decoration: InputDecoration(

                  label:Text('Enter Material Name') ,
                  icon: Icon(Icons.account_circle_outlined,size: 35,),
                  prefixText: 'Hi ',
                  border: OutlineInputBorder(

                  ),

                  suffixIcon: Icon(Icons.type_specimen_rounded),
                ),
                onTap: () {},
              ),
            ),
          ),
          Container(
            child: Padding(
              padding: const EdgeInsets.all(12.0),
              child: TextField(
                decoration: InputDecoration(

                  label:Text('Enter Quantity or Bags') ,
                  icon: Icon(Icons.account_circle_outlined,size: 35,),
                  prefixText: 'Hi ',
                  border: OutlineInputBorder(

                  ),

                  suffixIcon: Icon(Icons.type_specimen_rounded),
                ),
                onTap: () {},
              ),
            ),
          ),
        ],
      ),
    );
  }
}
