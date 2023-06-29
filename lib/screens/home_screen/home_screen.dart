import 'package:dream_buddy/constants.dart';
import 'package:dream_buddy/models/story/story.dart';
import 'package:dream_buddy/models/story/story_characteritic.dart';
import 'package:dream_buddy/screens/home_screen//components.dart';
import 'package:dream_buddy/screens/story_screen/story_screen.dart';
import 'package:dream_buddy/widgets/custom_list_tile/custom_list_tile.dart';
import 'package:flutter/material.dart';


class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  List<Story> stories = <Story>[Story()];
  StoryCharacteristic instructionStyles = StoryCharacteristic(examples: [CatExample(), CatExample()]);
  StoryCharacteristic morals = StoryCharacteristic(examples: [CatExample(), CatExample()]);
  StoryCharacteristic childProblems = StoryCharacteristic(examples: [CatExample(), CatExample()]);


  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: kBgColor,
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 20),
            Expanded(
              flex: 2,
              child: ListTile(
                title: Text("Hello", style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold)),
                subtitle: Text("What are we reading today ?"),
                trailing: Icon(Icons.account_circle, color: kAppColor, size: 40)
              ),
            ),
            // SizedBox(height: 10),
            CustomDivider(text: "Your stories"),
            Expanded(
                flex: 3,
                child: Row(
                  children: [
                    ...List.generate(
                    stories.length,
                    (index) => StoryCard(
                      imagePath: stories[index].imagePath,
                      title: stories[index].title,
                      onTap: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context) => StoryScreen(story: Story())));
                      },)),
                    AddStoryCard()
                  ],
                )
            ),
            CustomDivider(text: "Create new stories"),
            ///Instruction styles
            Text("  Instruction Styles", style: kBodyTextStyle.copyWith(color: Color(0xff1F3242), fontWeight: FontWeight.bold)),
            Expanded(
                flex: 2,
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      ...List.generate(
                          instructionStyles.examples.length,
                          (index) => CustomListTile(
                            width: MediaQuery.of(context).size.width * 0.8,
                            title: Text(instructionStyles.examples[index].description, style: kBodyTextStyle),
                            trailing: Image.asset(instructionStyles.examples[index].imagePath),
                          )
                      )
                    ],
                  )
                )
            ),

            ///Moral
            Text("  Moral", style: kBodyTextStyle.copyWith(color: Color(0xff1F3242), fontWeight: FontWeight.bold)),
            Expanded(
                flex: 2,
                child: SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        ...List.generate(
                            instructionStyles.examples.length,
                                (index) => CustomListTile(
                              width: MediaQuery.of(context).size.width * 0.8,
                              title: Text(instructionStyles.examples[index].description, style: kBodyTextStyle),
                              trailing: Image.asset(instructionStyles.examples[index].imagePath),
                            )
                        )
                      ],
                    )
                )
            ),

            ///Problem the child is facing
            Text("  Problem the child is facing", style: kBodyTextStyle.copyWith(color: Color(0xff1F3242), fontWeight: FontWeight.bold)),
            Expanded(
                flex: 2,
                child: SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        ...List.generate(
                            instructionStyles.examples.length,
                                (index) => CustomListTile(
                              width: MediaQuery.of(context).size.width * 0.8,
                              title: Text(instructionStyles.examples[index].description, style: kBodyTextStyle),
                              trailing: Image.asset(instructionStyles.examples[index].imagePath),
                            )
                        )
                      ],
                    )
                )
            ),
          ]
        )
      ),
    );
  }
}
