import 'package:flutter/material.dart';

import 'new_series_box_widget.dart';

class NewSeriesWidget extends StatelessWidget {
  const NewSeriesWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: const [
              Text(
                "New Series",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 25,
                    fontWeight: FontWeight.w500),
              ),
              Text(
                "See All",
                style: TextStyle(
                  color: Colors.white54,
                  fontSize: 16,
                ),
              ),
            ],
          ),
        ),
        const SizedBox(height: 15),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: const [
              NewSeriesBox(
                seriesTitle: "Wednesday",
                seriesImage: "assets/series/wednesday.jpg",
                seriesDescription:
                    "Wednesday is a 2021 Indian Hindi-language action thriller film directed by Ashok Nanda and produced by Ronnie Screwvala under the production banner of RSVP Movies. The film stars Amitabh Bachchan, Ajay Devgn, and Rakul Preet Singh in the lead roles.",
                seriesRating: "8.5",
                seriesGenre: "Action/Thriller",
              ),
              NewSeriesBox(
                  seriesTitle: "The Last Of Us",
                  seriesRating: "6.3",
                  seriesImage: "assets/series/the_last_of_us.jpg",
                  seriesDescription:
                      "Based on the 2013 video game developed by Naughty Dog, the series follows Joel (Pedro Pascal), a smuggler tasked with escorting the teenage Ellie (Bella Ramsey) across a post-apocalyptic United States.",
                  seriesGenre: "Action/Adventure"),
              NewSeriesBox(
                  seriesTitle: "Vikings",
                  seriesRating: "8.0",
                  seriesImage: "assets/series/vikings.jpg",
                  seriesDescription:
                      "The show portrays Ragnar as a farmer who rises to fame by raiding England and eventually becomes a Scandinavian king, with the support of his family and fellow warriors.",
                  seriesGenre: "Action/Historical Drama"),
              NewSeriesBox(
                seriesTitle: "Stranger Things",
                seriesRating: "9.5",
                seriesImage: "assets/series/stranger_things.jpg",
                seriesDescription:
                    "When Joyce's 12-year-old son Will goes missing, she launches a terrifying investigation into his disappearance with local authorities. As they search for answers, they unravel a series of extraordinary mysteries involving secret government experiments, unnerving supernatural forces and a very unusual",
                seriesGenre: "Fantastic/Mystery",
              ),
              NewSeriesBox(
                seriesTitle: "Peaky Blinders",
                seriesRating: "8.5",
                seriesImage: "assets/series/peaky_blinders.jpg",
                seriesDescription:
                    "Peaky Blinders is a crime drama centred on a family of mixed Irish Traveller and Romani origins based in Birmingham, England, starting in 1919, several months after the end of the First World War. It centres on the Peaky Blinders street gang and their ambitious, cunning crime boss Tommy Shelby (Murphy).",
                seriesGenre: "Dram/Crime",
              ),
              NewSeriesBox(
                seriesTitle: "Game Of Thrones",
                seriesRating: "9.5",
                seriesImage: "assets/series/game_of_thrones.jpg",
                seriesDescription:
                    "Game of Thrones is roughly based on the storylines of the A Song of Ice and Fire book series by George R. R. Martin, set in the fictional Seven Kingdoms of Westeros and the continent of Essos.The series follows several simultaneous plot lines. The first story arc follows a war of succession among competing claimants for control of the Iron Throne of the Seven Kingdoms, with other noble families fighting for independence from the throne. The second concerns the exiled scion's actions to reclaim the throne; the third chronicles the threat of the impending winter, as well as the legendary creatures and fierce peoples of the North.",
                seriesGenre: "Action/Fantasy",
              ),
              NewSeriesBox(
                  seriesTitle: "Breaking Bad",
                  seriesRating: "9.5",
                  seriesImage: "assets/series/breaking_bad.jpg",
                  seriesDescription:
                      'Breaking Bad is an American neo-Western crime drama television series created and produced by Vince Gilligan. The show originally aired on the AMC network for five seasons, from January 20, 2008, to September 29, 2013. It tells the story of Walter White (Bryan Cranston), a struggling high school chemistry teacher who is diagnosed with inoperable lung cancer at the beginning of the series. He turns to a life of crime, producing and selling methamphetamine with a former student, Jesse Pinkman (Aaron Paul',
                  seriesGenre: "Action/Crime"),
              NewSeriesBox(
                seriesTitle: "The Last Kingdom",
                seriesRating: "8.5",
                seriesImage: "assets/series/the_last_kingdom.jpg",
                seriesDescription:
                    "The Last Kingdom is a British historical fiction television series based on Bernard Cornwell's The Saxon Stories series of novels. The series was created by Stephen Butchard and stars Alexander Dreymon as Uhtred of Bebbanburg, a Saxon raised by Danes in the 9th century.",
                seriesGenre: "Action/Historical Drama",
              ),
              NewSeriesBox(
                seriesTitle: "Merlin",
                seriesRating: "8.5",
                seriesImage: "assets/series/merlin.jpg",
                seriesDescription:
                    "This is a story of young Merlin (Colin Morgan), a simple servant to young Prince Arthur (Bradley James) in royal court of Camelot. They soon became best friends, but Merlin has a secret: he's a mighty sorcerer who has to hide his magical powers even from Arthur, so that he can stay alive.",
                seriesGenre: "Action/Fantasy",
              ),
              NewSeriesBox(
                seriesTitle: "Dark",
                seriesRating: "8.5",
                seriesImage: "assets/series/dark.jpg",
                seriesDescription:
                    "Dark is a German science fiction thriller streaming television series co-created by Baran bo Odar and Jantje Friese. The series is set in a fictional German town of Winden where the disappearance of two young children exposes the double lives and fractured relationships among four families.",
                seriesGenre: "Dram/Suspense",
              ),
            ],
          ),
        ),
      ],
    );
  }
}
