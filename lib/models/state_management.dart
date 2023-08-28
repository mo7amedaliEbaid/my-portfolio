import '../utils/constants.dart';

class StateManagement {
  final String name;
  final String logo;

  StateManagement(this.name, this.logo);
}
class StateManagementConstants {
  static StateManagement bloc =
  StateManagement("Bloc", AppConstants.blocImage);
  static StateManagement getx = StateManagement("Getx", AppConstants.getxImage);
  static StateManagement provider =
  StateManagement("Provider", AppConstants.providerImage);
  static StateManagement riverpod =
  StateManagement("Riverpod", AppConstants.riverpodImage);
/*  static TechnologyModel firebase =
  TechnologyModel("Firebase", AppConstants.firebaseImage);
  static TechnologyModel ubuntu =
  TechnologyModel("Ubuntu", AppConstants.ubuntuImage);
  static TechnologyModel rnative =
  TechnologyModel("React Native", AppConstants.rnativeImage);
  static TechnologyModel javascript =
  TechnologyModel("Javascript", AppConstants.javascriptImage);
  static TechnologyModel dart =
  TechnologyModel("Dart", AppConstants.dartImage);
  static TechnologyModel agora =
  TechnologyModel("Agora", AppConstants.agoraImage);*/

  static List<StateManagement> StateManagementLearned = [
    bloc,
    getx,
    provider,
    riverpod,

  ];
}
