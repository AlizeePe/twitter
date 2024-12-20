class Tweet {
  int? id;
  String? profile;
  DateTime? date;
  String? author;
  String? message;

  Tweet(this.id, this.profile, this.date, this.author, this.message);

  Tweet.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    profile = json['profile'];
    date = DateTime.fromMillisecondsSinceEpoch(json['created_date'] * 1000);
    author = json['author'];
    message = json['message'];
  }
}
