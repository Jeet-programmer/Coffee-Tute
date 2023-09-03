
import 'package:cooffetute/commponents/coffee_tile.dart';
import 'package:cooffetute/models/coffe.dart';
import 'package:cooffetute/models/coffe_shop.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';


class ShopPage extends StatefulWidget {
  const ShopPage({super.key});

  @override
  State<ShopPage> createState() => _ShopPageState();
}

class _ShopPageState extends State<ShopPage> {

//addtocart
void addtocart(Coffee coffee){
  Provider.of<CoffeeShop>(context, listen: false).addItemToCart(coffee);


  showDialog(context: context, 
  builder: (context) => AlertDialog(
    title: Text("Successfully Added to Cart"),  
  ));
}


  @override
  Widget build(BuildContext context) {
    return Consumer<CoffeeShop>(
      builder: (context, value, child) => SafeArea(
      child: Padding(
        padding: const EdgeInsets.all(28.0),
        child: Column(
          children: [
            const Text("How Would You like your Coffee?",
            style: TextStyle(fontSize: 20,)),

            const SizedBox(height: 25,),

            //List of coffees
            Expanded(child: ListView.builder(
              itemCount: value.coffeeShop.length,
              itemBuilder: (context, index){

              //get individual coffees
              Coffee eachCoffee = value.coffeeShop[index];

              //return title
              return CoffeeTile(coffee: eachCoffee,
              onPressed: ()=> addtocart(eachCoffee),
              icon: Icon(Icons.add),);

            }))
          ],
        ),
      ),
    ),
      );
  }
}