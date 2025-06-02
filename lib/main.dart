import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // TRY THIS: Try running your application with "flutter run". You'll see
        // the application has a purple toolbar. Then, without quitting the app,
        // try changing the seedColor in the colorScheme below to Colors.green
        // and then invoke "hot reload" (save your changes or press the "hot
        // reload" button in a Flutter-supported IDE, or press "r" if you used
        // the command line to start the app).
        //
        // Notice that the counter didn't reset back to zero; the application
        // state is not lost during the reload. To reset the state, use hot
        // restart instead.
        //
        // This works for code too, not just values: Most code changes can be
        // tested with just a hot reload.
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page 2'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  
  
  
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final foto = const CircleAvatar(
   backgroundImage: NetworkImage('data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAKwAAACUCAMAAAA5xjIqAAAAkFBMVEX////tNnj8///srsPtFWv5///vNHjpOHj8/f///f/tLnTsJHDtG23rMXXtIG/uKnPmZ5T49/r37/Txz9znP3v05+32y9ny3OXzssrqVYjspb3w1uHrRoHia5TuAGbz4urrlLHqe6DsucvviqnqjKzwd573v9LnmbLwZ5TwcKHnW4zpgqXfGmrgSX/rw9Tkg6F271HhAAAL6UlEQVR4nO1caXeqyhKFkqaxm2ZGBEkYYqJPE/P//92rwpwMCkICJveDe51118oVYdtdc1WjaTfccMMNN9xwww033HDDDTfccMMN1wM0/xoERRIuDk9PT/ViEa5i//2C/xCYxhgr6k21TfNIN00hTFOP8nRblXV8/PyvKb4DfH/5P+66rlBK1znX6T9c4J/4T0RV/W+J/xZgAfjJ0hOGIIomQT+CE2lOy+waz3fLxAcA62/Jan5d5dI9EiWOwnVsw7Ydx5bKfCfvyryq/3h5wZ+lggTUJJauECr39uUmWy6zrNx7KYmGK4guirFIs+APqcYZN4RuNuvJ07uyTr7uM8Cq3jziz1HHRbd5FgPM/4KqP9s5DQlTyl15QKFEdicXMdCs+FDupGyuVM5u5v+BIWPhTtAGc+GofRigomnzc/2xLIu0MAj3jqGOIu2F8LuWFyAunxutUmo7GySJwWwr3EZintcxsPnvGV4IdzY3aVu3Ne3+oC/5tSdNE42Z3IXsTGCuAxRDyCKXowWweR0MfShdFzxxG8nqkme/whasueZ7tomPdKPyu4oNbMMb0bU9X5tfny5AkTr0POduxb77uDmD1SOZENPZJtfmasGcLVJBLuk5OxdW9Kek/MyazwFoo0/5kB0INhJlSBdpOFTYfwi8/apxWPJl0Sp0zApmVR5FkZ7ulxQNtFzCwlySzRWr1s+nAzsIE1VLboNWW+kfKsNoQgKupKH2i/NwwLKABVuJoYTuHK5qv1gYueTnX4NzZ4VuYVUJXLN/YZcppNonZxfS3/GeRElFh+tJAmhJhKGAaZc+O1NlYKjpDtc/QOvr5HUrHbYx6OPoilpW5LSuqsRg5NwQ+HtD/wKKxUx+X7YFA2jDMLgx3ai4EluI71zcY7XRtPO9ZUHlvAvAJ8JoN8rWOLZhq7t3wXXsLVujtyQZaN3XkuxRK8SyVY9YaZC9XbNvW+shyGzcWVm1mhuYGbjl7WSVHbZ9xYJX0kYjm94kWGyF28YdryXEwtQqjkQ7U0rG3F17DBt4gmzG9EoGPgqsLvIVpoinn6FpKJ1OrhRFzNq3Y5UrctuT52YsQ2+AZryFK25okYoW7fq3srrYtQdn6GLwc7mZlirae45pgb1pfaYFM9m9sI3YLlq5WkBKpqJkYrYkXiJtlz3Lf3Qvk5VlW8UA5uBTVCTvJuXKFhjBcnVotzIQq8tcdbVrTX2Q7QKli9+vptQxa0cLu+4oqMDKuEgVrbOKO25srfHOKp1Sx57Q4JvdrrG+7yGrG11iyYoIIzS9noopaMEj2lhn01WqIo/QA6NVwxps0Oq53uBcrpftQXJTcN/qIptdsLK9ZC3aNXWYKFYE8NDvy6zzboCO+Odk2Qx/qvSmcboAsUQnlBfdVzz1KZh+3/1tDDzRmBjxRCtb2qYpWi3l2wX91uC5wxrQt2GDBsFeT7O0fo5Piy6YQoi7osM3suRvL5BdYbjm5sEkUntQpK6Xin++1+NunfWlcsjcw4RZHCagqmkPDuf2jHWLwZwt+2KDw8VVq1GM5MN5Xvd9xCnm3salSiEmkqm6IAim2l42o/49hrW7brEeCgYrnZsq7RH/sjOSoaxRtsezHw+hCJOPDxCAzdAj2LOey2K9a2mRrHjpqXZDhmIkZ6M1DOYVxkXPfakHq2UXWV2oVU+ZCBLyC/suDzkcFHGKtK+4bTFKbD6aYJ8hst6SVpAqXfWtfz+gwAzBrfpCOAx27hyzlay9bsmETr7s70kOLni5gWRDMivdccH7dcyv5GkiRvIqy966AC48Ce2F+GEoKEhR9ZANYpvopNaFdiDvU83mm1qN1zvZSKoAuEFmFLIBBXlgoWeIz2Td+yphA5p0TAtzU5evI8lipuhi1lFoAxSVytoHTxdCKSWUcAV/HFzcRq+ii+1oBUuPYcjQ+7Aie9hud7tttZ7FjA39XrAVpsrHkvUjtD2eP7jHRp3GII7joOnYW0Pr8HOq90Qju7oQUK/icaC5njdNMqAf1jRAQBtaIbQeyeGObJpDgPGhqIaIrEa9DVzVJFwsl8t6ESZxMLwKX6G77srXhwJ9Atfdh/7dpCugqMvHlCvpOI6UItpVmwMt1oDGMjyg71FjvUKCNxEP0CeyROawzQXagA8vJlyX5/uwpR92/v21S8XP3yFrxSU3hDhPb5RzHy37xWEask1osO+Lmoosb8YJTrg2f3Jl909EwBoVTI0k+6Zgl7wQ0qhT0V34JnlQ27Dn906hYNqb6ep+0pwFlaE62gkf0tDeYXoHmi5TH2u6NCtCslu/y3ShMIap00cVwwQuveSC4PpU/x3rFNDdotNOO8slwOqop5D8Bu7kq241DXZKN9Ox7pbhT1Zp0vUYNjNF77q+sRV62PmYJBfcHVvvsmDvUojY/pvn2kzQAN8gsib+rEOXpoa50J396PQ2s00Tg+/W1hCrL1uBE7a6G7VLAmDwber22OCb0hrTdDq6gCve10z4QpabKP3tT8mkye1uKRlKNpZItjVhhDh1h0nABzDahPMqEWD+hg5sdNUT/BfXbEvFLWDrngpXy+JiotUmUXGT74/ugoD1YGN61OII2UEOVK3PbJU6tyygJc9UmRtbmIM5m6HXbpF9FnxLYN/hpudLCxuDCmLjC7SwQofrvpyT3fyIK67gWRsJNBS1KQpzKE+Yy/H7s5SxSH9IVp1MAaDHDuym5NkbiA5AKVEvzvYo+7Z2/YOoT2brmyKiKCcZ8jrQYMzXMj1A8PLDhaW+8kkA5m8pvRhfPGru9YJKf+Jx2VNv6+sC2+Sz0wUWkk0bXTQ43qxpWH5tLQHbfsPPnsL4Mg0BVom+xZhmQgK3HIVWfGnagW8PjLXaIPhnmYUiRylwphq0h0pSO1T7FDLVP1Yv3HHT/vzD2QZdrawmGpgCWNBAl/I/3W/9YyloarbLT7f3FQ1z9OVow+FXGNTa648WPtXRfkzW/Bq5ljalpBMeCDjQgvCPLkiRjtAvk2Kvf3eCJKL/cWp6RwBgh/7Q3b8/gmq/I/AR1oJPw6muN+UJIZZgCK6rd69+6BrlG4h89eYQ2RNtkTHx0FwlFQZMwZvY1ublPngf+OJt24NmVKqalCqJlqCRzDednV0YkBtIVmtCmDW1Vy7l6D/hijk36f+/tk3WUoL7Dswnug8AJcfUB50afkUDWPzYt1kOK2x0ctVrTIswGY0UCcH0h9pYoWhyEqNOZJvdS+PnsA2nplp6jDZGV6PLcefAnLQmi+DckdiuZqOwnCW4spZHE+RGe01iLNjGpXFftLYWjAXezd+TExcTz6O+kw0qaqmISeaEwG8myN3Ha53CxPTApX7seuzGUdX+FeNOLl6mF9h3xC90FsVASRhRSgWam321KfzK4wtzQqOxyqliJKoxlR6wWPFIh2togvyqh8JC3sjtrvjpiSM6A10ci2S8bxxlLCDmNK/vRHXffEYHLDY/cJf6+1EyZDBgHJKdq3Pdlev42ydSm1Zj/IAxkalTj2Fgl3UEoLgzdHLp3mLI4MNnWM0ABaVv3LgrtF8gi1L3amMgYwpeBd9L84AFry4FbMrZD59FGAlW54qCMCmyb9nJeCZsepGAeKmvfCLwA2jTk2YzTVPukC60nLs++QYdwAyylCbVUFx3l1pikwMgKO3m+LVw003Rn+0xLdmkzWF87qjNL785wKKjbArNAlUBbK+O50cn2gLcbz9eeLbdZBfCvCt+SwK+kKg9eXy5hWvnD/XKPw4WYOzXnL235loTXwVJvc+NY7Qu1La+ylm1frIQ1MfOPcflFbm3ni0COjlM0zGMRmX8YDFbb3NXqiYLEvKlOVv+F2ybE8yHrXKbggdXQjiu4uldtS+zrFxXXhopx3GFoiYkF67u0Yn9P32pDBweUnk0DQ2EK6Vt21K6rvnxApHm3RJ/SbOBpTEonipu2MI8n/I80rcdvq8L+K13GlwETZsFYbnjKBDNG0/eiCqhlEDB2K1D/2jb/gNkGzAGqE3lo5emefOSHp7nu+1jiTo3RRNmWqCxIss1D+JkFS4QYZgUgdXYsr94F8sNN9xwww033HDDDT/G/wGFBq0NFP3ZgQAAAABJRU5ErkJggg=='),
  radius: 150,
  );
  final nome = const Text(
    'Yane Livia Cavalcante',
    style: TextStyle(fontSize: 30),
    textAlign: TextAlign.center,
  );
  final botaotelefone = IconButton(
    color: Colors.deepPurpleAccent,
    icon: const Icon(Icons.phone),
    onPressed: () {
      launchUrl(Uri(scheme: 'tel', path: '9999-9999'));
    },
  );

   final botaoemail = IconButton(
    color: Colors.deepPurpleAccent,
    icon: const Icon(Icons.email),
    onPressed: () {
      launchUrl(Uri(scheme: 'email', path: 'yanelivia04@gamail.com'));
    },
  );

 final botaosms= IconButton(
    color: Colors.deepPurpleAccent,
    icon: const Icon(Icons.sms),
    onPressed: () {
      launchUrl(Uri(scheme: 'sms', path: '9999-9999'));
    },
  );

  
 Widget build(BuildContext contexto){
  return Scaffold(
    body: Column(
      mainAxisAlignment: MainAxisAlignment.center,
        children: [
          foto,
          nome,
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              botaoemail, botaosms, botaotelefone
            ],
          )
        ],
    )
  );
 }

}