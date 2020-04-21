-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 21-04-2020 a las 18:12:23
-- Versión del servidor: 10.4.11-MariaDB
-- Versión de PHP: 7.4.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `hms`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `cedula` int(10) NOT NULL,
  `eje` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `updationDate` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `admin`
--

INSERT INTO `admin` (`id`, `cedula`, `eje`, `username`, `password`, `updationDate`) VALUES
(1, 1234, 0, 'Roberto administrador', 'e10adc3949ba59abbe56e057f20f883e', '07-04-2020 07:27:53 AM'),
(7, 2019, 2020, 'Ejecutivo', 'e10adc3949ba59abbe56e057f20f883e', '');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `appointment`
--

CREATE TABLE `appointment` (
  `id` int(11) NOT NULL,
  `doctorSpecialization` varchar(255) DEFAULT NULL,
  `doctorId` int(11) DEFAULT NULL,
  `patname` text NOT NULL,
  `cedula` text NOT NULL,
  `consultancyFees` int(11) DEFAULT NULL,
  `appointmentDate` varchar(255) DEFAULT NULL,
  `appointmentTime` varchar(255) DEFAULT NULL,
  `postingDate` timestamp NULL DEFAULT current_timestamp(),
  `estado` text DEFAULT NULL,
  `updationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `appointment`
--

INSERT INTO `appointment` (`id`, `doctorSpecialization`, `doctorId`, `patname`, `cedula`, `consultancyFees`, `appointmentDate`, `appointmentTime`, `postingDate`, `estado`, `updationDate`) VALUES
(41, 'Neurocirugía', 58, 'Mauricio Hernadez Ruiz', '70123', 0, '2020-04-21', '9:00 PM', '2020-04-21 13:46:48', 'COMPLETO', '2020-04-21 15:14:22'),
(42, 'Neurocirugía', 61, 'Mauricio Hernadez Ruiz', '70123', 0, '2020-04-23', '9:00 AM', '2020-04-21 14:58:25', NULL, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `doctors`
--

CREATE TABLE `doctors` (
  `id` int(11) NOT NULL,
  `specilization` varchar(255) DEFAULT NULL,
  `doctorName` varchar(255) DEFAULT NULL,
  `address` longtext DEFAULT NULL,
  `docFees` varchar(255) DEFAULT NULL,
  `contactno` int(11) DEFAULT NULL,
  `docEmail` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `creationDate` timestamp NULL DEFAULT current_timestamp(),
  `updationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `doctors`
--

INSERT INTO `doctors` (`id`, `specilization`, `doctorName`, `address`, `docFees`, `contactno`, `docEmail`, `password`, `creationDate`, `updationDate`) VALUES
(61, 'Neurocirugía', 'Pedro Paulo', 'Pavas', 'Lunes - Jueves (7:30am–17:00pm)', 99999999, 'pedro@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', '2020-04-21 14:57:12', NULL),
(62, 'Oftalmología', 'José Martinez Nuñez', 'hol', 'Lunes - martes (7:10am–17:20pm)', 70001, 'robertog@hweb.com', 'e10adc3949ba59abbe56e057f20f883e', '2020-04-21 15:13:51', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `doctorslog`
--

CREATE TABLE `doctorslog` (
  `id` int(11) NOT NULL,
  `uid` int(11) DEFAULT NULL,
  `username` varchar(255) DEFAULT NULL,
  `userip` binary(16) DEFAULT NULL,
  `loginTime` timestamp NULL DEFAULT current_timestamp(),
  `logout` varchar(255) DEFAULT NULL,
  `status` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `doctorslog`
--

INSERT INTO `doctorslog` (`id`, `uid`, `username`, `userip`, `loginTime`, `logout`, `status`) VALUES
(231, 42, 'robertoC@hospital.dc.cr', 0x3a3a3100000000000000000000000000, '2020-04-14 04:20:15', NULL, 1),
(232, 42, 'robertoC@hospital.dc.cr', 0x3a3a3100000000000000000000000000, '2020-04-14 04:29:54', NULL, 1),
(240, NULL, 'robertoC@hospital.dc.cr', 0x3a3a3100000000000000000000000000, '2020-04-14 16:18:51', NULL, 0),
(254, NULL, 'bryan@gmail.com', 0x3a3a3100000000000000000000000000, '2020-04-20 01:41:43', NULL, 0),
(272, 58, 'joseMartinez@hweb.com', 0x3a3a3100000000000000000000000000, '2020-04-21 14:00:57', NULL, 1),
(273, 58, 'joseMartinez@hweb.com', 0x3a3a3100000000000000000000000000, '2020-04-21 14:24:08', NULL, 1),
(274, 61, 'pedro@gmail.com', 0x3a3a3100000000000000000000000000, '2020-04-21 15:05:16', NULL, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `doctorspecilization`
--

CREATE TABLE `doctorspecilization` (
  `id` int(11) NOT NULL,
  `specilization` varchar(255) DEFAULT NULL,
  `creationDate` timestamp NULL DEFAULT current_timestamp(),
  `updationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `doctorspecilization`
--

INSERT INTO `doctorspecilization` (`id`, `specilization`, `creationDate`, `updationDate`) VALUES
(53, 'Neurocirugía', '2020-04-21 01:49:36', NULL),
(54, 'Oftalmología', '2020-04-21 01:49:44', NULL),
(55, 'Quirúrgica', '2020-04-21 01:49:53', NULL),
(56, 'Pediatría', '2020-04-21 01:50:03', NULL),
(57, 'Psicología ', '2020-04-21 01:50:17', NULL),
(58, 'Endocrinología ', '2020-04-21 01:50:56', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `habitacion`
--

CREATE TABLE `habitacion` (
  `id` int(11) NOT NULL,
  `habitacion` text DEFAULT NULL,
  `piso` text NOT NULL,
  `cama` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `habitacion`
--

INSERT INTO `habitacion` (`id`, `habitacion`, `piso`, `cama`) VALUES
(117, 'H1', 'P1', 'C1-H1-P1'),
(118, 'H1', 'P1', 'C2-H1-P1'),
(120, 'H2', 'P1', 'C1-H2-P1'),
(121, 'H2', 'P1', 'C2-H2-P1'),
(123, 'H3', 'P1', 'C1-H3-P1'),
(124, 'H3', 'P1', 'C2-H3-P1'),
(126, 'H1', 'P2', 'C1-H1-P2'),
(127, 'H1', 'P2', 'C2-H1-P2'),
(129, 'H2', 'P2', 'C1-H2-P2'),
(130, 'H2', 'P2', 'C2-H2-P2'),
(131, 'H3', 'P2', 'C1-H3-P2'),
(132, 'H3', 'P2', 'C2-H3-P2');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tblcontactus`
--

CREATE TABLE `tblcontactus` (
  `id` int(11) NOT NULL,
  `fullname` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `contactno` bigint(12) DEFAULT NULL,
  `message` mediumtext DEFAULT NULL,
  `PostingDate` timestamp NULL DEFAULT current_timestamp(),
  `AdminRemark` mediumtext DEFAULT NULL,
  `LastupdationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp(),
  `IsRead` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tblmedicalhistory`
--

CREATE TABLE `tblmedicalhistory` (
  `ID` int(10) NOT NULL,
  `PatientID` int(10) DEFAULT NULL,
  `BloodPressure` varchar(200) DEFAULT NULL,
  `BloodSugar` varchar(200) NOT NULL,
  `Weight` varchar(100) DEFAULT NULL,
  `Temperature` varchar(200) DEFAULT NULL,
  `MedicalPres` mediumtext DEFAULT NULL,
  `estado` text NOT NULL,
  `CreationDate` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `Medico` text NOT NULL,
  `contactno` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `tblmedicalhistory`
--

INSERT INTO `tblmedicalhistory` (`ID`, `PatientID`, `BloodPressure`, `BloodSugar`, `Weight`, `Temperature`, `MedicalPres`, `estado`, `CreationDate`, `Medico`, `contactno`) VALUES
(52, 45, '20', 'O+', '50', '35', 'X', 'Estable', '2020-04-17 02:01:46', 'Roberto Carlos', 1001),
(53, 42, '78', 'O+', '65', '34', 'ghghghgh', 'Estable', '2020-04-19 16:51:44', 'Roberto administrador', 1234),
(54, 49, '78', 'O+', '65', '34', 'HOLA', 'Estable', '2020-04-19 19:38:02', 'Roberto administrador', 1234),
(56, 57, '78', '0+', '76', '34', 'hola', 'etable', '2020-04-21 02:17:35', 'José Martinez Nuñez', 70001),
(57, 56, '78=98', '0+', '76', '34', 'jola', 'etable', '2020-04-21 15:00:24', 'Roberto administrador', 1234),
(58, 56, '78=98', '0+', '76', '34', 'hla', 'etable', '2020-04-21 15:06:12', 'Pedro Paulo', 99999999);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tblpatient`
--

CREATE TABLE `tblpatient` (
  `id` int(10) NOT NULL,
  `Docid` int(10) DEFAULT NULL,
  `PatientName` varchar(200) DEFAULT NULL,
  `PatientContno` bigint(10) DEFAULT NULL,
  `cedula` int(12) NOT NULL,
  `PatientEmail` varchar(200) DEFAULT NULL,
  `PatientGender` varchar(50) DEFAULT NULL,
  `PatientAdd` mediumtext DEFAULT NULL,
  `PatientAge` int(10) DEFAULT NULL,
  `fnacimiento` date NOT NULL,
  `fsalida` date NOT NULL,
  `PatientMedhis` mediumtext DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `habitacion` text DEFAULT NULL,
  `piso` text DEFAULT NULL,
  `cama` text DEFAULT NULL,
  `ingreso` text NOT NULL,
  `CreationDate` timestamp NULL DEFAULT current_timestamp(),
  `regDate` timestamp NULL DEFAULT current_timestamp(),
  `UpdationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp(),
  `datesalida` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `tblpatient`
--

INSERT INTO `tblpatient` (`id`, `Docid`, `PatientName`, `PatientContno`, `cedula`, `PatientEmail`, `PatientGender`, `PatientAdd`, `PatientAge`, `fnacimiento`, `fsalida`, `PatientMedhis`, `password`, `habitacion`, `piso`, `cama`, `ingreso`, `CreationDate`, `regDate`, `UpdationDate`, `datesalida`) VALUES
(56, 1, 'Mauricio Hernadez Ruiz', 1001, 70123, 'mau@hweb.com', 'Mujer', 'Heredia frente ferreteria brenez', NULL, '2015-02-06', '2020-04-21', 'modifico', 'e10adc3949ba59abbe56e057f20f883e', 'H1', 'P1', 'C1-H1-P1', 'Accidente de rancito, daño en brazo izquierdo', '2020-04-21 02:12:47', '2020-04-21 02:12:47', '2020-04-21 13:44:25', '0000-00-00'),
(58, 1, 'Mauricio Hernadez Ruiz', 1, 1234, 'ma@hweb.com', 'hombre', 'hoola', NULL, '1995-08-23', '2020-04-21', 'hola', 'e10adc3949ba59abbe56e057f20f883e', 'H1', 'P1', 'C2-H1-P1', 'delicado', '2020-04-21 15:11:27', '2020-04-21 15:11:27', '2020-04-21 15:12:18', '0000-00-00');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `userlog`
--

CREATE TABLE `userlog` (
  `id` int(11) NOT NULL,
  `uid` int(11) DEFAULT NULL,
  `username` varchar(255) DEFAULT NULL,
  `userip` binary(16) DEFAULT NULL,
  `loginTime` timestamp NULL DEFAULT current_timestamp(),
  `logout` varchar(255) DEFAULT NULL,
  `status` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `userlog`
--

INSERT INTO `userlog` (`id`, `uid`, `username`, `userip`, `loginTime`, `logout`, `status`) VALUES
(123, 30, 'r@gmail.com', 0x3a3a3100000000000000000000000000, '2020-04-14 04:18:09', NULL, 1),
(124, NULL, 'prueba@gmail.com', 0x3a3a3100000000000000000000000000, '2020-04-14 05:16:15', NULL, 0),
(165, 56, 'mau@hweb.com', 0x3a3a3100000000000000000000000000, '2020-04-21 15:08:29', NULL, 1),
(166, 58, 'ma@hweb.com', 0x3a3a3100000000000000000000000000, '2020-04-21 15:11:53', NULL, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `fullName` varchar(255) DEFAULT NULL,
  `address` longtext DEFAULT NULL,
  `city` varchar(255) DEFAULT NULL,
  `gender` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `regDate` timestamp NULL DEFAULT current_timestamp(),
  `updationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `appointment`
--
ALTER TABLE `appointment`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `doctors`
--
ALTER TABLE `doctors`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `doctorslog`
--
ALTER TABLE `doctorslog`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `doctorspecilization`
--
ALTER TABLE `doctorspecilization`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `habitacion`
--
ALTER TABLE `habitacion`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `tblcontactus`
--
ALTER TABLE `tblcontactus`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `tblmedicalhistory`
--
ALTER TABLE `tblmedicalhistory`
  ADD PRIMARY KEY (`ID`);

--
-- Indices de la tabla `tblpatient`
--
ALTER TABLE `tblpatient`
  ADD PRIMARY KEY (`id`),
  ADD KEY `PatientEmail` (`PatientEmail`);

--
-- Indices de la tabla `userlog`
--
ALTER TABLE `userlog`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD KEY `email` (`email`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT de la tabla `appointment`
--
ALTER TABLE `appointment`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;

--
-- AUTO_INCREMENT de la tabla `doctors`
--
ALTER TABLE `doctors`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=63;

--
-- AUTO_INCREMENT de la tabla `doctorslog`
--
ALTER TABLE `doctorslog`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=275;

--
-- AUTO_INCREMENT de la tabla `doctorspecilization`
--
ALTER TABLE `doctorspecilization`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=59;

--
-- AUTO_INCREMENT de la tabla `habitacion`
--
ALTER TABLE `habitacion`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=134;

--
-- AUTO_INCREMENT de la tabla `tblcontactus`
--
ALTER TABLE `tblcontactus`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `tblmedicalhistory`
--
ALTER TABLE `tblmedicalhistory`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=59;

--
-- AUTO_INCREMENT de la tabla `tblpatient`
--
ALTER TABLE `tblpatient`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=59;

--
-- AUTO_INCREMENT de la tabla `userlog`
--
ALTER TABLE `userlog`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=167;

--
-- AUTO_INCREMENT de la tabla `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
