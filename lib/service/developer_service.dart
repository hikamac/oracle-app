import '../models/developer.dart';

class DeveloperService {
  static List<Developer> getMembers() {
    List<Developer> member = <Developer>[];
    member.add(
        Developer(name: "name", organization: "organization", team: "team"));
    member.add(
        Developer(name: "name", organization: "organization", team: "team"));
    member.add(
        Developer(name: "name", organization: "organization", team: "team"));
    member.add(
        Developer(name: "name", organization: "organization", team: "team"));
    member.add(
        Developer(name: "name", organization: "organization", team: "team"));
    member.add(
        Developer(name: "name", organization: "organization", team: "team"));
    member.add(
        Developer(name: "name", organization: "organization", team: "team"));
    return member;
  }
}
