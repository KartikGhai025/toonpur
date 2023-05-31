
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

var profile ="";


List populars = [
  {
    "image": "https://i.ytimg.com/vi/cTCwUJZZWI0/maxresdefault.jpg",
    "name": "Phineas and Ferb",
    "price": "4.5/5",
    "location": "Season 1-5",
    "is_favorited": true,
  },
  {
    "image": "https://i.cartoonnetwork.com/orchestrator/2263312_010_640x360.jpg",
    "name": "Teen Titans",
    "price": "3/5",
    "location": "Season 1-3",
    "is_favorited": false,
  },
  {
    "image": "https://i.ytimg.com/vi/E_lByLdKeKY/maxresdefault.jpg",
    "name": "Mr Bean Animated",
    "price": "4/5",
    "location": "Season 1-5",
    "is_favorited": false,
  },
  {
    "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSxbdZ-NyF7HN0NIvqD94keOoOM3HU0RlzCUA&usqp=CAU",
    "name": "Ben 10 Alien Force",
    "price": "5/5",
    "location": "Season 1-2",
    "is_favorited": false,
  },
];

List recommended = [
  {
    "image": "https://www.denofgeek.com/wp-content/uploads/2022/06/Dragon-Ball-Z-Best-Battles.jpg?resize=768%2C432",
    "name": "Dragon Ball Z",
    "price": "4.5/5",
    "location": "All Seasons",
    "is_favorited": true,
  },
  {
    "image": "https://images-na.ssl-images-amazon.com/images/I/81vtHhR9QkL._SX450_.jpg",
    "name": "Naruto",
    "price": "4/5",
    "location": "Season 1",
    "is_favorited": false,
  },
  {
    "image": "https://www.slashfilm.com/img/gallery/the-death-note-anime-controversy-explained/l-intro-1648848939.jpg",
    "name": "Death Note",
    "price": "5/5",
    "location": "Season 1-5",
    "is_favorited": true,
  },
];

List recents = [

];

List categories = [
  {
    "name" : "All",
    "icon" :  FontAwesomeIcons.list
  },
  {
    "name" : "Kids",
    "icon" :  FontAwesomeIcons.child
  },
  {
    "name" : "Anime",
    "icon" :  FontAwesomeIcons.play
  },
  {
    "name" : "90's",
    "icon" :  FontAwesomeIcons.heart
  },
  {
    "name" : "Series",
    "icon" :  FontAwesomeIcons.server
  },
  {
    "name" : "18+",
    "icon" :  FontAwesomeIcons.centercode
  },
];

var brokers = [
  {
    "image": "https://images.unsplash.com/photo-1544005313-94ddf0286df2?ixid=MXwxMjA3fDB8MHxzZWFyY2h8MjV8fHByb2ZpbGV8ZW58MHx8MHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=800&q=60",
    "name": "John Siphron",
    "type": "Broker",
    "description": "Lorem ipsum is a placeholder text commonly used to demonstrate the visual form of a document",
    "rate": 4,
  },
  {
    "image":"https://images.unsplash.com/photo-1507003211169-0a1dd7228f2d?ixid=MXwxMjA3fDB8MHxzZWFyY2h8MTF8fHByb2ZpbGV8ZW58MHx8MHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=800&q=60",
    "name" : "Corey Aminoff",
    "type": "Broker",
    "description": "Lorem ipsum is a placeholder text commonly used to demonstrate the visual form of a document",
    "rate": 4,
  },
  {
    "image" : "https://images.unsplash.com/photo-1617069470302-9b5592c80f66?ixid=MnwxMjA3fDB8MHxzZWFyY2h8NHx8Z2lybHxlbnwwfHwwfHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=800&q=60",
    "name": "Siriya Aminoff",
    "type": "Broker",
    "description": "Lorem ipsum is a placeholder text commonly used to demonstrate the visual form of a document",
    "rate": 4,
  },
  {
    "image" : "https://images.unsplash.com/photo-1545167622-3a6ac756afa4?ixid=MXwxMjA3fDB8MHxzZWFyY2h8MTB8fHByb2ZpbGV8ZW58MHx8MHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=800&q=60",
    "name": "Rubin Joe",
    "type": "Broker",
    "description": "Lorem ipsum is a placeholder text commonly used to demonstrate the visual form of a document",
    "rate": 4,
  },
];

List companies = [
  {
    "image": "https://images.unsplash.com/photo-1549517045-bc93de075e53?ixid=MXwxMjA3fDB8MHxzZWFyY2h8NHx8Zm9vZHxlbnwwfHwwfA%3D%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=800&q=60",
    "name": "TS Home",
    "location": "Phnom Penh, Cambodia",
    "type": "Broker",
    "is_favorited": false,
    "icon" : Icons.domain_rounded
  },
  {
    "image": "https://images.unsplash.com/photo-1618221469555-7f3ad97540d6?ixid=MXwxMjA3fDB8MHxzZWFyY2h8NHx8Zm9vZHxlbnwwfHwwfA%3D%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=800&q=60",
    "name": "Century 21",
    "location": "Phnom Penh, Cambodia",
    "type": "Broker",
    "is_favorited": true,
    "icon" : Icons.house_siding_rounded
  },
  {
    "image": "https://images.unsplash.com/photo-1625602812206-5ec545ca1231?ixid=MXwxMjA3fDB8MHxzZWFyY2h8NHx8Zm9vZHxlbnwwfHwwfA%3D%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=800&q=60",
    "name": "Dabest Pro",
    "location": "Phnom Penh, Cambodia",
    "type": "Broker",
    "is_favorited": true,
    "icon" : Icons.home_work_rounded
  },
  {
    "image": "https://images.unsplash.com/photo-1625602812206-5ec545ca1231?ixid=MXwxMjA3fDB8MHxzZWFyY2h8NHx8Zm9vZHxlbnwwfHwwfA%3D%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=800&q=60",
    "name": "Cam Reality",
    "location": "Phnom Penh, Cambodia",
    "type": "Broker",
    "is_favorited": true,
    "icon" : Icons.location_city_rounded
  },
];