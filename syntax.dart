void main(){
  // my first comment in Dart

  // let me review the syntax

  // 1. variables in dart

  // type inferencing
  var name = 'tate';
  var age = 26;

  // explicit types

  String city = 'Warsaw';
  int population = 1700000;
  double temperature = 22.5;
  bool isSunny = true;

  // i really hate just typing these types, lets try string interpollation

  String about = 'Hello guys, I am ${name} of age ${age}, I have lived in ${city} it is most known to have a population of ${population} and temperature of ${temperature}.';
  print(about);

  // final and const

  final timeNow = DateTime.now(); // set at runtime 
  const pi = 3.14159; //set at compiled time
  
  // sound null safety, 

  String normalString = 'Hello';
  String? nullableString; // adding '?' makes it possible to be null
  nullableString = null; 

  // handling nulls

  int wordLength = nullableString?.length ?? 0;

  // null assertion (use with extreme caution)
  String forceUnwrap = nullableString!;
  // '!' tells Dart "I guarantee this isn't null." If it is, your app crashes.

  // functions
  int add(int a, int b){
    return a + b;
  }

  // arrow syntax (for single-line functions)
  int multiply(int a, int b) => a*b;

  // named parameters (enclosed in {})
  // very common in Flutter widgets.
  void createServer({required String host, int port = 8080}){
    print('Connecting to $host:$port');
  }

  // calling it:
  createServer(host: 'localhost'); // port defaults to 8080
}