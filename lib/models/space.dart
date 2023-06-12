// ignore_for_file: public_member_api_docs, sort_constructors_first
class Space {
  final int id;
  final String name;
  final String imageUrl;
  final int price;
  final String city;
  final String country;
  final int rating;
  final String address;
  final String phone;
  final String mapUrl;
  final List photos;
  final int numberOfKitchens;
  final int numberOfBedrooms;
  final int numberOfCupboards;

  Space({
    required this.id,
    required this.name,
    required this.imageUrl,
    required this.price,
    required this.city,
    required this.country,
    required this.rating,
    required this.address,
    required this.phone,
    required this.mapUrl,
    required this.photos,
    required this.numberOfKitchens,
    required this.numberOfBedrooms,
    required this.numberOfCupboards,
  });

  factory Space.fromJson(Map<String, dynamic> json) => Space(
        id: json["id"],
        name: json["name"],
        imageUrl: json["image_url"],
        price: json["price"],
        city: json["city"],
        country: json["country"],
        rating: json["rating"],
        address: json["address"],
        phone: json["phone"],
        mapUrl: json["map_url"],
        photos: json["photos"],
        numberOfKitchens: json["number_of_kitchens"],
        numberOfBedrooms: json["number_of_bedrooms"],
        numberOfCupboards: json["number_of_cupboards"],
      );
}
