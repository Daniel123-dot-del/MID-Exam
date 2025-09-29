import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Welcome To New students'),
        backgroundColor: Colors.red,
        centerTitle: true,
      ),
      body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // Main welcome icon
              Container(
                width: 160,
                height: 160,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  border: Border.all(
                    width:4,
                  ), // Border.all
                  boxShadow:[
                    BoxShadow(
                      color:Colors.black26,
                      offset: Offset(0, 5),
                    ), // BoxShadow
                  ], // boxShadow
                ), //BoxDecoration
                child: ClipOval(
                    child: Image.network(
                      'https://www.google.com/imgres?q=global%20reciprocal%20colleges&imgurl=https%3A%2F%2Fgrc.edu.ph%2Fwp-content%2Fuploads%2F2021%2F02%2Fgrc.png&imgrefurl=https%3A%2F%2Fgrc.edu.ph%2F&docid=6AUjx2DaTYvnkM&tbnid=OVVWgW9gUtlTbM&vet=12ahUKEwjw-qT18PyPAxUGma8BHc_mAD0QM3oECBwQAA..i&w=336&h=192&hcb=2&ved=2ahUKEwjw-qT18PyPAxUGma8BHc_mAD0QM3oECBwQAA',
                      width: 160,
                      height: 160,
                      fit: BoxFit.cover,
                    ) // Image.network
                ), //ClipOval
              ), // Container

              // Welcome title
              Text(
                'GLOBAL RECIPROCAL COLLEGES',
                style: TextStyle(
                  fontSize: 28,
                  fontWeight: FontWeight.bold,
                  color: Colors.black87,
                ),
                textAlign: TextAlign.center,
              ),
              SizedBox(height: 15),

              // Subtitle
              Text(
                'Explore OUR COURSES',
                style: TextStyle(fontSize: 16, color: Colors.grey[600]),
                textAlign: TextAlign.center,
              ),
              SizedBox(height: 30),

              // Quick navigation cards
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  _buildQuickNavCard(Icons.computer, 'CSS', Colors.grey),
                  _buildQuickNavCard(Icons.work, 'EDUC', Colors.orange),
                  _buildQuickNavCard(Icons.contact_mail, 'COA', Colors.purple),
                  _buildQuickNavCard(Icons.contact_mail, 'CBAE', Colors.blue),
                ],
              ),
            ],
          ),
      ), // body
    );
  }

  Widget _buildQuickNavCard(IconData icon, String label, Color color) {
    return Container(
      padding: EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: color.withOpacity(0.1),
        borderRadius: BorderRadius.circular(12),
      ),
      child: Column(
        children: [
          Icon(icon, size: 30, color: color),
          SizedBox(height: 8),
          Text(label, style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold, color: color)),
        ],
      ),
    );
  }
}