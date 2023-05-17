class Shloka_Model{
  int id;
  String adhyay;
  List<dynamic> details;

  Shloka_Model({
    required this.id,
    required this.adhyay,
    required this.details,
  });

  factory Shloka_Model.niti(
      {required Map data}) {
    return Shloka_Model(
      id: data['Id'],
      adhyay: data['Adhyay'],
      details: data['Details'],
    );
  }
}
