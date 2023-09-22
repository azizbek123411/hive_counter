import 'package:flutter/material.dart';
import 'package:hive_counter/service/local_database.dart';

class HomePage extends StatefulWidget {
  static const String id = "home_page";

  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int bomdod = 0;
  int peshin = 0;
  int asr = 0;
  int shom = 0;
  int xufton = 0;
  int vitr = 0;
  HiveLocal local = HiveLocal();

  void getLocale() async {
    final addBomdod = await local.getFunction("bomdodCounter");
    final addPeshin = await local.getFunction("peshinCounter");
    final addASr = await local.getFunction("asrCounter");
    final addShom = await local.getFunction("shomCounter");
    final addXufton = await local.getFunction("xuftonCounter");
    final addVitr = await local.getFunction("vitrCounter");
    setState(() {
      bomdod = addBomdod ?? bomdod;
      peshin = addPeshin ?? 0;
      asr = addASr ?? 0;
      shom = addShom ?? 0;
      xufton = addXufton ?? 0;
      vitr = addVitr ?? 0;
    });
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    getLocale();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black54,
      appBar: AppBar(
        backgroundColor: Colors.black54,
        centerTitle: true,
        title: const Text(
          "Qoldirilgan namozlar",
          style: TextStyle(
            color: Colors.white,
          ),
        ),
      ),
      body: SizedBox(
        height: double.infinity,
        width: double.infinity,
        child: ListView(
          children: [
            Column(
              children: [
                const Text(
                  "Bomdod",
                  style: TextStyle(color: Colors.white, fontSize: 20),
                ),
                const SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      height: 50,
                      width: 50,
                      decoration: BoxDecoration(
                        color: Colors.green,
                        borderRadius: BorderRadius.circular(30),
                      ),
                      child: IconButton(
                        onPressed: () {
                          setState(() {
                            if(bomdod>0){
                              bomdod--;
                            }bomdod-=0;
                          });
                          local.addFunction(bomdod, "counter");
                        },
                        icon: const Icon(
                          Icons.remove,
                          color: Colors.white,
                        ),
                      ),
                    ),
                    Container(
                      height: 60,
                      width: 140,
                      decoration: BoxDecoration(
                        color: Colors.green,
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Center(
                          child: Text(
                        "$bomdod",
                        style:
                            const TextStyle(color: Colors.white, fontSize: 20),
                      )),
                    ),
                    Container(
                      height: 50,
                      width: 50,
                      decoration: BoxDecoration(
                          color: Colors.green,
                          borderRadius: BorderRadius.circular(30)),
                      child: IconButton(
                        onPressed: () {
                          setState(() {
                            bomdod++;
                          });
                          local.addFunction(bomdod, "bomdodCounter");
                        },
                        icon: const Icon(
                          Icons.add,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 10,
                ),
              ],
            ),
            Column(
              children: [
                const Text(
                  "Peshin",
                  style: TextStyle(color: Colors.white, fontSize: 20),
                ),
                const SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      height: 50,
                      width: 50,
                      decoration: BoxDecoration(
                          color: Colors.green,
                          borderRadius: BorderRadius.circular(30)),
                      child: IconButton(
                        onPressed: () {
                          setState(() {
                            if(peshin>0){
                              peshin--;
                            }peshin-=0;
                          });
                          local.addFunction(peshin,"peshinCounter");
                        },
                        icon: const Icon(
                          Icons.remove,
                          color: Colors.white,
                        ),
                      ),
                    ),
                    Container(
                      height: 60,
                      width: 140,
                      decoration: BoxDecoration(
                        color: Colors.green,
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Center(
                          child: Text(
                        "$peshin",
                        style:
                            const TextStyle(color: Colors.white, fontSize: 20),
                      )),
                    ),
                    Container(
                      height: 50,
                      width: 50,
                      decoration: BoxDecoration(
                          color: Colors.green,
                          borderRadius: BorderRadius.circular(30)),
                      child: IconButton(
                        onPressed: () {
                          setState(() {
                            peshin++;
                          });
                          local.addFunction(peshin,"peshinCounter");
                        },
                        icon: const Icon(
                          Icons.add,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 10,
                ),
              ],
            ),
            Column(
              children: [
                const Text(
                  "Asr",
                  style: TextStyle(color: Colors.white, fontSize: 20),
                ),
                const SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      height: 50,
                      width: 50,
                      decoration: BoxDecoration(
                          color: Colors.green,
                          borderRadius: BorderRadius.circular(30)),
                      child: IconButton(
                        onPressed: () {
                          setState(() {
                            if(asr>0){
                              asr--;
                            }asr-=0;
                          });
                          local.addFunction(asr,"asrCounter");
                        },
                        icon: const Icon(
                          Icons.remove,
                          color: Colors.white,
                        ),
                      ),
                    ),
                    Container(
                      height: 60,
                      width: 140,
                      decoration: BoxDecoration(
                        color: Colors.green,
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Center(
                          child: Text(
                        "$asr",
                        style:
                            const TextStyle(color: Colors.white, fontSize: 20),
                      )),
                    ),
                    Container(
                      height: 50,
                      width: 50,
                      decoration: BoxDecoration(
                          color: Colors.green,
                          borderRadius: BorderRadius.circular(30)),
                      child: IconButton(
                        onPressed: () {
                          setState(() {

                              asr++;

                          });
                          local.addFunction(asr,"asrCounter");
                        },
                        icon: const Icon(
                          Icons.add,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 10,
                ),
              ],
            ),
            Column(
              children: [
                const Text(
                  "Shom",
                  style: TextStyle(color: Colors.white, fontSize: 20),
                ),
                const SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      height: 50,
                      width: 50,
                      decoration: BoxDecoration(
                          color: Colors.green,
                          borderRadius: BorderRadius.circular(30)),
                      child: IconButton(
                        onPressed: () {
                          setState(() {
                            if(shom>0){
                              shom--;
                            }asr-=0;
                          });
                          local.addFunction(shom,"shomCounter");

                        },
                        icon: const Icon(
                          Icons.remove,
                          color: Colors.white,
                        ),
                      ),
                    ),
                    Container(
                      height: 60,
                      width: 140,
                      decoration: BoxDecoration(
                        color: Colors.green,
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Center(
                          child: Text(
                        "$shom",
                        style:
                            const TextStyle(color: Colors.white, fontSize: 20),
                      )),
                    ),
                    Container(
                      height: 50,
                      width: 50,
                      decoration: BoxDecoration(
                          color: Colors.green,
                          borderRadius: BorderRadius.circular(30)),
                      child: IconButton(
                        onPressed: () {
                          setState(() {
                              shom++;
                          });
                          local.addFunction(shom,"shomCounter");

                        },
                        icon: const Icon(
                          Icons.add,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 10,
                ),
              ],
            ),
            Column(
              children: [
                const Text(
                  "Xufton",
                  style: TextStyle(color: Colors.white, fontSize: 20),
                ),
                const SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      height: 50,
                      width: 50,
                      decoration: BoxDecoration(
                          color: Colors.green,
                          borderRadius: BorderRadius.circular(30)),
                      child: IconButton(
                        onPressed: () {
                          setState(() {
                            if(xufton>0){
                              xufton--;
                            }xufton-=0;
                          });
                          local.addFunction(xufton,"xuftonCounter");

                        },
                        icon: const Icon(
                          Icons.remove,
                          color: Colors.white,
                        ),
                      ),
                    ),
                    Container(
                      height: 60,
                      width: 140,
                      decoration: BoxDecoration(
                        color: Colors.green,
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Center(
                          child: Text(
                        "$xufton",
                        style:
                            const TextStyle(color: Colors.white, fontSize: 20),
                      )),
                    ),
                    Container(
                      height: 50,
                      width: 50,
                      decoration: BoxDecoration(
                          color: Colors.green,
                          borderRadius: BorderRadius.circular(30)),
                      child: IconButton(
                        onPressed: () {
                          setState(() {
                              xufton++;
                          });
                          local.addFunction(xufton,"xuftonCounter");

                        },
                        icon: const Icon(
                          Icons.add,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 10,
                ),
              ],
            ),
            Column(
              children: [
                const Text(
                  "Vitr",
                  style: TextStyle(color: Colors.white, fontSize: 20),
                ),
                const SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      height: 50,
                      width: 50,
                      decoration: BoxDecoration(
                          color: Colors.green,
                          borderRadius: BorderRadius.circular(30)),
                      child: IconButton(
                        onPressed: () {
                          setState(() {
                            if(vitr>0){
                              vitr--;
                            }vitr-=0;
                          });
                          local.addFunction(vitr,"vitrCounter");
                        },
                        icon: const Icon(
                          Icons.remove,
                          color: Colors.white,
                        ),
                      ),
                    ),
                    Container(
                      height: 60,
                      width: 140,
                      decoration: BoxDecoration(
                        color: Colors.green,
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Center(
                          child: Text(
                        "$vitr",
                        style:
                            const TextStyle(color: Colors.white, fontSize: 20),
                      )),
                    ),
                    Container(
                      height: 50,
                      width: 50,
                      decoration: BoxDecoration(
                          color: Colors.green,
                          borderRadius: BorderRadius.circular(30)),
                      child: IconButton(
                        onPressed: () {
                          setState(() {
                              vitr++;
                          });
                          local.addFunction(vitr,"asrCounter");

                        },
                        icon: const Icon(
                          Icons.add,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 10,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
