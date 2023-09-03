import 'package:cooffetute/commponents/coffee_tile.dart';
import 'package:cooffetute/models/coffe.dart';
import 'package:cooffetute/models/coffe_shop.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class CartPage extends StatefulWidget {
  const CartPage({super.key});

  @override
  State<CartPage> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<CartPage> {

void removeFromCart(Coffee coffee){
  Provider.of<CoffeeShop>(context,listen: false).removeItemToCart(coffee);

}


void paynow(){

}


  @override
  Widget build(BuildContext context) {
    return Consumer<CoffeeShop >(builder: (context, value, child)=> SafeArea(
      child: Padding(
        padding: const EdgeInsets.all(25.0),
        child: Column(
          children: [
            Text("Your Cart",
            style: TextStyle(fontSize: 20),),

            Expanded(child: ListView.builder(
              itemCount: value.usercart.length,
              itemBuilder: (context,index){
              Coffee eachCoffee = value.usercart[index];

              return CoffeeTile(coffee: eachCoffee, onPressed: ()=> removeFromCart(eachCoffee), icon: Icon(Icons.delete));
            })),

            GestureDetector(
              onTap: ()=> paynow(),
              child: Container(
                padding: EdgeInsets.all(25),
                width: double.infinity,
                decoration: BoxDecoration(color: Colors.brown,borderRadius: BorderRadius.circular(28)),
                child: Center(
                  child: Text("Pay Now",
                  style: TextStyle(color: Colors.white),),
                ),
                
              ),
            ),


          ],
        ),
      ),
    ));
  }
}