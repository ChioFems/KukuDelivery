import 'package:flutter/material.dart';

// Widgets
import '../widgets/order_card.dart';

class OrderPage extends StatefulWidget{
  _OrderPageState createState() => _OrderPageState();
}

class _OrderPageState extends State<OrderPage>{
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: Text("Your Food Cart", style: TextStyle(color: Colors.black),),
        centerTitle: true,
        backgroundColor: Colors.white,
        elevation: 0.0,
      ),
        body: ListView(
        padding: EdgeInsets.symmetric(horizontal: 10.0),
        scrollDirection: Axis.vertical,
        children: <Widget>[
          OrderCard(),
          OrderCard(),
        ],
      ),
      bottomNavigationBar: _buildTotalContainer(),
    );
  }

  Widget _buildTotalContainer(){
    return Container(
      height: 220.0,
      margin: EdgeInsets.only(top: 20.0),
      padding: EdgeInsets.symmetric(horizontal: 10.0),
      child: Column(
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Text("Cart Total", style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.bold, color: Colors.grey)),
              Text("4000", style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.bold, color: Color(0xFFD3D3D3))),
            ],
          ),
          SizedBox(height: 10.0),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Text("Discount", style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.bold, color: Colors.grey)),
              Text("500", style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.bold, color: Color(0xFFD3D3D3))),
            ],
          ),
          SizedBox(height: 10.0),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Text("Tax", style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.bold, color: Colors.grey)),
              Text("200", style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.bold, color: Color(0xFFD3D3D3))),
            ],
          ),
          Divider(height: 40.0, color: Color(0xFFD3D3D3)),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Text("Sub Total", style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.bold, color: Colors.grey)),
              Text("3500", style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.bold, color: Color(0xFFD3D3D3))),
            ],
          ),
          SizedBox(height: 20.0),
          Container(
            width: MediaQuery.of(context).size.width,
            height: 50.0,
            decoration: BoxDecoration(
              color: Theme.of(context).primaryColor,
              borderRadius: BorderRadius.circular(30.0),
            ),
            child: Center(
              child: Text("Proceed to Checkout", style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 18.0,)),
            ),
                      ),
        ],
      ),
    );
  } 
}