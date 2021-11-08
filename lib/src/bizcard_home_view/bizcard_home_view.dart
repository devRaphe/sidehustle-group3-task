import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class BizcardView extends StatelessWidget {
  const BizcardView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.cyan,
      body: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 20,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const CircleAvatar(
              radius: 70,
              child: Text(
                'R',
                style: TextStyle(fontSize: 70),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            const Text(
              'Flutter Dev',
              textAlign: TextAlign.center,
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 40,
                  fontWeight: FontWeight.bold),
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 100),
              child: Divider(
                color: Colors.white30,
                thickness: 2,
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            const CardContent(
              title: 'Raphael Ezekiel',
            ),
            const CardContent(
              title: 'etiabasiezekiel@ymail.com',
            ),
            const SizedBox(height: 15),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: const [
                SocialIcons(
                    icon: FontAwesomeIcons.facebook, color: Colors.blue),
                SocialIcons(
                    icon: FontAwesomeIcons.instagram, color: Colors.purple),
                SocialIcons(icon: FontAwesomeIcons.twitter, color: Colors.blue),
                SocialIcons(
                    icon: FontAwesomeIcons.linkedin, color: Colors.blue),
              ],
            )
          ],
        ),
      ),
    );
  }
}

class SocialIcons extends StatelessWidget {
  final IconData icon;
  final Color color;
  const SocialIcons({Key? key, required this.icon, required this.color})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FaIcon(
      icon,
      color: color,
      size: 50,
    );
  }
}

class CardContent extends StatelessWidget {
  final String title;
  const CardContent({Key? key, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.cyan.shade700,
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 20),
        child: Text(
          title,
          textAlign: TextAlign.center,
          style: const TextStyle(
              color: Colors.white, fontWeight: FontWeight.bold, fontSize: 20),
        ),
      ),
    );
  }
}
