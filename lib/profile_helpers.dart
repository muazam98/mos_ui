import 'package:salon_mos/models/profile.dart';
import 'package:salon_mos/utils/profiles.dart';

List<Profile> getNotSelectedProfiles({int selectedIndex}) {
  final Profile selectedProfile = profiles[selectedIndex];
  return List.of(profiles)
    ..removeWhere((profile) => profile == selectedProfile);
}
