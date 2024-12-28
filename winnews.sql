-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 28 Des 2024 pada 11.25
-- Versi server: 10.4.32-MariaDB
-- Versi PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `winnews`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `cache`
--

CREATE TABLE `cache` (
  `key` varchar(255) NOT NULL,
  `value` mediumtext NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `cache_locks`
--

CREATE TABLE `cache_locks` (
  `key` varchar(255) NOT NULL,
  `owner` varchar(255) NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `categories`
--

INSERT INTO `categories` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Technology', '2024-12-26 01:27:24', '2024-12-26 01:27:24'),
(2, 'Domestic', '2024-12-26 01:27:24', '2024-12-26 01:27:24'),
(3, 'Education', '2024-12-26 01:27:24', '2024-12-26 01:27:24'),
(4, 'Sports', '2024-12-26 01:27:24', '2024-12-26 01:27:24');

-- --------------------------------------------------------

--
-- Struktur dari tabel `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `jobs`
--

CREATE TABLE `jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `queue` varchar(255) NOT NULL,
  `payload` longtext NOT NULL,
  `attempts` tinyint(3) UNSIGNED NOT NULL,
  `reserved_at` int(10) UNSIGNED DEFAULT NULL,
  `available_at` int(10) UNSIGNED NOT NULL,
  `created_at` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `job_batches`
--

CREATE TABLE `job_batches` (
  `id` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `total_jobs` int(11) NOT NULL,
  `pending_jobs` int(11) NOT NULL,
  `failed_jobs` int(11) NOT NULL,
  `failed_job_ids` longtext NOT NULL,
  `options` mediumtext DEFAULT NULL,
  `cancelled_at` int(11) DEFAULT NULL,
  `created_at` int(11) NOT NULL,
  `finished_at` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(6, '0001_01_01_000000_create_users_table', 1),
(7, '0001_01_01_000001_create_cache_table', 1),
(8, '0001_01_01_000002_create_jobs_table', 1),
(9, '2024_12_18_054641_create_categories_table', 1),
(10, '2024_12_18_055215_create_news_table', 1),
(11, '2024_12_27_113931_update_news_table_author_id', 2),
(12, '2024_12_27_114914_add_author_to_news_table', 3);

-- --------------------------------------------------------

--
-- Struktur dari tabel `news`
--

CREATE TABLE `news` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `author` varchar(255) NOT NULL,
  `author_id` bigint(20) UNSIGNED DEFAULT NULL,
  `content` text NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `category_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `news`
--

INSERT INTO `news` (`id`, `title`, `author`, `author_id`, `content`, `image`, `category_id`, `created_at`, `updated_at`) VALUES
(1, 'Polisi Minta Massa Tolak PPN 12% Patuhi Aturan Demo Sampai Pukul 18.00 WIB', 'Maulana Ilhami Fawdi', NULL, 'Jakarta - Polisi membubarkan massa aksi demo tolak kenaikan PPN 12 persen di Patung Kuda, Jakarta Pusat. Kapolres Metro Jakarta Pusat Kombes Susatyo Purnomo Condro meminta agar pendemo mematuhi aturan batas waktu demonstrasi.\r\n\"Pada pukul 18.00 kami sudah memberikan imbauan secara terus menerus pada korlap untuk bisa membubarkan dengan tertib,\" kata Susatyo di Silang Monas, Jakarta Pusat, Jumat (27/12/2024).\r\n\r\n\"Namun demikian, satu kelompok lagi justru melakukan perlawanan terhadap perintah dari pada petugas, membakar ban,\" ungkapnya.\r\n\r\nPolisi kemudian mendorong mundur massa dari BEM SI dengan menyemprotkan water cannon menggunakan metode embun.\r\n\r\n\"Kemudian kami terus melakukan negosiasi, imbauan-imbauan, peringatan-peringatan, peringatan pertama, kemudian peringatan kedua, hingga pada pukul 19.30 kami melakukan pendorongan secara soft, kami tidak menggunakan gas air mata, kami menggunakan water cannon, itu pun water cannon yang bukan menembak secara langsung, tapi menggunakan metode embun, siraman,\" jelasnya.\r\n\r\nPolisi akhirnya berhasil memukul mundur massa aksi. Arus lalu lintas di sekitar kawasan Patung Kuda pun kembali normal. Meski demikian, Susatyo mengatakan ada satu anggotanya yang terluka saat proses pengamanan aksi.\r\n\r\n\"Satu personel kami atas nama Brigadir Heri, Sabhara Jakarta Pusat saat ini sedang ditangani oleh medis karena terluka akibat lemparan di bagian kepala,\" ucapnya.\r\n\r\nSusatyo memastikan tidak ada pihak dari massa aksi yang diamankan Polisi.\r\n\r\n\"Tidak ada yang diamankan kami berusaha se-soft mungkin untuk bisa melakukan negosiasi secara terus menerus,\" katanya.', 'image/1735310167_kapolres-metro-jakarta-pusat.jpeg', 2, '2024-12-27 07:36:07', '2024-12-27 07:36:07'),
(2, 'Sudah Sulit Berkata-kata, Pep Guardiola?', 'Afif Farhan', NULL, 'Manchester - Manchester City masih remuk redam, susah menang. Manajernya, Pep Guardiola cuma bisa bilang untuk terus maju dan berusaha menang.\r\nTerbaru, Manchester City ditahan imbang Everton 1-1 dalam Boxing Day Liga Inggris, Kamis (26/12) malam WIB. Kedua gol tercipta di babak pertama, Bernardo Silva buat gol duluan lalu disamakan Iliman Ndiaye.\r\n\r\nPetaka buat Erling Haaland. Sepekan penaltinya yang jadi peluang emas buat tambah gol, ditepis Pickford.\r\nTren mejan Manchester City sejak akhir Oktober belum berhenti. Dari 13 laga terakhir di seluruh kompetisi, City cuma menang sekali dan sisanya tiga kali imbang, serta sembilan kali kalah!\r\n\r\nCity malah cuma catatkan satu clean sheet. Mereka juga sudah kebobolan 28 kali, artinya rata-rata dibobol dua kali per laga.\r\n\r\nPep Guardiola tampaknya sulit berkata-kata. Sang juru taktik cuma bisa bilang, Manchester City harus terus melaju dan kembali raih kemenangan.\r\n\r\n\"Saat ini kami dalam periode yang sulit. Namun, kami masih bisa bermain bagus dan bikin peluang. Ya, kami akan terus maju,\" jelasnya dilansir dari BBC.\r\n\r\n\"Kamu sudah melakukan segalanya hari ini, meski tidak bisa mendapat hasil yang kami inginkan,\" tambahnya.\r\n\r\nPep Guardiola ogah bersembunyi. Dirinya menerima performa buruk The Citizens yang lagi suram belakangan ini.\r\n\r\n\"Kami mengakuinya, inilah hidup. Kami hanya tidak menyangka bakal lama merasakan kesulitan ini. Lantas apa yang kami bisa? Kami harus terus berlaga dan mencobanya,\" tutupnya.', 'image/1735310328_pep-guardiola-1.jpeg', 4, '2024-12-27 07:38:48', '2024-12-27 07:38:48'),
(3, 'Perusahaan AI Elon Musk Dapat Suntikan Dana dari AMD dan Nvidia', 'Anggoro Suryo', NULL, 'Jakarta - Startup AI milik Elon Musk yang bernama xAI mendapat suntikan dana sebesar USD 6 miliar dalam pendanaan series C terbarunya.\r\nDengan suntikan dana itu, kini valuasi xAI mencapai USD 40 miliar. Sebagai informasi, pada awal 2024, valuasi xAI adalah USD 24 miliar, demikian dikutip detikINET dari Techspot, Jumat (27/12/2024).\r\n\r\nSecara total ada 97 investor yang ikut dalam pendanaan series C ini. Namun ada beberapa nama besar yang cukup menarik perhatian, seperti Nvidia dan AMD. Selain itu ada juga nama seperti BlackRock, Fidelity, Andreessen Horowitz, dan Sequoia Capital dalam pendanaan tersebut.\r\n\r\nPendanaan minimal untuk tiap perusahaan adalah USD 77 ribu, dan ada syarat menarik yang harus dipenuhi oleh setiap perusahaan yang ikut pendanaan seri ini. Perusahaan yang boleh ikut dalam pendanaan ini adalah perusahaan yang ikut membantu Musk menggalang dana saat ia mengakuisisi Twitter pada 2022 lalu.\r\n\r\nxAI disebut berencana kembali menggalang dana pada 2025 agar bisa bersaing dengan Google dan OpenAI.\r\n\r\nSejak menutup pendanaan seri B pada Mei 2024 lalu, xAI sudah membangun komputer super bernama Colossus dan merilis Grok 2, sebuah language model yang dilengkapi kemampuan penalaran kelas atas.\r\n\r\nColossus diharapkan bisa membantu xAI untuk membangun dan menguji model AI mereka, termasuk large language model (LLM) Grok yang menjadi otak chatbot untuk pengguna premium X serta image generator Flux.\r\n\r\nColossus digadang sebagai komputer super terbesar di dunia, dilengkapi 100 ribu GPU Nvidia H100 -- masing-masing harganya USD 30 ribu. xAI berencana menggunakan sejumlah dana dari pendanaan ini untuk melipatgandakan ukuran Colossus menjadi 200 ribu GPU Nvidia Hopper.\r\n\r\nMusk sebenarnya bukan orang baru di ranah AI. Ia ikut membantu mendirikan OpenAI pada 2015, yang kemudian ia tinggalkan pada 2018 setelah berselisih paham dengan pendiri OpenAI lainnya seperti Sam Altman, yang kini menjadi CEO OpenAI.', 'image/1735310484_elon-musk-di-kampanye-donald-trump_169.jpeg', 1, '2024-12-27 07:41:24', '2024-12-27 07:41:24'),
(4, '4 Manfaat Rebusan Daun Sirih, Termasuk Redakan Sembelit', 'Sarah Oktaviani Alam', NULL, 'Jakarta - Sirih merupakan tanaman yang kerap digunakan untuk pengobatan tradisional oleh masyarakat Indonesia. Tanaman tersebut memiliki rasa pahit dan pedas yang khas, dapat memberikan kehangatan untuk tubuh.\r\nSelain itu, tanaman hijau ini memiliki manfaat untuk menetralkan keseimbangan pH dalam tubuh dan usus, serta meningkatkan kesehatan pencernaan.\r\n\r\nUmumnya, sirih dikonsumsi dengan cara dikunyah untuk diambil sarinya. Namun, sirih juga dapat dimasukkan ke dalam makanan atau dikonsumsi sebagai pasta, bubuk, atau direbus untuk diminum airnya.\r\n\r\nManfaat Rebusan Daun Sirih Bila Diminum\r\nDikutip dari laman NetMeds, berikut 4 manfaat rebusan daun sirih bila diminum:\r\n\r\n1. Meredakan sembelit\r\nDaun sirih merupakan sumber antioksidan yang membersihkan radikal dari tubuh. Daun ini mengembalikan kadar pH normal dalam tubuh dan membantu mengatasi sakit perut.\r\n\r\nMetode pengobatan di India secara luas merekomendasikan makan daun sirih untuk meredakan sembelit. Disarankan untuk minum air rebusan daun sirih di pagi hari saat perut kosong untuk memperlancar buang air besar.\r\n\r\n2. Melancarkan pencernaan\r\nDaun sirih direkomendasikan karena sifatnya yang dapat melancarkan pencernaan, anti-kembung, dan membantu melindungi usus. Tumbuhan dengan bau yang khas itu dapat meningkatkan metabolisme, memicu sirkulasi, dan merangsang usus untuk menyerap vitamin dan nutrisi penting.\r\n\r\n3. Mengurangi masalah pernapasan\r\nManfaat rebusan daun sirih bila diminum juga dapat membantu mengurangi masalah pernapasan yang berhubungan dengan batuk dan pilek. Daun sirih merupakan obat yang sangat baik bagi mereka yang menderita sesak dada, paru-paru, dan asma.\r\n\r\n4. Mengatasi diabetes\r\nBeberapa penelitian telah mengungkapkan bahwa bubuk daun sirih berpotensi menurunkan lonjakan gula darah pada pasien diabetes tipe 2 yang baru didiagnosis. Daun sirih merupakan antioksidan kuat yang membantu melawan stres oksidatif dan mengurangi peradangan yang disebabkan oleh glukosa darah yang tidak terkontrol, serta mendukung pengelolaan diabetes melitus.', 'image/1735310639_ilustrasi-daun-sirih_169.jpeg', 3, '2024-12-27 07:43:59', '2024-12-27 07:43:59'),
(5, 'Bali United Mau Bikin Persebaya Gigit Jari di Tahun Baru', 'CNN Indonesia', NULL, 'Bali United berhasrat membuat Persebaya Surabaya \'sengsara\' pada malam pergantian tahun atau Tahun Baru menjelang duel kedua tim dalam matchday ke-17 Liga 1 2024/2025, Sabtu (28/12).\r\nPersebaya yang kini menempati puncak klasemen Liga 1 mendapat tantangan berat saat bertandang ke markas Bali United di Stadion I Wayan Dipta.\r\n\r\nBajul Ijo dituntut meraih kemenangan atas Bali United apabila tidak ingin kehilangan posisi puncak klasemen yang bisa dikudeta Persib Bandung.\r\n\r\nAkan tetapi, hasrat Persebaya tidak akan mudah. Serdadu Tridatu juga bertekad menutup 2024 dengan kemenangan. Itu artinya, Persebaya bisa gigit jari saat malam Tahun Baru.\r\n\r\n\"Kami dari pemain pasti siap. Kami dari pemain ingin menutup tahun 2024 dengan hasil yang baik. Semoga kami bisa menampilkan permainan terbaik dan meraih tiga poin kemenangan di rumah,\" ujar gelandang Bali United Kadek Agung Widnyana Putra dikutip dari situs resmi klub.\r\n\r\nPelatih Bali United Stefano \'Teco\' Cugurra mengakui menang atas Persebaya tidak akan mudah untuk klub asal Pulau Dewata ini. Terlebih lagi tuan rumah memiliki rapor buruk, hanya satu kali menang dari lima pertandingan terakhir, tiga di antaranya menelan kekalahan.\r\n\r\n\"Kami tahu Persebaya ada di peringkat satu di papan klasemen. Kami respek dengan mereka dan besok bermain di Stadion Dipta, mudah-mudahan kemenangan ada pada kami,\" ucap Teco.\r\n\r\nPelatih asal Brasil itu tetap berpikir positif terkait kondisi yang dimiliki Bali United. Teco yakin Bali United bisa ke papan atas Liga 1.\r\n\r\n\"Kita harus berpikir positif kalau bisa menang di laga ini. Jika bisa menang pasti poin akan dekat di posisi atas,\" ucap Teco.\r\n\r\n\"Kami masih punya satu laga tunda lawan Persib Bandung bulan depan. Jika laga itu bisa juga raih hasil positif, baru bisa lihat tim ini ada urutan berapa di putaran pertama,\" kata Teco menambahkan.', 'image/1735375287_persebaya-kalahkan-persija-jakarta_169.jpeg', 4, '2024-12-28 01:41:27', '2024-12-28 01:41:27'),
(6, 'Tutup 2024 dengan Kemenangan, Arsenal Gusur Chesea', 'CNN Indonesia', NULL, 'Arsenal menutup 2024 dengan menggusur Chelsea di peringkat kedua klasemen Liga Inggris usai menang 1-0 atas Ipswich Town, Minggu (28/12) dini hari WIB.\r\nSatu-satunya gol kemenangan yang dibukukan Arsenal dalam matchday ke-18 Premier League tersebut dicetak Kai Havertz pada menit ke-23 usai memanfaatkan assist Leandro Trossard.\r\n\r\nKemenangan atas Ipswich menjadi kado akhir tahun atau Tahun Baru untuk Arsenal. Bukan saja karena meraih tiga poin, namun juga berhasil menggusur Chelsea.\r\n\r\nArsenal memanfaatkan dengan baik kekalahan Chelsea dari Fulham, 1-2, pada Kamis (26/12). Dengan meraih poin penuh pada pekan ini, The Gunners naik ke peringkat kedua klasemen Liga Inggris. Tim asuhan Mikel Arteta unggul satu poin atas The Blues yang turun ke posisi ketiga.\r\n\r\nMeski begitu Chelsea masih memiliki peluang kembali ke peringkat kedua pada malam pergantian tahun. Dalam matchday ke-19 Premier League, Chelsea akan dijamu Ipswich di Portman Road, Selasa (31/12) dini hari WIB.\r\n\r\nSeandainya mengalahkan The Tractor Boys dalam laga tersebut, pasukan Enzo Maresca ini akan kembali menggusur Arsenal.\r\nSeandainya mengalahkan The Tractor Boys dalam laga tersebut, pasukan Enzo Maresca ini akan kembali menggusur Arsenal.', 'image/1735375433_soccer-england-ars-ipsreport-1_169.jpeg', 4, '2024-12-28 01:43:53', '2024-12-28 01:43:53'),
(7, 'Megawati Cs Terancam Kehilangan \'Kado\' Tahun Baru', 'CNN Indonesia', NULL, 'Red Sparks bisa kehilangan \'kado\' Tahun Baru saat menghadapi IBK Altos dalam pertandingan akhir tahun di Liga Voli Korea, Selasa (31/12).\r\nRed Sparks menutup 2024 dengan melawan IBK pada pertandingan keenam putaran ketiga Liga Voli Korea di Gimnasium Chungmu.\r\n\r\nKemenangan atas IBK bukan saja menjadi kado Tahun Baru bagi Red Sparks, namun juga mencatatkan rekor delapan kemenangan beruntun pada musim ini.\r\nMelawan IBK bukan perkara mudah bagi Red Sparks pada musim ini. Tim tamu merupakan kuda hitam yang berpotensi menjadi pesaing ke babak playoff Liga Voli Korea musim ini.\r\n\r\nTuan rumah Red Sparks memiliki sejumlah keunggulan menjelang duel nanti. Pasukan Ko Hee Jin ini sedang dalam kepercayaan diri tinggi setelah meraih tujuh kemenangan beruntun.\r\n\r\nMeski begitu, Red Sparks tetap patut waspada dengan IBK. IBK mencuri satu kemenangan dalam tiga pertemuan dengan Red Sparks pada musim ini.\r\n\r\nLee So Young dan kawan-kawan juga membawa bekal tiga kemenangan beruntun saat menghadapi Red Sparks. Satu keuntungan yang mungkin dimiliki IBK adalah, mereka bakal tampil tanpa beban.\r\n\r\nMenjadi tuan rumah, Red Sparks dituntut untuk menang. Kemenangan juga jadi target yang mesti dicapai Red Spark guna menjauhkan jarak dari kejaran IBK.\r\n\r\nKemenangan 3-0 atas Hi Pass, Sabtu (27/12), membuat IBK menempel ketat Red Sparks di klasemen Liga Voli Korea. Kedua tim sama-sama mengemas 31 poin, namun Red Sparks berhak di peringkat ketiga karena unggul rasio kemenangan set.', 'image/1735375676_liga-voli-korea-1_169.jpeg', 4, '2024-12-28 01:47:56', '2024-12-28 01:47:56'),
(8, 'Ronaldo Anggap Vinicius Dicurangi di Ballon d\'Or 2024', 'CNN Indonesia', NULL, 'Cristiano Ronaldo memberi dukungan untuk Vinicius Junior yang dianggapnya telah dicurangi hingga gagal merebut penghargaan Ballon d\'Or 2024.\r\n\"Menurut saya, dia [Vinicius] pantas memenangkan Bola Emas [Ballon d\'Or]. Menurut saya itu tidak adil,\" ujar Ronaldo dikutip dari beIN Sports.\r\n\r\nVinicius hanya finis di posisi kedua dalam penghargaan Ballon d\'Or 2024 yang digelar pada Oktober lalu. Gelandang Manchester City asal Spanyol, Rodri, terpilih sebagai pemenang.\r\n\r\nRodri sukses merebut gelar keempat Premier League bersama Man City dan membawa Spanyol juara Euro 2024. Sementara Vinicius membawa Real Madrid merebut gelar Liga Champions ke-15 dan mencetak gol di laga final serta menjadi juara La Liga Spanyol.\r\n\r\n\"Saya katakan di depan semua orang. Mereka memberikannya kepada Rodri, dia juga pantas mendapatkannya, tetapi mereka seharusnya memberikannya kepada Vinicius karena dia memenangkan Liga Champions dan mencetak gol di final,\" ucap Ronaldo.\r\n\r\nRonaldo sendiri berhasil merebut penghargaan pemain terbaik di Timur Tengah pada ajang Globe Soccer Awards di Dubai, Uni Emirat Arab, Jumat (27/12).\r\n\r\n\"Anda tahu acara-acara besar ini, mereka selalu melakukan hal yang sama. Itulah mengapa saya menyukai Globe Soccer Awards, mereka jujur,\" kata Ronaldo.\r\n\r\nSetelah gagal merebut Ballon d\'Or 2024, Vinicius kemudian terpilih sebagai pemain terbaik versi FIFA dalam The Best FIFA 2024. Di ajang tersebut Vinicius mengalahkan Rodri dan Jude Bellingham.\r\n\r\nPolemik sempat terjadi di Ballon d\'Or 2024, setelah pihak Vinicius dan Real Madrid memutuskan untuk melakukan boikot dengan tidak hadir ke acara penghargaan.\r\n\r\nRonaldo sendiri merupakan salah satu pemain tersukses yang pernah merebut gelar Ballon d\'Or. CR7 mengoleksi lima gelar, hanya kalah dari Lionel Messi yang menjadi pemenang sebanyak delapan kali.', 'image/1735375892_cristiano-ronaldo-rebut-penghargaan-di-globe-soccer-awards-2024_169.jpeg', 4, '2024-12-28 01:51:32', '2024-12-28 01:51:32'),
(9, 'Pria di Morowali Tebas Teman Usai Debat Soal Bayam yang Menguning', 'CNN Indonesia', NULL, 'Polisi menangkap seorang pria HS (42) di Kabupaten Morowali, Sulawesi Tengah, setelah menebas rekannya sendiri, YH (56) akibat memperdebatkan soal tanaman yang menguning, sehingga korban mengalami luka cukup parah di bagian leher dan wajahnya.\r\n\"Iya benar, pelaku tindak pidana penganiayaan menggunakan parang sudah kita tangkap,\" kata Kapolsek Bahodopi, Ipda Muhammad Iqbal kepada wartawan, Sabtu (28/12).\r\n\r\nIqbal menerangkan peristiwa itu bermula ketika pelaku dan korban sementara berdiskusi yang berujung pada perdebatan saat membahas tanaman bayam yang menguning.\r\n\r\n\"Mereka membahas permasalahan tanaman bayam yang menguning. Kemudian situasi mendadak memanas dan saksi mendengar keributan tersebut,\" ungkapnya.\r\n\r\nPada saat terjadi perdebatan tersebut, kemudian pelaku tiba-tiba mengeluarkan sebilah parang lalu menebas korban hingga mengalami luka yang cukup parah.\r\n\r\n\"Akibat serangan itu korban mengalami luka di bagian leher, pipi dan tangan. Kemudian korban dilarikan ke rumah sakit oleh warga,\" jelasnya.\r\n\r\nPelaku sempat ingin melarikan diri, namun kata Iqbal petugas berhasil menangkap pelaku.\r\n\r\n\"Kejadian itu sempat dilerai oleh warga, tapi saat ini pelaku sudah kita amankan untuk proses hukum lebih lanjut,\" pungkasnya.', 'image/1735375993_ilustrasi-penusukan-3_169.jpeg', 2, '2024-12-28 01:53:13', '2024-12-28 01:53:13'),
(10, 'Jokowi soal PPN 12%: Sudah Diputuskan DPR, Pemerintah Harus Jalankan', 'Tara Wahyu NV', NULL, 'Jakarta - Presiden Ke-7 RI, Joko Widodo (Jokowi), menanggapi kenaikan Pajak Pertambahan Nilai (PPN) menjadi 12 persen. Jokowi mengatakan aturan itu sudah diputuskan DPR sehingga pemerintah harus menjalankannya.\r\n\"Ya ini kan sudah diputuskan dalam harmonisasi peraturan perpajakan, sudah diputuskan oleh DPR. Kan sudah diputuskan DPR ya pemerintah harus menjalankan,\" kata Jokowi ditemui di rumahnya, Sumber, Banjarsari, Solo, seperti dilansir detikJateng, Jumat (27/12/2024).\r\nJokowi mengatakan kenaikan PPN itu sudah melalui pertimbangan yang matang. Selain itu, kata Jokowi, keputusan pemerintah menaikkan PPN 12 persen juga merupakan amanat dari Undang-undang\r\n\r\n\"Sekali lagi pemerintah sudah berhitung dan melalui pertimbangan pertimbangan yang matang. Ya saya kira kita mendukung keputusan pemerintah. Saya kira keputusan pemerintah pasti ada pertimbangan-pertimbangan dan itu kan juga amanat UU yang harus dijalankan pemerintah,\" ungkapnya.\r\n\r\nIa menyebut, pemerintah juga telah menghitung dampak kenaikan tersebut di masyarakat. Mantan Wali Kota Solo dan Gubernur DKI Jakarta itu mengungkapkan kalkulasi dan perimbangan sudah dilakukan pemerintah.\r\n\"(Dampak ke masyarakat) ya itu semestinya pemerintah sudah berhitung melakukan kalkulasi dan pertimbangan-pertimbangan ya,\" ucapnya.', 'image/1735376175_jokowi_169.jpeg', 2, '2024-12-28 01:56:15', '2024-12-28 01:56:15'),
(11, 'Harvey Moeis Divonis Lebih Ringan, Jaksa Ajukan Perlawanan', 'Tim detikcom', NULL, 'Jakarta -\r\nJaksa mengajukan banding atas vonis 6,5 tahun penjara terhadap Harvey Moeis dalam kasus korupsi timah. Jaksa melawan karena hukuman terhadap Harvey terlalu ringan.\r\n\r\nDirektur Penuntutan Jampidsus Kejagung, Sutikno mengatakan selain Harvey, pihaknya juga mengajukan banding atas putusan terdakwa Suwito Gunawan, Robert Indiarto, Reza Andriansyah, dan Suparta. Kelimanya merupakan terdakwa kasus korupsi komoditas timah di wilayah Izin Usaha Pertambangan (IUP) PT Timah Tbk Tahun 2015-2022.\r\n\r\nSutikno mengatakan alasan jaksa mengajukan banding karena vonis yang dijatuhkan kepada lima terdakwa terlalu ringan. Dia menilai ada ketimpangan hukum dalam vonis itu.\r\n\r\n\"(Alasan) satu, putusannya terlalu ringan ya khusus untuk pidana badannya,\" ujar Sutikno kepada wartawan, Jumat (27/12/2024).\r\nSutikno menilai hakim hanya mempertimbangkan peran pelaku. Dia menyebut hakim tidak mempertimbangkan dampak perbuatan pelaku terhadap masyarakat Bangka Belitung.\r\n\r\n\"Dari situ nampak kelihatan hakim ini hanya mempertimbangkan peran mereka, para pelaku. Tetapi hakim nampaknya belum mempertimbangkan atau tidak mempertimbangkan dampak yang diakibatkan oleh mereka terhadap masyarakat Bangka Belitung,\" katanya.\r\n\r\nHarvey Moeis sebelumnya divonis hukuman penjara selama 6,5 tahun. Harvey dinyatakan bersalah dalam kasus korupsi pengelolaan tata niaga komoditas timah secara bersama-sama hingga menyebabkan kerugian negara Rp 300 triliun.\r\n\r\n\"Mengadili, menyatakan Terdakwa Harvey Moeis telah terbukti secara sah dan meyakinkan bersalah melakukan tindak pidana korupsi secara bersama-sama dan melakukan tindak pidana pencucian uang,\" kata hakim ketua Eko Aryanto saat membacakan amar putusan di Pengadilan Tipikor Jakarta Pusat, Jalan Bungur Raya, Jakarta Pusat, Senin (23/12/2024).\r\n\r\n\"Menjatuhkan pidana terhadap Terdakwa dengan pidana penjara selama 6 tahun dan 6 bulan,\" sambung hakim.\r\n\r\nJaksa juga menuntut Harvey membayar uang pengganti senilai Rp 210 miliar. Pembayaran uang pengganti itu dikurangi harta benda Harvey yang telah disita dalam kasus tersebut.\r\n\r\n\"Membebankan Terdakwa membayar uang pengganti sebesar Rp 210 miliar,\" kata jaksa.\r\n\r\nHakim juga menghukum Harvey membayar denda Rp 1 miliar. Jika tak dibayar, diganti dengan kurungan 6 bulan.', 'image/1735376364_reaksi-harvey-moeis-usai-divonis-65-tahun-bui-3_169.jpeg', 2, '2024-12-28 01:59:24', '2024-12-28 01:59:24'),
(12, 'One Way di Puncak Bogor Berakhir, Lalu Lintas Kembali Normal Dua Arah', 'Rizky Adha Mahendra', NULL, 'Bogor - Polisi menghentikan sistem satu arah atau one way di Jalan Raya Puncak, Bogor, Jawa Barat. Arus lalu lintas kini telah bisa dilintasi normal dua arah.\r\nPantauan detikcom di Simpang Gadog, Sabtu (28/12/2024), kendaraan yang semula menunggu telah bisa melintas ke Puncak. Kendaraan tersebut sebelumnya menunggu di Simpang Gadog.\r\n\r\nOne way mulai dihentikan sekitar pukul 15.20 WIB. Setelah sebelumnya one way dari arah Puncak arah Jakarta diberlakukan selama sekitar tiga jam\r\nSementara arus lalu lintas di Simpang Gadog menuju Puncak terpantau padat. Terdapat hambatan di sekitar tanjakan Selarong.\r\n\r\nSebelumnya, Wadirlantas Polda Jawa Barat AKBP Erwin Affandi mengatakan hingga siang ini, kendaraan yang naik ke Puncak sekitar 22 ribu. Angka tersebut meningkat dibandingkan kemarin.\r\n\r\n\"Hari ini arus lalu lintas yang menuju ke arah Puncak mengalami peningkatan volume. Kita memantau sampai dengan pukul 11.00 WIB, arus lalu lintas yang ke arah Puncak sekitar 22 ribu kendaraan,\" kata Edwin.\r\n\r\nOne way arah Puncak sempat dilaksanakan pagi tadi untuk menguras arus yang naik. Siang ini, one way arah Jakarta diterapkan untuk menguras kendaraan yang turun.\r\n\r\n\"Masih ada antrean dari atas menuju ke bawah. Terpantau hambatan di Pasar Cisarua ada sekitar 2 Km kendaraan padat menuju ke bawah,\" ujarnya.\r\n\r\n\"Kita akan memberikan fasilitas one way kepada masyarakat untuk mereka yang telah menyelesaikan masa liburan di hari ini untuk kembali ke Jakarta,\" lanjut Edwin.', 'image/1735376624_one-way-di-puncak-bogor-dihentikan-lalu-lintas-kembali-normal-dua-arah-sabtu-28122024-sore-ini_169.jpeg', 2, '2024-12-28 02:03:45', '2024-12-28 02:03:45'),
(13, '10 Rekomendasi HP Harga Rp 3 Jutaan Tahun 2024', 'Adi Fida Rahman', NULL, 'Jakarta -\r\nDi tahun 2024 ini, mencari handphone (HP) berkualitas dengan harga terjangkau bukanlah hal yang mustahil. Pasar HP semakin kompetitif, membuat produsen berlomba-lomba menawarkan spesifikasi dan fitur menarik di rentang harga Rp 3 jutaan.\r\n\r\nSegmen ini menjadi incaran banyak pengguna yang menginginkan performa handal, fitur kekinian, dan desain yang stylish tanpa harus merogoh kocek terlalu dalam. Beragam pilihan HP Rp 3 jutaan hadir dengan keunggulan masing-masing, mulai dari layar AMOLED yang memukau, performa chipset yang mumpuni untuk gaming, hingga kemampuan kamera yang siap diandalkan untuk mengabadikan momen berharga.\r\n\r\nTapi memilih satu di antara banyaknya opsi memang bisa membingungkan. Oleh karena itu, artikel ini hadir untuk membantu kamu.\r\n\r\ndetikINET telah merangkum 10 rekomendasi HP harga Rp 3 jutaan terbaik di tahun 2024 yang patut dipertimbangkan. Simakspesifikasi dan harganya untuk menemukan perangkatyang paling sesuai dengan kebutuhan dan preferensi kamu.\r\n\r\nVivo Y100 5G\r\nLayar: AMOLED 6,67 inch, resolusi 1080 x 2400 piksel, refresh rate 120 Hz\r\nChipset: Snapdragon 4 Gen 2\r\nRAM: 8GB\r\nMemori internal: 128/ 256GB\r\nKamera belakang: 50 MP + 8 MP (ultra-wide) + flicker sensor\r\nKamera depan: 8 MP\r\nBaterai: 5.000 mAh, 80W FlashCharge\r\nFitur: NFC, fingerprint di bawah layar, speaker stereo, dual stereo, IP54\r\nDimensi: 163.17 X 75.81 X 7.79mm\r\nBerat: 185,5g\r\nWarna: Ungu Anggrek dan Hitam Onyx\r\nHarga: Rp 3.599.000 (128GB), Rp 3.899.000 (256GB)\r\n\r\nGalaxy A16 5G\r\nLayar: 6,7 inch, panel Super AMOLED resolusi Full HD+ dan refresh rate 90Hz.\r\nChipset: Dimensity 6.300 besutan MediaTek yang dibuat dengan fabrikasi 6 nm\r\nRAM: 8 GB bisa ditambah dengan RAM Plus 8 GB\r\nMemori internal: 256 GB\r\nKamera belakang: kamera utama 50 MP, berpadu dengan ultra-wide 5 MP dan lensa makro 2 MP\r\nKamera depan: 13 MP\r\nBaterai: punya kapasitas 5.000 mAh dengan pengisian cepat 25W\r\nFitur: IP54 (anti cipratan air), NFC, sensor fingerprint di samping, speaker stereo\r\nDimensi: 164.4 x 77.9 x 7.9 mm\r\nBerat: 200 gram\r\nWarna: Gold, Green dan Black\r\nHarga: Rp 3.799.000\r\nReno 12 F\r\nLayar: 6,67 inch, panel OLED resolusi Full HD+ dan refresh rate 120Hz.\r\nChipset: Snapdragon 685\r\nRAM: 8 GB\r\nMemori internal: 256 GB\r\nKamera belakang: kamera utama 50 MP, berpadu dengan ultra-wide 8 MP dan lensa makro 2 MP\r\nKamera depan: 32 MP\r\nBaterai: punya kapasitas 5.000 mAh dengan pengisian cepat SuperVOOC 45W\r\nFitur: IP64 (anti cipratan air), NFC, sensor fingerprint, speaker stereo\r\nDimensi: 163.1 x 75.8 x 7.69 mm\r\nBerat: 187 gram\r\nWarna: Oranye, Hijau, Abu-abu\r\nHarga: Rp 3.799.000\r\nTecno Pova 6 Pro\r\nLayar: AMOLED 6,78 inch, 120Hz, resolusi Full HD+ (1080 x 2460 piksel)\r\nChipset: MediaTek Dimensity 6080 (6 nm)\r\nRAM: 12GB\r\nMemori internal: 256GB\r\nKamera belakang: 108MP (wide), 2MP (depth), 0,8 MP\r\nKamera depan: 32MP\r\nBaterai: 6,000 mAh, fast charging 70W\r\nFitur: NFC, sensor sidik jari di bawah layar, speaker stereo\r\nDimensi: 165.51 x 76.13 x 7.88 mm\r\nBerat: 198.3 gram\r\nWarna: Comet Green, Meteorite Grey\r\nHarga: Rp 3.299.000', 'image/1735376849_review-kamera-vivo-y100-5g_169.jpeg', 1, '2024-12-28 02:07:29', '2024-12-28 02:07:29'),
(14, 'Promo Akhir Tahun Google Play, Yuk Mainkan 5 Game Offline Seru Android 2024', 'Rahmat Khairurizqi', NULL, 'Jakarta - Mencari game offline Android terbaik di penghujung 2024 memang bukan hal yang mudah. Apalagi ketika ingin men-download ada iklan yang mengganggu.\r\nAdapun ketika bermain game, kerap kali mendapat gangguan seperti adanya iklan. Iklan yang muncul saat bermain game dapat mengganggu fokus dan keseruan di tengah-tengah permainan.\r\n\r\nSelain itu, orang yang bermain game offline menghindari adanya pemborosan internet yang digunakan saat bermain game offline di Android. Bermain game offline juga kerap kali dilakukan guna mengurangi kejenuhan di tengah-tengah aktivitas sehari-hari.\r\n\r\nSalah satu cara menyiasatinya yaitu berlangganan menggunakan Google Play Pass. Nah, bagi pengguna android bisa memainkan 5 game offline ini dengan mengunduhnya di Google Play.\r\n\r\n1. Limbo\r\n\r\nRekomendasi game Android offline terbaik 2024 yang pertama berjudul Limbo. Playdead selaku game developer Limbo menghadirkannya sebagai game premium. Apabila ingin memainkannya, kamu wajib membayar sesuai harga yang ditawarkan.\r\n\r\nGame yang bergenre puzzle-platformer horor ini dibanderol dengan harga Rp 66 ribu. Namun jika harga ini masih terlalu mahal, kamu dapat menunggu game ini diskon untuk mendapatkan pengalaman berbeda dalam bermain game offline ini.\r\n\r\n2. Subway Surfer\r\n\r\nSiapa yang tak mengenal game Subway Surfer? Game yang sudah dirilis sejak 2012 ini, masih memiliki daya tarik sendiri lho sebagai game Android offline terbaik 2024.\r\n\r\nHal ini dikarenakan gameplay yang disajikan sangatlah mudah untuk dimainkan. Kamu hanya perlu perlu melarikan diri sejauh-jauhnya dari pihak berwajib, karena karakter game yang berwatak protagonis melakukan tindakan vandalisme.\r\n\r\n3. Iron Marines\r\n\r\nSelanjutnya game Android offline terbaik 2024 yakni Iron Marines. Game ini memiliki genre real time strategy mampu menyuguhkan pecinta game saat memainkannya.\r\n\r\nGame ini wajib kamu coba karena dapat dimainkan secara offline. Pasalnya pengembang memberikannya secara gratis bagi pengguna Android. Sedangkan jika ingin bermain di PC, kamu harus merogoh kocek senilai Rp 95.999 untuk memainkan game Iron Marines.\r\n\r\n4. Sonic Dash Endless Runner\r\n\r\nSonic Dash Endless Runner jadi game Android offline 2024 berikutnya. Bicara soal game Sonic sudah tak asing di telinga para gamer. Game Sonic ini dapat dimainkan di konsol maupun PC.\r\n\r\nGame ini memiliki konsep bermain yang serupa dengan Subway Surfers dalam hal menggerakkan karakternya. Bedanya, Sonic Dash meminta kepada pemain untuk bisa mencapai garis finish sembari menyelesaikan misi kecil di dalamnya. Misi kecil yang dimaksud ini di antaranya mengumpulkan cincin emas atau menyelamatkan burung kecil.\r\n\r\n5. Coromon\r\n\r\nGame Android offline terbaik 2024 yang terakhir ada Coromon. Bagi pencinta game yang suka dengan role playing game (RPG), Coromon menjadi salah satu jawabannya.\r\n\r\nGame ini fokus terhadap eksplorasi di dalam permainan dan bagaimana pemain mengikuti alur cerita sembari menuntaskan semua misinya. Akan tetapi, visual yang disajikan tidak sekeren game mobile AAA di luar sana.\r\n\r\nKarena pengembang sepertinya sengaja tidak memberikan hal itu dan lebih menitikberatkan sensasi pengalaman gamer selama bermain Coromon.\r\n\r\nDari list di atas, kamu dapat men-download game offline tersebut secara cuma-cuma di Google Play Store lho. Ditambah, game-game tersebut juga memfasilitasi para gamer, dalam menunjang keseruan selama bermain game dengan top up item maupun purchase game di dalamnya.\r\n\r\nKamu pun bisa membeli atau top up game favoritmu dengan #BayarNoRibet pakai DANA. Kamu bisa top up pakai DANA di Google Play dan hemat s/d Rp20 Ribu lho. Jadi, tunggu apa lagi? Segera download dan beli game favorit kamu pakai DANA.', 'image/1735377025_promo-akhir-tahun-google-play-yuk-coba-main-5-game-offline-seru-android-2024.jpeg', 1, '2024-12-28 02:10:25', '2024-12-28 02:10:25'),
(15, 'Update Mobile Legends 1.9.42 Rilis, Ini Daftar Hero di Buff dan Nerf', 'Panji Saputro', NULL, 'Jakarta - Update Mobile Legends patch 1.9.42 telah dirilis. Berikut sederet hero yang terkena buff dan nerf.\r\nPada pembaruan kali ini, Moonton Games menyesuaikan beberapa hero fighter seperti Sun, Argus, Aulus, dan Zilong. Hal ini perlu dilakukan, karena menurut mereka, hero fighter ini sulit menentukan role yang cocok di dalam pertandingan, sehingga menjadi sangat lemah di early game dan hanya bisa melakukan split push di late game.\r\n\r\nDari penjelasannya di dalam game, hero-hero tersebut terlalu mengandalkan damage basic attack. Mereka dinilai tak memiliki damage burst seperti fighter tipe skill dan keuntungan jangkauan seperti marksman.\r\n\r\nMoonton Games menyebutkan, penyesuaian yang dilakukannya juga mengarah kepada daya tahan setiap karakter. Tim pengembangnya berharap dengan perubahan item rose gold meteor, fighter yang mengandalkan basic attack punya daya tahan yang tidak jauh berbeda dengan fighter semi-tank, bahkan tanpa perlu membeli item defense.\r\n\r\nBerikut hero Mobile Legends yang terkena buff dan nerf di update patch 1.9.42, sebagaimana dirangkum detikINET dari in-game, Selasa (24/12/2024).\r\n\r\nHero Mobile Legends yang kena buff ialah Sun, Argus, Aulus, Zilong, Badang, Harith, Dyrroth, Cici, Lancelot, Karrie, dan Irithel. Sedangkan hero yang mendapatkan nerf adalah Bruno, Fanny, dan Cecilion.\r\n\r\nSelain hero, beberapa item juga turut disesuaikan. Malefic gun terkena nerf, karena terlalu banyak memberikan keuntungan kepada marksman yang menggunakannya.\r\n\r\nAkhirnya Moonton Games memutuskan untuk mengurangi peningkatan jangkauan serangan dan mempersingkat durasi peningkatan movement speed dari basic attack. Dengan begitu, efek ini hanya bisa dicapai dari attack speed yang mencukupi di mid hingga late game.\r\n\r\nKemudian dua item yang mendapatkan buff ialah rose gold meteor dan demon hunter sword. Rose gold meteor dapat membuat daya tahan fighter lebih tinggi. Lalu efek lifesteal di demon hunter sword ditingkatkan.', 'image/1735377243_update-mobile-legends-1942-rilis-ini-daftar-hero-di-buff-dan-nerf_169.jpeg', 1, '2024-12-28 02:14:03', '2024-12-28 02:14:03'),
(16, 'Khusus Hari Ini, Ghostrunner 2 Jadi Game PC Gratis di Epic Games Store', 'Panji Saputro', NULL, 'Jakarta - Epic Games bagi-game game PC gratis judulnya Ghostrunner 2. Buruan klaim, karena penawaran menarik tersebut khusus hari ini saja.\r\nSetelah periode berakhir, maka game yang ditawarkan secara cuma-cuma itu akan berubah. Hal ini sejalan dengan event mereka bertajuk Mystery Game, yang akan memberikan game PC gratis berbeda-beda setiap harinya.\r\n\r\nKesempatan gamer untuk memiliki Ghostrunner 2 tanpa biaya hanya sampai nanti malam pukul 23.00 WIB. Jadi bagi pemain yang ingin sekali memainkan game ini, sebaiknya langsung klaim sekarang juga.\r\n\r\nKalau sudah tidak gratis lagi, gamer harus menggelontorkan uang yang cukup banyak untuk memilikinya. 505 Games selaku publisher, menawarkan game ini seharga Rp 380.999.\r\n\r\nMeski sekarang gamer belum punya perangkat yang mumpuni untuk menjalankan Ghostrunner 2, tidak ada salahnya mengklaimnya sekarang. Nanti bila sudah memiliki PC atau laptop dengan spesifikasi cukup tinggi, cukup mengunduhnya ketika ingin memainkannya.\r\n\r\nSambil klaim gamer juga bisa sambil menyiapkan PC dengan spesifikasi berikut ini, sebagaimana dihimpun detikINET dari Epic Games Store, Jumat (27/12/2024).\r\n\r\nSistem operasi: Windows 10 64bit\r\nProsesor: Intel Core i5-4590 (4 * 3300) / AMD FX-8350 / Intel Core i9-9900k / AMD Ryzen 5 5600X\r\nRAM: 8GB\r\nUkuran file: 65 GB (disarankan pakai SSD)\r\nDirectX: Versi 11/12\r\nGrafik: GeForce GTX 960 (4096 MB) / Radeon RX 480 (8192 MB) or Intel Arc A380 (8192 MB) / GeForce RTX 2070 Super (8192 MB) / Radeon RX 6800 XT (16384 MB) / Intel Arc A770 (16384 MB)\r\nCatatan: Pastikan punya akun Epic Games.\r\nUntuk hadiah Mystery Game sebelumnya ialah Control. Game PC ini juga cukup mahal, sehingga bagi gamer yang kemarin tidak klaim sangat disayangkan. Namun yang terpenting bukan soal mahalnya, tapi kualitas permainannya juga jempolan.\r\n\r\nSebagai tambahan informasi, sebenarnya Epic Games sudah pernah memberikan Ghostrunner, namun itu versi pertamanya dan sudah cukup lama diberikan.\r\n\r\nJadi bagi gamer yang sebelumnya sudah klaim seri pertamanya, kehadiran Ghostrunner 2 sebagai game PC gratis akan menjadi kabar menggembirakan karena kalian jadi punya serial lengkapnya.', 'image/1735377384_khusus-hari-ini-ghostrunner-2-jadi-game-pc-gratis-di-epic-games-store_169.png', 1, '2024-12-28 02:16:24', '2024-12-28 02:16:24'),
(17, 'Unesa Peringkat 3 Nasional, Raih Medali Bronze THE Online Learning Ranking 2024', 'Mahar Prastiwi', NULL, 'Salah satu penyelenggara pemeringkatan internasional Times Higher Education (THE) meluncurkan pemeringkatan baru, THE Online Learning Ranking 2024. Pemeringkatan yang menjadi tolok ukur keberhasilan dan tantangan pembelajaran daring di institusi ini diikuti 120 peserta yang berasal dari 46 negara. Institusi yang bisa mengikuti pemeringkatan ini, seperti Universitas Negeri Surabaya (Unesa) misalnya harus menyediakan program tingkat sarjana (sarjana atau pascasarjana) yang aktivitas pengajaran, pembelajaran, dan penilaian dilakukan melalui metode daring. Direktur Inovasi, Pemeringkatan, dan Publikasi Ilmiah Unesa Nadi Suprapto mengatakan bahwa kampus ‘Rumah Para Juara’ dan terdepan dan inovatif di bidang pendidikan, menjadi salah satu institusi yang berperan aktif dalam penyelenggaraan dan pengembangan pembelajaran daring.\r\n\r\nEksistensi tersebut dibuktikan dengan diperolehnya medali bronze pada seri pertama pemeringkatan THE Online Learning Ranking 2024.\r\nSelain itu, Unesa juga menempati posisi tiga terbaik nasional setelah Binus University dan Telkom University, dengan perolehan skor resource (20,2), engagement (24,6), outcomes(23,6), dan environment (37,8). Guru besar Fakultas Matematika dan IPA Unesa itu menambahkan, program pembelajaran daring menawarkan fleksibilitas bagi mahasiswa dalam pembelajaran mereka dan memungkinkan lembaga pendidikan tinggi untuk memperluas jangkauannya secara signifikan kepada pelajar non-tradisional. \"Pembelajaran daring membuat pendidikan tinggi lebih terjangkau, juga memungkinkan para mahasiswa untuk berpartisipasi dalam pembelajaran formal sambil tetap dapat menjalankan pekerjaannya,\" kata Nadi Suprapto seperti dikutip dari laman Unesa, Minggu (15/12/2024).\r\n\r\nSementara itu Wakil Rektor Bidang Riset, Inovasi, Pemeringkatan, Publikasi Ilmiah, dan Science Center Unesa mengatakan, perolehan medali bronze ini suntikan motivasi positif bagi civitas, sekaligus wujud komitmen Unesa untuk terus berpartisipasi dalam peningkatan kualitas pendidikan di Indonesia. \"Unesa PTN-BH akan terus mengembangkan dan meningkatkan kualitas pembelajaran, demi membuka kesempatan bagi semua kalangan untuk mengenyam pendidikan formal di tingkat universitas,\" papar dosen Fakultas Ilmu Sosial dan Ilmu Politik (Fisipol) ini. Sebagai tambahan, ada empat kriteria yang menjadi dasar penilaian THE Online Learning Ranking, yaitu resource, engagement, outcomes, dan environment. Pembelajaran daring, atau online learning merupakan metode pembelajaran yang dilakukan melalui jaringan internet tanpa tatap muka langsung antara pendidik dan peserta didik.\r\n\r\nPembelajaran daring telah menjadi tren baru terutama selama pandemi Covid-19, dan banyak institusi pendidikan terus mengembangkan metode dan teknologi untuk meningkatkan kualitas pembelajaran daring pasca-pandemi Covid-19.', 'image/1735377728_62543c8bbfc49.png', 3, '2024-12-28 02:22:08', '2024-12-28 02:22:08'),
(18, '9 Universitas Swasta Terbaik di Indonesia Versi THE Interdisciplinary Science Rankings 2025', 'Mahar Prastiwi', NULL, 'Calon mahasiswa perlu tahu mana saja universitas terbaik di Indonesia baik itu kampus swasta maupun negeri. Berdasarkan pemeringkatan Times Higher Education (THE) Interdisciplinary Science Rankings 2025 ada sejumlah kampus swasta yang masuk dalam daftar universitas swasta terbaik di Indonesia. THE Interdisciplinary Science Rankings memberikan penilaian khusus pada perguruan tinggi yang memiliki kekuatan dalam bidang ilmu interdisipliner. Pemeringkatan ini menilai institusi berdasarkan berbagai indikator, seperti: volume publikasi ilmiah kualitas dan dampak penelitian sitasi pendapatan penelitian reputasi internasional. Baca juga: 18 Universitas Terbaik Versi THE Interdisciplinary Science Rankings 2025 Pemeringkatan THE Interdisciplinary Science Rankings 2025 Sebanyak 749 universitas dari 92 negara turut berpartisipasi dalam edisi perdana pemeringkatan ini.\r\n\r\nDilansir dari laman resminya, ada beberapa universitas swasta terbaik di Indonesia berdasarkan THE Interdisciplinary Science Rankings 2025. Beberapa universitas swasta masuk dalam pemeringkatan namun berada di ranking yang sama. Selain itu ada juga beberapa universitas swasta yang masuk dalam pemeringkatanTHE Interdisciplinary Science Rankings 2025 namun statusnya masih reporter. Status reporter dalam Times Higher Education (THE) World University Rankings mengakui institusi yang berada pada lintasan pertumbuhan meskipun belum mencapai tolok ukur yang diperlukan, termasuk publikasi. Berikut rincian universitas swasta terbaik versi THE Interdisciplinary Science Rankings 2025: 1. Telkom University Peringkat dunia: 351-400 2. Universitas Katolik Indonesia Atma Jaya Peringkat dunia: 501-600 3. Universitas Bina Nusantara (Binus University) Peringkat dunia: 501-600\r\n\r\n4. Universitas Ahmad Dahlan (UAD)\r\nPeringkat dunia: 501-600 \r\n\r\n5. Universitas Muhammadiyah Yogyakarta (UMY)\r\n Peringkat dunia: 501-600 \r\n\r\n6. Universitas Islam Indonesia (UII) \r\nPeringkat dunia: +601 \r\n\r\n7. Universitas Muhammadiyah Surakarta \r\nPeringkat dunia: +601 \r\n\r\n8. Universitas Bakrie  \r\n\r\n9. Institut Teknologi Nasional Bandung (Itenas)', 'image/1735378089_67430180ca0e0.png', 3, '2024-12-28 02:28:09', '2024-12-28 02:28:09'),
(19, 'Perkuat Pendidikan Inklusi, Kipin Edutech Raih Penghargaan \"Temasek Foundation Education Challenge 2024\"', 'Yohanes Enggar Harususilo', NULL, 'Kipin (Kipin EduTech), platform teknologi pendidikan asal Indonesia, meraih penghargaan dalam Temasek Foundation Education Challenge 2024. Kemenangan ini sekaligus mengantar Kipin menghadiri pelatihan di ajang Global EdTech Startup Awards (GESAwards) 2024 serta Bett London pada Januari 2025. Ajang Temasek Foundation Education Challenge 2024 diikuti lebih dari 250 inovasi dari 60 negara dan bertujuan mendukung inovasi pendidikan guna meningkatkan kualitas pembelajaran yang inklusif dan efektif di Asia Tenggara. Direktur Eksekutif dan CEO Temasek Foundation, Ng Boon Heong, menyatakan, “di Temasek Foundation, kami menyadari bahwa pendidikan adalah pendorong utama untuk mengangkat masyarakat.” Pengakuan yang diberikan kepada Kipin ini diharapkan dapat menginspirasi inovasi serupa yang membantu menjawab tantangan pendidikan di Asia Tenggara. Steffina Yuli, Chief Business Officer Kipin mengatakan (19/11/2024), “kemenangan ini adalah bukti dari usaha Kipin untuk menghadirkan solusi pendidikan yang inklusif dan dapat diakses di seluruh wilayah Indonesia, dimanapun bahkan daerah yang tanpa internet.\" \"Kami percaya bahwa digitalisasi pendidikan bukan hanya sebuah pilihan, tetapi kebutuhan untuk menghadapi tantangan masa depan,” ujar Steffina.\r\n\r\nSteffina menjelaskan, Kipin berhasil menonjol di antara peserta lain dengan solusi digital yang inovatif dan berdaya guna, khususnya untuk kondisi pendidikan di Indonesia. \"Dengan penghargaan ini, Kipin diakui sebagai solusi utama dalam mendukung digitalisasi pendidikan di wilayah yang minim akses internet serta di daerah-daerah pelosok Indonesia,\" ungkapnya. Dia menjelaskan, Kipin dikembangkan untuk memenuhi kebutuhan pendidikan yang meliputi akses materi belajar, perpustakaan digital, serta evaluasi pembelajaran. Seluruh fitur ini dapat diakses melalui satu perangkat dan dapat dioperasikan bahkan tanpa koneksi internet. Selain itu, Kipin menawarkan akses melalui Kipin Classroom, sebuah titik akses bagi siswa untuk mengunduh konten secara lokal, dan Kipin MAX, server khusus yang memungkinkan sekolah dari berbagai skala, mulai dari sekolah kecil hingga yang memiliki ribuan siswa. \"Inovasi Kipin dalam menyediakan akses pendidikan digital tanpa hambatan ini sangat sesuai untuk kebutuhan wilayah Indonesia dengan kondisi geografis yang menantang dan keterbatasan akses internet,\" jelas Steffina.\r\n\r\nLebih jauh Steffina menyampaikan, penghargaan ini menjadikan Kipin sebagai bagian solusi dalam pemerataan pendidikan yang mendukung visi Generasi Indonesia Emas 2045. \"Kesempatan ini diharapkan akan memperkuat Kipin dalam mengembangkan inovasi berkelanjutan di dunia pendidikan dan memperluas dampaknya ke skala internasional,\" pungkasnya.', 'image/1735378239_673ddf28d7a95.jpeg', 3, '2024-12-28 02:30:39', '2024-12-28 02:30:39'),
(20, 'Najelaa Shihab Wakili Indonesia di Harvard Graduate School of Education', 'Syabitha Putri Handri, Ayunda Pininta Kasih', NULL, 'Jadi yang pertama, Najelaa Shihab, Pendiri Sekolah Cikal sekaligus praktisi pendidikan Indonesia terpilih sebagai Chen Yidan Visiting Global Fellow pertama yang mewakili Indonesia di Harvard University Graduate School of Education (HSGE), Boston, Amerika Serikat pada November 2024. Najelaa telah berkiprah di dunia pendidikan Indonesia sejak 1999, melalui pendirian Sekolah Cikal yang merupakan institusi pendidikan berbasis kompetensi dan juga komunitas pelajar sepanjang hayat.3 Sebagai fellow Indonesia pertama di HSGE, Najelaa akan membahas tentang “Leading Systemic Change in a Complex, Multi-Stakeholder Education Ecosystem: A Global Perspective”.\r\n\r\nNajelaa menjadi 1 dari 6 ahli pendidikan manca negara yang akan hadir sebagai Fellow dalam HSGE. Lima ahli pendidikan lainnya ialah Jonathan Jansen yang merupakan profesor pendidikan dan kolumnis dari Stellenbosch University Afrika Selatan, Lotte Henrichs yang merupakan asisten profesor departemen pendidikan di Utrecht University Belanda, Ludger Woessmann yang merupakan ekonom dan profesor bidang ekonomi di the University of Munich Jerman, Rana Dajani yang merupakan profesor di bidang molekuler biologi dari Yordania dan Ughetta Moscardino yang merupakan Associate Professor di Departemen Psikologi Perkembangan the University of Padova, Italia.\r\n\r\nDari tema utama “Leading System Change in a complex, multi-stakeholder Education Ecosystem: A Global Perspective”, Najelaa akan membahas 4 topik turunan, yakni Education Ecosystem, Networks of Educators, Learning Policies and Practices, dan Collaboration for System improvement. Najelaa juga akan membagikan pengalaman dan capaian pendidikan di Indonesia, dengan membahas tantangan, peluang, dan strategi kolaborasi lintas pemangku kepentingan untuk mewujudkan akses pendidikan yang berkualitas dan berkeadilan.', 'image/1735378466_6729f6649f248.jpg', 3, '2024-12-28 02:34:26', '2024-12-28 02:34:26');

-- --------------------------------------------------------

--
-- Struktur dari tabel `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(255) NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) DEFAULT NULL,
  `user_agent` text DEFAULT NULL,
  `payload` longtext NOT NULL,
  `last_activity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `sessions`
--

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('yCOolq4Uf1pbsFj5H2R0E3FUbmElpEG62a8faHDP', 1, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiTDBEc1pIcmpUUmpJRWVhWEJKTkVkOTVuSzRqUjJRdU5GVkVNRG4xSSI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzE6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9kYXNoYm9hcmQiO31zOjUwOiJsb2dpbl93ZWJfNTliYTM2YWRkYzJiMmY5NDAxNTgwZjAxNGM3ZjU4ZWE0ZTMwOTg5ZCI7aToxO30=', 1735381428);

-- --------------------------------------------------------

--
-- Struktur dari tabel `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'admin@gmail.com', NULL, '$2y$12$QqPrLOZv7FqVEY/QmTL7rOD/jRsvewI6xfu9B.MKz.2qwTmZ9Tb0e', NULL, NULL, '2024-12-27 01:23:01');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `cache`
--
ALTER TABLE `cache`
  ADD PRIMARY KEY (`key`);

--
-- Indeks untuk tabel `cache_locks`
--
ALTER TABLE `cache_locks`
  ADD PRIMARY KEY (`key`);

--
-- Indeks untuk tabel `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `categories_name_unique` (`name`);

--
-- Indeks untuk tabel `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indeks untuk tabel `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `jobs_queue_index` (`queue`);

--
-- Indeks untuk tabel `job_batches`
--
ALTER TABLE `job_batches`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `news`
--
ALTER TABLE `news`
  ADD PRIMARY KEY (`id`),
  ADD KEY `news_category_id_foreign` (`category_id`),
  ADD KEY `news_author_id_foreign` (`author_id`);

--
-- Indeks untuk tabel `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indeks untuk tabel `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

--
-- Indeks untuk tabel `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT untuk tabel `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT untuk tabel `news`
--
ALTER TABLE `news`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT untuk tabel `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `news`
--
ALTER TABLE `news`
  ADD CONSTRAINT `news_author_id_foreign` FOREIGN KEY (`author_id`) REFERENCES `users` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `news_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
