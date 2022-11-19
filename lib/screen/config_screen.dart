import 'package:flutter/material.dart';
import 'package:usersave/preferences/preferences.dart';
import 'package:usersave/screen/index.dart';
import 'package:usersave/widgets/indexwidgets.dart';

class ConfigScreen extends StatefulWidget {
  const ConfigScreen({super.key});

  @override
  State<ConfigScreen> createState() => _ConfigScreenState();
}

class _ConfigScreenState extends State<ConfigScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Settings',
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
        leading: IconButton(
          icon: const Icon(
            Icons.arrow_back_outlined,
            color: Colors.white,
          ),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const PerfilScreen()),
            );
          },
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          decoration: BoxDecoration(color: Colors.lightBlue.shade100),
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                //
                // Imagen de perfil
                const Text(
                  ' Foto de perfil',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
                CustomTextFieldWidget(
                  initialvalue: Preferences.img,
                  keyboardType: TextInputType.text,
                  hintText: 'Imagen',
                  prefixIcon: const Icon(Icons.photo),
                  onChanged: (value) {
                    Preferences.img = value;
                    setState(() {});
                  },
                ),
                const SizedBox(
                  height: 10,
                ),
                //
                // Nombres
                const Text(
                  ' Nombres',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
                CustomTextFieldWidget(
                  initialvalue: Preferences.name,
                  keyboardType: TextInputType.name,
                  hintText: 'Nombres',
                  prefixIcon: const Icon(Icons.person),
                  onChanged: (value) {
                    Preferences.name = value;
                    setState(() {});
                  },
                ),
                const SizedBox(
                  height: 10,
                ),
                //
                // Apellidos
                const Text(
                  ' Apellidos',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
                CustomTextFieldWidget(
                  initialvalue: Preferences.lastname,
                  keyboardType: TextInputType.name,
                  hintText: 'Apellidos',
                  prefixIcon: const Icon(Icons.person),
                  onChanged: (value) {
                    Preferences.lastname = value;
                    setState(() {});
                  },
                ),
                const SizedBox(
                  height: 10,
                ),
                //
                // Ocupación
                const Text(
                  ' Ocupación',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
                CustomTextFieldWidget(
                  initialvalue: Preferences.ocupation,
                  keyboardType: TextInputType.name,
                  hintText: 'Ocupación',
                  prefixIcon: const Icon(Icons.work_rounded),
                  onChanged: (value) {
                    Preferences.ocupation = value;
                    setState(() {});
                  },
                ),
                const SizedBox(
                  height: 10,
                ),
                //
                // Email
                const Text(
                  ' Correo Electrónico',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
                CustomTextFieldWidget(
                  initialvalue: Preferences.email,
                  keyboardType: TextInputType.emailAddress,
                  hintText: 'Correo Electrónico',
                  prefixIcon: const Icon(Icons.email_rounded),
                  onChanged: (value) {
                    Preferences.email = value;
                    setState(() {});
                  },
                ),
                const SizedBox(
                  height: 10,
                ),
                //
                // Celular
                const Text(
                  ' Celular',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
                CustomTextFieldWidget(
                  initialvalue: Preferences.phone,
                  keyboardType: TextInputType.phone,
                  hintText: 'Celular',
                  prefixIcon: const Icon(Icons.phone_android_rounded),
                  onChanged: (value) {
                    Preferences.phone = value;
                    setState(() {});
                  },
                ),
                const SizedBox(
                  height: 10,
                ),
                //
                // Github
                const Text(
                  ' Github',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
                CustomTextFieldWidget(
                  initialvalue: Preferences.git,
                  keyboardType: TextInputType.name,
                  hintText: 'Github user',
                  prefixIcon: const Icon(Icons.logo_dev_rounded),
                  onChanged: (value) {
                    Preferences.git = value;
                    setState(() {});
                  },
                ),
                const SizedBox(
                  height: 10,
                ),
                //
                // Facebook
                const Text(
                  ' Facebook',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
                CustomTextFieldWidget(
                  initialvalue: Preferences.fb,
                  keyboardType: TextInputType.name,
                  hintText: 'Facebook url',
                  prefixIcon: const Icon(Icons.facebook_rounded),
                  onChanged: (value) {
                    Preferences.fb = value;
                    setState(() {});
                  },
                ),
                const SizedBox(
                  height: 10,
                ),

                // RadioListTile(
                //     activeColor: Colors.blueAccent,
                //     value: 1,
                //     groupValue: Preferences.gender,
                //     title: const Text('Masculino'),
                //     onChanged: (value) {
                //       Preferences.gender = value ?? 1;
                //       setState(() {});
                //     }),
                // RadioListTile(
                //     activeColor: Colors.pinkAccent,
                //     value: 2,
                //     groupValue: Preferences.gender,
                //     title: const Text('Femenino'),
                //     onChanged: (value) {
                //       Preferences.gender = value ?? 2;
                //       setState(() {});
                //     }),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
