-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Sep 21, 2022 at 11:15 PM
-- Server version: 8.0.30-0ubuntu0.20.04.2
-- PHP Version: 7.4.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `nivelacion`
--

-- --------------------------------------------------------

--
-- Table structure for table `agencias`
--

CREATE TABLE `agencias` (
  `id` int NOT NULL,
  `nombre` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `agencias`
--

INSERT INTO `agencias` (`id`, `nombre`) VALUES
(1, 'prueba'),
(2, 'holi2'),
(3, 'update2'),
(5, 'update2'),
(6, 'testin');

-- --------------------------------------------------------

--
-- Table structure for table `clientes`
--

CREATE TABLE `clientes` (
  `id` int NOT NULL,
  `nombre` varchar(255) DEFAULT NULL,
  `documento` varchar(15) DEFAULT NULL,
  `correo` varchar(50) DEFAULT NULL,
  `telefono` varchar(13) DEFAULT NULL,
  `agencias_id` int DEFAULT NULL,
  `vendedores_id` int DEFAULT NULL,
  `direccion` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `inmAlquiler`
--

CREATE TABLE `inmAlquiler` (
  `id` int NOT NULL,
  `precio` float DEFAULT NULL,
  `fianza` float DEFAULT NULL,
  `inmuebles_codigo` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `inmComercial`
--

CREATE TABLE `inmComercial` (
  `id` int NOT NULL,
  `tienelicencia` bit(1) DEFAULT NULL,
  `inmuebles_codigo` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `inmPiso`
--

CREATE TABLE `inmPiso` (
  `id` int NOT NULL,
  `tienelicencia` bit(1) DEFAULT NULL,
  `inmuebles_codigo` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `inmuebles`
--

CREATE TABLE `inmuebles` (
  `codigo` int NOT NULL,
  `superficie` float(10,2) DEFAULT NULL,
  `tipoContrato_id` int DEFAULT NULL,
  `tipoInmueble_id` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `inmVentas`
--

CREATE TABLE `inmVentas` (
  `id` int NOT NULL,
  `precio` float DEFAULT NULL,
  `estaHipotecado` bit(1) DEFAULT NULL,
  `inmuebles_codigo` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `propietarios`
--

CREATE TABLE `propietarios` (
  `id` int NOT NULL,
  `nombre` varchar(255) DEFAULT NULL,
  `documento` varchar(15) DEFAULT NULL,
  `correo` varchar(50) DEFAULT NULL,
  `telefono` varchar(13) DEFAULT NULL,
  `inmuebles_codigo` int DEFAULT NULL,
  `direccion` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `reservas`
--

CREATE TABLE `reservas` (
  `id` int NOT NULL,
  `fecha` date DEFAULT NULL,
  `monto` float DEFAULT NULL,
  `clientes_id` int DEFAULT NULL,
  `vendedores_id` int DEFAULT NULL,
  `inmuebles_codigo` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `telefonos`
--

CREATE TABLE `telefonos` (
  `id` int NOT NULL,
  `telefono` varchar(13) DEFAULT NULL,
  `agencias_id` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tipoContrato`
--

CREATE TABLE `tipoContrato` (
  `id` int NOT NULL,
  `nombre` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tipoInmueble`
--

CREATE TABLE `tipoInmueble` (
  `id` int NOT NULL,
  `nombre` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `titulares`
--

CREATE TABLE `titulares` (
  `id` int NOT NULL,
  `nombre` varchar(255) DEFAULT NULL,
  `documento` varchar(15) DEFAULT NULL,
  `correo` varchar(50) DEFAULT NULL,
  `telefono` varchar(13) DEFAULT NULL,
  `agencias_id` int DEFAULT NULL,
  `direccion` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `transacciones`
--

CREATE TABLE `transacciones` (
  `id` int NOT NULL,
  `fecha` date DEFAULT NULL,
  `monto` float DEFAULT NULL,
  `clientes_id` int DEFAULT NULL,
  `vendedores_id` int DEFAULT NULL,
  `inmuebles_codigo` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `vendedores`
--

CREATE TABLE `vendedores` (
  `id` int NOT NULL,
  `nombre` varchar(255) DEFAULT NULL,
  `documento` varchar(15) DEFAULT NULL,
  `correo` varchar(50) DEFAULT NULL,
  `telefono` varchar(13) DEFAULT NULL,
  `agencias_id` int DEFAULT NULL,
  `direccion` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `zonas`
--

CREATE TABLE `zonas` (
  `id` int NOT NULL,
  `ciudad` varchar(20) DEFAULT NULL,
  `departamento` varchar(30) DEFAULT NULL,
  `barrio` varchar(255) DEFAULT NULL,
  `agencias_id` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `agencias`
--
ALTER TABLE `agencias`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `clientes`
--
ALTER TABLE `clientes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `agencias_id` (`agencias_id`),
  ADD KEY `vendedores_id` (`vendedores_id`);

--
-- Indexes for table `inmAlquiler`
--
ALTER TABLE `inmAlquiler`
  ADD PRIMARY KEY (`id`),
  ADD KEY `inmuebles_codigo` (`inmuebles_codigo`);

--
-- Indexes for table `inmComercial`
--
ALTER TABLE `inmComercial`
  ADD PRIMARY KEY (`id`),
  ADD KEY `inmuebles_codigo` (`inmuebles_codigo`);

--
-- Indexes for table `inmPiso`
--
ALTER TABLE `inmPiso`
  ADD PRIMARY KEY (`id`),
  ADD KEY `inmuebles_codigo` (`inmuebles_codigo`);

--
-- Indexes for table `inmuebles`
--
ALTER TABLE `inmuebles`
  ADD PRIMARY KEY (`codigo`),
  ADD KEY `tipoContrato_id` (`tipoContrato_id`),
  ADD KEY `tipoInmueble_id` (`tipoInmueble_id`);

--
-- Indexes for table `inmVentas`
--
ALTER TABLE `inmVentas`
  ADD PRIMARY KEY (`id`),
  ADD KEY `inmuebles_codigo` (`inmuebles_codigo`);

--
-- Indexes for table `propietarios`
--
ALTER TABLE `propietarios`
  ADD PRIMARY KEY (`id`),
  ADD KEY `inmuebles_codigo` (`inmuebles_codigo`);

--
-- Indexes for table `reservas`
--
ALTER TABLE `reservas`
  ADD PRIMARY KEY (`id`),
  ADD KEY `inmuebles_codigo` (`inmuebles_codigo`),
  ADD KEY `vendedores_id` (`vendedores_id`),
  ADD KEY `clientes_id` (`clientes_id`);

--
-- Indexes for table `telefonos`
--
ALTER TABLE `telefonos`
  ADD PRIMARY KEY (`id`),
  ADD KEY `agencias_id` (`agencias_id`);

--
-- Indexes for table `tipoContrato`
--
ALTER TABLE `tipoContrato`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tipoInmueble`
--
ALTER TABLE `tipoInmueble`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `titulares`
--
ALTER TABLE `titulares`
  ADD PRIMARY KEY (`id`),
  ADD KEY `agencias_id` (`agencias_id`);

--
-- Indexes for table `transacciones`
--
ALTER TABLE `transacciones`
  ADD PRIMARY KEY (`id`),
  ADD KEY `inmuebles_codigo` (`inmuebles_codigo`),
  ADD KEY `vendedores_id` (`vendedores_id`),
  ADD KEY `clientes_id` (`clientes_id`);

--
-- Indexes for table `vendedores`
--
ALTER TABLE `vendedores`
  ADD PRIMARY KEY (`id`),
  ADD KEY `agencias_id` (`agencias_id`);

--
-- Indexes for table `zonas`
--
ALTER TABLE `zonas`
  ADD PRIMARY KEY (`id`),
  ADD KEY `agencias_id` (`agencias_id`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `clientes`
--
ALTER TABLE `clientes`
  ADD CONSTRAINT `clientes_ibfk_1` FOREIGN KEY (`agencias_id`) REFERENCES `agencias` (`id`),
  ADD CONSTRAINT `clientes_ibfk_2` FOREIGN KEY (`vendedores_id`) REFERENCES `vendedores` (`id`);

--
-- Constraints for table `inmAlquiler`
--
ALTER TABLE `inmAlquiler`
  ADD CONSTRAINT `inmAlquiler_ibfk_1` FOREIGN KEY (`inmuebles_codigo`) REFERENCES `inmuebles` (`codigo`);

--
-- Constraints for table `inmComercial`
--
ALTER TABLE `inmComercial`
  ADD CONSTRAINT `inmComercial_ibfk_1` FOREIGN KEY (`inmuebles_codigo`) REFERENCES `inmuebles` (`codigo`);

--
-- Constraints for table `inmPiso`
--
ALTER TABLE `inmPiso`
  ADD CONSTRAINT `inmPiso_ibfk_1` FOREIGN KEY (`inmuebles_codigo`) REFERENCES `inmuebles` (`codigo`);

--
-- Constraints for table `inmuebles`
--
ALTER TABLE `inmuebles`
  ADD CONSTRAINT `inmuebles_ibfk_1` FOREIGN KEY (`tipoContrato_id`) REFERENCES `tipoContrato` (`id`),
  ADD CONSTRAINT `inmuebles_ibfk_2` FOREIGN KEY (`tipoInmueble_id`) REFERENCES `tipoInmueble` (`id`);

--
-- Constraints for table `inmVentas`
--
ALTER TABLE `inmVentas`
  ADD CONSTRAINT `inmVentas_ibfk_1` FOREIGN KEY (`inmuebles_codigo`) REFERENCES `inmuebles` (`codigo`);

--
-- Constraints for table `propietarios`
--
ALTER TABLE `propietarios`
  ADD CONSTRAINT `propietarios_ibfk_1` FOREIGN KEY (`inmuebles_codigo`) REFERENCES `inmuebles` (`codigo`);

--
-- Constraints for table `reservas`
--
ALTER TABLE `reservas`
  ADD CONSTRAINT `reservas_ibfk_1` FOREIGN KEY (`inmuebles_codigo`) REFERENCES `inmuebles` (`codigo`),
  ADD CONSTRAINT `reservas_ibfk_2` FOREIGN KEY (`vendedores_id`) REFERENCES `vendedores` (`id`),
  ADD CONSTRAINT `reservas_ibfk_3` FOREIGN KEY (`clientes_id`) REFERENCES `clientes` (`id`);

--
-- Constraints for table `telefonos`
--
ALTER TABLE `telefonos`
  ADD CONSTRAINT `telefonos_ibfk_1` FOREIGN KEY (`agencias_id`) REFERENCES `agencias` (`id`);

--
-- Constraints for table `titulares`
--
ALTER TABLE `titulares`
  ADD CONSTRAINT `titulares_ibfk_1` FOREIGN KEY (`agencias_id`) REFERENCES `agencias` (`id`);

--
-- Constraints for table `transacciones`
--
ALTER TABLE `transacciones`
  ADD CONSTRAINT `transacciones_ibfk_1` FOREIGN KEY (`inmuebles_codigo`) REFERENCES `inmuebles` (`codigo`),
  ADD CONSTRAINT `transacciones_ibfk_2` FOREIGN KEY (`vendedores_id`) REFERENCES `vendedores` (`id`),
  ADD CONSTRAINT `transacciones_ibfk_3` FOREIGN KEY (`clientes_id`) REFERENCES `clientes` (`id`);

--
-- Constraints for table `vendedores`
--
ALTER TABLE `vendedores`
  ADD CONSTRAINT `vendedores_ibfk_1` FOREIGN KEY (`agencias_id`) REFERENCES `agencias` (`id`);

--
-- Constraints for table `zonas`
--
ALTER TABLE `zonas`
  ADD CONSTRAINT `zonas_ibfk_1` FOREIGN KEY (`agencias_id`) REFERENCES `agencias` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
