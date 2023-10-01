import 'package:flutter/material.dart';
class ExeTile extends StatelessWidget {
  final icon;
  final String name;
  final int num;
  final color;
  const ExeTile({required this.color,required this.icon , required this.name , required this.num,super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 12.0),
      child: Container(
        padding: EdgeInsets.all(12),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16),
          color: Colors.white,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(12),
                  child: Container(child: Icon(icon,color: Colors.white,),
                    padding: EdgeInsets.all(16),
                    color: color,
                  ),
                ),
                SizedBox(
                  width: 12,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      name,
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                      ),
                    ),
                    SizedBox(height: 5),
                    Text(
                      "${num} Exercises",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.grey,
                        fontSize: 14,
                      ),
                    )
                  ],
                ),
              ],
            ),
            Icon(Icons.more_horiz),
          ],
        ),
      ),
    );
  }
}
