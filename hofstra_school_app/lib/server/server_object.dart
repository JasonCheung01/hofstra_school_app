class Users {
  final String birthday;
  final List<String> schedule;
  final String email;
  final String major;
  final String name;

  Users({
    required this.birthday,
    required this.schedule,
    required this.email,
    required this.major,
    required this.name,
  });

  toJson() {
    var jsonSchedule = {};
    int count = 1;
    for (var element in schedule) {
      jsonSchedule['class$count'] = element;
      count++;
    }
    return {
      'id': 1,
      //'birthday': birthday,
      // 'schedule': jsonSchedule,
      // 'email': email,
      // 'major': major,
      'name': name,
    };
  }

  factory Users.fromJson(Map<String, dynamic> json) {
    return Users(
      birthday: json['birthday'],
      schedule: json['schedule'],
      email: json['email'],
      major: json['major'],
      name: json['name'],
    );
  }
}
