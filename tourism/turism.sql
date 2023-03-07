-- phpMyAdmin SQL Dump
-- version 4.9.7
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Mar 07, 2023 at 06:28 PM
-- Server version: 5.7.36
-- PHP Version: 7.4.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `turism`
--

-- --------------------------------------------------------

--
-- Table structure for table `adresa`
--

DROP TABLE IF EXISTS `adresa`;
CREATE TABLE IF NOT EXISTS `adresa` (
  `id_adresa` int(11) NOT NULL AUTO_INCREMENT,
  `strada` varchar(20) NOT NULL,
  `oras` varchar(15) NOT NULL,
  PRIMARY KEY (`id_adresa`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `adresa`
--

INSERT INTO `adresa` (`id_adresa`, `strada`, `oras`) VALUES
(12, 'Kutuzov', 'Ploiesti'),
(13, 'Sublocotenent Erou C', 'Ploiesti'),
(14, 'Bd. Independentei', 'Ploiesti'),
(15, 'Dr. Bagdasar', 'Ploiesti'),
(16, 'George Bacovia', 'Bucuresti'),
(17, 'Doamnei', 'Bucuresti'),
(18, 'Calea Victoriei', 'Bucuresti'),
(19, 'Sublocotenent Erou C', 'Ploiesti'),
(20, 'Şoseaua Pavel D. Kis', 'Bucuresti'),
(21, 'Lipscani', 'Bucuresti'),
(22, 'Doctor Dumitru Bagda', 'Ploiesti');

-- --------------------------------------------------------

--
-- Table structure for table `artist`
--

DROP TABLE IF EXISTS `artist`;
CREATE TABLE IF NOT EXISTS `artist` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nume_artist` varchar(180) NOT NULL,
  `studii` varchar(180) NOT NULL,
  `varsta` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `artist`
--

INSERT INTO `artist` (`id`, `nume_artist`, `studii`, `varsta`) VALUES
(1, 'Theodor Pallady', 'Politehnica din Dresda, Școala Națională Superioară de Arte Frumoase de la Paris, Academia de Arte Frumoase din München.', 85),
(2, 'Liliana Chiriac', 'Liceul de artă, Chişinău, Academia de Artă Bucureşti, Facultatea de Arte Decorative şi Design', 51),
(3, 'Artista Athena Dumitriu', 'Scoala de Arte', 40),
(4, 'Anonim', 'Necunoscut', 0),
(5, 'Postaru Viorica', 'Facultatea de Chimie', 54),
(6, 'Popa Valentin', 'Liceul de Arte', 44);

-- --------------------------------------------------------

--
-- Table structure for table `expozitie`
--

DROP TABLE IF EXISTS `expozitie`;
CREATE TABLE IF NOT EXISTS `expozitie` (
  `id_expozitie` int(11) NOT NULL AUTO_INCREMENT,
  `nume_expozitie` varchar(180) NOT NULL,
  `descriere` varchar(800) NOT NULL,
  PRIMARY KEY (`id_expozitie`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `expozitie`
--

INSERT INTO `expozitie` (`id_expozitie`, `nume_expozitie`, `descriere`) VALUES
(1, 'Din opera grafică a lui Theodor Pallady', 'Expoziția urmărește o structurare cronologică, astfel dintre lucrările timpurii ale artistului sunt prezente câteva compoziții alegorice din perioada 1896-1900 și o suită de impresii din Moldova din perioada 1906-1916, care sunt urmate de peisajele din Franța, în special din „Parisul său”, dar şi din Dobrogea sau București, unde a revenit anual cu participări la expoziții.'),
(2, 'Expozitia Camasa Ciumei', 'Artista Athena Dumitriu realizează o Cămașă a Ciumei din cânepă, pornind de la acest obicei străvechi de vindecare pe care îl reinterpretează într-o cheie contemporană și adaptată vremurilor actuale.'),
(3, 'Muzeul Pandemiei. Identitati fragile. Valul 2', 'Muzeul Pandemiei propune anul acesta un nou proiect participativ axat pe ilustrarea violenței domestice (re)simțită individual de către femeile din România în contextul pandemic.'),
(4, 'Minunea Mea', 'Minunea mea este un indemn la sondare dupa cele mai valoroase resurse energetice la care putem apela cand avem nevoie de o doza de miraj in rutina zilnica. Suntem mai bogati cu minunile noastre si pentru ca, asa cum ne spun cercetatorii, creierul nostru transmite semnale benefice intregului corp chiar daca doar ne conectam la imaginea mentala care ne-a facut sa ne minunam odata.');

-- --------------------------------------------------------

--
-- Table structure for table `galerie`
--

DROP TABLE IF EXISTS `galerie`;
CREATE TABLE IF NOT EXISTS `galerie` (
  `id_galerie` int(11) NOT NULL AUTO_INCREMENT,
  `nume_galerie` varchar(180) NOT NULL,
  `tema` varchar(180) NOT NULL,
  `id_muzeu` int(11) NOT NULL,
  PRIMARY KEY (`id_galerie`),
  KEY `galerie_ibfk_1` (`id_muzeu`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `galerie`
--

INSERT INTO `galerie` (`id_galerie`, `nume_galerie`, `tema`, `id_muzeu`) VALUES
(5, 'Sala A', 'Arta', 18),
(6, 'Sala Acvariu', 'Cultura & Traditie', 20),
(7, 'Galeria Pandemiei', 'Violenta domestica', 21),
(8, 'Galeria Pictorilor de Azi', 'Picturi', 18);

-- --------------------------------------------------------

--
-- Table structure for table `galerie_expozitie`
--

DROP TABLE IF EXISTS `galerie_expozitie`;
CREATE TABLE IF NOT EXISTS `galerie_expozitie` (
  `expozitie` int(11) NOT NULL,
  `galerie` int(11) NOT NULL,
  KEY `galerie` (`galerie`),
  KEY `expozitie` (`expozitie`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `muzeu`
--

DROP TABLE IF EXISTS `muzeu`;
CREATE TABLE IF NOT EXISTS `muzeu` (
  `id_muzeu` int(11) NOT NULL AUTO_INCREMENT,
  `id_adresa` int(11) DEFAULT NULL,
  `nume_muzeu` varchar(130) NOT NULL,
  `descriere` varchar(800) NOT NULL,
  PRIMARY KEY (`id_muzeu`),
  KEY `id_adresa` (`id_adresa`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `muzeu`
--

INSERT INTO `muzeu` (`id_muzeu`, `id_adresa`, `nume_muzeu`, `descriere`) VALUES
(12, 12, 'Muzeul Ion Luca Caragiale', 'Muzeul a luat fiinta din pasiunea pentru istorie si cultura a distinsului prof. N. Simache, in anul 1962, cand s-au sarbatorit 110 ani de la nasterea marelui clasic al literaturii romane si a fost reorganizat in anul 2002, cu prilejul ANULUI CARAGIALE.'),
(13, 13, 'Muzeul Omului', 'Materialul expozitional, de o mare diversitate, este prezentat intr-o maniera moderna si functionala, extrem de sugestiv, cu o incarcatura informationala complexa, dar bine dotata si accesibila, cu o desfasurare logica, pe coordonatele rigorii stiintifice si ale principiilor muzeistii moderne.'),
(14, 14, 'Muzeul de Arta Ploiesti', 'Muzeul de Arta Ploiesti isi are originea in Pinacoteca Municipiului Ploiesti, infiintata in noiembrie 1931 in urma eforturilor consecvente ale unui grup de vaza de intelectuali ploiesteni, intre care avocatul, omul politic si colectionarul de arta Ion Ionescu-Quintus, arhitectul Toma T. Socolescu, istoricul Dumitru Munteanu-Ramnic, cu sprijinul autoritatilor locale si in cadrul Asezamintelor Culturale Nicolae Iorga.'),
(15, 22, 'Muzeul National al Petrolului', 'Pentru cei care trec pragul  muzeului,  inseamna posibilitatea cunoasterii celor mai importante momente ale istoriei petrolului si ale orasului - atat de impletite una cu cealalta -   si prilejul de a  cunoaste personalitatile marcante  ale activitatilor de descoperire, exploatare si prelucrare ale acestor importante zacaminte naturale. Specialistii din domeniu  prezentati in expozitia  muzeului  au fost recunoscuti pe plan mondial pentru inventiile si inovatiile lor si constituie adevarate modele pentru tinerii vizitatori.'),
(16, 16, 'Casa Memorială George și Aghata Bacovia', 'Casa Memoriala George si Agatha Bacovia a fost infiintata in 1958 si face parte din patrimoniul cultural al Bucurestiului, fiind deschisa vizitatorilor din 1966. Imobilul este cea mai importanta marturie a vietii poetului George Bacovia, care a trait aici din 1933 pana in 1957, alaturi de sotia sa, Agatha. Spatiul simplu, reconstruieste prin fiecare coltisor atmosfera in care lucra poetul, dar si viata de zi cu zi a acestuia.'),
(17, 17, 'Muzeul Băncii Naționale a României', 'Este una dintre cele mai valoroase colecții numismatice din România acoperind o perioadă de peste două milenii și jumătate, fiind expuse printre altele și cea mai veche monedă bătută pe teritoriul României de astăzi, și cei mai mici bani din hârtie tipăriți în România.'),
(18, 18, 'Muzeul Colecțiilor de Artă', 'Muzeul Colecţiilor de Artă prezintă publicului lucrări reprezentative pentru fenomenul artistic și pentru colecționismul din România.\r\n'),
(19, 19, 'Muzeul Judetean de Stiinte ale Naturii Prahova', 'Muzeul de Stiintele Naturii este un muzeu de tip special, pentru ca el stocheaza viul si neviul, avand ca scop instruirea si educarea publicului, atat pentru interes stiintific, dar si pentru a trezi dragostea si interesul fata de viata si natura.'),
(20, 20, 'Muzeul National al Taranului Roman\r\n', 'Colecțiile de costume populare, ceramică și icoane prezintă cultura română într-o clădire impozantă, din 1941.\r\n'),
(21, 21, 'ARCUB', 'Centru cultural');

-- --------------------------------------------------------

--
-- Table structure for table `obiect`
--

DROP TABLE IF EXISTS `obiect`;
CREATE TABLE IF NOT EXISTS `obiect` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nume_obiect` varchar(180) NOT NULL,
  `id_artist` int(11) NOT NULL,
  `descriere` varchar(800) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `obiect_ibfk_1` (`id_artist`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `obiect`
--

INSERT INTO `obiect` (`id`, `nume_obiect`, `id_artist`, `descriere`) VALUES
(1, 'Flori galbene şi albastre', 2, 'Naturile statice au în opera lui Theodor Pallady rolul unor catalizatori simbolici sui generis. Fiecare obiect, concentrează o semnificaţie atemporală fiind în acelaşi timp expresia unui moment tranzitoriu din viaţa artistului.'),
(2, 'Flori la fereasta, Place Dauphine', 2, 'Compozitia ,,Flori la fereasta, Place Dauphine” este o capodopera, in ea artistul ilustreaza un colt din Piata Dauphine, care se vede prin fereastra deschisa, asfaltul este ud dupa ploaia care tocmai s-a oprit, cerul innorat, in dreptul ferestrei se afla ziarul deschis pe masa si un ghiveci cu flori. Imaginea din tablou este asociata cu spiritul artistului.'),
(3, 'Pont-Neuf', 2, 'In peisajul ,,Pont-Neuf” artistul recurge la o paleta restransa de culori, realizand o distributie a luminii, ce reda imaginea tarmurilor Senei, podul si cladirile din jur.'),
(4, 'Natura Moarta', 2, 'Compoziţie cu pistol, farfurie şi cană. Văzute de sus, pe o masă, câteva obiecte, diferite ca mărime, formă şi structură, toate paginate în plan central. Un pistol vechi cu mâner de lemn, aşezat oblic spre colţul din dreapta, lângă el o pereche de ochelari cu lentile gri şi ramă galbenă, ambele aşezate pe un ziar (Evenimentul). Aproape central, un vas de ceramică, în nuanţe de ocru roşietic, cu câteva flori de câmp, cu tije mare, multe frunzuliţe, se profilează pe un fond verde smaragd, vibrat, mici accente de galben şi negru. Lângă vas, spre colţul stâng, o farfurioară gălbuie, în ea un lujer cu doi bumbi. Fundalul - porţiuni, în stânga şi dreapta, griuri cenuşii, accente de negru. Faţa de masă, nuanţe de umbră arsă - roşu stins, cu dungi oblice, unele mai accentuate. Semnat lateral dreap'),
(5, 'Canasa Ciumei', 3, 'Lipsiti de informatii medicale si de alte mijloace de protectie, taranii credeau in magia vindecatoare a unui obiect vestimentar realizat din canepa, deoarece firele ei erau iubite de draci si de vrajitoare'),
(6, 'Bata de baseball', 4, 'Obiect folosit impotriva unei victime a violentei domestice in timpul restrictiilor pandemiei. Victima este protejata sub anonimat.'),
(7, 'Valuri de dor', 5, 'Picture in ulei realizata pe panza, valuri albastre'),
(8, 'Umbra de femeie', 5, 'ulei, acril panza'),
(9, 'Pofta acerba', 5, 'ulei, acril mix media pe panza de sac'),
(10, 'Adela', 6, 'acril carton panzat'),
(11, 'Octombrie la constanta', 6, 'acril carton panzat');

-- --------------------------------------------------------

--
-- Table structure for table `obiect_expozitie`
--

DROP TABLE IF EXISTS `obiect_expozitie`;
CREATE TABLE IF NOT EXISTS `obiect_expozitie` (
  `id_obiect` int(11) NOT NULL,
  `id_expozitie` int(11) NOT NULL,
  KEY `obiect_expozitie_ibfk_1` (`id_expozitie`),
  KEY `obiect_expozitie_ibfk_2` (`id_obiect`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `obiect_expozitie`
--

INSERT INTO `obiect_expozitie` (`id_obiect`, `id_expozitie`) VALUES
(5, 2),
(1, 1),
(2, 1),
(3, 1),
(4, 1),
(6, 3),
(7, 4),
(8, 4),
(9, 4),
(10, 4),
(11, 4);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `galerie`
--
ALTER TABLE `galerie`
  ADD CONSTRAINT `galerie_ibfk_1` FOREIGN KEY (`id_muzeu`) REFERENCES `muzeu` (`id_muzeu`) ON DELETE CASCADE;

--
-- Constraints for table `galerie_expozitie`
--
ALTER TABLE `galerie_expozitie`
  ADD CONSTRAINT `galerie_expozitie_ibfk_1` FOREIGN KEY (`galerie`) REFERENCES `galerie` (`id_galerie`) ON DELETE CASCADE,
  ADD CONSTRAINT `galerie_expozitie_ibfk_2` FOREIGN KEY (`expozitie`) REFERENCES `expozitie` (`id_expozitie`) ON DELETE CASCADE;

--
-- Constraints for table `muzeu`
--
ALTER TABLE `muzeu`
  ADD CONSTRAINT `muzeu_ibfk_1` FOREIGN KEY (`id_adresa`) REFERENCES `adresa` (`id_adresa`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `obiect`
--
ALTER TABLE `obiect`
  ADD CONSTRAINT `obiect_ibfk_1` FOREIGN KEY (`id_artist`) REFERENCES `artist` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `obiect_expozitie`
--
ALTER TABLE `obiect_expozitie`
  ADD CONSTRAINT `obiect_expozitie_ibfk_1` FOREIGN KEY (`id_expozitie`) REFERENCES `expozitie` (`id_expozitie`) ON DELETE CASCADE,
  ADD CONSTRAINT `obiect_expozitie_ibfk_2` FOREIGN KEY (`id_obiect`) REFERENCES `obiect` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
