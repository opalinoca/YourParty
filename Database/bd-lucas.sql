-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 23-Maio-2022 às 02:11
-- Versão do servidor: 10.4.20-MariaDB
-- versão do PHP: 8.0.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `bdyourparty`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `tbbuffet`
--
CREATE TABLE `tbadmin` (
  `idAdmin` int(11) NOT NULL,
  `nomeAdmin` varchar(200) NOT NULL,
  `emailAdmin` varchar(200) NOT NULL,
  `senhaAdmin` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;


CREATE TABLE `tbbuffet` (
  `idBuffet` int(11) NOT NULL,
  `nomeBuffet` varchar(200) NOT NULL,
  `descricaoBuffet` varchar(200) NOT NULL,
  `valorBuffet` decimal(15,2) NOT NULL,
  `fotoBuffet` varchar(200) NOT NULL,
  `idEmpresa` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `tbbuffet`
--

INSERT INTO `tbbuffet` (`idBuffet`, `nomeBuffet`, `descricaoBuffet`, `valorBuffet`, `fotoBuffet`, `idEmpresa`) VALUES
(2, 'Palanc', 'Com o Buffet Marron Glacê o que não faltará em sua festa de casamento será variedade em serviços e personalidade. Acostumados a lidar com todo tipo de público nos diversos estilos de eventos que organ', '2000.00', 'images-db/628ab98261999.jpeg', 1),
(3, 'Buffet Marron Glacê', 'Um espaço sofisticado, clean e com mobiliário de bom gosto, ideal para a sua festa de casamento dos sonhos. O Espaço Fairbanks tem tantas qualidades que fica impossível não dar uma olhadinha em tudo o', '1500.00', 'images-db/628ab9b8771f3.jpg', 1),
(4, 'Madeira Buffet', 'Com mais de 33 anos de experiência no mercado de eventos sociais, a empresa Gastronomia Madeira (Madeira Buffet) está consolidada no seu segmento como sinônimo de qualidade e profissionalismo. Garante', '3900.00', 'images-db/628aba2b84821.jpeg', 1),
(5, 'Happy Moment Buffet & Eventos', 'Se vocês desejam surpreender os olhos e o paladar de todos os seus convidados no dia do seu casamento, contem com os serviços oferecidos pela Happy Moment. A empresa oferece aos noivos 2 formatos de c', '4000.00', 'images-db/628aba8a48554.jpg', 1),
(6, 'Buffet Tâmisa', 'A vida é cheia de momentos mágicos e cada um deles deve ser comemorado com estilo. Seja aniversário, casamento, evento corporativo ou cerimônia de debutante, cada detalhe deve ser perfeito e eternizad', '1000.00', 'images-db/628abac250309.jpg', 1),
(7, 'Buffet Prince', 'O Buffet Prince oferece tudo que você precisa para realizar a festa de seus sonhos tornando seu momento especial e inesquecível, além de a 25 anos, enriquecer sua relação de clientes bem atendidos.', '10000.00', 'images-db/628abaf8515a8.jpg', 1),
(8, 'Tatuapé Hall', 'O Tatuapé Hall oferece para seu casamento um serviço de buffet de excelência onde a qualidade dos cardápios é total prioridade. Seu convidados se surpreenderão com os pratos e doces elaborados por a e', '8600.00', 'images-db/628abb39ec55f.jpg', 1),
(9, 'Smaf Buffet', 'Com o Smaf Buffet, vocês terão a oportunidade de conseguirem um menu para o casamento que será inesquecível. A equipe do buffet tem amplo domínio sobre técnicas de receitas e preparo de refeições para', '5000.00', 'images-db/628abb9d2a764.jpeg', 1),
(10, 'Munhoz Buffet', 'Se vocês desejam encantar a todos os seus amigos e familiares pelo paladar, contem com a colaboração do Munhoz Buffet. A empresa atende a todos os tipos de celebrações, sempre oferecendo aos seus clie', '7300.00', 'images-db/628abbd1bad51.jpeg', 1),
(11, 'Vivi Eventos', 'A Vivi Eventos está no mercado há mais de 8 anos, com trabalho de buffet, decoração e espaços lindos . Durante este período de alta produção, o buffet já trabalhou para diferentes eventos, com destaqu', '4500.00', 'images-db/628abc2dec23a.jpg', 1),
(13, 'Buffet Cachorro Quente', 'BUffet especializado em cachorro quente', '4000.00', 'images-db/628ab8bc62702.jpg', 2);

-- --------------------------------------------------------

--
-- Estrutura da tabela `tbcatalogoservico`
--

CREATE TABLE `tbcatalogoservico` (
  `idCatalogoServico` int(11) NOT NULL,
  `idEmpresa` int(11) DEFAULT NULL,
  `idServico` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `tbcatalogoservico`
--

INSERT INTO `tbcatalogoservico` (`idCatalogoServico`, `idEmpresa`, `idServico`) VALUES
(1, 1, 1),
(2, 1, 2);

-- --------------------------------------------------------

--
-- Estrutura da tabela `tbcliente`
--

CREATE TABLE `tbcliente` (
  `idCliente` int(11) NOT NULL,
  `nomeCliente` varchar(100) NOT NULL,
  `cpfCliente` varchar(14) NOT NULL,
  `emailCliente` varchar(100) NOT NULL,
  `senhaCliente` varchar(255) NOT NULL,
  `fotoCliente` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `tbcliente`
--

INSERT INTO `tbcliente` (`idCliente`, `nomeCliente`, `cpfCliente`, `emailCliente`, `senhaCliente`, `fotoCliente`) VALUES
(1, 'Lucas Silva Lima', '111.222.333-00', 'luckassilvalima@hotmail.com', '$2y$10$CkaIFUBVB.0RUcAVmUQjFeWT5xpe9AYhV5ZOyvW.cipUTrIp8ccpS', 'img_usuario/JyhZpbtu_400x400.jpg');

-- --------------------------------------------------------

--
-- Estrutura da tabela `tbdecoracao`
--

CREATE TABLE `tbdecoracao` (
  `idDecoracao` int(11) NOT NULL,
  `nomeDecoracao` varchar(200) NOT NULL,
  `valorDecoracao` decimal(15,2) NOT NULL,
  `descDecoracao` varchar(300) NOT NULL,
  `tipoDecoracao` varchar(60) NOT NULL,
  `temaDecoracao` varchar(60) NOT NULL,
  `fotoDecoracao` varchar(200) NOT NULL,
  `idEmpresa` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `tbdecoracao`
--

INSERT INTO `tbdecoracao` (`idDecoracao`, `nomeDecoracao`, `valorDecoracao`, `descDecoracao`, `tipoDecoracao`, `temaDecoracao`, `fotoDecoracao`, `idEmpresa`) VALUES
(1, 'Decoração da Marvel', '700.00', 'O Tema de Decoração da Festa Vingadores, Também conhecido como Decoração de Festa Avengers é indicado para Festa Infantil Meninos.\r\nPara uma Festa dos Vingadores completa, use balões, suportes e descartáveis Vermelho, Azul e Verde.\r\nPrepare seus poderes, coloque sua roupa de super-herói e aproveite!', 'Super Heróis ', 'Vingadores ', 'images-db/628abd47cf86e.jpg', 1),
(2, 'Decoração de festa de debutante', '1500.00', 'Uma festa de debutante tem que ser excepcional, você não concorda comigo? Pois bem, os 15 anos só se comemora uma vez na vida, e com ele acompanham grandes mudanças. Nós pensamos nisso e criamos tudo para que a festa da debutante seja completa e encantadora, tanto para a aniversariante quanto para s', '15 anos ', 'Meninos usam Rosa meninas usam Azul', 'images-db/628abda7092fd.jpg', 1),
(3, 'Decoração da DC', '2000.00', 'Bartman é o melhor super herói das sagas da DC', 'Super Heróis ', 'Batman', 'images-db/628abdf44dedc.png', 1),
(4, 'Decoração de desenho ', '1000.00', 'Tentaram me matar, mas esqueceram que a Barbie é buttefly. ', 'Barbie ', 'Barbie Buttefly', 'images-db/628abe3b03627.jpg', 1),
(5, 'Música', '2500.00', 'Festa de Aniversario de um músico', 'Festa de Aniversario', 'Musica', 'images-db/628ac66453184.jpg', 2),
(6, 'Casamento', '2800.00', 'Decoração de casamento', 'Casamento', 'Casamento', 'images-db/628ac7e98ef26.jpg', 2);

-- --------------------------------------------------------

--
-- Estrutura da tabela `tbempresa`
--

CREATE TABLE `tbempresa` (
  `idEmpresa` int(11) NOT NULL,
  `nomeEmpresa` varchar(80) NOT NULL,
  `cnpjEmpresa` varchar(30) NOT NULL,
  `enderecoEmpresa` varchar(80) NOT NULL,
  `numeroEmpresa` varchar(10) NOT NULL,
  `cidadeEmpresa` varchar(80) NOT NULL,
  `bairroEmpresa` varchar(80) NOT NULL,
  `cepEmpresa` varchar(20) NOT NULL,
  `estadoEmpresa` varchar(80) NOT NULL,
  `fotoEmpresa` varchar(200) NOT NULL,
  `emailEmpresa` varchar(100) NOT NULL,
  `senhaEmpresa` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `tbempresa`
--

INSERT INTO `tbempresa` (`idEmpresa`, `nomeEmpresa`, `cnpjEmpresa`, `enderecoEmpresa`, `numeroEmpresa`, `cidadeEmpresa`, `bairroEmpresa`, `cepEmpresa`, `estadoEmpresa`, `fotoEmpresa`, `emailEmpresa`, `senhaEmpresa`) VALUES
(1, 'etec', '23123', '3232', '323', 'São Paulo', '2312321', '231231', 'São Paulo', 'image-random/notFound(6)', 'etec@gmail.com', '$2y$10$Zbvj/sse55T3ZIMSekGjwOCNdh6FwKSy.aJwDg4S6qmPtUMGBPO/K'),
(2, 'Condado Festas', '11.111.111/111', 'Rua sfysdfsd', '2222', 'Rio de Janeiro', 'Não Sei', '22222-222', 'Rio de Janeiro', 'images-random/not-image(1)', 'empresa1@gmail.com', '$2y$10$V2OYo3IwSyU6UE8TCkFkGOkznvIgsZqi6XYnngQrYmVfrXKMnyhPC'),
(3, 'Aluga Festa', '22.222.222/222', 'Rua abcde', '222', 'São Paulo', 'Santo Andre', '22222-222', 'São Paulo', 'images-random/not-image(6)', 'empresa2@gmail.com', '$2y$10$2ZvXgaugedN5WwTGbkGH6eP13LH5FFCDGtEIwuqClfMcgSEuKB0sO');

-- --------------------------------------------------------

--
-- Estrutura da tabela `tbfonecliente`
--

CREATE TABLE `tbfonecliente` (
  `idFoneCliente` int(11) NOT NULL,
  `numeroFoneCliente` varchar(20) DEFAULT NULL,
  `idCliente` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `tbfonecliente`
--

INSERT INTO `tbfonecliente` (`idFoneCliente`, `numeroFoneCliente`, `idCliente`) VALUES
(1, '+55 (25) 24491-1', 1);

-- --------------------------------------------------------

--
-- Estrutura da tabela `tbfoneempresa`
--

CREATE TABLE `tbfoneempresa` (
  `idFoneEmpresa` int(11) NOT NULL,
  `numeroFoneEmpresa` varchar(20) NOT NULL,
  `idEmpresa` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `tbfoneempresa`
--

INSERT INTO `tbfoneempresa` (`idFoneEmpresa`, `numeroFoneEmpresa`, `idEmpresa`) VALUES
(1, '21321', 1),
(2, '+55 (11) 11111-1111', 2),
(3, '+55 (11) 99988-7745', 3);

-- --------------------------------------------------------

--
-- Estrutura da tabela `tbitembuffet`
--

CREATE TABLE `tbitembuffet` (
  `idItemBuffet` int(11) NOT NULL,
  `nomeItemBuffet` varchar(300) NOT NULL,
  `idBuffet` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `tbitembuffet`
--

INSERT INTO `tbitembuffet` (`idItemBuffet`, `nomeItemBuffet`, `idBuffet`) VALUES
(1, 'Churrasco', 2),
(2, 'Salgados', 2),
(3, 'Comidas Veganas ', 2),
(4, 'Bebidas Artesanais ', 2),
(5, 'Comidas Vegetarianas', 2),
(6, 'Comidas Veganas ', 3),
(7, 'Comidas Vegetarianas ', 3),
(8, 'Churrasco', 3),
(9, 'Comidas Veganas ', 4),
(10, 'Churrasco', 4),
(11, 'Bebidas Artesanais ', 4),
(12, 'Salgados', 5),
(13, 'Comidas Veganas ', 5),
(14, 'Bebidas', 6),
(15, 'Comidas Veganas ', 6),
(16, 'Churrasco', 6),
(17, 'Comidas Veganas ', 7),
(18, 'Bebidas', 7),
(19, 'Churrasco', 7),
(20, 'Salgados', 8),
(21, 'Comidas Classe A', 8),
(22, 'Bebidas Artesanais', 8),
(23, 'Churrasco ', 9),
(24, 'Cervejas e Whisky ', 9),
(25, 'Salgados', 9),
(26, 'Comidas Veganas ', 10),
(27, 'Salgados', 10),
(28, 'Bebidas Artesanais', 10),
(29, 'Comidas Veganas ', 11),
(30, 'Salgados', 11),
(31, 'Bebidas', 11),
(35, 'Cachorro quente', 13),
(36, 'Mini cachorro quente', 13),
(37, 'Cachorro quente doce', 13);

-- --------------------------------------------------------

--
-- Estrutura da tabela `tbitemdecoracao`
--

CREATE TABLE `tbitemdecoracao` (
  `idItemDecoracao` int(11) NOT NULL,
  `nomeItemDecoracao` varchar(300) NOT NULL,
  `idDecoracao` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `tbitemdecoracao`
--

INSERT INTO `tbitemdecoracao` (`idItemDecoracao`, `nomeItemDecoracao`, `idDecoracao`) VALUES
(1, 'Super Heróis ', 1),
(2, 'Balões personalizados ', 1),
(3, 'Tapete de dança ', 2),
(4, 'Balões personalizados', 2),
(5, 'Copos e mesas personalizadas', 2),
(6, 'Mesas e copos personalizados ', 3),
(7, 'Balões personalizados', 3),
(8, 'Batmans de enfeite ', 3),
(9, 'Barbie de brinquedo', 4),
(10, 'Mesas e copos personalizados ', 4),
(11, 'Balões personalizados', 4);

-- --------------------------------------------------------

--
-- Estrutura da tabela `tbitemorcamento`
--

CREATE TABLE `tbitemorcamento` (
  `idItemOrcamento` int(11) NOT NULL,
  `confirmaBuffet` int(3) DEFAULT NULL,
  `confirmaDecoracao` int(3) DEFAULT NULL,
  `confirmaLocal` int(3) DEFAULT NULL,
  `confirmaSeguranca` int(3) DEFAULT NULL,
  `avaliacaoBuffet` varchar(100) NOT NULL,
  `avaliacaoDecoracao` varchar(100) NOT NULL,
  `avaliacaoLocal` varchar(100) NOT NULL,
  `avaliacaoSeguranca` varchar(100) NOT NULL,
  `idOrcamentoEvento` int(11) DEFAULT NULL,
  `idBuffet` int(11) DEFAULT NULL,
  `idDecoracao` int(11) DEFAULT NULL,
  `idSeguranca` int(11) DEFAULT NULL,
  `idLocal` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estrutura da tabela `tblocal`
--

CREATE TABLE `tblocal` (
  `idLocal` int(11) NOT NULL,
  `nomeLocal` varchar(100) NOT NULL,
  `valorLocal` decimal(15,2) NOT NULL,
  `enderecoLocal` varchar(80) NOT NULL,
  `numeroLocal` varchar(30) NOT NULL,
  `cidadeLocal` varchar(30) NOT NULL,
  `bairroLocal` varchar(30) NOT NULL,
  `cepLocal` varchar(9) NOT NULL,
  `estadoLocal` varchar(30) NOT NULL,
  `fotoLocal` varchar(200) NOT NULL,
  `idEmpresa` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `tblocal`
--

INSERT INTO `tblocal` (`idLocal`, `nomeLocal`, `valorLocal`, `enderecoLocal`, `numeroLocal`, `cidadeLocal`, `bairroLocal`, `cepLocal`, `estadoLocal`, `fotoLocal`, `idEmpresa`) VALUES
(1, 'Tatuapé Hall', '6800.00', 'Rua Antônio de Barros', '644', 'São Paulo', 'Tatuapé', '644 03089', 'SP', 'images-db/628abf4245b77.jpeg', 1),
(2, 'Buffet Tâmisa', '7000.00', 'Av. Dr. José Higino', '865', 'São Paulo', 'Mocca', '03189-040', 'SP', 'images-db/628ac004c8831.jpg', 1),
(3, 'Fabrica de Alegria', '4000.00', 'Av Santo Antônio', '2723', 'Rio de Janeiro', 'Osasco', '06083215', 'RJ', 'images-db/628ac0a6f1a14.jpg', 1),
(4, 'Mansão Marion', '5200.00', 'Rua Curuça', '412', 'São Paulo', 'Vila Maria', '02120000', 'SP', 'images-db/628ac12e529c0.jpeg', 1),
(5, 'Armazém da Alegria', '3500.00', 'estrada do Riviera ', '644', 'São Paulo', 'Guarapiranga', '644 03089', 'SP', 'images-db/628ac1f1c63b0.jpeg', 1),
(6, 'Chácara Paulistana', '4000.00', 'Rua Zituo Karasawa', '1963', 'São Paulo', 'Colônia (Zona Leste)', '08260-120', 'SP', 'images-db/628acc6d6d51b.jpg', 3),
(7, 'Chácara Mega Recanto', '4000.00', 'Rua Mexiris', '201', 'São Paulo', 'Vila Carmosina', '08290-380', 'SP', 'images-db/628acdcb7e2fd.webp', 3);

-- --------------------------------------------------------

--
-- Estrutura da tabela `tborcamentoevento`
--

CREATE TABLE `tborcamentoevento` (
  `idOrcamentoEvento` int(11) NOT NULL,
  `valorOrcamentoEvento` decimal(15,2) NOT NULL,
  `dataOrcamentoEvento` DATE NOT NULL,
  `idCliente` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estrutura da tabela `tbseguranca`
--

CREATE TABLE `tbseguranca` (
  `idSeguranca` int(11) NOT NULL,
  `descSeguranca` varchar(200) NOT NULL,
  `valorSeguranca` decimal(15,2) NOT NULL,
  `quantidadeSeguranca` int(11) NOT NULL,
  `fotoSeguranca` varchar(200) NOT NULL,
  `idEmpresa` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `tbseguranca`
--

INSERT INTO `tbseguranca` (`idSeguranca`, `descSeguranca`, `valorSeguranca`, `quantidadeSeguranca`, `fotoSeguranca`, `idEmpresa`) VALUES
(1, 'Service Security ', '8000.00', 8, 'images-db/628ac292b22d9.jpeg', 1),
(2, 'Clean Work Terceirização Ltda.', '3500.00', 4, 'images-db/628ac29d75f3e.jpg', 1),
(3, 'G8 Segurança', '2700.00', 3, 'images-db/628ac2aaee9b5.jpg', 1);

-- --------------------------------------------------------

--
-- Estrutura da tabela `tbservico`
--

CREATE TABLE `tbservico` (
  `idServico` int(11) NOT NULL,
  `nomeServico` varchar(80) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `tbservico`
--

INSERT INTO `tbservico` (`idServico`, `nomeServico`) VALUES
(1, 'Local'),
(2, 'Decoração'),
(3, 'Buffet'),
(4, 'Segurança');

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `tbbuffet`
--
ALTER TABLE `tbbuffet`
  ADD PRIMARY KEY (`idBuffet`),
  ADD KEY `idEmpresa` (`idEmpresa`);

--
-- Índices para tabela `tbcatalogoservico`
--
ALTER TABLE `tbcatalogoservico`
  ADD PRIMARY KEY (`idCatalogoServico`),
  ADD KEY `idEmpresa` (`idEmpresa`),
  ADD KEY `idServico` (`idServico`);

--
-- Índices para tabela `tbcliente`
--
ALTER TABLE `tbcliente`
  ADD PRIMARY KEY (`idCliente`);

--
-- Índices para tabela `tbdecoracao`
--
ALTER TABLE `tbdecoracao`
  ADD PRIMARY KEY (`idDecoracao`),
  ADD KEY `idEmpresa` (`idEmpresa`);

--
-- Índices para tabela `tbempresa`
--
ALTER TABLE `tbempresa`
  ADD PRIMARY KEY (`idEmpresa`);

--
-- Índices para tabela `tbfonecliente`
--
ALTER TABLE `tbfonecliente`
  ADD PRIMARY KEY (`idFoneCliente`),
  ADD KEY `idCliente` (`idCliente`);

--
-- Índices para tabela `tbfoneempresa`
--
ALTER TABLE `tbfoneempresa`
  ADD PRIMARY KEY (`idFoneEmpresa`),
  ADD KEY `idEmpresa` (`idEmpresa`);

--
-- Índices para tabela `tbitembuffet`
--
ALTER TABLE `tbitembuffet`
  ADD PRIMARY KEY (`idItemBuffet`),
  ADD KEY `idBuffet` (`idBuffet`);

--
-- Índices para tabela `tbitemdecoracao`
--
ALTER TABLE `tbitemdecoracao`
  ADD PRIMARY KEY (`idItemDecoracao`),
  ADD KEY `idDecoracao` (`idDecoracao`);

--
-- Índices para tabela `tbitemorcamento`
--
ALTER TABLE `tbitemorcamento`
  ADD PRIMARY KEY (`idItemOrcamento`),
  ADD KEY `idOrcamentoEvento` (`idOrcamentoEvento`),
  ADD KEY `idBuffet` (`idBuffet`),
  ADD KEY `idDecoracao` (`idDecoracao`),
  ADD KEY `idSeguranca` (`idSeguranca`),
  ADD KEY `idLocal` (`idLocal`);

--
-- Índices para tabela `tblocal`
--
ALTER TABLE `tblocal`
  ADD PRIMARY KEY (`idLocal`),
  ADD KEY `idEmpresa` (`idEmpresa`);

--
-- Índices para tabela `tborcamentoevento`
--
ALTER TABLE `tborcamentoevento`
  ADD PRIMARY KEY (`idOrcamentoEvento`),
  ADD KEY `idCliente` (`idCliente`);

--
-- Índices para tabela `tbseguranca`
--
ALTER TABLE `tbseguranca`
  ADD PRIMARY KEY (`idSeguranca`),
  ADD KEY `idEmpresa` (`idEmpresa`);

--
-- Índices para tabela `tbservico`
--
ALTER TABLE `tbservico`
  ADD PRIMARY KEY (`idServico`);

--
-- Índices para tabela `tbadmin`
--
ALTER TABLE `tbadmin`
  ADD PRIMARY KEY (`idAdmin`);

--
-- AUTO_INCREMENT de tabelas despejadas
--

ALTER TABLE `tbadmin`
  MODIFY `idAdmin` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1;


--
-- AUTO_INCREMENT de tabela `tbbuffet`
--
ALTER TABLE `tbbuffet`
  MODIFY `idBuffet` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT de tabela `tbcatalogoservico`
--
ALTER TABLE `tbcatalogoservico`
  MODIFY `idCatalogoServico` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de tabela `tbcliente`
--
ALTER TABLE `tbcliente`
  MODIFY `idCliente` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de tabela `tbdecoracao`
--
ALTER TABLE `tbdecoracao`
  MODIFY `idDecoracao` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de tabela `tbempresa`
--
ALTER TABLE `tbempresa`
  MODIFY `idEmpresa` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de tabela `tbfonecliente`
--
ALTER TABLE `tbfonecliente`
  MODIFY `idFoneCliente` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de tabela `tbfoneempresa`
--
ALTER TABLE `tbfoneempresa`
  MODIFY `idFoneEmpresa` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de tabela `tbitembuffet`
--
ALTER TABLE `tbitembuffet`
  MODIFY `idItemBuffet` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;

--
-- AUTO_INCREMENT de tabela `tbitemdecoracao`
--
ALTER TABLE `tbitemdecoracao`
  MODIFY `idItemDecoracao` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT de tabela `tbitemorcamento`
--
ALTER TABLE `tbitemorcamento`
  MODIFY `idItemOrcamento` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `tblocal`
--
ALTER TABLE `tblocal`
  MODIFY `idLocal` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT de tabela `tborcamentoevento`
--
ALTER TABLE `tborcamentoevento`
  MODIFY `idOrcamentoEvento` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `tbseguranca`
--
ALTER TABLE `tbseguranca`
  MODIFY `idSeguranca` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de tabela `tbservico`
--
ALTER TABLE `tbservico`
  MODIFY `idServico` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Restrições para despejos de tabelas
--

--
-- Limitadores para a tabela `tbbuffet`
--
ALTER TABLE `tbbuffet`
  ADD CONSTRAINT `tbbuffet_ibfk_1` FOREIGN KEY (`idEmpresa`) REFERENCES `tbempresa` (`idEmpresa`);

--
-- Limitadores para a tabela `tbcatalogoservico`
--
ALTER TABLE `tbcatalogoservico`
  ADD CONSTRAINT `tbcatalogoservico_ibfk_1` FOREIGN KEY (`idEmpresa`) REFERENCES `tbempresa` (`idEmpresa`),
  ADD CONSTRAINT `tbcatalogoservico_ibfk_2` FOREIGN KEY (`idServico`) REFERENCES `tbservico` (`idServico`);

--
-- Limitadores para a tabela `tbdecoracao`
--
ALTER TABLE `tbdecoracao`
  ADD CONSTRAINT `tbdecoracao_ibfk_1` FOREIGN KEY (`idEmpresa`) REFERENCES `tbempresa` (`idEmpresa`);

--
-- Limitadores para a tabela `tbfonecliente`
--
ALTER TABLE `tbfonecliente`
  ADD CONSTRAINT `tbfonecliente_ibfk_1` FOREIGN KEY (`idCliente`) REFERENCES `tbcliente` (`idCliente`);

--
-- Limitadores para a tabela `tbfoneempresa`
--
ALTER TABLE `tbfoneempresa`
  ADD CONSTRAINT `tbfoneempresa_ibfk_1` FOREIGN KEY (`idEmpresa`) REFERENCES `tbempresa` (`idEmpresa`);

--
-- Limitadores para a tabela `tbitembuffet`
--
ALTER TABLE `tbitembuffet`
  ADD CONSTRAINT `tbitembuffet_ibfk_1` FOREIGN KEY (`idBuffet`) REFERENCES `tbbuffet` (`idBuffet`);

--
-- Limitadores para a tabela `tbitemdecoracao`
--
ALTER TABLE `tbitemdecoracao`
  ADD CONSTRAINT `tbitemdecoracao_ibfk_1` FOREIGN KEY (`idDecoracao`) REFERENCES `tbdecoracao` (`idDecoracao`);

--
-- Limitadores para a tabela `tbitemorcamento`
--
ALTER TABLE `tbitemorcamento`
  ADD CONSTRAINT `tbitemorcamento_ibfk_1` FOREIGN KEY (`idOrcamentoEvento`) REFERENCES `tborcamentoevento` (`idOrcamentoEvento`),
  ADD CONSTRAINT `tbitemorcamento_ibfk_2` FOREIGN KEY (`idBuffet`) REFERENCES `tbbuffet` (`idBuffet`),
  ADD CONSTRAINT `tbitemorcamento_ibfk_3` FOREIGN KEY (`idDecoracao`) REFERENCES `tbdecoracao` (`idDecoracao`),
  ADD CONSTRAINT `tbitemorcamento_ibfk_4` FOREIGN KEY (`idSeguranca`) REFERENCES `tbseguranca` (`idSeguranca`),
  ADD CONSTRAINT `tbitemorcamento_ibfk_5` FOREIGN KEY (`idLocal`) REFERENCES `tblocal` (`idLocal`);

--
-- Limitadores para a tabela `tblocal`
--
ALTER TABLE `tblocal`
  ADD CONSTRAINT `tblocal_ibfk_1` FOREIGN KEY (`idEmpresa`) REFERENCES `tbempresa` (`idEmpresa`);

--
-- Limitadores para a tabela `tborcamentoevento`
--
ALTER TABLE `tborcamentoevento`
  ADD CONSTRAINT `tborcamentoevento_ibfk_1` FOREIGN KEY (`idCliente`) REFERENCES `tbcliente` (`idCliente`);

--
-- Limitadores para a tabela `tbseguranca`
--
ALTER TABLE `tbseguranca`
  ADD CONSTRAINT `tbseguranca_ibfk_1` FOREIGN KEY (`idEmpresa`) REFERENCES `tbempresa` (`idEmpresa`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
