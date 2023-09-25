import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'Cart.dart';


void main() {
  runApp(MaterialApp(
    home: MyApp(),
  ));
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  double count =0;
  List<double> priceofproduct = [
    15.15,
    20.15,
    20.15,
    10.15,
    10.15,
    10.15,
    14.15,
    14.15,
    14.15,
    14.15,
    14.15,
    18.25,
    20.23,
    20.23,
    20.23,
    20.23,
    21.23,
    15.63,
    16.36,
    16.36,
  ];
  List<double> counts=List.filled(20, 0);
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text('Product List')),
      ),
      body: Container(
        height: 650,

        child: ListView.separated(
          itemCount: priceofproduct.length, // The total number of items in the list
          itemBuilder: (BuildContext context, int index) {
            // This function builds each item in the list
            return ListTile(
              title: Text('Product ${index+1}'),
              subtitle:Text('${priceofproduct[index]}'),
              trailing:
              Column(
                children: [
                  Text('Count: ${counts[index]}'),
                  ElevatedButton(onPressed: () {
                    counts[index]++;
                    setState(() {});
                    if (counts[index] >= 5) {
                      showDialog(
                          context: context,
                          barrierDismissible: false,
                          builder: (context){
                            return AlertDialog(
                              title:Text('Congraulations') ,
                              content: Text('You Have bought ${counts[index]} products${index+1}  '),
                              actions: [
                                TextButton(onPressed: (){
                                  Navigator.pop(context);
                                }, child: Text('Okay'))
                              ],
                            );
                          }

                      );
                    }
                  }, child: Text('Buy Now')),

                ],
              ),
            );
          },
          separatorBuilder: (BuildContext context, int index) {
            // This function builds the separator between items
            return Divider();
          },
        ),

      ),
      floatingActionButton: FloatingActionButton(
          child: Icon(CupertinoIcons.cart),
          onPressed: (){
            Navigator.push(context, MaterialPageRoute(builder: (context){
              return CartPage(productNames: counts,);
            }));

          }),
    );
  }
}
