import 'package:flutter/material.dart';
import 'package:usersave/preferences/preferences.dart';
import 'package:usersave/screen/index.dart';
// import 'package:usersave/widgets/indexwidgets.dart';

class PerfilScreen extends StatelessWidget {
  const PerfilScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 1,
      //
      // Scaffold
      child: Scaffold(
        appBar: AppBar(
          toolbarHeight: 0,
          flexibleSpace: Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: NetworkImage(
                    'https://cdn.pixabay.com/photo/2015/04/04/22/07/stone-707171_960_720.jpg'),
                fit: BoxFit.fill,
              ),
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(20.0),
                bottomRight: Radius.circular(20.0),
              ),
            ),
          ),
          //
          // Bottom  de Appbar
          bottom: TabBar(
            // indicatorPadding: EdgeInsets.all(1.0),
            isScrollable: false,
            indicatorColor: Colors.transparent,
            unselectedLabelColor: const Color.fromARGB(255, 42, 32, 234),
            labelColor: Colors.white,
            tabs: [
              Tab(
                icon: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    //
                    // Icono de retorno
                    IconButton(
                      icon: const Icon(
                        Icons.arrow_back_outlined,
                        color: Colors.white,
                      ),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const HomeScreen()),
                        );
                      },
                    ),
                    //
                    //
                    const Text(
                      'Profile',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                      ),
                    ),
                    //
                    // Icono de seetings
                    IconButton(
                      icon: const Icon(
                        Icons.settings_rounded,
                        color: Colors.white,
                      ),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const ConfigScreen()),
                        );
                      },
                    )
                  ],
                ),
                height: 350,
                child: Column(
                  children: [
                    //
                    // Foto de Perfil
                    CircleAvatar(
                      radius: 72.5,
                      backgroundColor: Colors.white,
                      child: CircleAvatar(
                        radius: 69.5,
                        backgroundImage: NetworkImage(Preferences.img),
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    //
                    // Nombres y apellidos
                    Text(
                      Preferences.name + Preferences.lastname,
                      style: const TextStyle(fontWeight: FontWeight.bold),
                    ),
                    //
                    // Ocupación
                    Text(
                      Preferences.ocupation,
                      style: const TextStyle(
                        fontSize: 14,
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    //
                    // Followers / Following
                    SizedBox(
                      height: 50,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: const [
                          Text(
                            '1000',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 20,
                            ),
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          Text(
                            'Followers',
                            style: TextStyle(
                              fontSize: 14,
                            ),
                          ),
                          SizedBox(
                            width: 15,
                          ),
                          VerticalDivider(
                            width: 10,
                            thickness: 1,
                            color: Colors.white,
                          ),
                          SizedBox(
                            width: 15,
                          ),
                          Text(
                            '1200',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 20,
                            ),
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          Text(
                            'Following',
                            style: TextStyle(
                              fontSize: 14,
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        // FIN TabBar
        //
        // BODY
        body: Container(
          decoration: BoxDecoration(color: Colors.lightBlue.shade50),
          child: TabBarView(
            children: <Widget>[
              Expanded(
                child: ListView(
                  children: <Widget>[
                    ListTile(
                      leading: const Icon(Icons.mail_rounded),
                      title: const Text("Email"),
                      subtitle: Text(
                        Preferences.email,
                        style: const TextStyle(color: Colors.black),
                      ),
                    ),
                    ListTile(
                      leading: const Icon(Icons.phone_android_rounded),
                      title: const Text("Mobile"),
                      subtitle: Text(
                        Preferences.phone,
                        style: const TextStyle(color: Colors.black),
                      ),
                    ),
                    ListTile(
                      leading: const Icon(Icons.web),
                      title: const Text("Github"),
                      subtitle: Text(
                        Preferences.git,
                        style: const TextStyle(color: Colors.black),
                      ),
                    ),
                    ListTile(
                      leading: const Icon(Icons.facebook_rounded),
                      title: const Text("Facebook"),
                      subtitle: Text(Preferences.fb),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
