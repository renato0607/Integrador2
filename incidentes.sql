-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 20-11-2023 a las 21:07:16
-- Versión del servidor: 10.4.28-MariaDB
-- Versión de PHP: 8.0.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `incidentes`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `adjunto`
--

CREATE TABLE `adjunto` (
  `id_archivo` int(10) NOT NULL,
  `direccion` varchar(50) NOT NULL,
  `imagen` mediumtext DEFAULT NULL,
  `id_incidente` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `administrador`
--

CREATE TABLE `administrador` (
  `id_admin` int(10) NOT NULL,
  `nombre_a` varchar(50) NOT NULL,
  `apellido_a` varchar(50) NOT NULL,
  `correo_a` varchar(50) NOT NULL,
  `contraseña_a` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `administrador`
--

INSERT INTO `administrador` (`id_admin`, `nombre_a`, `apellido_a`, `correo_a`, `contraseña_a`) VALUES
(1, 'Jan', 'Carrera', 'soporte1cl@gmail.com', '7110eda4d09e062aa5e4a390b0a572ac0d2c0220'),
(2, 'Carlos', 'Aguirre', 'soperte2@gmail.com', '1234');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuario`
--

CREATE TABLE `usuario` (
  `id_usuario` int(10) NOT NULL,
  `nombre` varchar(50) NOT NULL,
  `apellido` varchar(50) NOT NULL,
  `correo` varchar(50) NOT NULL,
  `contraseña` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `usuario`
--

INSERT INTO `usuario` (`id_usuario`, `nombre`, `apellido`, `correo`, `contraseña`) VALUES
(1, 'Nicolas', 'Guerrero', 'docente12@gmail.com', '7110eda4d09e062aa5e4a390b0a572ac0d2c0220'),
(2, 'Carmen', 'Guzman Aranda', 'direccionfya@gmail.com', '7110eda4d09e062aa5e4a390b0a572ac0d2c0220');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `u_incidentes`
--

CREATE TABLE `u_incidentes` (
  `id_incidente` int(10) NOT NULL,
  `categoria` varchar(30) DEFAULT NULL,
  `prioridad` varchar(30) DEFAULT NULL,
  `estado` varchar(30) DEFAULT NULL,
  `descripcion` varchar(500) DEFAULT NULL,
  `c_usuario` varchar(50) DEFAULT NULL,
  `imagen` varchar(5000) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `u_incidentes`
--

INSERT INTO `u_incidentes` (`id_incidente`, `categoria`, `prioridad`, `estado`, `descripcion`, `c_usuario`, `imagen`) VALUES
(1, 'Hardware', 'Alta', 'Abierto', 'ERROR1', 'direccionfya@gmail.com', ''),
(2, 'Otros', 'Baja', 'Cerrado', 'ERROR2', 'docente12@gmail.com', ''),
(3, 'Software académico', 'Media', 'Cerrado', 'ERROR3', 'direccionfya@gmail.com', ''),
(4, 'Cuentas y acceso', 'Media', 'En proceso', 'ERROR4', 'docente12@gmail.com', '????\\0JFIF\\0\\0\\0\\0\\0\\0\\0??\\0.Exif\\0\\0MM\\0*\\0\\0\\0\\0@\\0\\0\\0\\0\\0\\0;\\0\\0@\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0??\\0C\\0\n	\n		\n$ &%# #\\\"(-90(*6+\\\"#2D26;=@@@&0FKE>J9?@=??\\0C\r=)#)==================================================??\\0;?\\\"\\0??\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0	\n??\\0?\\0\\0\\0}\\0!1AQa\\\"q2???#B??R??$3br?	\n\Z%&\\\'()*456789:CDEFGHIJSTUVWXYZcdefghijstuvwxyz???????????????????????????????????????????????????????????????????????????\\0\\0\\0\\0\\0\\0\\0\\0	\n??\\0?\\0\\0w\\0!1AQaq\\\"2?B????	#3R?br?\n$4?%?\Z&\\\'()*56789:CDEFGHIJSTUVWXYZcdefghijstuvwxyz??????????????????????????????????????????????????????????????????????????\\0\\0\\0?\\0??9???6sF??nq\\\\??T?(?@?E?F\rK??\\\\?h??1F?w<\Z0jM??)??h??6Q???уRl?e?ph???Q????84`Ի)vQq\\\\??\Z?e(?b???F?. ????F?rh??vѶ??`?`??i6P-?h?K????8???F?G?I?Rb?Px4sO???I?Rb?R<Rb??&)\r?1I?C#???Ը??\\0E?I?R??R\ZL\Z?e&?\\0???1I?@G?LT????\r5!b???x4`??I?.#??&)??!?4??Q?.3x?*b?Ѳ???l??Q??X?e*m?l?!?K???K????1Sl?e0??6??(?N?b?m??Q????vѶ??F??(?S??e1X?m&ʟe(l?eO?????(?S???@X?e*}?l?d)1S???@?vQ???F?\\0?e*}?ݴ?6T?i6P2??jm?l?p!?I???I??l??X?I??b?6?M?)6T?)?()1R??????qI?@E?LT???@b??K?LP2Q????8??K?LT?dx??K?LQp\\\"?.)???DW?Fژ?4l?.M?v?쩶R??p??6T?(?H?Q???F?`C???6?]??6T?(???vQ?????踬C???7?NQq??R?f??$1?&eH?d?\\\\?ύ,?|[????????Q:??????dmytyu??\\0?n?D?z6????????sl???o?k/?S??_????<?M?a??6?29??]\nW2?_e*.?m??h?V6Rl??+??g?O???\\\\6Rl??Q????M?>?6Qp ?I???F?.)6T?)6?p!?Fʛm&?.!?L?V6Rl??W?I??l??H\n?(?S???E??e&ʛm&?@A??eM??e\r?)1S???J?+??eO??mM??e&ʟe3e??I???*Gb,Rb??I?\\0?b?????4l???F?w?6S?T?)vQ? ??|??˥???yt?]M?Ӽ?|?b\r?m???_.????]]X??|?9?b??QYR\\\\?????H\\\"?>?7????a???s??\\0?\\\"??mf??C?c???\\\'ڲ???yåB??xi???@:?pHwc??[??ΊTo??z???j\n\r??H???u!??)t????B?椒6?k?a?$?w??(rrI<W?????$?dB????bGs??hM??F\\\'???~?n??Z@?????\nn??୦??kwztۭr?????\\0z?b?ݼ?X?3????l6?s?z?s+FV@?>??iהU??i?M?H?(|S?N?^?~?1??V?B;?İ???S?k?d?$??K??ޝc??in?V??0?C}EoO/??gB+?g??T?Uy?~8գ\\0??|?[>>??K?v??t9?+?b\\\"?6??ˤ???W???>m??\\\"? ??¬?l?????)ytyuh?M1??vQ???t?]?b??6՟.?ˣ?,V?I???t?]?Rl?>]7ˢ?b??M?>?M?s?)?*??M?s??)6U???)\\\\v+l??VvS\nR???S?????b?JM?ce!J\\\\??W?M?X)HR????)\nT?i6T?,C?i1JB??;b?6?M?\\\\d8??I?\\\\R?a??<??S?6?s?]/?S???)?,A???ce(?X?a?eX?F?. ?Fʱ?ڗe>`?_e8%M??S?~?s??>??9$??,?N?.????????F???/??P??M??*?䁜q^*?z???i$???7vK!??t\\0???m??=???&2iC\\\"???p3Ҹ?ִ#??N7N?,q?r???d??jI??\\\' c?Ze?[\\\"?{pƇ?????*0h?)??jđ\\\\,ya??V-mc?7?7?H?W?Y#?@YΪODk\n-?]??6?	?u?<BDG?~??0*x=?:UCnр7c?Q?z?%?z??[$???????O?P?????1f??1???w??3q??)?>\\0??[???V?c0?p0????H??\\0?Fs?V?utC??i?a??iB{ILn:?????zO?<Sm???M?^????¼??50??i?*?	-?-?lRH?2??+ZU?Fu(?d{A?S~Յs?!m??\rD???]?	?/??O???狿????{U???єbCc???9??U^?9????nl??V?t?]_16*??)V|?O.?`?_˦?ugˣˣ?,U?I??yt?:9?Ȫc??ukˤ???|?B?k˪??Pi?ost?c^=I>????mX(??4?*#W???J<n??|d?^*???4???N̫??????)?\n?m?ҕd?0?l??>]4?K?,W)M)VvSJQp?\\\\?4?X?M)E??r??*r??*nm??*?JiJW??)qS????`S?6U???6V<Ɩ ?K??	?N?O?,W?Fʳ??ˣ?,V???]O???ts??<?QO??S?cҎp?\\\\GNՁ???c???c????o??n?9???Q?Q(?I?~?ּz9\n??Ꮍ+w?\Z?ڗ?.óyV?\\\"S??8?NMd%??䁎{f??M7??N\r-\\\"3?v񸚱*?I }???&x?????@?U?Br??Q?Ҳ??6???ZE??\n??wC????,I?r	?*???A???RkJ`F;`q\\\\?d??uу???A??J?s??)?>?5!G6?S?}???Vw5?Q???g?\Z=?w=??$???? d?t#?U?۹B?	?A?0}?+;?(?@??WGR??*?۴R3?	??WDZj???i?\\\"??\\\\?X?y?p*Sf}?J?*GJ??????z`Հ?\\\'?n6???t??M7v??6??P?@?R??x?4???Hr\\0?4???\\09???D򫲑????%@z\n??n?V??2?U??8??&?\\\\??????4?&C,R??\n?vޣ??kw?FVJ?????~??V?l???????>?g??1ס?pة???կ.????+??O.??t?]?b??I?ڬ?f???9?????O,U?.?EG0X?\\\"??:???/5!g?ճ?}??????[???\r>H???qf \\0t?=??y??<?e???X???\\0??\n???mN6Աk~?\Z?2??F???}\rz??;?f?V?	\\\"~?q?Q?????JI$s??]?5????M??8-????E9?>R?A?9v;S0?W??	??O1?b?Ji????\\\'?i???R?R???:9???R?R????j9???R?R???:9???R?R??????R?JiJ?c???qجR?eLR?e+??Ԡ?⍂?)ɠ%rs????e.ʗ˥???R-??*.?.?8r????*.?e?? ??8F*m??)??!?S?b?	N	G8r?!?\r?_?7?eE???????`?\\\"?y?A?????e???????$nB?8?}?r?1*??sQ-Mc???3e?{TLU?8\\\'?/?????KH2?#cnp?F?\\\\5??5???cy?#?U???2d??J??i2???\\09?A?9;?N:W?????Z6??9$?  ?0q?x?Bm???YMk%???>?ae?[8?F	??5љ*??,?Q??q?I5?pN1?=i??N?\\\'?j\\\',G??GPrВ<??rj\\\\\n?B9?z?\\\'\\0??\rI?Nz?4??(?b??\\\"??7 ?:dS?ޮ???=ƥ?1??)?G&??m??k^m??-?I??p?r=??7???Sd!P~=( ׾{?v`???r<?s????C\Z,?kt?Ri??ʹ??qId??~z??VF-??ǽ?.4;	UJ??B?-Y1?O\n?_	il???	??Ze+e3??R??M??ю???8r?|?O.????G8r???O.?l??G8r?|?je??i??lP!v d?\\0???????~?x.????P\r?3+??@Ga?q?4???c?????n???G?V䴇\\\'??S7bDڥ???)?H\\\\.]?Rib?uS?<?5???u$??-?4?m?H\\\'\n?X???Y???s:???͟?Tleu??[al???hJm??@WzɽXv ???L?g?&????\\\\??W\\\"?/ma???$?0?i????qr????R?:TE\r>`?+????;)\nQ?.R?JiJ?R???`?+҂?????9J?)?Z)L\\\"?p?+J?PsQ???9J?R??\nR?????\nrh	O#?F+??ǣ??Д?)اb??d3e.?v;?~?^?f?6T?Q??lɍ?J??/??{!6P???$?0X?R?Ǡ?x?`??T???\\\'ysg?B<?O??V???֪y??Wg?x?X???\\\'??-?U8?lg??I?*?\n=GZ?,??T???Eu=???)q?p??օ???\\0{???rX?>??m?	*pp?\\\\?f?????ŗ\\0s?H?z?K??Ϝ?\\0xg&??BYA?\Z??,x?}:?]nt????>G^?u??+?]B?\\0sR?���?GZ|v?????+^kr܈n??n??j\\\'??[y\\\"??Z??<P??J?L???c??z`??\\0'),
(7, 'Redes y conectividad', 'Media', 'En proceso', 'Prueba 2', 'docente12@gmail.com', '????\\0JFIF\\0\\0\\0\\0\\0\\0???ICC_PROFILE\\0\\0\\0?\\0\\0\\0\\00\\0\\0mntrRGB XYZ ?\\0\\0\\0\\0\\0\\0\\0\\0acsp\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0??\\0\\0\\0\\0\\0?-\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0	desc\\0\\0\\0?\\0\\0\\0$rXYZ\\0\\0\\0\\0\\0gXYZ\\0\\0(\\0\\0\\0bXYZ\\0\\0<\\0\\0\\0wtpt\\0\\0P\\0\\0\\0rTRC\\0\\0d\\0\\0\\0(gTRC\\0\\0d\\0\\0\\0(bTRC\\0\\0d\\0\\0\\0(cprt\\0\\0?\\0\\0\\0<mluc\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0enUS\\0\\0\\0\\0\\0\\0\\0s\\0R\\0G\\0BXYZ \\0\\0\\0\\0\\0\\0o?\\0\\08?\\0\\0?XYZ \\0\\0\\0\\0\\0\\0b?\\0\\0??\\0\\0?XYZ \\0\\0\\0\\0\\0\\0$?\\0\\0?\\0\\0??XYZ \\0\\0\\0\\0\\0\\0??\\0\\0\\0\\0\\0?-para\\0\\0\\0\\0\\0\\0\\0\\0ff\\0\\0??\\0\\0\rY\\0\\0?\\0\\0\n[\\0\\0\\0\\0\\0\\0\\0\\0mluc\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0enUS\\0\\0\\0 \\0\\0\\0\\0G\\0o\\0o\\0g\\0l\\0e\\0 \\0I\\0n\\0c\\0.\\0 \\02\\00\\01\\06??\\0C\\0	\n\n			\n\n		\r\r\n??\\0C	??\\0?c\\\"\\0??\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0	??\\0Z\\0\n\\0\\0!\\\"1A	#2QaBXq?$38v???%47Rbuw????9Cr??&56SstD???EGc??????\\0\Z\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0??\\0J\\0\n\\0!1AQaq?\\\"??2B?#R??????br?TU?????3CS??$?cs???\\0\\0\\0?\\0?N??)JQ??)JQ??)JQ??)JQ??)JQ??)JQ??)JQ??)JQ??)JQ??)JQ??)JQ??)JQ??)JQ??)JQ??)JQ}?v??+?o?2:o?Y????>Y??Y-2~???t??O????T???yG???????ֽ?qv?????W\\0?=n???_??F????G???L?w?dh?L?~ϯ??????????Z?/(?\\0Wu?\\0??\\0?נ????w?????$??????T??_?K??????????\\0:^Q????\\0~9?\\0u?AiO??w????I?[????/>?Η????\\0ߎ?i?t???]???s??^?ҟ??????\\\'?????0?\\0qS?^}?/(?\\0Wu?\\0??\\0????yG???????ֽ??????\\0O?\\\'?o?a???????\\0:^Q????\\0~9?\\0u??????w_?????zJۿ??\\0??O??????O?y??t???]???s??O??????????Z???????ğ5?ч????????yG???????֟?K??????????-)?n?\\03??>k???E???????w_??????Η????\\0ߎ?k?ZS?>??g??\\0|??\\0F?*~?ϯ??????????Z?/(?\\0Wu?\\0??\\0?נ???}????	?$??????T??_?K??????????\\0:^Q????\\0~9?\\0u?AiO??w????I?[????/>?Η????\\0ߎ?i?t???]???s??^?ҟ??????\\\'?????0?\\0qS?^}?/(?\\0Wu?\\0??\\0????yG???????ֽ??????\\0O?\\\'?o?a???????\\0:^Q????\\0~9?\\0u??????w_?????zJۿ??\\0??O??????O?y??t???]???s??O??????????Z???????ğ5?ч????????yG???????֟?K??????????-)?n?\\03??>k???E???????w_??????Η????\\0ߎ?k?ZS?>??g??\\0|??\\0F?*~?ϯ??????????Z?/(?\\0Wu?\\0??\\0?נ???}????	?$??????T??_?K??????????\\0:^Q????\\0~9?\\0u?AiO??w????I?[????/>?Η????\\0ߎ?i?t???]???s??^?ҟ??????\\\'?????0?\\0qS?^}?/(?\\0Wu?\\0??\\0????yG???????ֽ??????\\0O?\\\'?o?a???????\\0:^Q????\\0~9?\\0u??????w_?????zJۿ??\\0??O??????O?y??t???]???s??O??????????Z???????ğ5?ч????????yG???????֟?K??????????-)?n?\\03??>k???E@`~?,?d????L??PڜU??	\\0??\\0Ň??5?J???kҞ??=?y/??s???P4?\\0????<N/?s?LG??_,??R????%)J\\\"R??%)J\\\"R??%)J\\\"R??%)J\\\"R??%)J\\\"R??%)J\\\"R??%)J\\\"R??%)J\\\"R??%)J\\\"R??%)J\\\"R??%)J\\\"R??%)J\\\"R??%)J\\\"R??%)J\\\"R??%)J\\\"R??%)J\\\"R??%)J\\\"R??%)J\\\"R??%)J\\\"R??%)J\\\"R??%)J\\\"R??%)J\\\"R??%)J\\\"R??%)J\\\"R??%)J\\\"R??%)J\\\"R??%)J\\\"R??%)J\\\"R??%)J\\\"R??%)J\\\"R??%)J\\\"R??%)J\\\"R??%)J\\\"R??%)J\\\"R??%)J\\\"R??%)J\\\"R??%)J\\\"R??%)J\\\"R??%)J\\\"R??%)J\\\"R??%)J\\\"R??%)J\\\"R??%)J\\\"R??%)J\\\"R??%)J\\\"R??%)J\\\"R??%)J\\\"R??%)J\\\"R??%)J\\\"R??%)J\\\"R??%)J\\\"R??%)J\\\"R??%)J\\\"R??%)J\\\"R??%)J\\\"R??%)J\\\"R??%)J\\\"R??%)J\\\"R??%)J\\\"R??%)J\\\"R??%)J\\\"R??%)J\\\"R??%)J\\\"R??%)J\\\"R??%)J\\\"R??%)J\\\"R??%)J\\\"R??%)J\\\"R??%)J\\\"R??%)J\\\"R??%)J\\\"R??%)J\\\"R??%)J\\\"R??%)J\\\"R??%)J\\\"R??%)J\\\"R??%)J\\\"R??%)J\\\"R??%)J\\\"R??%)J\\\"R??%)J\\\"R??%)J\\\"R??%)J\\\"R??%)J\\\"R??%)J\\\"R??%)J\\\"R??%)J\\\"R??%)J\\\"R??%)J\\\"R??%)J\\\"R??%)J\\\"R??%)J\\\"R??%)J\\\"R??%)J\\\"R??%)J\\\"R??%)J\\\"R??%)J\\\"R??%)J\\\"R??%)J\\\"R??%)J\\\"R??%)J\\\"R??%)J\\\"R??%)J\\\"R??%)J\\\"R??%)Pו??C?j?5??0??-?&=X<*2?(?8??(!+??A ???ڻ@??MR&4ܛ??z_#??W???G??Tph\\\'!:?\\0\\\\?\nT^I??t7/??ܕ?̤???????\\0udj?x}????????.RT??y\n_??????\n???U?T\\0??ly-?eb	?a??\\\\9??5?	v?x??#\r?_E?????\\\\ |??V?\\\'?7?w???\\0?W?3???TQ?\\\"??o&?e&????B?S(?`H??6dk|7??y-G?Ҟu?~??TO?\\05\Z??ּ??ak?1???p7ҋ?EML?[em[}%)??!*????????&??u??8?詮?aKj5?V?q\\\\n?G??@~>}???	C?X??J?:]????c???kƻ???3?T??]??1??XMJ`?b`c?????&?H?????Ce?쐲<v???m???Y-?????C?|VF?m+??8狺?N???]$[cGj\Z&?????9?B\\0O???R\\0??7??l???C?[G\\\\??nW??-3 ]??Ғ?#g??R??}???V??t?5??O?ꣷ|??4?Gjod??QuA????&]?y\\0	$6\\\"H?1/R?vSf?1??_??,[m\\\\?%`rB9 ԟ??\\\"?y?Dl?1heZ8??W??????È??L?\\\"??x?H%????jkv?4???M??? @71?خ??o|???1?F1?{??????????7???Qf?ݒ1[?7????򬩥˃	3V????.?R??{9W??????)?m{~??ud?n?\\\"?*?????1???j???R??瞪AO?W??\\\"?u7????#i??/??*????6?Åς?`l??p~A?	$???????	???txp? ??????@??JQ SZF?ڊ?W<?ܫ???\\\'?!bO??A????uON{/????.[?ќ???z??(?-?M??b?lviR.m?JU?K?]?~\\0W^?&???K??X??^&b\\\\?u\ZN?(|?????Z????t??H??	3k???SlYQ??fl)\rH?!??ӭ,-!C??*? ???-B?F??j-q?.v?D?~N?ȶ?k?N?C????z?\\0@?-?z??$?㏿3?w7?1????۳	f???????dr??\\\'???%C??	wm?چ?77#\\0??LE?E?1?ٿ4~T??^?0Y??釸S\\\'b???$???dL?J?oۻ.?g??w?u?yD?l6/w?D????%]?\\\\ @\\0\\\'?5?????Y5?db?f)!??{C?S 6ISN??@6?	??\\0? ???(?v?s1c3?c?\\\\??l??ٻ!??0???ca{Z???0;Z?K@?7?6d??^r?s??m??1&_d*-????K?IQBx???u?nM?ު?Z[???Ȳ,?z-?K;U)???8?ChH??x?^D%?????tՃc?5???/JbD[?gA?ي??%Д????(P?A\\\"?????)2??ƛ??o??3??~@???~Vh?5??K*?lwv?:Z?q9???3??Z??^??z?:?\\0z????l'),
(28, 'Hardware', NULL, NULL, '1', 'docente12@gmail.com', NULL),
(29, 'Otros', NULL, NULL, 'otros2, nicolas', NULL, NULL),
(30, 'Otros', NULL, NULL, 'otros4', 'docente12@gmail.com', NULL),
(31, 'Hardware', NULL, NULL, 'PRUEBA 50', 'docente12@gmail.com', NULL);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `adjunto`
--
ALTER TABLE `adjunto`
  ADD PRIMARY KEY (`id_archivo`);

--
-- Indices de la tabla `administrador`
--
ALTER TABLE `administrador`
  ADD PRIMARY KEY (`id_admin`);

--
-- Indices de la tabla `usuario`
--
ALTER TABLE `usuario`
  ADD PRIMARY KEY (`id_usuario`);

--
-- Indices de la tabla `u_incidentes`
--
ALTER TABLE `u_incidentes`
  ADD PRIMARY KEY (`id_incidente`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `adjunto`
--
ALTER TABLE `adjunto`
  MODIFY `id_archivo` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `administrador`
--
ALTER TABLE `administrador`
  MODIFY `id_admin` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `usuario`
--
ALTER TABLE `usuario`
  MODIFY `id_usuario` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `u_incidentes`
--
ALTER TABLE `u_incidentes`
  MODIFY `id_incidente` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
