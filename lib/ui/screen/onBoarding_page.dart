import 'package:flutter/material.dart';
import 'package:onboarding_ui/ui/screen/onBording.dart';

class OnBoardingPage extends StatefulWidget {
  const OnBoardingPage({super.key});

  @override
  State<OnBoardingPage> createState() => _OnBoardingPageState();
}

class _OnBoardingPageState extends State<OnBoardingPage> {

   final List<OnBoardingEntity> _onBoardingData = OnBoardingEntity.onBoardingData;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView.builder(
        itemCount: _onBoardingData.length,
        itemBuilder: (context , index) {
          return OnBoardingItem(
            title: _onBoardingData[index].title, 
            description: _onBoardingData[index].description, 
            image: _onBoardingData[index].image, 
            index: index,
            );
        }
        ),
    );
  }
}

class OnBoardingItem extends StatelessWidget {
  final String title;
  final String description;
  final String image;
  final int index;

  const OnBoardingItem({super.key, 
  required this.title, 
  required this.description, required this.image, required this.index});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Center(
          child: Image.asset("assets/$image"),
         ),
        const SizedBox(height: 20), 
        Text(
          title,
           style: const TextStyle(
            fontSize: 38,
            fontWeight: FontWeight.bold,
           ),
          ),
        const SizedBox(height: 20),
        Text(
          description,
          textAlign: TextAlign.center,
          style: const TextStyle(
            color: Colors.grey,
            fontSize: 18,
          ),
          ),
        const SizedBox(height: 50),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              height: 10, 
              width: 10, 
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: index == 0 ? Colors.black : Colors.grey,
              ),
            ),
            const SizedBox(width: 15),
            Container(
              height: 10, 
              width: 10, 
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: index == 1 ? Colors.black : Colors.grey,
              ),
            ),
            const SizedBox(width: 15),
            Container(
              height: 10, 
              width: 10, 
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: index == 2 ? Colors.black : Colors.grey,
              ),
            ),
          ],
        )     
      ],
    );
  }
}