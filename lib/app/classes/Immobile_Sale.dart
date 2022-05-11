import 'package:buscalar/app/classes/Immobile.dart';

class Immobile_Sale extends Immobile {
  double price;

  Immobile_Sale(
      String cep,
      String city,
      String borough,
      String address,
      String longitude,
      String latitude,
      List<String> images,
      String numberRoom,
      String numberBedroom,
      String type,
      String area,
      String garage,
      this.price)
      : super(cep, city, borough, address, longitude, latitude, images,
            numberRoom, numberBedroom, type = 'sale', area, garage);

  double get getPrice => price;
  set setPrice(double price) => this.price = price;

  List<double> simulateFinancingPrice(double price) {
    List<double> priceList = [];

    for (int i = 0; i < 10; i++) {
      priceList.add(price + (price * (i * 0.1)));
    }

    return priceList;
  }

  @override
  Map<String, dynamic> get getImmobile => {
        'cep': cep,
        'city': city,
        'borough': borough,
        'address': address,
        'longitude': longitude,
        'latitude': latitude,
        'images': images,
        'numberRoom': numberRoom,
        'numberBedroom': numberBedroom,
        'type': type,
        'area': area,
        'garage': garage,
        'price': price
      };
}
