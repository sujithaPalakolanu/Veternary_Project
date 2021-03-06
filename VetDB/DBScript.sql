﻿USE [master]
GO

/****** Object:  Database [VetDB]    Script Date: 20/02/2020 18:49:51 ******/
CREATE DATABASE [VetDB]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'VetDB', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\VetDB.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'VetDB_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\VetDB_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO

IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [VetDB].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO

ALTER DATABASE [VetDB] SET ANSI_NULL_DEFAULT OFF 
GO

ALTER DATABASE [VetDB] SET ANSI_NULLS OFF 
GO

ALTER DATABASE [VetDB] SET ANSI_PADDING OFF 
GO

ALTER DATABASE [VetDB] SET ANSI_WARNINGS OFF 
GO

ALTER DATABASE [VetDB] SET ARITHABORT OFF 
GO

ALTER DATABASE [VetDB] SET AUTO_CLOSE OFF 
GO

ALTER DATABASE [VetDB] SET AUTO_SHRINK OFF 
GO

ALTER DATABASE [VetDB] SET AUTO_UPDATE_STATISTICS ON 
GO

ALTER DATABASE [VetDB] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO

ALTER DATABASE [VetDB] SET CURSOR_DEFAULT  GLOBAL 
GO

ALTER DATABASE [VetDB] SET CONCAT_NULL_YIELDS_NULL OFF 
GO

ALTER DATABASE [VetDB] SET NUMERIC_ROUNDABORT OFF 
GO

ALTER DATABASE [VetDB] SET QUOTED_IDENTIFIER OFF 
GO

ALTER DATABASE [VetDB] SET RECURSIVE_TRIGGERS OFF 
GO

ALTER DATABASE [VetDB] SET  DISABLE_BROKER 
GO

ALTER DATABASE [VetDB] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO

ALTER DATABASE [VetDB] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO

ALTER DATABASE [VetDB] SET TRUSTWORTHY OFF 
GO

ALTER DATABASE [VetDB] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO

ALTER DATABASE [VetDB] SET PARAMETERIZATION SIMPLE 
GO

ALTER DATABASE [VetDB] SET READ_COMMITTED_SNAPSHOT OFF 
GO

ALTER DATABASE [VetDB] SET HONOR_BROKER_PRIORITY OFF 
GO

ALTER DATABASE [VetDB] SET RECOVERY FULL 
GO

ALTER DATABASE [VetDB] SET  MULTI_USER 
GO

ALTER DATABASE [VetDB] SET PAGE_VERIFY CHECKSUM  
GO

ALTER DATABASE [VetDB] SET DB_CHAINING OFF 
GO

ALTER DATABASE [VetDB] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO

ALTER DATABASE [VetDB] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO

ALTER DATABASE [VetDB] SET DELAYED_DURABILITY = DISABLED 
GO

ALTER DATABASE [VetDB] SET QUERY_STORE = OFF
GO

ALTER DATABASE [VetDB] SET  READ_WRITE 
GO


