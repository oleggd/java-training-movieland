//----------------------------------------------------------------------------------------------------
TRUNCATE TABLE public.users;

INSERT INTO public.users(id, login, name, email, password, sole, creation_date, role) VALUES (nextval('public.user_id_seq'),'User1','Рональд Рейнольдс','ronald.reynolds66@example.com','ca134eaea60f6d7b53268c67decb1b22','alkerwqoef77c2g421',CURRENT_TIMESTAMP(0),'User');
INSERT INTO public.users(id, login, name, email, password, sole, creation_date, role) VALUES (nextval('public.user_id_seq'),'User2','Дарлин Эдвардс','darlene.edwards15@example.com'   ,'02c0ec42521eb0d08f65349659d3d713','1o2uy3p9f8cyew98y2',CURRENT_TIMESTAMP(0),'User');
INSERT INTO public.users(id, login, name, email, password, sole, creation_date, role) VALUES (nextval('public.user_id_seq'),'User3','Габриэль Джексон','gabriel.jackson91@example.com' ,'dd26a1b476ec7efbda17b7485bea72f2','askjfo34i5983u4rhn',CURRENT_TIMESTAMP(0),'User');
INSERT INTO public.users(id, login, name, email, password, sole, creation_date, role) VALUES (nextval('public.user_id_seq'),'User4','Дэрил Брайант','daryl.bryant94@example.com'       ,'8c78bc03fe650285314df0b3498bfb20','wehj0923874310298a',CURRENT_TIMESTAMP(0),'User');
INSERT INTO public.users(id, login, name, email, password, sole, creation_date, role) VALUES (nextval('public.user_id_seq'),'User5','Нил Паркер','neil.parker43@example.com'           ,'bcf49de24d65c060c3458a202823d7ef','askmweiru32329dusa',CURRENT_TIMESTAMP(0),'User');
INSERT INTO public.users(id, login, name, email, password, sole, creation_date, role) VALUES (nextval('public.user_id_seq'),'User6','Трэвис Райт','travis.wright36@example.com'        ,'3b0eb9570cd122e81743f92a8cc119d4','as,dm32987e8p;ioDC',CURRENT_TIMESTAMP(0),'User');
INSERT INTO public.users(id, login, name, email, password, sole, creation_date, role) VALUES (nextval('public.user_id_seq'),'User7','Амелия Кэннеди','amelia.kennedy58@example.com'    ,'299faf4ea562783ce004a214c64481ef','xdkcfnldur23G!@TEG',CURRENT_TIMESTAMP(0),'User');
INSERT INTO public.users(id, login, name, email, password, sole, creation_date, role) VALUES (nextval('public.user_id_seq'),'User8','Айда Дэвис','ida.davis80@example.com'             ,'7fb52077ccc9b91b7b5c79146098cd17','sdf72q34KJQWHE(!W@',CURRENT_TIMESTAMP(0),'User');
INSERT INTO public.users(id, login, name, email, password, sole, creation_date, role) VALUES (nextval('public.user_id_seq'),'User9','Джесси Паттерсон','jessie.patterson68@example.com','397b6b263231504d4260d2c5b4736440','fdsfmn;dicudoisfds',CURRENT_TIMESTAMP(0),'User');
INSERT INTO public.users(id, login, name, email, password, sole, creation_date, role) VALUES (nextval('public.user_id_seq'),'User10','Деннис Крейг','dennis.craig82@example.com','79d8e6068d8f3a0a8970505241aac3bd','asdfmweirweincIZCu',CURRENT_TIMESTAMP(0),'User');

TRUNCATE TABLE public.permissions;

INSERT INTO public.permissions(id, role, object, creation_date) VALUES (nextval('public.permission_id_seq'), 'Guest', 'login',  CURRENT_TIMESTAMP(0));
INSERT INTO public.permissions(id, role, object, creation_date) VALUES (nextval('public.permission_id_seq'), 'Guest', 'logout', CURRENT_TIMESTAMP(0));
INSERT INTO public.permissions(id, role, object, creation_date) VALUES (nextval('public.permission_id_seq'), 'User',  'login',  CURRENT_TIMESTAMP(0));
INSERT INTO public.permissions(id, role, object, creation_date) VALUES (nextval('public.permission_id_seq'), 'User',  'logout', CURRENT_TIMESTAMP(0));
INSERT INTO public.permissions(id, role, object, creation_date) VALUES (nextval('public.permission_id_seq'), 'Admin', 'login',  CURRENT_TIMESTAMP(0));
INSERT INTO public.permissions(id, role, object, creation_date) VALUES (nextval('public.permission_id_seq'), 'Admin', 'logout', CURRENT_TIMESTAMP(0));

TRUNCATE TABLE public.genres;

INSERT INTO public.genres(id, name, creation_date) VALUES (nextval('public.genre_id_seq'), 'драма', CURRENT_TIMESTAMP(0));
INSERT INTO public.genres(id, name, creation_date) VALUES (nextval('public.genre_id_seq'), 'криминал', CURRENT_TIMESTAMP(0));
INSERT INTO public.genres(id, name, creation_date) VALUES (nextval('public.genre_id_seq'), 'фэнтези', CURRENT_TIMESTAMP(0));
INSERT INTO public.genres(id, name, creation_date) VALUES (nextval('public.genre_id_seq'), 'детектив', CURRENT_TIMESTAMP(0));
INSERT INTO public.genres(id, name, creation_date) VALUES (nextval('public.genre_id_seq'), 'мелодрама', CURRENT_TIMESTAMP(0));
INSERT INTO public.genres(id, name, creation_date) VALUES (nextval('public.genre_id_seq'), 'биография', CURRENT_TIMESTAMP(0));
INSERT INTO public.genres(id, name, creation_date) VALUES (nextval('public.genre_id_seq'), 'комедия', CURRENT_TIMESTAMP(0));
INSERT INTO public.genres(id, name, creation_date) VALUES (nextval('public.genre_id_seq'), 'фантастика', CURRENT_TIMESTAMP(0));
INSERT INTO public.genres(id, name, creation_date) VALUES (nextval('public.genre_id_seq'), 'боевик', CURRENT_TIMESTAMP(0));
INSERT INTO public.genres(id, name, creation_date) VALUES (nextval('public.genre_id_seq'), 'триллер', CURRENT_TIMESTAMP(0));
INSERT INTO public.genres(id, name, creation_date) VALUES (nextval('public.genre_id_seq'), 'приключения', CURRENT_TIMESTAMP(0));
INSERT INTO public.genres(id, name, creation_date) VALUES (nextval('public.genre_id_seq'), 'аниме', CURRENT_TIMESTAMP(0));
INSERT INTO public.genres(id, name, creation_date) VALUES (nextval('public.genre_id_seq'), 'мультфильм', CURRENT_TIMESTAMP(0));
INSERT INTO public.genres(id, name, creation_date) VALUES (nextval('public.genre_id_seq'), 'семейный', CURRENT_TIMESTAMP(0));
INSERT INTO public.genres(id, name, creation_date) VALUES (nextval('public.genre_id_seq'), 'вестерн', CURRENT_TIMESTAMP(0));


TRUNCATE TABLE public.movies CASCADE;

INSERT INTO movies (id,name,name_orig,year,country,genre,description,rating,price,creation_date)                                                  
SELECT nextval('public.genre_id_seq') AS id,'Побег из Шоушенка' AS name,'The Shawshank Redemption' AS name_orig, 1994 AS year,'США' AS country,'драма, криминал' AS genre,'Успешный банкир Энди Дюфрейн обвинен в убийстве собственной жены и ее любовника. Оказавшись в тюрьме под названием Шоушенк, он сталкивается с жестокостью и беззаконием, царящими по обе стороны решетки. Каждый, кто попадает в эти стены, становится их рабом до конца жизни. Но Энди, вооруженный живым умом и доброй душой, отказывается мириться с приговором судьбы и начинает разрабатывать невероятно дерзкий план своего освобождения.' AS description,8.9 AS rating,123.45 AS price, CURRENT_TIMESTAMP(0) as creation_date UNION ALL
SELECT nextval('public.genre_id_seq'), 'Зеленая миля','The Green Mile',1999,'США','фэнтези, драма, криминал, детектив','Обвиненный в страшном преступлении, Джон Коффи оказывается в блоке смертников тюрьмы «Холодная гора». Вновь прибывший обладал поразительным ростом и был пугающе спокоен, что, впрочем, никак не влияло на отношение к нему начальника блока Пола Эджкомба, привыкшего исполнять приговор.',8.9,134.67, CURRENT_TIMESTAMP(0) as creation_date UNION ALL
SELECT nextval('public.genre_id_seq'),'Форрест Гамп','Forrest Gump',1994,'США','драма, мелодрама','От лица главного героя Форреста Гампа, слабоумного безобидного человека с благородным и открытым сердцем, рассказывается история его необыкновенной жизни.Фантастическим образом превращается он в известного футболиста, героя войны, преуспевающего бизнесмена. Он становится миллиардером, но остается таким же бесхитростным, глупым и добрым. Форреста ждет постоянный успех во всем, а он любит девочку, с которой дружил в детстве, но взаимность приходит слишком поздно.',8.6,200.60, CURRENT_TIMESTAMP(0) as creation_date UNION ALL
SELECT nextval('public.genre_id_seq'),'Список Шиндлера','Schindler''s List',1993,'США','драма, биография','Фильм рассказывает реальную историю загадочного Оскара Шиндлера, члена нацистской партии, преуспевающего фабриканта, спасшего во время Второй мировой войны почти 1200 евреев.',8.7,150.50, CURRENT_TIMESTAMP(0) as creation_date UNION ALL
SELECT nextval('public.genre_id_seq'),'1+1','Intouchables',2011,'Франция','драма, комедия, биография','Пострадав в результате несчастного случая, богатый аристократ Филипп нанимает в помощники человека, который менее всего подходит для этой работы, — молодого жителя предместья Дрисса, только что освободившегося из тюрьмы. Несмотря на то, что Филипп прикован к инвалидному креслу, Дриссу удается привнести в размеренную жизнь аристократа дух приключений.',8.3,120.00, CURRENT_TIMESTAMP(0) as creation_date UNION ALL
SELECT nextval('public.genre_id_seq'),'Начало','Inception',2010,'США, Великобритания','фантастика, боевик, триллер, драма, детектив','Кобб — талантливый вор, лучший из лучших в опасном искусстве извлечения: он крадет ценные секреты из глубин подсознания во время сна, когда человеческий разум наиболее уязвим. Редкие способности Кобба сделали его ценным игроком в привычном к предательству мире промышленного шпионажа, но они же превратили его в извечного беглеца и лишили всего, что он когда-либо любил. ',8.6,130.00, CURRENT_TIMESTAMP(0) as creation_date UNION ALL
SELECT nextval('public.genre_id_seq'),'Жизнь прекрасна','La vita è bella',1997,'Италия','драма, мелодрама, комедия','Во время II Мировой войны в Италии в концлагерь были отправлены евреи, отец и его маленький сын. Жена, итальянка, добровольно последовала вслед за ними. В лагере отец сказал сыну, что все происходящее вокруг является очень большой игрой за приз в настоящий танк, который достанется тому мальчику, который сможет не попасться на глаза надзирателям. Он сделал все, чтобы сын поверил в игру и остался жив, прячась в бараке.',8.2,145.99, CURRENT_TIMESTAMP(0) as creation_date UNION ALL
SELECT nextval('public.genre_id_seq'),'Бойцовский клуб','Fight Club',1999,'США, Германия','триллер, драма, криминал','Терзаемый хронической бессонницей и отчаянно пытающийся вырваться из мучительно скучной жизни, клерк встречает некоего Тайлера Дардена, харизматического торговца мылом с извращенной философией. Тайлер уверен, что самосовершенствование — удел слабых, а саморазрушение — единственное, ради чего стоит жить.',8.4,119.99, CURRENT_TIMESTAMP(0) as creation_date UNION ALL
SELECT nextval('public.genre_id_seq'),'Звёздные войны: Эпизод 4 – Новая надежда','Star Wars',1977,'США','фантастика, фэнтези, боевик, приключения','Татуин. Планета-пустыня. Уже постаревший рыцарь Джедай Оби Ван Кеноби спасает молодого Люка Скайуокера, когда тот пытается отыскать пропавшего дроида. С этого момента Люк осознает свое истинное назначение: он один из рыцарей Джедай. В то время как гражданская война охватила галактику, а войска повстанцев ведут бои против сил злого Императора, к Люку и Оби Вану присоединяется отчаянный пилот-наемник Хан Соло, и в сопровождении двух дроидов, R2D2 и C-3PO, этот необычный отряд отправляется на поиски предводителя повстанцев — принцессы Леи. Героям предстоит отчаянная схватка с устрашающим Дартом Вейдером — правой рукой Императора и его секретным оружием — «Звездой Смерти».',8.1,198.98, CURRENT_TIMESTAMP(0) as creation_date UNION ALL
SELECT nextval('public.genre_id_seq'),'Звёздные войны: Эпизод 5 – Империя наносит ответный удар','Star Wars: Episode V - The Empire Strikes Back',1980,'США','фантастика, фэнтези, боевик, приключения','Борьба за Галактику обостряется в пятом эпизоде космической саги. Войска Императора начинают массированную атаку на повстанцев и их союзников. Хан Соло и принцесса Лейя укрываются в Заоблачном Городе, в котором их и захватывает Дарт Вейдер, в то время как Люк Скайуокер находится на таинственной планете джунглей Дагоба. Там Мастер — джедай Йода обучает молодого рыцаря навыкам обретения Силы. Люк даже не предполагает, как скоро ему придется воспользоваться знаниями старого Мастера: впереди битва с превосходящими силами Императора и смертельный поединок с Дартом Вейдером.',8.2,198.98 , CURRENT_TIMESTAMP(0) as creation_date UNION ALL
SELECT nextval('public.genre_id_seq'),'Унесённые призраками','Sen to Chihiro no kamikakushi',2001,'Япония','аниме, мультфильм, фэнтези, приключения, семейный','Маленькая Тихиро вместе с мамой и папой переезжают в новый дом. Заблудившись по дороге, они оказываются в странном пустынном городе, где их ждет великолепный пир. Родители с жадностью набрасываются на еду и к ужасу девочки превращаются в свиней, став пленниками злой колдуньи Юбабы, властительницы таинственного мира древних богов и могущественных духов. ',8.6,145.90, CURRENT_TIMESTAMP(0) as creation_date UNION ALL
SELECT nextval('public.genre_id_seq'),'Титаник','Titanic',1997,'США','драма, мелодрама','Молодые влюбленные Джек и Роза находят друг друга в первом и последнем плавании «непотопляемого» Титаника. Они не могли знать, что шикарный лайнер столкнется с айсбергом в холодных водах Северной Атлантики, и их страстная любовь превратится в схватку со смертью…',7.9,150.00, CURRENT_TIMESTAMP(0) as creation_date UNION ALL
SELECT nextval('public.genre_id_seq'),'Пролетая над гнездом кукушки','One Flew Over the Cuckoo''s Nest',1975,'','драма','Сымитировав помешательство в надежде избежать тюремного заключения, Рэндл Патрик МакМерфи попадает в психиатрическую клинику, где почти безраздельным хозяином является жестокосердная сестра Милдред Рэтчед. МакМерфи поражается тому, что прочие пациенты смирились с существующим положением вещей, а некоторые — даже сознательно пришли в лечебницу, прячась от пугающего внешнего мира. И решается на бунт. В одиночку.',8.7,180.00, CURRENT_TIMESTAMP(0) as creation_date UNION ALL
SELECT nextval('public.genre_id_seq'),'Ходячий замок','Hauru no ugoku shiro',2004,'Япония','аниме, мультфильм, фэнтези, приключения','Злая ведьма заточила 18-летнюю Софи в тело старухи. В поисках того, кто поможет ей вернуться к своему облику, Софи знакомится с могущественным волшебником Хаулом и его демоном Кальцифером. Кальцифер должен служить Хаулу по договору, условия которого он не может разглашать. Девушка и демон решают помочь друг другу избавиться от злых чар…',8.2,130.50, CURRENT_TIMESTAMP(0) as creation_date UNION ALL
SELECT nextval('public.genre_id_seq'),'Гладиатор','Gladiator',2000,'США, Великобритания','боевик, драма','В великой Римской империи не было военачальника, равного генералу Максимусу. Непобедимые легионы, которыми командовал этот благородный воин, боготворили его и могли последовать за ним даже в ад. Но случилось так, что отважный Максимус, готовый сразиться с любым противником в честном бою, оказался бессилен против вероломных придворных интриг. Генерала предали и приговорили к смерти. Чудом избежав гибели, Максимус становится гладиатором.',8.6,175.00, CURRENT_TIMESTAMP(0) as creation_date UNION ALL
SELECT nextval('public.genre_id_seq'),'Большой куш','Snatch.',2000,'Великобритания, США',', комедия','Четырехпалый Френки должен был переправить краденый алмаз из Англии в США своему боссу Эви. Но вместо этого герой попадает в эпицентр больших неприятностей. Сделав ставку на подпольном боксерском поединке, Френки попадает в круговорот весьма нежелательных событий. Вокруг героя и его груза разворачивается сложная интрига с участием множества колоритных персонажей лондонского дна — русского гангстера, троих незадачливых грабителей, хитрого боксера и угрюмого громилы грозного мафиози. Каждый норовит в одиночку сорвать Большой Куш.',8.5,160.00, CURRENT_TIMESTAMP(0) as creation_date UNION ALL
SELECT nextval('public.genre_id_seq'),'Темный рыцарь','The Dark Knight',2008,'США, Великобритания','фантастика, боевик, триллер, криминал, драма','Бэтмен поднимает ставки в войне с криминалом. С помощью лейтенанта Джима Гордона и прокурора Харви Дента он намерен очистить улицы от преступности, отравляющей город. Сотрудничество оказывается эффективным, но скоро они обнаружат себя посреди хаоса, развязанного восходящим криминальным гением, известным испуганным горожанам под именем Джокер.',8.5,199.99, CURRENT_TIMESTAMP(0) as creation_date UNION ALL
SELECT nextval('public.genre_id_seq'),'Как приручить дракона','How to Train Your Dragon',2010,'США','мультфильм, фэнтези, комедия, приключения, семейный','Вы узнаете историю подростка Иккинга, которому не слишком близки традиции его героического племени, много лет ведущего войну с драконами. Мир Иккинга переворачивается с ног на голову, когда он неожиданно встречает дракона Беззубика, который поможет ему и другим викингам увидеть привычный мир с совершенно другой стороны…',8.2,182.00, CURRENT_TIMESTAMP(0) as creation_date UNION ALL
SELECT nextval('public.genre_id_seq'),'Молчание ягнят','The Silence of the Lambs',1990,'США','триллер, криминал, детектив, драма','Психопат похищает и убивает молодых женщин по всему Среднему Западу Америки. ФБР, уверенное в том, что все преступления совершены одним и тем же человеком, поручает агенту Клариссе Старлинг встретиться с заключенным-маньяком, который мог бы объяснить следствию психологические мотивы серийного убийцы и тем самым вывести на его след.',8.3,150.50, CURRENT_TIMESTAMP(0) as creation_date UNION ALL
SELECT nextval('public.genre_id_seq'),'Гран Торино','Gran Torino',2008,'США, Германия','драма','Вышедший на пенсию автомеханик Уолт Ковальски проводит дни, починяя что-то по дому, попивая пиво и раз в месяц заходя к парикмахеру. И хотя последним желанием его недавно почившей жены было совершение им исповеди, Уолту — ожесточившемуся ветерану Корейской войны, всегда держащему свою винтовку наготове, — признаваться в общем-то не в чем. Да и нет того, кому он доверял бы в той полной мере, в какой доверяет своей собаке Дейзи.',8.1,100.50, CURRENT_TIMESTAMP(0) as creation_date UNION ALL
SELECT nextval('public.genre_id_seq'),'Хороший, плохой, злой','Il buono, il brutto, il cattivo',1979,'Италия, Испания, Германия, США','вестерн','В разгар гражданской войны таинственный стрелок скитается по просторам Дикого Запада. У него нет ни дома, ни друзей, ни компаньонов, пока он не встречает двоих незнакомцев, таких же безжалостных и циничных. По воле судьбы трое мужчин вынуждены объединить свои усилия в поисках украденного золота. Но совместная работа — не самое подходящее занятие для таких отъявленных бандитов, как они. Компаньоны вскоре понимают, что в их дерзком и опасном путешествии по разоренной войной стране самое важное — никому не доверять и держать пистолет наготове, если хочешь остаться в живых.',8.5,130.00, CURRENT_TIMESTAMP(0) as creation_date UNION ALL
SELECT nextval('public.genre_id_seq'),'Укрощение строптивого','Il bisbetico domato',1980,'Италия','комедия','Категорически не приемлющий женского общества грубоватый фермер вполне счастлив и доволен своей холостяцкой жизнью. Но неожиданно появившаяся в его жизни героиня пытается изменить его взгляды на жизнь и очаровать его. Что же из этого получится…',7.7,120.00, CURRENT_TIMESTAMP(0) as creation_date UNION ALL
SELECT nextval('public.genre_id_seq'),'Блеф','Bluff storia di truffe e di imbroglioni',1976,'Италия','комедия, криминал','Белль Дюк имеет старые счеты с Филиппом Бэнгом, который отбывает свой срок за решёткой. Для того чтобы поквитаться с Филиппом, Белль Дюк вступает в сговор с другим аферистом по имени Феликс, чтобы тот организовал побег Филиппа Бенга из тюрьмы. Побег удаётся, но парочка заодно обманывает и Белль Дюк, исчезнув прямо из-под её носа. Выясняется, что и Филипп Бэнг, в свою очередь, не прочь отомстить Белль Дюк. Для этого он задумывает грандиозную мистификацию, сродни покерному блефу…',7.6,100.00, CURRENT_TIMESTAMP(0) as creation_date UNION ALL
SELECT nextval('public.genre_id_seq'),'Джанго освобожденный','Django Unchained',2012,'США','драма, вестерн, приключения, комедия','Эксцентричный охотник за головами, также известный как «Дантист», промышляет отстрелом самых опасных преступников. Работенка пыльная, и без надежного помощника ему не обойтись. Но как найти такого и желательно не очень дорогого? Беглый раб по имени Джанго — прекрасная кандидатура. Правда, у нового помощника свои мотивы — кое с чем надо разобраться…',8.5,170.00, CURRENT_TIMESTAMP(0) as creation_date UNION ALL
SELECT nextval('public.genre_id_seq'),'Танцующий с волками','Dances with Wolves',1990,'США, Великобритания','драма, приключения, вестерн','Действие фильма происходит в США во времена Гражданской войны. Лейтенант американской армии Джон Данбар после ранения в бою просит перевести его на новое место службы ближе к западной границе США. Место его службы отдалённый маленький форт. Непосредственный его командир покончил жизнь самоубийством, а попутчик Данбара погиб в стычке с индейцами после того, как довез героя до места назначения. Людей, знающих, что Данбар остался один в форте и должен выжить в условиях суровой природы, и в соседстве с кажущимися негостеприимными коренными обитателями Северной Америки, просто не осталось. Казалось, он покинут всеми. Постепенно лейтенант осваивается, он ведет записи в дневнике…',8.00,120.55, CURRENT_TIMESTAMP(0) as creation_date ;

TRUNCATE TABLE public.posters;

INSERT INTO posters (id, movie_id,url, creation_date )                                                            
SELECT nextval('public.poster_id_seq'),m.id,p.url,CURRENT_TIMESTAMP(0) as creation_date
  FROM movies m 
  JOIN (SELECT 'Побег из Шоушенка' AS name, 'https://images-na.ssl-images-amazon.com/images/M/MV5BODU4MjU4NjIwNl5BMl5BanBnXkFtZTgwMDU2MjEyMDE@._V1._SY209_CR0,0,140,209_.jpg' AS url UNION ALL
        SELECT 'Зеленая миля', 'https://images-na.ssl-images-amazon.com/images/M/MV5BMTUxMzQyNjA5MF5BMl5BanBnXkFtZTYwOTU2NTY3._V1._SY209_CR0,0,140,209_.jpg' UNION ALL
        SELECT 'Форрест Гамп', 'https://images-na.ssl-images-amazon.com/images/M/MV5BNWIwODRlZTUtY2U3ZS00Yzg1LWJhNzYtMmZiYmEyNmU1NjMzXkEyXkFqcGdeQXVyMTQxNzMzNDI@._V1._SY209_CR2,0,140,209_.jpg' UNION ALL
        SELECT 'Список Шиндлера', 'https://images-na.ssl-images-amazon.com/images/M/MV5BNDE4OTMxMTctNmRhYy00NWE2LTg3YzItYTk3M2UwOTU5Njg4XkEyXkFqcGdeQXVyNjU0OTQ0OTY@._V1._SX140_CR0,0,140,209_.jpg' UNION ALL
        SELECT '1+1', 'https://images-na.ssl-images-amazon.com/images/M/MV5BMTYxNDA3MDQwNl5BMl5BanBnXkFtZTcwNTU4Mzc1Nw@@._V1._SY209_CR0,0,140,209_.jpg' UNION ALL
        SELECT 'Начало', 'https://images-na.ssl-images-amazon.com/images/M/MV5BMjAxMzY3NjcxNF5BMl5BanBnXkFtZTcwNTI5OTM0Mw@@._V1._SY209_CR0,0,140,209_.jpg' UNION ALL
        SELECT 'Жизнь прекрасна', 'https://images-na.ssl-images-amazon.com/images/M/MV5BYmJmM2Q4NmMtYThmNC00ZjRlLWEyZmItZTIwOTBlZDQ3NTQ1XkEyXkFqcGdeQXVyMTQxNzMzNDI@._V1._SY209_CR0,0,140,209_.jpg' UNION ALL
        SELECT 'Бойцовский клуб', 'https://images-na.ssl-images-amazon.com/images/M/MV5BZGY5Y2RjMmItNDg5Yy00NjUwLThjMTEtNDc2OGUzNTBiYmM1XkEyXkFqcGdeQXVyNjU0OTQ0OTY@._V1._SY209_CR0,0,140,209_.jpg' UNION ALL
        SELECT 'Звёздные войны: Эпизод 4 – Новая надежда', 'https://images-na.ssl-images-amazon.com/images/M/MV5BYTUwNTdiMzMtNThmNS00ODUzLThlMDMtMTM5Y2JkNWJjOGQ2XkEyXkFqcGdeQXVyNzQ1ODk3MTQ@._V1._SX140_CR0,0,140,209_.jpg' UNION ALL
        SELECT 'Звёздные войны: Эпизод 5 – Империя наносит ответный удар', 'https://images-na.ssl-images-amazon.com/images/M/MV5BYmViY2M2MTYtY2MzOS00YjQ1LWIzYmEtOTBiNjhlMGM0NjZjXkEyXkFqcGdeQXVyNDYyMDk5MTU@._V1._SX140_CR0,0,140,209_.jpg' UNION ALL
        SELECT 'Унесённые призраками', 'https://images-na.ssl-images-amazon.com/images/M/MV5BOGJjNzZmMmUtMjljNC00ZjU5LWJiODQtZmEzZTU0MjBlNzgxL2ltYWdlXkEyXkFqcGdeQXVyNTAyODkwOQ@@._V1._SY209_CR0,0,140,209_.jpg' UNION ALL
        SELECT 'Титаник', 'https://images-na.ssl-images-amazon.com/images/M/MV5BMDdmZGU3NDQtY2E5My00ZTliLWIzOTUtMTY4ZGI1YjdiNjk3XkEyXkFqcGdeQXVyNTA4NzY1MzY@._V1._SY209_CR0,0,140,209_.jpg' UNION ALL
        SELECT 'Пролетая над гнездом кукушки', 'https://images-na.ssl-images-amazon.com/images/M/MV5BZjA0OWVhOTAtYWQxNi00YzNhLWI4ZjYtNjFjZTEyYjJlNDVlL2ltYWdlL2ltYWdlXkEyXkFqcGdeQXVyMTQxNzMzNDI@._V1._SY209_CR0,0,140,209_.jpg' UNION ALL
        SELECT 'Ходячий замок', 'https://images-na.ssl-images-amazon.com/images/M/MV5BZTRhY2QwM2UtNWRlNy00ZWQwLTg3MjktZThmNjQ3NTdjN2IxXkEyXkFqcGdeQXVyMzg2MzE2OTE@._V1._SY209_CR5,0,140,209_.jpg' UNION ALL
        SELECT 'Гладиатор', 'https://images-na.ssl-images-amazon.com/images/M/MV5BMDliMmNhNDEtODUyOS00MjNlLTgxODEtN2U3NzIxMGVkZTA1L2ltYWdlXkEyXkFqcGdeQXVyNjU0OTQ0OTY@._V1._SY209_CR0,0,140,209_.jpg' UNION ALL
        SELECT 'Большой куш', 'https://images-na.ssl-images-amazon.com/images/M/MV5BMTA2NDYxOGYtYjU1Mi00Y2QzLTgxMTQtMWI1MGI0ZGQ5MmU4XkEyXkFqcGdeQXVyNDk3NzU2MTQ@._V1._SY209_CR1,0,140,209_.jpg' UNION ALL
        SELECT 'Темный рыцарь', 'https://images-na.ssl-images-amazon.com/images/M/MV5BMTMxNTMwODM0NF5BMl5BanBnXkFtZTcwODAyMTk2Mw@@._V1._SY209_CR0,0,140,209_.jpg' UNION ALL
        SELECT 'Как приручить дракона', 'https://images-na.ssl-images-amazon.com/images/M/MV5BMjA5NDQyMjc2NF5BMl5BanBnXkFtZTcwMjg5ODcyMw@@._V1._SY209_CR0,0,140,209_.jpg' UNION ALL
        SELECT 'Молчание ягнят', 'https://images-na.ssl-images-amazon.com/images/M/MV5BNjNhZTk0ZmEtNjJhMi00YzFlLWE1MmEtYzM1M2ZmMGMwMTU4XkEyXkFqcGdeQXVyNjU0OTQ0OTY@._V1._SY209_CR1,0,140,209_.jpg' UNION ALL
        SELECT 'Гран Торино', 'https://images-na.ssl-images-amazon.com/images/M/MV5BMTc5NTk2OTU1Nl5BMl5BanBnXkFtZTcwMDc3NjAwMg@@._V1._SY209_CR0,0,140,209_.jpg' UNION ALL
        SELECT 'Хороший, плохой, злой', 'https://images-na.ssl-images-amazon.com/images/M/MV5BOTQ5NDI3MTI4MF5BMl5BanBnXkFtZTgwNDQ4ODE5MDE@._V1._SX140_CR0,0,140,209_.jpg' UNION ALL
        SELECT 'Укрощение строптивого', 'https://images-na.ssl-images-amazon.com/images/M/MV5BMTc5NTM5OTY0Nl5BMl5BanBnXkFtZTcwNjg1MjcyMQ@@._V1._SY209_CR3,0,140,209_.jpg' UNION ALL
        SELECT 'Блеф', 'https://images-na.ssl-images-amazon.com/images/M/MV5BMjk5YmMxMjMtMTlkNi00YTI5LThhYTMtOTk2NmNiNzQwMzI0XkEyXkFqcGdeQXVyMTQ3Njg3MQ@@._V1._SX140_CR0,0,140,209_.jpg' UNION ALL
        SELECT 'Джанго освобожденный', 'https://images-na.ssl-images-amazon.com/images/M/MV5BMjIyNTQ5NjQ1OV5BMl5BanBnXkFtZTcwODg1MDU4OA@@._V1._SY209_CR0,0,140,209_.jpg' UNION ALL
        SELECT 'Танцующий с волками', 'https://images-na.ssl-images-amazon.com/images/M/MV5BMTY3OTI5NDczN15BMl5BanBnXkFtZTcwNDA0NDY3Mw@@._V1._SX140_CR0,0,140,209_.jpg'
       ) p 
    ON m.name = p.name;

TRUNCATE TABLE public.reviews;

INSERT INTO reviews (id, movie_id, author, description, creation_date )                                                            
SELECT nextval('public.review_id_seq'),m.id,r.author,r.description,CURRENT_TIMESTAMP(0) as creation_date
  FROM movies m 
  JOIN (SELECT 'Побег из Шоушенка' AS name,'Дарлин Эдвардс' AS author, 'Гениальное кино! Смотришь и думаешь «Так не бывает!», но позже понимаешь, что только так и должно быть. Начинаешь заново осмысливать значение фразы, которую постоянно используешь в своей жизни, «Надежда умирает последней». Ведь если ты не надеешься, то все в твоей жизни гаснет, не остается смысла. Фильм наполнен бесконечным числом правильных афоризмов. Я уверена, что буду пересматривать его сотни раз.' AS description UNION ALL
        SELECT 'Побег из Шоушенка','Габриэль Джексон','Кино это является, безусловно, «со знаком качества». Что же до первого места в рейтинге, то, думаю, здесь имело место быть выставление «десяточек» от большинства зрителей вкупе с раздутыми восторженными откликами кинокритиков. Фильм атмосферный. Он драматичный. И, конечно, заслуживает того, чтобы находиться довольно высоко в мировом кинематографе. ' UNION ALL
        SELECT 'Зеленая миля','Рональд Рейнольдс','Перестал удивляться тому, что этот фильм занимает сплошь первые места во всевозможных кино рейтингах. Особенно я люблю когда при экранизации литературного произведение из него в силу специфики кинематографа исчезает ирония и появляется некий сверхреализм, обязанный удерживать зрителя у экрана каждую отдельно взятую секунду. ' UNION ALL
        SELECT 'Форрест Гамп','Нил Паркер','Много еще можно сказать об этом шедевре. И то, что он учит верить, и то, чтобы никогда не сдаваться… Но самый главный девиз я увидел вот в этой фразе: «Занимайся жизнью, или занимайся смертью».' UNION ALL
        SELECT 'Список Шиндлера','Трэвис Райт','хороший фильм, необычный сюжет, я бы даже сказала непредсказуемый. Такие фильмы уже стали редкостью.' UNION ALL
        SELECT '1+1','Джесси Паттерсон','У меня не найдётся слов, чтобы описать этот фильм. Не хочется быть банальной и говорить какой он отличный, непредсказуемый и т. д., но от этого никуда не деться к сожалению — ведь он ШЕДЕВРАЛЬНЫЙ!' UNION ALL
        SELECT '1+1','Амелия Кэннеди','Скажу сразу — фильм выглядел многообещающе, даже если не брать в расчет что он находился в топе-250 лучших фильмов. Известные голливудские актеры на главных ролях. Но нет в этом фильме должной атмосферы. Нет такого чувства что вот сейчас случится что-то страшное. Что герои попали в ситуацию из которой не смогут выбраться. В общем, не понравилось.' UNION ALL
        SELECT 'Жизнь прекрасна','Габриэль Джексон','«Все должно быть супер! Супер! Су-пер!» И это именно супер, ну слов других не подберешь.' UNION ALL
        SELECT 'Бойцовский клуб','Деннис Крейг','Фильм очень красивый. Не во всем, конечно, но яркие персонажи и костюмы — это уже кое-что. ' UNION ALL
        SELECT 'Как приручить дракона','Габриэль Джексон','Этот фильм из разряда тех, что могут обеспечить хороший отдых и приподнятое настроение за счёт своей лёгкости, совсем непошлого юмора, умеренной дозы напряжения, динамики нужных скоростей.' UNION ALL
        SELECT 'Как приручить дракона','Нил Паркер','Назначается Киношедевром среди развлекательных фильмов.' UNION ALL
        SELECT 'Гладиатор','Амелия Кэннеди','Данный кинофильм — нестареющая классика мирового кинематографа, который можно пересматривать до бесконечности и, что удивительно, он не может надоесть.' UNION ALL
        SELECT 'Темный рыцарь','Дэрил Брайант','Рекомендую смотреть всем и не обращать внимания на надоевшее уже спасение целого мира одним человеком.' UNION ALL
        SELECT 'Большой куш','Дэрил Брайант','Удивлен. Никто не отозвался плохо? Неужели было создано произведение искусства, которое нравится всем, и которое совершенно? Нет. Может, я один такой? Фильм не вызывает во мне никаких эмоций. Неплохая сказочка. Замечательная наивная атмосфера. Местами есть забавные шутки. И, как мне показалось, этот фильм — своего рода стёб над другими боевиками. При этом превосходящий многие боевики.' UNION ALL
        SELECT 'Унесённые призраками','Деннис Крейг','Необыкновенно позитивный фильм. Его можно пересматривать много раз для поднятия настроения, находя много смешных, незаметных на первый взгляд моментов.' UNION ALL
        SELECT 'Звёздные войны: Эпизод 4 – Новая надежда','Амелия Кэннеди','Легендарный. Культовый. Бессмертный. Три слова. Всего лишь три. А сколько же они выражают неподдельных эмоций и радостных впечатлений по отношению к очередному любимому и уважаемому фильму из минувшего в лету детства? Много. Слишком много. И описать эти сердечные и гарцующие в здравом рассудке чувства обыкновенными строчными предложениями иногда не представляется возможным. ' UNION ALL
        SELECT 'Большой куш','Трэвис Райт','Приятного просмотра для всех, кто не видел ещё этого шедевра больше впечатлений для тех, кто пересматривает в надцатый раз. =) ' UNION ALL
        SELECT 'Большой куш','Нил Паркер','Это один из любимых моих фильмов с самого детства. Я видела его столько раз, что знаю практически наизусть. И могу сказать с уверенностью, что посмотрю еще не один раз. ' UNION ALL
        SELECT 'Молчание ягнят','Габриэль Джексон','Фильм, безусловно, посмотрела уже большая часть населения, которая хоть каким-то образом имеет отношение к кинематографу. Я считаю, что фильм можно пересмотреть еще не один раз.' UNION ALL
        SELECT 'Как приручить дракона','Айда Дэвис','Фильм продуман до мельчайших деталей. Идеальный фильм для улучшения настроения, единственный в своем роде. Обязателен к просмотру!' UNION ALL
        SELECT 'Блеф','Нил Паркер','Фильм потрясающий, в нем хватает абсолютно всего: и драк, и музыки, и юмора, и любви. ' UNION ALL
        SELECT 'Гран Торино','Рональд Рейнольдс','У фильма есть свои мелкие недостатки  и неточности, но многочисленные достоинства в несколько раз перевешивают. Много вдохновляющего креатива!' UNION ALL
        SELECT 'Молчание ягнят','Дарлин Эдвардс','Хоть и не по возрасту мне заводить скрипучую пластинку с мелодией «Раньше и деревья были выше, и трава зеленее…», а хочется. Выражать свою любовь к настолько близкому произведению крайне сложно.' UNION ALL
        SELECT 'Блеф','Айда Дэвис','Вердикт: прекрасная, нестареющая классика, которая рекомендована мною для всех.' UNION ALL
        SELECT 'Хороший, плохой, злой','Дэрил Брайант','Для воскресного вечернего просмотра подходит по всем критериям.' UNION ALL
        SELECT 'Укрощение строптивого','Нил Паркер','Хороший и по-настоящему интересный фильм, с хорошим сюжетом и неплохим музыкальным сопровождением. Всем советую к просмотру.' UNION ALL
        SELECT 'Джанго освобожденный','Трэвис Райт','Полагаю, этот фильм должен быть в коллекции каждого уважающего себя киномана. ' UNION ALL
        SELECT 'Танцующий с волками','Амелия Кэннеди','Нетленный шедевр мирового кинематографа, который можно пересматривать десятки раз и получать все такой — же, извините за выражение, кайф от просмотра. Минусы у фильма, конечно, есть, но черт возьми. Их просто не хочется замечать! Ты настолько поглощен просмотром фильма, что просто не хочется придираться к разным мелочам. ' UNION ALL
        SELECT 'Джанго освобожденный','Айда Дэвис','Фильм только выигрывает от частого просмотра и всегда поднимает мне настроение (наряду с драмой, тут еще и тонкий юмор). ' UNION ALL
        SELECT 'Укрощение строптивого','Джесси Паттерсон','Конечно, бесспорно культовый фильм, не реалистичный, наивный, где то глупый, но такой же увлекательный и удивительный, как и много лет назад' UNION ALL
        SELECT 'Титаник','Джесси Паттерсон','В итоге мы имеем отличный представитель своего жанра, который прошёл проверку временем и до сих пор отлично смотрится, несмотря на классический сюжет' UNION ALL
        SELECT 'Пролетая над гнездом кукушки','Деннис Крейг','Скажу только одно — как я жалею, что не посмотрела его раньше!' 
       ) r
    ON m.name = r.name;

TRUNCATE TABLE movies_genre;

INSERT INTO movies_genre (movie_id, genre_id, creation_date )
SELECT m.id,g.id,CURRENT_TIMESTAMP(0) as creation_date
  FROM (SELECT 'Побег из Шоушенка' AS movie_name,'драма' AS genre_name UNION ALL
        SELECT 'Побег из Шоушенка','криминал' UNION ALL
        SELECT 'Зеленая миля','фэнтези' UNION ALL
        SELECT 'Зеленая миля','драма' UNION ALL
        SELECT 'Зеленая миля','криминал' UNION ALL
        SELECT 'Зеленая миля','детектив' UNION ALL
        SELECT 'Форрест Гамп','драма' UNION ALL
        SELECT 'Форрест Гамп','мелодрама' UNION ALL
        SELECT 'Список Шиндлера','драма' UNION ALL
        SELECT 'Список Шиндлера','биография' UNION ALL
        SELECT '1+1','драма' UNION ALL
        SELECT '1+1','комедия' UNION ALL
        SELECT '1+1','биография' UNION ALL
        SELECT 'Начало','фантастика' UNION ALL
        SELECT 'Начало','боевик' UNION ALL
        SELECT 'Начало','триллер' UNION ALL
        SELECT 'Начало','драма' UNION ALL
        SELECT 'Начало','детектив' UNION ALL
        SELECT 'Жизнь прекрасна','драма' UNION ALL
        SELECT 'Жизнь прекрасна','мелодрама' UNION ALL
        SELECT 'Жизнь прекрасна','комедия' UNION ALL
        SELECT 'Бойцовский клуб','триллер' UNION ALL
        SELECT 'Бойцовский клуб','драма' UNION ALL
        SELECT 'Бойцовский клуб','криминал' UNION ALL
        SELECT 'Звёздные войны: Эпизод 4 – Новая надежда','фантастика' UNION ALL
        SELECT 'Звёздные войны: Эпизод 4 – Новая надежда','фэнтези' UNION ALL
        SELECT 'Звёздные войны: Эпизод 4 – Новая надежда','боевик' UNION ALL
        SELECT 'Звёздные войны: Эпизод 4 – Новая надежда','приключения' UNION ALL
        SELECT 'Звёздные войны: Эпизод 5 – Империя наносит ответный удар','фантастика' UNION ALL
        SELECT 'Звёздные войны: Эпизод 5 – Империя наносит ответный удар','фэнтези' UNION ALL
        SELECT 'Звёздные войны: Эпизод 5 – Империя наносит ответный удар','боевик' UNION ALL
        SELECT 'Звёздные войны: Эпизод 5 – Империя наносит ответный удар','приключения' UNION ALL
        SELECT 'Унесённые призраками','аниме' UNION ALL
        SELECT 'Унесённые призраками','мультфильм' UNION ALL
        SELECT 'Унесённые призраками','фэнтези' UNION ALL
        SELECT 'Унесённые призраками','приключения' UNION ALL
        SELECT 'Унесённые призраками','семейный' UNION ALL
        SELECT 'Титаник','драма' UNION ALL
        SELECT 'Титаник','мелодрама' UNION ALL
        SELECT 'Пролетая над гнездом кукушки','драма' UNION ALL
        SELECT 'Ходячий замок','аниме' UNION ALL
        SELECT 'Ходячий замок','мультфильм' UNION ALL
        SELECT 'Ходячий замок','фэнтези' UNION ALL
        SELECT 'Ходячий замок','приключения' UNION ALL
        SELECT 'Гладиатор','боевик' UNION ALL
        SELECT 'Гладиатор','драма' UNION ALL
        SELECT 'Большой куш','комедия' UNION ALL
        SELECT 'Темный рыцарь','фантастика' UNION ALL
        SELECT 'Темный рыцарь','боевик' UNION ALL
        SELECT 'Темный рыцарь','триллер' UNION ALL
        SELECT 'Темный рыцарь','криминал' UNION ALL
        SELECT 'Темный рыцарь','драма' UNION ALL
        SELECT 'Как приручить дракона','мультфильм' UNION ALL
        SELECT 'Как приручить дракона','фэнтези' UNION ALL
        SELECT 'Как приручить дракона','комедия' UNION ALL
        SELECT 'Как приручить дракона','приключения' UNION ALL
        SELECT 'Как приручить дракона','семейный' UNION ALL
        SELECT 'Молчание ягнят','триллер' UNION ALL
        SELECT 'Молчание ягнят','криминал' UNION ALL
        SELECT 'Молчание ягнят','детектив' UNION ALL
        SELECT 'Молчание ягнят','драма' UNION ALL
        SELECT 'Гран Торино','драма' UNION ALL
        SELECT 'Хороший, плохой, злой','вестерн' UNION ALL
        SELECT 'Укрощение строптивого','комедия' UNION ALL
        SELECT 'Блеф','комедия' UNION ALL
        SELECT 'Блеф','криминал' UNION ALL
        SELECT 'Джанго освобожденный','драма' UNION ALL
        SELECT 'Джанго освобожденный','вестерн' UNION ALL
        SELECT 'Джанго освобожденный','приключения' UNION ALL
        SELECT 'Джанго освобожденный','комедия' UNION ALL
        SELECT 'Танцующий с волками','драма' UNION ALL
        SELECT 'Танцующий с волками','приключения' UNION ALL
        SELECT 'Танцующий с волками','вестерн'
       ) t
   JOIN movies m
     ON m.name = t.movie_name
   LEFT JOIN genres g
     ON g.name =t.genre_name
;

                                                            
SELECT table_name, 
       obj_count, 
       CASE 
          WHEN obj_count > 0 THEN 'PASS' 
          ELSE 'FAIL' 
        END AS count_check 
  FROM (SELECT 'users'        AS table_name, COUNT(*) AS obj_count FROM users UNION ALL
        SELECT 'permissions'  AS table_name, COUNT(*) AS obj_count FROM permissions UNION ALL
        SELECT 'genres'       AS table_name, COUNT(*) AS obj_count FROM genres UNION ALL
        SELECT 'movies'       AS table_name, COUNT(*) AS obj_count FROM movies UNION ALL
    SELECT 'movies_genre' AS table_name, COUNT(*) AS obj_count FROM movies_genre UNION ALL
        SELECT 'posters'      AS table_name, COUNT(*) AS obj_count FROM posters UNION ALL
        SELECT 'reviews'      AS table_name, COUNT(*) AS obj_count FROM reviews
       ) t;