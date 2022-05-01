import 'package:buscalar/app/classes/Immobile.dart';

class Immobile_Sale extends Immobile {
  double price;

  Immobile_Sale(
      String cep,
      String city,
      String borough,
      String address,
      String number,
      String images,
      String numberRoom,
      String numberBedroom,
      String area,
      String garage,
      this.price)
      : super(cep, city, borough, address, number, images, numberRoom,
            numberBedroom, area, garage);

  double get getPrice => price;
  set setPrice(double price) => this.price = price;

  List<double> simulateFinancingPrice(double price) {
    List<double> priceList = [];

    for (int i = 0; i < 10; i++) {
      priceList.add(price + (price * (i * 0.1)));
    }

    return priceList;
  }
}
