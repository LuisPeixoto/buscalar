class Immobile {
  String cep;
  String city;
  String borough;
  String address;
  String longitude;
  String latitude;
  String images;
  String numberRoom;
  String numberBedroom;
  String area;
  String garage;

  Immobile(
      this.cep,
      this.city,
      this.borough,
      this.address,
      this.longitude,
      this.latitude,
      this.images,
      this.numberRoom,
      this.numberBedroom,
      this.area,
      this.garage);

  String get getCep => cep;
  String get getCity => city;
  String get getBorough => borough;
  String get getAddress => address;
  String get getLongitude => longitude;
  String get getLatitude => latitude;
  String get getImages => images;
  String get getNumberRoom => numberRoom;
  String get getNumberBedroom => numberBedroom;
  String get getArea => area;
  String get getGarage => garage;

  set setCep(String cep) => this.cep = cep;
  set setCity(String city) => this.city = city;
  set setBorough(String borough) => this.borough = borough;
  set setAddress(String address) => this.address = address;
  set setLongitude(String longitude) => this.longitude = longitude;
  set setLatitude(String latitude) => this.latitude = latitude;
  set setImages(String images) => this.images = images;
  set setNumberRoom(String numberRoom) => this.numberRoom = numberRoom;
  set setNumberBedroom(String numberBedroom) =>
      this.numberBedroom = numberBedroom;
  set setArea(String area) => this.area = area;
  set setGarage(String garage) => this.garage = garage;

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
        'area': area,
        'garage': garage,
      };
}
