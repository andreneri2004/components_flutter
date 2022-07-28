import 'package:flutter/material.dart';
import 'package:components/theme/app_theme.dart';

class CustomCardType1 extends StatelessWidget {
  const CustomCardType1({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        children: [
          const ListTile(
            leading:
                Icon(Icons.account_balance_wallet, color: AppTheme.primary),
            title: Text('Primeiro card'),
            subtitle: Text(
                'Enim non mollit enim nisi incididunt eu proident adipisicing culpa veniam excepteur nostrud ipsum consequat. Id exercitation et elit in elit incididunt anim. '),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 5),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                TextButton(
                  onPressed: () {},
                  child: const Text('Cancelar'),
                ),
                TextButton(
                  onPressed: () {},
                  child: const Text('Ok'),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
