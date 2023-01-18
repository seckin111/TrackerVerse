final Map<String, Series> seriesList = {
  '1': Series(
    seriesName: 'Breaking Bad',
    seriesImageHorizontal: 'assets/series/breaking_bad.jpg',
    seriesImageVertical: '',
    seriesDescription:
        'A high school chemistry teacher diagnosed with inoperable lung cancer turns to manufacturing and selling methamphetamine in order to secure his family\'s future.',
    seriesGenre: "Crime/Drama",
    seriesRating: "9.5",
    serisCompletionPercentetion: 32,
  ),
  '2': Series(
    seriesName: 'Better Call Saul',
    seriesImageHorizontal: 'assets/series/better_call_saul.png',
    seriesImageVertical: '',
    seriesDescription:
        'New Jersey mob boss Tony Soprano deals with personal and professional issues in his home and business life.',
    seriesGenre: "Crime/Drama",
    seriesRating: "9.5",
    serisCompletionPercentetion: 45,
  ),
  '3': Series(
    seriesName: 'Stranger Things',
    seriesImageHorizontal: 'assets/series/stranger_things.jpg',
    seriesImageVertical: '',
    seriesDescription:
        "When Joyce's 12-year-old son Will goes missing, she launches a terrifying investigation into his disappearance with local authorities. As they search for answers, they unravel a series of extraordinary mysteries involving secret government experiments, unnerving supernatural forces and a very unusual",
    seriesGenre: "Fantastic/Mystery",
    seriesRating: "9.5",
    serisCompletionPercentetion: 55,
  ),
  '4': Series(
    seriesName: 'Peaky Blinders',
    seriesImageHorizontal: 'assets/series/peaky_blinders.jpg',
    seriesImageVertical: '',
    seriesDescription:
        "A gangster family epic set in 1919 Birmingham, England; centered on a gang who sew razor blades in the peaks of their caps, and their fierce boss Tommy Shelby.",
    seriesGenre: "Crime/Drama",
    seriesRating: "9.5",
    serisCompletionPercentetion: 65,
  ),
  '5': Series(
    seriesName: 'The Walking Dead',
    seriesImageHorizontal: 'assets/series/the_walking_dead.jpg',
    seriesImageVertical: '',
    seriesDescription:
        "Sheriff Deputy Rick Grimes wakes up from a coma to learn the world is in ruins, and must lead a group of survivors to stay alive.",
    seriesGenre: "Horror/Drama",
    seriesRating: "9.5",
    serisCompletionPercentetion: 75,
  ),
  '6': Series(
    seriesName: 'The Witcher',
    seriesImageHorizontal: 'assets/series/the_witcher.jpg',
    seriesImageVertical: '',
    seriesDescription:
        "Geralt of Rivia, a solitary monster hunter, struggles to find his place in a world where people often prove more wicked than beasts.",
    seriesGenre: "Fantasy/Action",
    seriesRating: "9.5",
    serisCompletionPercentetion: 85,
  ),
  '7': Series(
    seriesName: 'The Mandalorian',
    seriesImageHorizontal: 'assets/series/the_mandalorian.jpg',
    seriesImageVertical: '',
    seriesDescription:
        "The travels of a lone bounty hunter in the outer reaches of the galaxy, far from the authority of the New Republic.",
    seriesGenre: "Fantasy/Action",
    seriesRating: "9.5",
    serisCompletionPercentetion: 95,
  ),
  '8': Series(
    seriesName: 'Dark',
    seriesImageHorizontal: 'assets/series/dark.jpg',
    seriesImageVertical: '',
    seriesDescription:
        "A family saga with a supernatural twist, set in a German town, where the disappearance of two young children exposes the relationships among four families.",
    seriesGenre: "Fantastic/Mystery",
    seriesRating: "9.5",
    serisCompletionPercentetion: 45,
  ),
  '9': Series(
    seriesName: 'The Last Kingdom',
    seriesImageHorizontal: 'assets/series/the_last_kingdom.jpg',
    seriesImageVertical: '',
    seriesDescription:
        "A show of heroic deeds and epic battles with a thematic depth that embraces politics, religion, warfare, courage, love, loyalty and our universal search for identity.",
    seriesGenre: "Fantastic/Mystery",
    seriesRating: "9.5",
    serisCompletionPercentetion: 55,
  ),
  '10': Series(
    seriesName: 'Merlin',
    seriesImageHorizontal: 'assets/series/merlin.jpg',
    seriesImageVertical: '',
    seriesDescription:
        "Merlin is a British fantasy-adventure television programme.",
    seriesGenre: "Fantastic/Mystery",
    seriesRating: "9.5",
    serisCompletionPercentetion: 65,
  ),
  '11': Series(
    seriesName: 'Game of Thrones',
    seriesImageHorizontal: 'assets/series/game_of_thrones.jpg',
    seriesImageVertical: '',
    seriesDescription:
        "Nine noble families fight for control over the mythical lands of Westeros, while an ancient enemy returns after being dormant for millennia.",
    seriesGenre: "Fantastic/Mystery",
    seriesRating: "9.5",
    serisCompletionPercentetion: 75,
  ),
  '12': Series(
    seriesName: 'The Last Of Us',
    seriesImageHorizontal: 'assets/series/the_last_of_us.jpg',
    seriesImageVertical: '',
    seriesDescription:
        "The Last of Us is an American post-apocalyptic action-adventure survival horror video game developed by Naughty Dog and published by Sony Interactive Entertainment.",
    seriesGenre: "Fantastic/Mystery",
    seriesRating: "9.5",
    serisCompletionPercentetion: 10,
  ),
  '13': Series(
    seriesName: 'Vikings',
    seriesImageHorizontal: 'assets/series/vikings.jpg',
    seriesImageVertical: '',
    seriesDescription:
        "The Vikings is a historical drama television series written and created by Michael Hirst for the History channel.",
    seriesGenre: "Fantastic/Mystery",
    seriesRating: "9.5",
    serisCompletionPercentetion: 20,
  ),
  '14': Series(
    seriesName: 'Wednesday',
    seriesImageHorizontal: 'assets/series/wednesday.jpg',
    seriesImageVertical: '',
    seriesDescription:
        "Wednesday is a 1998 American fantasy film directed by Tim Burton and starring Johnny Depp, Christina Ricci, and Miranda Richardson.",
    seriesGenre: "Fantastic/Mystery",
    seriesRating: "9.5",
    serisCompletionPercentetion: 30,
  ), // diğer diziler
};

class Series {
  final String seriesName;
  final String seriesImageHorizontal;
  final String seriesImageVertical;
  final String seriesDescription;
  final int serisCompletionPercentetion;
  final String seriesGenre;
  final String seriesRating;

  Series({
    required this.seriesName,
    required this.seriesImageHorizontal,
    required this.seriesImageVertical,
    required this.seriesDescription,
    required this.serisCompletionPercentetion,
    required this.seriesGenre,
    required this.seriesRating,
  });
}
