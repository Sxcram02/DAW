-- MySQL Script generated by Javi Castillo
-- dom 14 nov 2021 22:20:15
-- Model: fuertesNeomedievales    Version: 1.0

-- -----------------------------------------------------
-- Schema fuertesNeomedievales
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema fuertesNeomedievales
-- -----------------------------------------------------
CREATE DATABASE IF NOT EXISTS `fuertesNeomedievales` DEFAULT CHARACTER SET utf8 COLLATE utf8_spanish_ci;
USE `fuertesNeomedievales` ;

-- -----------------------------------------------------
-- Table `fuertesNeomedievales`.`vigilante`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `fuertesNeomedievales`.`vigilante` (
  `dni` CHAR(9) NOT NULL,
  `nombreVig` VARCHAR(45) NOT NULL,
  `ap1` VARCHAR(45) NOT NULL,
  `ap2` VARCHAR(45),
  `fechaNacimiento` DATE NOT NULL,
  `tlf` VARCHAR(13) NOT NULL,
  `email` VARCHAR(45) NOT NULL,
  `sueldo` INT UNSIGNED NOT NULL,
  `IRPF` INT UNSIGNED NOT NULL,
  PRIMARY KEY (`dni`),
  UNIQUE INDEX `tlf_UNIQUE` (`tlf` ASC) VISIBLE,
  UNIQUE INDEX `email_UNIQUE` (`email` ASC) VISIBLE);


-- -----------------------------------------------------
-- Table `fuertesNeomedievales`.`fortin`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `fuertesNeomedievales`.`fortin` (
  `idFortin` INT NOT NULL AUTO_INCREMENT,
  `nombreFortin` VARCHAR(45) NOT NULL,
  `capacidad` INT UNSIGNED NOT NULL,
  `altura` DECIMAL UNSIGNED NOT NULL,
  `diametro` DECIMAL UNSIGNED NOT NULL,
  `foso` ENUM("Sí", "No") NOT NULL,
  `vigilante_dni` CHAR(9) NOT NULL,
  PRIMARY KEY (`idFortin`, `vigilante_dni`),
  INDEX `fk_fortin_vigilante_idx` (`vigilante_dni` ASC) VISIBLE,
  CONSTRAINT `fk_fortin_vigilante`
    FOREIGN KEY (`vigilante_dni`)
    REFERENCES `fuertesNeomedievales`.`vigilante` (`dni`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
	;
	
	
			
INSERT INTO `vigilante` (`dni`,`nombreVig`,`ap1`,`ap2`,`fechaNacimiento`,`tlf`,`email`,`sueldo`,`IRPF`)
VALUES
  ("16334819F","Oleg","Petersen","Prince","1924/01/10","+34632181637","petersen-oleg@yahoo.couk",1409,20),
  ("44218982U","Alice","Snow","Bean","1906/10/22","+34087489961","salice@google.com",1311,6),
  ("85955716X","Gage","Massey","Barron","1938/05/11","+34228319583","masseygage6724@aol.org",1946,23),
  ("68517961C","Kaitlin","Grant","Nichols","1903/12/01","+34707437822","grant.kaitlin@google.couk",1101,5),
  ("14961803G","Brynn","Kirby","Best","1949/02/07","+34947274297","bkirby@hotmail.com",1498,11),
  ("88433699F","Francis","Mason","Conner","1916/12/03","+34692949092","francis.mason@google.net",1711,16),
  ("41547752N","Luke","Mcintyre","Bernard","1933/10/28","+34202853506","m-luke@outlook.net",1285,10),
  ("16721479H","Genevieve","Martin","Blankenship","1933/10/13","+34374324743","genevieve_martin3219@hotmail.com",1046,16),
  ("62285023U","Asher","Higgins","Sargent","1930/04/15","+34333393342","h-asher4145@icloud.net",1297,10),
  ("51172675M","Chaney","Hurst","Montoya","1914/05/15","+34554006422","chaneyhurst@yahoo.couk",2054,7);
INSERT INTO `vigilante` (`dni`,`nombreVig`,`ap1`,`ap2`,`fechaNacimiento`,`tlf`,`email`,`sueldo`,`IRPF`)
VALUES
  ("14104558L","Emerald","Prince","Clarke","1951/11/21","+34591416617","e.prince@yahoo.com",1963,20),
  ("74570615U","Jennifer","Robbins","Ayers","1952/12/03","+34756567567","jennifer_robbins2707@protonmail.ca",1678,10),
  ("34473942R","Calvin","Salinas","Berg","1903/07/09","+34477427615","c-salinas@aol.couk",837,26),
  ("40527116M","Ethan","Ewing","Wilcox","1944/06/15","+34648675453","ewing.ethan3499@icloud.ca",1247,12),
  ("89318876I","Randall","Whitney","Ward","1953/07/05","+34874885733","whitney-randall7418@outlook.com",1891,22),
  ("44323718N","Lenore","Henderson","Kirby","1929/04/03","+34659986173","henderson.lenore5493@icloud.couk",1481,2),
  ("05674663U","Halla","Burnett","Hart","1921/04/17","+34469427562","b-halla7970@outlook.com",1249,6),
  ("08786279B","Shay","Jensen","Cooley","1916/12/04","+34094418684","s.jensen1896@hotmail.net",1282,21),
  ("07357421S","Brett","Murray","Santiago","1916/03/18","+34086953796","murray_brett@aol.couk",1217,5),
  ("48211417O","Cailin","Sutton","Huffman","1914/05/03","+34512746303","csutton@hotmail.couk",1502,24);
INSERT INTO `vigilante` (`dni`,`nombreVig`,`ap1`,`ap2`,`fechaNacimiento`,`tlf`,`email`,`sueldo`,`IRPF`)
VALUES
  ("67073154I","Cecilia","Spencer","Gilbert","1946/06/27","+34872838636","cecilia_spencer9647@icloud.edu",899,29),
  ("37755669F","Ingrid","Weiss","Weaver","1952/04/13","+34042668386","i_weiss@yahoo.ca",1417,2),
  ("30274670Y","Susan","Wade","Black","1918/07/29","+34709784465","susan.wade@outlook.org",1862,14),
  ("81813217C","Isaiah","Harrison","Day","1929/02/22","+34467601813","h.isaiah8571@outlook.edu",1394,18),
  ("33145592P","Jocelyn","Potts","Burns","1918/01/05","+34324828162","jpotts@hotmail.org",1073,12),
  ("84233728O","Geoffrey","Oneil","Knowles","1950/01/17","+34485658544","g_oneil@icloud.edu",1012,0),
  ("12628767B","Constance","Wright","Oliver","1937/05/04","+34511544672","c-wright2271@hotmail.org",834,1),
  ("35761181G","Lyle","Sexton","Warner","1937/02/04","+34923615310","sexton_lyle9910@google.net",1899,10),
  ("77311268H","Hunter","Potts","Maynard","1956/03/21","+34367329556","phunter@aol.net",2053,26),
  ("37253403A","Alfonso","Hatfield","Maxwell","1929/06/17","+34142123201","alfonsohatfield@aol.org",1459,4);
INSERT INTO `vigilante` (`dni`,`nombreVig`,`ap1`,`ap2`,`fechaNacimiento`,`tlf`,`email`,`sueldo`,`IRPF`)
VALUES
  ("76754835B","Brett","Browning","Knox","1926/03/29","+34051679208","browning.brett2124@protonmail.couk",1976,8),
  ("08232151P","Giacomo","Merritt","Joseph","1907/04/08","+34947780887","g_merritt781@protonmail.couk",1978,6),
  ("74273934P","Kathleen","George","Patrick","1902/09/18","+34918861295","g-kathleen2607@yahoo.net",2028,4),
  ("56345428R","Benjamin","Mejia","Stafford","1922/08/06","+34602174478","benjaminmejia3169@protonmail.com",1299,17),
  ("63600142G","Fiona","Porter","Richards","1947/08/28","+34556145523","f.porter@yahoo.ca",2023,8),
  ("88159345K","Declan","Tillman","Ware","1932/12/14","+34950522022","tillman-declan1367@icloud.org",1547,12),
  ("53643107E","Katell","Duke","Johns","1916/10/29","+34235253459","duke-katell@yahoo.com",1059,11),
  ("70155150E","Haviva","Vargas","Bishop","1913/10/10","+34928267689","h.vargas@google.ca",1257,23),
  ("37844952T","Hamilton","Chandler","Terrell","1922/09/10","+34191566196","chamilton@protonmail.net",1095,19),
  ("57834593K","Alma","Jordan","Cantrell","1960/04/14","+34845295517","ajordan4653@protonmail.ca",2165,5);
INSERT INTO `vigilante` (`dni`,`nombreVig`,`ap1`,`ap2`,`fechaNacimiento`,`tlf`,`email`,`sueldo`,`IRPF`)
VALUES
  ("14763734B","Carl","Gamble","Justice","1954/02/27","+34048726663","cgamble4229@google.edu",1204,30),
  ("79739815P","Jackson","Howard","Mcpherson","1931/07/10","+34742913728","howardjackson9217@icloud.org",947,2),
  ("62130555O","Dean","Dean","Gibbs","1951/02/08","+34417514020","d_dean4862@hotmail.couk",1858,28),
  ("51138863X","Tasha","Chang","Michael","1946/01/26","+34657747674","t_chang@yahoo.edu",1485,23),
  ("14635251E","Evelyn","Oliver","Carson","1911/04/02","+34571198370","e.oliver@icloud.org",1196,25),
  ("24457762A","Fuller","Estes","Ramos","1918/02/01","+34402687874","f.estes@google.ca",1089,13),
  ("68330638R","Brenna","Hart","Solomon","1909/03/31","+34831141734","h.brenna7275@protonmail.org",1054,30),
  ("78192858G","Lenore","Ward","Conway","1953/08/13","+34645932610","wardlenore2867@google.net",2132,30),
  ("17315645V","Asher","Leblanc","Stevens","1931/09/18","+34689057213","a-leblanc7717@icloud.net",1250,6),
  ("28712729V","Amity","Mitchell","Knapp","1920/06/08","+34921081645","a_mitchell7211@hotmail.org",1352,16);
INSERT INTO `vigilante` (`dni`,`nombreVig`,`ap1`,`ap2`,`fechaNacimiento`,`tlf`,`email`,`sueldo`,`IRPF`)
VALUES
  ("72056996W","Seth","Davidson","Morrison","1928/10/01","+34780331024","sdavidson@hotmail.edu",1287,17),
  ("74083332D","Jaquelyn","Jarvis","Terry","1947/03/01","+34936733144","j.jarvis6634@protonmail.edu",1478,21),
  ("39256641G","Harriet","Willis","Velasquez","1935/12/11","+34430558156","willis-harriet@icloud.edu",1861,14),
  ("98888329H","Gemma","Schmidt","Bernard","1907/01/08","+34855686981","g.schmidt5127@icloud.net",873,19),
  ("48468188R","Medge","Terry","Baker","1906/11/21","+34694858344","terry.medge@icloud.net",1499,22),
  ("27884377R","Ainsley","Blankenship","Burns","1903/01/22","+34768403447","a-blankenship6045@aol.net",1823,7),
  ("59771304W","Bianca","Mcintosh","O'connor","1954/04/23","+34875453052","mcintoshbianca@outlook.edu",2004,25),
  ("22801479P","Zelenia","Holman","Silva","1939/07/22","+34686068587","z-holman7007@yahoo.org",1868,3),
  ("10436699P","Hammett","Whitney","Marquez","1921/05/30","+34696400118","h_whitney6641@yahoo.edu",1680,16),
  ("81971326W","Brian","Sheppard","King","1936/12/16","+34021250586","sheppard.brian9094@outlook.net",1309,30);
INSERT INTO `vigilante` (`dni`,`nombreVig`,`ap1`,`ap2`,`fechaNacimiento`,`tlf`,`email`,`sueldo`,`IRPF`)
VALUES
  ("78588971R","Vernon","Marks","Hinton","1930/01/24","+34832811014","vernonmarks@google.org",1927,29),
  ("08481900Q","Maite","Schmidt","Everett","1911/12/10","+34473772364","m-schmidt@hotmail.org",987,16),
  ("95636487F","Berk","Anthony","Hodge","1918/12/14","+34334895438","banthony@yahoo.ca",1410,24),
  ("47758182A","Portia","Ford","Pennington","1929/05/26","+34453597452","p_ford2903@protonmail.net",1725,21),
  ("54719472E","Portia","Wiggins","Bentley","1925/04/08","+34160937430","p-wiggins2598@protonmail.com",2098,28),
  ("85733027H","Miriam","Lyons","William","1932/12/10","+34774455682","lyons_miriam2257@outlook.ca",1639,23),
  ("64766189K","Reese","Horton","Sears","1901/11/13","+34158833683","horton.reese@icloud.ca",1581,21),
  ("78947828C","Karly","Pena","Sexton","1950/05/26","+34170327341","p.karly@google.edu",1219,21),
  ("71426307G","Walker","Cooke","Hale","1905/02/02","+34782165147","w.cooke5269@google.couk",906,21),
  ("35748472W","Quon","Aguilar","Bolton","1938/03/30","+34851231072","a_quon855@aol.com",1332,11);
INSERT INTO `vigilante` (`dni`,`nombreVig`,`ap1`,`ap2`,`fechaNacimiento`,`tlf`,`email`,`sueldo`,`IRPF`)
VALUES
  ("50328186U","Xenos","Lynch","Cardenas","1943/11/19","+34360180814","l-xenos@yahoo.edu",2002,19),
  ("77264242E","Sybill","Ingram","Manning","1942/12/31","+34702133977","sybillingram@icloud.couk",1285,10),
  ("29729863V","Shelley","Watson","Baird","1951/02/11","+34570521692","shelley_watson1582@google.ca",1394,5),
  ("56862213H","Orlando","Buckley","Wyatt","1942/08/20","+34354227238","buckleyorlando1502@icloud.net",849,26),
  ("06184434U","Clio","Fox","Workman","1911/05/23","+34337340398","c_fox929@hotmail.com",847,26),
  ("74254538U","Emerald","Harris","Moss","1942/09/05","+34614761777","harris-emerald2661@hotmail.ca",792,28),
  ("14141771W","Fitzgerald","Horn","Alvarado","1937/02/03","+34463267937","fitzgerald-horn@outlook.org",795,7),
  ("87825261F","Nolan","Skinner","Crosby","1906/02/05","+34132333884","s-nolan2093@yahoo.net",1818,8),
  ("44577674P","Tiger","Hayden","Suarez","1920/09/16","+34343790122","t-hayden@hotmail.org",2033,12),
  ("02840736Y","Lucas","Townsend","Good","1935/08/11","+34546191322","tlucas@yahoo.edu",1914,4);
INSERT INTO `vigilante` (`dni`,`nombreVig`,`ap1`,`ap2`,`fechaNacimiento`,`tlf`,`email`,`sueldo`,`IRPF`)
VALUES
  ("49353824O","Kylie","Mccray","Dyer","1913/02/16","+34351196465","mccray_kylie6669@hotmail.org",1433,29),
  ("55839184X","Asher","Roberson","Mccray","1915/03/13","+34879499454","rasher3426@hotmail.ca",1231,1),
  ("40773575L","Kaye","Nelson","Salas","1907/02/28","+34831102557","k-nelson@outlook.org",2101,8),
  ("32628669J","Josiah","Frederick","Jacobson","1913/05/23","+34626546814","f_josiah@google.ca",1007,8),
  ("82852720J","Joel","Gordon","Bowers","1948/01/24","+34418672247","gordon_joel@outlook.net",1318,26),
  ("35384486Z","Keelie","Joyner","Sampson","1930/01/01","+34540637123","keelie.joyner8385@outlook.ca",972,3),
  ("91114748G","Nicole","Mills","Atkins","1946/03/15","+34634528916","mills_nicole@hotmail.com",888,17),
  ("57201239H","Fatima","Hayden","Frank","1951/11/03","+34152832010","hayden.fatima@protonmail.org",971,9),
  ("25324642E","Scarlet","Andrews","Mack","1908/03/27","+34117953689","andrews-scarlet5575@hotmail.edu",1539,12),
  ("62277182P","Beau","Wells","Leon","1908/10/18","+34789683380","wells_beau835@outlook.net",1486,12);
INSERT INTO `vigilante` (`dni`,`nombreVig`,`ap1`,`ap2`,`fechaNacimiento`,`tlf`,`email`,`sueldo`,`IRPF`)
VALUES
  ("77143222U","Kirsten","Ortega","Parks","1946/06/16","+34546702127","kortega5593@google.couk",1189,10),
  ("51467422E","Abraham","Richmond","Delaney","1926/12/01","+34835784982","richmond_abraham9577@protonmail.com",866,1),
  ("16658375F","Deborah","Houston","Baxter","1919/05/08","+34004166637","houston-deborah9393@yahoo.net",1725,11),
  ("84886439M","Finn","Holt","Conner","1947/04/30","+34849379303","holt_finn@icloud.couk",1131,8),
  ("32624742Q","Quinlan","Barnett","Rhodes","1930/09/20","+34761571037","barnett_quinlan@hotmail.ca",2111,10),
  ("11463280X","Kaye","Ashley","Farrell","1906/09/19","+34643641594","k.ashley2796@google.com",1978,27),
  ("56176532S","Burke","Mcdonald","Kaufman","1926/11/23","+34597372366","b_mcdonald6730@google.net",1187,16),
  ("62011169O","Tasha","Ellis","Dennis","1951/02/10","+34095545499","e-tasha@aol.org",2006,19),
  ("54628606M","Thomas","Key","Shelton","1922/06/16","+34051621642","thomas_key887@aol.couk",2158,29),
  ("53521813Q","Thane","Hatfield","Goodman","1902/08/26","+34644717543","t-hatfield@hotmail.edu",1008,12);

INSERT INTO fortin (nombreFortin, capacidad, altura, diametro, foso, vigilante_dni) VALUES
	("Fortín de Benzú", 60, 20, 45, "Sí", "54628606M"),
	("Fortín de Aranguren", 40, 30.4, 22.4, "No", "57201239H"),
	("Fortín de Anyera", 14, 18.1, 29.4, "Sí", "87825261F"),
	("Fortín de Isabel II", 100, 24.9, 69.4, "Sí", "08481900Q"),
	("Fortín de Francisco de Asís", 14, 19.1, 21.4, "Sí", "78588971R"),
	("Fortín de Piniés", 14, 19.2, 22.6, "Sí", "53521813Q"),
	("Fortín de Mendizábal", 40, 20.2, 45.4, "Sí", "50328186U");