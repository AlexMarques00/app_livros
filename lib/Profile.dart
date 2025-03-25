import 'package:app_livros2/Config.dart';
import 'package:flutter/material.dart';
import 'Sobre.dart';
import 'Config.dart';

class Profile extends StatefulWidget {
  @override
  _ProfileState createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  bool _notificacao = false;
  TextEditingController _textEditingController =
      TextEditingController(); //instanciar o objeto para controlar o campo de texto

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        //configurações de retorno
        title: Text("Seu Perfil"),
        actions: [
          IconButton(
            icon: Icon(Icons.settings),
            onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Config()),
                ); // Volta para a tela anterior
            },
          ),
        ]
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Profile Picture + Name + Stats (Row)
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Profile Picture
                Container(
                  padding: EdgeInsets.all(4), // Border size
                  
                  child: CircleAvatar(
                    radius: 40, // Profile picture size
                    backgroundImage: AssetImage(
                        'assets/images/profile.webp'),
                  ),
                ),
                SizedBox(width: 16), // Space between image and text
                // Profile Info
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      // Name
                      Text(
                        "Alex Marques",
                        style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                      SizedBox(height: 8),
                      // Stats (Reviews, Followers, Following)
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start, // Align left
                        children: [
                          Column(
                            children: [
                              Text("0", style: TextStyle(fontWeight: FontWeight.bold)),
                              Text("Reviews"),
                            ],
                          ),
                          SizedBox(width: 16), // Space between columns
                          Column(
                            children: [
                              Text("0", style: TextStyle(fontWeight: FontWeight.bold)),
                              Text("Followers"),
                            ],
                          ),
                          SizedBox(width: 16),
                          Column(
                            children: [
                              Text("0", style: TextStyle(fontWeight: FontWeight.bold)),
                              Text("Following"),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
            SizedBox(height: 16), // Space before bio
            // Profile Bio
            Text(
              "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur bibendum justo purus, nec pellentesque arcu posuere suscipit.",
              style: TextStyle(fontSize: 14),
            ),
          ],
        ),
      ),
    );
  }
}
