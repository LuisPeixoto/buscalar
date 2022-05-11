import 'package:buscalar/app/classes/Immobile.dart';

class Immobile_Rent extends Immobile {
  double price_month;
  double price_year;

  Immobile_Rent(
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
      this.price_month,
      this.price_year)
      : super(cep, city, borough, address, longitude, latitude, images,
            numberRoom, numberBedroom, type = 'rent', area, garage);

  double get getPriceMonth => price_month;
  double get getPriceYear => price_year;

  set setPriceMonth(double priceMonth) => price_month = priceMonth;
  set setPriceYear(double priceYear) => price_year = price_month * 12;

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
        'price_month': price_month,
        'price_year': price_year
      };
}
