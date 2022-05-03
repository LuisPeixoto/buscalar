import 'package:buscalar/app/classes/Immobile.dart';

class Immobile_Daily extends Immobile {
  double priceDay;

  Immobile_Daily(
      String cep,
      String city,
      String borough,
      String address,
      String longitude,
      String latitude,
      String images,
      String numberRoom,
      String numberBedroom,
      String type,
      String area,
      String garage,
      this.priceDay)
      : super(cep, city, borough, address, longitude, latitude, images,
            numberRoom, numberBedroom, type = 'daily', area, garage);

  double get getPriceDay => priceDay;
  set setPriceDay(double priceDay) => this.priceDay = priceDay;

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
        'price': priceDay
      };

  List<double> simulateFinancingPrice(double price) {
    List<double> priceList = [];

    for (int i = 0; i < 10; i++) {
      priceList.add(price + (price * (i * 0.1)));
    }

    return priceList;
  }
}
