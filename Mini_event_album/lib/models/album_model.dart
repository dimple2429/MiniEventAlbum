class Photo {
  final String id;
  final String eventId;
  final String url;

  Photo({
    required this.id,
    required this.eventId,
    required this.url,
  });

  factory Photo.fromJson(Map<String, dynamic> json) {
    return Photo(
      id: json['id'],
      eventId: json['eventId'],
      url: json['url'],
    );
  }
}