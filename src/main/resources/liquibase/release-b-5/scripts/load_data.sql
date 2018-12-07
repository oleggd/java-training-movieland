--
INSERT INTO posters (id, movie_id,url, creation_date )                                                            
SELECT nextval('poster_id_seq'),m.id,p.url,CURRENT_TIMESTAMP(0) as creation_date
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
--
INSERT INTO reviews (id, movie_id, author, description, creation_date )                                                            
SELECT nextval('review_id_seq'),m.id,r.author,r.description,CURRENT_TIMESTAMP(0) as creation_date
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
--
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