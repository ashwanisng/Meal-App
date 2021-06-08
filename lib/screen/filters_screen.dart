import 'package:flutter/material.dart';
import 'package:meal_app/screen/main_drawer.dart';

class FiltersScreen extends StatefulWidget {
  static const routeName = '/filters';

  final Function saveFilters;
  FiltersScreen(this.saveFilters);

  @override
  _FiltersScreenState createState() => _FiltersScreenState();
}

class _FiltersScreenState extends State<FiltersScreen> {
  bool _glutenFree = false;
  bool _vegeterian = false;
  bool _vegan = false;
  bool _lactoseFree = false;

  Widget buildSwitchListTile(String title, String description,
      bool currentValue, dynamic updateValue) {
    return SwitchListTile(
      title: Text(title),
      subtitle: Text(description),
      value: currentValue,
      onChanged: updateValue,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Filters'),
          actions: [
            IconButton(
              onPressed: widget.saveFilters(),
              icon: Icon(Icons.save),
            ),
          ],
        ),
        drawer: MainDrawer(),
        body: Column(
          children: [
            Container(
              padding: EdgeInsets.all(20),
              child: Text(
                'Adjust your meal selection.',
                style: Theme.of(context).textTheme.headline1,
              ),
            ),
            Expanded(
              child: ListView(
                children: [
                  buildSwitchListTile(
                    'Gluten-Free',
                    'Only include gluten-free meals',
                    _glutenFree,
                    (newValue) {
                      setState(() {
                        _glutenFree = newValue;
                      });
                    },
                  ),
                  buildSwitchListTile(
                    'Vegeterian-Free',
                    'Only include vegeterian-free meals',
                    _vegeterian,
                    (newValue) {
                      setState(() {
                        _vegeterian = newValue;
                      });
                    },
                  ),
                  buildSwitchListTile(
                    'Vegan-Free',
                    'Only include vegan-free meals',
                    _vegan,
                    (newValue) {
                      setState(() {
                        _vegan = newValue;
                      });
                    },
                  ),
                  buildSwitchListTile(
                    'Lactose-Free',
                    'Only include lactose-free meals',
                    _lactoseFree,
                    (newValue) {
                      setState(() {
                        _lactoseFree = newValue;
                      });
                    },
                  ),
                ],
              ),
            ),
          ],
        ));
  }
}
