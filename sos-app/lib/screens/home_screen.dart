import 'package:flutter/material.dart';
import 'package:flutter_app/widgets/app_bar_default.dart';
import 'package:flutter_app/widgets/bottom_nav_bar.dart';
import './login_screeen.dart';
import './add_number_screen.dart';
import './emergency_contact_screen.dart';
import 'package:carousel_slider/carousel_slider.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    DateTime currentDate = DateTime.now();
    String month = "Month";

    switch ((currentDate.month)) {
      case 1:
        month = "January";
        break;
      case 2:
        month = "February";
        break;
      case 3:
        month = "March";
        break;
      case 4:
        month = "April";
        break;
      case 5:
        month = "May";
        break;
      case 6:
        month = "June";
        break;
      case 7:
        month = "July";
        break;
      case 8:
        month = "August";
        break;
      case 9:
        month = "September";
        break;
      case 10:
        month = "October";
        break;
      case 11:
        month = "November";
        break;
      case 12:
        month = "December";
        break;
      default:
        print('Unknown Month');
    }

    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          backgroundColor: Colors.grey[200],
          appBar: const MyAppBarDefault(
              // iconType: Icons.logout_outlined,
              // onPressed: () {
              //   navigateToPage(context, const LoginScreen());
              // },
              ),
          body: Center(
              child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text(
                "${currentDate.day}  $month  ${currentDate.year}",
                style:
                    const TextStyle(fontSize: 25, fontWeight: FontWeight.w400),
              ),
              const RoundedContainerTypeOne(height: 168.1),
              const RoundedContainerTypeTwo(height: 90.05),
              const RoundedContainerTypeThree(height: 90.05),
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  // CircularIconButton(
                  //   icon: Icons.call,
                  //   size: 60,
                  //   iconSize: 35,
                  //   onPressed: () {
                  //     navigateToPage(context, const DisasterCategoryScreen());
                  //   },
                  // ),
                ],
              )
            ],
          )),
          bottomNavigationBar: const MyNavBar(),
          // bottomNavigationBar: CurvedNavigationBar(
          //     backgroundColor: Colors.grey.shade200,
          //     color: const Color(0xFFFF4545),
          //     animationDuration: const Duration(milliseconds: 300),
          //     onTap: (index) {
          //       switch (index) {
          //         case 0:
          //           navigateToPage(context, const HomeScreen());
          //           break;
          //         case 1:
          //           navigateToPage(context, const DisasterCategoryScreen());
          //           break;
          //         case 2:
          //           _showOptionsPopup(context);
          //           break;
          //       }
          //     },
          //     items: const [
          //       Icon(
          //         Icons.home,
          //       ),
          //       Icon(
          //         Icons.call,
          //       ),
          //       Icon(
          //         Icons.logout,
          //       ),
          //     ]),
        ));
  }
}

class RoundedContainerTypeOne extends StatelessWidget {
  final double height;

  const RoundedContainerTypeOne({super.key, required this.height});

  @override
  Widget build(BuildContext context) {
    final List<String> images = [
      'https://118.pubsec.gov.lk/img/118-social-post.jpg',
      'https://pbs.twimg.com/media/Dxb47ndVAAI_yjh.jpg',
      'https://th-i.thgim.com/public/news/international/nu7ncy/article66674433.ece/alternates/LANDSCAPE_1200/Suwaseriya.jpg',
    ];

    return Container(
      width: 344,
      height: height, // Adjust the height as needed
      decoration: BoxDecoration(
        color: const Color(0xFFFF6B6B), // Set the background color
        borderRadius: BorderRadius.circular(
            10.0), // Set the border radius for the outer container
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.3), // Set the shadow color
            spreadRadius: 1, // Set the spread radius of the shadow
            blurRadius: 5, // Set the blur radius of the shadow
            offset: const Offset(
                0, 4), // Negative offset to shift the shadow upward
          ),
        ],
      ),
      child: CarouselSlider(
        options: CarouselOptions(
          autoPlay: true,
          aspectRatio: 16 / 9,
          autoPlayCurve: Curves.fastOutSlowIn,
          autoPlayAnimationDuration: const Duration(milliseconds: 800),
          enableInfiniteScroll: true,
          viewportFraction: 1.0,
        ),
        items: images.map((String url) {
          return Builder(
            builder: (BuildContext context) {
              return Container(
                width: MediaQuery.of(context).size.width,
                margin: const EdgeInsets.symmetric(horizontal: 0.0),
                decoration: BoxDecoration(
                  color: const Color(0xFFFF6B6B),
                  borderRadius: BorderRadius.circular(0.0),
                ),
                child: Image.network(
                  url,
                  fit: BoxFit.cover,
                  loadingBuilder: (BuildContext context, Widget child,
                      ImageChunkEvent? loadingProgress) {
                    if (loadingProgress == null) {
                      // Image is fully loaded
                      return child;
                    } else {
                      // Display a loading indicator while the image is loading
                      return Center(
                        child: CircularProgressIndicator(
                          value: loadingProgress.expectedTotalBytes != null
                              ? loadingProgress.cumulativeBytesLoaded /
                                  (loadingProgress.expectedTotalBytes ?? 1)
                              : null,
                        ),
                      );
                    }
                  },
                ),
              );
            },
          );
        }).toList(),
      ),
    );
  }
}

class RoundedContainerTypeTwo extends StatelessWidget {
  final double height;

  const RoundedContainerTypeTwo({super.key, required this.height});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 344,
      height: height, // Adjust the height as needed
      decoration: BoxDecoration(
        color: const Color(0xFFFF6B6B), // Set the background color
        borderRadius: BorderRadius.circular(
            10.0), // Set the border radius for the outer container
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.3), // Set the shadow color
            spreadRadius: 1, // Set the spread radius of the shadow
            blurRadius: 5, // Set the blur radius of the shadow
            offset: const Offset(
                0, 4), // Negative offset to shift the shadow upward
          ),
        ],
      ),
      child: Row(
        children: [
          Expanded(
            flex: 3, // 75% width
            child: Container(
              decoration: const BoxDecoration(
                color: Color(0xFFFF6B6B), // Set the color for the left column
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(
                      10.0), // Set rounded corners for the top-left
                  bottomLeft: Radius.circular(
                      10.0), // Set rounded corners for the bottom-left
                ),
              ),
              child: const Center(
                child: Text(
                  'Add Emergency Number',
                  style: TextStyle(color: Colors.black, fontSize: 18),
                ),
              ),
            ),
          ),
          Expanded(
            flex: 1, // 25% width
            child: Container(
              decoration: const BoxDecoration(
                color: Color(0xFFFFC0C0), // Set the color for the right column
                borderRadius: BorderRadius.only(
                  topRight: Radius.circular(
                      10.0), // Set rounded corners for the top-right
                  bottomRight: Radius.circular(
                      10.0), // Set rounded corners for the bottom-right
                ),
              ),
              child: Center(
                  child: CircularIconButton(
                icon: Icons.add,
                size: 30,
                iconSize: 15,
                onPressed: () {
                  navigateToPage(context, const AddNumberScreen());
                },
              )),
            ),
          ),
        ],
      ),
    );
  }
}

class RoundedContainerTypeThree extends StatelessWidget {
  final double height;

  const RoundedContainerTypeThree({super.key, required this.height});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 344,
      height: height, // Adjust the height as needed
      decoration: BoxDecoration(
        color: Colors.blue, // Set the background color
        borderRadius: BorderRadius.circular(
            10.0), // Set the border radius for the outer container
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.3), // Set the shadow color
            spreadRadius: 1, // Set the spread radius of the shadow
            blurRadius: 5, // Set the blur radius of the shadow
            offset: const Offset(
                0, 4), // Negative offset to shift the shadow upward
          ),
        ],
      ),
      child: Row(
        children: [
          Expanded(
            flex: 3, // 75% width
            child: Container(
              decoration: const BoxDecoration(
                color: Color(0xFFFF6B6B), // Set the color for the left column
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(
                      10.0), // Set rounded corners for the top-left
                  bottomLeft: Radius.circular(
                      10.0), // Set rounded corners for the bottom-left
                ),
              ),
              child: const Center(
                child: Text(
                  'Call Emergency Number',
                  style: TextStyle(color: Colors.black, fontSize: 18),
                ),
              ),
            ),
          ),
          Expanded(
            flex: 1, // 25% width
            child: Container(
              decoration: const BoxDecoration(
                color: Color(0xFFFFC0C0), // Set the color for the right column
                borderRadius: BorderRadius.only(
                  topRight: Radius.circular(
                      10.0), // Set rounded corners for the top-right
                  bottomRight: Radius.circular(
                      10.0), // Set rounded corners for the bottom-right
                ),
              ),
              child: Center(
                  child: CircularIconButton(
                icon: Icons.call,
                size: 30,
                iconSize: 15,
                onPressed: () {
                  navigateToPage(context, const EmergencyContactScreen());
                },
              )),
            ),
          ),
        ],
      ),
    );
  }
}

class CircularIconButton extends StatelessWidget {
  final IconData icon;
  final double size;
  final double iconSize;
  final VoidCallback onPressed;

  const CircularIconButton(
      {super.key,
      required this.icon,
      required this.size,
      required this.iconSize,
      required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: size, // Adjust the width as needed
      height: size, // Adjust the height as needed
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.3),
            spreadRadius: 2,
            blurRadius: 5,
            offset: const Offset(0, 2),
          )
        ],
        color: const Color(
            0xFFCA3333), // Set the background color for the circular icon button
      ),
      child: IconButton(
        icon: Icon(
          icon,
          color: Colors.black,
          size: iconSize, // Set the icon color for the circular icon button
        ),
        alignment: Alignment.center,
        onPressed: onPressed,
      ),
    );
  }
}

Future<void> _showOptionsPopup(BuildContext context) async {
  return showDialog<void>(
    context: context,
    builder: (BuildContext context) {
      return AlertDialog(
        title: const Text(
          'Are sure you want to logout ?',
          style: TextStyle(fontSize: 18),
        ),
        actions: [
          TextButton(
            onPressed: () {
              Navigator.pop(context); // Close the popup
              navigateToPage(context, const LoginScreen());
            },
            child: const Text('Yes'),
          ),
          TextButton(
            onPressed: () {
              Navigator.pop(context);
            }, // Close the popup
            child: const Text('No'),
          ),
        ],
      );
    },
  );
}

void navigateToPage(BuildContext context, Widget page) {
  Navigator.push(
    context,
    MaterialPageRoute(builder: (context) => page),
  );
}
