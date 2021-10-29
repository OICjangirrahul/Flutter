import 'package:firstapp/model/product.dart';
import 'package:firstapp/model/product_operations.dart';
import 'package:flutter/material.dart';

class GrocApp extends StatelessWidget {
  const GrocApp({Key? key}) : super(key: key);

  Widget bannerImage() {
    const imageURL =
        'https://i2.wp.com/www.fb101.com/wp-content/uploads/2019/07/FoodProductTop.jpg';
    return Image.network(imageURL);
  }

  _searchForProducts() {
    return Container(
      color: Colors.grey.shade200,
      margin: EdgeInsets.all(10),
      child: TextField(
        style: TextStyle(fontSize: 20),
        decoration: InputDecoration(
          border: InputBorder.none,
          hintText: "Search for Products",
          prefixIcon: Icon(Icons.search),
        ),
      ),
    );
  }

  Widget _getProduct(String imageURL, String label) {
    return Column(
      children: [
        Container(
            margin: EdgeInsets.all(5),
            width: 100,
            height: 100,
            child: Image.network(imageURL)),
        Text(label)
      ],
    );
  }

  // _rowProducts() {
  //   return Row(
  //     mainAxisAlignment: MainAxisAlignment.center,
  //     children: [_getProduct(), _getProduct(), _getProduct()],
  //   );
  // }

  _allProducts() {
    // Call ProductOperations
    List<Product> products = ProductOperations.fillProducts();
    // products contains the data
    // data convert into widgets
    List<Widget> productWidgets = products.map((product) {
      Widget productWidget = _getProduct(product.imageURL, product.label);
      return productWidget;
    }).toList();

    return Container(
      margin: EdgeInsets.only(top: 10, left: 30),
      child: Wrap(
        children: productWidgets,
      ),
    );
    /*int count = 0;
    List<Widget> threeProducts = [];
    List<Widget> rows = [];
    for (int i = 0; i < productWidgets.length; i++) {
      count++;
      threeProducts.add(productWidgets[i]);
      if (count % 3 == 0) {
        rows.add(Row(
            children: threeProducts,
            mainAxisAlignment: MainAxisAlignment.start));
        threeProducts = [];
      }
    }
    if (threeProducts.length > 0) {
      rows.add(Row(
          children: threeProducts, mainAxisAlignment: MainAxisAlignment.start));
    }
    return Container(
      margin: EdgeInsets.only(top: 10, left: 30),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: rows,
        //children: [_rowProducts(), _rowProducts(), _rowProducts()],
      ),
    );
    */
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.menu),
        title: Text('A-11,Shakti Nagar'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [_searchForProducts(), bannerImage(), _allProducts()],
        ),
      ),
    );
  }
}
