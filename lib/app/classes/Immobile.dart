class Immobile {
  String cep;
  String city;
  String borough;
  String address;
  String number;
  String images;
  String numberRoom;
  String numberBedroom;
  String area;
  String garage;

  Immobile(this.cep, this.city, this.borough, this.address, this.number,
      this.images, this.numberRoom, this.numberBedroom, this.area, this.garage);

  String get getCep => cep;
  String get getCity => city;
  String get getBorough => borough;
  String get getAddress => address;
  String get getNumber => number;
  String get getImages => images;
  String get getNumberRoom => numberRoom;
  String get getNumberBedroom => numberBedroom;
  String get getArea => area;
  String get getGarage => garage;

  set setCep(String cep) => this.cep = cep;
  set setCity(String city) => this.city = city;
  set setBorough(String borough) => this.borough = borough;
  set setAddress(String address) => this.address = address;
  set setNumber(String number) => this.number = number;
  set setImages(String images) => this.images = images;
  set setNumberRoom(String numberRoom) => this.numberRoom = numberRoom;
  set setNumberBedroom(String numberBedroom) =>
      this.numberBedroom = numberBedroom;
  set setArea(String area) => this.area = area;
  set setGarage(String garage) => this.garage = garage;
}
