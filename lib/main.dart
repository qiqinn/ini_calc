import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    title: 'INI Calc',
    home: HomePage(),
  ));
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final _aController = TextEditingController();
  final _bController = TextEditingController();
  final _cController = TextEditingController();
  final _dController = TextEditingController();
  final _gController = TextEditingController();
  final _iController = TextEditingController();
  final _jController = TextEditingController();
  final _kController = TextEditingController();
  final _mController = TextEditingController();
  final _nController = TextEditingController();
  final _oController = TextEditingController();
  final _pController = TextEditingController();

  double e, f, h, l, q, r, s, t, u, v, w, x;

  void _hitung() {
    final double a = double.tryParse(_aController.value.text);
    final double b = double.tryParse(_bController.value.text);
    final double c = double.tryParse(_cController.value.text);
    final double d = double.tryParse(_dController.value.text);
    final double g = double.tryParse(_gController.value.text);
    final double i = double.tryParse(_iController.value.text);
    final double j = double.tryParse(_jController.value.text);
    final double k = double.tryParse(_kController.value.text);
    final double m = double.tryParse(_mController.value.text);
    final double n = double.tryParse(_nController.value.text);
    final double o = double.tryParse(_oController.value.text);
    final double p = double.tryParse(_pController.value.text);

    setState(() {
      e = a * b;
      f = c * d * e;
      h = (c * (a + (b * 2))) * d * (g / 100);
      l = (c + j) * k * d;
      q = 2 * ((a - (2 * p)) + (b - (2 * p)) + o);
      r = (c / n) * d;
      s = q * r;
      t = (1 / 4) * 3.14 * (i * i) * 7850;
      u = (1 / 4) * 3.14 * (m * m) * 7850;
      v = l * t;
      w = s * u;
      x = v + w;
    });
  }

  void clearText() {
    _aController.clear();
    _bController.clear();
    _cController.clear();
    _dController.clear();
    _gController.clear();
    _iController.clear();
    _jController.clear();
    _kController.clear();
    _mController.clear();
    _nController.clear();
    _oController.clear();
    _pController.clear();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: DefaultTabController(
        length: 6,
        child: Scaffold(
          appBar: AppBar(
            bottom: TabBar(
              tabs: [
                Tab(
                  text: "Dimensi",
                ),
                Tab(
                  text: "Bagesting",
                ),
                Tab(
                  text: "T. Utama",
                ),
                Tab(
                  text: "T. Sengkang",
                ),
                Tab(
                  text: "Berat T.",
                ),
                Tab(
                  text: "Total Berat",
                ),
              ],
            ),
            title: Text('Calxxx'),
            actions: [
              PopupMenuButton(
                  onSelected: (vall) {
                    if (vall == 1) {
                      clearText();
                    }
                  },
                  itemBuilder: (context) => [
                        PopupMenuItem(
                          child: Text("Clear"),
                          value: 1,
                        )
                      ])
            ],
          ),
          body: TabBarView(
            children: [
              Center(
                child: Card(
                  color: Colors.white,
                  elevation: 10,
                  child: Padding(
                    padding: const EdgeInsets.all(10),
                    child: ListView(
                      padding: const EdgeInsets.all(5),
                      children: <Widget>[
                        Text(
                          'Dimensi',
                          style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.w500),
                        ),
                        SizedBox(
                          height: 7,
                        ),
                        TextField(
                          keyboardType:
                              TextInputType.numberWithOptions(decimal: true),
                          decoration: InputDecoration(
                            labelText: 'Sisi 1',
                          ),
                          controller: _aController,
                          onEditingComplete: _hitung,
                        ),
                        TextField(
                          keyboardType:
                              TextInputType.numberWithOptions(decimal: true),
                          decoration: InputDecoration(
                            labelText: 'Sisi 2',
                          ),
                          controller: _bController,
                          onEditingComplete: _hitung,
                        ),
                        TextField(
                          keyboardType:
                              TextInputType.numberWithOptions(decimal: true),
                          decoration: InputDecoration(
                            labelText: 'Panjang',
                          ),
                          controller: _cController,
                          onEditingComplete: _hitung,
                        ),
                        TextField(
                          keyboardType:
                              TextInputType.numberWithOptions(decimal: true),
                          decoration: InputDecoration(
                            labelText: 'Jumlah Item',
                          ),
                          controller: _dController,
                          onEditingComplete: _hitung,
                        ),
                        SizedBox(
                          height: 25,
                        ),
                        Text('Luas Penampang: $e'),
                        SizedBox(
                          height: 7,
                        ),
                        SizedBox(
                          height: 25,
                        ),
                        Text('Volume Beton: $f'),
                        SizedBox(
                          height: 7,
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Center(
                child: Card(
                  color: Colors.white,
                  elevation: 10,
                  child: Padding(
                    padding: const EdgeInsets.all(10),
                    child: ListView(
                      padding: const EdgeInsets.all(5),
                      children: <Widget>[
                        Text(
                          'Bagesting',
                          style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.w500),
                        ),
                        SizedBox(
                          height: 7,
                        ),
                        TextField(
                          keyboardType:
                              TextInputType.numberWithOptions(decimal: true),
                          decoration: InputDecoration(
                            labelText: 'Bahan Terpakai',
                          ),
                          controller: _gController,
                          onEditingComplete: _hitung,
                        ),
                        SizedBox(
                          height: 25,
                        ),
                        Text('Luas Bagesting: $h'),
                        SizedBox(
                          height: 7,
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Center(
                child: Card(
                  color: Colors.white,
                  elevation: 10,
                  child: Padding(
                    padding: const EdgeInsets.all(10),
                    child: ListView(
                      padding: const EdgeInsets.all(5),
                      children: <Widget>[
                        Text(
                          'Tulang Utama',
                          style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.w500),
                        ),
                        SizedBox(
                          height: 7,
                        ),
                        TextField(
                          keyboardType:
                              TextInputType.numberWithOptions(decimal: true),
                          decoration: InputDecoration(
                            labelText: 'Diameter',
                          ),
                          controller: _iController,
                          onEditingComplete: _hitung,
                        ),
                        TextField(
                          keyboardType:
                              TextInputType.numberWithOptions(decimal: true),
                          decoration: InputDecoration(
                            labelText: 'Panjang Leap',
                          ),
                          controller: _jController,
                          onEditingComplete: _hitung,
                        ),
                        TextField(
                          keyboardType:
                              TextInputType.numberWithOptions(decimal: true),
                          decoration: InputDecoration(
                            labelText: 'Jumlah Banyak',
                          ),
                          controller: _kController,
                          onEditingComplete: _hitung,
                        ),
                        SizedBox(
                          height: 25,
                        ),
                        Text('Total Panjang: $l'),
                        SizedBox(
                          height: 7,
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Center(
                child: Card(
                  color: Colors.white,
                  elevation: 10,
                  child: Padding(
                    padding: const EdgeInsets.all(10),
                    child: ListView(
                      padding: const EdgeInsets.all(5),
                      children: <Widget>[
                        Text(
                          'Tulang Sengkang',
                          style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.w500),
                        ),
                        SizedBox(
                          height: 7,
                        ),
                        TextField(
                          keyboardType:
                              TextInputType.numberWithOptions(decimal: true),
                          decoration: InputDecoration(
                            labelText: 'Diameter',
                          ),
                          controller: _mController,
                          onEditingComplete: _hitung,
                        ),
                        TextField(
                          keyboardType:
                              TextInputType.numberWithOptions(decimal: true),
                          decoration: InputDecoration(
                            labelText: 'Jarak Sengkang',
                          ),
                          controller: _nController,
                          onEditingComplete: _hitung,
                        ),
                        TextField(
                          keyboardType:
                              TextInputType.numberWithOptions(decimal: true),
                          decoration: InputDecoration(
                            labelText: 'Panjang Kait',
                          ),
                          controller: _oController,
                          onEditingComplete: _hitung,
                        ),
                        TextField(
                          keyboardType:
                              TextInputType.numberWithOptions(decimal: true),
                          decoration: InputDecoration(
                            labelText: 'Selimut Beton',
                          ),
                          controller: _pController,
                          onEditingComplete: _hitung,
                        ),
                        SizedBox(
                          height: 25,
                        ),
                        Text('Panjang Sengkang: $q'),
                        SizedBox(
                          height: 7,
                        ),
                        SizedBox(
                          height: 25,
                        ),
                        Text('Banyak: $r'),
                        SizedBox(
                          height: 7,
                        ),
                        SizedBox(
                          height: 25,
                        ),
                        Text('Total Panjang: $s'),
                        SizedBox(
                          height: 7,
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Center(
                child: Card(
                  color: Colors.white,
                  elevation: 10,
                  child: Padding(
                    padding: const EdgeInsets.all(10),
                    child: ListView(
                      padding: const EdgeInsets.all(5),
                      children: <Widget>[
                        Text(
                          'Berat Tulang',
                          style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.w500),
                        ),
                        SizedBox(
                          height: 7,
                        ),
                        SizedBox(
                          height: 25,
                        ),
                        Text('Tulang Utama: $t'),
                        SizedBox(
                          height: 7,
                        ),
                        SizedBox(
                          height: 25,
                        ),
                        Text('Tulang Sengkang: $u'),
                        SizedBox(
                          height: 7,
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Center(
                child: Card(
                  color: Colors.white,
                  elevation: 10,
                  child: Padding(
                    padding: const EdgeInsets.all(10),
                    child: ListView(
                      padding: const EdgeInsets.all(5),
                      children: <Widget>[
                        Text(
                          'Total Berat',
                          style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.w500),
                        ),
                        SizedBox(
                          height: 7,
                        ),
                        SizedBox(
                          height: 25,
                        ),
                        Text('Tulang Utama: $v'),
                        SizedBox(
                          height: 7,
                        ),
                        SizedBox(
                          height: 25,
                        ),
                        Text('Tulang Sengkang: $w'),
                        SizedBox(
                          height: 7,
                        ),
                        SizedBox(
                          height: 25,
                        ),
                        Text('Total: $x'),
                        SizedBox(
                          height: 7,
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
