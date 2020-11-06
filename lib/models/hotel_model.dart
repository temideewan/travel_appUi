class Hotel {
  String imageUrl;
  String name;
  String address;
  int price;

  Hotel({this.imageUrl, this.address, this.name, this.price});
}

final List<Hotel> hotels = [
  Hotel(
      imageUrl: 'assets/images/clay.jpg',
      name: 'Hotel2',
      address: '42 Raymond Crescent',
      price: 175),
  Hotel(
      imageUrl: 'assets/images/brett.jpg',
      name: 'Hotel1',
      address: '42 JoeBiden Crescent',
      price: 300),
  Hotel(
      imageUrl: 'assets/images/taylor-simpson-GdwGZbU8PgI-unsplash.jpg',
      name: 'Hotel75',
      address: '42 rhonda blues',
      price: 500),
];
