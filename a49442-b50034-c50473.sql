USE [DIUBI]
GO
/****** Object:  StoredProcedure [dbo].[InserirPessoa]    Script Date: 6/2/2024 11:49:08 PM ******/
DROP PROCEDURE [dbo].[InserirPessoa]
GO
/****** Object:  StoredProcedure [dbo].[InserirFinanciamento]    Script Date: 6/2/2024 11:49:08 PM ******/
DROP PROCEDURE [dbo].[InserirFinanciamento]
GO
ALTER TABLE [dbo].[TempoAtividade] DROP CONSTRAINT [FK__TempoAtiv__IdAti__02084FDA]
GO
ALTER TABLE [dbo].[Publicacao] DROP CONSTRAINT [FK__Publicaca__IdPro__09A971A2]
GO
ALTER TABLE [dbo].[Publicacao] DROP CONSTRAINT [FK__Publicaca__IdInt__0A9D95DB]
GO
ALTER TABLE [dbo].[Publicacao] DROP CONSTRAINT [FK__Publicaca__IdDat__0B91BA14]
GO
ALTER TABLE [dbo].[Projeto] DROP CONSTRAINT [FK__Projeto__IdInter__628FA481]
GO
ALTER TABLE [dbo].[Projeto] DROP CONSTRAINT [FK__Projeto__IdInsti__5EBF139D]
GO
ALTER TABLE [dbo].[Projeto] DROP CONSTRAINT [FK__Projeto__IdEstad__5FB337D6]
GO
ALTER TABLE [dbo].[Projeto] DROP CONSTRAINT [FK__Projeto__IdDomin__619B8048]
GO
ALTER TABLE [dbo].[Projeto] DROP CONSTRAINT [FK__Projeto__IdData__5DCAEF64]
GO
ALTER TABLE [dbo].[Projeto] DROP CONSTRAINT [FK__Projeto__IdArea__60A75C0F]
GO
ALTER TABLE [dbo].[PrestacaoServico] DROP CONSTRAINT [FK__Prestacao__IdInt__72C60C4A]
GO
ALTER TABLE [dbo].[PrestacaoServico] DROP CONSTRAINT [FK__Prestacao__IdEst__74AE54BC]
GO
ALTER TABLE [dbo].[PrestacaoServico] DROP CONSTRAINT [FK__Prestacao__IdDat__73BA3083]
GO
ALTER TABLE [dbo].[PosicaoInterno] DROP CONSTRAINT [FK__PosicaoIn__IdPro__06CD04F7]
GO
ALTER TABLE [dbo].[PosicaoInterno] DROP CONSTRAINT [FK__PosicaoIn__IdPos__04E4BC85]
GO
ALTER TABLE [dbo].[PosicaoInterno] DROP CONSTRAINT [FK__PosicaoIn__IdInt__05D8E0BE]
GO
ALTER TABLE [dbo].[Orcid] DROP CONSTRAINT [FK__Orcid__IdMembro__5441852A]
GO
ALTER TABLE [dbo].[Membro] DROP CONSTRAINT [FK__Membro__IdPessoa__3E52440B]
GO
ALTER TABLE [dbo].[Interno] DROP CONSTRAINT [FK__Interno__IdPesso__38996AB5]
GO
ALTER TABLE [dbo].[Instituicao_Membro] DROP CONSTRAINT [FK__Instituic__IdMem__571DF1D5]
GO
ALTER TABLE [dbo].[Instituicao_Membro] DROP CONSTRAINT [FK__Instituic__IdIns__5812160E]
GO
ALTER TABLE [dbo].[Financiamento_Projeto_PrestacaoServico] DROP CONSTRAINT [FK__Financiamento_Pr__787EE5A0]
GO
ALTER TABLE [dbo].[Externo] DROP CONSTRAINT [FK__Externo__IdPesso__3B75D760]
GO
ALTER TABLE [dbo].[Equipa_Membro] DROP CONSTRAINT [FK__Equipa_Me__IdMem__68487DD7]
GO
ALTER TABLE [dbo].[Equipa] DROP CONSTRAINT [FK__Equipa__IdProjet__656C112C]
GO
ALTER TABLE [dbo].[CustoElegivelProjeto] DROP CONSTRAINT [FK__CustoEleg__IdPro__6FE99F9F]
GO
ALTER TABLE [dbo].[CustoElegivelEquipa] DROP CONSTRAINT [FK__CustoEleg__IdEqu__6C190EBB]
GO
ALTER TABLE [dbo].[Atividade] DROP CONSTRAINT [FK__Atividade__7F2BE32F]
GO
ALTER TABLE [dbo].[AssociarPalavraChave] DROP CONSTRAINT [FK__AssociarP__IdPro__7B5B524B]
GO
ALTER TABLE [dbo].[AssociarPalavraChave] DROP CONSTRAINT [FK__AssociarP__IdPal__7C4F7684]
GO
/****** Object:  Table [dbo].[TempoAtividade]    Script Date: 6/2/2024 11:49:08 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[TempoAtividade]') AND type in (N'U'))
DROP TABLE [dbo].[TempoAtividade]
GO
/****** Object:  Table [dbo].[Publicacao]    Script Date: 6/2/2024 11:49:08 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Publicacao]') AND type in (N'U'))
DROP TABLE [dbo].[Publicacao]
GO
/****** Object:  Table [dbo].[Projeto_Servico]    Script Date: 6/2/2024 11:49:08 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Projeto_Servico]') AND type in (N'U'))
DROP TABLE [dbo].[Projeto_Servico]
GO
/****** Object:  Table [dbo].[Projeto]    Script Date: 6/2/2024 11:49:08 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Projeto]') AND type in (N'U'))
DROP TABLE [dbo].[Projeto]
GO
/****** Object:  Table [dbo].[Programa]    Script Date: 6/2/2024 11:49:08 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Programa]') AND type in (N'U'))
DROP TABLE [dbo].[Programa]
GO
/****** Object:  Table [dbo].[PrestacaoServico]    Script Date: 6/2/2024 11:49:08 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[PrestacaoServico]') AND type in (N'U'))
DROP TABLE [dbo].[PrestacaoServico]
GO
/****** Object:  Table [dbo].[PosicaoInterno]    Script Date: 6/2/2024 11:49:08 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[PosicaoInterno]') AND type in (N'U'))
DROP TABLE [dbo].[PosicaoInterno]
GO
/****** Object:  Table [dbo].[Posicao]    Script Date: 6/2/2024 11:49:08 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Posicao]') AND type in (N'U'))
DROP TABLE [dbo].[Posicao]
GO
/****** Object:  Table [dbo].[Pessoa]    Script Date: 6/2/2024 11:49:08 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Pessoa]') AND type in (N'U'))
DROP TABLE [dbo].[Pessoa]
GO
/****** Object:  Table [dbo].[PalavraChave]    Script Date: 6/2/2024 11:49:08 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[PalavraChave]') AND type in (N'U'))
DROP TABLE [dbo].[PalavraChave]
GO
/****** Object:  Table [dbo].[Orcid]    Script Date: 6/2/2024 11:49:08 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Orcid]') AND type in (N'U'))
DROP TABLE [dbo].[Orcid]
GO
/****** Object:  Table [dbo].[Membro]    Script Date: 6/2/2024 11:49:08 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Membro]') AND type in (N'U'))
DROP TABLE [dbo].[Membro]
GO
/****** Object:  Table [dbo].[Interno]    Script Date: 6/2/2024 11:49:08 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Interno]') AND type in (N'U'))
DROP TABLE [dbo].[Interno]
GO
/****** Object:  Table [dbo].[Instituicao_Membro]    Script Date: 6/2/2024 11:49:08 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Instituicao_Membro]') AND type in (N'U'))
DROP TABLE [dbo].[Instituicao_Membro]
GO
/****** Object:  Table [dbo].[Instituicao]    Script Date: 6/2/2024 11:49:08 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Instituicao]') AND type in (N'U'))
DROP TABLE [dbo].[Instituicao]
GO
/****** Object:  Table [dbo].[Financiamento_Projeto_PrestacaoServico]    Script Date: 6/2/2024 11:49:08 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Financiamento_Projeto_PrestacaoServico]') AND type in (N'U'))
DROP TABLE [dbo].[Financiamento_Projeto_PrestacaoServico]
GO
/****** Object:  Table [dbo].[Financiamento]    Script Date: 6/2/2024 11:49:08 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Financiamento]') AND type in (N'U'))
DROP TABLE [dbo].[Financiamento]
GO
/****** Object:  Table [dbo].[Financiador]    Script Date: 6/2/2024 11:49:08 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Financiador]') AND type in (N'U'))
DROP TABLE [dbo].[Financiador]
GO
/****** Object:  Table [dbo].[Externo]    Script Date: 6/2/2024 11:49:08 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Externo]') AND type in (N'U'))
DROP TABLE [dbo].[Externo]
GO
/****** Object:  Table [dbo].[Estado]    Script Date: 6/2/2024 11:49:08 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Estado]') AND type in (N'U'))
DROP TABLE [dbo].[Estado]
GO
/****** Object:  Table [dbo].[Equipa_Membro]    Script Date: 6/2/2024 11:49:08 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Equipa_Membro]') AND type in (N'U'))
DROP TABLE [dbo].[Equipa_Membro]
GO
/****** Object:  Table [dbo].[Equipa]    Script Date: 6/2/2024 11:49:08 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Equipa]') AND type in (N'U'))
DROP TABLE [dbo].[Equipa]
GO
/****** Object:  Table [dbo].[DominioCientifico]    Script Date: 6/2/2024 11:49:08 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DominioCientifico]') AND type in (N'U'))
DROP TABLE [dbo].[DominioCientifico]
GO
/****** Object:  Table [dbo].[DataInfo]    Script Date: 6/2/2024 11:49:08 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DataInfo]') AND type in (N'U'))
DROP TABLE [dbo].[DataInfo]
GO
/****** Object:  Table [dbo].[CustoElegivelProjeto]    Script Date: 6/2/2024 11:49:08 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[CustoElegivelProjeto]') AND type in (N'U'))
DROP TABLE [dbo].[CustoElegivelProjeto]
GO
/****** Object:  Table [dbo].[CustoElegivelEquipa]    Script Date: 6/2/2024 11:49:08 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[CustoElegivelEquipa]') AND type in (N'U'))
DROP TABLE [dbo].[CustoElegivelEquipa]
GO
/****** Object:  Table [dbo].[Atividade]    Script Date: 6/2/2024 11:49:08 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Atividade]') AND type in (N'U'))
DROP TABLE [dbo].[Atividade]
GO
/****** Object:  Table [dbo].[AssociarPalavraChave]    Script Date: 6/2/2024 11:49:08 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[AssociarPalavraChave]') AND type in (N'U'))
DROP TABLE [dbo].[AssociarPalavraChave]
GO
/****** Object:  Table [dbo].[AreaCientifica]    Script Date: 6/2/2024 11:49:08 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[AreaCientifica]') AND type in (N'U'))
DROP TABLE [dbo].[AreaCientifica]
GO
USE [master]
GO
/****** Object:  Database [DIUBI]    Script Date: 6/2/2024 11:49:08 PM ******/
DROP DATABASE [DIUBI]
GO
/****** Object:  Database [DIUBI]    Script Date: 6/2/2024 11:49:08 PM ******/
CREATE DATABASE [DIUBI]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'DIUBI', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\DIUBI.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'DIUBI_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\DIUBI_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [DIUBI] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [DIUBI].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [DIUBI] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [DIUBI] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [DIUBI] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [DIUBI] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [DIUBI] SET ARITHABORT OFF 
GO
ALTER DATABASE [DIUBI] SET AUTO_CLOSE ON 
GO
ALTER DATABASE [DIUBI] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [DIUBI] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [DIUBI] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [DIUBI] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [DIUBI] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [DIUBI] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [DIUBI] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [DIUBI] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [DIUBI] SET  ENABLE_BROKER 
GO
ALTER DATABASE [DIUBI] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [DIUBI] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [DIUBI] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [DIUBI] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [DIUBI] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [DIUBI] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [DIUBI] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [DIUBI] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [DIUBI] SET  MULTI_USER 
GO
ALTER DATABASE [DIUBI] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [DIUBI] SET DB_CHAINING OFF 
GO
ALTER DATABASE [DIUBI] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [DIUBI] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [DIUBI] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [DIUBI] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
ALTER DATABASE [DIUBI] SET QUERY_STORE = OFF
GO
USE [DIUBI]
GO
/****** Object:  Table [dbo].[AreaCientifica]    Script Date: 6/2/2024 11:49:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AreaCientifica](
	[IdArea] [int] NOT NULL,
	[NomeArea] [varchar](250) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[IdArea] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AssociarPalavraChave]    Script Date: 6/2/2024 11:49:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AssociarPalavraChave](
	[IdAssociacao] [int] NOT NULL,
	[IdProjeto] [int] NOT NULL,
	[IdPalavraChave] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[IdAssociacao] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Atividade]    Script Date: 6/2/2024 11:49:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Atividade](
	[IdAtividade] [int] NOT NULL,
	[NomeAtividade] [varchar](250) NOT NULL,
	[TipoAtividade] [varchar](250) NOT NULL,
	[IdProjeto_Servico] [int] NOT NULL,
	[TipoProjeto_Servico] [varchar](50) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[IdAtividade] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CustoElegivelEquipa]    Script Date: 6/2/2024 11:49:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CustoElegivelEquipa](
	[IdCustoElegivelEquipa] [int] NOT NULL,
	[IdEquipa] [int] NOT NULL,
	[CustoEquipa] [decimal](15, 2) NOT NULL,
	[IdFinanciamento] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[IdCustoElegivelEquipa] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CustoElegivelProjeto]    Script Date: 6/2/2024 11:49:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CustoElegivelProjeto](
	[IdCustoElegivelProjeto] [int] NOT NULL,
	[IdProjeto] [int] NOT NULL,
	[CustoProjeto] [decimal](15, 2) NOT NULL,
	[IdFinanciamento] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[IdCustoElegivelProjeto] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DataInfo]    Script Date: 6/2/2024 11:49:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DataInfo](
	[IdData] [int] NOT NULL,
	[DataInicio] [date] NOT NULL,
	[DataFim] [date] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[IdData] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DominioCientifico]    Script Date: 6/2/2024 11:49:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DominioCientifico](
	[IdDominio] [int] NOT NULL,
	[NomeDominio] [varchar](250) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[IdDominio] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Equipa]    Script Date: 6/2/2024 11:49:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Equipa](
	[IdEquipa] [int] NOT NULL,
	[IdProjeto] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[IdEquipa] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Equipa_Membro]    Script Date: 6/2/2024 11:49:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Equipa_Membro](
	[IdEquipa] [int] NOT NULL,
	[IdMembro] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[IdEquipa] ASC,
	[IdMembro] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Estado]    Script Date: 6/2/2024 11:49:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Estado](
	[IdEstado] [int] NOT NULL,
	[NomeEstado] [varchar](250) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[IdEstado] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Externo]    Script Date: 6/2/2024 11:49:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Externo](
	[IdExterno] [int] IDENTITY(1,1) NOT NULL,
	[IdPessoa] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[IdExterno] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Financiador]    Script Date: 6/2/2024 11:49:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Financiador](
	[IdFinanciador] [int] IDENTITY(1,1) NOT NULL,
	[TipoFinanciador] [varchar](50) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[IdFinanciador] ASC,
	[TipoFinanciador] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Financiamento]    Script Date: 6/2/2024 11:49:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Financiamento](
	[IdFinanciamento] [int] IDENTITY(1,1) NOT NULL,
	[Valor] [decimal](15, 2) NOT NULL,
	[TipoFinanciamento] [varchar](250) NOT NULL,
	[OrigemFinanciamento] [varchar](250) NOT NULL,
	[IdFinanciador] [int] NOT NULL,
	[TipoFinanciador] [varchar](50) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[IdFinanciamento] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Financiamento_Projeto_PrestacaoServico]    Script Date: 6/2/2024 11:49:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Financiamento_Projeto_PrestacaoServico](
	[IdFinanciamento] [int] IDENTITY(1,1) NOT NULL,
	[IdProjeto_Servico] [int] NOT NULL,
	[TipoProjeto_Servico] [varchar](50) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[IdFinanciamento] ASC,
	[IdProjeto_Servico] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Instituicao]    Script Date: 6/2/2024 11:49:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Instituicao](
	[IdInstituicao] [int] NOT NULL,
	[NomeInstituicao] [varchar](250) NOT NULL,
	[NacionalidadeInstituicao] [varchar](250) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[IdInstituicao] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Instituicao_Membro]    Script Date: 6/2/2024 11:49:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Instituicao_Membro](
	[IdMembro] [int] NOT NULL,
	[IdInstituicao] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[IdMembro] ASC,
	[IdInstituicao] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Interno]    Script Date: 6/2/2024 11:49:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Interno](
	[IdInterno] [int] IDENTITY(1,1) NOT NULL,
	[IdPessoa] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[IdInterno] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Membro]    Script Date: 6/2/2024 11:49:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Membro](
	[IdMembro] [int] IDENTITY(1,1) NOT NULL,
	[IdPessoa] [int] NOT NULL,
	[TipoMembro] [varchar](250) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[IdMembro] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Orcid]    Script Date: 6/2/2024 11:49:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Orcid](
	[IdOrcid] [int] NOT NULL,
	[IdMembro] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[IdOrcid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PalavraChave]    Script Date: 6/2/2024 11:49:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PalavraChave](
	[IdPalavraChave] [int] NOT NULL,
	[PalavraChave] [varchar](250) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[IdPalavraChave] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Pessoa]    Script Date: 6/2/2024 11:49:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Pessoa](
	[IdPessoa] [int] IDENTITY(1,1) NOT NULL,
	[PrimeiroNome] [varchar](250) NULL,
	[UltimoNome] [varchar](250) NULL,
	[Email] [varchar](250) NOT NULL,
	[Telefone] [varchar](20) NULL,
PRIMARY KEY CLUSTERED 
(
	[IdPessoa] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Posicao]    Script Date: 6/2/2024 11:49:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Posicao](
	[IdPosicao] [int] NOT NULL,
	[NomePosicao] [varchar](250) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[IdPosicao] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PosicaoInterno]    Script Date: 6/2/2024 11:49:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PosicaoInterno](
	[IdPosicao] [int] NOT NULL,
	[IdInterno] [int] NOT NULL,
	[IdProjeto] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[IdPosicao] ASC,
	[IdInterno] ASC,
	[IdProjeto] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PrestacaoServico]    Script Date: 6/2/2024 11:49:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PrestacaoServico](
	[IdPrestacaoServico] [int] NOT NULL,
	[NomePrestacaoServico] [varchar](250) NOT NULL,
	[Descricao] [text] NOT NULL,
	[IdInterno] [int] NOT NULL,
	[IdData] [int] NOT NULL,
	[IdEstado] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[IdPrestacaoServico] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Programa]    Script Date: 6/2/2024 11:49:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Programa](
	[IdPrograma] [int] NOT NULL,
	[NacionalidadePrograma] [varchar](250) NULL,
	[NomePrograma] [varchar](250) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[IdPrograma] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Projeto]    Script Date: 6/2/2024 11:49:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Projeto](
	[IdProjeto] [int] NOT NULL,
	[NomeProjeto] [varchar](250) NOT NULL,
	[Descricao] [varchar](250) NOT NULL,
	[IdData] [int] NOT NULL,
	[IdInstituicao] [int] NOT NULL,
	[IdEstado] [int] NOT NULL,
	[IdArea] [int] NOT NULL,
	[IdDominio] [int] NOT NULL,
	[IdInterno] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[IdProjeto] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Projeto_Servico]    Script Date: 6/2/2024 11:49:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Projeto_Servico](
	[IdProjeto_Servico] [int] NOT NULL,
	[TipoProjeto_Servico] [varchar](50) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[IdProjeto_Servico] ASC,
	[TipoProjeto_Servico] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Publicacao]    Script Date: 6/2/2024 11:49:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Publicacao](
	[IdPublicacao] [int] NOT NULL,
	[DOI] [varchar](100) NOT NULL,
	[IdProjeto] [int] NOT NULL,
	[IdInterno] [int] NOT NULL,
	[IdData] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[IdPublicacao] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TempoAtividade]    Script Date: 6/2/2024 11:49:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TempoAtividade](
	[IdMembro] [int] NOT NULL,
	[TempoTrabalho] [time](7) NOT NULL,
	[IdAtividade] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[IdMembro] ASC,
	[IdAtividade] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[AreaCientifica] ([IdArea], [NomeArea]) VALUES (1, N'Biologia')
INSERT [dbo].[AreaCientifica] ([IdArea], [NomeArea]) VALUES (2, N'Computação')
GO
INSERT [dbo].[DataInfo] ([IdData], [DataInicio], [DataFim]) VALUES (1, CAST(N'2023-01-01' AS Date), CAST(N'2023-12-31' AS Date))
INSERT [dbo].[DataInfo] ([IdData], [DataInicio], [DataFim]) VALUES (2, CAST(N'2024-01-01' AS Date), CAST(N'2024-12-31' AS Date))
GO
INSERT [dbo].[DominioCientifico] ([IdDominio], [NomeDominio]) VALUES (1, N'Ciências Naturais')
INSERT [dbo].[DominioCientifico] ([IdDominio], [NomeDominio]) VALUES (2, N'Engenharia')
GO
INSERT [dbo].[Equipa] ([IdEquipa], [IdProjeto]) VALUES (1, 1)
GO
INSERT [dbo].[Equipa_Membro] ([IdEquipa], [IdMembro]) VALUES (1, 1)
GO
INSERT [dbo].[Estado] ([IdEstado], [NomeEstado]) VALUES (1, N'Aprovado')
INSERT [dbo].[Estado] ([IdEstado], [NomeEstado]) VALUES (2, N'Cancelado')
INSERT [dbo].[Estado] ([IdEstado], [NomeEstado]) VALUES (3, N'Concluído')
INSERT [dbo].[Estado] ([IdEstado], [NomeEstado]) VALUES (4, N'Em curso')
INSERT [dbo].[Estado] ([IdEstado], [NomeEstado]) VALUES (5, N'Encerrado')
INSERT [dbo].[Estado] ([IdEstado], [NomeEstado]) VALUES (6, N'Renovado')
INSERT [dbo].[Estado] ([IdEstado], [NomeEstado]) VALUES (7, N'Em submissão')
GO
SET IDENTITY_INSERT [dbo].[Financiador] ON 

INSERT [dbo].[Financiador] ([IdFinanciador], [TipoFinanciador]) VALUES (1, N'Instituicao')
INSERT [dbo].[Financiador] ([IdFinanciador], [TipoFinanciador]) VALUES (1, N'Programa')
SET IDENTITY_INSERT [dbo].[Financiador] OFF
GO
SET IDENTITY_INSERT [dbo].[Financiamento] ON 

INSERT [dbo].[Financiamento] ([IdFinanciamento], [Valor], [TipoFinanciamento], [OrigemFinanciamento], [IdFinanciador], [TipoFinanciador]) VALUES (15, CAST(5000.00 AS Decimal(15, 2)), N'Competitivo', N'Externo', 1, N'Instituicao')
SET IDENTITY_INSERT [dbo].[Financiamento] OFF
GO
SET IDENTITY_INSERT [dbo].[Financiamento_Projeto_PrestacaoServico] ON 

INSERT [dbo].[Financiamento_Projeto_PrestacaoServico] ([IdFinanciamento], [IdProjeto_Servico], [TipoProjeto_Servico]) VALUES (15, 1, N'Projeto')
SET IDENTITY_INSERT [dbo].[Financiamento_Projeto_PrestacaoServico] OFF
GO
INSERT [dbo].[Instituicao] ([IdInstituicao], [NomeInstituicao], [NacionalidadeInstituicao]) VALUES (1, N'Universidade da Beira Interior', N'Portugal')
INSERT [dbo].[Instituicao] ([IdInstituicao], [NomeInstituicao], [NacionalidadeInstituicao]) VALUES (2, N'Universidade de Aveiro', N'Portugal')
INSERT [dbo].[Instituicao] ([IdInstituicao], [NomeInstituicao], [NacionalidadeInstituicao]) VALUES (3, N'Fundação Gulbenkian', N'Portugal')
INSERT [dbo].[Instituicao] ([IdInstituicao], [NomeInstituicao], [NacionalidadeInstituicao]) VALUES (4, N'Universidade Complutense de Madrid', N'Espanha')
GO
SET IDENTITY_INSERT [dbo].[Interno] ON 

INSERT [dbo].[Interno] ([IdInterno], [IdPessoa]) VALUES (1, 1)
INSERT [dbo].[Interno] ([IdInterno], [IdPessoa]) VALUES (2, 2)
SET IDENTITY_INSERT [dbo].[Interno] OFF
GO
SET IDENTITY_INSERT [dbo].[Membro] ON 

INSERT [dbo].[Membro] ([IdMembro], [IdPessoa], [TipoMembro]) VALUES (1, 1, N'Interno')
INSERT [dbo].[Membro] ([IdMembro], [IdPessoa], [TipoMembro]) VALUES (2, 2, N'Interno')
SET IDENTITY_INSERT [dbo].[Membro] OFF
GO
INSERT [dbo].[PalavraChave] ([IdPalavraChave], [PalavraChave]) VALUES (1, N'Inteligência Artificial')
INSERT [dbo].[PalavraChave] ([IdPalavraChave], [PalavraChave]) VALUES (2, N'Sustentabilidade')
GO
SET IDENTITY_INSERT [dbo].[Pessoa] ON 

INSERT [dbo].[Pessoa] ([IdPessoa], [PrimeiroNome], [UltimoNome], [Email], [Telefone]) VALUES (1, N'João', N'Silva', N'joao.silva@example.com', N'123456789')
INSERT [dbo].[Pessoa] ([IdPessoa], [PrimeiroNome], [UltimoNome], [Email], [Telefone]) VALUES (2, N'Maria', N'Oliveira', N'maria.oliveira@example.com', N'987654321')
SET IDENTITY_INSERT [dbo].[Pessoa] OFF
GO
INSERT [dbo].[Posicao] ([IdPosicao], [NomePosicao]) VALUES (1, N'Líder')
INSERT [dbo].[Posicao] ([IdPosicao], [NomePosicao]) VALUES (2, N'Promotor')
INSERT [dbo].[Posicao] ([IdPosicao], [NomePosicao]) VALUES (3, N'Copromotor')
INSERT [dbo].[Posicao] ([IdPosicao], [NomePosicao]) VALUES (4, N'Participante')
GO
INSERT [dbo].[PosicaoInterno] ([IdPosicao], [IdInterno], [IdProjeto]) VALUES (1, 1, 1)
GO
INSERT [dbo].[PrestacaoServico] ([IdPrestacaoServico], [NomePrestacaoServico], [Descricao], [IdInterno], [IdData], [IdEstado]) VALUES (1, N'Consultoria Ambiental', N'Serviço de consultoria em práticas sustentáveis', 1, 1, 1)
INSERT [dbo].[PrestacaoServico] ([IdPrestacaoServico], [NomePrestacaoServico], [Descricao], [IdInterno], [IdData], [IdEstado]) VALUES (2, N'Desenvolvimento de Software', N'Serviço de desenvolvimento de aplicações de IA', 2, 2, 2)
GO
INSERT [dbo].[Programa] ([IdPrograma], [NacionalidadePrograma], [NomePrograma]) VALUES (1, N'Portugal', N'Programa A')
INSERT [dbo].[Programa] ([IdPrograma], [NacionalidadePrograma], [NomePrograma]) VALUES (2, N'Espanha', N'Programa B')
GO
INSERT [dbo].[Projeto] ([IdProjeto], [NomeProjeto], [Descricao], [IdData], [IdInstituicao], [IdEstado], [IdArea], [IdDominio], [IdInterno]) VALUES (1, N'Projeto Alpha', N'Pesquisa sobre sustentabilidade', 1, 1, 1, 1, 1, 1)
INSERT [dbo].[Projeto] ([IdProjeto], [NomeProjeto], [Descricao], [IdData], [IdInstituicao], [IdEstado], [IdArea], [IdDominio], [IdInterno]) VALUES (2, N'Projeto Beta', N'Desenvolvimento de IA', 2, 2, 6, 2, 2, 2)
GO
INSERT [dbo].[Projeto_Servico] ([IdProjeto_Servico], [TipoProjeto_Servico]) VALUES (1, N'PrestacaoServico')
INSERT [dbo].[Projeto_Servico] ([IdProjeto_Servico], [TipoProjeto_Servico]) VALUES (1, N'Projeto')
INSERT [dbo].[Projeto_Servico] ([IdProjeto_Servico], [TipoProjeto_Servico]) VALUES (2, N'PrestacaoServico')
INSERT [dbo].[Projeto_Servico] ([IdProjeto_Servico], [TipoProjeto_Servico]) VALUES (2, N'Projeto')
GO
INSERT [dbo].[Publicacao] ([IdPublicacao], [DOI], [IdProjeto], [IdInterno], [IdData]) VALUES (1, N'10.1234/abcd.2023.001', 1, 1, 1)
INSERT [dbo].[Publicacao] ([IdPublicacao], [DOI], [IdProjeto], [IdInterno], [IdData]) VALUES (2, N'10.1234/abcd.2024.002', 2, 2, 2)
GO
ALTER TABLE [dbo].[AssociarPalavraChave]  WITH CHECK ADD FOREIGN KEY([IdPalavraChave])
REFERENCES [dbo].[PalavraChave] ([IdPalavraChave])
GO
ALTER TABLE [dbo].[AssociarPalavraChave]  WITH CHECK ADD FOREIGN KEY([IdProjeto])
REFERENCES [dbo].[Projeto] ([IdProjeto])
GO
ALTER TABLE [dbo].[Atividade]  WITH CHECK ADD FOREIGN KEY([IdProjeto_Servico], [TipoProjeto_Servico])
REFERENCES [dbo].[Projeto_Servico] ([IdProjeto_Servico], [TipoProjeto_Servico])
GO
ALTER TABLE [dbo].[CustoElegivelEquipa]  WITH CHECK ADD FOREIGN KEY([IdEquipa])
REFERENCES [dbo].[Equipa] ([IdEquipa])
GO
ALTER TABLE [dbo].[CustoElegivelProjeto]  WITH CHECK ADD FOREIGN KEY([IdProjeto])
REFERENCES [dbo].[Projeto] ([IdProjeto])
GO
ALTER TABLE [dbo].[Equipa]  WITH CHECK ADD FOREIGN KEY([IdProjeto])
REFERENCES [dbo].[Projeto] ([IdProjeto])
GO
ALTER TABLE [dbo].[Equipa_Membro]  WITH CHECK ADD FOREIGN KEY([IdMembro])
REFERENCES [dbo].[Membro] ([IdMembro])
GO
ALTER TABLE [dbo].[Externo]  WITH CHECK ADD FOREIGN KEY([IdPessoa])
REFERENCES [dbo].[Pessoa] ([IdPessoa])
GO
ALTER TABLE [dbo].[Financiamento_Projeto_PrestacaoServico]  WITH CHECK ADD FOREIGN KEY([IdProjeto_Servico], [TipoProjeto_Servico])
REFERENCES [dbo].[Projeto_Servico] ([IdProjeto_Servico], [TipoProjeto_Servico])
GO
ALTER TABLE [dbo].[Instituicao_Membro]  WITH CHECK ADD FOREIGN KEY([IdInstituicao])
REFERENCES [dbo].[Instituicao] ([IdInstituicao])
GO
ALTER TABLE [dbo].[Instituicao_Membro]  WITH CHECK ADD FOREIGN KEY([IdMembro])
REFERENCES [dbo].[Membro] ([IdMembro])
GO
ALTER TABLE [dbo].[Interno]  WITH CHECK ADD FOREIGN KEY([IdPessoa])
REFERENCES [dbo].[Pessoa] ([IdPessoa])
GO
ALTER TABLE [dbo].[Membro]  WITH CHECK ADD FOREIGN KEY([IdPessoa])
REFERENCES [dbo].[Pessoa] ([IdPessoa])
GO
ALTER TABLE [dbo].[Orcid]  WITH CHECK ADD FOREIGN KEY([IdMembro])
REFERENCES [dbo].[Membro] ([IdMembro])
GO
ALTER TABLE [dbo].[PosicaoInterno]  WITH CHECK ADD FOREIGN KEY([IdInterno])
REFERENCES [dbo].[Interno] ([IdInterno])
GO
ALTER TABLE [dbo].[PosicaoInterno]  WITH CHECK ADD FOREIGN KEY([IdPosicao])
REFERENCES [dbo].[Posicao] ([IdPosicao])
GO
ALTER TABLE [dbo].[PosicaoInterno]  WITH CHECK ADD FOREIGN KEY([IdProjeto])
REFERENCES [dbo].[Projeto] ([IdProjeto])
GO
ALTER TABLE [dbo].[PrestacaoServico]  WITH CHECK ADD FOREIGN KEY([IdData])
REFERENCES [dbo].[DataInfo] ([IdData])
GO
ALTER TABLE [dbo].[PrestacaoServico]  WITH CHECK ADD FOREIGN KEY([IdEstado])
REFERENCES [dbo].[Estado] ([IdEstado])
GO
ALTER TABLE [dbo].[PrestacaoServico]  WITH CHECK ADD FOREIGN KEY([IdInterno])
REFERENCES [dbo].[Interno] ([IdInterno])
GO
ALTER TABLE [dbo].[Projeto]  WITH CHECK ADD FOREIGN KEY([IdArea])
REFERENCES [dbo].[AreaCientifica] ([IdArea])
GO
ALTER TABLE [dbo].[Projeto]  WITH CHECK ADD FOREIGN KEY([IdData])
REFERENCES [dbo].[DataInfo] ([IdData])
GO
ALTER TABLE [dbo].[Projeto]  WITH CHECK ADD FOREIGN KEY([IdDominio])
REFERENCES [dbo].[DominioCientifico] ([IdDominio])
GO
ALTER TABLE [dbo].[Projeto]  WITH CHECK ADD FOREIGN KEY([IdEstado])
REFERENCES [dbo].[Estado] ([IdEstado])
GO
ALTER TABLE [dbo].[Projeto]  WITH CHECK ADD FOREIGN KEY([IdInstituicao])
REFERENCES [dbo].[Instituicao] ([IdInstituicao])
GO
ALTER TABLE [dbo].[Projeto]  WITH CHECK ADD FOREIGN KEY([IdInterno])
REFERENCES [dbo].[Interno] ([IdInterno])
GO
ALTER TABLE [dbo].[Publicacao]  WITH CHECK ADD FOREIGN KEY([IdData])
REFERENCES [dbo].[DataInfo] ([IdData])
GO
ALTER TABLE [dbo].[Publicacao]  WITH CHECK ADD FOREIGN KEY([IdInterno])
REFERENCES [dbo].[Interno] ([IdInterno])
GO
ALTER TABLE [dbo].[Publicacao]  WITH CHECK ADD FOREIGN KEY([IdProjeto])
REFERENCES [dbo].[Projeto] ([IdProjeto])
GO
ALTER TABLE [dbo].[TempoAtividade]  WITH CHECK ADD FOREIGN KEY([IdAtividade])
REFERENCES [dbo].[Atividade] ([IdAtividade])
GO
/****** Object:  StoredProcedure [dbo].[InserirFinanciamento]    Script Date: 6/2/2024 11:49:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[InserirFinanciamento]
    @Valor DECIMAL(15, 2),
    @TipoFinanciamento VARCHAR(250),
    @OrigemFinanciamento VARCHAR(250),
    @IdFinanciador INT,
    @TipoFinanciador VARCHAR(50),
    @IdProjeto_Servico INT,
    @TipoProjeto_Servico VARCHAR(50)
AS
BEGIN
    DECLARE @IdFinanciamento INT;

    -- Inserir na tabela Financiamento
    INSERT INTO Financiamento (Valor, TipoFinanciamento, OrigemFinanciamento, IdFinanciador, TipoFinanciador)
    VALUES (@Valor, @TipoFinanciamento, @OrigemFinanciamento, @IdFinanciador, @TipoFinanciador);

    -- Obter o último IdFinanciamento inserido
    SET @IdFinanciamento = SCOPE_IDENTITY();

    -- Inserir na tabela Financiamento_Projeto_PrestacaoServico
    INSERT INTO Financiamento_Projeto_PrestacaoServico (IdFinanciamento, IdProjeto_Servico, TipoProjeto_Servico)
    VALUES (@IdFinanciamento, @IdProjeto_Servico, @TipoProjeto_Servico);
END;
GO
/****** Object:  StoredProcedure [dbo].[InserirPessoa]    Script Date: 6/2/2024 11:49:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[InserirPessoa]
(
    @PrimeiroNome VARCHAR(250),
    @UltimoNome VARCHAR(250),
    @Email VARCHAR(250),
    @Telefone VARCHAR(20),
    @TipoMembro VARCHAR(250)
)
AS
BEGIN
    DECLARE @newIdPessoa INT;

    -- Insere a pessoa
    INSERT INTO Pessoa (PrimeiroNome, UltimoNome, Email, Telefone)
    VALUES (@PrimeiroNome, @UltimoNome, @Email, @Telefone);

    -- Obtém o ID da pessoa recém-inserida
    SET @newIdPessoa = SCOPE_IDENTITY();

    -- Insere no Interno ou Externo baseado no tipo de membro
    IF @TipoMembro = 'Interno'
    BEGIN
        INSERT INTO Interno (IdPessoa) VALUES (@newIdPessoa);
    END
    ELSE IF @TipoMembro = 'Externo'
    BEGIN
        INSERT INTO Externo (IdPessoa) VALUES (@newIdPessoa);
    END
END
GO
USE [master]
GO
ALTER DATABASE [DIUBI] SET  READ_WRITE 
GO
