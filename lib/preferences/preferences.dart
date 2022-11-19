import 'package:shared_preferences/shared_preferences.dart';

class Preferences {
  static late SharedPreferences _prefs;

  static String _img = '';
  static String _nombre = '';
  static String _apellido = '';
  static String _ocupacion = '';
  static String _correo = '';
  static String _celular = '';
  static String _github = '';
  static String _fb = '';
  // static int _genero = 1;

  static Future init() async {
    _prefs = await SharedPreferences.getInstance();
  }

  //GEt & SET

  //Image
  static String get img {
    return _prefs.getString('img') ?? _img;
  }

  static set img(String img) {
    _img = 'img';
    _prefs.setString('img', img);
  }

  //Nombre
  static String get name {
    return _prefs.getString('name') ?? _nombre;
  }

  static set name(String name) {
    _nombre = name;
    _prefs.setString('name', name);
  }
  //

  //Apellido
  static String get lastname {
    return _prefs.getString('lastname') ?? _apellido;
  }

  static set lastname(String lastname) {
    _apellido = lastname;
    _prefs.setString('lastname', lastname);
  }
  //

  //Ocupación
  static String get ocupation {
    return _prefs.getString('ocupation') ?? _ocupacion;
  }

  static set ocupation(String ocupation) {
    _ocupacion = ocupation;
    _prefs.setString('ocupation', ocupation);
  }
  //

  //Correo
  static String get email {
    return _prefs.getString('email') ?? _correo;
  }

  static set email(String email) {
    _correo = email;
    _prefs.setString('email', email);
  }
  //

  //Celular
  static String get phone {
    return _prefs.getString('phone') ?? _celular;
  }

  static set phone(String phone) {
    _celular = phone;
    _prefs.setString('phone', phone);
  }
  //

  //GitHub
  static String get git {
    return _prefs.getString('git') ?? _github;
  }

  static set git(String git) {
    _github = git;
    _prefs.setString('git', git);
  }
  //

  //Facebook
  static String get fb {
    return _prefs.getString('fb') ?? _fb;
  }

  static set fb(String fb) {
    _fb = fb;
    _prefs.setString('fb', fb);
  }
  //

  // //Gender
  // static int get gender {
  //   return _prefs.getInt('gender') ?? _genero;
  // }

  // static set gender(int gender) {
  //   _genero = gender;
  //   _prefs.setInt('gender', gender);
  // }
}
