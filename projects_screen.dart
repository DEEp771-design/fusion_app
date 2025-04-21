import 'package:flutter/material.dart';

class ProjectsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          title: Text('Projects'),
          bottom: TabBar(
            tabs: [
              Tab(text: 'Research Projects'),
              Tab(text: 'Patents'),
              Tab(text: 'Consultancy Projects'),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            _buildResearchProjectForm(),
            _buildPatentForm(),
            _buildConsultancyProjectForm(),
          ],
        ),
      ),
    );
  }

  Widget _buildResearchProjectForm() {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: ListView(
        children: [
          _buildTextField('Project Incharge (PI)*'),
          _buildTextField('Co Project Incharge (CO-PI)*'),
          _buildTextField('Funding Agency*'),
          _buildTextField('Status'),
          _buildTextField('Submission Date'),
          _buildTextField('Start Date'),
          _buildTextField('Expected Finish Date'),
          _buildTextField('Financial Outlay*'),
          _buildTextField('Title*'),
          SizedBox(height: 16),
          ElevatedButton(onPressed: () {}, child: Text('Save')),
          SizedBox(height: 16),
          Text('Reports', style: TextStyle(fontWeight: FontWeight.bold)),
          Text('No Research Projects Found'),
        ],
      ),
    );
  }

  Widget _buildPatentForm() {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: ListView(
        children: [
          _buildTextField('Patent Number*'),
          _buildTextField('Status'),
          _buildTextField('Earnings (in Rs.)*'),
          _buildTextField('Month'),
          _buildTextField('Year'),
          _buildTextField('Title*'),
          SizedBox(height: 16),
          ElevatedButton(onPressed: () {}, child: Text('Save')),
          SizedBox(height: 16),
          Text('Reports', style: TextStyle(fontWeight: FontWeight.bold)),
          Text('No Patents Found'),
        ],
      ),
    );
  }

  Widget _buildConsultancyProjectForm() {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: ListView(
        children: [
          _buildTextField('Consultant*'),
          _buildTextField('Client*'),
          _buildTextField('Financial Outlay*'),
          _buildTextField('Start Date*'),
          _buildTextField('End Date*'),
          _buildTextField('Title*'),
          SizedBox(height: 16),
          ElevatedButton(onPressed: () {}, child: Text('Save')),
          SizedBox(height: 16),
          Text('Reports', style: TextStyle(fontWeight: FontWeight.bold)),
          Text('No Consultancy Projects Found'),
        ],
      ),
    );
  }

  Widget _buildTextField(String label) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: TextField(
        decoration: InputDecoration(
          labelText: label,
          border: OutlineInputBorder(),
        ),
      ),
    );
  }
}
