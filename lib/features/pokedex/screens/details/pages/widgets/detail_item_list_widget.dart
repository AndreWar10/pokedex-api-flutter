import 'package:flutter/material.dart';
import 'package:pokedex/common/models/pokemon.dart';

class DetailItemListWidget extends StatelessWidget {
  const DetailItemListWidget(
      {Key? key, required this.isDiff, required this.pokemon})
      : super(key: key);
  final bool isDiff;
  final Pokemon pokemon;

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.bottomCenter,
      child: AnimatedOpacity(
        duration: Duration(milliseconds: 200),
        opacity: isDiff ? 0.4 : 1.0,
        child: TweenAnimationBuilder<double>(
            duration: Duration(milliseconds: 200),
            tween: Tween<double>(
              end: isDiff ? 100 : 200,
              begin: isDiff ? 200 : 100,
            ),
            builder: (context, value, child) {
              return Image.network(
                pokemon.image,
                width: value,
                color: isDiff ? Colors.black.withOpacity(0.4) : null,
              );
            }),
      ),
    );
  }
}
