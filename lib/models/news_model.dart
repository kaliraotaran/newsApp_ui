class newsData {
  String title;
  String content;
  String urlToImage;
  String date;
  String? author;
  newsData(this.author, this.content, this.date, this.title, this.urlToImage);

  static List<newsData> breakingNewsData = [
    newsData(
        "barrons.com",
        "Thursday, BofA Securities analyst John Murphy took his price target on Tesla stock to \$300 from \$224 a share. He kept his Hold rating. #bofasecurities #johnmurphy #tesla",
        "15/09/2022",
        "Tesla Stock Is Wild. Wall Street Can't Keep Up",
        "images/news1.jpeg"),
    newsData(
        "Jennifer Schonberger",
        "Dallas Fed President Lorie Logan is the latest official to argue additional rate hikes will be needed from the Fed this year.",
        "22/05/23",
        "Dallas Fed's Logan wanted to raise rates in June, sees two more. . .",
        "images/news2.jpeg"),
    newsData(
        "Ivan Mehta",
        "In the last few months, Twitter alternatives new and old have found an audience willing to try out a new text-based social network. Mastodon, Bluesky, Spill, and T2 are some of the social media platf…",
        "12/07/23",
        "What is Instagram’s Threads app? All your questions answered",
        "images/news3.jpeg")
  ];
  static List<newsData> recentNewsData = [
    newsData(
        "Amanda Silberling",
        "Gen Z internet use is on the rise, but the rate at which teens use Facebook is rapidly declining. A Pew Research Center study on teens, technology and social media found that only 32% of teens aged",
        "2022-08-11",
        "Teens have abandoned Facebook, Pew study says",
        "images/main1.jpeg"),
    newsData(
        "Lauren Forristal",
        "Tubi, the free ad-supported streaming service owned by Fox, is now available in Costa Rica, Ecuador, El Salvador, Guatemala, and Panama — an expansion that has doubled its global footprint and signals the company's interest in capturing more Latin American",
        "2022-08-11",
        "Fox-owned Tubi expands its free streaming service to five Latin American countries",
        "images/main2.jpeg"),
    newsData(
        "Tim De Chant",
        "VoltStorage recently raised a Series C worth \$24 million from engine manufacturer Cummins. Its previous rounds included investments from SOSV and EIT InnoEnergy.",
        "2022-08-11",
        "Massive iron batteries could be key to displacing natural gas from the grid",
        "images/main3.jpeg"),
    newsData(
        "reuters.com",
        "Electric car maker Tesla Inc (TSLA.O) is laying off some battery production workers at its Shanghai plant, Bloomberg News reported on Friday, citing people familiar with the matter. It was not clear how many workers may be let go, or the specific reasons behi…",
        "06/07/2023",
        "Tesla starts to lay off some workers at China factory, Bloomberg reports",
        "images/main4.jpeg")
  ];
}
