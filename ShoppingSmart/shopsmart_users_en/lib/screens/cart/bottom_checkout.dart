import 'package:flutter/material.dart';
import 'package:shopsmart_users_en/widgets/subtitle_text.dart';
import 'package:shopsmart_users_en/widgets/title_text.dart';

class CartBottomSheetWidget extends StatelessWidget {
  const CartBottomSheetWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Theme.of(context).scaffoldBackgroundColor,
        border: Border(top: BorderSide(width: 1, color: Colors.grey)),
      ),

      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SizedBox(
          height: kBottomNavigationBarHeight + 10,
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Flexible(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    FittedBox(
                      child: TitlesTextWidget(
                        label: "Total (6 products / 9 items)",
                      ),
                    ),
                    SubtitleTextWidget(label: "16.00\$", color: Colors.blue),
                  ],
                ),
              ),
              ElevatedButton(onPressed: () {}, child: Text('Checkout')),
            ],
          ),
        ),
      ),
    );
  }
}
