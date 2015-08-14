package com.tcs.utility;

import java.util.HashMap;
import java.util.Map;

public class HtmlEntityConversionUtility {

	/*
	 * List of all HTML Entities
	 */
	 private static final Map<String, Integer> html_entities_list = new HashMap<String,Integer>(){{
													         put( new String("&Aacute;"), new Integer(193));
													         put( new String("&aacute;"), new Integer(225) );
													         put( new String("&Acirc;"), new Integer(194) );
													         put( new String("&acirc;"), new Integer(226) );
													         put( new String("&acute;"), new Integer(180) );
													         put( new String("&AElig;"), new Integer(198) );
													         put( new String("&aelig;"), new Integer(230) );
													         put( new String("&Agrave;"), new Integer(192) );
													         put( new String("&agrave;"), new Integer(224) );
													         put( new String("&alefsym;"), new Integer(8501) );
													         put( new String("&Alpha;"), new Integer(913) );
													         put( new String("&alpha;"), new Integer(945) );
													         put( new String("&amp;"), new Integer(38) );
													         put( new String("&and;"), new Integer(8743) );
													         put( new String("&ang;"), new Integer(8736) );
													         put( new String("&Aring;"), new Integer(197) );
													         put( new String("&aring;"), new Integer(229) );
													         put( new String("&asymp;"), new Integer(8776) );
													         put( new String("&Atilde;"), new Integer(195) );
													         put( new String("&atilde;"), new Integer(227) );
													         put( new String("&Auml;"), new Integer(196) );
													         put( new String("&auml;"), new Integer(228) );
													         put( new String("&bdquo;"), new Integer(8222) );
													         put( new String("&Beta;"), new Integer(914) );
													         put( new String("&beta;"), new Integer(946) );
													         put( new String("&brvbar;"), new Integer(166) );
													         put( new String("&bull;"), new Integer(8226) );
													         put( new String("&cap;"), new Integer(8745) );
													         put( new String("&Ccedil;"), new Integer(199) );
													         put( new String("&ccedil;"), new Integer(231) );
													         put( new String("&cedil;"), new Integer(184) );
													         put( new String("&cent;"), new Integer(162) );
													         put( new String("&Chi;"), new Integer(935) );
													         put( new String("&chi;"), new Integer(967) );
													         put( new String("&circ;"), new Integer(710) );
													         put( new String("&clubs;"), new Integer(9827) );
													         put( new String("&cong;"), new Integer(8773) );
													         put( new String("&copy;"), new Integer(169) );
													         put( new String("&crarr;"), new Integer(8629) );
													         put( new String("&cup;"), new Integer(8746) );
													         put( new String("&curren;"), new Integer(164) );
													         put( new String("&dagger;"), new Integer(8224) );
													         put( new String("&Dagger;"), new Integer(8225) );
													         put( new String("&darr;"), new Integer(8595) );
													         put( new String("&dArr;"), new Integer(8659) );
													         put( new String("&deg;"), new Integer(176) );
													         put( new String("&Delta;"), new Integer(916) );
													         put( new String("&delta;"), new Integer(948) );
													         put( new String("&diams;"), new Integer(9830) );
													         put( new String("&divide;"), new Integer(247) );
													         put( new String("&Eacute;"), new Integer(201) );
													         put( new String("&eacute;"), new Integer(233) );
													         put( new String("&Ecirc;"), new Integer(202) );
													         put( new String("&ecirc;"), new Integer(234) );
													         put( new String("&Egrave;"), new Integer(200) );
													         put( new String("&egrave;"), new Integer(232) );
													         put( new String("&empty;"), new Integer(8709) );
													         put( new String("&emsp;"), new Integer(8195) );
													         put( new String("&ensp;"), new Integer(8194) );
													         put( new String("&Epsilon;"), new Integer(917) );
													         put( new String("&epsilon;"), new Integer(949) );
													         put( new String("&equiv;"), new Integer(8801) );
													         put( new String("&Eta;"), new Integer(919) );
													         put( new String("&eta;"), new Integer(951) );
													         put( new String("&ETH;"), new Integer(208) );
													         put( new String("&eth;"), new Integer(240) );
													         put( new String("&Euml;"), new Integer(203) );
													         put( new String("&euml;"), new Integer(235) );
													         put( new String("&euro;"), new Integer(8364) );
													         put( new String("&exist;"), new Integer(8707) );
													         put( new String("&fnof;"), new Integer(402) );
													         put( new String("&forall;"), new Integer(8704) );
													         put( new String("&frac12;"), new Integer(189) );
													         put( new String("&frac14;"), new Integer(188) );
													         put( new String("&frac34;"), new Integer(190) );
													         put( new String("&frasl;"), new Integer(8260) );
													         put( new String("&Gamma;"), new Integer(915) );
													         put( new String("&gamma;"), new Integer(947) );
													         put( new String("&ge;"), new Integer(8805) );
													         put( new String("&harr;"), new Integer(8596) );
													         put( new String("&hArr;"), new Integer(8660) );
													         put( new String("&hearts;"), new Integer(9829) );
													         put( new String("&hellip;"), new Integer(8230) );
													         put( new String("&Iacute;"), new Integer(205) );
													         put( new String("&iacute;"), new Integer(237) );
													         put( new String("&Icirc;"), new Integer(206) );
													         put( new String("&icirc;"), new Integer(238) );
													         put( new String("&iexcl;"), new Integer(161) );
													         put( new String("&Igrave;"), new Integer(204) );
													         put( new String("&igrave;"), new Integer(236) );
													         put( new String("&image;"), new Integer(8465) );
													         put( new String("&infin;"), new Integer(8734) );
													         put( new String("&int;"), new Integer(8747) );
													         put( new String("&Iota;"), new Integer(921) );
													         put( new String("&iota;"), new Integer(953) );
													         put( new String("&iquest;"), new Integer(191) );
													         put( new String("&isin;"), new Integer(8712) );
													         put( new String("&Iuml;"), new Integer(207) );
													         put( new String("&iuml;"), new Integer(239) );
													         put( new String("&Kappa;"), new Integer(922) );
													         put( new String("&kappa;"), new Integer(954) );
													         put( new String("&Lambda;"), new Integer(923) );
													         put( new String("&lambda;"), new Integer(955) );
													         put( new String("&lang;"), new Integer(9001) );
													         put( new String("&laquo;"), new Integer(171) );
													         put( new String("&larr;"), new Integer(8592) );
													         put( new String("&lArr;"), new Integer(8656) );
													         put( new String("&lceil;"), new Integer(8968) );
													         put( new String("&ldquo;"), new Integer(8220) );
													         put( new String("&le;"), new Integer(8804) );
													         put( new String("&lfloor;"), new Integer(8970) );
													         put( new String("&lowast;"), new Integer(8727) );
													         put( new String("&loz;"), new Integer(9674) );
													         put( new String("&lrm;"), new Integer(8206) );
													         put( new String("&lsaquo;"), new Integer(8249) );
													         put( new String("&lsquo;"), new Integer(8216) );
													         put( new String("&macr;"), new Integer(175) );
													         put( new String("&mdash;"), new Integer(8212) );
													         put( new String("&micro;"), new Integer(181) );
													         put( new String("&middot;"), new Integer(183) );
													         put( new String("&minus;"), new Integer(8722) );
													         put( new String("&Mu;"), new Integer(924) );
													         put( new String("&mu;"), new Integer(956) );
													         put( new String("&nabla;"), new Integer(8711) );
													         put( new String("&nbsp;"), new Integer(160) );
													         put( new String("&ndash;"), new Integer(8211) );
													         put( new String("&ne;"), new Integer(8800) );
													         put( new String("&ni;"), new Integer(8715) );
													         put( new String("&not;"), new Integer(172) );
													         put( new String("&notin;"), new Integer(8713) );
													         put( new String("&nsub;"), new Integer(8836) );
													         put( new String("&Ntilde;"), new Integer(209) );
													         put( new String("&ntilde;"), new Integer(241) );
													         put( new String("&Nu;"), new Integer(925) );
													         put( new String("&nu;"), new Integer(957) );
													         put( new String("&Oacute;"), new Integer(211) );
													         put( new String("&oacute;"), new Integer(243) );
													         put( new String("&Ocirc;"), new Integer(212) );
													         put( new String("&ocirc;"), new Integer(244) );
													         put( new String("&OElig;"), new Integer(338) );
													         put( new String("&oelig;"), new Integer(339) );
													         put( new String("&Ograve;"), new Integer(210) );
													         put( new String("&ograve;"), new Integer(242) );
													         put( new String("&oline;"), new Integer(8254) );
													         put( new String("&Omega;"), new Integer(937) );
													         put( new String("&omega;"), new Integer(969) );
													         put( new String("&Omicron;"), new Integer(927) );
													         put( new String("&omicron;"), new Integer(959) );
													         put( new String("&oplus;"), new Integer(8853) );
													         put( new String("&or;"), new Integer(8744) );
													         put( new String("&ordf;"), new Integer(170) );
													         put( new String("&ordm;"), new Integer(186) );
													         put( new String("&Oslash;"), new Integer(216) );
													         put( new String("&oslash;"), new Integer(248) );
													         put( new String("&Otilde;"), new Integer(213) );
													         put( new String("&otilde;"), new Integer(245) );
													         put( new String("&otimes;"), new Integer(8855) );
													         put( new String("&Ouml;"), new Integer(214) );
													         put( new String("&ouml;"), new Integer(246) );
													         put( new String("&para;"), new Integer(182) );
													         put( new String("&part;"), new Integer(8706) );
													         put( new String("&permil;"), new Integer(8240) );
													         put( new String("&perp;"), new Integer(8869) );
													         put( new String("&Phi;"), new Integer(934) );
													         put( new String("&phi;"), new Integer(966) );
													         put( new String("&Pi;"), new Integer(928) );
													         put( new String("&pi;"), new Integer(960) );
													         put( new String("&piv;"), new Integer(982) );
													         put( new String("&plusmn;"), new Integer(177) );
													         put( new String("&pound;"), new Integer(163) );
													         put( new String("&prime;"), new Integer(8242) );
													         put( new String("&Prime;"), new Integer(8243) );
													         put( new String("&prod;"), new Integer(8719) );
													         put( new String("&prop;"), new Integer(8733) );
													         put( new String("&Psi;"), new Integer(936) );
													         put( new String("&psi;"), new Integer(968) );
													         put( new String("&quot;"), new Integer(34) );
													         put( new String("&radic;"), new Integer(8730) );
													         put( new String("&rang;"), new Integer(9002) );
													         put( new String("&raquo;"), new Integer(187) );
													         put( new String("&rarr;"), new Integer(8594) );
													         put( new String("&rArr;"), new Integer(8658) );
													         put( new String("&rceil;"), new Integer(8969) );
													         put( new String("&rdquo;"), new Integer(8221) );
													         put( new String("&real;"), new Integer(8476) );
													         put( new String("&reg;"), new Integer(174) );
													         put( new String("&rfloor;"), new Integer(8971) );
													         put( new String("&Rho;"), new Integer(929) );
													         put( new String("&rho;"), new Integer(961) );
													         put( new String("&rlm;"), new Integer(8207) );
													         put( new String("&rsaquo;"), new Integer(8250) );
													         put( new String("&rsquo;"), new Integer(8217) );
													         put( new String("&sbquo;"), new Integer(8218) );
													         put( new String("&Scaron;"), new Integer(352) );
													         put( new String("&scaron;"), new Integer(353) );
													         put( new String("&sdot;"), new Integer(8901) );
													         put( new String("&sect;"), new Integer(167) );
													         put( new String("&shy;"), new Integer(173) );
													         put( new String("&Sigma;"), new Integer(931) );
													         put( new String("&sigma;"), new Integer(963) );
													         put( new String("&sigmaf;"), new Integer(962) );
													         put( new String("&sim;"), new Integer(8764) );
													         put( new String("&spades;"), new Integer(9824) );
													         put( new String("&sub;"), new Integer(8834) );
													         put( new String("&sube;"), new Integer(8838) );
													         put( new String("&sum;"), new Integer(8721) );
													         put( new String("&sup1;"), new Integer(185) );
													         put( new String("&sup2;"), new Integer(178) );
													         put( new String("&sup3;"), new Integer(179) );
													         put( new String("&sup;"), new Integer(8835) );
													         put( new String("&supe;"), new Integer(8839) );
													         put( new String("&szlig;"), new Integer(223) );
													         put( new String("&Tau;"), new Integer(932) );
													         put( new String("&tau;"), new Integer(964) );
													         put( new String("&there4;"), new Integer(8756) );
													         put( new String("&Theta;"), new Integer(920) );
													         put( new String("&theta;"), new Integer(952) );
													         put( new String("&thetasym;"), new Integer(977) );
													         put( new String("&thinsp;"), new Integer(8201) );
													         put( new String("&THORN;"), new Integer(222) );
													         put( new String("&thorn;"), new Integer(254) );
													         put( new String("&tilde;"), new Integer(732) );
													         put( new String("&times;"), new Integer(215) );
													         put( new String("&trade;"), new Integer(8482) );
													         put( new String("&Uacute;"), new Integer(218) );
													         put( new String("&uacute;"), new Integer(250) );
													         put( new String("&uarr;"), new Integer(8593) );
													         put( new String("&uArr;"), new Integer(8657) );
													         put( new String("&Ucirc;"), new Integer(219) );
													         put( new String("&ucirc;"), new Integer(251) );
													         put( new String("&Ugrave;"), new Integer(217) );
													         put( new String("&ugrave;"), new Integer(249) );
													         put( new String("&uml;"), new Integer(168) );
													         put( new String("&upsih;"), new Integer(978) );
													         put( new String("&Upsilon;"), new Integer(933) );
													         put( new String("&upsilon;"), new Integer(965) );
													         put( new String("&Uuml;"), new Integer(220) );
													         put( new String("&uuml;"), new Integer(252) );
													         put( new String("&weierp;"), new Integer(8472) );
													         put( new String("&Xi;"), new Integer(926) );
													         put( new String("&xi;"), new Integer(958) );
													         put( new String("&Yacute;"), new Integer(221) );
													         put( new String("&yacute;"), new Integer(253) );
													         put( new String("&yen;"), new Integer(165) );
													         put( new String("&yuml;"), new Integer(255) );
													         put( new String("&Yuml;"), new Integer(376) );
													         put( new String("&Zeta;"), new Integer(918) );
													         put( new String("&zeta;"), new Integer(950) );
													         put( new String("&zwj;"), new Integer(8205) );
													         put( new String("&zwnj;"), new Integer(8204) );
	 														}};
	 
	
}
