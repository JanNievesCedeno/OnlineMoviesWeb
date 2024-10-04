-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 22, 2021 at 09:14 AM
-- Server version: 10.4.18-MariaDB
-- PHP Version: 8.0.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `movies`
--

-- --------------------------------------------------------

--
-- Table structure for table `movies`
--

CREATE TABLE `movies` (
  `movie_id` int(11) NOT NULL,
  `movie_amount` int(11) NOT NULL DEFAULT 50,
  `movie_name` varchar(30) NOT NULL,
  `movie_year` year(4) NOT NULL,
  `movie_genre` varchar(30) NOT NULL,
  `movie_description` varchar(500) NOT NULL,
  `movie_cost` float(9,2) NOT NULL,
  `movie_trailer` varchar(500) NOT NULL,
  `movie_picture` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `movies`
--

INSERT INTO `movies` (`movie_id`, `movie_amount`, `movie_name`, `movie_year`, `movie_genre`, `movie_description`, `movie_cost`, `movie_trailer`, `movie_picture`) VALUES
(2, 50, 'Black Panther', 2018, 'Action', 'T\'Challa, heir to the hidden but advanced kingdom of Wakanda, must step forward to lead his people into a new future and must confront a challenger from his country\'s past.', 12.95, 'https://www.youtube.com/embed/dxWvtMOGAhw', 'https://m.media-amazon.com/images/M/MV5BMTg1MTY2MjYzNV5BMl5BanBnXkFtZTgwMTc4NTMwNDI@._V1_.jpg'),
(4, 50, 'Mad Max: Fury Road', 2015, 'Action', 'In a post-apocalyptic wasteland, a woman rebels against a tyrannical ruler in search for her homeland with the aid of a group of female prisoners, a psychotic worshiper, and a drifter named Max.', 9.99, 'https://www.youtube.com/embed/hEJnMQG9ev8', 'https://i.pinimg.com/originals/c2/7a/ac/c27aac076fe8e5faabd3960ab458202b.jpg'),
(6, 48, 'Logan', 2017, 'Action', 'In a future where mutants are nearly extinct, an elderly and weary Logan leads a quiet life. But when Laura, a mutant child pursued by scientists, comes to him for help, he must get her to safety.', 14.95, 'https://www.youtube.com/embed/Div0iP65aZo', 'https://resizing.flixster.com/aZbQsqZs6iBvshpxVvfNSJMh83A=/ems.ZW1zLXByZC1hc3NldHMvbW92aWVzLzdjY2E3YTljLTRlY2MtNDVjNy1iY2E3LWEyNDRkNzAwYzM0Zi53ZWJw'),
(7, 50, 'Dunkirk', 2017, 'Action', 'Allied soldiers from Belgium, the British Commonwealth and Empire, and France are surrounded by the German Army and evacuated during a fierce battle in World War II.', 9.95, 'https://www.youtube.com/embed/F-eMt3SrfFU', 'https://m.media-amazon.com/images/M/MV5BN2YyZjQ0NTEtNzU5MS00NGZkLTg0MTEtYzJmMWY3MWRhZjM2XkEyXkFqcGdeQXVyMDA4NzMyOA@@._V1_.jpg'),
(8, 50, 'Baby Driver', 2017, 'Action', 'After being coerced into working for a crime boss, a young getaway driver finds himself taking part in a heist doomed to fail.', 13.99, 'https://www.youtube.com/embed/D9YZw_X5UzQ', 'https://m.media-amazon.com/images/I/717QDxYBkbL._AC_.jpg'),
(9, 50, 'Shazam', 2019, 'Action', 'A newly fostered young boy in search of his mother instead finds unexpected super powers and soon gains a powerful enemy.', 14.99, 'https://www.youtube.com/embed/go6GEIrcvFY', 'https://images-na.ssl-images-amazon.com/images/I/61GMlAdF8LL._AC_SL1200_.jpg'),
(10, 50, 'Skyfall', 2012, 'Action', 'James Bond\'s loyalty to M is tested when her past comes back to haunt her. When MI6 comes under attack, 007 must track down and destroy the threat, no matter how personal the cost.', 11.99, 'https://www.youtube.com/embed/6kw1UVovByw', 'https://m.media-amazon.com/images/M/MV5BMWZiNjE2OWItMTkwNy00ZWQzLWI0NTgtMWE0NjNiYTljN2Q1XkEyXkFqcGdeQXVyNzAwMjYxMzA@._V1_.jpg'),
(11, 50, 'True Grit', 2010, 'Action', 'A stubborn teenager enlists the help of a tough U.S. Marshal to track down her father\'s murderer.', 13.99, 'https://www.youtube.com/embed/CUiCu-zuAgM', 'https://images-na.ssl-images-amazon.com/images/I/91id31LTxpL._SL1500_.jpg'),
(12, 49, 'Looper', 2012, 'Action', 'In 2074, when the mob wants to get rid of someone, the target is sent into the past, where a hired gun awaits - someone like Joe - who one day learns the mob wants to \'close the loop\' by sending back ', 13.99, 'https://www.youtube.com/embed/2iQuhsmtfHw', 'https://cinesnark.files.wordpress.com/2012/10/looper-poster-joseph-gordon-levitt.jpg'),
(13, 50, 'All is Lost', 2013, 'Action', 'After a collision with a shipping container at sea, a resourceful sailor finds himself, despite all efforts to the contrary, staring his mortality in the face.', 7.95, 'https://www.youtube.com/embed/no1rl9Gvx-s', 'https://m.media-amazon.com/images/M/MV5BMjI0MzIyMjU1N15BMl5BanBnXkFtZTgwOTk1MjQxMDE@._V1_.jpg'),
(14, 50, 'Casino Royale', 2006, 'Action', 'After earning 00 status and a licence to kill, Secret Agent James Bond sets out on his first mission as 007. Bond must defeat a private banker funding terrorists in a high-stakes game of poker at Casi', 14.99, 'https://www.youtube.com/embed/36mnx8dBbGE', 'https://m.media-amazon.com/images/M/MV5BMDI5ZWJhOWItYTlhOC00YWNhLTlkNzctNDU5YTI1M2E1MWZhXkEyXkFqcGdeQXVyNTIzOTk5ODM@._V1_.jpg'),
(15, 50, 'Sicario', 2015, 'Action', 'An idealistic FBI agent is enlisted by a government task force to aid in the escalating war against drugs at the border area between the U.S. and Mexico.', 9.99, 'https://www.youtube.com/embed/G8tlEcnrGnU', 'https://flxt.tmsimg.com/assets/p11539968_p_v10_ab.jpg'),
(16, 50, 'Deadpool 2', 2018, 'Action', 'Foul-mouthed mutant mercenary Wade Wilson (a.k.a. Deadpool) assembles a team of fellow mutant rogues to protect a young boy with supernatural abilities from the brutal, time-traveling cyborg Cable.', 19.99, 'https://www.youtube.com/embed/D86RtevtfrA', 'https://m.media-amazon.com/images/M/MV5BNjk1Njk3YjctMmMyYS00Y2I4LThhMzktN2U0MTMyZTFlYWQ5XkEyXkFqcGdeQXVyODM2ODEzMDA@._V1_.jpg'),
(17, 50, 'Annihilation', 2018, 'Action', 'A biologist signs up for a dangerous, secret expedition into a mysterious zone where the laws of nature don\'t apply.', 13.99, 'https://www.youtube.com/embed/89OP78l9oF0', 'https://miro.medium.com/max/1000/1*qqMAs1H9dWu5REyNOhZLxg.jpeg'),
(18, 50, 'Doctor Strange', 2016, 'Action', 'While on a journey of physical and spiritual healing, a brilliant neurosurgeon is drawn into the world of the mystic arts.', 19.99, 'https://www.youtube.com/embed/Lt-U_t2pUHI', 'https://m.media-amazon.com/images/M/MV5BNjgwNzAzNjk1Nl5BMl5BanBnXkFtZTgwMzQ2NjI1OTE@._V1_.jpg'),
(19, 50, 'Stark Trek', 2009, 'Action', 'The greatest adventure of all time begins with STAR TREK, the incredible story of a young crew\'s maiden voyage onboard the most advanced starship ever created: the U.S.S. Enterprise. On a journey fill', 13.99, 'https://www.youtube.com/embed/pKFUZ10Wmbw', 'https://m.media-amazon.com/images/M/MV5BNDRkMTNiNjgtZDIyOC00NmE1LTlkZjEtMGZiNTcyZDQ0NjcxXkEyXkFqcGdeQXVyNTE1NjY5Mg@@._V1_UY1200_CR109,0,630,1200_AL_.jpg'),
(20, 50, 'The Lego Movie', 2014, 'Action', 'An ordinary LEGO construction worker, thought to be the prophesied as \"special\", is recruited to join a quest to stop an evil tyrant from gluing the LEGO universe into eternal stasis.', 9.99, 'https://www.youtube.com/embed/fZ_JOBCLF-I', 'https://m.media-amazon.com/images/M/MV5BMTg4MDk1ODExN15BMl5BanBnXkFtZTgwNzIyNjg3MDE@._V1_UY1200_CR90,0,630,1200_AL_.jpg'),
(21, 50, 'Blade Runner 2049', 2017, 'Action', 'Young Blade Runner K\'s discovery of a long-buried secret leads him to track down former Blade Runner Rick Deckard, who\'s been missing for thirty years.', 9.99, 'https://www.youtube.com/embed/gCcx85zbxz4', 'https://m.media-amazon.com/images/M/MV5BNzA1Njg4NzYxOV5BMl5BanBnXkFtZTgwODk5NjU3MzI@._V1_.jpg'),
(22, 50, 'Incredibles 2', 2018, 'Action', 'The Incredibles family takes on a new mission which involves a change in family roles: Bob Parr (Mr. Incredible) must manage the house while his wife Helen (Elastigirl) goes out to save the world.', 9.99, 'https://www.youtube.com/embed/i5qOzqD9Rms', 'https://m.media-amazon.com/images/M/MV5BMTEzNzY0OTg0NTdeQTJeQWpwZ15BbWU4MDU3OTg3MjUz._V1_UY1200_CR90,0,630,1200_AL_.jpg'),
(23, 50, 'Outside the Wire', 2021, 'Action', 'In the near future, a drone pilot sent into a war zone finds himself paired with a top-secret android officer on a mission to stop a nuclear attack.', 19.99, 'https://www.youtube.com/embed/u8ZsUivELbs', 'https://media-cache.cinematerial.com/p/500x/vvdxkbv6/outside-the-wire-polish-movie-cover.jpg?v=1611798623'),
(24, 50, 'Hot Rod', 2007, 'Comedy', 'Self-proclaimed stuntman Rod Kimble is preparing for the jump of his life - to clear fifteen buses to raise money for his abusive stepfather Frank\'s life-saving heart operation.', 9.99, 'https://www.youtube.com/embed/yByhd7FAOug', 'https://www.dvdsreleasedates.com/posters/800/H/Hot-Rod-movie-poster.jpg'),
(25, 50, 'Game Night', 2018, 'Comedy', 'A group of friends who meet regularly for game nights find themselves entangled in a real-life mystery when the shady brother of one of them is seemingly kidnapped by dangerous gangsters.', 14.99, 'https://www.youtube.com/embed/qmxMAdV6s4U', 'https://m.media-amazon.com/images/M/MV5BMjI3ODkzNDk5MF5BMl5BanBnXkFtZTgwNTEyNjY2NDM@._V1_.jpg'),
(26, 50, 'Scary Movie', 2000, 'Comedy', 'A year after disposing of the body of a man they accidentally killed, a group of dumb teenagers are stalked by a bumbling serial killer.', 7.99, 'https://www.youtube.com/embed/SzpGYrrcJZw', 'https://i.pinimg.com/originals/04/d2/eb/04d2eb426fc367299615b389aaf17dce.jpg'),
(27, 50, 'Blockers', 2018, 'Comedy', 'Three parents try to stop their daughters from losing their virginity on prom night.\r\n', 9.99, 'https://www.youtube.com/embed/RfFcaV5O7SU', 'https://m.media-amazon.com/images/M/MV5BMjE0ODIzNjkzMl5BMl5BanBnXkFtZTgwODQ3MzU4NDM@._V1_.jpg'),
(28, 50, 'Trainwreck', 2015, 'Comedy', 'Having thought that monogamy was never possible, a commitment-phobic career woman may have to face her fears when she meets a good guy.', 14.99, 'https://www.youtube.com/embed/y_KP9x80Z9Q', 'https://m.media-amazon.com/images/M/MV5BMTQ4MjgwNTMyOV5BMl5BanBnXkFtZTgwMTc1MjI0NDE@._V1_.jpg'),
(29, 49, '21 Jump Street', 2012, 'Comedy', 'A pair of underachieving cops are sent back to a local high school to blend in and bring down a synthetic drug ring.', 13.99, 'https://www.youtube.com/embed/RLoKtb4c4W0', 'https://m.media-amazon.com/images/M/MV5BNTZjNzRjMTMtZDMzNy00Y2ZjLTg0OTAtZjVhNzYyZmJjOTljXkEyXkFqcGdeQXVyODE5NzE3OTE@._V1_UY1200_CR90,0,630,1200_AL_.jpg'),
(30, 49, 'In the Loop', 2009, 'Comedy', 'A political satire about a group of skeptical American and British operatives attempting to prevent a war between two countries.', 7.99, 'https://www.youtube.com/embed/yJU2qRg5zLI', 'https://m.media-amazon.com/images/M/MV5BMTU2NzQxNzA1OF5BMl5BanBnXkFtZTcwNzQ0NDk0Mg@@._V1_.jpg'),
(31, 50, 'Pride', 2014, 'Comedy', 'U.K. gay activists work to help miners during their lengthy strike of the National Union of Mineworkers in the summer of 1984.', 2.99, 'https://www.youtube.com/embed/kZfFvsKDuUU', 'https://m.media-amazon.com/images/M/MV5BMTU2OTcyOTE3MF5BMl5BanBnXkFtZTgwNTg5Mjc1MjE@._V1_.jpg'),
(32, 50, 'Spy', 2015, 'Comedy', 'A desk-bound CIA analyst volunteers to go undercover to infiltrate the world of a deadly arms dealer, and prevent diabolical global disaster.', 12.99, 'https://www.youtube.com/embed/ltijEmlyqlg', 'https://m.media-amazon.com/images/M/MV5BNjI5OTQ0MDQxM15BMl5BanBnXkFtZTgwMzcwNjMyNTE@._V1_.jpg'),
(33, 50, 'Step Brothers', 2008, 'Comedy', 'Two aimless middle-aged losers still living at home are forced against their will to become roommates when their parents marry.', 6.99, 'https://www.youtube.com/embed/CewglxElBK0', 'https://m.media-amazon.com/images/M/MV5BODViZDg3ZjYtMzhiYS00YTVkLTk4MzktYWUxMTlkYjc1NjdlXkEyXkFqcGdeQXVyMTMxODk2OTU@._V1_UY1200_CR89,0,630,1200_AL_.jpg'),
(34, 50, 'Meet the Parents', 2000, 'Comedy', 'Male nurse Greg Focker meets his girlfriend\'s parents before proposing, but her suspicious father is every date\'s worst nightmare.', 14.99, 'https://www.youtube.com/embed/5vmTwzoE86Q', 'https://m.media-amazon.com/images/M/MV5BMGNlMGZiMmUtZjU0NC00MWU4LWI0YTgtYzdlNGVhZGU4NWZlXkEyXkFqcGdeQXVyNjU0OTQ0OTY@._V1_.jpg'),
(35, 50, 'Booksmart', 2019, 'Comedy', 'On the eve of their high school graduation, two academic superstars and best friends realize they should have worked less and played more. Determined not to fall short of their peers, the girls try to', 14.99, 'https://www.youtube.com/embed/Uhd3lo_IWJc', 'https://m.media-amazon.com/images/M/MV5BMjEzMjcxNjA2Nl5BMl5BanBnXkFtZTgwMjAxMDM2NzM@._V1_.jpg'),
(36, 49, 'Superbad', 2007, 'Comedy', 'Two co-dependent high school seniors are forced to deal with separation anxiety after their plan to stage a booze-soaked party goes awry.', 6.99, 'https://www.youtube.com/embed/4eaZ_48ZYog', 'https://m.media-amazon.com/images/M/MV5BMTc0NjIyMjA2OF5BMl5BanBnXkFtZTcwMzIxNDE1MQ@@._V1_UY1200_CR88,0,630,1200_AL_.jpg'),
(37, 50, 'Hot Fuzz', 2007, 'Comedy', 'A skilled London police officer is transferred to a small town with a dark secret.', 14.99, 'https://www.youtube.com/embed/ayTnvVpj9t4', 'https://m.media-amazon.com/images/M/MV5BMzg4MDJhMDMtYmJiMS00ZDZmLThmZWUtYTMwZDM1YTc5MWE2XkEyXkFqcGdeQXVyNjU0OTQ0OTY@._V1_.jpg'),
(38, 50, 'The Hangover', 2009, 'Comedy', 'Three buddies wake up from a bachelor party in Las Vegas, with no memory of the previous night and the bachelor missing. They make their way around the city in order to find their friend before his we', 14.99, 'https://www.youtube.com/embed/tcdUhdOlz9M', 'https://m.media-amazon.com/images/M/MV5BNGQwZjg5YmYtY2VkNC00NzliLTljYTctNzI5NmU3MjE2ODQzXkEyXkFqcGdeQXVyNzkwMjQ5NzM@._V1_.jpg'),
(39, 50, 'Elf', 2003, 'Comedy', 'Raised as an over-sized elf, a human travels from the North Pole to NYC to meet his biological father who doesn\'t know he exists and is in desperate need of some Christmas spirit.', 14.99, 'https://www.youtube.com/embed/gW9wRNqQ_P8', 'https://m.media-amazon.com/images/M/MV5BMzUxNzkzMzQtYjIxZC00NzU0LThkYTQtZjNhNTljMTA1MDA1L2ltYWdlL2ltYWdlXkEyXkFqcGdeQXVyMTMxODk2OTU@._V1_UY1200_CR89,0,630,1200_AL_.jpg'),
(40, 50, 'Bridemaids', 2011, 'Comedy', 'Competition between the maid of honor and a bridesmaid, over who is the bride\'s best friend, threatens to upend the life of an out-of-work pastry chef.', 13.99, 'https://www.youtube.com/embed/FNppLrmdyug', 'https://m.media-amazon.com/images/M/MV5BMjAyOTMyMzUxNl5BMl5BanBnXkFtZTcwODI4MzE0NA@@._V1_.jpg'),
(41, 50, 'Shaun of the Dead', 2004, 'Comedy', 'There comes a day in every man\'s life when he has to get off the couch...and kill some zombies. When flesh-eating zombies are on the hunt for a bite to eat, it\'s up to slacker Shaun and his best pal t', 14.99, 'https://www.youtube.com/embed/LIfcaZ4pC-4', 'https://m.media-amazon.com/images/M/MV5BMTg5Mjk2NDMtZTk0Ny00YTQ0LWIzYWEtMWI5MGQ0Mjg1OTNkXkEyXkFqcGdeQXVyNzkwMjQ5NzM@._V1_.jpg'),
(42, 50, 'Palm Springs', 2020, 'Comedy', 'Stuck in a time loop, two wedding guests develop a budding romance while living the same day over and over again.', 16.99, 'https://www.youtube.com/embed/CpBLtXduh_k', 'https://m.media-amazon.com/images/M/MV5BYjk0MTgzMmQtZmY2My00NmE5LWExNGUtYjZkNTA3ZDkyMTJiXkEyXkFqcGdeQXVyMTkxNjUyNQ@@._V1_.jpg'),
(43, 49, 'Sideways', 2004, 'Drama', 'Two men reaching middle age with not much to show but disappointment embark on a week-long road trip through California\'s wine country, just as one is about to take a trip down the aisle.', 14.99, 'https://www.youtube.com/embed/0yeCvV14UWw', 'https://static.rogerebert.com/uploads/movie/movie_poster/sideways-2004/large_tojQbn3H4UcM8lkuns1E7CnLv8D.jpg'),
(44, 50, 'Zero Dark Thirty', 2012, 'Drama', 'A chronicle of the decade-long hunt for al-Qaeda terrorist leader Osama bin Laden after the September 2001 attacks, and his death at the hands of the Navy S.E.A.L.s Team 6 in May 2011.', 13.99, 'https://www.youtube.com/embed/FSEBstlH6WY', 'https://m.media-amazon.com/images/M/MV5BMTQ4OTUyNzcwN15BMl5BanBnXkFtZTcwMTQ1NDE3OA@@._V1_.jpg'),
(45, 50, 'Forrest Gump', 1994, 'Drama', 'The presidencies of Kennedy and Johnson, the Vietnam War, the Watergate scandal and other historical events unfold from the perspective of an Alabama man with an IQ of 75, whose only desire is to be r', 7.99, 'https://www.youtube.com/embed/bLvqoHBptjg', 'https://m.media-amazon.com/images/M/MV5BNWIwODRlZTUtY2U3ZS00Yzg1LWJhNzYtMmZiYmEyNmU1NjMzXkEyXkFqcGdeQXVyMTQxNzMzNDI@._V1_.jpg'),
(46, 50, 'The Departed', 2006, 'Drama', 'An undercover cop and a mole in the police attempt to identify each other while infiltrating an Irish gang in South Boston.', 9.99, 'https://www.youtube.com/embed/iojhqm0JTW4', 'https://m.media-amazon.com/images/M/MV5BMTI1MTY2OTIxNV5BMl5BanBnXkFtZTYwNjQ4NjY3._V1_UY1200_CR91,0,630,1200_AL_.jpg'),
(47, 50, 'Before Sunset', 2004, 'Drama', 'Nine years after Jesse and Celine first met, they encounter each other again on the French leg of Jesse\'s book tour.', 9.99, 'https://www.youtube.com/embed/oI3UuneLcyU', 'https://m.media-amazon.com/images/M/MV5BMTQ1MjAwNTM5Ml5BMl5BanBnXkFtZTYwNDM0MTc3._V1_UY1200_CR91,0,630,1200_AL_.jpg'),
(48, 50, 'Her', 2013, 'Drama', 'In a near future, a lonely writer develops an unlikely relationship with an operating system designed to meet his every need.', 7.99, 'https://www.youtube.com/embed/6QRvTv_tpw0', 'https://m.media-amazon.com/images/M/MV5BMjA1Nzk0OTM2OF5BMl5BanBnXkFtZTgwNjU2NjEwMDE@._V1_UY1200_CR90,0,630,1200_AL_.jpg'),
(49, 50, 'The Truman Show', 1998, 'Drama', 'An insurance salesman discovers his whole life is actually a reality TV show.', 9.99, 'https://www.youtube.com/embed/dlnmQbPGuls', 'https://m.media-amazon.com/images/M/MV5BMDIzODcyY2EtMmY2MC00ZWVlLTgwMzAtMjQwOWUyNmJjNTYyXkEyXkFqcGdeQXVyNDk3NzU2MTQ@._V1_.jpg'),
(50, 49, 'Little Women', 2019, 'Drama', 'Jo March reflects back and forth on her life, telling the beloved story of the March sisters - four young women, each determined to live life on her own terms.', 14.99, 'https://www.youtube.com/embed/AST2-4db4ic', 'https://m.media-amazon.com/images/M/MV5BYzNkMTY0MjEtYzJjYS00MmNmLTgwMTMtZTFiNTk5NjA2NWIyXkEyXkFqcGdeQXVyMTkxNjUyNQ@@._V1_.jpg'),
(51, 50, 'The Hurt Locker', 2008, 'Drama', 'During the Iraq War, a Sergeant recently assigned to an army bomb squad is put at odds with his squad mates due to his maverick way of handling his work.', 6.99, 'https://www.youtube.com/embed/AIbFvqFYRT4', 'https://m.media-amazon.com/images/M/MV5BYWYxZjU2MmQtMmMzYi00ZWUwLTg2ZWQtMDExZTVlYjM3ZWM1XkEyXkFqcGdeQXVyNzkwMjQ5NzM@._V1_UY1200_CR85,0,630,1200_AL_.jpg'),
(52, 50, 'The Social Network', 2010, 'Drama', 'As Harvard student Mark Zuckerberg creates the social networking site that would become known as Facebook, he is sued by the twins who claimed he stole their idea, and by the co-founder who was later ', 13.99, 'https://www.youtube.com/embed/lB95KLmpLR4', 'https://m.media-amazon.com/images/M/MV5BOGUyZDUxZjEtMmIzMC00MzlmLTg4MGItZWJmMzBhZjE0Mjc1XkEyXkFqcGdeQXVyMTMxODk2OTU@._V1_UY1200_CR90,0,630,1200_AL_.jpg'),
(53, 50, 'Whiplash', 2014, 'Drama', 'A promising young drummer enrolls at a cut-throat music conservatory where his dreams of greatness are mentored by an instructor who will stop at nothing to realize a student\'s potential.', 13.99, 'https://www.youtube.com/embed/7d_jQycdQGo', 'https://i2.wp.com/dailycampus.com/wp-content/uploads/2021/03/whiplash.jpg?resize=696%2C990&ssl=1'),
(54, 50, 'The Lion King', 1994, 'Drama', 'Lion prince Simba and his father are targeted by his bitter uncle, who wants to ascend the throne himself.', 6.99, 'https://www.youtube.com/embed/eHcZlPpNt0Q', 'https://m.media-amazon.com/images/M/MV5BYTYxNGMyZTYtMjE3MS00MzNjLWFjNmYtMDk3N2FmM2JiM2M1XkEyXkFqcGdeQXVyNjY5NDU4NzI@._V1_.jpg'),
(55, 50, 'Marriage Story', 2019, 'Drama', 'Noah Baumbach\'s incisive and compassionate look at a marriage breaking up and a family staying together.', 13.99, 'https://www.youtube.com/embed/BHi-a1n8t7M', 'https://m.media-amazon.com/images/M/MV5BZGVmY2RjNDgtMTc3Yy00YmY0LTgwODItYzBjNWJhNTRlYjdkXkEyXkFqcGdeQXVyMjM4NTM5NDY@._V1_.jpg'),
(56, 50, 'Before Midnight', 2013, 'Drama', 'We meet Jesse and Celine nine years on in Greece. Almost two decades have passed since their first meeting on that train bound for Vienna.', 13.99, 'https://www.youtube.com/embed/Kv6JWoVKlGY', 'https://m.media-amazon.com/images/M/MV5BMjA5NzgxODE2NF5BMl5BanBnXkFtZTcwNTI1NTI0OQ@@._V1_.jpg'),
(57, 50, 'The Irishman', 2019, 'Drama', 'An old man recalls his time painting houses for his friend, Jimmy Hoffa, through the 1950-70s.', 15.99, 'https://www.youtube.com/embed/WHXxVmeGQUc', 'https://m.media-amazon.com/images/M/MV5BMGUyM2ZiZmUtMWY0OC00NTQ4LThkOGUtNjY2NjkzMDJiMWMwXkEyXkFqcGdeQXVyMzY0MTE3NzU@._V1_.jpg'),
(58, 49, 'Roma', 2018, 'Drama', 'A year in the life of a middle-class family\'s maid in Mexico City in the early 1970s.', 12.99, 'https://www.youtube.com/embed/FkzidhAg45U', 'https://m.media-amazon.com/images/M/MV5BMTU0OTc3ODk4Ml5BMl5BanBnXkFtZTgwMzM4NzI5NjM@._V1_UY1200_CR90,0,630,1200_AL_.jpg'),
(59, 50, 'Gravity', 2013, 'Drama', 'Two astronauts work together to survive after an accident leaves them stranded in space.', 7.99, 'https://www.youtube.com/embed/OiTiKOy59o4', 'https://m.media-amazon.com/images/M/MV5BNjE5MzYwMzYxMF5BMl5BanBnXkFtZTcwOTk4MTk0OQ@@._V1_UY1200_CR90,0,630,1200_AL_.jpg'),
(60, 50, 'Moonlight', 2016, 'Drama', 'A young African-American man grapples with his identity and sexuality while experiencing the everyday struggles of childhood, adolescence, and burgeoning adulthood.', 7.99, 'https://www.youtube.com/embed/9NJj12tJzqc', 'https://m.media-amazon.com/images/M/MV5BNzQxNTIyODAxMV5BMl5BanBnXkFtZTgwNzQyMDA3OTE@._V1_.jpg'),
(61, 50, 'Spotlight', 2015, 'Drama', 'The true story of how the Boston Globe uncovered the massive scandal of child molestation and cover-up within the local Catholic Archdiocese, shaking the entire Catholic Church to its core.', 8.99, 'https://www.youtube.com/embed/EwdCIpbTN5g', 'https://m.media-amazon.com/images/M/MV5BMjIyOTM5OTIzNV5BMl5BanBnXkFtZTgwMDkzODE2NjE@._V1_.jpg'),
(62, 50, 'Manchester by the Sea', 2016, 'Drama', 'A depressed uncle is asked to take care of his teenage nephew after the boy\'s father dies.', 6.99, 'https://www.youtube.com/embed/gsVoD0pTge0', 'https://m.media-amazon.com/images/M/MV5BMTYxMjk0NDg4Ml5BMl5BanBnXkFtZTgwODcyNjA5OTE@._V1_.jpg'),
(63, 50, 'Wont You Be My Neighbor', 2018, 'Documentary', 'An exploration of the life, lessons, and legacy of iconic children\'s television host, Fred Rogers.', 14.99, 'https://www.youtube.com/embed/FhwktRDG_aQ', 'https://m.media-amazon.com/images/M/MV5BMjM1NDg1MjUzNF5BMl5BanBnXkFtZTgwNTAxNjIzNTM@._V1_UY1200_CR90,0,630,1200_AL_.jpg'),
(64, 50, 'I Am Not Your Negro', 2016, 'Documentary', 'Writer James Baldwin tells the story of race in modern America with his unfinished novel, Remember This House.', 6.99, 'https://www.youtube.com/embed/rNUYdgIyaPM', 'https://m.media-amazon.com/images/M/MV5BMjEyNzIzMTk3Ml5BMl5BanBnXkFtZTgwNDE1Nzc1MDI@._V1_.jpg'),
(65, 50, 'Apollo 11', 2019, 'Documentary', 'A look at the Apollo 11 mission to land on the moon led by commander Neil Armstrong and pilots Buzz Aldrin and Michael Collins.', 14.99, 'https://www.youtube.com/embed/eb_qTKXmc34', 'https://m.media-amazon.com/images/M/MV5BMTYyMzEzNjI4M15BMl5BanBnXkFtZTgwODgxOTgyNzM@._V1_.jpg'),
(66, 50, 'Man on Wire', 2008, 'Documentary', 'A look at tightrope walker Philippe Petit\'s daring, but illegal, high-wire routine performed between New York City\'s World Trade Center\'s twin towers in 1974, what some consider, \"the artistic crime o', 6.99, 'https://www.youtube.com/embed/Cz6oddi0mts', 'https://m.media-amazon.com/images/M/MV5BMTMxNTk3NDY1NV5BMl5BanBnXkFtZTcwNDk0ODg3MQ@@._V1_.jpg'),
(67, 50, 'Amazing Grace', 2019, 'Documentary', 'A documentary presenting Aretha Franklin with choir at the New Bethel Baptist Church in Watts, Los Angeles in January 1972.', 14.99, 'https://www.youtube.com/embed/gkKOIQwTiKE', 'https://m.media-amazon.com/images/M/MV5BODQzNTMyNTY2NF5BMl5BanBnXkFtZTgwNDM5MTg1NzM@._V1_.jpg'),
(68, 50, 'Minding the Gap', 2018, 'Documentary', 'Three young men bond together to escape volatile families in their Rust-Belt hometown. As they face adult responsibilities, unexpected revelations threaten their decade-long friendship.', 5.99, 'https://www.youtube.com/embed/eqtw5rek5y8', 'https://m.media-amazon.com/images/M/MV5BMTA0MDk4MzMwOTBeQTJeQWpwZ15BbWU4MDE3MzYxOTUz._V1_.jpg'),
(69, 50, 'Weiner', 2016, 'Documentary', 'An examination of disgraced New York Congressman Anthony Weiner\'s mayoral campaign and today\'s political landscape.', 9.99, 'https://www.youtube.com/embed/LCoI3DdstZw', 'https://m.media-amazon.com/images/M/MV5BMTUxODA4NjE2MV5BMl5BanBnXkFtZTgwOTg4MTc3ODE@._V1_.jpg'),
(70, 50, 'Amy', 2015, 'Documentary', 'Archival footage and personal testimonials present an intimate portrait of the life and career of British singer/songwriter Amy Winehouse.', 7.99, 'https://www.youtube.com/embed/_2yCIwmNuLE', 'https://m.media-amazon.com/images/M/MV5BMTQ1MzE4MTE3OF5BMl5BanBnXkFtZTgwOTcyNDM3NTE@._V1_.jpg'),
(71, 50, 'Free Solo', 2018, 'Documentary', 'Alex Honnold attempts to become the first person to ever free solo climb El Capitan.', 9.99, 'https://www.youtube.com/embed/urRVZ4SW7WU', 'https://m.media-amazon.com/images/M/MV5BMjMwYjcwNWQtNTQ5YS00MzVlLTkxYzMtNDIwZWIxZTE4Zjg2XkEyXkFqcGdeQXVyMTQxNzMzNDI@._V1_.jpg'),
(72, 50, 'Blackfish', 2013, 'Documentary', 'A documentary following the controversial captivity of killer whales, and its dangers for both humans and whales.', 6.99, 'https://www.youtube.com/embed/fLOeH-Oq_1Y', 'https://m.media-amazon.com/images/M/MV5BNTkyNTkwMzkxMl5BMl5BanBnXkFtZTcwMzAwOTE2OQ@@._V1_.jpg'),
(73, 50, 'Time', 2020, 'Documentary', 'Fox Rich fights for the release of her husband, Rob, who is serving a 60-year sentence in prison.', 6.99, 'https://www.youtube.com/embed/kq6Hh07oLvs', 'https://m.media-amazon.com/images/M/MV5BNmNjMTg5M2QtNTMxZS00ZjQxLWFjNTgtZTIxZTQ5OTI2NGJjXkEyXkFqcGdeQXVyODE0OTU5Nzg@._V1_UY1200_CR90,0,630,1200_AL_.jpg'),
(74, 50, 'Maiden', 2018, 'Documentary', 'The story of Tracy Edwards, a 24-year-old cook on charter boats, who became the skipper of the first ever all-female crew to enter the Whitbread Round the World Race in 1989.', 6.99, 'https://www.youtube.com/embed/OMBM10cBhIs', 'https://m.media-amazon.com/images/M/MV5BZDAzMDYyODktN2ZiOC00MzBiLWI0M2EtODE3NmYyMTU3YjRkXkEyXkFqcGdeQXVyOTgxNDIzMTY@._V1_.jpg'),
(75, 50, 'Murderball', 2005, 'Documentary', 'Quadriplegics, who play full-contact rugby in wheelchairs, overcome unimaginable obstacles to compete in the Paralympic Games in Athens, Greece.', 7.99, 'https://www.youtube.com/embed/AmvXbrrOAkU', 'https://m.media-amazon.com/images/M/MV5BYWRlYmM1MDUtODcxYi00NDFhLTg3ZmMtMjhkMTU3ZjM4ZmJhL2ltYWdlL2ltYWdlXkEyXkFqcGdeQXVyMTQxNzMzNDI@._V1_UY1200_CR86,0,630,1200_AL_.jpg'),
(76, 50, 'Tower', 2016, 'Documentary', 'Animation, testimony, and archival footage combine to relate the events of August 1, 1966 when a gunman opened fire from the University of Texas clock tower, killing 16 people.', 8.99, 'https://www.youtube.com/embed/GTzNkfgM1vE', 'https://m.media-amazon.com/images/M/MV5BNjI1Nzg3NTgyOV5BMl5BanBnXkFtZTgwNzIwMjIxMDI@._V1_.jpg'),
(77, 50, 'Inside Job', 2010, 'Documentary', 'Takes a closer look at what brought about the 2008 financial meltdown.', 13.99, 'https://www.youtube.com/embed/FzrBurlJUNk', 'https://m.media-amazon.com/images/M/MV5BMTQ3MjkyODA2Nl5BMl5BanBnXkFtZTcwNzQxMTU4Mw@@._V1_.jpg'),
(78, 50, 'Shirkers', 2018, 'Documentary', 'A woman explores the events surrounding a film she and her friends began making with a mysterious stranger decades ago.', 9.99, 'https://www.youtube.com/embed/u3wPWCj2L6I', 'https://m.media-amazon.com/images/M/MV5BODYxOTNjOTctZjFlZS00ZGIzLWIzMTctNjY2YWRlNTQyMTM3XkEyXkFqcGdeQXVyMTE0MTEwMjk@._V1_UY1200_CR85,0,630,1200_AL_.jpg'),
(79, 50, 'Athlete A', 2020, 'Documentary', 'Follow the Indianapolis Star reporters that broke the story about USA Gymnastics doctor Larry Nassar\'s abuse and hear from gymnasts like Maggie Nichols.', 13.99, 'https://www.youtube.com/embed/JzeP0DKSqdQ', 'https://m.media-amazon.com/images/M/MV5BYjlmNGYwMjctMjNiMS00NjA4LWJiMmEtN2Y5ZTgyNzE1YzIxXkEyXkFqcGdeQXVyMTQ4NDY5OTc@._V1_UY1200_CR90,0,630,1200_AL_.jpg'),
(80, 50, 'Waste Land', 2010, 'Documentary', 'On the outskirts of Rio de Janeiro is Jardim Gramacho, the world\'s largest landfill, where men and women sift through garbage for a living. Artist Vik Muniz produces portraits of the workers and learn', 7.99, 'https://www.youtube.com/embed/sNlwh8vT2NU', 'https://m.media-amazon.com/images/M/MV5BMTM2ODkxMTY1NF5BMl5BanBnXkFtZTcwNTAxMzc5Mw@@._V1_.jpg'),
(81, 50, 'Strong Island', 2017, 'Documentary', 'When filmmaker Yance Ford investigates the 1992 murder of a young black man, it becomes an achingly personal journey since the victim, 24-year-old William Ford Jr., was the filmmaker\'s brother.', 9.99, 'https://www.youtube.com/embed/h64qugj_iDg', 'https://m.media-amazon.com/images/M/MV5BYTlmNjU3NTktNDRjZi00MDVmLThmMTAtMzJmNDM0MTdhMzZlXkEyXkFqcGdeQXVyMTMxODk2OTU@._V1_.jpg'),
(82, 50, 'The Fight', 2020, 'Documentary', 'An inside look at the legal battles that lawyers for the American Civil Liberties Union are facing during the Trump administration.', 12.99, 'https://www.youtube.com/embed/eK8Pj4kN0YQ', 'https://m.media-amazon.com/images/M/MV5BNjQ1YThmZDgtZDczMy00NTA1LWFjZmUtZTUwNDE1YzBkOWUxXkEyXkFqcGdeQXVyMTEyMjM2NDc2._V1_.jpg'),
(83, 50, 'God Help the Girl', 2014, 'Musical', 'As Eve begins writing songs as a way to sort through some emotional problems, she meets James and Cassie, two musicians each at crossroads of their own.', 12.99, 'https://www.youtube.com/embed/1zYFJHaZO_Y', 'https://m.media-amazon.com/images/M/MV5BMTg0MDYwNjg2NF5BMl5BanBnXkFtZTgwMTE1NzMyMjE@._V1_.jpg'),
(84, 50, 'Were the World Mine', 2008, 'Musical', 'A bullied and demoralized gay student at an all-boys school uses a magical flower derived from Shakespeare\'s \"A Midsummer Night\'s Dream\' to turn many in his community gay, including a comely rugby pla', 9.99, 'https://www.youtube.com/embed/Ygm_BmGYoJE', 'https://m.media-amazon.com/images/M/MV5BODcwMzkyOTMyM15BMl5BanBnXkFtZTcwMTA2Mjg5MQ@@._V1_UY1200_CR100,0,630,1200_AL_.jpg'),
(85, 50, 'Dancer in the Dark', 2000, 'Musical', 'An East European girl travels to the United States with her young son, expecting it to be like a Hollywood film.', 9.99, 'https://www.youtube.com/embed/53vr9EiOH7g', 'https://m.media-amazon.com/images/M/MV5BNDVkYWMxNWEtNjc2MC00OGI5LWI3NmUtYWUwNDQyOTc3YmY5XkEyXkFqcGdeQXVyMTQxNzMzNDI@._V1_.jpg'),
(86, 49, 'Les Miserables', 2012, 'Musical', 'In 19th-century France, Jean Valjean, who for decades has been hunted by the ruthless policeman Javert after breaking parole, agrees to care for a factory worker\'s daughter. The decision changes their', 8.99, 'https://www.youtube.com/embed/YmvHzCLP6ug', 'https://m.media-amazon.com/images/M/MV5BZTZkYTBkY2MtMzRmNS00NjM3LWFiMzItZmJjNzNhMjgyYzczXkEyXkFqcGdeQXVyODk4OTc3MTY@._V1_.jpg'),
(87, 50, 'The Saddest Music in the World', 2003, 'Musical', 'A musical of sorts set in Winnipeg during the Great Depression, where a beer baroness organizes a contest to find the saddest music in the world. Musicians from around the world descend on the city to', 5.99, 'https://www.youtube.com/embed/oyAlgfHgrk0', 'https://m.media-amazon.com/images/M/MV5BMTU4OTM5MTcyNF5BMl5BanBnXkFtZTYwNDEzOTc2._V1_UY1200_CR100,0,630,1200_AL_.jpg'),
(88, 48, '8 Women', 2002, 'Musical', 'One murdered man, eight women, each seeming to be eager than the others to know the truth. Gimme, gimme, gimme some clues to make up my mind. And eventually enter the truth. Oh, thou cruel woman!', 7.99, 'https://www.youtube.com/embed/Fv8_fsEq_j0', 'https://flxt.tmsimg.com/assets/p29724_p_v10_ag.jpg'),
(89, 50, 'Moulin Rouge!', 2001, 'Musical', 'A poet falls for a beautiful courtesan whom a jealous duke covets.', 7.99, 'https://www.youtube.com/embed/LVLjp3_MQIw', 'https://m.media-amazon.com/images/M/MV5BMWFhYjliNjYtYjNhNS00OGExLWFhMjQtNDgwOWYyNWJiYzhmXkEyXkFqcGdeQXVyMTMxODk2OTU@._V1_.jpg'),
(90, 50, 'Dreamgirls', 2006, 'Musical', 'A trio of black female soul singers cross over to the pop charts in the early 1960s, facing their own personal struggles along the way.', 7.99, 'https://www.youtube.com/embed/4m2dSs0HgSk', 'https://m.media-amazon.com/images/M/MV5BMTY1MzIwNDQyNl5BMl5BanBnXkFtZTcwNDEwNzYyMw@@._V1_UY1200_CR90,0,630,1200_AL_.jpg'),
(91, 50, 'Beauty and the Beast', 2017, 'Musical', 'A selfish Prince is cursed to become a monster for the rest of his life, unless he learns to fall in love with a beautiful young woman he keeps prisoner.', 19.99, 'https://www.youtube.com/embed/e3Nl_TCQXuw', 'https://m.media-amazon.com/images/M/MV5BMTUwNjUxMTM4NV5BMl5BanBnXkFtZTgwODExMDQzMTI@._V1_.jpg'),
(92, 50, 'Chi-Raq', 2015, 'Musical', 'A modern day adaptation of the ancient Greek play Lysistrata by Aristophanes, set against the backdrop of gang violence in Chicago, Illinois.', 5.99, 'https://www.youtube.com/embed/rGTuuj-aTJs', 'https://m.media-amazon.com/images/M/MV5BNTMwNzkxMDUxN15BMl5BanBnXkFtZTgwOTM5NjQzNzE@._V1_.jpg'),
(93, 50, 'The Lure', 2017, 'Musical', 'In Warsaw, a pair of mermaid sisters are adopted into a cabaret. While one seeks love with humans the other hungers to dine on the human population of the city.', 14.99, 'https://www.youtube.com/embed/WgWe9QVqrl0', 'https://m.media-amazon.com/images/M/MV5BZjhiMDcxM2EtNjllZi00YjJhLTg4MmEtMTg2ZjY2ZmViYjM1XkEyXkFqcGdeQXVyMjYxMzY2NDk@._V1_UY1200_CR95,0,630,1200_AL_.jpg'),
(94, 50, 'Charlie & Chocolate Factory', 2005, 'Musical', 'A young boy wins a tour through the most magnificent chocolate factory in the world, led by the world\'s most unusual candy maker.', 14.99, 'https://www.youtube.com/embed/OFVGCUIXJls', 'https://m.media-amazon.com/images/M/MV5BNjcxMjg1Njg2NF5BMl5BanBnXkFtZTcwMjQ4NzMzMw@@._V1_UY1200_CR91,0,630,1200_AL_.jpg'),
(95, 50, 'Sunshine on Leith', 2013, 'Musical', 'Two soldiers return home to Edinburgh to resume their romantic and family lives.', 12.99, 'https://www.youtube.com/embed/NRc5mtwjwvU', 'https://m.media-amazon.com/images/M/MV5BODIyNzU0NDYzM15BMl5BanBnXkFtZTgwNzM5NjUzMDE@._V1_.jpg'),
(96, 50, 'Mamma Mia! Here we go again', 2018, 'Musical', 'Five years after the events of Mamma Mia! (2008), Sophie prepares for the grand reopening of the Hotel Bella Donna as she learns more about her mother\'s past.', 14.99, 'https://www.youtube.com/embed/XcSMdhfKga4', 'https://m.media-amazon.com/images/M/MV5BMjEwMTM3OTI1NV5BMl5BanBnXkFtZTgwNDk5NTY0NTM@._V1_.jpg'),
(97, 50, 'Sweeny Todd', 2007, 'Musical', 'The infamous story of Benjamin Barker, aka Sweeney Todd, who sets up a barber shop in London which is the basis for a sinister partnership with his fellow tenant, Mrs. Lovett.', 7.99, 'https://www.youtube.com/embed/acHBq_oZm-8', 'https://m.media-amazon.com/images/M/MV5BMTg3NjUxMzM5NV5BMl5BanBnXkFtZTcwMzQ1NjQzMw@@._V1_.jpg'),
(98, 50, 'Chicago', 2002, 'Musical', 'Two death-row murderesses develop a fierce rivalry while competing for publicity, celebrity, and a sleazy lawyer\'s attention.', 7.99, 'https://www.youtube.com/embed/9EpaMmF9WVU', 'https://m.media-amazon.com/images/M/MV5BN2E3NDU1ZTktNzZjNy00MWU3LWI4YmMtMjdjNTIzMDU0MDdiXkEyXkFqcGdeQXVyMTMxODk2OTU@._V1_UY1200_CR92,0,630,1200_AL_.jpg'),
(99, 50, 'Mary Poppins Returns', 2018, 'Musical', 'A few decades after her original visit, Mary Poppins, the magical nanny, returns to help the Banks siblings and Michael\'s children through a difficult time in their lives.', 19.99, 'https://www.youtube.com/embed/-3jsfXDZLIY', 'https://m.media-amazon.com/images/M/MV5BMjQxNjE3NjYxN15BMl5BanBnXkFtZTgwMTk2NDQ3NjM@._V1_UY1200_CR105,0,630,1200_AL_.jpg'),
(100, 50, 'The Sapphires', 2012, 'Musical', 'It\'s 1968, and four young, talented Australian Aboriginal girls learn about love, friendship and war when their all-girl group The Sapphires entertain the US troops in Vietnam', 5.99, 'https://www.youtube.com/embed/IlkMgpYNDpU', 'https://m.media-amazon.com/images/M/MV5BMTQyNTk5MDk1OF5BMl5BanBnXkFtZTcwNjgyODYxOQ@@._V1_.jpg'),
(101, 50, 'Hairspray', 2007, 'Musical', 'Pleasantly plump teenager Tracy Turnblad teaches 1962 Baltimore a thing or two about integration after landing a spot on a local TV dance show.', 14.99, 'https://www.youtube.com/embed/SUoG7mqCixI', 'https://m.media-amazon.com/images/M/MV5BZmFhMzFkZTMtNmUxNS00OWQ1LTlhNjMtYzhmNTU4NmUzZDQwXkEyXkFqcGdeQXVyMTkzODUwNzk@._V1_UY1200_CR90,0,630,1200_AL_.jpg'),
(102, 50, 'Enchanted', 2007, 'Musical', 'A young maiden in a land called Andalasia, who is prepared to be wed, is sent away to New York City by an evil Queen, where she falls in love with a lawyer.', 17.99, 'https://www.youtube.com/embed/IJwUFq8uOr0', 'https://m.media-amazon.com/images/M/MV5BMjE4NDQ2Mjc0OF5BMl5BanBnXkFtZTcwNzQ2NDE1MQ@@._V1_.jpg'),
(103, 50, 'The Shape of Water', 2017, 'Romance', 'At a top secret research facility in the 1960s, a lonely janitor forms a unique relationship with an amphibious creature that is being held in captivity.', 7.99, 'https://www.youtube.com/embed/XFYWazblaUA', 'https://m.media-amazon.com/images/M/MV5BNGNiNWQ5M2MtNGI0OC00MDA2LWI5NzEtMmZiYjVjMDEyOWYzXkEyXkFqcGdeQXVyMjM4NTM5NDY@._V1_.jpg'),
(104, 49, 'The Big Sick', 2017, 'Romance', 'Pakistan-born comedian Kumail Nanjiani and grad student Emily Gardner fall in love but struggle as their cultures clash. When Emily contracts a mysterious illness, Kumail finds himself forced to face ', 6.99, 'https://www.youtube.com/embed/jcD0Daqc3Yw', 'https://m.media-amazon.com/images/M/MV5BZWM4YzZjOTEtZmU5ZS00ZTRkLWFiNjAtZTEwNzIzMDM5MjdmXkEyXkFqcGdeQXVyNDg2MjUxNjM@._V1_UY1200_CR90,0,630,1200_AL_.jpg'),
(105, 49, 'Carol', 2015, 'Romance', 'An aspiring photographer develops an intimate relationship with an older woman in 1950s New York.', 7.99, 'https://www.youtube.com/embed/d0tfOlP7OYA', 'https://m.media-amazon.com/images/M/MV5BMTczNTQ4OTEyNV5BMl5BanBnXkFtZTgwNDgyMDI3NjE@._V1_.jpg'),
(106, 49, 'Ash Is Purest White', 2018, 'Romance', 'A story of violent love within a time frame spanning from 2001 to 2017.', 9.99, 'https://www.youtube.com/embed/aLab19dyAVA', 'https://images-na.ssl-images-amazon.com/images/I/71Joor22P9L._SL1500_.jpg'),
(107, 50, 'Enough Said', 2013, 'Romance', 'A divorced woman who decides to pursue the man she\'s interested in learns he\'s her new friend\'s ex-husband.', 14.99, 'https://www.youtube.com/embed/R09EnVNGnio', 'https://m.media-amazon.com/images/M/MV5BMjI2MjIwMDk2Ml5BMl5BanBnXkFtZTcwNTQ1MzQ5OQ@@._V1_.jpg'),
(108, 50, 'Atlantics', 2019, 'Romance', 'In a popular suburb of Dakar, workers on the construction site of a futuristic tower, without pay for months, decide to leave the country by the ocean for a better future. Among them is Souleiman, the', 13.99, 'https://www.youtube.com/embed/ROku0vfgX-Q', 'https://m.media-amazon.com/images/M/MV5BODllOTQ1ZTgtYzIyMC00Yjg2LWJhNGMtNzgxMWM1NmE2ZmMyXkEyXkFqcGdeQXVyMTMxODk2OTU@._V1_.jpg'),
(109, 50, 'Titanic', 1997, 'Romance', 'A seventeen-year-old aristocrat falls in love with a kind but poor artist aboard the luxurious, ill-fated R.M.S. Titanic.', 7.99, 'https://www.youtube.com/embed/kVrqfYjkTdQ', 'https://m.media-amazon.com/images/M/MV5BMDdmZGU3NDQtY2E5My00ZTliLWIzOTUtMTY4ZGI1YjdiNjk3XkEyXkFqcGdeQXVyNTA4NzY1MzY@._V1_UY1200_CR88,0,630,1200_AL_.jpg'),
(110, 50, 'Lost in Translation', 2003, 'Romance', 'A faded movie star and a neglected young woman form an unlikely bond after crossing paths in Tokyo.', 8.99, 'https://www.youtube.com/embed/W6iVPCRflQM', 'https://m.media-amazon.com/images/M/MV5BMTUxMzk0NDg1MV5BMl5BanBnXkFtZTgwNDg0NjkxMDI@._V1_.jpg'),
(111, 50, 'The Lunchbox', 2013, 'Romance', 'A mistaken delivery in Mumbai\'s famously efficient lunchbox delivery system connects a young housewife to an older man in the dusk of his life as they build a fantasy world together through notes in t', 13.99, 'https://www.youtube.com/embed/sK3R0rvnlPs', 'https://m.media-amazon.com/images/M/MV5BMTUwMzc1NjIzMV5BMl5BanBnXkFtZTgwODUyMTIxMTE@._V1_.jpg'),
(112, 50, 'The Halt of It', 2020, 'Romance', 'When smart but cash-strapped teen Ellie Chu agrees to write a love letter for a jock, she doesn\'t expect to become his friend - or fall for his crush.', 11.99, 'https://www.youtube.com/embed/B-yhF7IScUE', 'https://m.media-amazon.com/images/M/MV5BY2RlZmZkOTUtMDI5Ni00ZjZmLWI1OTItZmUwNWE4ZWVjNzFiXkEyXkFqcGdeQXVyMTkzODUwNzk@._V1_.jpg'),
(113, 50, 'Midnight in Paris', 2011, 'Romance', 'While on a trip to Paris with his fiancée\'s family, a nostalgic screenwriter finds himself mysteriously going back to the 1920s every day at midnight.', 13.99, 'https://www.youtube.com/embed/FAfR8omt-CY', 'https://m.media-amazon.com/images/M/MV5BMTM4NjY1MDQwMl5BMl5BanBnXkFtZTcwNTI3Njg3NA@@._V1_.jpg'),
(114, 50, 'Up in the Air', 2009, 'Romance', 'Ryan Bingham enjoys living out of a suitcase for his job, travelling around the country firing people, but finds that lifestyle threatened by the presence of a potential love interest, and a new hire ', 9.99, 'https://www.youtube.com/embed/TSzVgkGvB1E', 'https://m.media-amazon.com/images/M/MV5BMTI3MzYxMTA4NF5BMl5BanBnXkFtZTcwMDE4ODg3Mg@@._V1_.jpg'),
(115, 50, 'About a Boy', 2002, 'Romance', '\r\nA cynical, immature young man is taught how to act like a grown-up by a little boy.', 14.99, 'https://www.youtube.com/embed/-apwoGTpi7E', 'https://m.media-amazon.com/images/M/MV5BMTQ2Mzg4MDAzNV5BMl5BanBnXkFtZTgwMjcxNTYxMTE@._V1_.jpg'),
(116, 50, 'Monsoon Wdding', 2002, 'Romance', 'A stressed father, a bride-to-be with a secret, a smitten event planner, and relatives from around the world create much ado about the preparations for an arranged marriage in India.', 14.99, 'https://www.youtube.com/embed/sjQjw-UyAX0', 'https://m.media-amazon.com/images/M/MV5BZWMzMDJhMjgtZjk2NS00ZDM4LThmOGMtOTQzYWU3N2Y4Y2M2XkEyXkFqcGdeQXVyNjQ2MjQ5NzM@._V1_.jpg'),
(117, 50, 'The Photograph', 2020, 'Romance', 'A series of intertwining love stories set in the past and in the present.', 14.99, 'https://www.youtube.com/embed/954b9vLAT6Y', 'https://hips.hearstapps.com/hmg-prod.s3.amazonaws.com/images/screen-shot-2020-12-17-at-12-23-43-am-1608212232.png?crop=0.99958071278826xw:1xh;center,top&resize=480:*'),
(118, 50, 'A Star is Born', 2018, 'Romance', 'A musician helps a young singer find fame as age and alcoholism send his own career into a downward spiral.', 13.99, 'https://www.youtube.com/embed/nSbzyEJ8X9E', 'https://m.media-amazon.com/images/M/MV5BNmE5ZmE3OGItNTdlNC00YmMxLWEzNjctYzAwOGQ5ODg0OTI0XkEyXkFqcGdeQXVyMTMxODk2OTU@._V1_.jpg'),
(119, 50, 'Anna Karenina', 2012, 'Romance', 'In late-19th-century Russian high society, St. Petersburg aristocrat Anna Karenina enters into a life-changing affair with the dashing Count Alexei Vronsky.', 14.99, 'https://www.youtube.com/embed/Z-nyXX5zOLg', 'https://m.media-amazon.com/images/M/MV5BMTU0NDgxNDg0NV5BMl5BanBnXkFtZTcwMjE4MzkwOA@@._V1_UY1200_CR90,0,630,1200_AL_.jpg'),
(120, 50, 'The Vow', 2012, 'Romance', 'A car accident puts Paige in a coma, and when she wakes up with severe memory loss, her husband Leo works to win her heart again.', 13.99, 'https://www.youtube.com/embed/PcL24s-S6ns', 'https://m.media-amazon.com/images/M/MV5BMjE1OTU5MjU0N15BMl5BanBnXkFtZTcwMzI3OTU5Ng@@._V1_.jpg'),
(121, 50, 'Lust, Caution', 2007, 'Romance', 'During World War II era, a young woman, Wang Jiazhi, gets swept up in a dangerous game of emotional intrigue with a powerful political figure, Mr. Yee.', 14.99, 'https://www.youtube.com/embed/lk41s1-Ub9A', 'https://m.media-amazon.com/images/M/MV5BMTI3MDI5ODMyNl5BMl5BanBnXkFtZTcwMTM2MjA1MQ@@._V1_UY1200_CR90,0,630,1200_AL_.jpg'),
(122, 50, 'The Notebook', 2004, 'Romance', 'A poor yet passionate young man falls in love with a rich young woman, giving her a sense of freedom, but they are soon separated because of their social', 14.99, 'https://www.youtube.com/embed/yDJIcYE32NU', 'https://m.media-amazon.com/images/M/MV5BMTk3OTM5Njg5M15BMl5BanBnXkFtZTYwMzA0ODI3._V1_UY1200_CR90,0,630,1200_AL_.jpg'),
(123, 48, 'Black Sheep', 2006, 'Horror', 'An experiment in genetic engineering turns harmless sheep into bloodthirsty killers that terrorize a sprawling New Zealand farm.', 4.99, 'https://www.youtube.com/embed/Hhck0SLcA6I', 'https://m.media-amazon.com/images/M/MV5BYTk2OTc5ODItNjQwOC00YTYxLTgzZWMtNTUwNjk1YTRhOTA0XkEyXkFqcGdeQXVyNTAyODkwOQ@@._V1_.jpg'),
(124, 49, 'Open Water', 2003, 'Horror', 'Based on the true story of two scuba divers accidentally stranded in shark infested waters after their tour boat has left.', 5.99, 'https://www.youtube.com/embed/Z9q1qJi1nMs', 'https://m.media-amazon.com/images/M/MV5BNjQ5ODAyOTk3OF5BMl5BanBnXkFtZTcwNzQ1NjYyMQ@@._V1_UY1200_CR89,0,630,1200_AL_.jpg'),
(125, 50, 'The Mist', 2007, 'Horror', 'A freak storm unleashes a species of bloodthirsty creatures on a small town, where a small band of citizens hole up in a supermarket and fight for their lives.', 12.99, 'https://www.youtube.com/embed/LhCKXJNGzN8', 'https://m.media-amazon.com/images/M/MV5BMTU2NjQyNDY1Ml5BMl5BanBnXkFtZTcwMTk1MDU1MQ@@._V1_UY1200_CR93,0,630,1200_AL_.jpg'),
(126, 50, 'The Ring', 2002, 'Horror', 'A journalist must investigate a mysterious videotape which seems to cause the death of anyone one week to the day after they view it.', 9.99, 'https://www.youtube.com/embed/yzR2GY-ew8I', 'https://m.media-amazon.com/images/M/MV5BNDA2NTg2NjE4Ml5BMl5BanBnXkFtZTYwMjYxMDg5._V1_UY1200_CR91,0,630,1200_AL_.jpg'),
(127, 50, 'Frailty', 2001, 'Horror', 'A mysterious man arrives at the offices of an FBI agent and recounts his childhood: how his religious fanatic father received visions telling him to destroy people who were in fact \"demons.', 7.99, 'https://www.youtube.com/embed/mW6TlPMHXgk', 'https://m.media-amazon.com/images/M/MV5BY2I4ZjhlZGYtNGM0YS00OWUwLTljZGEtZDU4NTczNjc3ODk2XkEyXkFqcGdeQXVyMjUzOTY1NTc@._V1_.jpg'),
(128, 50, 'Eden Lake', 2008, 'Horror', 'Refusing to let anything spoil their romantic weekend break, a young couple confront a gang of loutish youths with terrifyingly brutal consequences.', 7.99, 'https://www.youtube.com/embed/YTDuNF1aEQM', 'https://m.media-amazon.com/images/M/MV5BMTYwMzE0OTQzN15BMl5BanBnXkFtZTcwOTY5MDIwMg@@._V1_.jpg'),
(129, 49, 'Oculus', 2013, 'Horror', 'A woman tries to exonerate her brother, who was convicted of murder, by proving that the crime was committed by a supernatural phenomenon.', 12.99, 'https://www.youtube.com/embed/dYJrxezWLUk', 'https://m.media-amazon.com/images/M/MV5BMzE1NzM4MjEyNV5BMl5BanBnXkFtZTgwMjYzMjMzMTE@._V1_.jpg'),
(130, 50, 'Land of the Dead', 2005, 'Horror', 'The living dead have taken over the world, and the last humans live in a walled city to protect themselves as they come to grips with the situation.', 4.99, 'https://www.youtube.com/embed/4Wfj5Jc10ZI', 'https://m.media-amazon.com/images/M/MV5BNzU1MDI1NDM1NF5BMl5BanBnXkFtZTcwMzU5OTkyMQ@@._V1_.jpg'),
(131, 49, 'Trick r Treat', 2007, 'Horror', 'Five interwoven stories that occur on Halloween: An everyday high school principal has a secret life as a serial killer; a college virgin might have just met the guy for her; a group of teenagers pull a mean prank; a woman who loathes the night has to contend with her holiday-obsessed husband; and a mean old man meets his match with a demonic, supernatural trick-or-treater.', 12.99, 'https://www.youtube.com/embed/NJ66Htmmq4M', 'https://i.pinimg.com/originals/1d/f5/36/1df5369cae773fdaa8bf3e84960cd93e.jpg'),
(132, 50, 'The Lodge', 2019, 'Horror', 'A soon-to-be stepmom is snowed in with her fiancé\'s two children at a remote holiday village. Just as relations begin to thaw between the trio, some strange and frightening events take place.', 14.99, 'https://www.youtube.com/embed/dCLOqdzAP9E', 'https://m.media-amazon.com/images/M/MV5BNDQ2YWVmZjEtMTE1ZS00MDk1LTg5ODUtMDVlODk0OTM2ODMwXkEyXkFqcGdeQXVyMTkxNjUyNQ@@._V1_.jpg'),
(133, 50, 'Lights Out', 2016, 'Horror', 'Rebecca must unlock the terror behind her little brother\'s experiences that once tested her sanity, bringing her face to face with a supernatural spirit attached to their mother.', 12.99, 'https://www.youtube.com/embed/6LiKKFZyhRU', 'https://m.media-amazon.com/images/M/MV5BMTg1OTkxNDgyMV5BMl5BanBnXkFtZTgwMjEzNTc0ODE@._V1_.jpg'),
(134, 50, 'The Platform', 2019, 'Horror', 'A vertical prison with one cell per level. Two people per cell. Only one food platform and two minutes per day to feed. An endless nightmare trapped in The Hole.', 15.99, 'https://www.youtube.com/embed/RlfooqeZcdY', 'https://m.media-amazon.com/images/M/MV5BMzllNmRjYWItNjlhNS00MjcyLWIyODEtMTg0ZjBiNTNhNzQwXkEyXkFqcGdeQXVyMTAyOTE2ODg0._V1_.jpg'),
(135, 50, 'Youre Next', 2011, 'Horror', 'When the Davison family comes under attack during their wedding anniversary getaway, the gang of mysterious killers soon learns that one of the victims harbors a secret talent for fighting back.', 7.99, 'https://www.youtube.com/embed/ufUQWpEkbf0', 'https://m.media-amazon.com/images/M/MV5BMTQwODAxMTE1NF5BMl5BanBnXkFtZTcwNTQ0MjY3OQ@@._V1_.jpg'),
(136, 50, 'Thirst', 2009, 'Horror', 'Through a failed medical experiment, a priest is stricken with vampirism and is forced to abandon his ascetic ways.', 14.99, 'https://www.youtube.com/embed/TQz3dJ137jg', 'https://i.pinimg.com/originals/08/f0/25/08f025640c0aa97db24ece10d30bd3d9.jpg'),
(137, 50, 'Three... Extremes', 2004, 'Horror', 'An Asian cross-cultural trilogy of horror films from accomplished indie directors.', 3.99, 'https://www.youtube.com/embed/IqQHi1GYXpY', 'https://m.media-amazon.com/images/M/MV5BNzM5MTM2OTgzOF5BMl5BanBnXkFtZTcwNzc4NTUzMQ@@._V1_.jpg'),
(138, 50, '1408', 2007, 'Horror', 'A man who specialises in debunking paranormal occurrences checks into the fabled room 1408 in the Dolphin Hotel. Soon after settling in, he confronts genuine terror.', 12.99, 'https://www.youtube.com/embed/WIASqPZqnhs', 'https://m.media-amazon.com/images/M/MV5BMjQ2ODkxMjc4OV5BMl5BanBnXkFtZTgwMTgzNzQyMTI@._V1_.jpg'),
(139, 50, 'A Tale of Two Sisters', 2003, 'Horror', 'A family is haunted by the tragedies of deaths within the family.', 3.99, 'https://www.youtube.com/embed/4YmCIp4qlGg', 'https://m.media-amazon.com/images/M/MV5BMDMyNDE0ZmQtZTVhZC00M2Q1LTljNmUtYjFiNzljNGNjOTA3XkEyXkFqcGdeQXVyMTQxNzMzNDI@._V1_.jpg'),
(140, 50, 'Ouija: Origin of Evil', 2016, 'Horror', 'In 1967 Los Angeles, a widowed mother and her daughters add a new stunt to bolster their seance scam business by inviting an evil presence into their home, not realizing how dangerous it is.', 14.99, 'https://www.youtube.com/embed/MJIcZGEjjwo', 'https://m.media-amazon.com/images/M/MV5BMTk4NTcxNTQ5NF5BMl5BanBnXkFtZTgwNTk5OTU4OTE@._V1_.jpg'),
(141, 50, 'Pontypool', 2008, 'Horror', 'A radio host interprets the possible outbreak of a deadly virus which infects the small Ontario town he is stationed in.', 6.99, 'https://www.youtube.com/embed/Ehq2a8lum_4', 'https://m.media-amazon.com/images/M/MV5BNWZkMmNmNGItM2MwNC00YTY2LTk0ZDYtMGM0YjM5Nzk0MjVjXkEyXkFqcGdeQXVyMTQxNzMzNDI@._V1_.jpg'),
(142, 50, 'The Shallows', 2016, 'Horror', 'A mere 200 yards from shore, surfer Nancy is attacked by a great white shark, with her short journey to safety becoming the ultimate contest of wills.', 13.99, 'https://www.youtube.com/embed/EgdxIlSuB70', 'https://m.media-amazon.com/images/M/MV5BMjA1MTA4MzU4Ml5BMl5BanBnXkFtZTgwNjUxNjczODE@._V1_.jpg');
INSERT INTO `movies` (`movie_id`, `movie_amount`, `movie_name`, `movie_year`, `movie_genre`, `movie_description`, `movie_cost`, `movie_trailer`, `movie_picture`) VALUES
(143, 50, 'Girls Trip', 2017, 'Comedy', 'When four lifelong friends travel to New Orleans for the annual Essence Festival, sisterhoods are rekindled, wild sides are rediscovered, and there\'s enough dancing, drinking, brawling and romancing to make the Big Easy blush.', 14.99, 'https://www.youtube.com/embed/HnqkPpSn94Y', 'https://m.media-amazon.com/images/M/MV5BMjMwNTEzODUwMV5BMl5BanBnXkFtZTgwNjE5NjA5MjI@._V1_.jpg'),
(144, 49, 'Dark tower', 2015, 'Action', 'A boy haunted by visions of a dark tower from a parallel reality teams up with the tower\'s disillusioned guardian to stop an evil warlock known as the Man in Black who plans to use the boy to destroy the tower and open the gates of Hell.', 5.99, 'https://www.youtube.com/embed/GjwfqXTebIY', 'https://m.media-amazon.com/images/M/MV5BMTU3MjUwMzQ3MF5BMl5BanBnXkFtZTgwMjcwNjkxMjI@._V1_.jpg'),
(164, 48, 'It\'s Alive', 1974, 'Horror', 'The Davies expect a baby, which turns out to be a monster with a nasty habit of killing when it\'s scared. And it\'s easily scared.', 8.99, 'https://www.youtube.com/embed/2pW99eaMons', 'https://m.media-amazon.com/images/M/MV5BNGEyZDc1MzYtODY4Zi00Y2UzLWEwNmEtMzQxMGM0NzMyMzg0XkEyXkFqcGdeQXVyMTQxNzMzNDI@._V1_UY1200_CR68,0,630,1200_AL_.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `sales`
--

CREATE TABLE `sales` (
  `sales_id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `movie_id` int(11) DEFAULT NULL,
  `sales_date` date NOT NULL,
  `payment_method` varchar(30) NOT NULL,
  `card_number` varchar(20) NOT NULL,
  `card_expiration` varchar(20) NOT NULL,
  `card_name` varchar(40) NOT NULL,
  `amount` float(9,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `sales`
--

INSERT INTO `sales` (`sales_id`, `user_id`, `movie_id`, `sales_date`, `payment_method`, `card_number`, `card_expiration`, `card_name`, `amount`) VALUES
(77, 78, 129, '2021-05-03', 'Debit Card', '125969254152', '2021-06-24', 'Pedro', 12.99),
(80, 76, 64, '2021-05-03', 'Credit Card', '125969254152', '2021-05-16', 'Juan', 6.99),
(81, 76, 24, '2021-05-05', 'Debit Card', '125969254152', '2021-05-23', 'Juan', 9.99),
(82, 76, 44, '2021-05-07', 'Credit Card', '555555555555', '2021-05-11', 'Juan', 13.99),
(83, 76, 48, '2021-05-03', 'Debit Card', '125969254152', '2021-05-09', 'Juan', 7.99),
(84, 76, 10, '2021-05-11', 'Credit Card', '555555555555', '2021-05-16', 'Juan', 11.99),
(85, 89, 87, '2021-05-07', 'Credit Card', '125969254152', '2021-05-17', 'Victor', 5.99),
(86, 89, 68, '2021-05-07', 'Debit Card', '125969254152', '2021-05-10', 'Victor', 5.99),
(87, 89, 31, '2021-05-07', 'Credit Card', '125969254152', '2021-05-09', 'Victor', 2.99),
(88, 76, 93, '2021-05-07', 'Debit Card', '555555555555', '2021-05-28', 'Juan', 14.99),
(89, 90, 123, '2021-05-09', 'Debit Card', '352198526985', '2021-05-29', 'Jose', 4.99),
(90, 90, 9, '2021-05-09', 'Debit Card', '125969254152', '2021-05-24', 'Jose', 14.99),
(91, 90, 12, '2021-05-09', 'Credit Card', '125969254152', '2021-05-23', 'Jose', 13.99),
(92, 90, 89, '2021-05-09', 'Credit Card', '125969254152', '2021-05-25', 'Jose', 7.99),
(93, 90, 64, '2021-05-09', 'Debit Card', '125969254152', '2021-05-28', 'Jose', 6.99),
(94, 90, 25, '2021-05-09', 'Debit Card', '125969254152', '2021-05-28', 'Jose', 14.99),
(95, 90, 2, '2021-05-09', 'Debit Card', '125969254152', '2021-05-20', 'Jose', 12.95),
(96, 90, 51, '2021-05-09', 'Debit Card', '125969254152', '2021-05-26', 'Jose', 6.99),
(97, 90, 7, '2021-05-09', 'Debit Card', '125969254152', '2021-05-20', 'Jose', 9.95),
(98, 90, 32, '2021-05-09', 'Credit Card', '125969254152', '2021-05-20', 'Jose', 12.99),
(99, 76, 71, '2021-05-09', 'Credit Card', '125969254152', '2021-05-19', 'admin', 9.99),
(100, 76, 22, '2021-05-09', 'Debit Card', '555555555555', '2021-05-25', 'admin', 9.99),
(101, 76, 4, '2021-05-09', 'Credit Card', '555555555555', '2021-05-26', 'admin', 9.99),
(102, 76, 126, '2021-05-09', 'Credit Card', '555555555555', '2021-05-18', 'admin', 9.99),
(103, 76, 49, '2021-05-09', 'Debit Card', '555555555555', '2021-05-20', 'admin', 9.99),
(104, 90, 13, '2021-05-09', 'Credit Card', '125969254152', '2021-05-26', 'Jose', 7.95),
(105, 91, 2, '2021-05-09', 'Debit Card', '555555555555', '2021-05-18', 'Martin', 12.95),
(106, 91, 4, '2021-05-09', 'Credit Card', '125969254152', '2021-05-19', 'Martin', 9.99),
(107, 91, 6, '2021-05-09', 'Credit Card', '125969254152', '2021-05-11', 'Martin', 14.95),
(108, 91, 88, '2021-05-09', 'Credit Card', '125969254152', '2021-05-26', 'Martin', 7.99),
(109, 91, 124, '2021-05-09', 'Credit Card', '555555555555', '2021-05-19', 'Martin', 5.99),
(110, 76, 30, '2021-05-09', 'Credit Card', '555555555555', '2021-05-26', 'admin', 7.99),
(111, 90, 86, '2021-05-09', 'Credit Card', '125969254152', '2021-05-22', 'Jose', 8.99),
(112, 76, 131, '2021-05-09', 'Debit Card', '125969254152', '2021-05-19', 'admin', 12.99),
(113, 76, 123, '2021-05-09', 'Debit Card', '555555555555', '2021-05-25', 'admin', 4.99),
(114, 76, 58, '2021-05-10', 'Credit Card', '125969254152', '2021-05-14', 'admin', 12.99),
(115, 90, 144, '2021-05-10', 'Debit Card', '555555555555', '2021-05-20', 'Jose', 5.99),
(116, 93, 2, '2021-05-11', 'Credit Card', '125969254152', '2021-05-14', 'gg', 12.95),
(117, 93, 29, '2021-05-11', 'Debit Card', '125969254152', '2021-05-24', 'gg', 13.99),
(118, 93, 106, '2021-05-11', 'Credit Card', '125969254152', '2021-05-11', 'gg', 9.99),
(119, 93, 88, '2021-05-11', 'Credit Card', '125969254152', '2021-05-27', 'gg', 7.99),
(120, 93, 123, '2021-05-11', 'Debit Card', '125969254152', '2021-05-17', 'gg', 4.99),
(121, 93, 43, '2021-05-11', 'Debit Card', '125969254152', '2021-05-21', 'gg', 14.99),
(122, 93, 129, '2021-05-11', 'Credit Card', '555555555555', '2021-05-16', 'gg', 12.99),
(123, 76, 50, '2021-05-11', 'Debit Card', '555555555555', '2021-05-18', 'admin', 14.99),
(124, 76, 104, '2021-05-11', 'Debit Card', '125969254152', '2021-05-18', 'admin', 6.99),
(125, 76, 105, '2021-05-11', 'Debit Card', '555555555555', '2021-05-16', 'admin', 7.99),
(127, 76, 164, '2021-05-11', 'Debit Card', '555555555555', '2021-05-26', 'admin', 8.99),
(128, 76, 36, '2021-05-11', 'Debit Card', '125969254152', '2021-05-27', 'admin', 6.99),
(129, 91, 164, '2021-05-11', 'Debit Card', '125969254152', '2021-05-27', 'Martin', 8.99),
(130, 91, 12, '2021-05-11', 'Debit Card', '125969254152', '2021-05-25', 'Martin', 13.99);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `user_id` int(11) NOT NULL,
  `user_firstname` varchar(60) NOT NULL,
  `user_lastname` varchar(60) NOT NULL,
  `username` varchar(30) NOT NULL,
  `password` varchar(500) NOT NULL,
  `money_spent` float(9,2) DEFAULT NULL,
  `movies_owned` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`user_id`, `user_firstname`, `user_lastname`, `username`, `password`, `money_spent`, `movies_owned`) VALUES
(76, 'admin', 'admin', 'admin', '$2y$10$vP3Nx/sHL546T.n/iBmz..a7WJsb1cV5PyV9BVhjO0gm/Z3SSOoLq', 200.80, 20),
(78, 'Pedro ', 'Sanchez', 'pedro23', '$2y$10$V/CYYC60QPHfGmu.IpMh..2u2iLozHG2Ieu.TOFZiqUmF8NrAJjOu', 12.99, 1),
(89, 'Victor', 'Maldonado', 'victor123', '$2y$10$pJFDufEz4rhLW.W0y5OuBuRB33N.V5du2F2rKBeFZ/JWdMJSciLoK', 14.97, 3),
(90, 'Jose', 'Luis', 'jluis', '$2y$10$QlkBMcpqDzERvu7fHRr6TOCG3LnZVnXjzWO9IUYHub13PtQquv8Vm', 129.75, 13),
(91, 'Martin', 'Silva', 'Msilva', '$2y$10$uAruU6C1ZZE.z9ZymNweHeP1kuWydssRTSzK7xWxwX1DliiRYvaYC', 74.85, 7),
(93, 'gggg', 'gggs', 'gg', '$2y$10$0QvFYhXt3SMlUiiq6TLdqeN92DHvmHbNV9WM9.oWXkUK3yqpx4XpO', 77.89, 7),
(94, 'adfsad', 'sdfsf', 'sdfs', '$2y$10$mWOQ2duv6PE3sblsU2XptevHKDbODpDL93VyORBKIHjws29jNr3g6', 0.00, 0),
(95, 'sdfsdfd\'s', 'sdfsffd\'sf', 'sdffsdfs\'fdsf', '$2y$10$NdGR5p7WA6uWhkjn0XEAJO9/9yotFnEOrqW1IcsgQvlOaKi6eG83K', 0.00, 0),
(96, 'sdfsdf\'sfd\'\'', 'sdf\'sdf\'fdsf\'\'', 'sdfsdf\'fs\'\'', '$2y$10$xx0xMcD1puX0/FuKyKYAAONmY2FrlM.bmLvI1bX/liXmjn4FBLfhe', 0.00, 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `movies`
--
ALTER TABLE `movies`
  ADD PRIMARY KEY (`movie_id`);

--
-- Indexes for table `sales`
--
ALTER TABLE `sales`
  ADD PRIMARY KEY (`sales_id`),
  ADD KEY `movie_id` (`movie_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `movies`
--
ALTER TABLE `movies`
  MODIFY `movie_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=165;

--
-- AUTO_INCREMENT for table `sales`
--
ALTER TABLE `sales`
  MODIFY `sales_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=131;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=97;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `sales`
--
ALTER TABLE `sales`
  ADD CONSTRAINT `sales_ibfk_1` FOREIGN KEY (`movie_id`) REFERENCES `movies` (`movie_id`) ON DELETE SET NULL,
  ADD CONSTRAINT `sales_ibfk_2` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`) ON DELETE SET NULL;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
