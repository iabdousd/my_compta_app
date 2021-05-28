import 'package:my_compta_app/models/media/ImageMedia.dart';
import 'package:my_compta_app/models/product/Product.dart';

List<Product> products = [
  Product(
    id: 1,
    title: 'iPhone 12 128gb',
    createdAt: DateTime.now().subtract(Duration(days: 1, hours: 2, minutes: 3)),
    price: 18000,
    image: ImageMedia(
      id: 1,
      createdAt:
          DateTime.now().subtract(Duration(days: 1, hours: 2, minutes: 3)),
      lastUse: DateTime.now().subtract(Duration(days: 1, hours: 2, minutes: 3)),
      name: 'ix',
      ext: 'jpg',
      pathOfImage:
          'https://www.bsetechnology.com/wp-content/uploads/2018/07/iPhoneX-silver-1.jpg',
    ),
  ),
  Product(
    id: 1,
    title: 'iPhone 12 512gb',
    createdAt: DateTime.now().subtract(Duration(days: 1, hours: 2, minutes: 3)),
    price: 18000,
    image: ImageMedia(
      id: 1,
      createdAt:
          DateTime.now().subtract(Duration(days: 1, hours: 2, minutes: 3)),
      lastUse: DateTime.now().subtract(Duration(days: 1, hours: 2, minutes: 3)),
      name: 'ix',
      ext: 'jpg',
      pathOfImage:
          'https://www.bsetechnology.com/wp-content/uploads/2018/07/iPhoneX-silver-1.jpg',
    ),
  ),
  Product(
    id: 1,
    title: 'iPhone 12 1tb',
    createdAt: DateTime.now().subtract(Duration(days: 1, hours: 2, minutes: 3)),
    price: 18000,
    image: ImageMedia(
      id: 1,
      createdAt:
          DateTime.now().subtract(Duration(days: 1, hours: 2, minutes: 3)),
      lastUse: DateTime.now().subtract(Duration(days: 1, hours: 2, minutes: 3)),
      name: 'ix',
      ext: 'jpg',
      pathOfImage:
          'https://www.bsetechnology.com/wp-content/uploads/2018/07/iPhoneX-silver-1.jpg',
    ),
  ),
];
