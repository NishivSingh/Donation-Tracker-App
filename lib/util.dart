import 'package:flutter/material.dart';

class Profile extends StatefulWidget {
  const Profile({super.key});
  @override
  ProfileBuilder createState() => ProfileBuilder();
}

class ProfileBuilder extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        GestureDetector(
          onDoubleTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => const CreaterDonationPage()),
            );
          },
          child: Container(
            width: 160,
            height: 120,
            decoration: const BoxDecoration(
                color: Colors.yellow,
                borderRadius: BorderRadius.all(Radius.circular(10))),
          ),
        ),
        const SizedBox(height: 5),
        Padding(
          // width: 300,
          padding: const EdgeInsets.only(left: 8),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const [
              Text(
                'userName',
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 5),
              Text(
                'Profession',
                style: TextStyle(
                  fontSize: 12,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}

class CreaterDonationPage extends StatefulWidget {
  const CreaterDonationPage({super.key});

  @override
  CreaterDonationPageBuider createState() => CreaterDonationPageBuider();
}

class CreaterDonationPageBuider extends State<CreaterDonationPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
        title: const Text("CreatorName"),
      ),
      body: ListView(
        children: const [
          Center(
            child: Padding(
              padding: EdgeInsets.all(8),
              child: Text(
                "Tagline",
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              ),
            ),
          ),
          CurrencyInput(),
        ],
      ),
    );
  }
}

class CurrencyInput extends StatefulWidget {
  const CurrencyInput({super.key});

  @override
  _CurrencyInputState createState() => _CurrencyInputState();
}

class _CurrencyInputState extends State<CurrencyInput> {
  String _selectedCurrency = 'USD';
  TextEditingController _amountController = TextEditingController();
  String _displayCurrency = '';
  String _displayAmount = '';

  @override
  void initState() {
    super.initState();
    _amountController.addListener(_updateDisplay);
  }

  void _updateDisplay() {
    setState(() {
      _displayCurrency = _selectedCurrency;
      _displayAmount = _amountController.text;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
  children: [
    DropdownButton<String>(
      value: _selectedCurrency,
      onChanged: (String ?value) {
        setState(() {
          _selectedCurrency = value??"";
        });
      },
      items: <String>['USD', 'EUR', 'GBP', 'INR', 'JPY']
          .map<DropdownMenuItem<String>>((String value) {
        return DropdownMenuItem<String>(
          value: value,
          child: Text(value),
        );
      }).toList(),
    ),
    SizedBox(width: 8),
    Expanded(
      child: TextField(
        controller: _amountController,
        keyboardType: TextInputType.number,
        decoration: InputDecoration(
          border: OutlineInputBorder(),
          labelText: 'Amount',
        ),
        onChanged: (value) {
          _updateDisplay();
        },
      ),
    ),
  ],
),

        SizedBox(height: 20.0),
        Text('$_displayCurrency $_displayAmount'),
      ],
    );
  }
}
