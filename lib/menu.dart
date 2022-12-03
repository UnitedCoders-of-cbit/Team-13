import 'package:flutter/material.dart';
import 'package:flare_flutter/flare_actor.dart';
import 'package:history/timeline.dart';
class Menu extends StatefulWidget {
  const Menu({Key? key}) : super(key: key);

  @override
  State<Menu> createState() => _MenuState();
}

class _MenuState extends State<Menu> {
  bool show1 = false;
  bool show2 = false;
  bool show3 = false;
  List<String> commonEraImg=["assets/theme/www.gif","assets/theme/moon-landing-on-the-moon.gif",
    "assets/theme/martin-luther-king.gif",
    "assets/theme/nelson mandela.gif","assets/theme/cold war.gif","assets/theme/turing test.gif",
    "assets/theme/world war 2.gif",
    "assets/theme/amelia earhart.gif","assets/theme/world war1.gif",
    "assets/theme/suffragestories.gif","assets/theme/marie curie.gif",
    "assets/theme/evolution of humans.gif","assets/theme/industrialization.gif",
    "assets/theme/newton.gif","assets/theme/plague.png",
    "assets/theme/crusades.gif"];
  List<String> commonEraYears=["1990","1969","1963","1952","1947",
    "1939","1939","1932","1914","1903","1867","1859","1760","1687","1347","1095"];
  List<String> commonEra=["World Wide Web","Moon Landing","Martin Luther King",
    "Nelson Mandela","Cold War","Alan Turing","World War 2","Amelia Earhart",
    "World War 1","Suffragettes","Marie Curie","Darwin Theory of evolution",
    "Industrialization","Newton's theory of Gravity","Plack Plague","Crusades"];
  List<String> commonEraCont=["The Internet is the biggest world-wide communication network of computers. "
      "Internet has millions of smaller domestic, academic, business,and government networks, which "
      "together carry many different kinds of information. The term is sometimes abbreviated as the net. "
      "The _World Wide Web_ is one of its biggest services. It is used by a few billion people all over the "
      "world.The Internet was developed in the United States by the 'United States Advanced Research Projects "
      "Agency' (DARPA). Internet was first connected in October, 1969, and was called ARPANET. "
      "The _World Wide Web_ was created at CERN in Switzerland in 1990 by a British (UK) scientist "
      "named Tim Berners-Lee.",
  "_Apollo 11_ was the first flight to send people to the moon. It was done by NASA, the American space group. "
      "It went up to space on July 16, 1969, carrying three astronauts: Neil Armstrong, Buzz Aldrin and Michael "
      "Collins. On July 20, 1969, Armstrong and Aldrin became the first humans to land on the moon, while Collins "
      "stayed in orbit around the Moon.The flight was part of the _Space Race. It finished the plan set by "
      "John F. Kennedy in 1961 to 'land a man on the moon, and return him safely to the Earth'', before the "
      "1960s ended.",
    "Martin Luther King, Jr._ (January 15, 1929 – April 4, 1968) was an American pastor, activist, humanitarian, and leader in the African-American Civil Rights Movement. He was best known for improving civil rights by using nonviolent civil disobedience, based on his Christian beliefs. Because he was both a Ph.D. and a pastor, _King_ is sometimes called the _Reverend Doctor Martin Luther King Jr._ (abbreviation: the Rev. Dr. King), or just Dr. King. He is also known by his initials MLK._King_ worked hard to make people understand that not only blacks, but that all races should always be treated equally to white people. He gave speeches to encourage African Americans to protest without using violence.Led by _Dr. King_ and others, many African Americans used nonviolent, peaceful strategies to fight for their civil rights. These strategies included sit-ins, boycotts, and protest marches. Often, they were attacked by white police officers or people who did not want African Americans to have more rights. However, no matter how badly they were attacked, _Dr. King_ and his followers never fought back._King_ also helped to organize the 1963 March on Washington, where he delivered his 'I Have a Dream' speech. The next year, he won the Nobel Peace Prize._King_ fought for equal rights from the start of the Montgomery Bus Boycott in 1955 until he was murdered by James Earl Ray in April 1968.","_Nelson Rolihlahla Mandela_ (18 July 1918 – 5 December 2013) was a South African politician and activist. On April 27, 1994, he was made the first President of South Africa elected in a fully represented democratic election. Mandela was also the first black President of his country, South Africa._Mandela_ was born in Mvezo, South Africa to a Thembu royal family.His government focused on throwing out the legacy of apartheid by ending racism, poverty, inequality, and on improving racial understanding in South Africa. Politically a believer in socialism, he served as the President of the African National Congress (ANC) from 1991 to 1997 and adopted new Constitution of South African in 1996 that prohibits all discrimination, based on language, religion, handicap and sexual orientation, not only on racism. Internationally, Mandela was the Secretary General of the Non-Aligned Movement from 1998 to 1999._Mandela_ received more than 250 honors, including the 1993 Nobel Peace Prize, the US Presidential Medal of Freedom, and the Soviet Order of Lenin. He is often referred to by his Xhosa clan name, Madiba, or as Tata ('Father'). _Mandela_ was described as a hero, and his actions gave thousands of people hope._Mandela_ was sick for several years during his retirement. He was hospitalized in late summer of 2013 from a continuous lung infection. _Mandela_ died on 5 December 2013 in Houghton Estate, Johannesburg from a respiratory tract infection. He was 95 years old.",
  "_The Cold War_ (1947–1991) was the tense relationship between the United States (and its allies), and the Soviet Union (the USSR and its allies) between the end of World War II and the demise of the Soviet Union.Most of the countries on one side were allied in NATO whose most powerful country was the United States. Most of the countries on the other side were allied in the Warsaw Pact most powerful country was the Soviet Union.The Western-Capitalist group of countries includes Western Europe, the Americas, Turkey, Israel, Japan, South Korea, Thailand, Iran (1945-1979), Pakistan, Malaysia, Philippines, South Africa, Australia and New Zealand.The Eastern-Socialist group includes Eastern Europe, Soviet Union, Angola, Ethiopia, Cuba (1959-1991), Mongolia, North Korea, China and Vietnam.","_Turing_ was one of the people who worked on the first computers. He was the first person to think of using a computer to do things that were too hard for a person to do. He created the Turing machine in 1936. The machine was imaginary, but it included the idea of a computer program._Turing_ was interested in artificial intelligence. He proposed the _Turing_ test, to say when a machine could be called 'intelligent'. A computer could be said to 'think' if a human talking with it could not tell it was a machine.During World War II, _Turing_ worked to break German ciphers (secret messages). Using cryptanalysis, he helped to break the codes of the Enigma machine. After that, he solved other German codes.From 1945 to 1947, _Turing_ worked on the design of the ACE (Automatic Computing Engine) at the National Physical Laboratory. He presented a paper on 19 February 1946. That paper was 'the first detailed design of a stored-program computer'. Although it was possible to build ACE, there were delays in starting the project. In late 1947 he returned to Cambridge for a sabbatical year. While he was at Cambridge, the Pilot ACE was built without him. It ran its first program on 10 May 1950.","_World War II_ (WWII or WW2), also called the Second World War and, in the Soviet Union, the Great Patriotic War, was a global war involving fighting in many parts of the world and many countries. Most countries fought in the years 1939–1945 but some started fighting in 1937. Most of the world's countries, including all the great powers, fought as part of two military alliances: the Allies and the Axis Powers. _World War II_ was the deadliest conflict in all of human history. It involved more countries, cost more money, and killed more people than any other war in human history. Between 50 to 85 million people died. The majority were civilians. It included massacres, the deliberate genocide of the Holocaust, strategic bombing, starvation, disease and the first use of nuclear weapons in history.The war in Asia began when the Empire of Japan invaded China on 7 July 1937. The United States reacted by placing an oil embargo on Japan. The start of the war in Europe was when Germany invaded Poland on 1 September 1939. France and Britain reacted by declaring war on Germany. By 1941, much of Europe was under German control. Only Britain remained fighting against the Axis in North Africa, the Mediterranean, and the Atlantic. In June 1941, the Axis Powers invaded the Soviet Union, starting the largest area of war in history. On December 7, 1941, Japan attacked Western colonies in the Pacific and the two wars became one.The Japanese victories were stopped in 1942, and the European Axis victories were also stopped by 1943, both in North Africa and in the Soviet Union. After that, the Allies started to fight back from all sides. The Axis lost North Africa and, starting in 1943, were forced to defend Italy. In 1944, the Allies invaded France, heading towards Germany on the Rhine River, while the Soviets kept closing in from the East. Germany surrendered in May 1945. Japan formally surrendered on 2 September 1945. The war ended with the Allied victory.After the war, the United Nations was set up to develop support between countries and to prevent future wars. The Cold War among the major winners soon started, but they did not fight each other in an actual war. Decolonization of Asia and Africa, where those countries controlled by European countries were given their independence, happened as well. This was because European power was weakened from the war. Economic recovery and the political integration (the process of uniting countries) were among other results of the war.","_Amelia Mary Earhart_ (July 24, 1897 – and disappeared in July 2, 1937) was an American aviator, one of the first women to fly a plane long distances. She was the first woman to fly a plane by herself across the Atlantic Ocean. She broke many records and showed how air travel had moved forward. She also wrote books, most of them were about her flights. Earhart vanished over the South Pacific Ocean in July 2, 1937 while trying to fly around the world. She was declared dead on July 3, 1937.Many theories stand in place about _Amelia's_ end. Some believe she was a spy for the U.S government and was captured by the Japanese on Gardner Island, others say she faked her death. The most plausible though is many researchers believe, which is that the Electra ran out of fuel and that Earhart and Noonan ditched at sea. The 'crash and sink' theory is often the most widely accepted explanation of Earhart’s and Noonan’s fate. However, there is a range of documented, archaeological, and anecdotal evidence supporting the hypothesis that Earhart and Noonan found Gardner Island, uninhabited at the time, landed the Electra on a flat reef near the wreck of a freighter, and sent sporadic radio messages from there. It has been surmised that Earhart and Noonan might have survived on Nikumaroro for several weeks before succumbing.",
  "_World War I_ (or the First World War) was a global war which began on July 28, 1914 and lasted until November 11, 1918. The war lasted exactly four years, three months and 14 days.Most of the fighting was in Europe, but soldiers from many other countries took part, and it changed the colonial empires of the European powers. Before World War II began in 1939, _World War I_ was called the Great War, the World War or the 'war to end all wars'. 135 countries took part in _World War I, and nearly 10 million people died while fighting.World War I_ was fought by most of the countries of Europe. The actual fighting was on many different fronts. The Western Front was where most of the fighting between Germany and the Allies happened. Most of the fighting here was trench warfare.The Eastern Front was fought in Central and Eastern Europe. Fighting here was not trench warfare but mobile warfare due to the size of the front. Much fighting happened in the Middle Eastern Front and the Italian Front. Fighting also took place in Africa, China, and at sea as well as in the air.The war was ended by the signing of many different treaties, the most important being the Treaty of Versailles._World War I_ was the first major war where tanks, airplanes, and submarines or (U-boats) were important weapons.",
  "_Suffragettes_ were women in the early 20th century who believed they should have the right to vote (suffrage). This movement happened in the United Kingdom and United States.For many years women were not allowed to vote, and so they fought for their rights. In their protests, they ended up getting arrested. In the UK, women over 30 got the right to vote in 1918. This was lowered to 21 in 1928. Similar struggles went on in all the English-speaking countries.",
  "_Marie Skłodowska–Curie_ (7 November 1867 – 4 July 1934) was a Polish and French physicist, chemist and feminist. She did research on radioactivity. She was also the first woman to win a Nobel Prize. She was the first woman professor at the University of Paris. She was the first person to win two Nobel Prizes. She received a Nobel Prize in physics for her research on uncontrolled radiation, which was discovered by Henri Becquerel.",
  "_Charles Darwin_ (1809–1882) wrote his On the Origin of Species in 1859. In this book, he put forward much evidence that evolution had occurred. He also proposed natural selection as the way evolution had taken place. But Darwin did not understand about genetics and how traits were actually passed on. He could not accurately explain what made children look like their parents.Nevertheless, _Darwin's_ explanation of evolution was fundamentally correct. In contrast to Lamarck, _Darwin's_ idea was that the giraffe's neck became longer because those with longer necks survived better. These survivors passed their genes on, and in time the whole race got longer necks.",
  "_Industrialization_ (or Industrialisation) is a process that happens in countries when they start to use machines to do work that was once done by people. _Industrialization_ changes the things people do. _Industrialization_ caused towns to grow larger. Many people left farming to take higher paid jobs in factories in towns._Industrialization_ is part of a process where people adopt easier and cheaper ways to make things. Using better technology, it becomes possible to produce more goods in a shorter amount of time. More things can be produced by fewer people.After industrialization people also do more specialized jobs. For example before industrialization, a cobbler made the whole shoe. He worked on one pair of shoes, finished that, and then did the next pair of shoes. With industrialization, there are many people involved in making shoes. An individual shoemaker has a smaller task, however. There is one person that cuts the sole of the shoe. Another person stitches it on. In short there is division of labour. The machines to make the shoes cost a lot of money so the factory will be owned by a rich person who can afford the machines._Industrialization_ started in England with the industrial revolution in the 18th century. It spread first to parts of Europe, and to North America. In the 20th century industrialization spread to most other countries.",
  "When most people think of _Isaac Newton, they think of him sitting under an apple tree watching an apple fall. Some people even believe the apple fell onto his head. __Newton_ understood that what makes things like apples fall to the ground is a specific kind of force — the force we call gravity. _Newton_ thought that gravity was the force of attraction between two objects, such as an apple and the earth. He also thought that an object with more matter exerted the same force on smaller objects as they exerted on it. That meant that the large mass of the earth pulled objects toward it. That is why the apple fell down instead of up, and why people do not float in the air._Isaac Newton_ went on thinking about gravity. Before _Newton, people thought that only objects near to the earth would fall down. But __Newton_ thought that gravity should not just be limited to the earth and the objects on it. What if gravity went to the moon and beyond?_Newton_ invented a formula for calculating the force of attraction between two bodies. He used it to calculate the force needed to keep the moon moving around the earth. Then he compared it with the force that made the apple fall downward. After allowing for the fact that the moon is much farther from the earth, and has a much greater mass, he discovered that the forces were the same. The moon is held in an orbit around the earth by the pull of earth’s gravity.The formula invented by _Newton_ is called the Law of gravitation.",
  "The Black Death (also known as the Pestilence, the Great Mortality or the Plague) was a bubonic plague pandemic occurring in Western Eurasia and North Africa from 1346 to 1353. It is the most fatal pandemic recorded in human history, causing the deaths of 75–200 million people, peaking in Europe from 1347 to 1351.",
  "_The Crusades_ were a series of religious wars fought between Christians and Muslims over control of the Holy Land. Traditionally, they took place between 1095 and 1291. The Holy Land was still is a place that is very important for the three major monotheistic religions: Islam, Judaism, and Christianity. There are many important religious sites in the Holy Land. This is the land now called Israel or Palestine. Jerusalem, Nazareth, Bethlehem and other religious sites fell under the control of Muslims during the Caliphate of Omar.There were many different crusades. The most important and biggest _Crusades_ took place from the 11th century to the 13th century. There were 9 large crusades during this time. They are numbered 1 through 9. There were also many smaller Crusades. Some crusades were even within Europe (for example, in Germany, Austria and Scandinavia). The smaller _Crusades_ continued to the 16th century, until the Renaissance and Reformation.The word 'Crusade' is related to the word 'Cross', and means a Christian holy war. There is also the Arabic word 'Jihad', which means to strive and struggle by Muslims. All sides (Christians, Muslims, and Jews) believed very much in their religions. They also had political reasons for war."];



  List<String> LOEImg=["assets/theme/homo sapiens.gif","assets/theme/fire.gif",
    "assets/theme/early human tols.gif","assets/theme/ancestors.gif",
    "assets/theme/evolution by lemons.gif","assets/theme/dinosaur.gif",
    "assets/theme/tyrannosaurs.gif","assets/theme/mammels.gif",
    "assets/theme/the-good-dinosaur.gif","assets/theme/mammels.gif",
    "assets/theme/mammels.gif"];
  List<String> LOEYears=[
    "0.3M Years",    "1.5M Years",
    "3.3M Years","4M Years",
    "6M Years",    "65M Years",
    "68M Years", "200M Years",
    "230M Years","396M Years",
    "600M Years"];
  List<String> LOE=["Homo Sapiens",    "Control Fire",
    "Constructed Tools",    "Least Common Ancestor",
    "Apes to Humans","Dinosaur Extinction",
    "Tyrannosaurus",    "Mammals",
    "Dinosaur","Insects",
    "Animals"];
  List<String> LOEContent=["The earliest hominin, of presumably primitive bipedalism, is considered to be either Sahelanthropus or Orrorin, both of which arose some 6 to 7 million years ago.The earliest fossils that have been proposed as members of the hominin lineage are Sahelanthropus tchadensis dating from 7 million years ago, Orrorin tugenensis dating from 5.7 million years ago, and Ardipithecus kadabba dating to 5.6 million years ago.","_The control of fire_ by early humans was a turning point in the cultural aspect of human evolution. Fire provided a source of warmth, protection, improvement on hunting and a method for cooking food. These cultural advancements allowed for human geographic dispersal, cultural innovations, and changes to diet and behavior. Additionally, creating fire allowed the expansion of human activity to proceed into the dark and colder hours of the evening.Claims for the earliest definitive evidence of control of fire by a member of Homo range from 1.7 to 0.2 million years ago (Mya). Evidence for the controlled use of fire by Homo "
  "erectus, beginning some 1,000,000 years ago, has wide scholarly support. Flint blades burned in fires"
  " roughly 300,000 years ago were found near fossils of early but not entirely modern Homo sapiens in Morocco. E"
  "vidence of widespread control of fire by anatomically modern humans dates to approximately 125,000 years ago.",
  "Stone tools are tools made of stone. They are the reason the stone age was given its name. They were the first known tools used "
  "by mankind, and were used by all human species, such as Homo habilis and Homo erectus.Recently it was learned that stone tools"
  " were used before the genus Homo evolved. These oldest tools come from the shores of Lake Turkana in Kenya, and date to 3.3 million "
  "years ago. They are 700,000 years older than any tools found before.Volcanic ash and minerals around the tools allow them to be dated. "
  "The tools look like those described as Oldowan. They might have been made by members of species such as Australopithecus afarensis "
  "or Kenyanthropus platyops. The research team has proposed the term 'Lomekwian' for these tools, and say they   mark the start of archaeology. The palaeoenvironment "
  "was wooded. ",
    "The chimpanzee–human last common ancestor, or CHLCA, is the last common ancestor shared by the extant Homo (human) and Pan (chimpanzee) genera of"
  " Hominini. Due to complex hybrid speciation, it is not possible to give a precise estimate on the age of this ancestral individual. While 'original divergence' between populations "
        "may have occurred as early as 13 million"
  " years ago (Miocene), hybridization may have been ongoing until as recent as "
        "4 million years ago (Pliocene).Speciation from Pan to Homo appears to "
        "have been a long, drawn-out process. After the original divergences, there were, according to Patterson (2006), periods of hybridization between population groups and a process of alternating divergence and hybridization that lasted several million years. Some time during the late Miocene or early Pliocene, the earliest members of the human clade completed a final separation from the lineage of Pan — with date estimates ranging from 13 million to as recent as 4 million years ago. The latter date and the argument for hybridization events are rejected by Wakeley (see current estimates regarding complex speciation).Richard Wrangham (2001) argued that the CHLCA species was very similar to the common chimpanzee (Pan troglodytes) — so much so that it should be classified as a member of the genus Pan and be given the taxonomic name Pan prior. However, no fossil has yet been identified as a probable candidate for the CHLCA or the taxon Pan prior.In human genetic studies, the CHLCA is useful as an anchor point for calculating single-nucleotide polymorphism (SNP) rates in human populations where chimpanzees are used as an outgroup, that is, as the extant species most genetically similar to Homo sapiens.","The chimpanzee-human last common ancestor, or CHLCA, is the last common ancestor shared by the extant Homo (human) and Pan (chimpanzee) genera of Hominini."
  "  Due to complex hybrid speciation, it is not possible to give a precise "
        "estimate on the age of this ancestral individual. While 'original "
        "divergence' between populations may have occurred as early as 13 million years ago (Miocene), hybridization may have been ongoing until as recent as 4 million years ago (Pliocene).Speciation from Pan to Homo appears to have been a long, drawn-out process. After the original divergences, there were, according to Patterson (2006), periods of hybridization between population groups and a process of alternating divergence and hybridization that lasted several million years. Some time during the late Miocene or early Pliocene, the earliest members of the human clade completed a final separation from the lineage of Pan - with date estimates ranging from 13 million to as recent as 4 million years ago. The latter date and the argument for hybridization events are rejected by Wakeley (see current estimates regarding complex speciation).Richard Wrangham (2001) argued that the CHLCA species was very similar to the common chimpanzee (Pan troglodytes) - so much so that it should be classified as a member of the genus Pan and be given the taxonomic name Pan prior. However, no fossil has yet been identified as a probable candidate for the CHLCA or the taxon Pan prior."
        "  In human genetic studies, the CHLCA is useful as an anchor point for calculating single- nucleotide polymorphism (SNP) rates in human populations where chimpanzees are used as an outgroup, that is, as the extant species most genetically similar to Homo sapiens. ",
    "The extinctions at the end of the Cretaceous were caused by one or more catastrophic events, such as massive asteroid or meteorite impacts, or increased volcanic activity.Several impact craters and massive volcanic activity, such as that in the Deccan Traps in India, have been dated to the approximate time of the extinction event. These geological events may have reduced sunlight and hindered photosynthesis, leading to a massive disruption in Earth's ecology.","Tyrannosaurus was a large predatory dinosaur from the Upper Cretaceous, 67 to 65.5 million years ago.Tyrannosaurus was a bipedal carnivore with a massive skull balanced by a long, heavy tail. Compared to the large and powerful hind limbs, its forelimbs were small, but powerful for their size. They had two clawed digits.There is discussion as to whether it was a hunter or a scavenger. Like most dominant meat-eaters of today, such as lions and hyenas, Tyrannosaurus might have been both.It had a very strong jaw, and its bite power could snap the bones of other dinosaurs.","Mammals are a group of vertebrate animals which form the class Mammalia. They have fur or hair and a very precise kind of temperature regulation.With the exception of the monotremes, all mammals bear live young. They also produce milk for the young. Parental care of the young is universal among mammals, and it is essential because live birth limits the number of offspring.","_Dinosaurs_ (meaning 'terrible lizards') are a varied group of archosaur reptiles. They were the dominant land animals of the Mesozoic era. Over 500 different genera of dinosaurs are known. Fossils of dinosaurs have been found on every continent, and there are still frequent new discoveries._Dinosaurs_ appeared in the Upper Triassic, about 230 million years ago. The earliest date of a dinosaur fossil is that of Eoraptor, 231.4 to 228 mya. By the early Jurassic they were the top land vertebrates, and dominated most environments on land. They continued until the sudden K/T extinction event 66 million years ago.From the fossil record, we know that birds are living feathered dinosaurs (sort of, but mainly yeetosaurs). They evolved from the earliest theropods during the late Jurassic. And so they were the only line of dinosaurs to survive to the present day.Dinosaurs had adaptations which helped make them successful. The first known dinosaurs were small predators that walked on two legs. All their descendants had an upright posture, with the legs underneath the body. This transformed their whole life-style. There were other features. Most of the smaller dinosaurs had feathers, and were probably warm-blooded. This would make them active, with a higher metabolism than modern reptiles. Social interaction, with living in herds and co-operation seems very likely for some types.The first fossils were recognised as dinosaurs in the early 19th century. Some of their bones were found much earlier, but were not understood. William Buckland, Gideon Mantell and Richard Owen were scientists who saw these bones were a special group of animals. Dinosaurs are now major attractions at museums around the world. They have become part of popular culture. There have been many best-selling books and movies. New discoveries are reported in the media.","_Insects_, are a class in the phylum "
        "Arthropoda. They are small terrestrial invertebrates which have a hard exoskeleton._Insects_ are the largest group of animals on earth by far: about 926,400 different species have been described. They are more than half of all known living species. They may be over 90% of animal species on Earth.New species of _insects_ are continually being found. Estimates of the total number of species range from 2 million to 30 million._Insects_ have six legs; and most have wings. _Insects_ "
        "were the first animals capable of flight. As they develop from eggs, _insects_ undergo metamorphosis. _Insects_ live all over the planet: almost all are terrestrial (live on land). Few _insects_ live in the oceans or in very cold places, such as Antarctica. The most species live in tropical areas.Some people call all _insects_ 'bugs', but this is not correct. Only some _insects_ are true bugs, which is a particular order of _insects. People who study __insects_ are called entomologists.","The first fossils that might represent animals appear in the 665-million-year-old rocks of the Trezona Formation of South Australia. These fossils are interpreted as most probably being early sponges.The oldest animals are found in the Ediacaran biota, towards the end of the Precambrian, around 610 million years ago. It had long been doubtful whether these included animals, but the discovery of the animal lipid cholesterol in fossils of Dickinsonia establishes that these were indeed animals.Many animal phyla first appear in the fossil record during the Cambrian explosion, starting about 542 million years ago, in beds such as the Burgess shale. Extant phyla in these rocks include molluscs, brachiopods, onychophorans, tardigrades, arthropods, echinoderms and hemichordates, along with numerous now-extinct forms such as the predatory Anomalocaris. The apparent suddenness of the event may however be an artefact of the fossil record, rather than showing that all these animals appeared simultaneously."
  ];


  List<String> UniverseImg = ["assets/theme/Planetary-Bombardment-Model.gif",
    "assets/theme/earth born.gif",
    "assets/theme/sun born.webp",
    "assets/theme/milky way.gif",
    "assets/theme/blackHole.gif",
    "assets/theme/bigbang.gif",
    ];
  List<String> UniverseYears=["4.1B","4.5B","4.6B","13B","13.5B","13.8B"];
  List<String> Universe =["Heavy Bombardment","Earth is born","Sun is Born","Birth of MilkyWay","Black Hole Forms","Big Bang"];
  List<String> UniverseCont=["The Late Heavy Bombardment (abbreviated LHB and also known as the lunar cataclysm) is an event thought to have occurred approximately 4.1 to 3.8 billion years (Ga) ago, at a time corresponding to the Neohadean and Eoarchean eras on Earth. During this interval, a disproportionately large number of asteroids are theorized to have collided with the early terrestrial planets in the inner Solar System, including Mercury, Venus, Earth, and Mars.The Late Heavy Bombardment happened after the Earth and other rocky planets had formed and accreted most of their mass, but still quite early in Earth's history.",
  "__Earth__ and the other planets formed about 4.6 billion years ago. They were made of the leftover gas from the nebula that made the Sun. The Moon may have been formed after a collision between the early __Earth__ and a smaller planet (sometimes called Theia). Scientists believe that parts of both planets broke off — becoming (by gravity) the Moon.__Earth__'s water came from different places. Condensing water vapour, and comets and asteroids hitting __Earth__, made the oceans. Within a billion years (that is at about 3.6 billion years ago) the first life evolved, in the Archaean era. Some bacteria developed photosynthesis, which lets plants make food from the Sun's light and water. This released a lot of oxygen, which was first taken up by iron in solution. Eventually, free oxygen got into the atmosphere or air, making __Earth__'s surface suitable for aerobic life (see Great Oxygenation Event). This oxygen also formed the ozone layer which protects __Earth__'s surface from bad ultraviolet radiation from the Sun. Complex life on the surface of the land did not exist before the ozone layer.__Earth__ was very different in the distant past. Long ago, almost all land was in one place. This is called a supercontinent. The earliest known supercontinent was called Vaalbara. Much later, there was a time (the Cryogenian) when __Earth__ was almost entirely covered by thick ice sheets (glaciers). This is called the Snowball __Earth__ theory.",
  "The __Sun__ in the center of our solar system is a yellow dwarf star. It gives off energy as light. That includes light, infra-red energy (heat), ultraviolet light and radio waves. It also gives off a stream of particles, which reaches Earth as 'solar wind'. The source of all this energy is the reaction in the star which turns hydrogen into helium and makes huge amounts of energy.The __Sun__ is a star like many others in our Milky Way galaxy. It has existed for a little over 4.5 billion years, and is going to continue for at least as long. The __Sun__ is about a hundred times as wide as the Earth. It has a mass of 1.9891×1030 kg, which is 333,000 times the mass of the Earth. The Earth can also fit inside the __Sun__ 1.3 million times.Scientists think that the __Sun__ started from a very large cloud of dust and small bits of ice about 4.567 billion years ago.At the center of that huge cloud, gravity caused the material to build up into a ball. Once this got big enough, the huge pressure inside started a fusion reaction. The energy this released caused that ball to heat and shine.The energy radiated from the __Sun__ pushed away the rest of the cloud from itself, and the planets formed from the rest of this cloud.",
  "The __Milky Way__ began as one or several small overdensities in the mass distribution in the Universe shortly after the Big Bang. Some of these overdensities were the seeds of globular clusters in which the oldest remaining stars in what is now the __Milky Way__ formed. Nearly half the matter in the __Milky Way__ may have come from other distant galaxies. Nonetheless, these stars and clusters now comprise the stellar halo of the __Milky Way__. Within a few billion years of the birth of the first stars, the mass of the __Milky Way__ was large enough so that it was spinning relatively quickly. Due to conservation of angular momentum, this led the gaseous interstellar medium to collapse from a roughly spheroidal shape to a disk. Therefore, later generations of stars formed in this spiral disk. Most younger stars, including the Sun, are observed to be in the disk.Since the first stars began to form, the __Milky Way__ has grown through both galaxy mergers (particularly early in the __Milky Way__'s growth) and accretion of gas directly from the Galactic halo. The __Milky Way__ is currently accreting material from several small galaxies, including two of its largest satellite galaxies, the Large and Small Magellanic Clouds, through the Magellanic Stream. Direct accretion of gas is observed in high-velocity clouds like the Smith Cloud. However, properties of the __Milky Way__ such as stellar mass, angular momentum, and metallicity in its outermost regions suggest it has undergone no mergers with large galaxies in the last 10 billion years. This lack of recent major mergers is unusual among similar spiral galaxies; its neighbour the Andromeda Galaxy appears to have a more typical history shaped by more recent mergers with relatively large galaxies.According to recent studies, the __Milky Way__ as well as the Andromeda Galaxy lie in what in the galaxy color–magnitude diagram is known as the 'green valley', a region populated by galaxies in transition from the 'blue cloud' (galaxies actively forming new stars) to the 'red sequence' (galaxies that lack star formation). Star-formation activity in green valley galaxies is slowing as they run out of star-forming gas in the interstellar medium. In simulated galaxies with similar properties, star formation will typically have been extinguished within about five billion years from now, even accounting for the expected, short-term increase in the rate of star formation due to the collision between both the __Milky Way__ and the Andromeda Galaxy. In fact, measurements of other galaxies similar to the __Milky Way__ suggest it is among the reddest and brightest spiral galaxies that are still forming new stars and it is just slightly bluer than the bluest red sequence galaxies.## Age and cosmological historyGlobular clusters are among the oldest objects in the __Milky Way__, which thus set a lower limit on the age of the __Milky Way__. The ages of individual stars in the __Milky Way__ can be estimated by measuring the abundance of long-lived radioactive elements such as thorium-232 and uranium-238, then comparing the results to estimates of their original abundance, a technique called nucleocosmochronology. These yield values of about 12.5 ± 3 billion years for CS 31082-001 and 13.8 ± 4 billion years for BD +17° 3248. Once a white dwarf is formed, it begins to undergo radiative cooling and the surface temperature steadily drops. By measuring the temperatures of the coolest of these white dwarfs and comparing them to their expected initial temperature, an age estimate can be made. With this technique, the age of the globular cluster M4 was estimated as 12.7 ± 0.7 billion years. Age estimates of the oldest of these clusters gives a best fit estimate of 12.6 billion years, and a 95% confidence upper limit of 16 billion years.Several individual stars have been found in the __Milky Way__'s halo with measured ages very close to the 13.80-billion-year age of the Universe. In 2007, a star in the galactic halo, HE 1523-0901, was estimated to be about 13.2 billion years old. As the oldest known object in the__ Milky Way__ at that time, this measurement placed a lower limit on the age of the __Milky Way__. This estimate was made using the UV-Visual Echelle Spectrograph of the Very Large Telescope to measure the relative strengths of spectral lines caused by the presence of thorium and other elements created by the R-process. The line strengths yield abundances of different elemental isotopes, from which an estimate of the age of the star can be derived using nucleocosmochronology. Another star, HD 140283, is 14.5 ± 0.7 billion years old.The age of stars in the galactic thin disk has also been estimated using nucleocosmochronology. Measurements of thin disk stars yield an estimate that the thin disk formed 8.8 ± 1.7 billion years ago. These measurements suggest there was a hiatus of almost 5 billion years between the formation of the galactic halo and the thin disk. Recent analysis of the chemical signatures of thousands of stars suggests that stellar formation might have dropped by an order of magnitude at the time of disk formation, 10 to 8 billion years ago, when interstellar gas was too hot to form new stars at the same rate as before.The satellite galaxies surrounding the __Milky way__ are not randomly distributed, but seemed to be the result of a break-up of some larger system producing a ring structure 500,000 light years in diameter and 50,000 light years wide. Close encounters between galaxies, like that expected in 4 billion years with the Andromeda Galaxy rips off huge tails of gas, which, over time can coalesce to "
      "form dwarf galaxies in a ring at an arbitrary angle to the main disc.",
    "Albert Einstein first predicted the existence of black holes in 1916, with his general theory of relativity. The term 'black hole' was coined many years later in 1967 by American astronomer John Wheeler. After decades of black holes being known only as theoretical objects. The first black hole ever discovered was Cygnus X-1, located within the Milky Way in the constellation of Cygnus, the Swan. Astronomers saw the first signs of the black hole in 1964 when a sounding rocket detected celestial sources of X-rays according to NASA(opens in new tab). In 1971, astronomers determined that the X-rays were coming from a bright blue star orbiting a strange dark object. It was suggested that the detected X-rays were a result of stellar material being stripped away from the bright star and 'gobbled' up by the dark object — an all-consuming black hole. "
  "The __Big Bang__ model is that the universe begun in an extremely dense and hot condition and has expanded. The theory suggests, and measurements show, that the universe is still expanding today."
  "The __Big Bang__ is a scientific theory about how the universe started, and then made the stars and galaxies we see today.The universe began as a very hot, small, and dense superforce (the mix of the four fundamental forces), with no stars, atoms, form, or structure (called a 'singularity'). Then about 13.8 billion years ago, space expanded very quickly (thus the name '__Big Bang__'). This started the formation of atoms, which eventually led to the formation of stars and galaxies. It was Georges Lemaître who first noted (in 1927) that an expanding universe could be traced back in time to an originating single point. The universe is still expanding today, and getting colder as well.As a whole, the universe is growing and the temperature is falling as time passes. Cosmology is the study of how the universe began and its development. Scientists who study cosmology agree that the __Big Bang__ theory matches what they have observed so far.Fred Hoyle called the theory the '__Big Bang__' on his radio show. He did not believe the __Big Bang__ was correct. Scientists who did not agree with him thought the name was funny and decided to use it.Scientists base the __Big Bang__ theory on many different observations. The most important is the redshift of very far away galaxies. Redshift is the Doppler effect occurring in light. When an object moves away from Earth, its color rays look more similar to the color red than they actually are, because the movement stretches the wavelength of light given off by the object. Scientists use the word 'red hot' to describe this stretched light wave because red is the longest wavelength on the visible spectrum. The more redshift there is, the faster the object is moving away. By measuring the redshift, scientists proved that the universe is expanding, and they can work out how fast the object is moving away from the Earth. With very exact observation and measurements, scientists believe that the universe was a singularity approximately 13.8 billion years ago. Because most things become colder as they expand, scientists assume that the universe was very small and very hot when it started.Other observations that support the __Big Bang__ theory are the amounts of chemical elements in the universe. Amounts of very light elements, such as hydrogen, helium, and lithium seem to agree with the theory of the __Big Bang__. Scientists also have found 'cosmic microwaves background radiation'. This radiation is known as radio waves, and they are everywhere in the universe. This radiation is now very weak and cold, but a long time ago it was very strong and very hot.It could be said that time had no meaning before the __Big Bang__. If the __Big Bang__ was the beginning of time, then there was no universe before the __Big Bang__, since there could not be any 'before' if there was no time! Other ideas state that the __Big Bang__ was not the beginning of time 13.8 billion years ago. Instead, some believe that there was a completely different universe before the __Big Bang__, and it may have been very different from the one we know today."];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Menu"),backgroundColor: Colors.indigo,),
      body: SingleChildScrollView(
        child: Container(
          color:  Color(0xE5DADAFF),
          child: Column(
            children: [
              GestureDetector(
                child: Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(18)
                  ),
                  elevation: 5,
                  margin: EdgeInsets.all(20),
                 child: Container(
                   
                   width: 400,
                   height: 200,
                   decoration: BoxDecoration(
                     borderRadius: BorderRadius.circular(18),
                     image: DecorationImage(
                       image: AssetImage("assets/space.webp"),
                       fit: BoxFit.fill
                     )
                   ),
                   child: Padding(
                       padding: const EdgeInsets.only(top: 150,),
                       child:Container(
                         width: 500,
                         // color: Colors.white,
                         child: Text("Birth of Universe",
                           style: TextStyle(color: Colors.white,fontWeight: FontWeight.w600,fontSize: 30,),textAlign: TextAlign.center,),
                       )
                   ),
                 )
                ),
                onTap: (){
                  Navigator.of(context).push(MaterialPageRoute(builder: (context)=>
                      timeline(
                        image: "assets/galaxybg.webp",
                        data: Universe,
                        dataYears: UniverseYears,
                        content: UniverseCont,
                        ImageData: UniverseImg,
                      )));},
              ),
              show1?Column(
                children: [
                Text("Hellooooooo")
                ],
              ):SizedBox(),
              GestureDetector(
                child: Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(16)
                  ),
                    elevation: 5,
                    margin: EdgeInsets.all(20),
                    child: Container(
                      width: 400,
                      height: 200,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(16),
                          image: DecorationImage(
                              image: AssetImage("assets/earthanimate.gif"),
                              fit: BoxFit.fill
                          )
                      ),
                      child: Padding(
                          padding: const EdgeInsets.only(top: 150,),
                          child:Container(
                            width: 500,
                            // color: Colors.white,
                            child: Text("Life on Earth",
                              style: TextStyle(
                                color: Colors.white,fontWeight: FontWeight.w600,fontSize: 30),textAlign: TextAlign.center,),
                          )
                      ),
                    )
                ),
                onTap: (){ Navigator.of(context).push(MaterialPageRoute(builder: (context)=>
                    timeline(
                      image: "assets/earthbg.webp",
                      data: LOE,
                      dataYears: LOEYears,
                      content: LOEContent,
                      ImageData: LOEImg,
                    )));},
              ),
              // show2?Column(
              //   children: [
              //     Text("Hellooooooo")
              //   ],
              // ):SizedBox(),
              GestureDetector(
                child: Card(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(16)
                    ),
                    elevation: 5,
                    margin: EdgeInsets.all(20),
                    child: Container(
                      width: 400,
                      height: 200,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(16),
                          image: DecorationImage(
                              image: AssetImage("assets/man.gif"),
                              fit: BoxFit.fill
                          )
                      ),
                      child: Padding(
                          padding: const EdgeInsets.only(top: 150,),
                          child:Container(
                            width: 500,
                            // color: Colors.white,
                            child: Text("Common Era",
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.w600,
                                fontSize: 30,),textAlign: TextAlign.center,),
                          )
                      ),
                    )
                ),
                onTap: (){
                  Navigator.of(context).push(MaterialPageRoute(builder: (context)=>
                      timeline(image: "assets/galaxybg.webp",
                        data: commonEra,
                        dataYears: commonEraYears,
                        content: commonEraCont,
                        ImageData: commonEraImg,
                      )));
                },
              ),
              show3?Column(
                children: [
                  Text("Hellooooooo")
                ],
              ):SizedBox(),
            ],
          ),
        ),
      ),
    );
  }
}
