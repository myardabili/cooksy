// ignore_for_file: public_member_api_docs, sort_constructors_first
class FoodMenuModel {
  String name;
  String foodCategory;
  List<String> ingredients;
  List<String> cookingSteps;
  String cookingTime;
  String difficultyLevel;
  String image;
  FoodMenuModel({
    required this.name,
    required this.foodCategory,
    required this.ingredients,
    required this.cookingSteps,
    required this.cookingTime,
    required this.difficultyLevel,
    required this.image,
  });
}

var foodMenuList = [
  FoodMenuModel(
    name: "Soto",
    foodCategory: "Makan Siang",
    ingredients: [
      "- 500 gram daging sapi (campur dengan tulang).",
      "- 2 liter air.",
      "- Minyak goreng secukupnya.",
      "- Mie sohun.",
      "- 4 lembar daun jeruk.",
      "- 3 lembar daun salam.",
      "- 6 buah bawang merah.",
      "- 10 siung bawang putih.",
      "- 1 ruas kunyit.",
      "- 3 ruas lengkuas.",
      "- 2 ruas jahe.",
      "- 2 sdt lada bubuk.",
      "- 1 sdm ketumbar bubuk.",
      "- garam.",
    ],
    cookingSteps: [
      "a. Rebus daging sampai mendidih keluar buihnya, buah buih yang mengapung, masukkan semua bahan cemplung, lanjutkan merebus sampai daging empuk, masukan daun bawang, tunggu layu, matikan kompor, angkat daging, dan tunggu dingin.",
      "b. Panaskan minyak goreng, tumis bumbu halus sampai wangi, campur bumbu yang sudah ditumis ke dalam air rebusan daging, masak sebentar sampai bumbu dan kaldu menyatu. koreksi rasa.",
      "c. Iris tipis daging yang sudah direbus, kemudian goreng sampai garing.",
      "d. Tata sohun, daging didalam mangkok, siram dengan kuah soto, beri kerupuk, perkedel, seledri dan sambal.",
      "e. Sajikan.",
    ],
    cookingTime: "30 Menit",
    difficultyLevel: "Mudah",
    image:
        "https://cdns.diadona.id/diadona.id/resized/664xauto//real/2020/01/02/4759/ilustrasi-soto-padang.jpg",
  ),
  FoodMenuModel(
    name: "Bubur Ayam",
    foodCategory: "Sarapan",
    ingredients: [
      "- 200 gram beras.",
      "- 4 liter air atau tambahkan sesuai kebutuhan.",
      "- 1 lembar daun kunyit,rajang sehalus mungkin.",
      "- 2 batang daun bawang, rajang halus.",
      "- 6 bawang putih, cincang halus.",
      "- 6 bawang merah iris tipis.",
      "- 5 batang serai, ambil bagian putihnya saja dan memarkan.",
      "- 2 lembar daun salam.",
      "- 1 sdm garam.",
      "- Kaldu ayam secukupnya.",
    ],
    cookingSteps: [
      "a. Cuci bersih beras,lalu di panci masukkan air, beras, singkong, ubi masak dengan api kecil sampai singkong dan ubi lembut.",
      "b. Masukkan bawang putih, bawang merah, daun salam dan serai sambil terus diaduk, masukkan jagung dan labu kuning.",
      "c. Tambahkan air bila diperlukan, masukkan garam lada dan kaldu jamur aduk rata lagi.",
      "d. Setelah beras sudah menjadi bubur terakhir masukan semua sayuran aduk rata, koreksi rasa, angkat.",
      "e. Sajikan.",
    ],
    cookingTime: "60 Menit",
    difficultyLevel: "Menengah",
    image:
        "https://cdns.diadona.id/diadona.id/resized/664xauto//real/2020/01/02/4856/ilustrasi-bubur-manado.jpg",
  ),
  FoodMenuModel(
    name: "Sop Konro",
    foodCategory: "Makan Siang",
    ingredients: [
      "- 1 kg iga sapi.",
      "- 1 lembar daun salam.",
      "- 2 lembar daun jeruk.",
      "- 1700 ml air.",
      "- Daun bawang dan Daun Seledri secukupnya.",
      "- Minyak secukupnya.",
      "- Gula pasir,garam,kaldu sapi bubuk secukupnya.",
      "- 6 siung bawang putih.",
      "- 10 siung bawang merah.",
      "- 2 cm kunyit.",
      "- 4 butir kemiri.",
      "- 1 sdt ketumbar bubuk.",
      "- 1/2 sdt merica bubuk.",
      "- Bawang goreng.",
      "- Sambel & jeruk nipis.",
    ],
    cookingSteps: [
      "a. Presto iga sapi hingga empuk dengan air secukupnya,saring ambil kaldunya 1 liter.",
      "b. Pindahkan kepanci biasa,masukan iga dan kaldunya lalu tambah air biasa 700 ml atau secukupnya.",
      "c. Tumis bumbu halus dengan minyak secukupnya hingga wangi,lalu masukan kedalam panci iga,masukan juga daun salam,daun jeruk,kayu manis dan kelapa sangrai yang dihaluskan,aduk rata,beri gula garam dan kaldu sapi bubuk,didihkan cek rasa.",
      "d. Masukan potongan daun seledri dan daun bawang secukupnya didihkan sebentar matikan api.",
      "e. Sajikan dimangkok saji lalu taburi bawang goreng.",
    ],
    cookingTime: "120 Menit",
    difficultyLevel: "Sulit",
    image:
        "https://cdns.diadona.id/diadona.id/resized/664xauto//real/2020/01/02/4857/ilustrasi-sop-konro-.jpg",
  ),
  FoodMenuModel(
    name: "Candil Ketan",
    foodCategory: "Makan Siang",
    ingredients: [
      "- 30 gr tepung tapioka.",
      "- 200 gr tepung ketan.",
      "- 1/3 sdt garam.",
      "- Air hangat secukupnya.",
      "- 150 gula merah, disisir.",
      "- 2 lembar daun pandan ditali simpul.",
      "- 1 sdm tepung beras.",
      "- 1 sdm tepung ketan.",
      "- 1/4 sdt garam.",
      "- 400 ml santan kental.",
      "- buah nangka Secukupnya.",
    ],
    cookingSteps: [
      "a. Campur tepung ketan, tepung tapioka dan garam, tuangi air hangat secukupnya sampai adonan lembut dan enak buat dipulung.",
      "b. Siapkan nampan, taburi tipis2 dengan tepung kanji.",
      "c. Ambil secuil adonan bentuk bulat sebesar kelereng. Susun di atas nampan. Lakukan sampai adonan habis.",
      "d. Masak semua bahan kuah kuah gula merah hingga gula larut dan mendidih.",
      "e. Saring lalu masak lagi sampai mendidih.",
      "f. Masukkan bola bola ketan. Masak dengan api kecil hingga gula meresap dan warna bola bola ketan berubah kecoklatan.",
      "g. Masukkan larutan tepung , aduk pelan sampai kental dan meletup2.",
      "h. Jika kurang kental bisa ditambahkan tepung ketan/ tepung beras yang dicairkan lalu dimasak lagi sampai kental.",
      "i. Sajikan dengan kuah santan.",
    ],
    cookingTime: "60 Menit",
    difficultyLevel: "Sedang",
    image:
        "https://cdns.diadona.id/diadona.id/resized/664xauto//real/2020/01/02/4858/ilustrasi-bubur-candil.jpg",
  ),
  FoodMenuModel(
    name: "Sate Lilit",
    foodCategory: "Makan Malam",
    ingredients: [
      "- 100 gr kelapa parut.",
      "- 300 gr daging ayam (giling).",
      "- 1 butir telur ayam.",
      "- 2 sdm tapioka.",
      "- 4 siung bawang putih.",
      "- 5 siung bawang merah.",
      "- 3 biji kemiri (sangrai).",
      "- 1 cm lengkuas, jahe, kunyit, kencur, dan terasi.",
      "- 20 batang bambu atau serai.",
      "- 5 buah cabe rawit (boleh lebih).",
      "- Garam & merica secukupnya.",
    ],
    cookingSteps: [
      "a. Haluskan bawang merah,bawang putih, kunyit, cabai, kemiri, jahe, kencur, lengkuas dan terasi.",
      "b. Campurkan ayam giling,telur,tapioka,dan kelapa. Beri garam dan merica secukupnya.",
      "c. Tumis bumbu halus hingga harum lalu campurkan kedalam adonan daging ayam. Aduk rata.",
      "d. Panaskan Grill Pan dengan api sedang. Ambil sedikit adonan. Masak hingga matang. Lalu cicipi rasanya hingga pas.",
      "e. Jika rasa sudah pas. Ambil adonan secukupnya dan lilitkan pada batang Bambu atau Batang serai. Lalu panggang di Grill Pan hingga matang.",
      "f. Untuk Sambal matah : iris bawang merah,daun jeruk,cabai,dan batang serai bagian putihnya saja. Beri sejumput garam. panaskan 2 sdm minyak masukkan terasi. goreng hingga terasi hancur bercampur minyak. lalu campurkan pada bahan irisan. Aduk rata, siap dihidangkan.",
    ],
    cookingTime: "120 Menit",
    difficultyLevel: "Sulit",
    image:
        "https://www.masakapahariini.com/wp-content/uploads/2018/12/sate-lilit-MAHI-7.jpg",
  ),
  FoodMenuModel(
    name: "Seblak",
    foodCategory: "Makan Malam",
    ingredients: [
      "- 6 butir bakso.",
      "- 200 g ceker.",
      "- 2 genggam kerupuk.",
      "- 3 siung bawang putih.",
      "- 4 siung bawang merah.",
      "- 3 butir kemiri.",
      "- 1 ruas jari kencur.",
      "- 6 cabe rawit pedas.",
      "- 8 cabe merah keriting.",
      "- 5 cabe rawit hijau.",
      "- 1 bonggol sawi dan daun bawang.",
      "- 2 butir telur yang sudah di orak arik.",
      "- Gula, garam, kaldu bubuk, lada bubuk secukupnya.",
    ],
    cookingSteps: [
      "a. Tumis bumbu hingga matang.",
      "b. Tambahkan bakso, ceker, kerupuk yg sudah di rendam, garam, gula, lada, saus tiram, kaldu bubuk. Masak sebentar.",
      "c. Tambah air kaldu, masak hingga mendidih.",
      "d. Masukkan daun sawi, daun bawang, dan cabe rawit iris, masak hingga sayuran matang.",
      "e. Sajikan.",
    ],
    cookingTime: "30 Menit",
    difficultyLevel: "Mudah",
    image:
        "https://cdns.diadona.id/diadona.id/resized/664xauto//real/2020/01/02/4861/ilustrasi-seblak-bandung.jpg",
  ),
];
