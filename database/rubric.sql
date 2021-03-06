-- phpMyAdmin SQL Dump
-- version 5.1.1deb5ubuntu1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: May 14, 2022 at 02:30 AM
-- Server version: 8.0.29-0ubuntu0.22.04.2
-- PHP Version: 8.1.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `rubric`
--

-- --------------------------------------------------------

--
-- Table structure for table `blogs`
--

CREATE TABLE `blogs` (
  `id` bigint UNSIGNED NOT NULL,
  `user_name` varchar(255) NOT NULL,
  `title` varchar(255) NOT NULL,
  `auther` varchar(255) NOT NULL,
  `article` varchar(2555) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `blogs`
--

INSERT INTO `blogs` (`id`, `user_name`, `title`, `auther`, `article`) VALUES
(17, 'anishali', 'The variable oystercatcher', 'Nintendo', '	\nThe variable oystercatcher (Haematopus unicolor) is a species of wader in the family Haematopodidae, endemic to New Zealand. The plumage ranges from pied through mottled to all black in different parts of the bird\'s range. They search for food in shallow water as the tides ebb and flow. Food is mainly located visually but when it is dark or the food is obscured, they will probe the substrate with their bill. The diet consists of a range of molluscs, crustaceans, worms and sometimes small fish. This bird was photographed at Point Chevalier in Auckland, New Zealand.'),
(18, 'anishali', 'Muhammad Ali Jinnah', 'Quaid', 'Muhammad Ali Jinnah (Urdu pronunciation: [mʊɦəm.məd̪ əliː d͡ʒɪnːɑːɦ], Gujarati pronunciation: [məɦ(ə)məd̪ əli d͡ʒʱiɽ̃ɑ]; born Mahomedali Jinnahbhai; 25 December 1876 – 11 September 1948) was a barrister, politician and the founder of Pakistan.[1] Jinnah served as the leader of the All-India Muslim League from 1913 until the inception of Pakistan on 14 August 1947, and then as the Dominion of Pakistan\'s first governor-general until his death. He is revered in Pakistan as the Quaid-i-Azam (\"Great Leader\") and Baba-i-Qaum (\"Father of the Nation\"). His birthday is observed as a national holiday in Pakistan.\n\nBorn at Wazir Mansion in Karachi, Jinnah was trained as a barrister at Lincoln\'s Inn in London, England. Upon his return to British India, he enrolled at the Bombay High Court, and took an interest in national politics, which eventually replaced his legal practice. Jinnah rose to prominence in the Indian National Congress in the first two decades of the 20th century. In these early years of his political career, Jinnah advocated Hindu–Muslim unity, helping to shape the 1916 Lucknow Pact between the Congress and the All-India Muslim League, in which Jinnah had also become prominent. Jinnah became a key leader in the All-India Home Rule League, and proposed a fourteen-point constitutional reform plan to safeguard the political rights of Muslims in the Indian subcontinent. In 1920, however, Jinnah resigned from the Congress when it agreed to follow a campaign of satyagraha, which he regarded as political anarchy.'),
(19, 'anishali', 'Muhammad Iqbal', 'Iqbal', 'Sir Muhammad Iqbal Kt (Urdu: محمد اقبال; 9 November 1877 – 21 April 1938), was a South Asian Muslim writer,[1][2] philosopher,[3] and politician,[4] whose poetry in the Urdu language is considered among the greatest of the twentieth century,[5][6][7][8] and whose vision of a cultural and political ideal for the Muslims of British-ruled India[9] was to animate the impulse for Pakistan.[1][10] He is commonly referred to by the honorific Allama[11] (from Persian: علامہ, romanized: ʿallāma, lit. \'very knowing, most learned\').[12]\n\nBorn and raised in Sialkot, Punjab in an ethnic Kashmiri Muslim family, Iqbal completed his B.A. and M.A. at the Government College Lahore. He taught Arabic at the Oriental College, Lahore from 1899 until 1903. During this time, he wrote prolifically. Among the Urdu poems from this time that remain popular are Parinde ki faryad (A bird\'s prayer), an early meditation on animal rights, and Tarana-e-Hindi (The Song of India) a patriotic poem—both poems composed for children. In 1905, he left for further studies in Europe, first to England, where he completed a second B.A. at Trinity College, Cambridge and was subsequently called to the bar at Lincoln\'s Inn, and then to Germany, where he received a Ph.D. in philosophy at the University of Munich. After returning to Lahore in 1908, he established a law practice but concentrated on writing scholarly works on politics, economics, history, philosophy, and religion. He is best known for his poetic works, including Asrar-e-Khudi – after whose publication he was awarded a knighthood,[13] Rumuz-e-Bekhudi, and the Bang-e-Dara. In Iran, where he is known as Iqbāl-e Lāhorī (Iqbal of Lahore), he is highly regarded for his Persian works.'),
(21, 'anishali', 'Programming language', 'Latin', 'A programming language is any set of rules that converts strings, or graphical program elements in the case of visual programming languages, to various kinds of machine code output. Programming languages are one kind of computer language, and are used in computer programming to implement algorithms.\n\nMost programming languages consist of instructions for computers. There are programmable machines that use a set of specific instructions, rather than general programming languages. Since the early 1800s, programs have been used to direct the behavior of machines such as Jacquard looms, music boxes and player pianos.[1] The programs for these machines (such as a player piano\'s scrolls) did not produce different behavior in response to different inputs or conditions.\n\nThousands of different programming languages have been created, and more are being created every year. Many programming languages are written in an imperative form (i.e., as a sequence of operations to perform) while other languages use the declarative form (i.e. the desired result is specified, not how to achieve it).'),
(22, 'anishali', 'Robot', 'Admin', 'A robot is a machine—especially one programmable by a computer—capable of carrying out a complex series of actions automatically.[2] A robot can be guided by an external control device, or the control may be embedded within. Robots may be constructed to evoke human form, but most robots are task-performing machines, designed with an emphasis on stark functionality, rather than expressive aesthetics.\n\nRobots can be autonomous or semi-autonomous and range from humanoids such as Honda\'s Advanced Step in Innovative Mobility (ASIMO) and TOSY\'s TOSY Ping Pong Playing Robot (TOPIO) to industrial robots, medical operating robots, patient assist robots, dog therapy robots, collectively programmed swarm robots, UAV drones such as General Atomics MQ-1 Predator, and even microscopic nano robots. By mimicking a lifelike appearance or automating movements, a robot may convey a sense of intelligence or thought of its own. Autonomous things are expected to proliferate in the future, with home robotics and the autonomous car as some of the main drivers.[3]\n\nThe branch of technology that deals with the design, construction, operation, and application of robots,[4] as well as computer systems for their control, sensory feedback, and information processing is robotics. These technologies deal with automated machines that can take the place of humans in dangerous environments or manufacturing processes, or resemble humans in appearance, behavior, or cognition. Many of today\'s robots are inspired by nature contributing to the field of bio-inspired robotics. These robots have also created a newer branch of robotics: soft robotics.');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint UNSIGNED NOT NULL,
  `first_name` varchar(255) NOT NULL,
  `last_name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `password`) VALUES
(3, 'anish', 'ali', 'anish@gmail.com', 'anishali'),
(4, 'Habib', 'malik', 'habib@gmail.com', 'habib');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `blogs`
--
ALTER TABLE `blogs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `blogs`
--
ALTER TABLE `blogs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
