import 'package:buscalar/app/classes/Immobile.dart';

class Immobile_Rent extends Immobile {
  double price_month;
  double price_year;

  Immobile_Rent(
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
      this.price_month,
      this.price_year)
      : super(cep, city, borough, address, number, images, numberRoom,
            numberBedroom, area, garage);

  double get getPriceMonth => price_month;
  double get getPriceYear => price_year;

  set setPriceMonth(double priceMonth) => price_month = priceMonth;
  set setPriceYear(double priceYear) => price_year = price_month * 12;
}
