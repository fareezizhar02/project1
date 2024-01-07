import 'package:flutter/material.dart';

class Club extends StatelessWidget {
  final String code, clubName;

  Club({required this.code, required this.clubName});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(clubName),
    );
  }
}

class ClubListScreen extends StatelessWidget {
  String clubDetail = '';

  List<Club> club = [
    Club(code: "LO", clubName: "Kelab Teater Layar Opera"),
    Club(code: "VOH", clubName: "Voice Of Harmony"),
    Club(code: "PT", clubName: "Persada Tari"),
    Club(code: "BAR", clubName: "Baratham"),
    Club(code: "PIC", clubName: "Picaso"),
    Club(code: "KKS", clubName: "Kelab Kebudayaan Sarawak"),
    Club(code: "KMS", clubName: "Kelab Mahasiswa Sabah"),
    Club(code: "PD", clubName: "Pancha Delima"),
    Club(code: "PPC", clubName: "Persatuan Pelajar Cina"),
    Club(code: "EMC", clubName: "Event Management Club"),
    Club(code: "GEM", clubName: "Gemersik"),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Club List'),
        backgroundColor: Colors.purple,
      ),
      body: ListView.builder(
        itemCount: club.length,
        itemBuilder: (context, index) {
          return Card(
            color: Color.fromRGBO(250, 228, 252, 1),
            child: Padding(
              padding: EdgeInsets.all(10),
              child: ListTile(
                leading: CircleAvatar(
                  child: Text(
                    club[index].code,
                    style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        fontFamily: 'Quicksand',
                        color: Colors.white),
                  ),
                  backgroundColor: Colors.purple,
                ),
                title: Text(
                  club[index].clubName,
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w700,
                    fontFamily: 'OpenSans',
                  ),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
