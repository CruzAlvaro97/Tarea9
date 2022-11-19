import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
// Archivo de rutas de widgets
import 'package:usersave/widgets/indexwidgets.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'HOME',
          style: TextStyle(
            color: Colors.white,
            fontSize: 18,
          ),
        ),
        centerTitle: true,
        flexibleSpace: Container(
          decoration: const BoxDecoration(
              image: DecorationImage(
            image: NetworkImage(
                'https://cdn.pixabay.com/photo/2015/04/04/22/07/stone-707171_960_720.jpg'),
            fit: BoxFit.fill,
          )),
        ),
      ),
      drawer: const CustomDrawerSesion9(),
      body: Container(
        decoration: BoxDecoration(color: Colors.lightBlue.shade100),
        child: Center(
          child: Text(
            'WELCOME',
            style: GoogleFonts.pacifico(
              fontSize: 28,
            ),
          ),
        ),
      ),
    );
  }
}
