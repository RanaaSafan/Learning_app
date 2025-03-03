


import 'package:education_app/features/splash/data/onboarding_model.dart';

class OnboardingData{
  List<OnboardingModel> getOnboardingPages(){
    return [
      OnboardingModel(title:"Online Learning" , description:"We Provide Classes Online Classes and Pre Recorded Leactures.!" , image:"assets/images/Cool Kids Staying Home.png" ),
      OnboardingModel(title:"Learn from Anytime" , description:"Booked or Same the Lectures for Future" , image:"assets/images/Cool Kids Long Distance Relationship.png" ),
      OnboardingModel(title:"Get Online Certificate" , description:"Analyse your scores and Track your results" , image:"assets/images/Cool Kids High Tech.png" ),
    ];
  }
}
