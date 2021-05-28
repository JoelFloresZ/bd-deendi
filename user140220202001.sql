-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 28-05-2021 a las 17:46:05
-- Versión del servidor: 10.4.18-MariaDB
-- Versión de PHP: 7.3.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `user140220202001`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `d_contactos`
--

CREATE TABLE `d_contactos` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ap_pat` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ap_mat` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `d_datos_pregunta_abiertas`
--

CREATE TABLE `d_datos_pregunta_abiertas` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tipo_respuesta` char(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tipo_form` char(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `res_requerido` char(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `pregunta_id` bigint(20) UNSIGNED NOT NULL,
  `estado` smallint(6) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `d_datos_pregunta_archivos`
--

CREATE TABLE `d_datos_pregunta_archivos` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tipo_formato` char(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tipo_res` char(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `pregunta_id` bigint(20) UNSIGNED NOT NULL,
  `estado` smallint(6) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `d_datos_pregunta_escalas`
--

CREATE TABLE `d_datos_pregunta_escalas` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tipo_res` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `rango` int(11) NOT NULL,
  `valor` int(11) NOT NULL,
  `analizar_dato` char(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `pregunta_id` bigint(20) UNSIGNED NOT NULL,
  `estado` smallint(6) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `d_datos_pregunta_multiples`
--

CREATE TABLE `d_datos_pregunta_multiples` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `opcion` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tipo_opcion` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `opcion_otra` char(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `analizar_dato` char(5) COLLATE utf8mb4_unicode_ci NOT NULL,
  `pregunta_id` bigint(20) UNSIGNED NOT NULL,
  `estado` int(11) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `d_datos_pregunta_tablas`
--

CREATE TABLE `d_datos_pregunta_tablas` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tipo_pregunta` char(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `numero_columnas` int(11) NOT NULL,
  `column1` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `column2` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `column3` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `column4` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `column5` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `column6` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `column7` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `column8` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `column9` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `column10` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `pregunta_id` bigint(20) UNSIGNED NOT NULL,
  `estado` int(11) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `d_encuestas`
--

CREATE TABLE `d_encuestas` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `titulo` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `descripcion` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `usuario_id` bigint(20) UNSIGNED NOT NULL DEFAULT 1,
  `estado_encuesta` char(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'pendiente',
  `aplicado` char(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'no',
  `num_encuesta_aplicado` int(11) NOT NULL DEFAULT 0,
  `estado` int(11) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `d_encuestas_compartidas`
--

CREATE TABLE `d_encuestas_compartidas` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `destinatario` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `asunto` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `encuesta_id` bigint(20) UNSIGNED NOT NULL,
  `id_remitente` int(11) NOT NULL,
  `estado` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `d_encuestas_enviadas_emails`
--

CREATE TABLE `d_encuestas_enviadas_emails` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `destinatario` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `asunto` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `encuesta_id` bigint(20) UNSIGNED NOT NULL,
  `id_remitente` int(11) NOT NULL,
  `estado` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `d_encuestas_recibidas`
--

CREATE TABLE `d_encuestas_recibidas` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `destinatario` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `asunto` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `encuesta_id` bigint(20) UNSIGNED NOT NULL,
  `id_remitente` int(11) NOT NULL,
  `estado` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `d_estilo_encuestas`
--

CREATE TABLE `d_estilo_encuestas` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `encuesta_id` bigint(20) UNSIGNED NOT NULL,
  `url_imagen` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `imgen` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `color_titulo` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `color_pregunta` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `d_grupos`
--

CREATE TABLE `d_grupos` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nombre` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `d_grupos_de_contatos`
--

CREATE TABLE `d_grupos_de_contatos` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `contacto_id` bigint(20) UNSIGNED NOT NULL,
  `grupo_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `d_preguntas`
--

CREATE TABLE `d_preguntas` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `pregunta` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `tipo_pregunta` char(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `analizar_dato` char(5) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tipo_respuesta` char(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `encuesta_id` bigint(20) UNSIGNED NOT NULL,
  `estado` int(11) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `d_resultado_pregunta_abiertas`
--

CREATE TABLE `d_resultado_pregunta_abiertas` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `encuesta_id` bigint(20) UNSIGNED NOT NULL,
  `pregunta_id` bigint(20) UNSIGNED NOT NULL,
  `respuesta` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tipo_pregunta` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `num_encuesta_aplicado` int(11) NOT NULL DEFAULT 0,
  `estado` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `d_resultado_pregunta_archivos`
--

CREATE TABLE `d_resultado_pregunta_archivos` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `encuesta_id` bigint(20) UNSIGNED NOT NULL,
  `pregunta_id` bigint(20) UNSIGNED NOT NULL,
  `imagen` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nombre_img` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `img` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tipo_pregunta` char(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `num_encuesta_aplicado` int(11) NOT NULL DEFAULT 0,
  `estado` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `d_resultado_pregunta_escalas`
--

CREATE TABLE `d_resultado_pregunta_escalas` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `encuesta_id` bigint(20) UNSIGNED NOT NULL,
  `pregunta_id` bigint(20) UNSIGNED NOT NULL,
  `respuesta` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `rango` int(11) NOT NULL,
  `tipo_pregunta` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `num_encuesta_aplicado` int(11) NOT NULL DEFAULT 0,
  `estado` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `d_resultado_pregunta_multiples`
--

CREATE TABLE `d_resultado_pregunta_multiples` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `encuesta_id` bigint(20) UNSIGNED NOT NULL,
  `pregunta_id` bigint(20) UNSIGNED NOT NULL,
  `respuesta_id` bigint(20) UNSIGNED NOT NULL,
  `tipo_pregunta` char(25) COLLATE utf8mb4_unicode_ci NOT NULL,
  `respuesta_otra` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `num_encuesta_aplicado` int(11) NOT NULL DEFAULT 0,
  `estado` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `d_resultado_pregunta_tablas`
--

CREATE TABLE `d_resultado_pregunta_tablas` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `encuesta_id` bigint(20) UNSIGNED NOT NULL,
  `pregunta_id` bigint(20) UNSIGNED NOT NULL,
  `tipo_pregunta` char(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `num_encuesta_aplicado` int(11) NOT NULL DEFAULT 0,
  `column1` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `column2` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `column3` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `column4` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `column5` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `column6` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `column7` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `column8` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `column9` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `column10` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `column11` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `column12` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `num_columns` int(11) NOT NULL,
  `estado` int(11) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(45, '2014_10_12_000000_create_users_table', 1),
(46, '2014_10_12_100000_create_password_resets_table', 1),
(47, '2019_08_19_000000_create_failed_jobs_table', 1),
(48, '2020_10_09_044356_create_d_encuestas_table', 1),
(49, '2020_10_09_044721_create_d_preguntas_table', 1),
(50, '2020_10_09_044843_create_d_datos_pregunta_abiertas_table', 1),
(51, '2020_10_09_044954_create_d_datos_pregunta_multiples_table', 1),
(52, '2020_10_09_045048_create_d_datos_pregunta_escalas_table', 1),
(53, '2020_10_09_045125_create_d_datos_pregunta_archivos_table', 1),
(54, '2020_10_09_045225_create_d_resultado_pregunta_abiertas_table', 1),
(55, '2020_10_09_045305_create_d_resultado_pregunta_multiples_table', 1),
(56, '2020_10_09_045340_create_d_resultado_pregunta_escalas_table', 1),
(57, '2020_10_09_045522_create_d_datos_pregunta_tablas_table', 1),
(58, '2020_10_09_045619_create_d_resultado_pregunta_tablas_table', 1),
(59, '2020_10_09_045651_create_d_contactos_table', 1),
(60, '2020_10_09_045725_create_d_grupos_table', 1),
(61, '2020_10_09_045813_create_d_grupos_de_contatos_table', 1),
(62, '2020_10_09_045846_create_d_encuestas_compartidas_table', 1),
(63, '2020_10_09_045947_create_d_resultado_pregunta_archivos_table', 1),
(64, '2020_10_09_050033_create_d_estilo_encuestas_table', 1),
(65, '2020_10_09_050110_create_d_encuestas_enviadas_emails_table', 1),
(66, '2020_10_09_050156_create_d_encuestas_recibidas_table', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `apellido_pat` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `apellido_mat` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `terminos` tinyint(1) NOT NULL DEFAULT 0,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `d_contactos`
--
ALTER TABLE `d_contactos`
  ADD PRIMARY KEY (`id`),
  ADD KEY `d_contactos_user_id_foreign` (`user_id`);

--
-- Indices de la tabla `d_datos_pregunta_abiertas`
--
ALTER TABLE `d_datos_pregunta_abiertas`
  ADD PRIMARY KEY (`id`),
  ADD KEY `d_datos_pregunta_abiertas_pregunta_id_foreign` (`pregunta_id`);

--
-- Indices de la tabla `d_datos_pregunta_archivos`
--
ALTER TABLE `d_datos_pregunta_archivos`
  ADD PRIMARY KEY (`id`),
  ADD KEY `d_datos_pregunta_archivos_pregunta_id_foreign` (`pregunta_id`);

--
-- Indices de la tabla `d_datos_pregunta_escalas`
--
ALTER TABLE `d_datos_pregunta_escalas`
  ADD PRIMARY KEY (`id`),
  ADD KEY `d_datos_pregunta_escalas_pregunta_id_foreign` (`pregunta_id`);

--
-- Indices de la tabla `d_datos_pregunta_multiples`
--
ALTER TABLE `d_datos_pregunta_multiples`
  ADD PRIMARY KEY (`id`),
  ADD KEY `d_datos_pregunta_multiples_pregunta_id_foreign` (`pregunta_id`);

--
-- Indices de la tabla `d_datos_pregunta_tablas`
--
ALTER TABLE `d_datos_pregunta_tablas`
  ADD PRIMARY KEY (`id`),
  ADD KEY `d_datos_pregunta_tablas_pregunta_id_foreign` (`pregunta_id`);

--
-- Indices de la tabla `d_encuestas`
--
ALTER TABLE `d_encuestas`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `d_encuestas_compartidas`
--
ALTER TABLE `d_encuestas_compartidas`
  ADD PRIMARY KEY (`id`),
  ADD KEY `d_encuestas_compartidas_encuesta_id_foreign` (`encuesta_id`);

--
-- Indices de la tabla `d_encuestas_enviadas_emails`
--
ALTER TABLE `d_encuestas_enviadas_emails`
  ADD PRIMARY KEY (`id`),
  ADD KEY `d_encuestas_enviadas_emails_encuesta_id_foreign` (`encuesta_id`);

--
-- Indices de la tabla `d_encuestas_recibidas`
--
ALTER TABLE `d_encuestas_recibidas`
  ADD PRIMARY KEY (`id`),
  ADD KEY `d_encuestas_recibidas_encuesta_id_foreign` (`encuesta_id`);

--
-- Indices de la tabla `d_estilo_encuestas`
--
ALTER TABLE `d_estilo_encuestas`
  ADD PRIMARY KEY (`id`),
  ADD KEY `d_estilo_encuestas_encuesta_id_foreign` (`encuesta_id`);

--
-- Indices de la tabla `d_grupos`
--
ALTER TABLE `d_grupos`
  ADD PRIMARY KEY (`id`),
  ADD KEY `d_grupos_user_id_foreign` (`user_id`);

--
-- Indices de la tabla `d_grupos_de_contatos`
--
ALTER TABLE `d_grupos_de_contatos`
  ADD PRIMARY KEY (`id`),
  ADD KEY `d_grupos_de_contatos_user_id_foreign` (`user_id`),
  ADD KEY `d_grupos_de_contatos_contacto_id_foreign` (`contacto_id`),
  ADD KEY `d_grupos_de_contatos_grupo_id_foreign` (`grupo_id`);

--
-- Indices de la tabla `d_preguntas`
--
ALTER TABLE `d_preguntas`
  ADD PRIMARY KEY (`id`),
  ADD KEY `d_preguntas_encuesta_id_foreign` (`encuesta_id`);

--
-- Indices de la tabla `d_resultado_pregunta_abiertas`
--
ALTER TABLE `d_resultado_pregunta_abiertas`
  ADD PRIMARY KEY (`id`),
  ADD KEY `d_resultado_pregunta_abiertas_encuesta_id_foreign` (`encuesta_id`),
  ADD KEY `d_resultado_pregunta_abiertas_pregunta_id_foreign` (`pregunta_id`);

--
-- Indices de la tabla `d_resultado_pregunta_archivos`
--
ALTER TABLE `d_resultado_pregunta_archivos`
  ADD PRIMARY KEY (`id`),
  ADD KEY `d_resultado_pregunta_archivos_encuesta_id_foreign` (`encuesta_id`),
  ADD KEY `d_resultado_pregunta_archivos_pregunta_id_foreign` (`pregunta_id`);

--
-- Indices de la tabla `d_resultado_pregunta_escalas`
--
ALTER TABLE `d_resultado_pregunta_escalas`
  ADD PRIMARY KEY (`id`),
  ADD KEY `d_resultado_pregunta_escalas_encuesta_id_foreign` (`encuesta_id`),
  ADD KEY `d_resultado_pregunta_escalas_pregunta_id_foreign` (`pregunta_id`);

--
-- Indices de la tabla `d_resultado_pregunta_multiples`
--
ALTER TABLE `d_resultado_pregunta_multiples`
  ADD PRIMARY KEY (`id`),
  ADD KEY `d_resultado_pregunta_multiples_encuesta_id_foreign` (`encuesta_id`),
  ADD KEY `d_resultado_pregunta_multiples_pregunta_id_foreign` (`pregunta_id`),
  ADD KEY `d_resultado_pregunta_multiples_respuesta_id_foreign` (`respuesta_id`);

--
-- Indices de la tabla `d_resultado_pregunta_tablas`
--
ALTER TABLE `d_resultado_pregunta_tablas`
  ADD PRIMARY KEY (`id`),
  ADD KEY `d_resultado_pregunta_tablas_encuesta_id_foreign` (`encuesta_id`),
  ADD KEY `d_resultado_pregunta_tablas_pregunta_id_foreign` (`pregunta_id`);

--
-- Indices de la tabla `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indices de la tabla `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `d_contactos`
--
ALTER TABLE `d_contactos`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `d_datos_pregunta_abiertas`
--
ALTER TABLE `d_datos_pregunta_abiertas`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `d_datos_pregunta_archivos`
--
ALTER TABLE `d_datos_pregunta_archivos`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `d_datos_pregunta_escalas`
--
ALTER TABLE `d_datos_pregunta_escalas`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `d_datos_pregunta_multiples`
--
ALTER TABLE `d_datos_pregunta_multiples`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `d_datos_pregunta_tablas`
--
ALTER TABLE `d_datos_pregunta_tablas`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `d_encuestas`
--
ALTER TABLE `d_encuestas`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `d_encuestas_compartidas`
--
ALTER TABLE `d_encuestas_compartidas`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `d_encuestas_enviadas_emails`
--
ALTER TABLE `d_encuestas_enviadas_emails`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `d_encuestas_recibidas`
--
ALTER TABLE `d_encuestas_recibidas`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `d_estilo_encuestas`
--
ALTER TABLE `d_estilo_encuestas`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `d_grupos`
--
ALTER TABLE `d_grupos`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `d_grupos_de_contatos`
--
ALTER TABLE `d_grupos_de_contatos`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `d_preguntas`
--
ALTER TABLE `d_preguntas`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `d_resultado_pregunta_abiertas`
--
ALTER TABLE `d_resultado_pregunta_abiertas`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `d_resultado_pregunta_archivos`
--
ALTER TABLE `d_resultado_pregunta_archivos`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `d_resultado_pregunta_escalas`
--
ALTER TABLE `d_resultado_pregunta_escalas`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `d_resultado_pregunta_multiples`
--
ALTER TABLE `d_resultado_pregunta_multiples`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `d_resultado_pregunta_tablas`
--
ALTER TABLE `d_resultado_pregunta_tablas`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=67;

--
-- AUTO_INCREMENT de la tabla `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `d_contactos`
--
ALTER TABLE `d_contactos`
  ADD CONSTRAINT `d_contactos_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `d_datos_pregunta_abiertas`
--
ALTER TABLE `d_datos_pregunta_abiertas`
  ADD CONSTRAINT `d_datos_pregunta_abiertas_pregunta_id_foreign` FOREIGN KEY (`pregunta_id`) REFERENCES `d_preguntas` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `d_datos_pregunta_archivos`
--
ALTER TABLE `d_datos_pregunta_archivos`
  ADD CONSTRAINT `d_datos_pregunta_archivos_pregunta_id_foreign` FOREIGN KEY (`pregunta_id`) REFERENCES `d_preguntas` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `d_datos_pregunta_escalas`
--
ALTER TABLE `d_datos_pregunta_escalas`
  ADD CONSTRAINT `d_datos_pregunta_escalas_pregunta_id_foreign` FOREIGN KEY (`pregunta_id`) REFERENCES `d_preguntas` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `d_datos_pregunta_multiples`
--
ALTER TABLE `d_datos_pregunta_multiples`
  ADD CONSTRAINT `d_datos_pregunta_multiples_pregunta_id_foreign` FOREIGN KEY (`pregunta_id`) REFERENCES `d_preguntas` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `d_datos_pregunta_tablas`
--
ALTER TABLE `d_datos_pregunta_tablas`
  ADD CONSTRAINT `d_datos_pregunta_tablas_pregunta_id_foreign` FOREIGN KEY (`pregunta_id`) REFERENCES `d_preguntas` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `d_encuestas_compartidas`
--
ALTER TABLE `d_encuestas_compartidas`
  ADD CONSTRAINT `d_encuestas_compartidas_encuesta_id_foreign` FOREIGN KEY (`encuesta_id`) REFERENCES `d_encuestas` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `d_encuestas_enviadas_emails`
--
ALTER TABLE `d_encuestas_enviadas_emails`
  ADD CONSTRAINT `d_encuestas_enviadas_emails_encuesta_id_foreign` FOREIGN KEY (`encuesta_id`) REFERENCES `d_encuestas` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `d_encuestas_recibidas`
--
ALTER TABLE `d_encuestas_recibidas`
  ADD CONSTRAINT `d_encuestas_recibidas_encuesta_id_foreign` FOREIGN KEY (`encuesta_id`) REFERENCES `d_encuestas` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `d_estilo_encuestas`
--
ALTER TABLE `d_estilo_encuestas`
  ADD CONSTRAINT `d_estilo_encuestas_encuesta_id_foreign` FOREIGN KEY (`encuesta_id`) REFERENCES `d_encuestas` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `d_grupos`
--
ALTER TABLE `d_grupos`
  ADD CONSTRAINT `d_grupos_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `d_grupos_de_contatos`
--
ALTER TABLE `d_grupos_de_contatos`
  ADD CONSTRAINT `d_grupos_de_contatos_contacto_id_foreign` FOREIGN KEY (`contacto_id`) REFERENCES `d_contactos` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `d_grupos_de_contatos_grupo_id_foreign` FOREIGN KEY (`grupo_id`) REFERENCES `d_grupos` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `d_grupos_de_contatos_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `d_preguntas`
--
ALTER TABLE `d_preguntas`
  ADD CONSTRAINT `d_preguntas_encuesta_id_foreign` FOREIGN KEY (`encuesta_id`) REFERENCES `d_encuestas` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `d_resultado_pregunta_abiertas`
--
ALTER TABLE `d_resultado_pregunta_abiertas`
  ADD CONSTRAINT `d_resultado_pregunta_abiertas_encuesta_id_foreign` FOREIGN KEY (`encuesta_id`) REFERENCES `d_encuestas` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `d_resultado_pregunta_abiertas_pregunta_id_foreign` FOREIGN KEY (`pregunta_id`) REFERENCES `d_preguntas` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `d_resultado_pregunta_archivos`
--
ALTER TABLE `d_resultado_pregunta_archivos`
  ADD CONSTRAINT `d_resultado_pregunta_archivos_encuesta_id_foreign` FOREIGN KEY (`encuesta_id`) REFERENCES `d_encuestas` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `d_resultado_pregunta_archivos_pregunta_id_foreign` FOREIGN KEY (`pregunta_id`) REFERENCES `d_preguntas` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `d_resultado_pregunta_escalas`
--
ALTER TABLE `d_resultado_pregunta_escalas`
  ADD CONSTRAINT `d_resultado_pregunta_escalas_encuesta_id_foreign` FOREIGN KEY (`encuesta_id`) REFERENCES `d_encuestas` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `d_resultado_pregunta_escalas_pregunta_id_foreign` FOREIGN KEY (`pregunta_id`) REFERENCES `d_preguntas` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `d_resultado_pregunta_multiples`
--
ALTER TABLE `d_resultado_pregunta_multiples`
  ADD CONSTRAINT `d_resultado_pregunta_multiples_encuesta_id_foreign` FOREIGN KEY (`encuesta_id`) REFERENCES `d_encuestas` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `d_resultado_pregunta_multiples_pregunta_id_foreign` FOREIGN KEY (`pregunta_id`) REFERENCES `d_preguntas` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `d_resultado_pregunta_multiples_respuesta_id_foreign` FOREIGN KEY (`respuesta_id`) REFERENCES `d_datos_pregunta_multiples` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `d_resultado_pregunta_tablas`
--
ALTER TABLE `d_resultado_pregunta_tablas`
  ADD CONSTRAINT `d_resultado_pregunta_tablas_encuesta_id_foreign` FOREIGN KEY (`encuesta_id`) REFERENCES `d_encuestas` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `d_resultado_pregunta_tablas_pregunta_id_foreign` FOREIGN KEY (`pregunta_id`) REFERENCES `d_preguntas` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
