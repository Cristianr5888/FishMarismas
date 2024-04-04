
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
/* import 'dart:io'; */
/* import 'package:path_provider/path_provider.dart'; */
/* import 'package:permission_handler/permission_handler.dart'; */
/* import 'package:gallery_saver/gallery_saver.dart'; */


    /* ----------------------------------- */
    /* ----BY CRISTIAN JIMENEZ ROBLES----- */
    /* ----------------------------------- */
void main() {
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.manual, overlays: [
      SystemUiOverlay.bottom,
    ]);
  //SystemChrome.setPreferredOrientations([
  //DeviceOrientation.portraitUp,
  //Solo modo horizontal, 
  //Esto por alguna razón no funciona, lo ideal es ir al archivo
  //AndroidManifest.xml y poner android:screenOrientation="portrait"
  runApp(const BottomNavigationBarExampleApp());  
}

class BottomNavigationBarExampleApp extends StatelessWidget {
  const BottomNavigationBarExampleApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: BottomNavigationBarExample(),
    );
  }
}

class BottomNavigationBarExample extends StatefulWidget {
  const BottomNavigationBarExample({Key? key}) : super(key: key);

  @override
  State<BottomNavigationBarExample> createState() =>
      _BottomNavigationBarExampleState();
}
//class index
class _BottomNavigationBarExampleState
    extends State<BottomNavigationBarExample> {
  int _selectedIndex = 0;
  
  static const List<Widget> _widgetOptions = <Widget>[    
    /* ----------------------------------- */
    /* -------- LISTADO DE PECES --------- */
    /* ----------------------------------- */    
    MyList( 
      items: [       
        //Robalo garabato [1]
        ItemData(          
          header: 'Robalo garabato',
          content: 'Nombre común: Robalo garabato',          
          cientific: 'Nombre científico: Centropomus viridis',          
          aditionalinfo:'\nHábitat: vive en zonas someras de arena-fango con poca transparencia, como bahías estuarios, lagunas y partes bajas  de los ríos, sistemas que utilizan para protección,  crianza y alimentación. \nSe alimenta de camarones, cangrejos y peces.'
          '\n  \nSu distribución es desde el Golfo de California hasta Perú.'
          '\n \nTalla máxima encontrada: 130 cm.',
          imagePath: 'assets/images/robalog.png',          
        ),
        //Robalo paleta [2]
        ItemData(
          
          header: 'Robalo paleta',
          content: 'Nombre común: Robalo paleta',
          cientific: 'Nombre científico: Centropomus medius',          
          aditionalinfo:'\nHábitat: Vive en en bahías, estuarios y lagunas, penetra al agua dulce, sobre todo en ríos grandes. \nse alimenta de peces y crustáceos como camarones.'
          '\n  \nSu distribución es desde el Golfo de California central al norte de Perú. '
          '\n \nTalla máxima encontrada: 65 cm.',
          imagePath: 'assets/images/robalopaleta.png',
          
        ),
        // Robalo piedra [3]
        ItemData(
         
          header: 'Robalo piedra',
          content: 'Nombre común: Robalo piedra',
          cientific: 'Nombre científico: Centropomus nigrescens',
         
          aditionalinfo:'\nHábitat: Se encuentra en fondo fangoso somero, común en bahías y áreas de mangle como lagunas y esteros, también en estuarios y agua dulce; se localiza hasta 28 m de profundidad. \nSe alimenta de camarones, cangrejos y peces.'
          '\n \nSu distribución es desde el sur de Baja California al norte de Ecuador.'
          '\n \nTalla máxima encontrada: 123 cm.',
          imagePath: 'assets/images/robalopiedra.png',
         
        ),
        // Constantino [4]
        ItemData(
         
          header: 'Constantino / Robalito',
          content: 'Nombre común: Constantino / Robalito',
          cientific: 'Nombre científico: Centropomus robalito',
          
         
          aditionalinfo:'\nHábitat: Se encuentra en áreas someras de arena y fango, hasta 50 m de profundidad  soporta un amplio rango de salinidad, por lo que es visitante regular de los estuarios y lagunas costeras, y parte baja de los  ríos. \nSe alimenta de crustáceos como camarones, jaibas, cangrejos y moluscos.'
          '\n \nSu distribución es desde el sur de Baja California al norte de Ecuador.'
          '\n \nTalla máxima encontrada: 37.4 cm.',
          imagePath: 'assets/images/constantino.png',
         
        ),
        // Pargo colorado [5]
        ItemData(
         
          header: 'Pargo colorado',
          content: 'Nombre común: Pargo colorado',
          cientific: 'Nombre científico: Lutjanus colorado',
         
         
          aditionalinfo:'\nHábitat: Se encuentra en fondos blandos, duros y arrecifes, en la plataforma y el talud continental; a veces se encuentra en estuarios someros.'
          '\nSe alimenta de invertebrados; camarones, pulpos, cangrejos, calamares y peces.'
					'\n \nSu distribución es desde el sur de California EU hasta Panamá.'
          '\n \nTalla máxima encontrada: 91 cm.',
          imagePath: 'assets/images/pargoc.png',
         
        ),
        // Pargo listoncillo [6]
        ItemData(
         
          header: 'Pargo listoncillo',
          content: 'Nombre común: Pargo listoncillo',
          cientific: 'Nombre científico: Lutjanus novemfasciatus',
          /* '\nNombre Científico: Lutjanus novemfasciatu', */
         
          aditionalinfo:'\nHábitat: Se encuentra en fondos rocosos y arenosos, hasta 90 m de profundidad; prefiere zonas de refugio típicamente marinas.'
          '\nSe alimenta de cangrejos, en especial cangrejos, camarones, cefalópodos, vivalos y peces.'
					'\n \nSu distribución es desde Baja California y Golfo de California  a  Perú.'
          '\n \nTalla máxima encontrada: 71 cm.',
          imagePath: 'assets/images/pargoli.png',
         
        ),
        // Pargo prieto [7]
        ItemData(
         
          header: 'Pargo prieto',
          content: 'Nombre común: Pargo prieto',
          cientific: 'Nombre científico: Lutjanus novemfasciatus',
          /* '\nNombre Científico: Lutjanus novemfasciatus', */
         
          aditionalinfo:'\nHábitat: Se encuentra en fondos rocosos y arenosos, hasta 90 m de profundidad; prefiere zonas de refugio típicamente marinas.'
          '\nSe alimenta de cangrejos, en especial cangrejos, camarones, cefalópodos, vivalos y peces.'
					'\n \nSu distribución es desde el norte de México al norte de Perú. '
          '\n \nTalla máxima encontrada: 170 cm.',
          imagePath: 'assets/images/pargop.png',
         
        ),
        // Lisa macho [8]
        ItemData(
         
          header: 'Lisa macho',
          content: 'Nombre común: Lisa macho',
          cientific: 'Nombre científico: Mugil cephalus',
          /* '\nNombre Científico: Mugil cephalus', */
         
          aditionalinfo:'\nHábitat: Vive en aguas claras cerca de arrecifes, alcanza hasta los 125 m de profundidad.'
          '\nSe alimenta de variedad de organismos del zooplancton, fitoplancton, bentos, algas y otros vegetales.'
					'\n \nSu distribución es desde el sur de California, Golfo de California a Perú.'
          '\n \nTalla máxima encontrada: 100 cm.',
          imagePath: 'assets/images/lisam.png',
         
        ),
        // Lisa blanca [9]
        ItemData(
         
          header: 'Lisa blanca',
          content: 'Nombre común: Lisa blanca',
          cientific: 'Nombre científico: Mugil curema',
          /* '\nNombre Científico: Mugil curema', */
         
          aditionalinfo:'\nHábitat: Se encuentra en fondo lodoso y arenoso, penetra regularmente a lagunas estuarios y parte baja de los ríos.'
          '\nSe alimenta de detritus, diatomeas, algas filamentosas y zooplancton.'
					'\n \nSu distribución es desde el sur de California a Chile.'
          '\n \nTalla máxima encontrada: 91 cm.',
          imagePath: 'assets/images/lisab.png',
         
        ),
        // Cabrilla [10]
        ItemData(
         
          header: 'Mero guasa o Cabrilla',
          content: 'Nombre común: Mero guasa o Cabrilla',
          cientific: 'Nombre científico: Epinephelus itajara',
          /* '\nNombre Científico: Epinephelus itajara', */
         
          aditionalinfo:'\nHábitat: áreas protegidas y someras sobre fondos de roca, coral y lodo hasta 100 m de profundidad.'
          '\nSe alimenta de camarones, langostas, cefalópodos, tortugas, peces, tiburones, algunos mamíferos y aves.'
					'\n \nSu distribución es desde el sur de Baja California a Perú.'
          '\n \nTalla máxima encontrada: 250 cm.',
          imagePath: 'assets/images/cabrilla.png',
         
        ),
        // Mero moteado / boba [11]
        ItemData(
         
          header: 'Mero moteado o Boba',
          content: 'Nombre común: Mero moteado o Boba',
          cientific: 'Nombre científico: Epinephelus analogus',
          /* '\nNombre Científico: Epinephelus analogus', */
         
          aditionalinfo:'\nHábitat: Se encuentra en profundidad moderada y somera, sobre fondos arenosos y rocosos; abundante en arrecifes aislados  alejados de la costa.'
          '\nSe alimenta de crustáceos, moluscos y peces, en el invierno se desplaza cerca de la orilla, donde atrapa cangrejos rojos.'
					'\n \nSu distribución es desde el sur y Golfo de California a Perú.'
          '\n \nTalla máxima encontrada: 114 cm.',
          imagePath: 'assets/images/boba.png',
         
        ),
        // Chihuil condor[12]
        ItemData(
         
          header: 'Chihuil condor',
          content: 'Nombre común: Chihuil condor',
          cientific: 'Nombre científico: Bagre pinnimaculatus',
          /* '\nNombre Científico: Bagre pinnimaculatus', */
         
          aditionalinfo:'\nHábitat: Se encuentra en aguas costeras y esteros, también entra en aguas dulces.'
          '\nSe alimenta de peces óseos, camarones, cangrejos y gasterópodos.'
					'\n \nSu distribución es desde el Golfo de California hasta Ecuador.'
          '\n \nTalla máxima encontrada: 95 cm.',
          imagePath: 'assets/images/chihuilc.png',
         
        ),
        // Chihuil bandera [13]
        ItemData(
         
          header: 'Chihuil bandera',
          content: 'Nombre común: Chihuil bandera',
          cientific: 'Nombre científico: Bagre panamensis',
          /* '\nNombre Científico: Bagre panamensis', */
         
          aditionalinfo:'\nHábitat: Se encuentra en aguas costeras y esteros, también en agua dulce.'
          '\nSe alimenta de peces óseos, camarones, cangrejos y gasterópodos.'
					'\n \nSu distribución es desde el Sur de California al norte de Perú.'
          '\n \nTalla máxima encontrada: 51 cm.',
          imagePath: 'assets/images/chihuilb.png',
         
        ),
        // Curvina chana [14]
        ItemData(
         
          header: 'Curvina chana',
          content: 'Nombre común: Curvina chana',
          cientific: 'Nombre científico: Cynoscion reticulatus',
          /* '\nNombre Científico: Cynoscion reticulatus', */
         
          aditionalinfo:'\nHábitat: Se encuentra en aguas costeras incluyendo las partes más profundas de los esteros.'
          '\nSe alimenta de camarones, cangrejos, pulpos, calamares y peces óseos.'
					'\n \nSu distribución es desde el sur de California a Colombia.'
          '\n \nTalla máxima encontrada: 90 cm',
          imagePath: 'assets/images/curvinachana.png',
         
        ),

        // Curvina amarilla [15]
        ItemData(
         
          header: 'Curvina amarilla',
          content: 'Nombre común: Curvina amarilla',
          cientific: 'Nombre científico: Cynoscion xanthulus',
          /* '\nNombre Científico: Cynoscion xanthulus', */
         
          aditionalinfo:'\nHábitat: Se encuentra en fondos suaves, fango, arena, grava, estero y manglar.'
          '\nSe alimenta de camarones, cangrejos, pulpos, calamares y peces óseos.'
					'\n \nSu distribución es desde el Golfo de California al sur de México.'
          '\n \nTalla máxima encontrada: 129 cm.',
          imagePath: 'assets/images/curvinaamarilla.png',
         
        ),

        // Dormilona bacoca [16]
        ItemData(
         
          header: 'Dormilona, Cherla, Bacoca',
          content: 'Nombre común: Dormilona, Cherla, Bacoca',
          cientific: 'Nombre científico: Lobotes pacificus',
          /* '\nNombre Científico: Lobotes pacificus', */
         
          aditionalinfo:'\nHábitat: Se encuentra en fondos suaves, fango, arena, grava, estero y manglar.'
          '\nSe alimenta de camarones, cangrejos, crustaceos pelágicos y peces óseos.'
					'\n \nSu distribución es desde el sur de California a Perú.'
          '\n \nTalla máxima encontrada: 100 cm.',
          imagePath: 'assets/images/dormilona.png',
         
        ),

        // Burro prieto [17]
        ItemData(
         
          header: 'Burro raicero o prieto ',
          content: 'Nombre común: Burro raicero o prieto',
          cientific: 'Nombre científico: Pomadasys macracanthus',
          /* '\nNombre Científico: Pomadasys macracanthus', */
         
          aditionalinfo:'\nHábitat: vive en aguas costeras en fondos arenosos o de lodo, esteros y bocas de rios.'
          '\nSe alimenta de camarones, cangrejos, pulpos y sepias.'
					'\n \nSu distribución es desde el Golfo de California a Ecuador.'
          '\n \nTalla máxima encontrada: 35 cm.',
          imagePath: 'assets/images/burroprieto.png',
         
        ),

        // Ronco alargado o trompudo [18]
        ItemData(
         
          header: 'Ronco alargado o trompudo',
        content: 'Nombre común: Ronco alargado o trompudo',
        cientific: 'Nombre científico: Haemulopsis elongatus',
        /* '\nNombre Científico: Haemulopsis elongatus', */
       
        aditionalinfo:'\nHábitat: Se encuentra en aguas costeras en fondos arenosos o de lodo.'
        '\nSe alimenta de camarones, cangrejos, pulpos, calamares y sepias.'
        '\n \nSu distribución es desde el Golfo de California a Panamá.'
        '\n \nTalla máxima encontrada: 30 cm.',
        imagePath: 'assets/images/ronco.png',
       
      ),

        // toro o jurel [19]
        ItemData(
         
          header: 'Toro o Jurel',
        content: 'Nombre común: Toro o Jurel',
        cientific: 'Nombre científico: Caranx caninus',
        /* '\nNombre Científico: Caranx caninus', */
       
        aditionalinfo:'\nHábitat: Se encuentra en fondos suaves de fango, arena, grava, playa, estero y manglar.'
        '\nSe alimenta de camarones, cangrejos y peces óseos.'
        '\n \nSu distribución es desde el Golfo de California a Panamá.'
        '\n \nTalla máxima encontrada: 101 cm.',
        imagePath: 'assets/images/toro.png',
       
      ),

        // mojarra china o rayada [20]
        ItemData(
         
          header: 'Mojarra china o rayada',
        content: 'Nombre común: Mojarra china o rayada',
        cientific: 'Nombre científico: Eugerres axillaris',
        /* '\nNombre Científico: Eugerres axillaris', */
       
        aditionalinfo:'\nHábitat: Se encuentra en fondos suaves de fango, arena, grava, playa, estero y manglar.'
        '\nSe alimenta de camarones, cangrejos, gasterópodos, peces óseos y microalgas bentónicas.'
        '\n \nSu distribución es desde la boca del Golfo de California a Honduras.'
        '\n \nTalla máxima encontrada: 19 cm.',
        imagePath: 'assets/images/mojarrachina.png',
       
      ),

        // mojarra blanca [21] 
        ItemData(
         
          header: 'Mojarra blanca',
        content: 'Nombre común: Mojarra blanca',
        cientific: 'Nombre científico: Gerres simillimus',
        /* '\nNombre Científico: Gerres simillimus', */
       
        aditionalinfo:'\nHábitat: Se encuentra en fondos suaves de fango, arena, grava, playa, estero y manglar, suele habitar también en agua dulce y en vegetación sumergida.'
        '\nSu dieta consiste mayormente de camarones y cangrejos.'
        '\n \nSu distribución es desde el Golfo de California a Perú.'
        '\n \nTalla máxima encontrada: 41 cm.',
        imagePath: 'assets/images/mojarrablanca.png',
       
      ),

        // monda [22]
        ItemData(
         
          header: 'Monda',
        content: 'Nombre común: Monda',
        cientific: 'Nombre científico: Oligoplites altus',
        /* '\nNombre Científico: Oligoplites altus', */
       
        aditionalinfo:'\nHábitat: Se encuentra en fondos suaves de fango, arena, grava, playa, estero y manglar, suele habitar también en agua dulce y columnas de agua.'
        '\nSu dieta consiste mayormente en peces óseos.'
        '\n \nSu distribución es desde Baja California sur a Chile.'
        '\n \nTalla máxima encontrada: 56 cm.',
        imagePath: 'assets/images/monda.png',
       
      ),

        // pampano [23]
        ItemData(
         
          header: 'Pampano',
        content: 'Nombre común: Pampano',
        cientific: 'Nombre científico: Trachinotus paitensis',
        /* '\nNombre Científico: Trachinotus paitensis', */
       
        aditionalinfo:'\nHábitat: Se encuentra en fondos suaves de fango, arena, grava, playa, estero y manglar, suele habitar también en agua dulce y columnas de agua.'
        '\nSu dieta consiste en peces óseos, camarones y cangrejos.'
        '\n \nSu distribución es desde Baja California a Chile.'
        '\n \nTalla máxima encontrada: 51 cm.',
        imagePath: 'assets/images/pampano.png',
       
      ),

        // palometa [24]
        ItemData(
         
          header: 'Palometa',
        content: 'Nombre común: Palometa',
        cientific: 'Nombre científico: Trachinotus kennedyi',
        /* '\nNombre Científico: Trachinotus kennedyi', */
       
        aditionalinfo:'\nHábitat: vive en fondos suaves de fango, arena, grava, playa, estero y manglar, suele habitar también en agua dulce y columnas de agua.'
        '\nSu dieta consiste en peces óseos, camarones y cangrejos.'
        '\n \nSu distribución es desde Baja California a Perú.'
        '\n \nTalla máxima encontrada: 90 cm.',
        imagePath: 'assets/images/palometa.png',
       
      ),


        // chiro [25]
        ItemData(
         
          header: 'Chiro',
        content: 'Nombre común: Chiro',
        cientific: 'Nombre científico: Elops affinis',
        /* '\nNombre Científico: Elops affinis', */
       
        aditionalinfo:'\nHábitat: Se encuentra en arrecifes, agua dulce y columnas de agua.'
        '\nSu dieta consiste en peces óseos, camarones y cangrejos.'
        '\n \nSu distribución es desde el Sur de California a Perú.'
        '\n \nTalla máxima encontrada: 91 cm.',
        imagePath: 'assets/images/chiro.png',
       
      ),

        // sabalo  [26]
        ItemData(
         
          header: 'Sábalo',
        content: 'Nombre común: Sábalo',
        cientific: 'Nombre científico: Chanos chanos',
        /* '\nNombre Científico: Chanos chanos', */
       
        aditionalinfo:'\nHábitat: suele vivir en arrecifes, agua dulce, corales y columnas de agua.'
        '\nSu dieta consiste en larvas pelágicas de peces, huevos pelágicos de peces, microalgas, camarones y cangrejos.'
        '\n \nSu distribución es desde el Sur de California a Perú.'
        '\n \nTalla máxima encontrada: 180 cm.',
        imagePath: 'assets/images/sabalo.png',
       
      ),

        // mojarra aleta amarilla [27]

        ItemData(
         
          header: 'Mojarra aleta amarilla',
        content: 'Nombre común: Mojarra aleta amarilla',
        cientific: 'Nombre científico: Diapterus peruvianus/brevirostris',
        /* '\nNombre Científico: Diapterus peruvianus', */
       
        aditionalinfo:'\nHábitat: Se encuentra en fondos de arena y esteros, incluyendo aguas salobres de las bocas de ríos.'
        '\nSu dieta consiste en gasterópodos, camarones y cangrejos.'
        '\n \nSu distribución es desde Mazatlán, México a Perú.'
        '\n \nTalla máxima encontrada: 35 cm.',
        imagePath: 'assets/images/mojarraamarilla.png',
       
      ),

        // roncacho [28]
        ItemData(
         
          header: 'Roncacho',
      content: 'Nombre común: Roncacho',
      cientific: 'Nombre científico: Haemulopsis leuciscus',
      /* '\nNombre Científico: Haemulopsis leuciscus', */
     
      aditionalinfo:'\nHábitat: Se encuentra en fondos de arena y grava, columnas de agua, fondos suaves, esteros manglares, playa.'
      '\nSu dieta consiste en gasterópodos, pulpos, calamares, sepias, camarones y cangrejos.'
      '\n \nSu distribución es desde el Golfo de California a Perú.'
      '\n \nTalla máxima encontrada: 45.7 cm.',
      imagePath: 'assets/images/roncacho.png',
     
    ),


        // burro blanco o ronco [29] 
        ItemData(
         
          header: 'Burro blanco o ronco',
      content: 'Nombre común: Burro blanco o ronco',
      cientific: 'Nombre científico: Rhencus panamensis',
      /* '\nNombre Científico: Rhencus panamensis', */
     
      aditionalinfo:'\nHábitat: Se encuentra en fondos de arena y grava, columnas de agua y fondos suaves.'
      '\nSu dieta consiste en gasterópodos, pulpos, calamares, sepias, camarones y cangrejos.'
      '\n \nSu distribución es desde el Golfo de California a Perú.'
      '\n \nTalla máxima encontrada: 39 cm.',
      imagePath: 'assets/images/burroblanco.png',
     
    ),

        // botete o tamborillo [30]

        ItemData(
         
          header: 'Botete o Tamborillo',
      content: 'Nombre común: Botete o Tamborillo',
      cientific: 'Nombre científico: Sphoeroides annulatus',
      /* '\nNombre Científico: Sphoeroides annulatus', */
     
      aditionalinfo:'\nHábitat: vive en fondos de arena, grava, manglar, estero, columnas de agua y fondos suaves.'
      '\nSu dieta consiste en gasterópodos, pulpos, calamares, sepias, camarones y cangrejos.'
      '\n \nSu distribución es desde el Golfo de California a Perú.'
      '\n \nTalla máxima encontrada: 44 cm.',
      imagePath: 'assets/images/botete.png',
     
    ),

        // pargo coconaco [31]

        ItemData(
         
          header: 'Pargo coconaco',
      content: 'Nombre común: Pargo coconaco',
      cientific: 'Nombre científico: Hoplopagrus guentherii',
      /* '\nNombre Científico: Hoplopargus guenterii', */
     
      aditionalinfo:'\nHábitat: Vive en arrecifes rocosos, coralinos o de ostras en agua dulce.'
      '\nSu dieta consiste en gasterópodos, estrellas de mar, pepinos, anémonas, camarones y cangrejos.'
      '\n \nSu distribución es desde el Golfo de California a Ecuador.'
      '\n \nTalla máxima encontrada: 92 cm.',
      imagePath: 'assets/images/pargococonaco.jpeg',
     
    ),


        // pargo colmillon [32] 
        ItemData(
         
          header: 'Pargo colmillón',
          content: 'Nombre común: Pargo colmillón',
          cientific: 'Nombre científico: Lutjanus jordani',
          /* '\nNombre Científico: Lutjanus jordani', */
         
          aditionalinfo:'\nHábitat: Vive en areas costeras incluyendo zonas de manglares de poca profundidad, además de esteros arrecifes y corales.'
          '\nSe alimenta de camarones, cangrejos, calamares, pulpos y peces óseos.'
					'\n \nSu distribución es desde Baja California Central al norte de Perú.'
          '\n \nTalla máxima encontrada: 60 cm.',
          imagePath: 'assets/images/pargocolmillon.jpeg',
         
        ),

        // pargo raicero [33]
        ItemData(
         
          header: 'Pargo raicero',
          content: 'Nombre común: Pargo raicero',
          cientific: 'Nombre científico: Lutjanus aratus',
          /* '\nNombre Científico: Lutjanus aratus', */
         
          aditionalinfo:'\nHábitat: Los adultos suelen vivir en aguas claras y profundas los juveniles en bahías costeras y estuarios.'
          '\nSe alimenta de camarones, cangrejos, calamares, sepias y peces óseos.'
					'\n \nSu distribución es desde el sur de Baja California al norte de Perú.'
          '\n \nTalla máxima encontrada: 100 cm.',
          imagePath: 'assets/images/pargoraicero.jpeg',
         
        ),

        // burro rayado [34]
        ItemData(
         
          header: 'Burro rayado',
          content: 'Nombre común: Burro rayado',
          cientific: 'Nombre científico: Anisostremus dovii',
          /* '\nNombre Científico: Anisostremus dovii ', */
         
          aditionalinfo:'\nHábitat: Vive en fondos blandos y apropiados para arrastres, también en columnas de agua.'
          '\nSe alimenta de camarones, cangrejos y gasterópodos.'
					'\n \nSu distribución es desde el Sureste del Golfo de California al norte de Perú.'
          '\n \nTalla máxima encontrada: 45 cm.',
          imagePath: 'assets/images/burrorayado.jpeg',
         
        ),
        // burro bacoco [35] 
        ItemData(
         
          header: 'Burro bacoco',
          content: 'Nombre común: Burro bacoco',
          cientific: 'Nombre científico: Anisostremus interruptus',
          /* '\nNombre Científico: Anisostremus interruptus ', */
         
          aditionalinfo:'\nHábitat: Suele vivir en arrecifes rocosos.'
          '\nSe alimenta de peces óseos, camarones y cangrejos.'
					'\n \nSu distribución es desde el Golfo de California a Perú.'
          '\n \nTalla máxima encontrada: 51 cm.',
          imagePath: 'assets/images/b_cacoco.png',
         
        ),
        // burro corcovado [36]
        ItemData(
         
          header: 'Burro corcovado',
          content: 'Nombre común: Burro corcovado',
          cientific: 'Nombre científico: Orthopristis chalceus',
          /* '\nNombre Científico: Orthopristis chalceus', */
         
          aditionalinfo:'\nHábitat: Usualmente se encuentra sobre fondos de arena o piedras, esteros y columnas de agua.'
          '\nSe alimenta de camarones y cangrejos.'
					'\n \nSu distribución es desde el sur y Golfo de California a Perú.'
          '\n \nTalla máxima encontrada: 45 cm.',
          imagePath: 'assets/images/burrocorcovado.jpeg',
         
        ),
        // burro roncacho [37]
        ItemData(
         
          header: 'Burro roncacho',
          content: 'Nombre común: Burro roncacho',
          cientific: 'Nombre científico: Pomadasys leusiscus',
          /* '\nNombre Científico: Pomadasys leusiscus', */
         
          aditionalinfo:'\nHábitat: Usualmente se encuentra en aguas costeras con fondos de arena o lodo.'
          '\nSe alimenta de camarones, cangrejos, pulpos, calamares y gasterópodos.'
					'\n \nSu distribución es desde el norte y Golfo de California a Perú.'
          '\n \nTalla máxima encontrada: 45.7 cm.',
          imagePath: 'assets/images/burroroncacho.jpeg',
         
        ),
        // mona [38]
        ItemData(
         
          header: 'Mona',
          content: 'Nombre común: Mona',
          cientific: 'Nombre científico: Chaetodipterus zonatus',
          /* '\nNombre Científico: Chaetodipterus zonatus', */
         
          aditionalinfo:'\nHábitat: Usualmente se encuentra en bahías y ensenadas con fondos de arena y piedras.'
          '\nSe alimenta de macroalgas, estrellas de mar, anémonas, pepinos de mar y crustaceos.'
					'\n \nSu distribución es desde el sur de California a Perú.'
          '\n \nTalla máxima encontrada: 65 cm.',
          imagePath: 'assets/images/mona.jpeg',
         
        ),
        // raton [39]
        ItemData(
         
          header: 'Ratón',
          content: 'Nombre común: Ratón',
          cientific: 'Nombre científico: Polydactylus approximans',
          /* '\nNombre Científico: Polydactylus approximans', */
         
          aditionalinfo:'\nHábitat: Vive en fondos de arena y lodo con frecuencia cerca de la boca de los rios o en playas arenosas donde rompen las olas.'
          '\nSe alimenta de peces óseos, gasterópodos, camarones y cangrejos.'
					'\n \nSu distribución es desde el centro de California a Chile.'
          '\n \nTalla máxima encontrada: 65 cm.',
          imagePath: 'assets/images/raton.jpeg',
         
        ),
        // baya o garropa pintada [40]
        ItemData(
         
          header: 'Baya o Garropa pintada',
      content: 'Nombre común: Baya o Garropa pintada',
      cientific: 'Nombre científico: Mycteroperca xenarcha',
      /* '\nNombre Científico: Mycteroperca xenarcha', */     
      aditionalinfo:'\nHábitat: Vive en arrecifes rocosos y esteros con manglares.'
      '\nSu dieta consiste en camarones, cangrejos y peces óseos.'
      '\n \nSu distribución es desde el Norte de California al centro de Perú.'
      '\n \nTalla máxima encontrada: 150 cm.',
      imagePath: 'assets/images/baya_garropa.png',     
    ),
    // Avomo [41]
    ItemData(
         
      header: 'Avomo',
  content: 'Nombre común: Avomo',
  cientific: 'Nombre científico: Eleotris picta',
  
       
  aditionalinfo:'\nHábitat: los adultos principalmente se restringen a agua dulce; juveniles se encuentran en áreas intermareales de baja salinidad, en las bocas de los ríos.'
  '\nSu dieta consiste en camarones, cangrejos y peces óseos.'
  '\n \nSu distribución es desde California a Perú.'
  '\n \nTalla máxima encontrada: 44 cm.',
  imagePath: 'assets/images/guavina1.jpeg',     
),
    // Guavina [42]
    ItemData(
         
      header: 'Guavina/Guabina',
  content: 'Nombre común: Guavina/Guabina',
  cientific: 'Nombre científico: Gobiomorus maculatus',
  
       
  aditionalinfo:'\nHábitat: normalmente se encuentra en agua dulce, pero tambien en áreas intermareales de baja salinidad.'
  '\nSu dieta consiste en camarones, cangrejos, zooplancton y peces óseos.'
  '\n \nSu distribución es desde Baja y Golfo de California al norte de Perú.'
  '\n \nTalla máxima encontrada: 27 cm.',
  imagePath: 'assets/images/dormilon1.jpeg',     
),
    // puyeque [43]
    ItemData(
         
      header: 'Puyeque',
  content: 'Nombre común: Puyeque',
  cientific: 'Nombre científico: Dormitator latifrons',
  
       
  aditionalinfo:'\nHábitat: normalmente se encuentra en aguas dulces y salobres.'
  '\nSu dieta consiste mayormente en microalgas e insectos.'
  '\n \nSu distribución es desde el sur de California, hasta el norte de Perú.'
  '\n \nTalla máxima encontrada: 41 cm.',
  imagePath: 'assets/images/puyeque1.jpeg',     
),   
    // lenguado [44]
    ItemData(       
      header: 'Lenguado/Comalito',
  content: 'Nombre común: Lenguado/Comalito',
  cientific: 'Nombre científico: Achirus mazatlanus',      
  aditionalinfo:'\nHábitat: suele vivir en fondos de lodo suave o de arena de bahías y esteros; también entra en agua dulce.'
  '\nSu dieta consiste en camarones, cangrejos y peces óseos.'
  '\n \nSu distribución es desde el Golfo de California a Perú.'
  '\n \nTalla máxima encontrada: 22.5 cm.',
  imagePath: 'assets/images/lenguado1.jpeg',     
),
    // Gualicoche [45]
  ItemData(       
    header: 'Gualicoche',
    content: 'Nombre común: Gualicoche',
    cientific: 'Nombre científico: Ctenogobius sagittula',      
    aditionalinfo:'\nHábitat: suele vivir en fondos de arena y lodo en bahías y esteros de poca profundidad.'
  '\nSu dieta consiste en microalgas bentónicas.'
  '\n \nSu distribución es desde el Golfo de California al norte de Perú.'
  '\n \nTalla máxima encontrada: 20 cm.',
    imagePath: 'assets/images/gualicoche.jpeg',     
    ),


      ], // aqui termina el corchete de Mylist     
    ),   
    /* ----------------------------------- */
    /* ----------PESTAÑA FIP-------------- */
    /* ----------------------------------- */   
    FractionallySizedBox(
      widthFactor: 0.9, // Factor de fracción para el ancho (0.8 = 80%)
      child: SingleChildScrollView(
      child: SizedBox(
        //width: 340, // Ancho de la pantalla en pixeles (no recomendado)
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('\n'),
            NewWidget(), 
            Text(
              '\nProyecto de Mejora Pesquera (FIP) Escama',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            Text(
              '\n¿Qué es un Proyecto de Mejora Pesquera?',
              style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
            ),
            Text(
              '\nUn proyecto de mejora pesquera es un esfuerzo de múltiples partes interesadas para hacer frente a los retos medioambientales de una pesquería.',
              textAlign: TextAlign.justify,
              style: TextStyle(fontSize: 12),
            ),

            Text(
              '\nUn FIP reúne a minoristas, transformadores, productores y pescadores para exigir y potenciar una mejor gestión de los recursos marinos, identificando los problemas medioambientales y aplicando medidas prioritarias para abordar las causas profundas del agotamiento de las pesquerías.',
              textAlign: TextAlign.justify,
              style: TextStyle(fontSize: 12),
            ),
            Text(
              '\nEn Nayarit, se está realizando un FIP a escala marina en el Área Natural Protegida Reserva de la Biosfera Marismas Nacionales Nayarit (RBMNN). El principal objetivo de este FIP es hacer sostenible la pesca de peces. RBMNN se ubica en el noroeste del estado de Nayarit. Está conformado por una gran red de lagunas costeras, manglares, esteros y deltas que representan entre el 15% y el 20% del total de los ecosistemas de manglares del país. Las tres principales pesquerías de peces en marismas son el robalo con una producción de 1,931 toneladas, el pargo con 684 toneladas y la corvina con 1902 toneladas según lo informado por CONAPESCA en 2020. En esta pesquería participan aproximadamente 435 embarcaciones y el 90% de los pescadores utilizan redes de malla y el resto utilizan líneas de mano o anzuelos.' 
              '\n',
              textAlign: TextAlign.justify,
              style: TextStyle(fontSize: 12),
            ),

            Text(
              '\nIntegrantes del FIP de Escama en Marismas Nacionales Nayarit y Sur de Sinaloa.' 
              '\n',
              textAlign: TextAlign.justify,
              style: TextStyle(fontSize: 13, fontWeight: FontWeight.bold),
            ),
            IntegrantesImg(),  

            Text('\nListado de Cooperativas que participan en el\n FIP escama en Marismas Nacionales Nayarit y Sinaloa.',
            textAlign: TextAlign.center,),
            Imgtable(),
            Imgtable2(),


            Text(
              /*  
              '\n\nProgramado por Cristian Jiménez Robles'
              '\nCon la ayuda de los estudiantes de la UPEN: Jasiel Martinez, Carlos Ramirez, Zaira Morquecho.'
              */'\n\nDirectorio'
              '\n\nDr. Gustavo D. Dannemann; Director Ejecutivo de Pronatura Noroeste AC (PNO)'
              '\nDr. Juan Carlos Bautista Covarrubia; Director Escuela Nacional de Ingeniería Pesquera (ENIP)'
              '\nIng. José Maria Robles Naya; Rector de la Universidad Politécnica del Estado de Nayarit (UPEN)'
              '\nBiol. Victor Hugo Vázquez Moran; Director Reserva de la Biósfera Marismas Nacionales Nayarit (CONANP)'
              '\n\nLiteratura citada'
              '\n\nFroese, R. and D. Pauly. Editors. 2024. FishBase.'
              'World Wide Web electronic publication.'
              'www.fishbase.org, version (02/2024).'
              '\n\n'
              'D R Robertson, Gerald R Allen, E. Peña, C. & A. Estape. 2024. Peces Costeros del Pacífico Oriental Tropical: sistema de Información en línea. Versión 3.0 Instituto Smithsonian de Investigaciones Tropicales, Balboa, República de Panamá.\n'

              '\n\nProgramado por Cristian Jiménez Robles'
              '\nCon la ayuda de los estudiantes de la UPEN: Jasiel Martinez, Carlos Ramirez y Zaira Morquecho.',
              

              style: TextStyle
              (fontSize: 10, 
              fontWeight: FontWeight.w500,
              color: Color.fromARGB(255, 103, 103, 103),
              
            ),
            ),
            
            Text(
              '\n\nEsta aplicación fue elaborada por el Ing. Cristian Jiménez Robles (UPEN) en colaboración con el Biólogo Carlos Torrescano Castro (PNO).\n'
              'Asesor académico: Dr. Juan Ramón Flores Ortega (ENIP).\n',
              
              style: TextStyle
              (fontSize: 10, 
              fontWeight: FontWeight.w500,
              color: Color.fromARGB(255, 81, 81, 81),
            ),
            ),
            LogosImg(),

          ],
        ),
      ),
    ),
    ),
    /* ----------------------------------- */
    /* PESTAÑA INFO DE MARISMAS NACIONALES */
    /* ----------------------------------- */
    FractionallySizedBox(
      widthFactor: 0.9, // Factor de fracción para el ancho (0.8 = 80%)
      child: SingleChildScrollView(     
      child: SizedBox(     
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,         
          children: [            
            NewWidgetgg(),
            Text(
              '\nMarismas Nacionales',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              
            ),           
            Text(
              '\nUbicada en los estados de Nayarit y Sinaloa, es reconocida por tener una de las mayores áreas de manglares del Pacífico Mexicano.',
              textAlign: TextAlign.justify,
              style: TextStyle(fontSize: 13),
            ),

            Text(
              '\nSu importancia',
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
            Text(
              '\nEste ecosistema resguarda alrededor del 20% de todos los manglares que hay en el país, y es reconocido como uno de los más productivos del noroeste, siendo catalogada como un area importante para la conservación de aves y de los humedales.\n',
              textAlign: TextAlign.justify,
              style: TextStyle(fontSize: 13),
            ),
            NewWidget1(),
            Text(
              '\nSu fauna',
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
            Text(
              '\nEn esta zona al menos 60 especies de vertebrados se encuentran bajo algún estatus de protección, según la Norma oficial Méxicana NOM-059-SEMARNAT-2001, destacando el Jaguar, Ocelote, Cocodrilo de Rio y Garza Morena además de 300 especies de aves tanto residentes como migratorias como puede ser la Cigueña Americana, Águila Pescadora, Chachalaca Pálida y Carpintero Enmascarado.\n',
              textAlign: TextAlign.justify,
              style: TextStyle(fontSize: 13),
            ),
            Galery2(),
            Text(
              '\nSu historia',
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
            Text(
              '\nLas Marismas Nacionales Nayarit fue reconocida en 1992 como sitio clave de conservación de aves acuáticas por la Red Hemisférica de Reservas para Aves Playeras. '
              '\n\nTambién es considerada por la Comisión Nacional para el Conocimiento y Uso de la Biodiversidad (CONABIO) como una región terrestre, marina e hidrológica prioritaria, principalmente por su riqueza biológica y ecosistémica.'
              '\n\nLa reserva de la biosfera Marismas Nacionales Nayarit fue reconocida como Area Natural Protegida el 12 de mayo de 2010 bajo Decreto Presidencial.\n',
              textAlign: TextAlign.justify,
              style: TextStyle(fontSize: 13),
            ),
            
            NewImag(),
            Text('\n'),

            Text(
              '\nInfogramas\n',
              textAlign: TextAlign.center,
              style: TextStyle
              (fontSize: 18, 
              fontWeight: FontWeight.bold,
              
            ),
            ),

            InfogramasG(),

              LogosImg(),
            Text(
              '\nProgramado por Cristian Jiménez Robles.\n',
              
              style: TextStyle
              (fontSize: 10, 
              fontWeight: FontWeight.w500,
              color: Color.fromARGB(255, 99, 99, 99),
            ),
            ),
          ],
        ),
      ),
    ),
    ),  
    /* ------------------------------------ */
    /*     PESTAÑA ANEXO FOTOGRÁFICO       */
    /* ---------------------------------- */    
    FractionallySizedBox(
      widthFactor: 0.9, // Factor de fracción para el ancho (0.8 = 80%)
      child: SingleChildScrollView(            
      child: SizedBox(       
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [                      
            Text(
              '\nAnexo Fotográfico\n',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
             NewWidget2(),
             Text('Fileteo de escama en Los Morillos, Tecuala\n',),
             NewWidget3(),
             Text('Embarcadero cooperativa Los Morillos, Tecuala\n',),
             NewWidget6(),
             Text('Sitio recepción en Los Morillos, Tecuala\n',),
             anexosiete(),
             Text('Sitio recepción Pimientillo, Rosamorada\n',),
             anexoocho(),
             Text('Jovenes de la comunidad de Boca de Camichin, Santiago Ixcuintla\n',),            
             Galery(),             
             //Text('\nListado de Cooperativas que participan en el\n FIP escama en Marismas Nacionales Nayarit y Sinaloa.',
             //textAlign: TextAlign.center,),
             //Imgtable(),
             //Imgtable2(),

             LogosImg(),

            Text(
              'Programado por Cristian Jiménez Robles.\n',
              
              style: TextStyle
              (fontSize: 10, 
              fontWeight: FontWeight.w500,
              color: Color.fromARGB(255, 99, 99, 99),
            ),
            ),
          ],
        ),
      ),
    ),
    ),
  
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }
    /* ----------------------------------- */
    /* --------------APPBAR--------------- */
    /* ----------------------------------- */  
  @override
  Widget build(BuildContext context) {   
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 101, 19, 163),
        //backgroundColor: Color.fromARGB(255, 54, 90, 197), // Cambiar el color de fondo de la AppBar
        title: Text(
          'Fish Marismas',
          style: TextStyle(color: Colors.white), // Cambiar el color del texto
        ),
        leading: Padding(
          padding: EdgeInsets.only(left: 16.0), // Agregar un padding
          child: CircleAvatar(
            backgroundColor: Colors.transparent, // Color de fondo transparente para el círculo
            backgroundImage: AssetImage('assets/images/appbaricon.jpeg'), // Ruta de tu imagen
            radius: 20, // Cambiar el tamaño de la imagen
          ),
        ),
      ),
    /* ----------------------------------- */
    /* -----------NAVBAR ICONS------------ */
    /* ----------------------------------- */   
      body: Container(
       //ancla//
        color: Color.fromARGB(255, 255, 255, 255),
       // color: Color.fromARGB(255, 201, 249, 249), // Define el color de fondo del cuerpo aquí
        child: Center(
          child: _widgetOptions.elementAt(_selectedIndex),
        ),       
      ),
      bottomNavigationBar: BottomNavigationBar(       
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Inicio',
            //backgroundColor: Color.fromARGB(255, 54, 90, 197),
            backgroundColor: Color.fromARGB(255, 101, 19, 163), //color del navbar
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.info),
            label: 'FIP',
            backgroundColor: Color.fromARGB(255, 110, 27, 174),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.waves),
            label: 'Marismas',
            backgroundColor: Color.fromARGB(255, 110, 27, 174),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.photo),
            label: 'Anexo Fotográfico',
            backgroundColor: Color.fromARGB(255, 110, 27, 174),
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Color.fromARGB(255, 242, 248, 51),
        onTap: _onItemTapped,
      ),
    );
  }
}

class NewWidgetgg extends StatelessWidget {
  const NewWidgetgg({
    super.key,
  });
  
  @override
  Widget build(BuildContext context) {
    return InteractiveViewer(
      boundaryMargin: EdgeInsets.all(10),
      minScale: 0.1,
      maxScale: 4.0,
      child: Image.asset(
        'assets/images/maris.jpeg', // Ruta de la imagen
        fit: BoxFit.contain, // Ajustar la imagen al contenedor
      ),
    );
  }
}
// ---- CLASES DEL ANEXO FOTOGRAFICO ---- //
class NewWidget1 extends StatelessWidget {
  const NewWidget1({
    super.key,
  });
  
  @override
  Widget build(BuildContext context) {
    return InteractiveViewer(
      boundaryMargin: EdgeInsets.all(10),
      minScale: 0.1,
      maxScale: 4.0,
      child: Image.asset(
        'assets/images/maris2.jpeg', // Ruta de la imagen
        fit: BoxFit.contain, // Ajustar la imagen al contenedor
      ),
    );
  }
}
class NewWidget2 extends StatelessWidget{
  const NewWidget2({
    super.key,
  });
  
  @override
  Widget build(BuildContext context) {
    return InteractiveViewer(
      boundaryMargin: EdgeInsets.all(10),
      minScale: 0.1,
      maxScale: 4.0,
      child: Image.asset(
        'assets/images/anex1.jpeg', // Ruta de la imagen
        fit: BoxFit.contain, // Ajustar la imagen al contenedor
      ),
    );
  }
}
class NewWidget3 extends StatelessWidget{
  const NewWidget3({
    super.key,
  });
  
  @override
  Widget build(BuildContext context) {
    return InteractiveViewer(
      boundaryMargin: EdgeInsets.all(10),
      minScale: 0.1,
      maxScale: 4.0,
      child: Image.asset(
        'assets/images/anex2.jpeg', // Ruta de la imagen
        fit: BoxFit.contain, // Ajustar la imagen al contenedor
      ),
    );
  }
}
class NewWidget4 extends StatelessWidget{
  const NewWidget4({
    super.key,
  });
  
  @override
  Widget build(BuildContext context) {
    return Image.asset('assets/images/anex3.jpeg');
  }
}
class NewWidget5 extends StatelessWidget{
  const NewWidget5({
    super.key,
  });
  
  @override
  Widget build(BuildContext context) {
    return Image.asset('assets/images/anex4.jpeg');
  }
}
class NewWidget6 extends StatelessWidget{
  const NewWidget6({
    super.key,
  });
  
  @override
  Widget build(BuildContext context) {
    return InteractiveViewer(
      boundaryMargin: EdgeInsets.all(10),
      minScale: 0.1,
      maxScale: 4.0,
      child: Image.asset(
        'assets/images/anex5.jpeg', // Ruta de la imagen
        fit: BoxFit.contain, // Ajustar la imagen al contenedor
      ),
    );
  }
}
class IntegrantesImg extends StatelessWidget {
  const IntegrantesImg({
    super.key,
  });
  
  @override
  Widget build(BuildContext context) {
    return InteractiveViewer(
      boundaryMargin: EdgeInsets.all(10),
      minScale: 0.1,
      maxScale: 4.0,
      child: Image.asset(
        'assets/images/integrantes.jpeg', // Ruta de la imagen
        fit: BoxFit.contain, // Ajustar la imagen al contenedor
      ),
    );
  }
}

class NewImag extends StatelessWidget{
  const NewImag({
    super.key,
  });
  
  @override
  Widget build(BuildContext context) {
    return InteractiveViewer(
      boundaryMargin: EdgeInsets.all(10),
      minScale: 0.1,
      maxScale: 4.0,
      child: Image.asset(
        'assets/images/maris3.jpeg', // Ruta de la imagen
        fit: BoxFit.contain, // Ajustar la imagen al contenedor
      ),
    );
  }
}
class Galery extends StatelessWidget{
  const Galery({
    super.key,
  });
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Padding(
          padding: const EdgeInsets.only(bottom: 1.0),
          child: InteractiveViewer(
            child: Image.asset('assets/images/img1.jpeg'),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(bottom: 32.0),
          child: Text(
            'Boca de Camichin',
          ),
        ),
// --------------SEPARACIÓN---------------//
Padding(
  padding: const EdgeInsets.only(bottom: 1.0),
  child: InteractiveViewer(
    child: Image.asset('assets/images/img2.jpeg'),
  ),
),
Padding(
  padding: const EdgeInsets.only(bottom: 32.0),
  child: Text(
    'Embarcadero la Brecha, Teacapan',
  ),
),
// --------------SEPARACIÓN---------------//
Padding(
  padding: const EdgeInsets.only(bottom: 1.0),
  child: InteractiveViewer(
    child: Image.asset('assets/images/img3.jpeg'),
  ),
),
Padding(
  padding: const EdgeInsets.only(bottom: 32.0),
  child: Text(
    'la Brecha, Teacapan, Sinaloa',
  ),
),
// --------------SEPARACIÓN---------------//
Padding(
  padding: const EdgeInsets.only(bottom: 1.0),
  child: InteractiveViewer(
    child: Image.asset('assets/images/img4.jpeg'),
  ),
),
Padding(
  padding: const EdgeInsets.only(bottom: 32.0),
  child: Text(
    'Monitoreo de Escama en Boca de Camichin',
  ),
),

// --------------SEPARACIÓN---------------//
Padding(
  padding: const EdgeInsets.only(bottom: 1.0),
  child: InteractiveViewer(
    child: Image.asset('assets/images/img5.jpeg'),
  ),
),
Padding(
  padding: const EdgeInsets.only(bottom: 32.0),
  child: Text(
    'Monitoreo de Robalo en Boca de Camichin',
  ),
),

// --------------SEPARACIÓN---------------//
Padding(
  padding: const EdgeInsets.only(bottom: 1.0),
  child: InteractiveViewer(
    child: Image.asset('assets/images/img6.jpeg'),
  ),
),
Padding(
  padding: const EdgeInsets.only(bottom: 32.0),
  child: Text(
    'Pescador de Boca de Camichín',
  ),
),
// --------------SEPARACIÓN---------------//
Padding(
  padding: const EdgeInsets.only(bottom: 1.0),
  child: InteractiveViewer(
    child: Image.asset('assets/images/img7.jpeg'),
  ),
),
Padding(
  padding: const EdgeInsets.only(bottom: 32.0),
  child: Text(
    'Embarcadero Boca Asadero, San Blas',
  ),
),
//--------------SEPARACIÓN---------------//
Padding(
  padding: const EdgeInsets.only(bottom: 1.0),
  child: InteractiveViewer(
    child: Image.asset('assets/images/img8.jpeg'),
  ),
),
Padding(
  padding: const EdgeInsets.only(bottom: 32.0),
  child: Text(
    'Sitio Recepción Boca de Camichín',
  ),
),

// --------------SEPARACIÓN---------------//
Padding(
  padding: const EdgeInsets.only(bottom: 1.0),
  child: InteractiveViewer(
    child: Image.asset('assets/images/img9.jpeg'),
  ),
),
Padding(
  padding: const EdgeInsets.only(bottom: 32.0),
  child: Text(
    'Monitor Pesquero Pimientillo, Rosamorada',
  ),
),
 
// --------------SEPARACIÓN---------------//
Padding(
  padding: const EdgeInsets.only(bottom: 1.0),
  child: InteractiveViewer(
    child: Image.asset('assets/images/img10.jpeg'),
  ),
),
Padding(
  padding: const EdgeInsets.only(bottom: 32.0),
  child: Text(
    'Sitio Recepción Pimientillo, Rosamorada',
  ),
),

// --------------SEPARACIÓN---------------//
Padding(
  padding: const EdgeInsets.only(bottom: 1.0),
  child: InteractiveViewer(
    child: Image.asset('assets/images/img11.jpeg'),
  ),
),
  Padding(
    padding: const EdgeInsets.only(bottom: 32.0),
    child: Text(
      'Monitoreo Pimientillo (UAN)',
    ),
  ),

// --------------SEPARACIÓN---------------//
Padding(
  padding: const EdgeInsets.only(bottom: 1.0),
  child: InteractiveViewer(
    child: Image.asset('assets/images/img12.jpeg'),
  ),
),
  Padding(
   padding: const EdgeInsets.only(bottom: 32.0),
   child: Text(
      'Embarcadero Unión de Corrientes, Tuxpan',
    ),
  ),
// --------------SEPARACIÓN---------------//
Padding(
  padding: const EdgeInsets.only(bottom: 1.0),
  child: InteractiveViewer(
    child: Image.asset('assets/images/img13.jpeg'),
  ),
),
Padding(
  padding: const EdgeInsets.only(bottom: 32.0),
  child: Text(
    'Embarcadero Cooperativa IGNLOGAR, Tecuala',
  ),
),
 // --------------SEPARACIÓN---------------//
Padding(
  padding: const EdgeInsets.only(bottom: 1.0),
  child: InteractiveViewer(
    child: Image.asset('assets/images/img14.jpeg'),
  ),
),
Padding(
  padding: const EdgeInsets.only(bottom: 32.0),
  child: Text(
    'Monitoreo Boca Camichin (ENIP-PNO)',
  ),
),
 // --------------SEPARACIÓN---------------//
 Padding(
  padding: const EdgeInsets.only(bottom: 1.0),
  child: InteractiveViewer(
    child: Image.asset('assets/images/img15.jpeg'),
  ),
),
Padding(
  padding: const EdgeInsets.only(bottom: 32.0),
  child: Text(
    'Monitoreo de peces (SEDER-PNO)',
  ),
),
 // --------------SEPARACIÓN---------------//
 Padding(
  padding: const EdgeInsets.only(bottom: 1.0),
  child: InteractiveViewer(
    child: Image.asset('assets/images/img16.jpeg'),
  ),
),
Padding(
  padding: const EdgeInsets.only(bottom: 32.0),
  child: Text(
    'Monitoreo peces San Blas (ENIP-CONANP)\n',
  ),
),
      ],
    );
  }
}



class Galery2 extends StatelessWidget{
  const Galery2({
    super.key,
  });
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
      
        Padding(
          padding: const EdgeInsets.only(bottom: 1.0),
          child: InteractiveViewer(
            child: Image.asset('assets/marismas/jaguar.jpeg'),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(bottom: 32.0),
          child: Text(
            'Jaguar (Panthera Onca)',
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(bottom: 1.0),
          child: InteractiveViewer(
            child: Image.asset('assets/marismas/garza.jpeg'),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(bottom: 32.0),
          child: Text(
            'Espátula rosada (Platalea ajaja)',
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(bottom: 1.0),
          child: InteractiveViewer(
            child: Image.asset('assets/marismas/tucan.jpeg'),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(bottom: 32.0),
          child: Text(
            'Garza pico de bote (Cochlearius cochlearius)',
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(bottom: 1.0),
          child: InteractiveViewer(
            child: Image.asset('assets/marismas/cocodrilo.jpeg'),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(bottom: 32.0),
          child: Text(
            'Cocodrilo de rio (Crocodylus acutus)',
          ),
        ),
      ],
    );
  }
}

  
class InfogramasG extends StatelessWidget{
  const InfogramasG({
    super.key,
  });
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
      
        Padding(
          padding: const EdgeInsets.only(bottom: 1.0),
          child: InteractiveViewer(
            child: Image.asset('assets/marismas/infograma_robalo.jpeg'),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(bottom: 32.0),
          child: Text(
            'Infograma Robalo',
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(bottom: 1.0),
          child: InteractiveViewer(
            child: Image.asset('assets/marismas/infograma_pargo.jpeg'),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(bottom: 32.0),
          child: Text(
            'Infograma Pargo',
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(bottom: 1.0),
          child: InteractiveViewer(
            child: Image.asset('assets/marismas/infograma_curvina.jpeg'),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(bottom: 32.0),
          child: Text(
            'Infograma Curvina',
          ),
        ),

      ],
    );
  }
}



// Creación de las clases para añadir nuevas Imagenes
// Solo manda a llamar la clase  NewClass(),

class NewWidget extends StatelessWidget {
  const NewWidget({
    super.key,
  });
  
  @override
  Widget build(BuildContext context) {
    return InteractiveViewer(
      boundaryMargin: EdgeInsets.all(10),
      minScale: 0.1,
      maxScale: 4.0,
      child: Image.asset(
        'assets/images/back_info.jpeg', // Ruta de la imagen
        fit: BoxFit.contain, // Ajustar la imagen al contenedor
      ),
    );
  }
}

class Imgtable extends StatelessWidget {
  const Imgtable({
    super.key,
  });
  
  @override
  Widget build(BuildContext context) {
    return InteractiveViewer(
      boundaryMargin: EdgeInsets.all(10),
      minScale: 0.1,
      maxScale: 4.0,
      child: Image.asset(
        'assets/images/tablee.png', // Ruta de la imagen
        fit: BoxFit.contain, // Ajustar la imagen al contenedor
      ),
    );
  }
}

class Imgtable2 extends StatelessWidget {
  const Imgtable2({
    super.key,
  });
  
  @override
  Widget build(BuildContext context) {
    return InteractiveViewer(
      boundaryMargin: EdgeInsets.all(20),
      minScale: 0.1,
      maxScale: 4.0,
      child: Image.asset(
        'assets/images/tablee2.png', // Ruta de la imagen
        fit: BoxFit.contain, // Ajustar la imagen al contenedor
      ),
    );
  }
}

class LogosImg extends StatelessWidget {
  const LogosImg({
    super.key,
  });
  
  @override
  Widget build(BuildContext context) {
    return Image.asset('assets/images/logossf.png', width: double.infinity,);//anexo logos    
  }
}
class anexosiete extends StatelessWidget {
  const anexosiete({
    super.key,
  });
  
  @override
  Widget build(BuildContext context) {
    return InteractiveViewer(
      boundaryMargin: EdgeInsets.all(10),
      minScale: 0.1,
      maxScale: 4.0,
      child: Image.asset(
        'assets/images/anexo7.jpeg', // Ruta de la imagen
        fit: BoxFit.contain, // Ajustar la imagen al contenedor
      ),
    );
  }
}
class anexoocho extends StatelessWidget {
  const anexoocho({
    super.key,
  });
  
  @override
  Widget build(BuildContext context) {
    return InteractiveViewer(
      boundaryMargin: EdgeInsets.all(10),
      minScale: 0.1,
      maxScale: 4.0,
      child: Image.asset(
        'assets/images/anexo8.jpeg', // Ruta de la imagen
        fit: BoxFit.contain, // Ajustar la imagen al contenedor
      ),
    );
  }
}
class anexonueve extends StatelessWidget {
  const anexonueve({
    super.key,
  });
  
  @override
  Widget build(BuildContext context) {
    return Image.asset('assets/images/anexo9.jpeg');   
  }
}
class MyList extends StatefulWidget {
  final List<ItemData> items;

  const MyList({required this.items, Key? key}) : super(key: key);

  @override
  _MyListState createState() => _MyListState();
}
    /* ----------------------------------- */
    /* --------RETORNAR LOS ITEMS--------- */
    /* ----------------------------------- */  
class _MyListState extends State<MyList> {
  late List<Item> _data;

  @override
  //retornar los items
  void initState() {
    super.initState();
    _data = widget.items.map((item) {
      return Item(
        headerValue: item.header,
        expandedValue: item.content, 
        expandedValue2: item.aditionalinfo,
        cientific: item.cientific,
        imagePath: item.imagePath,
      );
    }).toList();
  }
// ---- WIDGET RETORNAR LOS ELEMENTOS DE LA LISTA ---- //
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: ExpansionPanelList(
        expansionCallback: (int index, bool isExpanded) {
          setState(() {
            _data[index].isExpanded = !isExpanded;
          });
        },
        children: _data.map<ExpansionPanel>((Item item) {
          return ExpansionPanel(
            headerBuilder: (BuildContext context, bool isExpanded) {
              return InkWell(
                onTap: () {
                  setState(() {
                    item.isExpanded = !item.isExpanded;
                  });
                },
                child: ListTile(
                  leading: CircleAvatar(
                    backgroundImage: AssetImage(item.imagePath),
                  ),
                  title: Text(item.headerValue),
                ),
              );
            },
            body: ListTile(
              title: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(item.expandedValue,
                  style: TextStyle(),
                  ),  
                  Text(item.cientific,
                  style: TextStyle(fontStyle: FontStyle.italic, fontWeight: FontWeight.bold),
                ),
                            
                  SizedBox(height: 10),                 
                  Image.asset(
                    item.imagePath,
                    // height del retorno de elementos //
                    height: 150,
                    width: double.infinity,
                    fit: BoxFit.contain,
                    
                  ),
                  Text(item.expandedValue2
                 
                ), //Posicion del 'aditional info'
                  // ya sea abajo  de la imagen o arriba
                ],
              ),              
            ),          
            isExpanded: item.isExpanded,
          );        
        }).toList(),      
      ),    
    );   
  }
}
// class itemdata
class ItemData {
  final String header;
  final String content;
  final String cientific;
  final String imagePath;
  final String aditionalinfo; //add this

  const ItemData({
    required this.header,
    required this.content,
    required this.cientific,
    required this.imagePath, 
    required this.aditionalinfo, //add this
  });
}
// class item
class Item {
  Item({
    required this.expandedValue,
    required this.expandedValue2, //aditional info variable
    required this.cientific,
    required this.headerValue,
    required this.imagePath,
    this.isExpanded = false,
  });
  String expandedValue;
  String expandedValue2; //add this
  String cientific;
  String headerValue;
  String imagePath;
  bool isExpanded;
}
    /* ----------------------------------- */
    /* ----BY CRISTIAN JIMENEZ ROBLES----- */
    /* ----------------------------------- */