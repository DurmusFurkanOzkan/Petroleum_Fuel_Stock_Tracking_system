USE [master]
GO
/****** Object:  Database [Petroleum_Fuel_Stock_Tracking_System]    Script Date: 22.10.2022 14:18:04 ******/
CREATE DATABASE [Petroleum_Fuel_Stock_Tracking_System]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'Petroleum_Fuel_Stock_Tracking_System', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\Petroleum_Fuel_Stock_Tracking_System.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'Petroleum_Fuel_Stock_Tracking_System_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\Petroleum_Fuel_Stock_Tracking_System_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [Petroleum_Fuel_Stock_Tracking_System] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Petroleum_Fuel_Stock_Tracking_System].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [Petroleum_Fuel_Stock_Tracking_System] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [Petroleum_Fuel_Stock_Tracking_System] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [Petroleum_Fuel_Stock_Tracking_System] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [Petroleum_Fuel_Stock_Tracking_System] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [Petroleum_Fuel_Stock_Tracking_System] SET ARITHABORT OFF 
GO
ALTER DATABASE [Petroleum_Fuel_Stock_Tracking_System] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [Petroleum_Fuel_Stock_Tracking_System] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [Petroleum_Fuel_Stock_Tracking_System] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [Petroleum_Fuel_Stock_Tracking_System] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [Petroleum_Fuel_Stock_Tracking_System] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [Petroleum_Fuel_Stock_Tracking_System] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [Petroleum_Fuel_Stock_Tracking_System] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [Petroleum_Fuel_Stock_Tracking_System] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [Petroleum_Fuel_Stock_Tracking_System] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [Petroleum_Fuel_Stock_Tracking_System] SET  DISABLE_BROKER 
GO
ALTER DATABASE [Petroleum_Fuel_Stock_Tracking_System] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [Petroleum_Fuel_Stock_Tracking_System] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [Petroleum_Fuel_Stock_Tracking_System] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [Petroleum_Fuel_Stock_Tracking_System] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [Petroleum_Fuel_Stock_Tracking_System] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [Petroleum_Fuel_Stock_Tracking_System] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [Petroleum_Fuel_Stock_Tracking_System] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [Petroleum_Fuel_Stock_Tracking_System] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [Petroleum_Fuel_Stock_Tracking_System] SET  MULTI_USER 
GO
ALTER DATABASE [Petroleum_Fuel_Stock_Tracking_System] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [Petroleum_Fuel_Stock_Tracking_System] SET DB_CHAINING OFF 
GO
ALTER DATABASE [Petroleum_Fuel_Stock_Tracking_System] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [Petroleum_Fuel_Stock_Tracking_System] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [Petroleum_Fuel_Stock_Tracking_System] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [Petroleum_Fuel_Stock_Tracking_System] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
ALTER DATABASE [Petroleum_Fuel_Stock_Tracking_System] SET QUERY_STORE = OFF
GO
USE [Petroleum_Fuel_Stock_Tracking_System]
GO
/****** Object:  Table [dbo].[Admin]    Script Date: 22.10.2022 14:18:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Admin](
	[ID] [tinyint] IDENTITY(1,1) NOT NULL,
	[Account_Number] [int] NULL,
	[Password] [varchar](50) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Petroleum]    Script Date: 22.10.2022 14:18:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Petroleum](
	[Petroleum_id] [tinyint] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](20) NULL,
	[Purchase_price] [decimal](18, 2) NULL,
	[Sale_price] [decimal](18, 2) NULL,
	[Stock] [decimal](18, 2) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Safe]    Script Date: 22.10.2022 14:18:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Safe](
	[safe] [decimal](18, 2) NULL
) ON [PRIMARY]
GO
USE [master]
GO
ALTER DATABASE [Petroleum_Fuel_Stock_Tracking_System] SET  READ_WRITE 
GO
