class OnboardingModel {
  String description;
  String image;

  OnboardingModel({required this.description, required this.image});
}

List<OnboardingModel> data = [
  OnboardingModel(
    description:
        'Welcome to Your New Shopping Adventure!',
    image: "assets/p3.json",
  ),
  OnboardingModel(
    description:
        'Get excited! Our platform is designed to make your shopping experience unique and enjoyable.',
    image: "assets/p2.json",
  ),
  OnboardingModel(
    description: 'Explore, shop, and enjoy swift deliveries—all in one place. Ready to dive in?',
    image: "assets/p3#.json",
  ),
];
