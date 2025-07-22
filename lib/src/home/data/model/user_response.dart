class UserResponse {
  final String registrationId;
  final String fullName;
  final String email;
  final String mobile;
  final String jobTitle;
  final String company;
  final int id;

  UserResponse({
    required this.registrationId,
    required this.fullName,
    required this.email,
    required this.mobile,
    required this.jobTitle,
    required this.company,
    required this.id,
  });

  factory UserResponse.fromJson(Map<String, dynamic> json) => UserResponse(
    registrationId: json["registrationId"]??"",
    fullName: json["fullName"]??"",
    email: json["email"]??"",
    mobile: json["mobile"]??"",
    jobTitle: json["jobTitle"]??"",
    company: json["company"]??"",
    id: json["id"],
  );

}
