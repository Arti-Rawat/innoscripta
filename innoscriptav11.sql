-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 16, 2025 at 02:06 PM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `innoscriptav11`
--

-- --------------------------------------------------------

--
-- Table structure for table `cache`
--

CREATE TABLE `cache` (
  `key` varchar(255) NOT NULL,
  `value` mediumtext NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cache_locks`
--

CREATE TABLE `cache_locks` (
  `key` varchar(255) NOT NULL,
  `owner` varchar(255) NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `jobs`
--

CREATE TABLE `jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `queue` varchar(255) NOT NULL,
  `payload` longtext NOT NULL,
  `attempts` tinyint(3) UNSIGNED NOT NULL,
  `reserved_at` int(10) UNSIGNED DEFAULT NULL,
  `available_at` int(10) UNSIGNED NOT NULL,
  `created_at` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `job_batches`
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '0001_01_01_000000_create_users_table', 1),
(2, '0001_01_01_000001_create_cache_table', 1),
(3, '0001_01_01_000002_create_jobs_table', 1),
(4, '2025_03_13_074920_create_news_table', 2),
(5, '2025_03_13_132958_create_articles_table', 3),
(6, '2025_03_13_132958_create_articles_table1', 4),
(7, '2025_03_13_145717_create_articles_table', 5),
(8, '2025_03_13_151827_create_articles_table', 6),
(9, '2025_03_13_174727_create_articles_table', 7),
(10, '2025_03_13_074920_create_news1_table', 8),
(11, '2025_03_13_220658_create_news_table', 9),
(12, '2025_03_14_084729_create_news_table', 10),
(13, '2025_03_15_083336_create_personal_access_tokens_table', 11),
(14, '2025_03_16_123130_create_news_table', 12);

-- --------------------------------------------------------

--
-- Table structure for table `news`
--

CREATE TABLE `news` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `source` varchar(255) DEFAULT NULL,
  `category` varchar(255) DEFAULT NULL,
  `author` varchar(255) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `url` longtext NOT NULL,
  `urlToImage` longtext DEFAULT NULL,
  `published_at` timestamp NULL DEFAULT NULL,
  `content` longtext DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `news`
--

INSERT INTO `news` (`id`, `source`, `category`, `author`, `title`, `description`, `url`, `urlToImage`, `published_at`, `content`, `created_at`, `updated_at`) VALUES
(1, 'ZDNet', 'General', 'Adrian Kingsley-Hughes', 'I found the MagSafe accessory you didn\'t know you needed - especially for power users - ZDNet', 'Lexar\'s SSD is small, fast, and attaches to your iPhone with a snap - all without adding much bulk or weight.', 'https://www.zdnet.com/article/i-found-the-magsafe-accessory-you-didnt-know-you-needed-especially-for-power-users/', 'https://www.zdnet.com/a/img/resize/cd8c25701b3e226e481b5ad8e2783cf27654327d/2025/03/14/f265e219-5654-4aba-bb97-315fb61bebff/img-20250314-161956-284.jpg?auto=webp&fit=crop&height=675&width=1200', '2025-03-15 09:05:32', 'The iPhone is a fantastic tool for both budding and professional videographers, and it can easily capture stunning shots. However, the downside of using your smartphone for recording video is that yo… [+3342 chars]', '2025-03-16 11:37:03', '2025-03-16 11:37:03'),
(2, 'CNN', 'General', 'Nic Robertson, Edward Szekeres, Christian Edwards, Maria Kostenko', 'Don’t let Putin ‘play games’ over Ukraine ceasefire, says UK’s Starmer before key summit - CNN', 'Russian President Vladimir Putin will have to come to the table to negotiate peace in Ukraine “sooner or later,” Britain’s Prime Minister Keir Starmer told a summit of Kyiv’s allies on Saturday.', 'https://www.cnn.com/2025/03/15/europe/putin-play-games-trump-ukraine-ceasefire-starmer-intl-gbr/index.html', 'https://media.cnn.com/api/v1/images/stellar/prod/2025-03-15t083454z-1936844690-rc27dda48uik-rtrmadp-3-ukraine-crisis-attack-kherson.jpg?c=16x9&q=w_800,c_fill', '2025-03-15 08:49:00', 'Russian President Vladimir Putin will have to come to the table to negotiate peace in Ukraine sooner or later, Britains Prime Minister Keir Starmer told a summit of Kyivs allies on Saturday.\r\nIn open… [+3818 chars]', '2025-03-16 11:37:03', '2025-03-16 11:37:03'),
(3, 'BBC News', 'General', NULL, 'Islamic State leader in Iraq and Syria killed, US says - BBC.com', 'Abdallah Makki Muslih al-Rifa was head of IS\'s most senior decision-making body, the US Central Command said.', 'https://www.bbc.com/news/articles/c9q451y218go', 'https://ichef.bbci.co.uk/news/1024/branded_news/05f1/live/380277f0-0151-11f0-a0b0-37ac9a2480b9.png', '2025-03-15 04:08:52', 'A senior Islamic State (IS) group leader in Iraq and Syria has been killed in an operation by members of the Iraqi national intelligence service along with US-led coalition forces, the Iraqi prime mi… [+2032 chars]', '2025-03-16 11:37:03', '2025-03-16 11:37:03'),
(4, 'Suntimes.com', 'General', 'Georgia Nicols', 'Horoscope for Saturday, March 15, 2025 - Chicago Sun-Times', NULL, 'https://chicago.suntimes.com/horoscopes/2025/03/15/horoscopes-today-saturday-march-15-2025', 'https://cst.brightspotcdn.com/dims4/default/2145dbd/2147483647/strip/true/crop/870x497+0+67/resize/1461x834!/quality/90/?url=https%3A%2F%2Fchorus-production-cst-web.s3.us-east-1.amazonaws.com%2Fbrightspot%2Fac%2Ffd%2F790f04b15195427014757adc0272%2Fgeorgia-nicols.jpg', '2025-03-15 04:02:25', 'Moon Alert\r\nThere are no restrictions to shopping or important decisions. The moon is in Libra.\r\nAries (March 21-April 19)\r\nToday Mercury is retrograde in your sign, which means ex-partners, ex-spous… [+3916 chars]', '2025-03-16 11:37:03', '2025-03-16 11:37:03'),
(5, 'collectSPACE.com', 'General', NULL, 'SpaceX Crew-10 folds traits, hopes into origami crane zero-g indicator - Space.com', 'What do you get when you fold together the ambitions and contributions of four space station-bound astronauts from the United States, Japan and Russia? A zero-gravity indicator in the form of a crocheted origami crane named \"Droog.\"', 'http://www.collectspace.com/news/news-031425a-spacex-crew-10-zero-g-indicator-droog-origami-crane.html', 'http://www.collectspace.com/images/news-031425a-fb.jpg', '2025-03-15 04:00:00', 'March 14, 2025\r\n — What do you get when you fold together the ambitions and contributions of four space station-bound astronauts from the United States, Japan and Russia? A zero-g indicator in the fo… [+3885 chars]', '2025-03-16 11:37:03', '2025-03-16 11:37:03'),
(6, 'Formula 1', 'General', 'F1', 'LIVE COVERAGE - Qualifying in Australia | Formula 1® - Formula 1', 'Live coverage of Saturday\'s Formula 1 Qualifying session for the 2025 Australian Grand Prix in Melbourne.', 'https://www.formula1.com/en/latest/article/live-coverage-qualifying-in-australia-2025.6JL3RlgSGW7bpTkJqU0tOP', 'https://media.formula1.com/image/upload/t_16by9South/f_auto/q_auto/v1742015796/trackside-images/2025/F1_Grand_Prix_Of_Australia___Qualifying/2205176692.jpg', '2025-03-15 03:42:31', 'NewsI am still learning this car Hamilton admits adapting to Ferrari doesnt feel natural after tricky Qualifying in Melbourne', '2025-03-16 11:37:03', '2025-03-16 11:37:03'),
(7, 'Axios', 'General', 'Stef W. Kight, Stephen Neukam', 'Ten Senate Democrats cave to avert government shutdown - Axios', 'The Senate is expected to vote on final passage later Friday.', 'https://www.axios.com/2025/03/14/senate-democrats-vote-with-republicans-avoid-government-shutdown', 'https://images.axios.com/mBpO5RZzTXMO4_XF8SMkMHwUEm8=/0x0:7112x4001/1366x768/2025/03/14/1741969251757.jpg', '2025-03-15 03:18:29', 'Ten Senate Democrats joined with the Republican majority in voting to move forward with a stopgap spending bill Friday clearing the path to avoid a government shutdown.\r\nWhy it matters: Minority Lead… [+2658 chars]', '2025-03-16 11:37:03', '2025-03-16 11:37:03'),
(8, 'Yahoo Entertainment', 'General', 'Jack Baer', 'UNC loses heartbreaker vs. Duke after game-tying free throw wiped out by lane violation - Yahoo Sports', 'UNC lost its game against Duke, and possibly an NCAA tournament berth, in one of the worst ways possible.', 'https://sports.yahoo.com/college-basketball/article/unc-loses-heartbreaker-vs-duke-after-game-tying-free-throw-wiped-out-by-lane-violation-020051737.html', 'https://s.yimg.com/ny/api/res/1.2/Ruolw1VAJTVP1IIHJ8ViGw--/YXBwaWQ9aGlnaGxhbmRlcjt3PTEyMDA7aD04MDA-/https://s.yimg.com/os/creatr-uploaded-images/2025-03/1e57fbf0-0141-11f0-abcb-6aa9954c8df7', '2025-03-15 03:06:00', 'UNC would like that play back. (Photo by Lance King/Getty Images)\r\nFriday had all the makings of a classic win for UNC in a season that can best be described as a disappointment. Then Jae\'Lyn Withers… [+2734 chars]', '2025-03-16 11:37:03', '2025-03-16 11:37:03'),
(9, 'New York Post', 'General', 'Thomas Gamba-Ellis', 'Cooper Kupp’s message after signing massive Seahawks contract - New York Post ', 'Cooper Kupp is beyond fired-up with his move to the Seahawks.', 'https://nypost.com/2025/03/14/sports/cooper-kupps-message-after-signing-massive-seahawks-contract/', 'https://nypost.com/wp-content/uploads/sites/2/2025/03/cooper-kupp-10-los-angeles-95752173.jpg?quality=75&strip=all&w=1024', '2025-03-15 01:07:42', 'Cooper Kupp is beyond fired-up with his move to the Seahawks.\r\nShortly after signing his contract with the Seahawks, Kupp took to social media and showed his excitement through a post on X.\r\nWashingt… [+1111 chars]', '2025-03-16 11:37:03', '2025-03-16 11:37:03'),
(10, 'Fox News', 'General', 'Alexandra Koch', 'Injunction lifted on Trump executive orders slashing federal DEI support - Fox News', 'An appeals court on Friday overturned a previous judge\'s decision to block President Donald Trump\'s executive orders surrounding diversity, equity and inclusion (DEI) programs.', 'https://www.foxnews.com/politics/injunction-lifted-trump-executive-orders-slashing-federal-dei-support', 'https://static.foxnews.com/foxnews.com/content/uploads/2025/01/trans-trump-orders.jpg', '2025-03-15 01:02:00', 'An appeals court on Friday lifted a block on President Donald Trump\'s executive orders ending federal support for diversity, equity and inclusion (DEI) programs.\r\nA panel of three judges ruled the or… [+2665 chars]', '2025-03-16 11:37:03', '2025-03-16 11:37:03'),
(11, 'Associated Press', 'General', 'Michelle L. Price', 'Trump says he was being a \'bit sarcastic\' when he promised to end Russia-Ukraine war in 24 hours - The Associated Press', 'President Donald Trump says he was “being a little bit sarcastic” when he repeatedly claimed as a candidate that he would have the Russia-Ukraine war solved within 24 hours — and before he even took office. Trump was asked about the vow he repeatedly made on …', 'https://apnews.com/article/trump-russia-ukraine-war-solved-f51b96e4e690341caee65358bcbab1fa', 'https://dims.apnews.com/dims4/default/6078c4a/2147483647/strip/true/crop/5120x2880+0+268/resize/1440x810!/quality/90/?url=https%3A%2F%2Fassets.apnews.com%2F92%2F55%2F4f27005b01dbaa4cd4f014bb51bf%2Fa7058b499aee44d7a895fa58ecb98889', '2025-03-15 00:49:00', 'WEST PALM BEACH, Fla. (AP) President Donald Trump said Friday that he was being a little bit sarcastic when he repeatedly claimed as a candidate that he would have the Russia-Ukraine war solved withi… [+1570 chars]', '2025-03-16 11:37:03', '2025-03-16 11:37:03'),
(12, 'CBS Sports', 'General', NULL, 'Marquette Golden Eagles vs. St. John\'s Red Storm Live Score and Stats - March 14, 2025 Gametracker - CBS Sports', 'Get real-time Men\'s College Basketball coverage and scores as Marquette Golden Eagles takes on St. John\'s Red Storm. We bring you the latest game previews, live stats, expert picks and recaps on CBSSports.com', 'https://www.cbssports.com/college-basketball/gametracker/recap/NCAAB_20250314_MARQET@STJOHN/', 'https://sportsfly.cbsistatic.com/fly-0911/bundles/sportsmediacss/images/fantasy/default-article-image-large.png', '2025-03-15 00:41:15', 'NEW YORK (AP) Zuby Ejiofor scored a career-high 33 points, a St. John\'s record in the Big East Tournament, and the sixth-ranked Red Storm pulled away from No. 25 Marquette 79-63 on Friday night to re… [+2355 chars]', '2025-03-16 11:37:03', '2025-03-16 11:37:03'),
(13, 'CNN', 'General', 'Chelsea Bailey, Gloria Pazmino, Taylor Galgano', 'Amid bursts of resistance, Trump administration squeezes colleges over pro-Palestinian protests as activist remains detained - CNN', 'The Trump administration is tightening its grip on efforts to quash pro-Palestinian demonstrations on college campuses, even as a protest over the detention of activist Mahmoud Khalil flared at the president’s New York City residence and resistance efforts co…', 'https://www.cnn.com/2025/03/14/us/mahmoud-khalil-columbia-pro-palestinian-protests/index.html', 'https://media.cnn.com/api/v1/images/stellar/prod/c-ap25072587746088.jpg?c=16x9&q=w_800,c_fill', '2025-03-14 23:19:00', 'The Trump administration is tightening its grip on efforts to quash pro-Palestinian demonstrations on college campuses, even as a protest over the detention of activist Mahmoud Khalil flared at the p… [+10805 chars]', '2025-03-16 11:37:03', '2025-03-16 11:37:03'),
(14, 'Associated Press', 'General', 'Hannah Fingerhut', 'Emerging from 2024 loss, Tim Walz holds a town hall in an Iowa Republican’s district - The Associated Press', 'Minnesota Gov. Tim Walz is reemerging from a public-facing lull that followed last year’s election loss. He has kicked off a tour of town halls in competitive congressional districts represented by Republicans with one in Des Moines, Iowa, on Friday. And it’s…', 'https://apnews.com/article/iowa-democrats-tim-walz-republican-town-halls-26a2ace4bc17422780e3ac50213f7a78', 'https://dims.apnews.com/dims4/default/b281906/2147483647/strip/true/crop/5361x3016+0+279/resize/1440x810!/quality/90/?url=https%3A%2F%2Fassets.apnews.com%2Fa4%2F44%2Fdc716cbd5af0422796e034d16c64%2F1d8c7431b8094fc88fadc1c6bcc9d922', '2025-03-14 22:57:00', 'DES MOINES, Iowa (AP) Minnesota Gov. Tim Walz stood before hundreds of Iowans on Friday and admitted he doesnt have all the answers about issues facing the country.\r\nIf I did, we wouldnt be in this g… [+4340 chars]', '2025-03-16 11:37:03', '2025-03-16 11:37:03'),
(15, 'KABC-TV', 'General', 'Meredith Deliso, ABC News', 'Gene Hackman\'s dog likely died of starvation and dehydration, necropsy report finds - ABC7 Los Angeles', 'The dog, an Australian kelpie mix named Zinfandel, was found dead in a crate near the body of Gene Hackman\'s wife.', 'https://abc7.com/post/gene-hackmans-dog-australian-kelpie-mix-named-zinfandel-died-starvation-dehydration-necropsy-report-finds/16024343/', 'https://cdn.abcotvs.com/dip/images/15980235_030525-wls-hackman-death-wed-n1-vid.jpg?w=1600', '2025-03-14 22:33:09', 'The dog belonging to actor Gene Hackman and his wife Betsy Arakawa that was found dead along with the couple in their New Mexico home last month likely died of dehydration and starvation, according t… [+2306 chars]', '2025-03-16 11:37:03', '2025-03-16 11:37:03'),
(16, 'ABC News', 'General', 'ABC News', 'Trump, addressing DOJ attorneys, says that those who fight him in court are \'scum\' - ABC News', NULL, 'https://abcnews.go.com/US/trump-addressing-doj-attorneys-fight-court-scum/story?id\\\\u003d119815272', NULL, '2025-03-14 22:26:35', NULL, '2025-03-16 11:37:03', '2025-03-16 11:37:03'),
(17, '9to5google.com', 'General', 'Abner Li', 'Android 16 Beta 3: ‘Limit to 80%’ will fully charge your Pixel every 1-2 weeks - 9to5Google', 'With Android 16 Beta 3, Google is now more specific about how “Limit to 80%” will fully charge your Pixel to 100% “every one to two weeks.”', 'http://9to5google.com/2025/03/14/pixel-charge-80-fully/', 'https://i0.wp.com/9to5google.com/wp-content/uploads/sites/4/2025/01/Battery-level-on-Pixel-9-Pro-XL.jpg?resize=1200%2C628&quality=82&strip=all&ssl=1', '2025-03-14 22:04:00', 'With Android 16 Beta 3, Google is now more specific about how Limit to 80% will fully charge your Pixel to every one to two weeks.\r\nPreviously, the Info text at the bottom of the Charging optimizatio… [+1041 chars]', '2025-03-16 11:37:03', '2025-03-16 11:37:03'),
(18, 'BBC News', 'Latest audio', NULL, NULL, NULL, 'https://bbc.com/audio/play/p0kyck8n', 'https://ichef.bbci.co.uk/images/ic/160x90/p0ks8w6j.jpg.webp', '2025-03-16 12:06:04', NULL, '2025-03-16 11:37:05', '2025-03-16 12:06:04'),
(19, 'BBC News', 'Weekend reads', NULL, 'How Snow White turned into a nightmare for Disney', 'The live-action version of the classic fairy-tale animation sounded like a surefire hit. But even before it\'s reached cinemas, the response to it has been loud and often hostile.', 'https://bbc.com/culture/article/20250314-how-the-disney-remake-became-2025s-most-divisive-film-snow-white', 'https://ichef.bbci.co.uk/images/ic/160x90/p0ky880v.jpg.webp', '2025-03-16 12:06:04', NULL, '2025-03-16 11:37:05', '2025-03-16 12:06:04'),
(20, 'BBC News', 'Weekend reads', NULL, 'The US island that speaks Elizabethan English', 'English recently became the US\'s official language. But on a tiny island, residents still speak the country\'s most English version of English, and many Americans don\'t understand it.', 'https://bbc.com/travel/article/20190623-the-us-island-that-speaks-elizabethan-english', 'https://ichef.bbci.co.uk/images/ic/160x90/p07dqgft.jpg.webp', '2025-03-16 12:06:04', NULL, '2025-03-16 11:37:05', '2025-03-16 12:06:04'),
(21, 'BBC News', 'Arts in Motion', NULL, 'Step inside Hollywood\'s ultimate time capsule', NULL, 'https://bbc.comhttps://www.bbc.com/arts/arts-in-motion?id=p0kx7659', 'https://ichef.bbci.co.uk/images/ic/1920x1080/p0kx7d04.jpg.webp', '2025-03-16 12:06:04', NULL, '2025-03-16 11:37:05', '2025-03-16 12:06:04'),
(22, 'BBC News', 'Editor\'s picks', NULL, 'How the first \'sensational\' picture of Lady Diana came about', 'It starts nearly 40 years ago, when a teenage girl is pulled out of obscurity and thrust into the spotlight.', 'https://bbc.com/reel/video/p0kr3tk9/how-the-first-sensational-picture-of-lady-diana-came-about', 'https://ichef.bbci.co.uk/images/ic/160x90/p0kttmll.jpg.webp', '2025-03-16 12:06:04', NULL, '2025-03-16 11:37:05', '2025-03-16 12:06:04'),
(23, 'BBC News', 'Editor\'s picks', NULL, 'The ancient drink serving the world for 13,000 years', 'The story of humanity\'s love affair with alcohol goes back thousands of years.', 'https://bbc.com/reel/video/p09h36ld/the-ancient-drink-serving-the-world-for-13-000-years', 'https://ichef.bbci.co.uk/images/ic/160x90/p09h50w1.jpg.webp', '2025-03-16 12:06:04', NULL, '2025-03-16 11:37:05', '2025-03-16 12:06:04'),
(24, 'BBC News', 'Editor\'s picks', NULL, 'Japan\'s solution to the solar panel waste problem', 'As billions of solar panels near the end of their lifespan, Japan looks at innovative solutions to recycle them.', 'https://bbc.com/reel/video/p0ky4ql8/japan-s-solution-to-the-solar-panel-waste-problem', 'https://ichef.bbci.co.uk/images/ic/160x90/p0ky4vs4.jpg.webp', '2025-03-16 12:06:04', NULL, '2025-03-16 11:37:05', '2025-03-16 12:06:04'),
(25, 'BBC News', 'Editor\'s picks', NULL, 'The harmful legacy of poor nutrition', 'What we eat, or don’t eat, can have a huge impact on us and the generations after us.', 'https://bbc.com/reel/video/p0f5qzdq/the-harmful-legacy-of-poor-nutrition', 'https://ichef.bbci.co.uk/images/ic/160x90/p0f5thv8.jpg.webp', '2025-03-16 12:06:04', NULL, '2025-03-16 11:37:05', '2025-03-16 12:06:04'),
(26, 'BBC News', 'Editor\'s picks', NULL, 'Chris Pratt on having Arnold Schwarzenegger as his father-in-law', 'The US actor reveals his rituals with his famous father-in-law, including \"letting him win\" at chess.', 'https://bbc.com/reel/video/p0kvc7t6/chris-pratt-on-having-schwarzenegger-as-his-father-in-law', 'https://ichef.bbci.co.uk/images/ic/160x90/p0kwlnrw.png.webp', '2025-03-16 12:06:04', NULL, '2025-03-16 11:37:05', '2025-03-16 12:06:04'),
(27, 'BBC News', 'Editor\'s picks', NULL, 'Inside the lives of Orthodox Jewish women', 'Photographer Federica Valabrega takes us inside the secretive lives of Orthodox Jewish women.', 'https://bbc.com/reel/video/p07pkgc2/inside-the-lives-of-orthodox-jewish-women', 'https://ichef.bbci.co.uk/images/ic/160x90/p07psh3h.jpg.webp', '2025-03-16 12:06:04', NULL, '2025-03-16 11:37:05', '2025-03-16 12:06:04'),
(28, 'BBC News', 'Editor\'s picks', NULL, 'The fascinating history of the f-word', 'It\'s one of the most versatile words in the English language.', 'https://bbc.com/reel/video/p08fy0xs/the-fascinating-history-of-the-f-word', 'https://ichef.bbci.co.uk/images/ic/160x90/p08h0xyk.jpg.webp', '2025-03-16 12:06:04', NULL, '2025-03-16 11:37:05', '2025-03-16 12:06:04'),
(29, 'BBC News', 'Editor\'s picks', NULL, 'Why drinking coffee can benefit your health', 'Coffee was once believed to be bad for our health, but research suggests it can actually benefit us.', 'https://bbc.com/reel/video/p0kvt6g6/why-drinking-coffee-can-benefit-your-health', 'https://ichef.bbci.co.uk/images/ic/160x90/p0kwg23t.jpg.webp', '2025-03-16 12:06:04', NULL, '2025-03-16 11:37:05', '2025-03-16 12:06:04'),
(30, 'BBC News', 'Video', NULL, 'An Italian cultural ambassador\'s guide to Rome', NULL, 'https://bbc.com/travel/article/20250310-alberto-angela-an-italian-cultural-ambassadors-guide-to-rome', NULL, '2025-03-16 12:02:04', NULL, '2025-03-16 11:37:05', '2025-03-16 12:02:04'),
(31, 'BBC News', 'Video', NULL, 'Should tourists hike the Inca Trail?', NULL, 'https://bbc.com/travel/article/20250312-an-ethical-guide-to-hiking-the-inca-trail', NULL, '2025-03-16 12:06:05', NULL, '2025-03-16 11:37:05', '2025-03-16 12:06:05'),
(32, 'BBC News', 'Video', NULL, 'A beloved dessert linked to a brutal legend', NULL, 'https://bbc.com/travel/article/20250312-om-ali-an-unforgettable-sweet-with-a-sinister-history', NULL, '2025-03-16 12:06:05', NULL, '2025-03-16 11:37:05', '2025-03-16 12:06:05'),
(33, 'BBC News', 'Video', NULL, 'Lithuania\'s fermented drink to ward off a cold', NULL, 'https://bbc.com/travel/article/20250313-lithuanias-fermented-drink-to-ward-off-a-cold', NULL, '2025-03-16 12:06:05', NULL, '2025-03-16 11:37:05', '2025-03-16 12:06:05'),
(34, 'BBC News', 'Video', NULL, 'Is there no such thing as Italian food?', NULL, 'https://bbc.com/travel/article/20250227-is-there-no-such-thing-as-italian-cuisine', NULL, '2025-03-16 12:06:05', NULL, '2025-03-16 11:37:05', '2025-03-16 12:06:05'),
(35, 'BBC News', 'Video', NULL, 'The most beautiful cake for Ramadan', NULL, 'https://bbc.com/travel/article/20240406-kek-lapis-the-most-beautiful-cake-for-ramadan', NULL, '2025-03-16 12:06:05', NULL, '2025-03-16 11:37:05', '2025-03-16 12:06:05'),
(36, 'BBC News', 'Video', NULL, 'The grannies who saved Albanian cuisine', NULL, 'https://bbc.com/travel/article/20250305-the-grannies-who-saved-albanian-cuisine', NULL, '2025-03-16 12:06:05', NULL, '2025-03-16 11:37:05', '2025-03-16 12:06:05'),
(37, 'BBC News', 'Video', NULL, 'Spain\'s \'Jurassic Park\' of citrus farms', 'Former Tate Modern director Vicente Todolí founded Todolí Citrus Fundació to preserve rare citrus varieties and compile a catalogue of farming knowledge to inspire future generations.', 'https://bbc.com/travel/article/20250307-the-art-curator-saving-the-worlds-rarest-fruit', 'https://ichef.bbci.co.uk/images/ic/1024xn/p0kwv213.jpg.webp', '2025-03-16 12:06:05', NULL, '2025-03-16 11:37:05', '2025-03-16 12:06:05'),
(38, 'BBC News', 'Video', NULL, 'In pictures: Stargazers wake up to lunar eclipse', NULL, 'https://bbc.com/news/articles/cr42k4qpr7go', NULL, '2025-03-16 12:06:05', NULL, '2025-03-16 11:37:05', '2025-03-16 12:06:05'),
(39, 'BBC News', 'Video', NULL, 'Florence and Pisa on alert as flooding hits Italy', NULL, 'https://bbc.com/news/articles/cm2jr7nr60ro', NULL, '2025-03-16 12:06:05', NULL, '2025-03-16 11:37:05', '2025-03-16 12:06:05'),
(40, 'BBC News', 'Video', NULL, 'No initial signs of pollution from ship collision', NULL, 'https://bbc.com/news/articles/ckgy2nk1rgpo', NULL, '2025-03-16 12:06:05', NULL, '2025-03-16 11:37:05', '2025-03-16 12:06:05'),
(41, 'BBC News', 'Video', NULL, '\'For holding a wombat, thousands threatened my life\'', 'Sam Jones says she was trying to get the wombat safely off the road, and the video was not staged for social media.', 'https://bbc.com/news/articles/cm2d1x4ykvgo', 'https://ichef.bbci.co.uk/news/240/cpsprodpb/a87e/live/1ca70020-010b-11f0-8c3d-b7dcc7510cb1.jpg.webp', '2025-03-16 12:06:05', NULL, '2025-03-16 11:37:05', '2025-03-16 12:06:05'),
(42, 'BBC News', 'Video', NULL, 'How the largest heist in crypto history happened', NULL, 'https://bbc.com/reel/video/p0kx9xkf/how-the-largest-heist-in-crypto-history-happened', NULL, '2025-03-16 12:06:05', NULL, '2025-03-16 11:37:05', '2025-03-16 12:06:05'),
(43, 'BBC News', 'Video', NULL, 'Uncovering Albania\'s communist past', NULL, 'https://bbc.com/reel/video/p0kv0wty/uncovering-albania-s-communist-past', NULL, '2025-03-16 12:06:05', NULL, '2025-03-16 11:37:05', '2025-03-16 12:06:05'),
(44, 'BBC News', 'Video', NULL, 'The Japanese farm turning cow manure into hydrogen fuel', NULL, 'https://bbc.com/reel/video/p0kxkcvp/the-japanese-farm-turning-cow-manure-into-hydrogen-fuel', NULL, '2025-03-16 12:06:05', NULL, '2025-03-16 11:37:05', '2025-03-16 12:06:05'),
(45, 'BBC News', 'Video', NULL, 'What snow can teach us about street design', 'Snowfall is helping urban planners design safer and more pleasant streets in the US.', 'https://bbc.com/reel/video/p0kx9vx8/what-snow-can-teach-us-about-street-design', 'https://ichef.bbci.co.uk/images/ic/160x90/p0kxsvbf.png.webp', '2025-03-16 12:06:05', NULL, '2025-03-16 11:37:05', '2025-03-16 12:06:05'),
(46, 'BBC News', 'Arts', NULL, 'Apple encrypted data row hearing begins in secret', NULL, 'https://bbc.com/news/articles/c9vy0m8ggz3o', NULL, '2025-03-16 12:06:04', NULL, '2025-03-16 11:37:05', '2025-03-16 12:06:04'),
(47, 'BBC News', 'Arts', NULL, 'SpaceX launches rocket with crew to relieve stranded astronauts', NULL, 'https://bbc.com/news/videos/cgj5zgg48zno', NULL, '2025-03-16 12:06:04', NULL, '2025-03-16 11:37:05', '2025-03-16 12:06:04'),
(48, 'BBC News', 'Arts', NULL, 'Alphonso the robot waiter delighting cafe visitors', NULL, 'https://bbc.com/news/articles/c20d4m6v7l4o', NULL, '2025-03-16 12:06:04', NULL, '2025-03-16 11:37:05', '2025-03-16 12:06:04'),
(49, 'BBC News', 'Arts', NULL, 'The Japanese town turning cow manure into hydrogen', 'In Japan, a smelly waste product is being reimagined as a potential clean fuel of the future that is powering cars and tractors.', 'https://bbc.com/future/article/20250314-how-japan-is-turning-cow-manure-into-hydrogen', 'https://ichef.bbci.co.uk/images/ic/1024xn/p0ky4xjz.jpg.webp', '2025-03-16 12:06:04', NULL, '2025-03-16 11:37:05', '2025-03-16 12:06:04'),
(50, 'BBC News', 'Arts', NULL, '\'My sister\'s kidney gave me a fabulous life\'', NULL, 'https://bbc.com/news/articles/cgm1lllj8pno', NULL, '2025-03-16 11:52:05', NULL, '2025-03-16 11:37:05', '2025-03-16 11:52:05'),
(51, 'BBC News', 'Arts', NULL, 'SpaceX capsule docks as astronauts prepare return after nine months', NULL, 'https://bbc.com/news/articles/ce8y62jrwgwo', NULL, '2025-03-16 12:06:04', NULL, '2025-03-16 11:37:05', '2025-03-16 12:06:04'),
(52, 'BBC News', 'Arts', NULL, 'Friend\'s death prompts UK woman to save son\'s umbilical cord stem cells', NULL, 'https://bbc.com/news/articles/c39vpxzgpv4o', NULL, '2025-03-16 12:06:04', NULL, '2025-03-16 11:37:05', '2025-03-16 12:06:04'),
(53, 'BBC News', 'Arts', NULL, 'What a year in space does to your body', NULL, 'https://bbc.com/future/article/20230927-what-a-long-term-mission-in-space-does-to-the-human-body', NULL, '2025-03-16 12:06:04', NULL, '2025-03-16 11:37:05', '2025-03-16 12:06:05'),
(54, 'BBC News', 'Arts', NULL, 'Sean \'Diddy\' Combs pleads not guilty to updated indictment', NULL, 'https://bbc.com/news/articles/cm2jr619336o', NULL, '2025-03-16 12:06:05', NULL, '2025-03-16 11:37:05', '2025-03-16 12:06:05'),
(55, 'BBC News', 'Arts', NULL, 'Deaf actress brings sign language to Shakespeare', NULL, 'https://bbc.com/news/videos/c62zndp0y24o', NULL, '2025-03-16 12:06:05', NULL, '2025-03-16 11:37:05', '2025-03-16 12:06:05'),
(56, 'BBC News', 'Arts', NULL, 'As if! Cult 90s film Clueless gets musical makeover', NULL, 'https://bbc.com/news/articles/ckg8yky4153o', NULL, '2025-03-16 12:06:05', NULL, '2025-03-16 11:37:05', '2025-03-16 12:06:05'),
(57, 'BBC News', 'Arts', NULL, 'Netflix\'s $320m sci-fi blockbuster is \'soulless\', \'dumb\' and a hit', 'The Electric State, starring Millie Bobby Brown, follows a trend of Netflix making star-packed movies that are panned by critics - but reach huge audiences.', 'https://bbc.com/news/articles/cdelxr18pzlo', 'https://ichef.bbci.co.uk/news/240/cpsprodpb/4298/live/fc6bd580-0004-11f0-8c3d-b7dcc7510cb1.jpg.webp', '2025-03-16 12:06:05', NULL, '2025-03-16 11:37:05', '2025-03-16 12:06:05'),
(58, 'BBC News', 'Arts', NULL, 'Feminist icon still making waves two centuries on', NULL, 'https://bbc.com/news/articles/c78e46dj3gjo', NULL, '2025-03-16 12:06:05', NULL, '2025-03-16 11:37:05', '2025-03-16 12:06:05'),
(59, 'BBC News', 'Arts', NULL, 'Did a gay affair stir a 14th-Century royal crisis?', NULL, 'https://bbc.com/culture/article/20250226-edward-ii-did-a-gay-love-affair-spark-a-14th-century-royal-crisis', NULL, '2025-03-16 12:06:05', NULL, '2025-03-16 11:37:05', '2025-03-16 12:06:05'),
(60, 'BBC News', 'Arts', NULL, 'Banksy take on Vettriano work sells for £4.3m', NULL, 'https://bbc.com/news/articles/cn7vd63z2zpo', NULL, '2025-03-16 12:06:05', NULL, '2025-03-16 11:37:05', '2025-03-16 12:06:05'),
(61, 'BBC News', 'Arts', NULL, 'Is this the face of teenage queen Lady Jane Grey?', '\"A compelling argument\" can be made as it is the only one painted in her lifetime, say experts.', 'https://bbc.com/news/articles/c4g08z0wnvxo', 'https://ichef.bbci.co.uk/news/240/cpsprodpb/5b6a/live/af0ac1c0-f9fb-11ef-9e61-71ee71f26eb1.jpg.webp', '2025-03-16 12:06:05', NULL, '2025-03-16 11:37:05', '2025-03-16 12:06:05'),
(62, 'BBC News', 'Business', NULL, '\'Do you have communist links?\' US sends 36 questions to UN aid groups', NULL, 'https://bbc.com/news/articles/c70enzddxywo', NULL, '2025-03-16 12:06:04', NULL, '2025-03-16 11:37:05', '2025-03-16 12:06:04'),
(63, 'BBC News', 'Business', NULL, 'How two astronauts were left in space for nine months', NULL, 'https://bbc.com/news/videos/cvgw8lndg9zo', NULL, '2025-03-16 12:06:04', NULL, '2025-03-16 11:37:05', '2025-03-16 12:06:04'),
(64, 'BBC News', 'Business', NULL, 'Arlington Cemetery strips content on black and female veterans from website', NULL, 'https://bbc.com/news/articles/cz03gjnxe25o', NULL, '2025-03-16 12:06:04', NULL, '2025-03-16 11:37:05', '2025-03-16 12:06:04'),
(65, 'BBC News', 'Business', NULL, 'US tornadoes: Extreme weather leaves trail of destruction', 'At least 20 people have died after tornadoes and severe storms tore through central and southern states.', 'https://bbc.com/news/videos/ce8m252ye8mo', 'https://ichef.bbci.co.uk/news/240/cpsprodpb/dafc/live/ea089a20-01eb-11f0-b50e-9d086302645f.jpg.webp', '2025-03-16 12:06:04', NULL, '2025-03-16 11:37:05', '2025-03-16 12:06:04'),
(66, 'BBC News', 'Business', NULL, 'Military planning for Ukraine peace to begin, says Starmer', NULL, 'https://bbc.com/news/articles/c5ymrz8d21yo', NULL, '2025-03-16 12:06:04', NULL, '2025-03-16 11:37:05', '2025-03-16 12:06:04'),
(67, 'BBC News', 'Business', NULL, 'US rejects \'impractical\' Hamas demands as Gaza truce hangs in balance', NULL, 'https://bbc.com/news/articles/cr7230vrkmko', NULL, '2025-03-16 12:06:04', NULL, '2025-03-16 11:37:05', '2025-03-16 12:06:04'),
(68, 'BBC News', 'Business', NULL, 'Serbia\'s largest-ever rally sees 325,000 protest against government', NULL, 'https://bbc.com/news/articles/cx2g8v32q30o', NULL, '2025-03-16 12:06:04', NULL, '2025-03-16 11:37:05', '2025-03-16 12:06:04'),
(69, 'BBC News', 'Business', NULL, '\'I was duped into leaving London for school in Ghana - but it saved me\'', 'Going to school in Ghana was like prison for Londoner Mark Wilberforce, but he feels it kept him from jail.', 'https://bbc.com/news/articles/c2kg1ezyv5xo', 'https://ichef.bbci.co.uk/news/240/cpsprodpb/49a8/live/c0204490-0071-11f0-a8b1-950887ddc6e5.jpg.webp', '2025-03-16 12:06:04', NULL, '2025-03-16 11:37:05', '2025-03-16 12:06:04'),
(70, 'BBC News', 'Business', NULL, 'Intensity, team photos & fatherly advice: Inside Howe\'s Newcastle', NULL, 'https://bbc.com/sport/football/articles/c789m1l495po', NULL, '2025-03-16 12:06:04', NULL, '2025-03-16 11:37:05', '2025-03-16 12:06:04'),
(71, 'BBC News', 'Business', NULL, '\'Copybook victory as Norris and McLaren come through chaos unscathed\'', NULL, 'https://bbc.com/sport/formula1/articles/cedlelgxgz8o', NULL, '2025-03-16 12:06:04', NULL, '2025-03-16 11:37:05', '2025-03-16 12:06:04'),
(72, 'BBC News', 'Business', NULL, 'Scottish Premiership: Rangers lead frantic derby against title-chasing Celtic', NULL, 'https://bbc.comhttps://www.bbc.com/sport/football/live/cx2r39k1xvyt', NULL, '2025-03-16 12:06:04', NULL, '2025-03-16 11:37:05', '2025-03-16 12:06:04'),
(73, 'BBC News', 'Business', NULL, 'Premier League: Build-up as Arsenal host Chelsea & Fulham face Spurs', 'Follow live text coverage and radio commentary as Arsenal host Chelsea and Fulham face Spurs in the Premier League.', 'https://bbc.comhttps://www.bbc.com/sport/football/live/cz6131530n0t', 'https://ichef.bbci.co.uk/ace/standard/240/cpsprodpb/2c24/live/e798dcc0-0266-11f0-8c3d-b7dcc7510cb1.jpg.webp', '2025-03-16 12:06:04', NULL, '2025-03-16 11:37:05', '2025-03-16 12:06:04'),
(74, 'BBC News', 'Business', NULL, 'Clothes brand gets 100 complaints a day that models are \'too fat\'', NULL, 'https://bbc.com/news/articles/cx2xjd41g33o', NULL, '2025-03-16 12:06:04', NULL, '2025-03-16 11:37:05', '2025-03-16 12:06:04'),
(75, 'BBC News', 'Business', NULL, 'It\'s not a competition! The collaborative video game loved by players', NULL, 'https://bbc.com/news/articles/c2ljgp4v48no', NULL, '2025-03-16 12:06:04', NULL, '2025-03-16 11:37:05', '2025-03-16 12:06:04'),
(76, 'BBC News', 'Business', NULL, 'Musk says first mission to Mars will launch next year', NULL, 'https://bbc.com/news/articles/cx2g88y52y8o', NULL, '2025-03-16 12:06:04', NULL, '2025-03-16 11:37:05', '2025-03-16 12:06:04'),
(77, 'BBC News', 'Business', NULL, 'US government shutdown averted as Senate passes spending bill', 'The passage of the funding bill came hours before a shutdown, with Democrats under fierce pressure to oppose the measure.', 'https://bbc.com/news/articles/c7vzjrm5lm8o', 'https://ichef.bbci.co.uk/news/240/cpsprodpb/1e57/live/ee0b83d0-0132-11f0-8b30-2d8ea1c60785.jpg.webp', '2025-03-16 12:06:04', NULL, '2025-03-16 11:37:05', '2025-03-16 12:06:04'),
(78, 'BBC News', 'Latest audio', NULL, NULL, NULL, 'https://bbc.com/audio/play/p0kygcqf', 'https://ichef.bbci.co.uk/images/ic/160x90/p0d17xyt.jpg.webp', '2025-03-16 12:06:04', NULL, '2025-03-16 11:37:06', '2025-03-16 12:06:04'),
(79, 'BBC News', 'Latest audio', NULL, NULL, NULL, 'https://bbc.com/audio/play/p0kxq4cd', 'https://ichef.bbci.co.uk/images/ic/160x90/p0kxnkh5.jpg.webp', '2025-03-16 12:06:04', NULL, '2025-03-16 11:37:06', '2025-03-16 12:06:04'),
(80, 'BBC News', 'Latest audio', NULL, NULL, NULL, 'https://bbc.com/audio/play/p0ky8fcn', 'https://ichef.bbci.co.uk/images/ic/160x90/p0ky8ff2.jpg.webp', '2025-03-16 12:06:04', NULL, '2025-03-16 11:37:06', '2025-03-16 12:06:04'),
(81, 'BBC News', 'Latest audio', NULL, NULL, NULL, 'https://bbc.com/audio/play/p0ky6d8x', 'https://ichef.bbci.co.uk/images/ic/160x90/p0hqg7fh.jpg.webp', '2025-03-16 12:06:04', NULL, '2025-03-16 11:37:06', '2025-03-16 12:06:04'),
(82, 'BBC News', 'Latest audio', NULL, NULL, NULL, 'https://bbc.com/audio/play/p0ky82vx', 'https://ichef.bbci.co.uk/images/ic/160x90/p0ky83x5.jpg.webp', '2025-03-16 12:06:04', NULL, '2025-03-16 11:37:06', '2025-03-16 12:06:04'),
(83, 'BBC News', 'Latest audio', NULL, NULL, NULL, 'https://bbc.com/audio/play/p0kyd895', 'https://ichef.bbci.co.uk/images/ic/160x90/p0d17xyt.jpg.webp', '2025-03-16 12:06:04', NULL, '2025-03-16 11:37:06', '2025-03-16 12:06:04'),
(84, 'BBC News', 'Latest audio', NULL, NULL, NULL, 'https://bbc.com/audio/play/p0kyb0jl', 'https://ichef.bbci.co.uk/images/ic/160x90/p0d17xyt.jpg.webp', '2025-03-16 12:06:04', NULL, '2025-03-16 11:37:06', '2025-03-16 12:06:04'),
(85, 'BBC News', 'Latest audio', NULL, NULL, NULL, 'https://bbc.com/audio/play/p0ky339c', 'https://ichef.bbci.co.uk/images/ic/160x90/p0d17xyt.jpg.webp', '2025-03-16 11:39:04', NULL, '2025-03-16 11:37:06', '2025-03-16 11:39:04'),
(86, 'BBC News', 'Watch', NULL, 'Inside one of the world\'s most water-efficient cities', NULL, 'https://bbc.com/reel/video/p0kxwcd1/inside-one-of-the-world-s-most-water-efficient-cities', 'https://ichef.bbci.co.uk/images/ic/160x90/p0kxwhgk.jpg.webp', '2025-03-16 12:06:05', NULL, '2025-03-16 11:37:06', '2025-03-16 12:06:05'),
(87, 'BBC News', 'Discover more from the BBC', NULL, 'Subscribe to Football Extra', 'The latest news, insights and gossip from the Premier League, direct to your inbox every weekday from ex-player Pat Nevin and the wider BBC Sport squad.', 'https://bbc.comhttps://cloud.email.bbc.com/FootballExtra_Newsletter_Signup?&at_bbc_team=studios&at_medium=display&at_objective=acquisition&at_ptr_type=&at_ptr_name=bbc.comhp&at_format=Module&at_link_origin=homepage&at_campaign=footballextra&at_campaign_type=owned', 'https://ichef.bbci.co.uk/news/240/cpsprodpb/633B/production/_133530452_newsletter_football.jpg.webp', '2025-03-16 12:06:05', NULL, '2025-03-16 11:37:06', '2025-03-16 12:06:05'),
(88, 'BBC News', 'Discover more from the BBC', NULL, 'Download the BBC app', 'Click here to download the BBC app for Apple and Android devices.', 'https://bbc.comhttps://bbc-global.onelink.me/Ezi6/n4y4nlv7', 'https://ichef.bbci.co.uk/images/ic/raw/p0kd4xrj.png.webp', '2025-03-16 12:06:05', NULL, '2025-03-16 11:37:06', '2025-03-16 12:06:05'),
(89, 'BBC News', 'Discover more from the BBC', NULL, 'In History', 'Discover the headlines from this week in history. See the past come to life through the BBC\'s unique archive, in your inbox every Thursday.', 'https://bbc.comhttps://cloud.email.bbc.com/InHistory_newsletter_signup?&at_bbc_team=studios&at_medium=display&at_objective=acquisition&at_ptr_type=&at_ptr_name=bbc.comhp&at_format=Module&at_link_origin=homepage&at_campaign=inhistory&at_campaign_type=owned', 'https://ichef.bbci.co.uk/images/ic/1920x1080/p0hh6r6r.jpg.webp', '2025-03-16 12:06:05', NULL, '2025-03-16 11:37:06', '2025-03-16 12:06:05'),
(90, 'BBC News', 'Discover more from the BBC', NULL, 'Register for a BBC account', 'Don\'t have time to read everything right now? Your BBC account lets you save articles and videos for later.', 'https://bbc.comhttps://account.bbc.com/auth/register/email?ab=o13&action=register&clientId=Account&context=international&isCasso=false&nonce=ZhRJnl8N-Nzg4mlepfcUAP3WaQY2IhgqHUUw&ptrt=https%3A%2F%2Fwww.bbc.com%2F&realm=%2F&redirectUri=https%3A%2F%2Fsession.bbc.com%2Fsession%2Fcallback%3Frealm%3D%2F&sequenceId=afd616da-9f13-432d-a54d-95c9f32d1f0b&service=IdRegisterService&userOrigin=BBCS_BBC', 'https://ichef.bbci.co.uk/images/ic/raw/p0k21mq7.jpg.webp', '2025-03-16 12:06:05', NULL, '2025-03-16 11:37:06', '2025-03-16 12:06:05'),
(91, 'BBC News', 'Discover more from the BBC', NULL, 'Subscribe to the Essential List', 'The week’s best stories, handpicked by BBC editors, in your inbox every Tuesday and Friday.', 'https://bbc.comhttps://cloud.email.bbc.com/SignUp10_08?&at_bbc_team=studios&at_medium=display&at_objective=acquisition&at_ptr_type=&at_ptr_name=bbc.comhp&at_format=Module&at_link_origin=homepage&at_campaign=essentiallist&at_campaign_type=owned', 'https://ichef.bbci.co.uk/images/ic/1920x1080/p0h74xp9.jpg.webp', '2025-03-16 12:06:05', NULL, '2025-03-16 11:37:06', '2025-03-16 12:06:05'),
(92, 'BBC News', 'Discover more from the BBC', NULL, 'Sign up to News Briefing', 'News and expert analysis for every schedule. Get the morning and evening editions of our flagship newsletter in your inbox.', 'https://bbc.comhttps://cloud.email.bbc.com/bbcnewsignup2?&at_bbc_team=studios&at_medium=display&at_objective=acquisition&at_ptr_type=&at_ptr_name=bbc.comhp&at_format=Module&at_link_origin=homepage&at_campaign=newsbriefing&at_campaign_type=owned', 'https://ichef.bbci.co.uk/images/ic/1920x1080/p0h74xqs.jpg.webp', '2025-03-16 12:06:05', NULL, '2025-03-16 11:37:06', '2025-03-16 12:06:05'),
(93, 'New York Times', 'Briefing', '', 'The Rise of Women’s Basketball', 'Caitlin Clark helped push the sport to new highs. She didn’t do it alone.', 'https://www.nytimes.com/2025/03/16/briefing/womens-basketball.html', 'https://static01.nyt.com/images/2024/06/27/multimedia/16themorning-nl-womenssports/16themorning-nl-womenssports-thumbStandard-v2.jpg', '2025-03-16 06:47:21', '', '2025-03-16 11:37:08', '2025-03-16 11:37:08'),
(94, 'New York Times', 'World', 'By Amelia Nierenberg and Alisa Dogramadzieva', 'Nightclub Fire Kills at Least 59 in North Macedonia', 'The tragedy occurred after fireworks set the club’s roof on fire during a pop concert, the country’s interior minister said.', 'https://www.nytimes.com/2025/03/16/world/europe/north-macedonia-club-fire.html', 'https://static01.nyt.com/images/2025/03/16/world/16xp-clubfire-macedonia-still/16xp-clubfire-macedonia-still-thumbStandard.png', '2025-03-16 06:01:36', 'Europe', '2025-03-16 11:37:08', '2025-03-16 11:37:08'),
(95, 'New York Times', 'New York', 'By Jeffery C. Mays', 'Mayor Adams’s Biggest Backer in the State Capitol Endorses Cuomo', 'Rodneyse Bichotte Hermelyn, chairwoman of the Brooklyn Democratic Party, had been one of the mayor’s staunchest supporters.', 'https://www.nytimes.com/2025/03/16/nyregion/rodneyse-bichotte-hermelyn-cuomo-adams.html', 'https://static01.nyt.com/images/2025/03/13/multimedia/met-adams-brooklyn-dems-HFO-cwtv/met-adams-brooklyn-dems-HFO-cwtv-thumbStandard.jpg', '2025-03-16 06:00:04', '', '2025-03-16 11:37:08', '2025-03-16 11:37:08'),
(96, 'New York Times', 'Weather', 'By Amy Graff', 'Storm Risk Shifts to East Coast', 'Forecasters said there was a slight risk on Sunday of severe storms and tornadoes from Central Florida to western Pennsylvania. The weather system also spawned deadly tornadoes in the Midwest and South.', 'https://www.nytimes.com/2025/03/16/weather/tornado-storm-forecast-south.html', 'https://static01.nyt.com/images/2025/03/16/multimedia/16wea-tornadoforecast-vplq/16wea-tornadoforecast-vplq-thumbStandard-v2.jpg', '2025-03-16 05:20:34', '', '2025-03-16 11:37:08', '2025-03-16 11:37:08'),
(97, 'New York Times', 'En español', 'By Janelle Conaway', 'Sus marionetas gigantes bailan por las calles de San Miguel de Allende', 'Hermes Arroyo crea mojigangas, una versión del papel maché llamada cartonería que fue traída a México y sigue siendo popular.', 'https://www.nytimes.com/es/2025/03/16/espanol/cultura/mexico-san-miguel-allende-mojigangas.html', 'https://static01.nyt.com/images/2025/03/13/espanol/13sp-crafts-puppets-inyt-01-lbpk-ES-copy1/13sp-crafts-puppets-inyt-01-lbpk-thumbStandard.jpg', '2025-03-16 05:00:16', 'Cultura', '2025-03-16 11:37:08', '2025-03-16 11:37:08'),
(98, 'New York Times', 'Opinion', 'By Zeynep Tufekci', 'We Were Badly Misled About the Event That Changed Our Lives', 'The same dangerous mistakes. The same lack of candor.', 'https://www.nytimes.com/2025/03/16/opinion/covid-pandemic-lab-leak.html', 'https://static01.nyt.com/images/2025/03/17/multimedia/16tufekci-bqkj/16tufekci-bqkj-thumbStandard-v2.jpg', '2025-03-16 05:00:15', '', '2025-03-16 11:37:08', '2025-03-16 11:37:08'),
(99, 'New York Times', 'Opinion', 'By James Robinson', 'For So Many Children, This Is What Reading Feels Like', 'Republicans are trying to cut the resources that help struggling readers.', 'https://www.nytimes.com/2025/03/16/opinion/reading-children-disabilities.html', 'https://static01.nyt.com/images/2025/03/12/autossell/optok-reading-WordsGiveUpOnYou/optok-reading-WordsGiveUpOnYou-thumbStandard-v2.jpg', '2025-03-16 05:00:10', '', '2025-03-16 11:37:08', '2025-03-16 11:52:07'),
(100, 'New York Times', 'Opinion', 'By Rania Batrice and Libby Lenkinski', '‘No Other Land’ Won an Oscar. Many People Hope You Don’t See It.', 'Criticism of the documentary that chronicles West Bank violence is a microcosm of the conflict.', 'https://www.nytimes.com/2025/03/16/opinion/no-other-land-documentary-israel-gaza.html', 'https://static01.nyt.com/images/2025/03/16/opinion/16batricelenkinsi-image/16batricelenkinsi-image-thumbStandard.jpg', '2025-03-16 05:00:08', '', '2025-03-16 11:37:08', '2025-03-16 11:37:08'),
(101, 'New York Times', 'Gameplay', 'By New York Times Games', 'Wordle Review No. 1,367', 'Scroll down for hints and conversation about the puzzle for Monday, March 17, 2025.', 'https://www.nytimes.com/2025/03/16/crosswords/wordle-review-1367.html', 'https://static01.nyt.com/images/2025/03/16/crosswords/17wordle-review-art-1367/17wordle-review-art-1367-thumbStandard.png', '2025-03-16 05:00:02', '', '2025-03-16 11:37:08', '2025-03-16 11:37:08'),
(102, 'New York Times', 'Gameplay', 'By New York Times Games', 'Connections Companion No. 645', 'Scroll down for hints and conversation about the puzzle for Monday, March 17, 2025.', 'https://www.nytimes.com/2025/03/16/crosswords/connections-companion-645.html', 'https://static01.nyt.com/images/2025/03/16/crosswords/17connections-art-684/17connections-art-684-thumbStandard.jpg', '2025-03-16 05:00:02', '', '2025-03-16 11:37:08', '2025-03-16 11:37:08'),
(103, 'New York Times', 'World', 'By Ismaeel Naar and Saeed Al-Batati', 'Houthis Vow Retaliation Against U.S., Saying Yemen Strikes Killed at Least 31', 'The Iran-backed rebels, who have targeted Israel and shipping in the Red Sea, said children were among those killed in the strikes ordered by President Trump.', 'https://www.nytimes.com/2025/03/16/world/middleeast/houthis-us-airstrikes-yemen-response.html', 'https://static01.nyt.com/images/2025/03/16/multimedia/16int-yemen-houthis-cpmk/16int-yemen-houthis-cpmk-thumbStandard.jpg', '2025-03-16 04:46:21', 'Middle East', '2025-03-16 11:37:08', '2025-03-16 11:37:08'),
(104, 'New York Times', 'En español', 'By Simon Romero and Paulina Villegas', 'Cómo las drásticas tácticas de Trump están reduciendo los cruces fronterizos', 'Basándose en las políticas de la era Biden, el presidente Trump está intimidando a líderes regionales, desplegando la fuerza militar y destruyendo décadas de precedentes en lo que respecta a la frontera entre Estados Unidos y México.', 'https://www.nytimes.com/es/2025/03/16/espanol/america-latina/trump-mexico-frontera.html', 'https://static01.nyt.com/images/2025/03/16/espanol/16int-mexico-migration-01-hbjc-ES-copy1/16int-mexico-migration-01-hbjc-thumbStandard.jpg', '2025-03-16 04:10:04', 'América Latina', '2025-03-16 11:37:08', '2025-03-16 11:37:08'),
(105, 'New York Times', 'Magazine', 'By Lulu Garcia-Navarro', '‘I Had to Do What I Had to Do​’: Excerpts ​From ​The Interview ​With Chuck Schumer', 'The day after angering many Democrats’ by backing a Republican spending bill, Schumer argued that he can still lead his party in the Senate, even amid furious backlash.', 'https://www.nytimes.com/2025/03/16/magazine/chuck-schumer-interviews-takeaways.html', 'https://static01.nyt.com/images/2025/03/15/multimedia/Schumer-Interview-takeaways-qfwm/Schumer-Interview-takeaways-qfwm-thumbStandard.jpg', '2025-03-16 04:01:56', '', '2025-03-16 11:37:08', '2025-03-16 11:37:08'),
(106, 'New York Times', 'En español', 'By Dani Blum, Nina Agrawal and Saurabh Datar', 'Dr. Oz se hizo famoso dando consejos de salud. ¿Eran buenos?', 'Evaluamos las afirmaciones del médico que podría dirigir los Centros de Servicios de Medicare y Medicaid sobre probióticos, pérdida de peso, salud cardiaca y más.', 'https://www.nytimes.com/es/2025/03/16/espanol/dr-oz-consejos-salud-falso-verdadero.html', 'https://static01.nyt.com/images/2025/03/08/well/08WELL-OZ-PREVENTION-illo/08WELL-OZ-PREVENTION-illo-thumbStandard-v2.jpg', '2025-03-16 04:01:53', '', '2025-03-16 11:37:08', '2025-03-16 11:37:08'),
(107, 'New York Times', 'Business', 'By Joe Rennison', 'President Trump Is Making Foreign Stocks Great Again', 'For years, the S&P 500 soared above the stock indexes of other countries. But since Trump’s inauguration, it has fallen 6 percent and is now trailing major markets in Europe and China.', 'https://www.nytimes.com/2025/03/16/business/trump-sp-500-stocks-europe-china.html', 'https://static01.nyt.com/images/2025/03/14/multimedia/2025-03-14-stocks-since-inauguration-index/2025-03-14-stocks-since-inauguration-index-thumbStandard.png', '2025-03-16 04:01:52', '', '2025-03-16 11:37:08', '2025-03-16 11:37:08'),
(108, 'New York Times', 'En español', 'By Will Heinrich', 'El Jardín Botánico de Nueva York rebosa de orquídeas', 'La exposición busca conciliar el estilo de líneas limpias y superficies mínimas del arquitecto mexicano Luis Barragán con el vistoso esplendor de una de las plantas más cultivadas del mundo.', 'https://www.nytimes.com/es/2025/03/16/espanol/cultura/orquideas-barragan-jardin-botanico-nueva-york.html', 'https://static01.nyt.com/images/2025/03/14/espanol/13orchid-show-botanical-garden-01-mtfb-ES-copy1/13orchid-show-botanical-garden-01-mtfb-thumbStandard.jpg', '2025-03-16 04:01:48', 'Cultura', '2025-03-16 11:37:08', '2025-03-16 11:37:08'),
(109, 'New York Times', 'En español', 'By Carlos Aguilar and Daniel Dorsa', 'Él es la voz de Porky… y eso no es todo, amigos', 'El actor de voz Eric Bauza da vida al Pato Lucas, Bugs Bunny y muchos personajes más. Su trabajo aparece en el nuevo largometraje animado “El día que la Tierra explotó: Una película de Looney Tunes”.', 'https://www.nytimes.com/es/2025/03/16/espanol/cultura/looney-tunes-voz-eric-bauza.html', 'https://static01.nyt.com/images/2025/03/16/espanol/16LOONEY-TUNES-VOICE-02-pmql-ES-copy1/16LOONEY-TUNES-VOICE-02-pmql-thumbStandard.jpg', '2025-03-16 04:01:46', 'Cultura', '2025-03-16 11:37:08', '2025-03-16 11:37:08'),
(110, 'New York Times', 'World', 'By Simon Romero and Paulina Villegas', 'How Trump’s Hard-Line Tactics Are Driving Down Migration', 'Building on Biden-era policies, President Trump is strong-arming regional leaders, deploying military force and shredding decades of precedents when it comes to the U.S.-Mexico border.', 'https://www.nytimes.com/2025/03/16/world/americas/mexico-trump-migration.html', 'https://static01.nyt.com/images/2025/03/16/multimedia/16int-mexico-migration-01-hbjc/16int-mexico-migration-01-hbjc-thumbStandard.jpg', '2025-03-16 04:01:05', 'Americas', '2025-03-16 11:37:08', '2025-03-16 11:37:08'),
(111, 'New York Times', 'Business', 'By Lawrence Ulrich', 'Conservatives’ Tesla Rescue Mission Has Its Work Cut Out', 'President Trump rallied support for Elon Musk’s car company, but there may not be enough conservatives willing to buy electric cars to make up for the Democrats who now shun Teslas.', 'https://www.nytimes.com/2025/03/16/business/elon-musk-trump-tesla-conservatives.html', 'https://static01.nyt.com/images/2025/03/14/multimedia/00tesla-buyers-01-vgqj/00tesla-buyers-01-vgqj-thumbStandard.jpg', '2025-03-16 04:01:05', '', '2025-03-16 11:37:08', '2025-03-16 11:37:08'),
(112, 'New York Times', 'Business', 'By Danielle Kaye', 'Ride Out the Market Turmoil? Not These Investors.', 'Some people are shifting their investment strategies as the stock market sours on President Trump, despite advice to maintain their savings and wait out the angst.', 'https://www.nytimes.com/2025/03/16/business/stock-market-investments-retirement.html', 'https://static01.nyt.com/images/2025/03/16/multimedia/16Biz-Stocks-Savings-1-lkvf/16Biz-Stocks-Savings-1-lkvf-thumbStandard.jpg', '2025-03-16 04:00:58', '', '2025-03-16 11:37:08', '2025-03-16 11:37:08'),
(113, 'BBC News', 'Latest', NULL, NULL, NULL, 'https://bbc.com/audio/play/p0kyjcrz', 'https://ichef.bbci.co.uk/images/ic/160x90/p0ks8w6j.jpg.webp', '2025-03-16 12:06:04', NULL, '2025-03-16 11:40:04', '2025-03-16 12:06:04'),
(114, 'BBC News', 'Business', NULL, 'Trump silences Voice of America as staff put on leave', 'More than 1,300 staff including journalists and producers have been put on administrative leave.', 'https://bbc.com/news/articles/cvge4l109r3o', 'https://ichef.bbci.co.uk/news/240/cpsprodpb/2ab1/live/77ae5820-0227-11f0-a266-535342915d40.png.webp', '2025-03-16 11:52:04', NULL, '2025-03-16 11:41:04', '2025-03-16 11:52:04');
INSERT INTO `news` (`id`, `source`, `category`, `author`, `title`, `description`, `url`, `urlToImage`, `published_at`, `content`, `created_at`, `updated_at`) VALUES
(115, 'New York Times', 'World', 'By Constant Méheut, Marc Santora and Yurii Shyvala', 'Ukraine Retreats From All but a Sliver of Land in Russia’s Kursk Region', 'The daring campaign Ukraine launched last summer to seize and occupy Russian territory appears to be nearing an end.', 'https://www.nytimes.com/2025/03/16/world/europe/kursk-russia-ukraine.html', 'https://static01.nyt.com/images/2025/03/16/multimedia/16kursk-ukraine-lfwc/16kursk-ukraine-lfwc-thumbStandard.jpg', '2025-03-16 07:34:23', 'Europe', '2025-03-16 11:52:07', '2025-03-16 11:52:07'),
(116, 'New York Times', 'Business', 'By Keith Bradsher', 'Facing Trump Tariffs, China Outlines Plan to Bolster the Economy', 'Beijing’s leaders are ordering fiscally strapped local governments to spend more to help workers, consumers and businesses.', 'https://www.nytimes.com/2025/03/16/business/china-consumption.html', 'https://static01.nyt.com/images/2025/03/16/multimedia/16biz-China-Econ-gpvk/16biz-China-Econ-gpvk-thumbStandard.jpg', '2025-03-16 07:22:33', '', '2025-03-16 11:52:07', '2025-03-16 11:52:07'),
(117, 'BBC News', 'Arts', NULL, 'How our noisy world is seriously damaging our health', 'The BBC\'s James Gallagher investigates the invisible killer all around us.', 'https://bbc.com/news/articles/crmjdm2m4yjo', 'https://ichef.bbci.co.uk/news/240/cpsprodpb/26b8/live/78428040-ff52-11ef-8d6c-67b817afd0fe.jpg.webp', '2025-03-16 12:06:05', NULL, '2025-03-16 11:53:04', '2025-03-16 12:06:05'),
(118, 'BBC News', 'Video', NULL, 'The stunning car-free village reached by cable car', 'Throughout history, this medieval hamlet has remained relatively secluded from the outside world. But now, the world\'s steepest cable car whisks travellers to the 430-person village.', 'https://bbc.com/travel/article/20250314-murren-the-stunning-car-free-village-reached-by-cable-car', 'https://ichef.bbci.co.uk/images/ic/160x90/p0ky887p.jpg.webp', '2025-03-16 12:06:05', NULL, '2025-03-16 12:03:04', '2025-03-16 12:06:05');

-- --------------------------------------------------------

--
-- Table structure for table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `token` varchar(64) NOT NULL,
  `abilities` text DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(255) NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) DEFAULT NULL,
  `user_agent` text DEFAULT NULL,
  `payload` longtext NOT NULL,
  `last_activity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sessions`
--

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('DvpXzGZX5Dl7N3hhJ988xDjCRT8E2IzBw7WucXQz', NULL, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/134.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoicEJHVVBXR21iRm9laVpaN0d5aDRkWkdTcnZhOXEwYUwyekpkSTM2NCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NjA6Imh0dHA6Ly9sb2NhbGhvc3QvaW5ub3NjcmlwdGFWMTEvbmV3cz9hdXRob3I9QWxleGFuZHJhJTIwS29jaCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1742129409);

-- --------------------------------------------------------

--
-- Table structure for table `users`
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cache`
--
ALTER TABLE `cache`
  ADD PRIMARY KEY (`key`);

--
-- Indexes for table `cache_locks`
--
ALTER TABLE `cache_locks`
  ADD PRIMARY KEY (`key`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `jobs_queue_index` (`queue`);

--
-- Indexes for table `job_batches`
--
ALTER TABLE `job_batches`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `news`
--
ALTER TABLE `news`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `news_url_unique` (`url`) USING HASH;

--
-- Indexes for table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `news`
--
ALTER TABLE `news`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=119;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
