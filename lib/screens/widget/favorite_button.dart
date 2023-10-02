import 'package:flutter/material.dart';

bool isFavorite = false;

class FavoriteButton extends StatefulWidget {
  const FavoriteButton({super.key});

  @override
  State<FavoriteButton> createState() => _FavoriteButtonState();
}

class _FavoriteButtonState extends State<FavoriteButton> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          height: 46,
          width: 46,
          decoration: BoxDecoration(
            color: const Color(0xFFFF6433).withOpacity(0.17),
            shape: BoxShape.circle,
          ),
          child: IconButton(
            onPressed: () {
              setState(() {
                isFavorite = !isFavorite;
              });
            },
            icon: Icon(
              isFavorite ? Icons.favorite : Icons.favorite,
              color: isFavorite ? Colors.red : Colors.white,
            ),
          ),
        ),
      ],
    );
  }
}
