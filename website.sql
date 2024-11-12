-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 07, 2024 at 10:00 PM
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
-- Database: `website`
--

-- --------------------------------------------------------

--
-- Table structure for table `about_pages`
--

CREATE TABLE `about_pages` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `setup_growth` varchar(255) DEFAULT NULL,
  `problem_solving` varchar(255) DEFAULT NULL,
  `passive_income` varchar(255) DEFAULT NULL,
  `goal_achiever` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `about_pages`
--

INSERT INTO `about_pages` (`id`, `title`, `description`, `image`, `phone`, `setup_growth`, `problem_solving`, `passive_income`, `goal_achiever`, `created_at`, `updated_at`) VALUES
(1, 'Finacial Management', 'he jobs report soundly beat expectations, with job gains broadly spread across the economy and about 60% higher he jobs report soundly beat expectations, with job gains broadly spread across the economy and about 60% \r\n\r\nhigher he jobs report soundly beat expectations, with job gains broadly spread across the economy and about 60% higher he jobs report soundly beat expectations, with job gains broadly spread across the economy and about 60% higher he jobs report soundly beat expectations, with job gains broadly spread across the economy and about 60% higher', 'upload/about/1814540821149599.png', '5656-465-455', '2.5', '1.9', '201', '15', NULL, '2024-11-01 12:11:27');

-- --------------------------------------------------------

--
-- Table structure for table `blog_categories`
--

CREATE TABLE `blog_categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `blog_category` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `blog_categories`
--

INSERT INTO `blog_categories` (`id`, `blog_category`, `slug`, `created_at`, `updated_at`) VALUES
(7, 'Productivity', 'productivity', '2024-11-03 14:39:01', '2024-11-03 14:39:01'),
(8, 'Business growth', 'business-growth', '2024-11-03 14:39:08', '2024-11-03 14:39:08'),
(9, 'Product Platform', 'product-platform', '2024-11-03 14:39:25', '2024-11-03 14:39:38'),
(10, 'Company updates', 'company-updates', '2024-11-03 14:39:47', '2024-11-03 14:39:47'),
(11, 'Remote work', 'remote-work', '2024-11-03 14:39:54', '2024-11-03 14:39:54');

-- --------------------------------------------------------

--
-- Table structure for table `blog_posts`
--

CREATE TABLE `blog_posts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `blogcat_id` int(11) NOT NULL,
  `post_title` varchar(255) DEFAULT NULL,
  `post_slug` varchar(255) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `long_descp` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `blog_posts`
--

INSERT INTO `blog_posts` (`id`, `blogcat_id`, `post_title`, `post_slug`, `image`, `long_descp`, `created_at`, `updated_at`) VALUES
(4, 7, 'Spreadsheets aren\'t databases stop using them like one', 'spreadsheets-aren\'t-databases-stop-using-them-like-one', 'upload/blog/1814735335496443.jpeg', '<h3><strong>Spreadsheets show you everything, all the time</strong></h3><p>Open a spreadsheet, and you will see&nbsp;<em>everything</em>—at least, everything on the current worksheet. This is great, sometimes, until your dataset grows too much and your computer grinds to a halt. Assuming you don\'t own a supercomputer, this will happen long before you hit the limits outlined above—especially if you have a bunch of formulas and scripts running.</p><p>Databases, meanwhile, store data behind the scenes. They will only load what you need when you request it, meaning you won\'t hear your laptop\'s fan whirring every time you need to pull up a specific record. If you\'re past the point of being able to get anything valuable out of looking at your sheet, you should probably set up a database for the job.</p>', '2024-11-03 14:41:20', '2024-11-03 14:41:20'),
(5, 7, 'Software is trying to change your habits', 'software-is-trying-to-change-your-habits', 'upload/blog/1814735375014654.jpeg', '<p>Malls are intentionally confusing, a sort of modern labyrinth. The idea is you\'ll get lost, see some random stuff you don\'t need, then spend money on said stuff. It\'s called the&nbsp;<a href=\"https://99percentinvisible.org/episode/the-gruen-effect/\" target=\"_blank\" style=\"background-color: unset; color: var(--zds-text-link, #3d4592);\">Gruen transfer</a>, and it\'s just one example of design choices specifically made to change your behavior.</p><p>Another example: grocery store shelves. You might think some employee arranges cereal boxes as they come in, but each placement is the result of a ridiculously&nbsp;<a href=\"https://www.npr.org/transcripts/718711109\" target=\"_blank\" style=\"background-color: unset; color: var(--zds-text-link, #3d4592);\">complicated series of negotiations</a>. Food companies pay grocery stores a lot of money so their products are at eye level because, statistically, you\'re likely to grab whatever\'s right in front of your face. This is why store brands are frequently on the bottom shelf.</p><p>The physical world is full of design choices like this—seemingly random decisions that are actually made with intention, because of a specific agenda. Software isn\'t any different.</p>', '2024-11-03 14:41:58', '2024-11-03 14:41:58'),
(6, 8, 'Customer journey mapping 101', 'customer-journey-mapping-101', 'upload/blog/1814735427808445.jpg', '<p>A customer journey map is a visual representation of the grand journey your customer takes from awareness to prospective buyer to&nbsp;<a href=\"https://zapier.com/blog/boost-customer-loyalty-with-automation/\" target=\"_blank\" style=\"background-color: unset; color: var(--zds-text-link, #3d4592);\"><u>loyal and devoted customer</u></a>. This journey may take many twists and turns, through the hedges of social media to the fires of Mount Sales—but with a customer journey map, you\'ll never have to wonder where you (or your customer) will end up.</p><p>The customer journey is split into two parts: the buyer journey and the user journey. The buyer journey covers everything up to the point of purchase. After that point, the customer becomes a user, and all of their experiences are part of the user journey.&nbsp;</p><p><strong>Grow your business with marketing automation</strong></p><p><a href=\"https://zapier.com/blog/marketing-automation-use-cases/\" target=\"_blank\" style=\"background-color: unset; color: unset;\">Learn how</a></p><p>Think back to any recent purchase of your own, and try to trace your own customer journey:</p><ul><li>When and where was your first contact with the product or service?</li><li>How many channels of communication with the company did you have available?</li><li>How was the contact you had, if any? Was it personal or formulaic?</li><li>Were your problems, if any, solved? If so, were they solved in a timely manner?</li><li>What do you now know about the brand besides the product or service itself?</li></ul><p>Of course, every customer is different. But you can\'t create a customer journey map for every individual—and you don\'t need to. Instead, you can&nbsp;<a href=\"https://zapier.com/blog/market-segmentation-and-personas/\" target=\"_blank\" style=\"background-color: unset; color: var(--zds-text-link, #3d4592);\"><u>segment your audience</u></a>&nbsp;into customer personas and create a map for each.</p>', '2024-11-03 14:42:48', '2024-11-03 14:42:48'),
(7, 8, 'What is business process management', 'what-is-business-process-management', 'upload/blog/1814735450505220.webp', '<p>My first job after college was for a highly disorganized digital marketing agency. On my first day, I was greeted with pure chaos—my manager wasn\'t even in the office when I arrived. For the first hour, I sat twiddling my thumbs and refreshing my email to see if any direction had come from above. With no processes in place, I was left to fend for myself and annoy my new coworkers with a million questions (if and when they were at their desks).</p><p>As my experience made glaringly obvious, business process management is crucial for just about every organization. In this guide, I\'ll break down the concept and provide tangible examples of ways you can apply it to your business.</p>', '2024-11-03 14:43:10', '2024-11-03 14:43:10'),
(8, 8, 'What is share of voice And how to calculate it', 'what-is-share-of-voice-and-how-to-calculate-it', 'upload/blog/1814735478298197.webp', '<p>Impressions, clicks, views, shares, and branded search volume—these are just some of the numbers you can track to understand how well your marketing campaigns are performing. What they don\'t tell you is how your brand stacks up relative to your competition.&nbsp;</p><p>As the founder of&nbsp;<a href=\"https://accelerate.agency/\" target=\"_blank\" style=\"background-color: unset; color: rgb(61, 69, 146);\">accelerate agency</a>, I\'ve been helping companies across the world grow their brand for almost a decade. One thing I often recommend clients do when gathering competitive intelligence is look at their share of voice. It puts all of your key metrics into context, giving you a deeper understanding of where your brand stands&nbsp;in your industry.</p>', '2024-11-03 14:43:36', '2024-11-03 14:43:36'),
(9, 9, 'Dozens of little updates that make work', 'dozens-of-little-updates-that-make-work', 'upload/blog/1814735520690370.jpg', '<p>Every day, millions of tasks run through Zapier. Each one represents a moment saved, a process improved, or a goal achieved.&nbsp;</p><p>At Zapier, we ship fast to get lots of cool new things to users as quickly as possible. But as designers, we couldn\'t help but notice that quality sometimes fell behind—from slow load times and jumpy transitions to disconnected workflows and unnecessary clicks. We\'d been shipping, shipping, shipping without making enough time to polish.</p><p>While we love shipping new features that help you do more, you\'ve consistently reminded us that it\'s often the smallest improvements that make you feel truly unstoppable. A clearer error message. A smoother page load. A smarter way to organize your interface. These moments of polish show care—both for the product we\'re building and the people who use it.</p>', '2024-11-03 14:44:17', '2024-11-03 14:44:17'),
(10, 9, 'How our new NetSuite integration transforms financial', 'how-our-new-netsuite-integration-transforms-financial', 'upload/blog/1814735554687429.jpg', '<h2>Enterprise-grade automation&nbsp;<em>without</em>&nbsp;coding or IT support</h2><p>Manually taking care of financial tasks is repetitive. But worse, it can create bottlenecks that cascade into bigger problems—like inconsistent data across platforms, reporting and decision-making delays, and overall operational inefficiencies. All of which spells a slow, impersonalized experience for your customers.</p><p>With Zapier\'s NetSuite integration, you can address these challenges head-on and automate crucial financial operations with these powerful, time-saving features:</p><ul><li><strong>Real-time data updates&nbsp;</strong>—<strong>&nbsp;</strong>Enjoy consistent data across all your systems (and far fewer errors).</li><li><strong>Automated invoice management&nbsp;</strong>—<strong>&nbsp;</strong>Create and send invoices in just a few clicks, speeding up processing times and improving cash flow.</li><li><strong>Streamlined accounts receivable and payable&nbsp;</strong>—<strong>&nbsp;</strong>Record your customer payments, credit memos, and refunds on autopilot for stress-free vendor bill management and reconciliation.</li><li><strong>Efficient expense tracking and financial reporting&nbsp;</strong>—<strong>&nbsp;</strong>Spend less time on expense reports and gain real-time, accurate visibility into your financial performance.</li></ul><p><br></p>', '2024-11-03 14:44:49', '2024-11-03 14:44:49'),
(11, 10, 'Meet Zapier’s 2024 Zappy Awards winners', 'meet-zapier’s-2024-zappy-awards-winners', 'upload/blog/1814735618086055.webp', '<p>The winner of the Tech Innovator of the Year award is&nbsp;<a href=\"https://www.linkedin.com/in/nasim-obeid/\" target=\"_blank\" style=\"background-color: unset; color: var(--zds-text-link, #3d4592);\"><u>Nasim Obeid</u></a>, Director of Engineering and Data Analytics at&nbsp;<a href=\"https://www.upfrontinc.com/\" target=\"_blank\" style=\"background-color: unset; color: var(--zds-text-link, #3d4592);\"><u>Upfront</u></a>.</p><p>Upfront\'s admissions reps were struggling to easily access call transcripts within their current tech stack. So Nasim created a workflow using Zapier, ChatGPT, and UiPath to extract and display call transcripts in TigerConnect, the company’s preferred communication platform. Now, empowered with the info they need, Upfront\'s reps can provide quicker service.</p><p>The winner of the Top Sales Professional of the Year award is&nbsp;<a href=\"https://www.linkedin.com/in/theamber-sharp/\" target=\"_blank\" style=\"background-color: unset; color: var(--zds-text-link, #3d4592);\"><u>Amber Sharp</u></a>, Business Development Executive at&nbsp;<a href=\"https://tivly.com/\" target=\"_blank\" style=\"background-color: unset; color: var(--zds-text-link, #3d4592);\"><u>Tivly</u></a>.</p><p><br></p><p>Amber has used Zapier to streamline critical prospecting and onboarding processes, along with other repetitive day-to-day tasks. She\'s automated everything from drip campaigns to personalized prospecting emails and referrals. Her workflows increased units purchased by 30% in the last year—and she now has more time to focus on growing in her role.</p><h2> </h2><p><br></p>', '2024-11-03 14:45:50', '2024-11-03 14:45:50'),
(12, 10, 'Introducing the Zappy Awards', 'introducing-the-zappy-awards', 'upload/blog/1814735876719793.webp', '<p>Each year, Zapier users automate more than 24 billion tasks, and their innovative workflows are completely reimagining the way we work. To celebrate the people behind this magic, we’re launching Zapier’s first-ever customer awards, the Zappys!&nbsp;</p><p>We want to hear all about the innovative Zaps and workflows you’ve built that leave your team wondering if you’re actually a wizard.&nbsp;</p><p>The winner of the Tech Innovator of the Year award is&nbsp;<a href=\"https://www.linkedin.com/in/nasim-obeid/\" target=\"_blank\" style=\"background-color: unset; color: var(--zds-text-link, #3d4592);\"><u>Nasim Obeid</u></a>, Director of Engineering and Data Analytics at&nbsp;<a href=\"https://www.upfrontinc.com/\" target=\"_blank\" style=\"background-color: unset; color: var(--zds-text-link, #3d4592);\"><u>Upfront</u></a>.</p><p><br></p><p>Upfront\'s admissions reps were struggling to easily access call transcripts within their current tech stack. So Nasim created a workflow using Zapier, ChatGPT, and UiPath to extract and display call transcripts in TigerConnect, the company’s preferred communication platform. Now, empowered with the info they need, Upfront\'s reps can provide quicker service.</p>', '2024-11-03 14:49:56', '2024-11-03 14:49:56'),
(13, 11, 'Don\'t work more when you work from home', 'don\'t-work-more-when-you-work-from-home', 'upload/blog/1814735919284769.webp', '<p>\"Find a job you love, and you will never work a day in your life\" is nonsense. I love writing. That doesn\'t mean that writing isn\'t work. That doesn\'t mean I\'m excited to start every day. And that doesn\'t mean I don\'t get burnt out.</p><p>And, honestly, if anything, loving your job means working&nbsp;<em>more</em>. It\'s harder to check out at 5:00 p.m. when you actually care, which makes it way too easy to just keep working. The quote should probably be \"Find a job you love, and you\'ll work constantly, neglect your relationships, and also probably have poor hygiene.\" (Someone please stitch that on a pillow.)</p><p>It\'s easy to imagine that remote work will help with work-life balance because you can stop working whenever you want. But there\'s a flip side: you can&nbsp;<em>start</em>&nbsp;working whenever you want. It turns out people do that, a lot. Bloomberg recently reported that people who started working from home in March&nbsp;<a href=\"https://www.bloomberg.com/news/articles/2020-04-23/working-from-home-in-covid-era-means-three-more-hours-on-the-job\" target=\"_blank\" style=\"background-color: unset; color: var(--zds-text-link, #3d4592);\">are working three hours more per day than before</a>. This isn\'t new: Fast Company reported on this&nbsp;<a href=\"https://www.fastcompany.com/3067389/working-from-home-usually-means-longer-hours-for-less-money\" target=\"_blank\" style=\"background-color: unset; color: var(--zds-text-link, #3d4592);\">years before social distancing</a>.</p><p>So: why do people work longer hours at home? I think it\'s the blurring of boundaries. It\'s harder to stop working at 5:00 p.m. when the place you work is also the place you live. There\'s also not really a clear end-of-the-work day because there\'s no commute home.</p><p>Whatever the reason, this is a problem.&nbsp;<a href=\"https://zapier.com/blog/achieving-work-life-balance/\" target=\"_blank\" style=\"background-color: unset; color: var(--zds-text-link, #3d4592);\">Work-life balance is hard</a>, but we can all agree that working constantly isn\'t healthy. You need to separate the work day from the rest of your life, even if there\'s no external routine forcing that change, or you\'re going to burn out. I\'ve been working from home for over a decade. I work for an entirely remote team of over 300 people. If there\'s one thing I can share with you about remote work, it\'s this:&nbsp;<strong>don\'t work more because you\'re working from home</strong>. Use the flexibility to bring more balance to your life, not less.</p>', '2024-11-03 14:50:37', '2024-11-03 14:50:37'),
(14, 11, 'How calls with random coworkers make remote', 'how-calls-with-random-coworkers-make-remote', 'upload/blog/1814735941709382.jpg', '<p>There\'s not a lot of serendipity on remote teams. You don\'t run into coworkers in the hallway, will never chat casually in the break room, and can\'t say good morning as you walk past someone\'s desk. Every interaction is intentional: you, or the other person, need to reach out.</p><p>But reaching out to someone you don\'t know feels weird, so most people simply don\'t do it. That\'s a problem, and not only because coworkers can feel isolated from each other. It also means there\'s not a lot of spontaneous cross-pollination. That can limit the kinds of ideas that spread through a company, and can lead to different departments feeling like silos.</p><p>Which is why it\'s important to&nbsp;<em>introduce</em>&nbsp;some serendipity, strange as that may sound.&nbsp;<a href=\"https://zapier.com/blog/remote-brainstorming/\" target=\"_blank\" style=\"background-color: unset; color: var(--zds-text-link, #3d4592);\">You shouldn\'t build a company around chance encounters</a>, but you also shouldn\'t ignore how valuable they can be. Here\'s how we balance things at Zapier—and how it\'s worked out for us.</p>', '2024-11-03 14:50:58', '2024-11-03 14:50:58');

-- --------------------------------------------------------

--
-- Table structure for table `cache`
--

CREATE TABLE `cache` (
  `key` varchar(255) NOT NULL,
  `value` mediumtext NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cache`
--

INSERT INTO `cache` (`key`, `value`, `expiration`) VALUES
('user@gmail.com|127.0.0.1', 'i:1;', 1730210619),
('user@gmail.com|127.0.0.1:timer', 'i:1730210619;', 1730210619),
('user@gmail.coma|127.0.0.1', 'i:1;', 1730154484),
('user@gmail.coma|127.0.0.1:timer', 'i:1730154484;', 1730154484);

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
-- Table structure for table `contact_pages`
--

CREATE TABLE `contact_pages` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `subject` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `message` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `contact_pages`
--

INSERT INTO `contact_pages` (`id`, `name`, `subject`, `email`, `message`, `created_at`, `updated_at`) VALUES
(4, 'Raju', 'I need some help', 'raju@gmail.com', 'I need your number', '2024-11-07 14:54:19', '2024-11-07 14:54:19'),
(5, 'Kazi', 'I need your number', 'kazi@gmail.com', 'hello i need your number its urgent', '2024-11-07 14:56:11', '2024-11-07 14:56:11');

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
-- Table structure for table `gatewayones`
--

CREATE TABLE `gatewayones` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `description` text DEFAULT NULL,
  `image` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `gatewayones`
--

INSERT INTO `gatewayones` (`id`, `title`, `phone`, `description`, `image`, `created_at`, `updated_at`) VALUES
(1, 'Payment Gateway Services', '565 899 666', 'Get personalized financial advice to help reach your financial goals.Get personalized financial advice to help reach your financial goals.', 'upload/gateway/1814922438583562.webp', NULL, '2024-11-05 16:15:16');

-- --------------------------------------------------------

--
-- Table structure for table `gate_way_twos`
--

CREATE TABLE `gate_way_twos` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` text DEFAULT NULL,
  `project` varchar(255) NOT NULL,
  `review` varchar(255) NOT NULL,
  `exerience` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `gate_way_twos`
--

INSERT INTO `gate_way_twos` (`id`, `title`, `description`, `project`, `review`, `exerience`, `image`, `created_at`, `updated_at`) VALUES
(1, 'Payment Gateway Services', 'Get personalized financial advice to help reach your financial goals.Get personalized financial advice to help reach your financial goals.', '3', '4.8', '9', 'upload/gateway/1814923319079279.webp', NULL, '2024-11-05 16:29:16');

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
(4, '2024_10_30_122728_create_sliders_table', 2),
(5, '2024_10_30_222402_create_services_table', 3),
(6, '2024_10_31_101506_create_gatewayones_table', 4),
(7, '2024_10_31_104518_create_gate_way_twos_table', 5),
(8, '2024_10_31_113543_create_testimonials_table', 6),
(9, '2024_10_31_164759_create_blog_categories_table', 7),
(10, '2024_10_31_210952_create_blog_posts_table', 8),
(11, '2024_11_01_110204_create_site_settings_table', 9),
(12, '2024_11_01_164255_create_about_pages_table', 10),
(13, '2024_11_01_184713_create_contact_pages_table', 11),
(14, '2024_11_04_200430_create_personal_access_tokens_table', 12);

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
-- Table structure for table `services`
--

CREATE TABLE `services` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `service_name` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `service_short` text DEFAULT NULL,
  `service_desc` text DEFAULT NULL,
  `icon` varchar(255) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `services`
--

INSERT INTO `services` (`id`, `service_name`, `slug`, `service_short`, `service_desc`, `icon`, `image`, `created_at`, `updated_at`) VALUES
(1, 'Cryptocurrency Trading', 'cryptocurrency-trading', 'Get personalized financial advice to help reach your financial goals.', '<p>Last time Donald Trump was president, Israel’s prime minister was so pleased, he named a community after him.</p><p>Trump Heights is an isolated cluster of pre-fabricated houses in the rocky, mine-strewn landscape of the Golan Heights, a soaring eagle-and-menorah statue guarding the entrance gate. Mauve mountain peaks jut into the azure sky at the horizon.</p><p>This was Trump’s reward for upending half a century of US policy – and wide international consensus – by recognising Israel’s territorial claims to the Golan, captured from Syria in the 1967 war, and later unilaterally annexed.</p><p>The question for residents there – two dozen families and a few billeted soldiers – is what impact Republican candidate Trump or his Democratic rival Kamala Harris might have on Israel’s interests in the region now.</p><p>Elik Goldberg and his wife Hodaya moved to Trump Heights with their four children for the security of a small rural community.</p><p>Since the 7 October Hamas attacks in southern Israel last year, they’ve watched Israel’s war with Hezbollah, a Hamas ally, escalate along the northern border with Lebanon, 10 miles away from them.</p><p>“For the last year, our beautiful green open space has a lot of smoke, and our lovely view is a view of rockets that Hezbollah is sending to us,” said Elik. “This is a war zone and we don’t know when it will end.”</p>', 'icon-coin-chair', 'upload/service/1814730713866260.webp', '2024-10-31 03:31:49', '2024-11-03 13:27:53'),
(2, 'Portfolio Management', 'portfolio-management', '11Get personalized financial advice to help reach your financial goals.', '<p>11Last time Donald Trump was president, Israel’s prime minister was so pleased, he named a community after him.</p><p>Trump Heights is an isolated cluster of pre-fabricated houses in the rocky, mine-strewn landscape of the Golan Heights, a soaring eagle-and-menorah statue guarding the entrance gate. Mauve mountain peaks jut into the azure sky at the horizon.</p><p>This was Trump’s reward for upending half a century of US policy – and wide international consensus – by recognising Israel’s territorial claims to the Golan, captured from Syria in the 1967 war, and later unilaterally annexed.</p><p>The question for residents there – two dozen families and a few billeted soldiers – is what impact Republican candidate Trump or his Democratic rival Kamala Harris might have on Israel’s interests in the region now.</p><p>Elik Goldberg and his wife Hodaya moved to Trump Heights with their four children for the security of a small rural community.</p><p>Since the 7 October Hamas attacks in southern Israel last year, they’ve watched Israel’s war with Hezbollah, a Hamas ally, escalate along the northern border with Lebanon, 10 miles away from them.</p><p>“For the last year, our beautiful green open space has a lot of smoke, and our lovely view is a view of rockets that Hezbollah is sending to us,” said Elik. “This is a war zone and we don’t know when it will end.”</p>', 'icon-hand-tick', 'upload/service/1814730704988171.jpg', '2024-10-31 03:32:52', '2024-11-03 13:27:45'),
(4, 'Investment Advice', 'investment-advice', 'Our team of experienced advisors will guide you in making informed investment, whether you\'re a beginner trader.', '<p>“If you saw that, you will take one of the big cities around here and say, \'Well, we will live there and then I can drive to Kalundborg to work,\'\" regional councillor Helle Laursen Petersen tells me.</p><p>She says these schools are struggling to attract experienced teachers, helping to fuel low expectations among many parents.</p><p>After all, she says, they think their children will always get a job at the Novo Nordisk factory, so why bother trying to get to university?</p><p><br></p><p>Ali, Anna K, Anna and Marie at Gymnasium, the most academic secondary school in the area, tell me they want to leave to study.</p><p>\"It might become interesting later, but as of now, I think it\'s a bit too boring to settle down here -&nbsp;I think I\'d like a larger city,\" Anna K says.</p><p>But Ali and Marie are more excited about coming back after their studies, hopeful of more job opportunities in the town so they can enjoy its natural beauty more.</p>', 'icon-hand-house', 'upload/service/1814730845713329.webp', '2024-11-03 13:29:58', '2024-11-03 13:29:58'),
(5, 'Risk Management', 'risk-management', 'We employ industry-leading tools and techniques to protect your investments and minimize potential losses.', '<p>Meanwhile Brian Sonder Anderson, who runs the Blue Angel cinema and is head of the local trader’s association, points out that supermarkets and bakeries are booming locally as factory workers flock to them on their lunch breaks.</p><p>But other shops, such as those selling shoes and clothes, quickly open then shut down again because of the number of workers living elsewhere.</p><p>Many families on low incomes live here, priced out of the capital Copenhagen where rents and property prices have soared - leaving some on benefits and others relying on work at the factory.</p><p>Kalundborg also has a health problem - it\'s in the highest 5% of Danish towns for children being overweight.</p><p>Novo Nordisk, meanwhile, is&nbsp;<a href=\"https://www.bbc.co.uk/news/business-66714128\" target=\"_blank\" style=\"color: rgb(32, 34, 36);\">now Europe\'s most valuable company</a>&nbsp;with a revenue last year of more than $33bn - bringing its market value to more than $500bn.</p><p>Investment in the town aims to add 1,250 jobs to the existing 4,500 employees at the Kalundborg plant and ramp up production of its best-selling drugs. While the company represents about 1% of the Danish workforce, it accounts for a more sizeable proportion of its growth.</p><p>Denmark\'s economic growth was 1.1% over the first nine months of 2023. But strip away the pharmaceutical sector, dominated by Novo, and the economy shrank by 0.8%. Some analysts have warned that parts of the country\'s economy risks becoming too reliant on the pharmaceutical industry.</p><p>The town\'s mayor Martin Damm is upbeat, insisting that more than 1,000 new jobs are being created here every year and some young people are happy to call it home.</p><p>“In Europe people are moving from the rural area into the big cities and this is going</p>', 'icon-gear-warning', 'upload/service/1814730885928799.jpg', '2024-11-03 13:30:38', '2024-11-03 13:30:38'),
(6, 'Research and Analysis', 'research-and-analysis', 'We provide timely reports, market updates, and data-driven insights to help you make informed trading decisions', '<p>He also insists that schools are being refurbished or already have good facilities - and that rising prosperity will, in time, lead to healthier lifestyles.</p><p>Miguel, an 18-year-old student from Madrid studying bio-technology on one of the new university courses in the town, has just joined a local football team with players from Brazil, Mexico, Poland and Ukraine.</p><p>\"There\'s so many international people in this town and almost everyone that I\'ve talked to in English has responded in English,\" he says.</p><p>Amanda, from Brazil, insists opportunities are here - she\'s landed a job, placed her two young children in a local school and hopes that they\'ll stay here for university.</p>', 'icon-text-search', 'upload/service/1814730921780132.jpg', '2024-11-03 13:31:11', '2024-11-03 13:31:11'),
(7, '11Education and Resources', '11education-and-resources', 'Expand your knowledge and skills in cryptocurrency trading through our educational resources.', '<p>The reception is poorly lit and a small fan barely moves the humid air as staff at Chidinma Emeneka’s laundry service in Nigeria’s commercial capital, Lagos, wait for the generator to kick in.</p><p>It roars into action, but the engine noise marks the start of extra business costs which have to be paid because of the failing power sector.</p><p>For 10 days more than a third of the country’s 36 states have been in darkness following a major fault in the transmission grid.</p><p>Ms Emeneka is one of millions who have been affected, and is now struggling to keep her business, Sparkle Inn Laundry Services, afloat.</p><p>The 27-year-old told the BBC that her firm turned to expensive generators to keep going after she was left without electricity once before for about six weeks.</p><p>On that occasion the cause was a power surge that damaged her meter.</p><p>“My meter is bad, the platform to apply for a new meter is down, there is no way to get a new meter and there’s no way to get light.”</p><p>This time the entire neighbourhood has been in darkness for over a week.</p><p>\"Currently, we have been sustaining with an inverter and a generator but the fuel price right now is driving me crazy,\" Ms Emeneka says.</p><p>Her laundry offers a 72-hour service to return clean clothes, but the power shortage has left some customers waiting up to a week.</p><p>She says she has been forced to spend 35,000 naira ($21; £16) a day on fuel for her generator - and that is on sunny days, when a solar panel system is in operation. On cloudy days the generator costs can be double that.</p>', 'icon-education', 'upload/service/1814730968674659.jpg', '2024-11-03 13:31:56', '2024-11-05 15:14:06');

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
('0eTExC8UvcEDSZdAJmEIs6Z1ikwb9hGLipmC7Ma7', 1, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/130.0.0.0 Safari/537.36', 'YTo1OntzOjY6Il90b2tlbiI7czo0MDoiY3ZQUHVPWFdqTmVhNUkzOFRDUFZsU2kxMzE1YTRDbHpOSnVXOWxVUyI7czozOiJ1cmwiO2E6MDp7fXM6OToiX3ByZXZpb3VzIjthOjE6e3M6MzoidXJsIjtzOjMyOiJodHRwOi8vMTI3LjAuMC4xOjgwMDAvYWJvdXQvcGFnZSI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fXM6NTA6ImxvZ2luX3dlYl81OWJhMzZhZGRjMmIyZjk0MDE1ODBmMDE0YzdmNThlYTRlMzA5ODlkIjtpOjE7fQ==', 1730933299),
('6YKPOLOV6PSqHOXwX3I5EXPFouJZBRSmNokOqTa4', 1, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/130.0.0.0 Safari/537.36', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiQk8zUDVUdUt6aGZnMU5xRHpUWnpIcllMTUdYQ21mTGJBOTlnNUJXYiI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mzc6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9jb250YWN0L21lc3NhZ2UiO31zOjUwOiJsb2dpbl93ZWJfNTliYTM2YWRkYzJiMmY5NDAxNTgwZjAxNGM3ZjU4ZWE0ZTMwOTg5ZCI7aToxO30=', 1731004807),
('komANdjpdswkBqeTGuxwG2ped7RKI6JfqHj5EsXp', 1, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/130.0.0.0 Safari/537.36', 'YTo1OntzOjY6Il90b2tlbiI7czo0MDoiSkFlVFRRMzlNN1R4bjhlUnd2WVdVa0tVRlk5S2E5OEd1QnZVYkgxMCI7czozOiJ1cmwiO2E6MDp7fXM6OToiX3ByZXZpb3VzIjthOjE6e3M6MzoidXJsIjtzOjM3OiJodHRwOi8vMTI3LjAuMC4xOjgwMDAvY29udGFjdC9tZXNzYWdlIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czo1MDoibG9naW5fd2ViXzU5YmEzNmFkZGMyYjJmOTQwMTU4MGYwMTRjN2Y1OGVhNGUzMDk4OWQiO2k6MTt9', 1731013003),
('YDwX1LGeLxiljBZSSENBP2zHcYhGUQnNfAEbQcJf', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/130.0.0.0 Safari/537.36', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiNVhOaFRrZkVycGRlb3FUWEhXSWZQVXBPemQwcmRJN3huRW9FSHBheiI7czozOiJ1cmwiO2E6MTp7czo4OiJpbnRlbmRlZCI7czozMjoiaHR0cDovLzEyNy4wLjAuMTo4MDAwL2Fib3V0L3BhZ2UiO31zOjk6Il9wcmV2aW91cyI7YToxOntzOjM6InVybCI7czoyNzoiaHR0cDovLzEyNy4wLjAuMTo4MDAwL2xvZ2luIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1730969150);

-- --------------------------------------------------------

--
-- Table structure for table `site_settings`
--

CREATE TABLE `site_settings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `email` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `facebook` varchar(255) DEFAULT NULL,
  `youtube` varchar(255) DEFAULT NULL,
  `footer_message` text DEFAULT NULL,
  `address` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `site_settings`
--

INSERT INTO `site_settings` (`id`, `email`, `phone`, `facebook`, `youtube`, `footer_message`, `address`, `created_at`, `updated_at`) VALUES
(1, 'support@easylearningbd.com', '2365 788 556', 'https://www.facebook.com/easy', 'https://www.youtube.com/333', 'The jobs report soundly beat expectations, with job gains broadly spread across the economy and about 60% higher', '187 2th st, Easy Chicago. USA', NULL, '2024-11-06 16:34:03');

-- --------------------------------------------------------

--
-- Table structure for table `sliders`
--

CREATE TABLE `sliders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `heading` varchar(255) NOT NULL,
  `description` text DEFAULT NULL,
  `link` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sliders`
--

INSERT INTO `sliders` (`id`, `heading`, `description`, `link`, `image`, `created_at`, `updated_at`) VALUES
(1, 'How calls with random', 'views, routes, controllers, and other resources to your application. Laravel', 'https://www.facebook.com/easy', 'upload/slider/1814913784984452.jpg', '2024-10-30 13:53:48', '2024-11-05 13:57:43'),
(2, 'business process management', 'Laravel Breeze publishes all of its code to your application so that you have full control and', 'https://www.youtube.com/easy', 'upload/slider/1814913745717412.jpg', '2024-10-30 13:56:33', '2024-11-05 13:57:07');

-- --------------------------------------------------------

--
-- Table structure for table `testimonials`
--

CREATE TABLE `testimonials` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `position` varchar(255) NOT NULL,
  `message` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `testimonials`
--

INSERT INTO `testimonials` (`id`, `name`, `position`, `message`, `created_at`, `updated_at`) VALUES
(1, 'Khan', 'CEO', 'AI-driven customer service tools have transformed our interactions with customers. Their ability to understand and respond to customer queries in real-time', '2024-10-31 10:15:41', '2024-11-03 15:27:30'),
(3, 'Jhon', 'Web Developer', '\"We were struggling to manage our vast customer database and analyze market trends efficiently. Gemini\'s AI-powered solutions have revolutionized our operations.', '2024-10-31 10:34:48', '2024-11-03 15:27:19'),
(4, 'Jack', 'Founder', 'Their accurate data insights and automated processes have significantly improved our decision-making and customer satisfaction. We\'re thrilled with the results', '2024-11-03 15:28:10', '2024-11-03 15:28:10');

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
  `image` varchar(255) DEFAULT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `image`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Admin', 'admin@gmail.com', NULL, '$2y$12$UjVYgwuKX01Hrv8mTjgm5uqTA/JsWJr.MAdvXHtyzbdVFl0v3D7SG', '1730242207.jpg', 'QYMRNuE9d1syfnUL2s4VlALA7W4j91Gpm2AitNWVDsyKPwciX9x0du9mAlsf', '2024-10-28 16:26:29', '2024-10-30 06:08:38'),
(2, 'Khan', 'khan@gmail.com', NULL, '$2y$12$y4HRauBE.UQzifpe9vz3FeA/SdUnD4b3JB6yBkqbuNEm4FheUhUte', NULL, NULL, '2024-10-29 07:48:17', '2024-10-29 07:48:17');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `about_pages`
--
ALTER TABLE `about_pages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `blog_categories`
--
ALTER TABLE `blog_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `blog_posts`
--
ALTER TABLE `blog_posts`
  ADD PRIMARY KEY (`id`);

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
-- Indexes for table `contact_pages`
--
ALTER TABLE `contact_pages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `gatewayones`
--
ALTER TABLE `gatewayones`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `gate_way_twos`
--
ALTER TABLE `gate_way_twos`
  ADD PRIMARY KEY (`id`);

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
-- Indexes for table `services`
--
ALTER TABLE `services`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

--
-- Indexes for table `site_settings`
--
ALTER TABLE `site_settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sliders`
--
ALTER TABLE `sliders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `testimonials`
--
ALTER TABLE `testimonials`
  ADD PRIMARY KEY (`id`);

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
-- AUTO_INCREMENT for table `about_pages`
--
ALTER TABLE `about_pages`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `blog_categories`
--
ALTER TABLE `blog_categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `blog_posts`
--
ALTER TABLE `blog_posts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `contact_pages`
--
ALTER TABLE `contact_pages`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `gatewayones`
--
ALTER TABLE `gatewayones`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `gate_way_twos`
--
ALTER TABLE `gate_way_twos`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

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
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `services`
--
ALTER TABLE `services`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `site_settings`
--
ALTER TABLE `site_settings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `sliders`
--
ALTER TABLE `sliders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `testimonials`
--
ALTER TABLE `testimonials`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
