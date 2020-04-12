-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 12-04-2020 a las 12:17:37
-- Versión del servidor: 10.4.11-MariaDB
-- Versión de PHP: 7.2.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
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
  `consultancyFees` int(11) DEFAULT NULL,
  `appointmentDate` varchar(255) DEFAULT NULL,
  `appointmentTime` varchar(255) DEFAULT NULL,
  `postingDate` timestamp NULL DEFAULT current_timestamp(),
  `userStatus` int(11) DEFAULT NULL,
  `doctorStatus` int(11) DEFAULT NULL,
  `updationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp(),
  `habitacion` int(133) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

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
(40, 'Dermatología', 'Roberto Carlos', 'aasaasas', 'Lunes - Viernes (9:00am - 1:00pm)', 12, 'r@hospital.com', 'e10adc3949ba59abbe56e057f20f883e', '2020-04-11 01:43:04', '2020-04-11 01:44:56');

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
(213, 37, 'r@hospital.com', 0x3a3a3100000000000000000000000000, '2020-04-10 03:03:57', NULL, 1),
(214, 37, 'r@hospital.com', 0x3a3a3100000000000000000000000000, '2020-04-10 03:19:22', NULL, 1),
(215, 37, 'r@hospital.com', 0x3a3a3100000000000000000000000000, '2020-04-10 16:48:36', NULL, 1),
(216, NULL, 'r@gmail.com', 0x3a3a3100000000000000000000000000, '2020-04-10 20:09:02', NULL, 0),
(217, NULL, 'r@hopital.com', 0x3a3a3100000000000000000000000000, '2020-04-10 20:09:17', NULL, 0),
(218, NULL, 'r@hospital.com', 0x3a3a3100000000000000000000000000, '2020-04-10 20:34:05', NULL, 0),
(219, NULL, 'r@hospital.com', 0x3a3a3100000000000000000000000000, '2020-04-10 20:34:22', NULL, 0),
(220, NULL, 'r@hospital.com', 0x3a3a3100000000000000000000000000, '2020-04-10 20:44:33', NULL, 0),
(221, NULL, 'r@hospital.com', 0x3a3a3100000000000000000000000000, '2020-04-10 20:44:40', NULL, 0),
(222, NULL, 'r@hospital.com', 0x3a3a3100000000000000000000000000, '2020-04-10 20:44:48', NULL, 0),
(223, 37, 'r@hospital.com', 0x3a3a3100000000000000000000000000, '2020-04-10 21:20:55', NULL, 1),
(224, 39, 'thomas@correo.com', 0x3a3a3100000000000000000000000000, '2020-04-11 01:38:33', NULL, 1),
(225, 40, 'r@hospital.com', 0x3a3a3100000000000000000000000000, '2020-04-11 01:50:07', NULL, 1),
(226, 40, 'r@hospital.com', 0x3a3a3100000000000000000000000000, '2020-04-12 10:10:10', NULL, 1);

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
(35, 'Dermatología', '2020-04-11 01:14:17', NULL);

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
(94, '10', '2', 'a2');

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
  `Medico` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `tblmedicalhistory`
--

INSERT INTO `tblmedicalhistory` (`ID`, `PatientID`, `BloodPressure`, `BloodSugar`, `Weight`, `Temperature`, `MedicalPres`, `estado`, `CreationDate`, `Medico`) VALUES
(31, 13, 'Ultimo registr', '$	BloodSugar', 'hj', 'hjhjh', 'ghh', '', '2020-04-10 16:49:28', 'Anthony');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tblpatient`
--

CREATE TABLE `tblpatient` (
  `id` int(10) NOT NULL,
  `Docid` int(10) DEFAULT NULL,
  `PatientName` varchar(200) DEFAULT NULL,
  `PatientContno` bigint(10) DEFAULT NULL,
  `PatientEmail` varchar(200) DEFAULT NULL,
  `PatientGender` varchar(50) DEFAULT NULL,
  `PatientAdd` mediumtext DEFAULT NULL,
  `PatientAge` int(10) DEFAULT NULL,
  `PatientMedhis` mediumtext DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `habitacion` text DEFAULT NULL,
  `piso` text DEFAULT NULL,
  `cama` text DEFAULT NULL,
  `CreationDate` timestamp NULL DEFAULT current_timestamp(),
  `regDate` timestamp NULL DEFAULT current_timestamp(),
  `UpdationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `tblpatient`
--

INSERT INTO `tblpatient` (`id`, `Docid`, `PatientName`, `PatientContno`, `PatientEmail`, `PatientGender`, `PatientAdd`, `PatientAge`, `PatientMedhis`, `password`, `habitacion`, `piso`, `cama`, `CreationDate`, `regDate`, `UpdationDate`) VALUES
(24, 7, 'thomas ros', 1, 'r@hospital.com', 'Male', 'azul', 22, 'gfgfgf', 'e10adc3949ba59abbe56e057f20f883e', '10', '2', 'a2', '2020-04-11 01:26:03', '2020-04-11 01:26:03', '2020-04-11 01:53:28');

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
(116, 13, 'r@gmail.comm', 0x3a3a3100000000000000000000000000, '2020-04-10 03:14:49', NULL, 1),
(117, 13, 'ro@gmail.com', 0x3a3a3100000000000000000000000000, '2020-04-10 16:50:17', NULL, 1),
(118, NULL, 'r@gmail.com', 0x3a3a3100000000000000000000000000, '2020-04-10 19:51:41', NULL, 0),
(119, 13, 'ro@gmail.com', 0x3a3a3100000000000000000000000000, '2020-04-10 19:51:54', NULL, 1),
(120, 13, 'ro@gmail.com', 0x3a3a3100000000000000000000000000, '2020-04-10 21:19:24', NULL, 1);

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT de la tabla `appointment`
--
ALTER TABLE `appointment`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `doctors`
--
ALTER TABLE `doctors`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT de la tabla `doctorslog`
--
ALTER TABLE `doctorslog`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=227;

--
-- AUTO_INCREMENT de la tabla `doctorspecilization`
--
ALTER TABLE `doctorspecilization`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT de la tabla `habitacion`
--
ALTER TABLE `habitacion`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=95;

--
-- AUTO_INCREMENT de la tabla `tblcontactus`
--
ALTER TABLE `tblcontactus`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `tblmedicalhistory`
--
ALTER TABLE `tblmedicalhistory`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT de la tabla `tblpatient`
--
ALTER TABLE `tblpatient`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT de la tabla `userlog`
--
ALTER TABLE `userlog`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=121;

--
-- AUTO_INCREMENT de la tabla `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
