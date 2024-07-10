import 'dart:math';
import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';

const String loremIpsm = "Lorem ipsum dolor sit amet. Id quaerat aperiam qui repellat nostrum est consequatur voluptates et suscipit sunt ut neque obcaecati. Non recusandae tempora aut similique rerum est sint accusamus cum perspiciatis illo ut cupiditate maxime. Quo quibusdam quia aut dolorum suscipit ab consequatur corporis est saepe commodi quo sapiente omnis? Qui tempora deserunt ut eveniet eveniet sit fuga sapiente? Id modi consequatur hic ratione nulla rem Quis praesentium ab enim provident. Eos debitis galisum et molestiae dolore et dolores omnis. Ea doloremque iusto ab galisum placeat 33 obcaecati dolore. Eos autem molestiae sit amet dolor in eveniet eligendi rem velit officiis eos optio optio ea voluptas architecto. Et ipsum quas cum vero voluptas sit quam odit rem quidem repudiandae hic omnis perspiciatis.";
const int loremIpsmLength = loremIpsm.length; 

String lorem({int count = loremIpsmLength})
{
  return loremIpsm.substring(0,count);
}

Color rColor() {
    var random = new Random();

    var r = random.nextInt(4);

    switch (r) {
      case 1:
        return Colors.greenAccent;

      case 2:
        return Colors.redAccent;

      case 3:
        return Colors.blueAccent;

      default:
        return const Color.fromARGB(255, 240, 240, 105);
    }
  }

Color rDarkColor()
  {
    var random = new Random();

    var r = random.nextInt(4);

    switch (r) {
      case 1:
        return Color.fromARGB(255, 58, 132, 96);

      case 2:
        return Color.fromARGB(255, 157, 52, 52);

      case 3:
        return Color.fromARGB(255, 39, 78, 145);

      default:
        return Color.fromARGB(255, 65, 51, 107);
    }
  }

int rInt({int min = 0, int max = 100}) {

    Random random = new Random();
    return min + random.nextInt(max - min);
}

bool webBuild()
{
  return kIsWeb; //from foundation library
}
