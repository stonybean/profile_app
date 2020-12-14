class Project {
  final int id;
  final String imageUrl;
  final String thumbnailUrl;
  final String title;
  final String startDate;
  final String endDate;
  final String details;

  Project({
    this.id,
    this.imageUrl,
    this.thumbnailUrl,
    this.title,
    this.startDate,
    this.endDate,
    this.details
  });

  factory Project.fromJson(Map<String, dynamic> json) {
    return Project(
      id: json['id'] as int,
      imageUrl: json['imageUrl'] as String,
      thumbnailUrl: json['thumbnailUrl'] as String,
      title: json['title'] as String,
      startDate: json['startDate'] as String,
      endDate: json['endDate'] as String,
      details: json['details'] as String,
    );
  }
}
