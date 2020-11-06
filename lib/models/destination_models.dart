import 'activity_model.dart';

class Destination {
  String imageUrl;
  String city;
  String country;
  String description;
  List<Activity> activities;

  Destination(
      {this.imageUrl,
      this.city,
      this.country,
      this.description,
      this.activities});
}

List<Activity> activities = [
  Activity(
      imageUrl: 'assets/images/clay.jpg',
      name: 'St. Mark\'s Basilica',
      type: 'Sightseeing Tour',
      startTimes: ['9:00am', '11:00am'],
      rating: 5,
      price: 30),
  Activity(
      imageUrl: 'assets/images/ahmed-yaaniu-RDnYlufMFAw-unsplash.jpg',
      name: 'Muramo and Burano Tour',
      type: 'Sightseeing Tour',
      startTimes: ['9:00am', '11:00am'],
      rating: 4,
      price: 218),
  Activity(
      imageUrl: 'assets/images/sara-dubler-Koei_7yYtIo-unsplash.jpg',
      name: 'Walking Tour and Ganodola ride',
      type: 'Sightseeing Tour',
      startTimes: ['11:00am', '1:00pm'],
      rating: 4,
      price: 215),
];

List<Destination> destinations = [
  Destination(
      imageUrl: 'assets/images/sara-dubler-Koei_7yYtIo-unsplash.jpg',
      country: 'Kenya',
      city: 'Nairobi',
      description: 'Visit Nairobi for an amazing and unforgettable adventure',
      activities: activities),
  Destination(
      imageUrl: 'assets/images/ahmed-yaaniu-RDnYlufMFAw-unsplash.jpg',
      country: 'Zimbabwe',
      city: 'Rhonda',
      description: 'Visit Rhonda for an amazing and unforgettable adventure',
      activities: activities),
  Destination(
      imageUrl: 'assets/images/winter.jpg',
      country: 'UAE',
      city: 'Abhou dhabi',
      description: 'Visit for an unforgettable adventure',
      activities: activities),
  Destination(
      imageUrl: 'assets/images/taylor.jpg',
      country: 'France',
      city: 'Paris',
      description: 'Visit Rhonda for an amazing and unforgettable adventure',
      activities: activities)
];
