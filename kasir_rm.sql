/*
SQLyog Community v13.1.1 (64 bit)
MySQL - 10.3.13-MariaDB : Database - kasir_rm
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`kasir_rm` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `kasir_rm`;

/*Table structure for table `login` */

DROP TABLE IF EXISTS `login`;

CREATE TABLE `login` (
  `username` varchar(16) NOT NULL,
  `password` varchar(16) NOT NULL,
  PRIMARY KEY (`username`,`password`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `login` */

insert  into `login`(`username`,`password`) values 
('atur','atur02'),
('sarah','sarah01');

/*Table structure for table `makanan` */

DROP TABLE IF EXISTS `makanan`;

CREATE TABLE `makanan` (
  `id_makanan` varchar(10) NOT NULL,
  `nama_makanan` varchar(30) NOT NULL,
  `harga_makan` int(11) NOT NULL,
  PRIMARY KEY (`id_makanan`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `makanan` */

insert  into `makanan`(`id_makanan`,`nama_makanan`,`harga_makan`) values 
('0','---None---',0),
('1','BBQ Chicken',15000),
('10','Chicken Fried Dragon Rice',18000),
('11','Singapore Fried Rice',15000),
('12','Stewed Fish',18000),
('13','Baked Fish',18000),
('14','Fried Fish',17000),
('15','Curried Shrimp',18000),
('16','Pepper Shrimp',19000),
('17','Beef Burger',10000),
('18','Shrimp Roti',11000),
('19','Cornmeal Porridge',9000),
('2','Chinesse Style Squid',17000),
('3','Curried Beef',25000),
('4','Cow Heel Soup',20000),
('5','Chicken Foot Soup',15000),
('6','Curried Goat',22000),
('7','Rice & Peas',5000),
('8','White Rice',4000),
('9','Special Fried Rice',14000);

/*Table structure for table `minuman` */

DROP TABLE IF EXISTS `minuman`;

CREATE TABLE `minuman` (
  `id_minuman` varchar(10) NOT NULL,
  `nama_minuman` varchar(30) NOT NULL,
  `harga_minuman` int(11) NOT NULL,
  PRIMARY KEY (`id_minuman`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `minuman` */

insert  into `minuman`(`id_minuman`,`nama_minuman`,`harga_minuman`) values 
('0','---None---',0),
('1','Lemon Tea',9000),
('10','Thai Iced Green Tea',10000),
('11','Thai Iced Red Velvet',12000),
('12','Young Coconut Juice',9500),
('2.','Hot Iced Tea',8000),
('3','Hot Apple Cider',9000),
('4','Dark Chocolate Freeze',12000),
('5','Manggo Juice',14000),
('6','Watermelon Juice',14000),
('7','Orange Juice',14000),
('8','Avocado Juice',14000),
('9','Thai Iced Tea Original',9000);

/*Table structure for table `pembeli` */

DROP TABLE IF EXISTS `pembeli`;

CREATE TABLE `pembeli` (
  `id_pembeli` varchar(10) NOT NULL,
  `nama_pembeli` varchar(30) NOT NULL,
  `jenis_kelamin` varchar(10) NOT NULL,
  `alamat_pembeli` varchar(30) DEFAULT NULL,
  `no_hp` varchar(10) DEFAULT NULL,
  `total_pembelian` int(11) DEFAULT NULL,
  `tanggal_pembelian` varchar(10) DEFAULT NULL,
  `waktu_pembelian` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`id_pembeli`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `pembeli` */

insert  into `pembeli`(`id_pembeli`,`nama_pembeli`,`jenis_kelamin`,`alamat_pembeli`,`no_hp`,`total_pembelian`,`tanggal_pembelian`,`waktu_pembelian`) values 
('1','Rezky','Laki-laki','Jl. Medan','0812345',54000,'01/06/2019','11:14:30');

/*Table structure for table `transaksi` */

DROP TABLE IF EXISTS `transaksi`;

CREATE TABLE `transaksi` (
  `id_transaksi` int(11) NOT NULL,
  `total_makanan` int(11) DEFAULT NULL,
  `total_minuman` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_transaksi`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `transaksi` */

insert  into `transaksi`(`id_transaksi`,`total_makanan`,`total_minuman`) values 
(1,30000,24000);

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
