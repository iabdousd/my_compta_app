import 'package:flutter/material.dart';
import 'package:my_compta_app/views/main-views/home/creation/CreateProduct.dart';
import 'package:my_compta_app/widgets/home/creation/CreationItemButton.dart';
import 'package:my_compta_app/widgets/home/creation/CreationPageHeader.dart';

import 'CreateOrder.dart';

class CreationPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        children: [
          CreationPageHeader(),
          CreationItemButton(
            title: 'Ajouter un produit',
            leadingIcon: Icon(
              Icons.work,
              color: Theme.of(context).primaryColor,
            ),
            nextPage: CreateProduct(),
          ),
          CreationItemButton(
            title: 'Ajouter une commande',
            leadingIcon: Icon(
              Icons.transfer_within_a_station,
              color: Theme.of(context).primaryColor,
            ),
            nextPage: CreateOrder(),
          ),
          // CreationItemButton(
          //   title: 'Ajouter une dépense',
          //   leadingIcon: Icon(
          //     Icons.money,
          //     color: Theme.of(context).primaryColor,
          //   ),
          //   nextPage: this,
          // ),
        ],
      ),
    );
  }
}
