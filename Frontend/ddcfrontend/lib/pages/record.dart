
// import 'package:flutter_fluid_slider_nnbd/flutter_fluid_slider_nnbd.dart';
import 'package:flutter/material.dart';
import 'package:percent_indicator/percent_indicator.dart';

class Record extends StatefulWidget {
  const Record({super.key});

  @override
  State<Record> createState() => _RecordState();
}

class _RecordState extends State<Record> {
  @override
  Widget build(BuildContext context) {
    double progress = 1.00;
    return Container(
      padding: const EdgeInsets.fromLTRB(10, 40, 10, 10),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          FractionallySizedBox(
            widthFactor: 1.00,
            child: LinearPercentIndicator(
              lineHeight: 20,
              percent: progress,
              center: Text('${(progress * 100).toStringAsFixed(1)}%', style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 10),),
              barRadius: const Radius.circular(10),
              progressColor: Colors.redAccent,
              backgroundColor: Colors.indigo,
              animation: true,
              animationDuration: 10000,
            ),
          ),
          
          Expanded(
            child: SizedBox(
              width: MediaQuery.of(context).size.width,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  Icon(Icons.arrow_left),
                  Expanded(
                    child: Center(
                      child: Text(
                        "ཚོགས་ཀྱི་ལྟོ་དང་ཚོགས་ཤ་གི་རིགས་ཚུ་མེད་པར་འཛརཝ་དང་མས་ཁུར་ལ་སོགས་པའི་ཁ་ཟས་སྐམ་གྱི་རིགས་རྐྱངམ་གཅིག་སྦེ་བླ་མ་དང་། ཡི་དམ། མཁའ་འགྲོ། ཆོས་སྐྱོང་ཚུ་ལུ་ཕུལ་ནི་ཅིག། བརྔོ་བརྔོཝ་བསྲེག་བསྲེག་པའི་ཁ་ཟས་ ཇ་རྩམ་སྦེ་ཟ་མིའི་རིགས་ག་ར་སྐམ་ཚོགས་སྦེ་ཕུལ་བཏུབ་ཨིན།དཔེར་བརྗོད། མཆོད་ཁྲི་གུ་སྐམ་ཚོགས་ལེ་ཤ་ཕུལ་བཞག་ནུག",
                        style: TextStyle(
                          overflow: TextOverflow.visible,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),
                  Icon(Icons.arrow_right),
                ],
              ),
            ),
          ),
          Container()
        ],
      ),
    );
  }
}
