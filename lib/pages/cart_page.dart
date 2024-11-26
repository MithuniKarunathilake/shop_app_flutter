import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shop_app/constants/colors.dart';
import 'package:shop_app/model/cart_model.dart';

class CartPage extends StatelessWidget {
  const CartPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('My Cart')),
      body: Consumer<CartModel>(
        builder: (context, value, child) {
          return Column(
            children: [
              Expanded(
                child: ListView.builder(
                  itemCount: value.cartItems.length,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.all(12.0),
                      child: Container(
                        decoration: BoxDecoration(
                            color: Colors.grey[200],
                          borderRadius: BorderRadius.circular(8),
                        ),
                        child: ListTile(
                          leading: Image.asset(value.cartItems[index][2],height: 36,),
                          title: Text(value.cartItems[index][0],),
                          subtitle: Text('Rs.'+ value.cartItems[index][1]),
                          trailing: IconButton(onPressed: () => Provider.of<CartModel>(context, listen: false).removeItemFromCart(index), icon: Icon(Icons.delete)),
                        ),
                      ),
                    );
                  },
                ),
              ),
              
              Padding(
                padding: const EdgeInsets.all(36.0),
                child: Container(
                  decoration: BoxDecoration(
                      color: Colors.green,
                    borderRadius: BorderRadius.circular(12)
                  ),
                  padding: EdgeInsets.all(24),
                  child: Row(
                    children: [
                      Text("Total Price",
                      style: TextStyle(color: CustomColor.whitePrimary,fontSize: 18,fontWeight: FontWeight.w500),
                      ),
                      Spacer(),
                      Text(value.calculateTotal(),
                        style: TextStyle(color: CustomColor.whitePrimary,fontSize: 18,fontWeight: FontWeight.bold),),
                    ],
                  ),
                ),
              )
            ],
          );
        },
      ),
    );
  }
}
