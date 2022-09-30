import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            backgroundColor: Colors.black,
            pinned: true,
            floating: true,
            expandedHeight: 372,
            flexibleSpace: FlexibleSpaceBar(
              title: Text("Lapa"),
              centerTitle: false,
              expandedTitleScale: 2,
              background: Stack(
                children: [
                  Image.asset("./assets/sliver_header.jpeg"),
                  Container(
                    alignment: Alignment.center,
                    color: Color.fromRGBO(0, 0, 0, 0.5),
                  ),
                ],
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: Container(
              margin: new EdgeInsets.symmetric(horizontal: 15, vertical: 20),
              child: Text(
                  'Here\'s the thing. You said a jackdaw is a crow. Is it in the same family? Yes. No one\'s arguing that. As someone who is a scientist who studies crows, I am telling you, specifically, in science, no one calls jackdaws crows. If you want to be "specific" like you said, then you shouldn\'t either. They\'re not the same thing. If you\'re saying "crow family" you\'re referring to the taxonomic grouping of Corvidae, which includes things from nutcrackers to blue jays to ravens. So your reasoning for calling a jackdaw a crow is because random people "call the black ones crows?" Let\'s get grackles and blackbirds in there, then, too. Also, calling someone a human or an ape? It\'s not one or the other, that\'s not how taxonomy works. They\'re both. A jackdaw is a jackdaw and a member of the crow family. But that\'s not what you said. You said a jackdaw is a crow, which is not true unless you\'re okay with calling all members of the crow family crows, which means you\'d call blue jays, ravens, and other birds crows, too. Which you said you don\'t. It\'s okay to just admit you\'re wrong, you know?'),
            ),
          ),
          SliverToBoxAdapter(
            child: Container(
              margin: new EdgeInsets.symmetric(horizontal: 15, vertical: 20),
              child: Text(
                  "That's right. I am the IMPOSTER. I just killed my boss. I now had to convince everyone that I wasn't the imposter.  Chad is the imposter!\" I randomly yelled out. Another coworker said \"Well, I did see him running towards the stairs/elevator. \"Wait, think about this!\" Chad stated. \"How do you know I'm the murderer? It could be him!\"  Hmm .\" My coworker, John, said. \"Why do you think it's him, Darrius?\" \"Well,\" I started, \"The same reason as you. I saw him running towards the elevator when the killing happened. \"Wait, wait, wait!\" Angelica proclaimed. \"How do we know it happened on the top floor?\" Another coworker, Adam, pointed out the window towards the paramedics wrapping up my boss' mangled corpse in a body bag.\" Oh!\" Angelica said.\" That's a bit sussy,\" I said. \"I think it must have been Angelica, she's pretending she doesn't know anything?\"  Hmm  you might be right.\" My coworker Dave spoke up. \"But I think that it might be you, Darrius.\" \"Wait woah woah, why is it me?\" I defended myself. He said \"I saw you enter the elevator right before the murderer hit!\" He said. Shit. he's onto me.\" Woah  you could be lying! I was in my cubicle doing my office work!\" I yelled back.\" Oh really, what were you doing?\" Dave said.\" I was uh.. scanning for viruses on my computer!\"  Hmm . okay.\" \"I think that we should get rid of Liam.\" Angelica proclaimed.  Woah woah woah, pretty lady! Why do you think that?\" He quickly hopped to his defense. \"I haven't been a part of this discussion at all!\" \"Well, you're pale, and you work on the closest floor to the boss.\" Angelica replies. \"Yeah, that's sus, Liam.\" I said. \"We should get rid of him.\" \"I agree.\" Chad said.\" Me too!\" Adam said.\" Me three!\" John said. And so we decided to throw him out the window."),
            ),
          )
        ],
      ),
    );
  }
}
