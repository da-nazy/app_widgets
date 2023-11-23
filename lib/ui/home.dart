import "package:flutter/material.dart";

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Center(
        child: Container(
            alignment: Alignment.center,
            color: Colors.deepOrangeAccent,
            padding: const EdgeInsets.only(top: 30.0, left: 10.0),
            child: Column(children: <Widget>[
              const Row(
                children: <Widget>[
                  Expanded(
                      child: Text("Margherita",
                          textDirection: TextDirection.ltr,
                          style: TextStyle(
                              fontSize: 30.0,
                              decoration: TextDecoration.none,
                              fontFamily: "Oxygen",
                              fontWeight: FontWeight.normal))),
                  Expanded(
                      child: Text("Tomato, Mozzarella, Basil",
                          textDirection: TextDirection.ltr,
                          style: TextStyle(
                              fontSize: 20.0,
                              decoration: TextDecoration.none,
                              fontFamily: "Oxygen",
                              fontWeight: FontWeight.normal)))
                ],
              ),
              const Row(
                children: <Widget>[
                  Expanded(
                      child: Text("Marinara",
                          textDirection: TextDirection.ltr,
                          style: TextStyle(
                              fontSize: 30.0,
                              decoration: TextDecoration.none,
                              fontFamily: "Oxygen",
                              fontWeight: FontWeight.normal))),
                  Expanded(
                      child: Text("Tomato, Garlic",
                          textDirection: TextDirection.ltr,
                          style: TextStyle(
                              fontSize: 20.0,
                              decoration: TextDecoration.none,
                              fontFamily: "Oxygen",
                              fontWeight: FontWeight.normal)))
                ],
              ),
              PizzaImageWidget(),
              OrderButton(),
            ])));
  }
}

class PizzaImageWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    AssetImage pizzaAsset = AssetImage('images/pizza.png');
    Image image = Image(image: pizzaAsset, width: 400.0, height: 400.0);
    return Container(child: image);
  }
}

class OrderButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    var button = Container(
      margin: const EdgeInsets.only(top: 50.0),
      child: ElevatedButton(
        onPressed: () {
          order(context);
        },
        child: Text("Order your pizza"),
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.lightGreen,
          elevation: 5.0,
        ),
      ),
    );
    return button;
  }

  void order(BuildContext context) {
    var alert = const AlertDialog(
      title: Text("Order Completed"),
      content: Text("Thanks for your order"),
    );

    showDialog(
        context: context,
        // => helps to reduce return{}
        builder: (BuildContext context)=>alert
      );
  }
}
