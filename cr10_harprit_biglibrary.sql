-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Erstellungszeit: 18. Jul 2020 um 00:43
-- Server-Version: 10.4.13-MariaDB
-- PHP-Version: 7.4.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Datenbank: `cr10_harprit_biglibrary`
--

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `books`
--

CREATE TABLE `books` (
  `id` int(11) NOT NULL,
  `author` varchar(255) NOT NULL,
  `title` varchar(255) NOT NULL,
  `descriptio` varchar(500) NOT NULL,
  `picture` varchar(500) NOT NULL,
  `status` int(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Daten für Tabelle `books`
--

INSERT INTO `books` (`id`, `author`, `title`, `descriptio`, `picture`, `status`) VALUES
(1, 'OWENS, DELIA', 'Der Gesang der Flusskrebse', 'Ein schmerzlich schönes Debüt, das eine Kriminalgeschichte mit der Erzählung eines Erwachsenwerdens verbindet und die Natur feiert', 'https://bestseller.buchreport.de/cover/medium/9783446264199.jpg', 0),
(2, 'BERGMANN, RENATE', 'Dann bleiben wir eben zu Hause!', 'Hier schreibt Renate Bergmann, guten Morgen! Das sind verrückte Zeiten, finden Se nicht?', 'https://bestseller.buchreport.de/cover/medium/9783548064345.jpg', 0),
(3, 'Collins, Suzanne', 'Die Tribute von Panem. Das Lied von Vogel und Schlange', 'Es ist der Morgen der Ernte der zehnten Hungerspiele. Im Kapitol macht sich der 18-jährige Coriolanus Snow bereit, als Mentor bei den Hungerspielen zu Ruhm und Ehre zu gelangen.', 'https://bestseller.buchreport.de/cover/medium/9783789120022.jpg', 0),
(4, 'Matthiessen, Susanne', 'Ozelot und Friesennerz', 'Der Roman einer ganz normal verrückten Kindheit in den Siebzigern - und die Suche nach einer Heimat, die es so nicht mehr gibt.', 'https://bestseller.buchreport.de/cover/medium/9783550200649.jpg', 0),
(5, 'Leon, Donna', 'Geheime Quellen', 'Als Vittorio Fadalto in einer Sommernacht auf dem Rückweg vom Krankenhaus mit dem Motorrad verunglückt, glauben alle an einen Unfall. ', 'https://bestseller.buchreport.de/cover/medium/9783257070996.jpg', 0),
(6, 'Colombani, Laetitia', 'Das Haus der Frauen', 'n Paris steht ein Haus, das allen Frauen dieser Welt Zuflucht bietet. Auch der erfolgreichen Anwältin Solène, die nach einem Zusammenbruch ihr Leben in Frage stellt', 'https://bestseller.buchreport.de/cover/medium/9783103900033.jpg', 1),
(7, 'Colombani, Laetitia', 'Das Haus der Frauen', 'n Paris steht ein Haus, das allen Frauen dieser Welt Zuflucht bietet. Auch der erfolgreichen Anwältin Solène, die nach einem Zusammenbruch ihr Leben in Frage stellt', 'https://bestseller.buchreport.de/cover/medium/9783103900033.jpg', 0),
(8, 'BALZANO, MARCO', 'Ich bleibe hier', 'Ein idyllisches Bergdorf in Südtirol - doch die Zeiten sind hart. Von 1939 bis 1943 werden die Leute vor die Wahl gestellt: entweder nach Deutschland auszuwandern oder als Bürger zweiter Klasse in Italien zu bleiben.', 'https://bestseller.buchreport.de/cover/medium/9783257071214.jpg', 0),
(9, 'Sparks, Nicholas', 'Wenn du zurückkehrst', 'Trevor ist 32 und an einer Wegscheide in seinem Leben angekommen. Da stirbt sein Großvater und hinterlässt ihm sein Cottage in North Carolina - samt riesigem Garten und zwanzig Bienenstöcken.', 'https://bestseller.buchreport.de/cover/medium/9783453271746.jpg', 0),
(10, 'Mercier, Pascal', 'Das Gewicht der Worte', 'Simon Leyland ist Übersetzer und verfolgt unbeirrt das Ziel, alle Sprachen zu lernen, die rund um das Mittelmeer gesprochen werden. Von London folgt er seiner Frau Livia nach Triest, wo sie einen Verlag geerbt hat.', 'https://bestseller.buchreport.de/cover/medium/9783446265691.jpg', 0),
(11, 'Helfer, Monika', 'Die Bagage', 'Josef und Maria Moosbrugger leben mit ihren Kindern am Rand eines Bergdorfes. Sie sind die Abseitigen, die Armen, die Bagage. Es ist die Zeit des ersten Weltkriegs und Josef wird zur Armee eingezogen. ', 'https://bestseller.buchreport.de/cover/medium/9783446265622.jpg', 0);

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `customer`
--

CREATE TABLE `customer` (
  `customer_id` int(11) NOT NULL,
  `customer_f_name` varchar(100) NOT NULL,
  `customer_l_name` varchar(100) NOT NULL,
  `customer_address` varchar(300) NOT NULL,
  `fk_lend_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `lend`
--

CREATE TABLE `lend` (
  `lend_id` int(11) NOT NULL,
  `lend_date_start` date NOT NULL,
  `Lend_date_end` date NOT NULL,
  `fk_book_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Indizes der exportierten Tabellen
--

--
-- Indizes für die Tabelle `books`
--
ALTER TABLE `books`
  ADD PRIMARY KEY (`id`);

--
-- Indizes für die Tabelle `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`customer_id`);

--
-- Indizes für die Tabelle `lend`
--
ALTER TABLE `lend`
  ADD PRIMARY KEY (`lend_id`);

--
-- AUTO_INCREMENT für exportierte Tabellen
--

--
-- AUTO_INCREMENT für Tabelle `books`
--
ALTER TABLE `books`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT für Tabelle `customer`
--
ALTER TABLE `customer`
  MODIFY `customer_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT für Tabelle `lend`
--
ALTER TABLE `lend`
  MODIFY `lend_id` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
