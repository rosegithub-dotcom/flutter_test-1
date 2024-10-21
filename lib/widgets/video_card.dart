import 'package:flutter/material.dart';

class VideoCard extends StatelessWidget {
  final String title;
  final String description;

  const VideoCard({required this.title, required this.description});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // Video thumbnail with curved edges
        ClipRRect(
          borderRadius:
              BorderRadius.circular(10.0), // Curved edges for the thumbnail
          child: Container(
            height: 150, // Adjust thumbnail height
            width: double.infinity,
            color: Colors.grey[700], // Placeholder color for the thumbnail
            child: Center(
              child: Icon(
                Icons.play_circle_outline,
                color: Colors.white,
                size: 40.0,
              ),
            ),
          ),
        ),
        // Padding between the thumbnail and text content
        SizedBox(height: 8.0),
        // Video title below the thumbnail
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 4.0),
          child: Text(
            title,
            style: TextStyle(
              color: Colors.white,
              fontSize: 14,
              fontWeight: FontWeight.bold,
            ),
            maxLines: 1, // Limit title to a single line
            overflow:
                TextOverflow.ellipsis, // Ellipsis if the title is too long
          ),
        ),
        // Video description below the title
        Text(
          description,
          style: TextStyle(
            color: Colors.white60,
            fontSize: 12,
          ),
          maxLines: 2, // Limit description to two lines
          overflow: TextOverflow.ellipsis, // Ellipsis for long descriptions
        ),
      ],
    );
  }
}
