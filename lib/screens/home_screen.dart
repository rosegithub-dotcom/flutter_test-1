import 'package:flutter/material.dart';
import '../widgets/app_bar.dart';
import '../widgets/video_card.dart';
import '../widgets/bottom_navigation_bar.dart';

class HomeScreen extends StatelessWidget {
  final List<Map<String, String>> videoData = [
    {'title': 'Flutter Tutorial', 'description': 'Learn Flutter step by step'},
    {
      'title': 'React Native vs Flutter',
      'description': 'Comparing mobile frameworks'
    },
    {'title': 'Dart Basics', 'description': 'Introduction to Dart programming'},
    {
      'title': 'State Management in Flutter',
      'description': 'Understand Provider and Bloc'
    },
    {
      'title': 'Animations in Flutter',
      'description': 'Making smooth animations'
    },
    // Add more videos as needed
  ];

  final List<String> categories = [
    'All',
    'Programming',
    'Music',
    'Education',
    'Entertainment',
    // Add more categories as needed
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(),
      body: ListView(
        children: [
          // Video categories section
          Padding(
            padding: EdgeInsets.all(8.0),
            child: Text(
              "Categories",
              style: TextStyle(color: Colors.white, fontSize: 18),
            ),
          ),
          // Horizontal list of categories
          SizedBox(
            height: 50,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: categories.length,
              itemBuilder: (context, index) {
                return Container(
                  margin: EdgeInsets.symmetric(horizontal: 8.0),
                  padding:
                      EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
                  decoration: BoxDecoration(
                    color: Colors.grey[800],
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Center(
                    child: Text(
                      categories[index],
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                );
              },
            ),
          ),

          // Shorts section
          Padding(
            padding: EdgeInsets.all(8.0),
            child: Text(
              "Shorts",
              style: TextStyle(color: Colors.white, fontSize: 18),
            ),
          ),

          // Horizontal scrolling shorts with descriptions inside the thumbnails
          SizedBox(
            height: 250, // Adjust height for shorts section
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: 8, // Example number of shorts (you can adjust)
              itemBuilder: (context, index) {
                return Container(
                  width: 150, // Adjust width to ensure 4 items per view
                  margin: EdgeInsets.symmetric(horizontal: 8.0),
                  child: Stack(
                    // Stack to overlay text on the video thumbnail
                    children: [
                      // Short video thumbnail with curved edges
                      ClipRRect(
                        borderRadius: BorderRadius.circular(10.0),
                        child: Container(
                          height: 250, // Height for the short video box
                          width: double.infinity,
                          color: Colors.grey[700], // Placeholder color
                          child: Center(
                            child: Icon(
                              Icons.play_circle_outline,
                              color: Colors.white,
                              size: 40.0,
                            ),
                          ),
                        ),
                      ),
                      // Positioned widget to overlay the title and description
                      Positioned(
                        bottom:
                            10, // Positioning at the bottom inside the video box
                        left: 10,
                        right: 10,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            // Short video title inside thumbnail
                            Text(
                              'Short Video $index',
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 14,
                              ),
                              maxLines: 1,
                              overflow: TextOverflow.ellipsis,
                            ),
                            // Short video description inside thumbnail
                            Text(
                              'Description for short video $index',
                              style: TextStyle(
                                color: Colors.white60,
                                fontSize: 12,
                              ),
                              maxLines: 1,
                              overflow: TextOverflow.ellipsis,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                );
              },
            ),
          ),

          // Main video content (using ListView for videos)
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: List.generate(videoData.length, (index) {
                return Padding(
                  padding: const EdgeInsets.symmetric(vertical: 8.0),
                  child: VideoCard(
                    title: videoData[index]['title']!,
                    description: videoData[index]['description']!,
                  ),
                );
              }),
            ),
          ),
        ],
      ),
      bottomNavigationBar:
          CustomBottomNavBar(), // Bottom nav bar with icon labels
      backgroundColor: Colors.black,
    );
  }
}
