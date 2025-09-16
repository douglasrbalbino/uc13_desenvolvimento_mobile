import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  TextEditingController controllerLogin = TextEditingController();
  TextEditingController controllerSenha = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,

        title: Text(widget.title),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Icon(Icons.person, size: 15),
                Text("Nome:", style: TextStyle(fontWeight: FontWeight.bold)),
              ],
            ),
            Text("Super Ronaldo"),
            SizedBox(height: 20),

            Row(
              children: [
                Icon(Icons.calendar_today, size: 15),
                Text("Idade:", style: TextStyle(fontWeight: FontWeight.bold)),
              ],
            ),
            Text("59"),
            SizedBox(height: 20),

            Row(
              children: [
                Icon(Icons.person, size: 15),
                Text("Email:", style: TextStyle(fontWeight: FontWeight.bold)),
              ],
            ),
            Text("meunomeehronaldo@gmail.com"),
            SizedBox(height: 20),
            Container(
              decoration: BoxDecoration(
                border: Border.all(color: Colors.grey),
                borderRadius: BorderRadius.circular(5),
                color: Color.fromRGBO(0, 0, 100, 0.5),
              ),
              height: 250,
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
              child: Scrollbar(
                thumbVisibility: true,
                child: SingleChildScrollView(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 15),
                    child: Text(
                      textAlign: TextAlign.justify,
                      "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce elementum velit vel justo facilisis tincidunt. Aliquam sit amet gravida nisi, ut mollis dolor. In maximus sed risus at fringilla. Vivamus vulputate, nibh et sollicitudin semper, arcu felis ultrices quam, vel facilisis sem dui quis mi. |nFusce feugiat vehicula diam, malesuada porta dolor bibendum eu. Fusce mattis neque elementum commodo ornare. Cras volutpat purus a ullamcorper rutrum. Maecenas nunc metus, efficitur at nulla sed, aliquam pellentesque tortor. Integer dapibus ligula lacinia, congue elit non, mollis elit.\n\n Praesent convallis, quam a lobortis accumsan, neque velit pretium massa, a dapibus tellus ex non ligula. Sed cursus erat eros, sit amet viverra tortor aliquam sit amet. Vivamus vulputate, enim vestibulum commodo volutpat, ante erat scelerisque est, ac euismod risus erat molestie lacus. Etiam mollis augue finibus ante cursus, non ornare augue pulvinar. Integer blandit tellus orci, at hendrerit odio condimentum ut. Proin ac urna enim. Curabitur vel elementum sem. Pellentesque hendrerit nulla ligula, a fermentum ligula luctus ut. Vivamus ultrices tellus sit amet egestas fringilla. Nullam elementum justo dui, eu aliquam orci facilisis sed. Aenean sed porttitor est, eu ultricies mauris.",
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(height: 20),
            TextField(
              controller: controllerLogin,
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                labelText: "Digite seu nome",
              ),
            ),

            SizedBox(height: 20),
            TextField(
              controller: controllerSenha,
              obscureText: true,
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                labelText: "Digite sua senha",
              ),
            ),
            SizedBox(height: 20),
            SizedBox(
              width: 200,
              child: ElevatedButton(
                style: ButtonStyle(
                  backgroundColor: WidgetStatePropertyAll(Colors.blueAccent),
                ),
                onPressed: () {
                  print(controllerLogin.text);
                },
                child: Row(
                  children: [
                    Icon(Icons.login),
                    SizedBox(height: 20),
                    Text("Realizar Login"),
                  ],
                ), // Criaum botão
              ),
            ),
          ],
        ),
      ),
    );
  }
}
