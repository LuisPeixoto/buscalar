import 'package:Buscalar/app/classes/Immobile.dart';

class Immobile_Sale extends Immobile {
  double price_total;

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
      String description,
      String numberPhone,
      String userId,
      String price,
      this.price_total)
      : super(
            cep,
            city,
            borough,
            address,
            longitude,
            latitude,
            images,
            numberRoom,
            numberBedroom,
            type = 'sale',
            area,
            garage,
            description,
            numberPhone,
            userId,
            price);

  double get getPriceTotal => price_total;
  set setPriceTotal(double price) => this.price_total = price_total;

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
        'price': price,
        'description': description,
        'numberPhone': numberPhone,
        'userId': userId
      };
}
