User.create!(name:  "管理者",
             email: "6134@yahoo.co.jp",
             password:  "61346134",
             password_confirmation: "61346134",
             uid: "1",
             provider: "1",
             admin: true)
User.create!(name:  "店長",
             email: "6135@yahoo.co.jp",
             password:  "61346134",
             password_confirmation: "61346134",
             uid: "2",
             provider: "2",
             admin: true)
User.create!(name:  "従業員1",
             email: "6136@yahoo.co.jp",
             password:  "61346134",
             password_confirmation: "61346134",
             uid: "3",
             provider: "3",
             admin: false)
User.create!(name:  "従業員2",
            email: "6137@yahoo.co.jp",
            uid: "4",
            provider: "4",
            password:  "61346134",
            password_confirmation: "61346134",
            admin: false)
User.create!(name:  "従業員3",
            email: "6138@yahoo.co.jp",
            uid: "5",
            provider: "5",
            password:  "61346134",
            password_confirmation: "61346134",
            admin: false)





Drink.create!(name: "生ビール",price:"480", kind:"ドリンク" )
Drink.create!(name: "樽生スパークリングワイン ポールスター",price:"480", kind:"ドリンク" )
Drink.create!(name: "ハイボール",price:"400", kind:"ウイスキー、ハイボール" )
Drink.create!(name: "マカハイボール",price:"500", kind:"ウイスキー、ハイボール")
Drink.create!(name: "コークハイボール",price:"480", kind:"ウイスキー、ハイボール")
Drink.create!(name: "ガリハイボール",price:"450", kind:"ウイスキー、ハイボール")
Drink.create!(name: "竹鶴ハイボール",price:"500", kind:"ウイスキー、ハイボール")
Drink.create!(name: "山崎ハイボール",price:"750", kind:"ウイスキー、ハイボール")
Drink.create!(name: "山崎12年",price:"1200", kind:"ウイスキー、ハイボール")
Drink.create!(name: "獺祭ハイボール",price:"700", kind:"プレミアム焼酎ハイボール" )
Drink.create!(name: "田酒ハイボール",price:"800", kind:"プレミアム焼酎ハイボール" )
Drink.create!(name: "十四代ハイボール",price:"900", kind:"プレミアム焼酎ハイボール" )
Drink.create!(name: "チューハイ",price:"350", kind:"サワー、お茶ハイ" )
Drink.create!(name: "緑茶ハイ",price:"380", kind:"サワー、お茶ハイ" )
Drink.create!(name: "ウーロンハイ",price:"380", kind:"サワー、お茶ハイ" )
Drink.create!(name: "黒ウーロンハイ",price:"500", kind:"サワー、お茶ハイ" )
Drink.create!(name: "マカサワー",price:"500", kind:"サワー、お茶ハイ")
Drink.create!(name: "生レモンサワー",price:"450", kind:"サワー、お茶ハイ" )
Drink.create!(name: "梅干サワー",price:"450", kind:"サワー、お茶ハイ" )
Drink.create!(name: "超梅干サワー",price:"480", kind:"サワー、お茶ハイ" )
Drink.create!(name: "カルピスサワー",price:"450", kind:"サワー、お茶ハイ" )
Drink.create!(name: "ガリサワー",price:"400", kind:"サワー、お茶ハイ" )
Drink.create!(name: "超マカサワー",price:"700", kind:"サワー、お茶ハイ" )

Sake.create!(name: "十四代", price:"", kind:"一列目",picture: File.open("#{Rails.root}/db/seedpictures/sake-14dai.jpg"))
Sake.create!(name: "鍋島", price:"",kind:"二列目",picture: File.open("#{Rails.root}/db/seedpictures/sake-nabeshima.jpg"))
Sake.create!(name: "新政", price:"", kind:"三列目",picture:"")
Sake.create!(name: "NO.6", price:"", kind:"四列目",picture: File.open("#{Rails.root}/db/seedpictures/sake-6.jpg"))
Sake.create!(name: "花巴", price:"", kind:"一列目",picture: File.open("#{Rails.root}/db/seedpictures/sake-hanadomoe.jpg"))
Sake.create!(name: "口万", price:"", kind:"二列目",picture: "")
Sake.create!(name: "栄光富士", price:"", kind:"三列目",picture: "")
Sake.create!(name: "田酒", price:"", kind:"四列目",picture: File.open("#{Rails.root}/db/seedpictures/sake-tasyu.jpg"))
Sake.create!(name: "たかちよ", price:"", kind:"一列目",picture: File.open("#{Rails.root}/db/seedpictures/sake-takachiyo.jpg"))
Sake.create!(name: "一歩己", price:"", kind:"二列目",picture: File.open("#{Rails.root}/db/seedpictures/sake-ibuki.jpg"))
Sake.create!(name: "若駒", price:"", kind:"三列目",picture: File.open("#{Rails.root}/db/seedpictures/sake-3.jpg"))
Sake.create!(name: "翠玉", price:"", kind:"四列目",picture: File.open("#{Rails.root}/db/seedpictures/sake-3.jpg"))
Sake.create!(name: "手取川", price:"", kind:"一列目",picture: File.open("#{Rails.root}/db/seedpictures/sake-3.jpg"))
Sake.create!(name: "姿", price:"", kind:"二列目",picture: File.open("#{Rails.root}/db/seedpictures/sake-sugata.jpg"))










#
#
SideMenu.create!(name: "焼き鳥を美味しく食べる為のカクテルサラダ",price:"500", kind:"一品料理", picture: File.open("#{Rails.root}/db/seedpictures/s-kakuterusarad.jpg"))
SideMenu.create!(name: "白レバーのタタキ", price:"550", kind:"一品料理", picture:"")
SideMenu.create!(name: "鳥皮ポン酢", price:"400", kind:"一品料理", picture:"")
SideMenu.create!(name: "とりわさ", price:"500", kind:"一品料理", picture:"")
SideMenu.create!(name: "枝豆ガーリック", price:"400", kind:"一品料理", picture:"")
SideMenu.create!(name: "鳥のいくら", price:"400", kind:"一品料理", picture: File.open("#{Rails.root}/db/seedpictures/s-torinoikura.jpg"))
SideMenu.create!(name: "みそきゅうり", price:"350", kind:"一品料理", picture:"")
SideMenu.create!(name: "焼き野菜串（一）", price:"150", kind:"一品料理", picture:"")
SideMenu.create!(name: "焼き野菜串（二）", price:"200", kind:"一品料理", picture:"")
SideMenu.create!(name: "焼き野菜串（三）", price:"250", kind:"一品料理", picture:"")
SideMenu.create!(name: "焼き野菜串（四）", price:"300", kind:"一品料理", picture:"")
SideMenu.create!(name: "奥久慈卵のこだわりTKG", price:"450", kind:"〆もの", picture:"")
SideMenu.create!(name: "鶏スープ茶づけ", price:"500", kind:"〆もの", picture:"")
SideMenu.create!(name: "そぼろご飯", price:"600", kind:"〆もの", picture:"")
SideMenu.create!(name: "鳥いくら丼", price:"500", kind:"〆もの", picture:"")
SideMenu.create!(name: "鶏スープ", price:"200", kind:"〆もの", picture:"")

#
Food.create!(name: "ねぎま",price:"200", picture:"")
Food.create!(name: "おび",price:"200", picture:"")
Food.create!(name: "そりれす",price:"200", picture: File.open("#{Rails.root}/db/seedpictures/f-sori.jpg"))
Food.create!(name: "アキレス",price:"200", picture:"")
Food.create!(name: "もも",price:"200", picture:"")
Food.create!(name: "ハラミ",price:"150", picture:"")
Food.create!(name: "ハツ",price:"150", picture:"")
Food.create!(name: "ハツ落ち",price:"200", picture:"")
Food.create!(name: "親ハツ",price:"150", picture:"")
Food.create!(name: "白肝",price:"200", picture: File.open("#{Rails.root}/db/seedpictures/f-shirokimo.jpg"))
Food.create!(name: "肝",price:"150", picture:"")
Food.create!(name: "黄肝",price:"250", picture:"")
Food.create!(name: "親レバー",price:"200", picture:"")
Food.create!(name: "網レバー",price:"200", picture:"")
Food.create!(name: "砂肝",price:"150", picture:"")
Food.create!(name: "えんがわ",price:"150", picture:"")
Food.create!(name: "リンパ",price:"200", picture:"")
Food.create!(name: "ちょうちん",price:"200", picture: File.open("#{Rails.root}/db/seedpictures/f-chochin.jpg"))
Food.create!(name: "金玉",price:"200", picture:"")
Food.create!(name: "むね",price:"150", picture: File.open("#{Rails.root}/db/seedpictures/f-mune.jpg"))
Food.create!(name: "ささみ",price:"200", picture:"")
Food.create!(name: "ふりそで",price:"200", picture:"")
Food.create!(name: "せせり",price:"200", picture:"")
Food.create!(name: "皮",price:"150", picture:"")
Food.create!(name: "上皮",price:"200", picture:"")
Food.create!(name: "ぺた",price:"150", picture:"")
Food.create!(name: "ヤゲン",price:"150", picture:"")
Food.create!(name: "ヒザ",price:"150", picture:"")
Food.create!(name: "かかとおとし",price:"150", picture:"")
Food.create!(name: "くびれ",price:"150", picture:"")
Food.create!(name: "手羽",price:"200", picture:"")
Food.create!(name: "親鶏",price:"200", picture:"")
Food.create!(name: "ボンジリ",price:"150", picture:"")
Food.create!(name: "油つぼ",price:"150",picture: File.open("#{Rails.root}/db/seedpictures/f-aburatsubo.jpg"))
Food.create!(name: "とさか",price:"150", picture:"")
Food.create!(name: "白子",price:"150", picture:"")
Food.create!(name: "つくね",price:"200", picture: File.open("#{Rails.root}/db/seedpictures/f-tsukune.jpg"))
Food.create!(name: "玉つくね",price:"250", picture: File.open("#{Rails.root}/db/seedpictures/f-tamatsukune.jpg"))
Food.create!(name: "背肝",price:"200", picture:"")
Food.create!(name: "あずき",price:"200", picture:"")
Food.create!(name: "フア",price:"150", picture:"")
Food.create!(name: "ふくらはぎ",price:"200", picture:"")
Food.create!(name: "かもねぎ",price:"250", picture:"")
Food.create!(name: "半コース950",price:"950", picture:"")
Food.create!(name: "フルコース1650",price:"1650", picture:"")
