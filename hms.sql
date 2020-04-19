-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 20-04-2020 a las 01:01:14
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
  `userId` int(11) DEFAULT NULL,
  `patname` text NOT NULL,
  `cedula` text NOT NULL,
  `consultancyFees` int(11) DEFAULT NULL,
  `appointmentDate` varchar(255) DEFAULT NULL,
  `appointmentTime` varchar(255) DEFAULT NULL,
  `postingDate` timestamp NULL DEFAULT current_timestamp(),
  `userStatus` int(11) DEFAULT NULL,
  `doctorStatus` int(11) DEFAULT NULL,
  `updationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp(),
  `habitacion` int(133) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `appointment`
--

INSERT INTO `appointment` (`id`, `doctorSpecialization`, `doctorId`, `userId`, `patname`, `cedula`, `consultancyFees`, `appointmentDate`, `appointmentTime`, `postingDate`, `userStatus`, `doctorStatus`, `updationDate`, `habitacion`) VALUES
(6, 'Alergología', 52, 52, '', '', 0, '2020-04-27', '5:00 PM', '2020-04-19 22:58:13', 1, 1, NULL, 0);

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
(42, 'Dermatología', 'Roberto Carlos', 'Heredia, calle 6 y 7, frente bar la cascada', 'Lunes - Viernes (1:00pm - 5:00pm)', 1001, 'robertoC@hospital.dc.cr', 'e10adc3949ba59abbe56e057f20f883e', '2020-04-13 06:07:43', '2020-04-13 06:14:16'),
(52, 'Alergología', 'Bryan', 'San José ', 'Lunes - VIernes(1pm-5:00pm)', 117450654, 'bryanmora66@doctor.cr', 'e10adc3949ba59abbe56e057f20f883e', '2020-04-16 22:55:02', NULL);

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
(233, 42, 'robertoC@hospital.dc.cr', 0x3a3a3100000000000000000000000000, '2020-04-14 04:51:22', NULL, 1),
(234, 42, 'robertoC@hospital.dc.cr', 0x3a3a3100000000000000000000000000, '2020-04-14 05:42:37', NULL, 1),
(235, 42, 'robertoC@hospital.dc.cr', 0x3a3a3100000000000000000000000000, '2020-04-14 07:21:21', NULL, 1),
(236, 42, 'robertoC@hospital.dc.cr', 0x3a3a3100000000000000000000000000, '2020-04-14 10:13:12', NULL, 1),
(237, 42, 'robertoC@hospital.dc.cr', 0x3a3a3100000000000000000000000000, '2020-04-14 13:36:45', NULL, 1),
(238, 42, 'robertoC@hospital.dc.cr', 0x3a3a3100000000000000000000000000, '2020-04-14 15:01:01', NULL, 1),
(239, 42, 'robertoC@hospital.dc.cr', 0x3a3a3100000000000000000000000000, '2020-04-14 15:28:55', NULL, 1),
(240, NULL, 'robertoC@hospital.dc.cr', 0x3a3a3100000000000000000000000000, '2020-04-14 16:18:51', NULL, 0),
(241, 42, 'robertoC@hospital.dc.cr', 0x3a3a3100000000000000000000000000, '2020-04-14 16:18:59', NULL, 1),
(242, 42, 'robertoC@hospital.dc.cr', 0x3a3a3100000000000000000000000000, '2020-04-14 17:28:29', NULL, 1),
(243, 42, 'robertoC@hospital.dc.cr', 0x3a3a3100000000000000000000000000, '2020-04-16 21:50:32', NULL, 1),
(244, 42, 'robertoC@hospital.dc.cr', 0x3a3a3100000000000000000000000000, '2020-04-17 01:06:44', NULL, 1),
(245, 42, 'robertoC@hospital.dc.cr', 0x3a3a3100000000000000000000000000, '2020-04-19 16:35:20', NULL, 1),
(246, 42, 'robertoC@hospital.dc.cr', 0x3a3a3100000000000000000000000000, '2020-04-19 16:47:51', NULL, 1),
(247, 42, 'robertoC@hospital.dc.cr', 0x3a3a3100000000000000000000000000, '2020-04-19 17:13:58', NULL, 1),
(248, 42, 'robertoC@hospital.dc.cr', 0x3a3a3100000000000000000000000000, '2020-04-19 19:55:48', NULL, 1),
(249, 42, 'robertoC@hospital.dc.cr', 0x3a3a3100000000000000000000000000, '2020-04-19 21:35:04', NULL, 1),
(250, 52, 'bryanmora66@doctor.cr', 0x3a3a3100000000000000000000000000, '2020-04-19 22:10:41', NULL, 1);

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
(51, 'Alergología', '2020-04-16 22:53:34', NULL);

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
(132, 'H3', 'P2', 'C2-H3-P2'),
(133, 'H6', 'P6', '(C6)(P6)(H6)');

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
(54, 49, '78', 'O+', '65', '34', 'HOLA', 'Estable', '2020-04-19 19:38:02', 'Roberto administrador', 1234);

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

INSERT INTO `tblpatient` (`id`, `Docid`, `PatientName`, `PatientContno`, `cedula`, `PatientEmail`, `PatientGender`, `PatientAdd`, `PatientAge`, `fnacimiento`, `PatientMedhis`, `password`, `habitacion`, `piso`, `cama`, `ingreso`, `CreationDate`, `regDate`, `UpdationDate`, `datesalida`) VALUES
(42, 41, 'Mauricio', 2, 0, 'mauricio@gmail.com', 'hombre', 'casa azul', 22, '0000-00-00', 'no', 'e10adc3949ba59abbe56e057f20f883e', 'H1', 'P1', 'C2-H1-P1', '', '2020-04-14 16:27:54', '2020-04-14 16:27:54', NULL, '0000-00-00'),
(45, 1, 'Bryan', 4, 0, 'paciente04@paciente.cr', 'hombre', 'San josé', 20, '0000-00-00', 'Ex-paciente Ortopedía', 'e10adc3949ba59abbe56e057f20f883e', 'H6', 'P6', '(C6)(P6)(H6)', '', '2020-04-16 23:08:43', '2020-04-16 23:08:43', NULL, '0000-00-00'),
(51, 49, 'Mauricio', 1, 701920234, 'mau@gmail.com', 'hombre', 'hola', 22, '2020-01-01', 'll;', 'e10adc3949ba59abbe56e057f20f883e', 'H1', 'P1', 'C1-H1-P1', 'we', '2020-04-19 21:40:18', '2020-04-19 21:40:18', '2020-04-19 21:42:47', '2020-04-19');

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
(125, 34, 'prueba@gmail.com', 0x3a3a3100000000000000000000000000, '2020-04-14 05:16:26', NULL, 1),
(126, NULL, 'r@hospital.com', 0x3a3a3100000000000000000000000000, '2020-04-14 05:44:30', NULL, 0),
(127, 34, 'prueba@gmail.com', 0x3a3a3100000000000000000000000000, '2020-04-14 05:44:35', NULL, 1),
(128, 34, 'prueba@gmail.com', 0x3a3a3100000000000000000000000000, '2020-04-14 07:04:18', NULL, 1),
(129, NULL, 'r@hospital.com', 0x3a3a3100000000000000000000000000, '2020-04-14 08:31:51', NULL, 0),
(130, 34, 'prueba@gmail.com', 0x3a3a3100000000000000000000000000, '2020-04-14 08:32:06', NULL, 1),
(131, NULL, 'paulmora@hospital.ps.com', 0x3a3a3100000000000000000000000000, '2020-04-14 10:11:39', NULL, 0),
(132, 34, 'prueba@gmail.com', 0x3a3a3100000000000000000000000000, '2020-04-14 10:11:49', NULL, 1),
(133, 35, 'r@gmail.comm', 0x3a3a3100000000000000000000000000, '2020-04-14 13:37:17', NULL, 1),
(134, 38, 'r@gmail.com', 0x3a3a3100000000000000000000000000, '2020-04-14 14:59:16', NULL, 1),
(135, 41, 'r@gmail.com', 0x3a3a3100000000000000000000000000, '2020-04-14 16:25:45', NULL, 1),
(136, 42, 'mauricio@gmail.com', 0x3a3a3100000000000000000000000000, '2020-04-14 16:29:23', NULL, 1),
(137, NULL, 'mauricio@gmail.cojm', 0x3a3a3100000000000000000000000000, '2020-04-15 17:08:41', NULL, 0),
(138, 42, 'mauricio@gmail.com', 0x3a3a3100000000000000000000000000, '2020-04-15 17:08:51', NULL, 1),
(139, 42, 'mauricio@gmail.com', 0x3a3a3100000000000000000000000000, '2020-04-16 21:02:33', NULL, 1),
(140, 42, 'mauricio@gmail.com', 0x3a3a3100000000000000000000000000, '2020-04-16 21:49:50', NULL, 1),
(141, NULL, 'mauricio@gmail.co', 0x3a3a3100000000000000000000000000, '2020-04-16 22:48:55', NULL, 0),
(142, NULL, 'mauricio@gmail.co', 0x3a3a3100000000000000000000000000, '2020-04-16 22:49:17', NULL, 0),
(143, NULL, 'mauricio@gmail.co', 0x3a3a3100000000000000000000000000, '2020-04-16 22:49:25', NULL, 0),
(144, NULL, 'hola@gmail.com', 0x3a3a3100000000000000000000000000, '2020-04-16 22:49:51', NULL, 0),
(145, 44, 'hola@gmail.com', 0x3a3a3100000000000000000000000000, '2020-04-16 22:49:59', NULL, 1),
(146, NULL, 'mauricio@gmail.co', 0x3a3a3100000000000000000000000000, '2020-04-16 22:50:31', NULL, 0),
(147, NULL, 'mauricio@gmail.co', 0x3a3a3100000000000000000000000000, '2020-04-16 22:50:40', NULL, 0),
(148, 44, 'hola@gmail.com', 0x3a3a3100000000000000000000000000, '2020-04-16 22:52:24', NULL, 1),
(149, 42, 'mauricio@gmail.coM', 0x3a3a3100000000000000000000000000, '2020-04-19 16:25:32', NULL, 1),
(150, 42, 'mauricio@gmail.com', 0x3a3a3100000000000000000000000000, '2020-04-19 17:03:40', NULL, 1),
(151, NULL, 'hila@gmail.comm', 0x3a3a3100000000000000000000000000, '2020-04-19 17:11:21', NULL, 0),
(152, 47, 'hola@gmail.comm', 0x3a3a3100000000000000000000000000, '2020-04-19 17:11:35', NULL, 1),
(153, 48, 'hola@gmail.com', 0x3a3a3100000000000000000000000000, '2020-04-19 17:13:20', NULL, 1),
(154, 42, 'mauricio@gmail.com', 0x3a3a3100000000000000000000000000, '2020-04-19 17:59:37', NULL, 1),
(155, 49, 'mau@gmail.com', 0x3a3a3100000000000000000000000000, '2020-04-19 19:44:47', NULL, 1),
(156, 49, 'mau@gmail.com', 0x3a3a3100000000000000000000000000, '2020-04-19 21:37:33', NULL, 1),
(157, 51, 'mau@gmail.com', 0x3a3a3100000000000000000000000000, '2020-04-19 21:40:30', NULL, 1);

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de la tabla `doctors`
--
ALTER TABLE `doctors`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=53;

--
-- AUTO_INCREMENT de la tabla `doctorslog`
--
ALTER TABLE `doctorslog`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=251;

--
-- AUTO_INCREMENT de la tabla `doctorspecilization`
--
ALTER TABLE `doctorspecilization`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=52;

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
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=55;

--
-- AUTO_INCREMENT de la tabla `tblpatient`
--
ALTER TABLE `tblpatient`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=52;

--
-- AUTO_INCREMENT de la tabla `userlog`
--
ALTER TABLE `userlog`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=158;

--
-- AUTO_INCREMENT de la tabla `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
