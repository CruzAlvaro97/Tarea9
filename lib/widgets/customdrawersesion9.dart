import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:usersave/preferences/preferences.dart';
import 'package:usersave/screen/index.dart';

class CustomDrawerSesion9 extends StatelessWidget {
  const CustomDrawerSesion9({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Expanded(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              DrawerHeader(
                decoration: const BoxDecoration(
                  image: DecorationImage(
                      image: NetworkImage(
                          'https://cdn.pixabay.com/photo/2015/04/04/22/07/stone-707171_960_720.jpg'),
                      fit: BoxFit.cover),
                  // color: Color.fromARGB(255, 42, 32, 234),
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(20.0),
                    bottomRight: Radius.circular(20.0),
                  ),
                ),
                child: SizedBox(
                  width: double.infinity,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      //
                      // Foto de Drawer
                      IconButton(
                        icon: CircleAvatar(
                          radius: 42,
                          backgroundColor: Colors.white,
                          child: CircleAvatar(
                            radius: 40,
                            backgroundImage: NetworkImage(Preferences.img),
                          ),
                        ),
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const PerfilScreen()),
                          );
                        },
                      ),
                      const SizedBox(
                        width: 5,
                      ),
                      //
                      // Column de Nombres + Ocupaciones
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            '${Preferences.name} ${Preferences.lastname}',
                            style: const TextStyle(
                              fontSize: 18,
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text(
                            Preferences.ocupation,
                            style: const TextStyle(
                              fontSize: 14,
                              color: Colors.white,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              //
              // Inbox
              ListTile(
                leading: const Icon(Icons.inbox_rounded),
                title: const Text('All inboxes'),
                trailing: const Text('15'),
                onTap: (() {}),
              ),
              //
              //Divider 1
              const Padding(
                padding: EdgeInsets.all(8.0),
                child: Divider(
                  thickness: 1,
                  height: 1,
                  color: Colors.grey,
                ),
              ),
              //
              // Primary
              ListTile(
                leading: const Icon(Icons.mail),
                title: const Text('Primary'),
                trailing: const Text('15'),
                onTap: (() {}),
              ),
              //
              // Social
              ListTile(
                leading: const Icon(Icons.people_rounded),
                title: const Text('Social'),
                trailing: Container(
                  padding: const EdgeInsets.all(4.0),
                  decoration: BoxDecoration(
                    color: Colors.purple.shade200,
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: const Text(
                    '14 new',
                    textAlign: TextAlign.center,
                  ),
                ),
                onTap: (() {}),
              ),
              //
              // Promotions
              ListTile(
                leading: const Icon(Icons.label_important),
                title: const Text('Promotions'),
                trailing: Container(
                  padding: const EdgeInsets.all(4.0),
                  decoration: BoxDecoration(
                    color: Colors.greenAccent.shade200,
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: const Text(
                    '99+ new',
                    textAlign: TextAlign.center,
                  ),
                ),
                onTap: (() {}),
              ),
              //
              //Divider 2
              const Padding(
                padding: EdgeInsets.all(8.0),
                child: Divider(
                  thickness: 1,
                  height: 1,
                  color: Colors.grey,
                ),
              ),
              //
              // All labels
              const Padding(
                padding: EdgeInsets.all(20.0),
                child: Text(
                  'All labels',
                  textAlign: TextAlign.start,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              //
              // Starred
              ListTile(
                leading: const Icon(Icons.star_rounded),
                title: const Text('Starred'),
                onTap: (() {}),
              ),
              //
              // Important
              ListTile(
                leading: const Icon(Icons.label_important),
                title: const Text('Important'),
                onTap: (() {}),
              ),
              //
              // Sent
              ListTile(
                leading: const Icon(Icons.send_rounded),
                title: const Text('Sent'),
                trailing: const Text('1'),
                onTap: (() {}),
              ),
              //
              // Outbox
              ListTile(
                leading: const Icon(Icons.outbox_rounded),
                title: const Text('Outbox'),
                onTap: (() {}),
              ),
              //
              // Drafts
              ListTile(
                leading: const Icon(Icons.file_copy_rounded),
                title: const Text('Drafts'),
                onTap: (() {}),
              ),
              //
              // All emails
              ListTile(
                leading: const Icon(Icons.markunread_mailbox_sharp),
                title: const Text('All emails'),
                trailing: const Text('99+'),
                onTap: (() {}),
              ),
              //
              // Spam
              ListTile(
                leading: const Icon(Icons.report_rounded),
                title: const Text('Spam'),
                trailing: const Text('99+'),
                onTap: (() {}),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
