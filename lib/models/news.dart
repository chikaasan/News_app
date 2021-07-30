class Model {
  String id;
  String name;
  List pictures;
  String information;
  String type;
  String data;
  bool active;

  Model({this.id, this.name, this.pictures, this.information, this.type, this.data, this.active});
}

class News extends Model {
  static List array = [
    Model(id: "200001", name: "В Кыргызстане цены растут больше всех среди стран ЕАЭС. Почему?", 
    pictures: ["https://gdb.rferl.org/42f8e7f9-1c5f-435e-a235-e93836934921_cx0_cy6_cw0_w1023_r1_s.jpg",],
    information:   "В июне в Кыргызстане цены на продукты, непродовольственные товары и услуги по сравнению с декабрем прошлого года повысились на 10,5 %. Это самый высокий показатель среди стран ЕАЭС. Кабмин разводит руками и связывает проблему с импортозависимостью Кыргызстана. А вот эксперты и экономисты озвучили еще несколько причин, почему Кыргызстан – самая незащищенная страна в Евразийском экономическом союзе.",
    type: "eco", data: "Июнь 2020 года.", active: true),
    Model(id: "200002", name: "Согласовано 40км таджикско-кыргызской границы", 
    pictures: ["https://i0.wp.com/manas.news/wp-content/uploads/2021/07/29072021-16.jpeg?fit=420%2C258&ssl=1", "https://st-0.akipress.org/st_gallery/98/1198498.8eae0bbff3b4c7310876ec6ebbb5d02e.jpg"],
    information: "Минобороны России принимает меры по противодействию попыткам переноса террористической активности из Афганистана в Центрально-Азиатский регион, заявил Сергей Шойгу на совещании глав военных ведомств стран-участниц Шанхайской организации сотрудничества.",
    type: "pol", data: "11:12, 29 июля 2021", active: true),
    Model(id: "200003", name: "Штангистка из Туркменистана завоевала первую в истории независимости страны олимпийскую медаль", 
    pictures: ["https://st-0.akipress.org/st_gallery/3/1203103.52e4d090007069e7fe3cce7a29abab2c.jpg"],
    information: "яжелоатлетка Полина Гурьева из Туркменистана завоевала серебряную медаль на Олимпиаде в Токио. Это первая олимпийская медаль в истории независимости страны.По данным Sports.ru, в соревнованиях по тяжелой атлетике в весовой категории до 59 кг Гурьева за рывок и толчок набрала 217 кг (96+121)",
    type: "sport", data: "12:24, 28 июля 2021", active: true),
    Model(id: "200004", name: "Научно-консультативный комитет. Нужна ли вакцинация в Кыргызстане? - профессор К.Абдраманов", 
    pictures: ["https://st-0.akipress.org/st_gallery/15/1096915.212886bae984612bb09c843f0b9e56b8.jpg"],
    information: "«Здоровье» (АКИpress) — Заслуженный врач, президент Ассоциации медицинских работников, главный кардиохирург Минздрава, директор ЮРНЦССХ Калдарбек Абдраманов рассказал о необходимости вакцинации от коронавируса.",
    type: "raz", data: "13:12, 29 июля 2021", active: true),
    Model(id: "200005", name: "Жогорку Кенеш одобрил постановление кабмина с предложением продать MegaCom", 
    pictures: ["https://st-0.akipress.org/st_gallery/81/712581.5dc161f73e769e43f10076c52010acf4.jpg"],
    information: "Tazabek - Жогорку Кенеш принял проект постановления кабинета министров, согласно которому предлагается приватизация MegaCom и продажа 2 госакций в банках.«За» проголосовало 80 депутата, «против» – 2",
    type: "eco", data: "20:25, 29 июля 2021", active: true),
    Model(id: "200006", name: "Улан Сатиев назначен заместителем гендиректора КТРК", 
    pictures: ["https://st-0.akipress.org/st_gallery/40/1203840.7c732c1f13b087264f0d42650deb9564.jpg"],
    information: "Бишкек (АКИpress) – Улан Сатиев назначен заместителем генерального директора КТРК. Об этом на странице в «Фейсбук» сообщил фотограф Султан Досалиев.По его данным, на новую должность Сатиева утвердил наблюдательный совет ОТРК 29 июля. Улан Сатиев в июне был назначен исполняющим обязанности заместителя гендиректора КТРК",
    type: "pol", data: "22:01, 29 июля 2021", active: true),
    Model(id: "200007", name: "66-летний тренер Турат Кулубаев 300 раз отжался с колесом", 
    pictures: ["https://st-0.akipress.org/st_gallery/70/1203770.800927381c7c6819c3782610ce0812e2.jpg"],
    information: "«Sport АКИpress» - Тренер-преподаватель отделения дзюдо СДЮСШОР по спортивным единоборствам Турат Кулубаев принял участие в челлендже российского бойца смешанных единоборств и бывшего претендента на чемпионский титул UFC Али Багаутинова.Смысл челленджа заключался в том, чтобы сделать отжимание со специальным колесиком и снять это на видео.66-летний мастер спорта СССР и заслуженный тренер Кыргызстана сделал это упражнение для пресса 300 раз.",
    type: "sport", data: "29.07.2021 18:07", active: true),
    Model(id: "200008", name: "Таксист нарвался на налетчиков и смог дать им отпор", 
    pictures: ["https://st-0.akipress.org/st_gallery/30/1203830.680c2a5bbba0906c610a6568fab95b88.jpg"],
    information: "«Сводка» (АКИpress) – Задержаны подозреваемые в разбойном нападении, сообщили 29 июля в пресс-службе ГУВД Чуйской области.Инцидент произошел вечером 27 июля. В тот день возле Ошского рынка к таксисту подсели клиенты и попросили отвести их в ГЭС-2.Доехав до места, пассажиры напали на водителя — один душил, другой отобрал ключи от машины и телефон. Однако таксист смог дать отпор: он вырвался, схватил свой нож и стал им защищаться.",
    type: "raz", data: "19:40, 29 июля 2021", active: true),
    Model(id: "200009", name: "Доходы MegaCom сократились в 2 раза до 500 млн сомов, - ФГИ", 
    pictures: ["https://st-0.akipress.org/st_gallery/81/712581.5dc161f73e769e43f10076c52010acf4.jpg"],
    information: "Tazabek - «Альфа Телеком» из года в год начал плохо работать. Доходы снижаются? Об этом сегодня, 29 июля, спросил депутат Улукбек Ормонов в ходе заседания парламента.Глава ФГИ Мирлан Бакиров ответил, что если сравнивать, то ха последние годы доходы снизились.ГКНБ против продажи MegaCom. Если завтра будет приватизация, могут возбудить уголовное дело, - депутат«Но мы надеемся, что в будущем доходы будут расти. В основном ежегодно в среднем доход MegaCom составляет 1 млрд сомов. В 2019 году доход был в размере 1 млрд сомов дохода, в 2020 году доходы сократились в 2 раза до 500 млн сомов», - сказал он.Депутат сказал, что нельзя продавать доходообразующую компанию, нужно менять главу.«На сегодня работает новый руководитель», - ответил глава ФГИ.",
    type: "eco", data: "18:21, 29 июля 2021", active: true),
    Model(id: "200010", name: "Поддерживает ли приватизацию MegaCom президент Садыр Жапаров? - депутат", 
    pictures: ["https://st-0.akipress.org/st_gallery/81/712581.5dc161f73e769e43f10076c52010acf4.jpg "],
    information: "Tazabek - Депутат Дастан Бекешев сегодня, 29 июля, на заседании парламента поинтересовался, поддерживает ли приватизацию MegaCom президент Садыр Жапаров.Кабмин планирует продать MegaCom и госакции в 2 банках, - замминистра инвестиций Н.Баясов«Вы предлагаете, значит, и президент поддерживает, правильно?» - спросил он.Глава ФГИ Мирлан Бакиров ответил, что по приватизации есть обращение от президента.«Конкретно по MegaCom не могу сказать, против или за», - добавил он.",
    type: "eco", data: "18:08, 29 июля 2021", active: true),
  ];

  static List<Model> ecoList = [
    Model(id: "200001", name: "В Кыргызстане цены растут больше всех среди стран ЕАЭС. Почему?", 
    pictures: ["https://gdb.rferl.org/42f8e7f9-1c5f-435e-a235-e93836934921_cx0_cy6_cw0_w1023_r1_s.jpg",],
    information:   "В июне в Кыргызстане цены на продукты, непродовольственные товары и услуги по сравнению с декабрем прошлого года повысились на 10,5 %. Это самый высокий показатель среди стран ЕАЭС. Кабмин разводит руками и связывает проблему с импортозависимостью Кыргызстана. А вот эксперты и экономисты озвучили еще несколько причин, почему Кыргызстан – самая незащищенная страна в Евразийском экономическом союзе.",
    type: "Eco", data: "Июнь 2020 года.", active: true),
    Model(id: "200009", name: "Доходы MegaCom сократились в 2 раза до 500 млн сомов, - ФГИ", 
    pictures: ["https://st-0.akipress.org/st_gallery/81/712581.5dc161f73e769e43f10076c52010acf4.jpg"],
    information: "Tazabek - «Альфа Телеком» из года в год начал плохо работать. Доходы снижаются? Об этом сегодня, 29 июля, спросил депутат Улукбек Ормонов в ходе заседания парламента.Глава ФГИ Мирлан Бакиров ответил, что если сравнивать, то ха последние годы доходы снизились.ГКНБ против продажи MegaCom. Если завтра будет приватизация, могут возбудить уголовное дело, - депутат«Но мы надеемся, что в будущем доходы будут расти. В основном ежегодно в среднем доход MegaCom составляет 1 млрд сомов. В 2019 году доход был в размере 1 млрд сомов дохода, в 2020 году доходы сократились в 2 раза до 500 млн сомов», - сказал он.Депутат сказал, что нельзя продавать доходообразующую компанию, нужно менять главу.«На сегодня работает новый руководитель», - ответил глава ФГИ.",
    type: "eco", data: "18:21, 29 июля 2021", active: true),
    Model(id: "200010", name: "Поддерживает ли приватизацию MegaCom президент Садыр Жапаров? - депутат", 
    pictures: ["https://st-0.akipress.org/st_gallery/81/712581.5dc161f73e769e43f10076c52010acf4.jpg "],
    information: "Tazabek - Депутат Дастан Бекешев сегодня, 29 июля, на заседании парламента поинтересовался, поддерживает ли приватизацию MegaCom президент Садыр Жапаров.Кабмин планирует продать MegaCom и госакции в 2 банках, - замминистра инвестиций Н.Баясов«Вы предлагаете, значит, и президент поддерживает, правильно?» - спросил он.Глава ФГИ Мирлан Бакиров ответил, что по приватизации есть обращение от президента.«Конкретно по MegaCom не могу сказать, против или за», - добавил он.",
    type: "eco", data: "18:08, 29 июля 2021", active: true),
    Model(id: "200005", name: "Жогорку Кенеш одобрил постановление кабмина с предложением продать MegaCom", 
    pictures: ["https://st-0.akipress.org/st_gallery/81/712581.5dc161f73e769e43f10076c52010acf4.jpg"],
    information: "Tazabek - Жогорку Кенеш принял проект постановления кабинета министров, согласно которому предлагается приватизация MegaCom и продажа 2 госакций в банках.«За» проголосовало 80 депутата, «против» – 2",
    type: "eco", data: "20:25, 29 июля 2021", active: true),
  ];

  static List<Model> polList = [
    Model(id: "200002", name: "Согласовано 40км таджикско-кыргызской границы", 
    pictures: ["https://i0.wp.com/manas.news/wp-content/uploads/2021/07/29072021-16.jpeg?fit=420%2C258&ssl=1", "https://st-0.akipress.org/st_gallery/98/1198498.8eae0bbff3b4c7310876ec6ebbb5d02e.jpg"],
    information: "Минобороны России принимает меры по противодействию попыткам переноса террористической активности из Афганистана в Центрально-Азиатский регион, заявил Сергей Шойгу на совещании глав военных ведомств стран-участниц Шанхайской организации сотрудничества.",
    type: "pol", data: "11:12, 29 июля 2021", active: true),
    Model(id: "200006", name: "Улан Сатиев назначен заместителем гендиректора КТРК", 
    pictures: ["https://st-0.akipress.org/st_gallery/40/1203840.7c732c1f13b087264f0d42650deb9564.jpg"],
    information: "Бишкек (АКИpress) – Улан Сатиев назначен заместителем генерального директора КТРК. Об этом на странице в «Фейсбук» сообщил фотограф Султан Досалиев.По его данным, на новую должность Сатиева утвердил наблюдательный совет ОТРК 29 июля. Улан Сатиев в июне был назначен исполняющим обязанности заместителя гендиректора КТРК",
    type: "pol", data: "22:01, 29 июля 2021", active: true),
  ];

  static List<Model> sportList = [
    Model(id: "200007", name: "66-летний тренер Турат Кулубаев 300 раз отжался с колесом", 
    pictures: ["https://st-0.akipress.org/st_gallery/70/1203770.800927381c7c6819c3782610ce0812e2.jpg"],
    information: "«Sport АКИpress» - Тренер-преподаватель отделения дзюдо СДЮСШОР по спортивным единоборствам Турат Кулубаев принял участие в челлендже российского бойца смешанных единоборств и бывшего претендента на чемпионский титул UFC Али Багаутинова.Смысл челленджа заключался в том, чтобы сделать отжимание со специальным колесиком и снять это на видео.66-летний мастер спорта СССР и заслуженный тренер Кыргызстана сделал это упражнение для пресса 300 раз.",
    type: "sport", data: "29.07.2021 18:07", active: true),
    Model(id: "200003", name: "Штангистка из Туркменистана завоевала первую в истории независимости страны олимпийскую медаль", 
    pictures: ["https://st-0.akipress.org/st_gallery/3/1203103.52e4d090007069e7fe3cce7a29abab2c.jpg"],
    information: "яжелоатлетка Полина Гурьева из Туркменистана завоевала серебряную медаль на Олимпиаде в Токио. Это первая олимпийская медаль в истории независимости страны.По данным Sports.ru, в соревнованиях по тяжелой атлетике в весовой категории до 59 кг Гурьева за рывок и толчок набрала 217 кг (96+121)",
    type: "sport", data: "12:24, 28 июля 2021", active: true),
  ];

  static List<Model> razList = [
    Model(id: "200008", name: "Таксист нарвался на налетчиков и смог дать им отпор", 
    pictures: ["https://st-0.akipress.org/st_gallery/30/1203830.680c2a5bbba0906c610a6568fab95b88.jpg"],
    information: "«Сводка» (АКИpress) – Задержаны подозреваемые в разбойном нападении, сообщили 29 июля в пресс-службе ГУВД Чуйской области.Инцидент произошел вечером 27 июля. В тот день возле Ошского рынка к таксисту подсели клиенты и попросили отвести их в ГЭС-2.Доехав до места, пассажиры напали на водителя — один душил, другой отобрал ключи от машины и телефон. Однако таксист смог дать отпор: он вырвался, схватил свой нож и стал им защищаться.",
    type: "raz", data: "19:40, 29 июля 2021", active: true),
    Model(id: "200004", name: "Научно-консультативный комитет. Нужна ли вакцинация в Кыргызстане? - профессор К.Абдраманов", 
    pictures: ["https://st-0.akipress.org/st_gallery/15/1096915.212886bae984612bb09c843f0b9e56b8.jpg"],
    information: "«Здоровье» (АКИpress) — Заслуженный врач, президент Ассоциации медицинских работников, главный кардиохирург Минздрава, директор ЮРНЦССХ Калдарбек Абдраманов рассказал о необходимости вакцинации от коронавируса.",
    type: "raz", data: "13:12, 29 июля 2021", active: true),
  ];
}