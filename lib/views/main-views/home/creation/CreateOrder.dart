import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:my_compta_app/constants/memory.dart';
import 'package:my_compta_app/models/product/Product.dart';

class CreateOrder extends StatefulWidget {
  @override
  _CreateOrderState createState() => _CreateOrderState();
}

class _CreateOrderState extends State<CreateOrder> {
  final _formKey = GlobalKey<FormState>();
  final quantityController = TextEditingController(text: '1');
  Product selectedProduct;

  @override
  Widget build(BuildContext context) {
    final titleStyle = TextStyle(
      fontWeight: FontWeight.w600,
      fontSize: 20.0,
      color: Colors.black87,
    );

    final textFieldLabelStyle = TextStyle(
      fontWeight: FontWeight.w600,
      fontSize: 16.0,
    );

    return Scaffold(
      appBar: AppBar(
        leading: InkWell(
          onTap: () => Get.back(),
          child: Icon(
            Icons.close,
            color: Colors.black87,
          ),
        ),
        shadowColor: Colors.transparent,
        backgroundColor: Colors.transparent,
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              // Title
              Container(
                margin: EdgeInsets.symmetric(
                  horizontal: 12.0,
                  vertical: 10.0,
                ),
                child: Row(
                  children: [
                    Container(
                      child: Text(
                        "Saisisser les donner de votre commande",
                        style: titleStyle,
                      ),
                    ),
                  ],
                ),
              ),
              // Form
              Form(
                key: _formKey,
                child: Column(
                  children: [
                    TextButton(
                      onPressed: () {
                        showModalBottomSheet(
                          context: context,
                          builder: (context) {
                            return Container(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.all(12.0),
                                    child: Text(
                                      'Vos produit:',
                                      style:
                                          Theme.of(context).textTheme.headline6,
                                    ),
                                  ),
                                  Expanded(
                                    child: ListView.builder(
                                      itemCount: products.length,
                                      itemBuilder: (context, index) {
                                        Product product = products[index];
                                        return ListTile(
                                          onTap: () {
                                            selectedProduct = product;
                                            setState(() {});
                                            Navigator.of(context).pop();
                                          },
                                          leading: Image.network(
                                            product.image.pathOfImage,
                                          ),
                                          title: Text(product.title),
                                        );
                                      },
                                    ),
                                  ),
                                ],
                              ),
                            );
                          },
                        );
                      },
                      child: Container(
                        padding: EdgeInsets.all(12.0),
                        width: MediaQuery.of(context).size.width,
                        decoration: BoxDecoration(
                          color:
                              // selectedProduct != null
                              //     ?
                              Colors.white,
                          // : Theme.of(context).primaryColor,
                          borderRadius: BorderRadius.circular(12.0),
                          boxShadow: [
                            BoxShadow(
                              color: Color(0x22000000),
                              blurRadius: 8.0,
                            ),
                          ],
                        ),
                        child: selectedProduct != null
                            ? ListTile(
                                leading: Image.network(
                                  selectedProduct.image.pathOfImage,
                                ),
                                title: Text(selectedProduct.title,
                                    style: Theme.of(context).textTheme.headline6
                                    // .copyWith(color: Colors.white),
                                    ),
                              )
                            : Text(
                                'Choisissez un produit',
                                textAlign: TextAlign.center,
                                style: Theme.of(context)
                                    .textTheme
                                    .headline5
                                    .copyWith(
                                      fontWeight: FontWeight.w700,
                                    ),
                              ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.symmetric(
                        vertical: 12.0,
                        horizontal: 16.0,
                      ),
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Expanded(
                            child: TextFormField(
                              validator: (value) {
                                if (value.isEmpty) {
                                  return 'Veuillez saisir la quantité.';
                                }
                                return null;
                              },
                              decoration: InputDecoration(
                                labelText: 'Quantité du produit:',
                                labelStyle: textFieldLabelStyle,
                              ),
                              controller: quantityController,
                              onFieldSubmitted: (t) {
                                if (t.isEmpty) {
                                  quantityController.text = '1';
                                  setState(() {});
                                }
                              },
                              keyboardType: TextInputType.number,
                            ),
                          ),
                        ],
                      ),
                    ),
                    selectedProduct != null &&
                            quantityController.text.isNumericOnly
                        ? Container(
                            padding: EdgeInsets.symmetric(vertical: 16.0),
                            child: Text(
                              'Total: ' +
                                  (selectedProduct.price *
                                          int.parse(quantityController.text))
                                      .toStringAsFixed(2),
                              style: Theme.of(context).textTheme.headline5,
                            ),
                          )
                        : Container(),
                    FlatButton(
                      onPressed: () => submitForm(),
                      child: Text("Ajouter"),
                      color: Theme.of(context).primaryColor,
                      textColor: Colors.white,
                      padding: EdgeInsets.all(16.0),
                      minWidth: MediaQuery.of(context).size.width - 18,
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  submitForm() async {
    Navigator.of(context).pop();
    //
  }
}
