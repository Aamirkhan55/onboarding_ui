class OnBoardingEntity {
 final String title;
 final String description;
 final String image;

 OnBoardingEntity({
  required this.title,
  required this.description,
  required this.image,
  });

  static List<OnBoardingEntity> onBoardingData = [
    OnBoardingEntity(
      title: 'Order Your Wish ', 
      description: 'You Can Order Anything,\nyou love to eat', 
      image: "image_1.png",
      ),
    OnBoardingEntity(
      title: 'Hot and Spicy', 
      description: 'Order hot and spicy,\nFood with Love',
       image: "image_2.png"
       ),
    OnBoardingEntity(
      title: 'Happy Cookies', 
      description: 'Order best Cookies,\nand Enjoy', 
      image: 'image_3.png'
      ),
  ];
}