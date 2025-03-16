; ModuleID = 'llvm-link'
source_filename = "llvm-link"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.bf_key_st = type { [18 x i64], [1024 x i64] }

@stderr = external local_unnamed_addr global ptr, align 8
@.str = private unnamed_addr constant [45 x i8] c"Usage: blowfish {e|d} <intput> <output> key\0A\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.4 = private unnamed_addr constant [2 x i8] c"w\00", align 1
@str = private unnamed_addr constant [15 x i8] c"Bad key value.\00", align 1
@str.5 = private unnamed_addr constant [36 x i8] c"key must be in hexadecimal notation\00", align 1
@.str.5 = private unnamed_addr constant [42 x i8] c"BlowFish part of SSLeay 0.7.0 30-Jan-1997\00", align 1
@BF_version = dso_local local_unnamed_addr global ptr @.str.5, align 8
@.str.1 = private unnamed_addr constant [14 x i8] c"blowfish(idx)\00", align 1
@bf_init = internal unnamed_addr constant %struct.bf_key_st { [18 x i64] [i64 608135816, i64 2242054355, i64 320440878, i64 57701188, i64 2752067618, i64 698298832, i64 137296536, i64 3964562569, i64 1160258022, i64 953160567, i64 3193202383, i64 887688300, i64 3232508343, i64 3380367581, i64 1065670069, i64 3041331479, i64 2450970073, i64 2306472731], [1024 x i64] [i64 3509652390, i64 2564797868, i64 805139163, i64 3491422135, i64 3101798381, i64 1780907670, i64 3128725573, i64 4046225305, i64 614570311, i64 3012652279, i64 134345442, i64 2240740374, i64 1667834072, i64 1901547113, i64 2757295779, i64 4103290238, i64 227898511, i64 1921955416, i64 1904987480, i64 2182433518, i64 2069144605, i64 3260701109, i64 2620446009, i64 720527379, i64 3318853667, i64 677414384, i64 3393288472, i64 3101374703, i64 2390351024, i64 1614419982, i64 1822297739, i64 2954791486, i64 3608508353, i64 3174124327, i64 2024746970, i64 1432378464, i64 3864339955, i64 2857741204, i64 1464375394, i64 1676153920, i64 1439316330, i64 715854006, i64 3033291828, i64 289532110, i64 2706671279, i64 2087905683, i64 3018724369, i64 1668267050, i64 732546397, i64 1947742710, i64 3462151702, i64 2609353502, i64 2950085171, i64 1814351708, i64 2050118529, i64 680887927, i64 999245976, i64 1800124847, i64 3300911131, i64 1713906067, i64 1641548236, i64 4213287313, i64 1216130144, i64 1575780402, i64 4018429277, i64 3917837745, i64 3693486850, i64 3949271944, i64 596196993, i64 3549867205, i64 258830323, i64 2213823033, i64 772490370, i64 2760122372, i64 1774776394, i64 2652871518, i64 566650946, i64 4142492826, i64 1728879713, i64 2882767088, i64 1783734482, i64 3629395816, i64 2517608232, i64 2874225571, i64 1861159788, i64 326777828, i64 3124490320, i64 2130389656, i64 2716951837, i64 967770486, i64 1724537150, i64 2185432712, i64 2364442137, i64 1164943284, i64 2105845187, i64 998989502, i64 3765401048, i64 2244026483, i64 1075463327, i64 1455516326, i64 1322494562, i64 910128902, i64 469688178, i64 1117454909, i64 936433444, i64 3490320968, i64 3675253459, i64 1240580251, i64 122909385, i64 2157517691, i64 634681816, i64 4142456567, i64 3825094682, i64 3061402683, i64 2540495037, i64 79693498, i64 3249098678, i64 1084186820, i64 1583128258, i64 426386531, i64 1761308591, i64 1047286709, i64 322548459, i64 995290223, i64 1845252383, i64 2603652396, i64 3431023940, i64 2942221577, i64 3202600964, i64 3727903485, i64 1712269319, i64 422464435, i64 3234572375, i64 1170764815, i64 3523960633, i64 3117677531, i64 1434042557, i64 442511882, i64 3600875718, i64 1076654713, i64 1738483198, i64 4213154764, i64 2393238008, i64 3677496056, i64 1014306527, i64 4251020053, i64 793779912, i64 2902807211, i64 842905082, i64 4246964064, i64 1395751752, i64 1040244610, i64 2656851899, i64 3396308128, i64 445077038, i64 3742853595, i64 3577915638, i64 679411651, i64 2892444358, i64 2354009459, i64 1767581616, i64 3150600392, i64 3791627101, i64 3102740896, i64 284835224, i64 4246832056, i64 1258075500, i64 768725851, i64 2589189241, i64 3069724005, i64 3532540348, i64 1274779536, i64 3789419226, i64 2764799539, i64 1660621633, i64 3471099624, i64 4011903706, i64 913787905, i64 3497959166, i64 737222580, i64 2514213453, i64 2928710040, i64 3937242737, i64 1804850592, i64 3499020752, i64 2949064160, i64 2386320175, i64 2390070455, i64 2415321851, i64 4061277028, i64 2290661394, i64 2416832540, i64 1336762016, i64 1754252060, i64 3520065937, i64 3014181293, i64 791618072, i64 3188594551, i64 3933548030, i64 2332172193, i64 3852520463, i64 3043980520, i64 413987798, i64 3465142937, i64 3030929376, i64 4245938359, i64 2093235073, i64 3534596313, i64 375366246, i64 2157278981, i64 2479649556, i64 555357303, i64 3870105701, i64 2008414854, i64 3344188149, i64 4221384143, i64 3956125452, i64 2067696032, i64 3594591187, i64 2921233993, i64 2428461, i64 544322398, i64 577241275, i64 1471733935, i64 610547355, i64 4027169054, i64 1432588573, i64 1507829418, i64 2025931657, i64 3646575487, i64 545086370, i64 48609733, i64 2200306550, i64 1653985193, i64 298326376, i64 1316178497, i64 3007786442, i64 2064951626, i64 458293330, i64 2589141269, i64 3591329599, i64 3164325604, i64 727753846, i64 2179363840, i64 146436021, i64 1461446943, i64 4069977195, i64 705550613, i64 3059967265, i64 3887724982, i64 4281599278, i64 3313849956, i64 1404054877, i64 2845806497, i64 146425753, i64 1854211946, i64 1266315497, i64 3048417604, i64 3681880366, i64 3289982499, i64 2909710000, i64 1235738493, i64 2632868024, i64 2414719590, i64 3970600049, i64 1771706367, i64 1449415276, i64 3266420449, i64 422970021, i64 1963543593, i64 2690192192, i64 3826793022, i64 1062508698, i64 1531092325, i64 1804592342, i64 2583117782, i64 2714934279, i64 4024971509, i64 1294809318, i64 4028980673, i64 1289560198, i64 2221992742, i64 1669523910, i64 35572830, i64 157838143, i64 1052438473, i64 1016535060, i64 1802137761, i64 1753167236, i64 1386275462, i64 3080475397, i64 2857371447, i64 1040679964, i64 2145300060, i64 2390574316, i64 1461121720, i64 2956646967, i64 4031777805, i64 4028374788, i64 33600511, i64 2920084762, i64 1018524850, i64 629373528, i64 3691585981, i64 3515945977, i64 2091462646, i64 2486323059, i64 586499841, i64 988145025, i64 935516892, i64 3367335476, i64 2599673255, i64 2839830854, i64 265290510, i64 3972581182, i64 2759138881, i64 3795373465, i64 1005194799, i64 847297441, i64 406762289, i64 1314163512, i64 1332590856, i64 1866599683, i64 4127851711, i64 750260880, i64 613907577, i64 1450815602, i64 3165620655, i64 3734664991, i64 3650291728, i64 3012275730, i64 3704569646, i64 1427272223, i64 778793252, i64 1343938022, i64 2676280711, i64 2052605720, i64 1946737175, i64 3164576444, i64 3914038668, i64 3967478842, i64 3682934266, i64 1661551462, i64 3294938066, i64 4011595847, i64 840292616, i64 3712170807, i64 616741398, i64 312560963, i64 711312465, i64 1351876610, i64 322626781, i64 1910503582, i64 271666773, i64 2175563734, i64 1594956187, i64 70604529, i64 3617834859, i64 1007753275, i64 1495573769, i64 4069517037, i64 2549218298, i64 2663038764, i64 504708206, i64 2263041392, i64 3941167025, i64 2249088522, i64 1514023603, i64 1998579484, i64 1312622330, i64 694541497, i64 2582060303, i64 2151582166, i64 1382467621, i64 776784248, i64 2618340202, i64 3323268794, i64 2497899128, i64 2784771155, i64 503983604, i64 4076293799, i64 907881277, i64 423175695, i64 432175456, i64 1378068232, i64 4145222326, i64 3954048622, i64 3938656102, i64 3820766613, i64 2793130115, i64 2977904593, i64 26017576, i64 3274890735, i64 3194772133, i64 1700274565, i64 1756076034, i64 4006520079, i64 3677328699, i64 720338349, i64 1533947780, i64 354530856, i64 688349552, i64 3973924725, i64 1637815568, i64 332179504, i64 3949051286, i64 53804574, i64 2852348879, i64 3044236432, i64 1282449977, i64 3583942155, i64 3416972820, i64 4006381244, i64 1617046695, i64 2628476075, i64 3002303598, i64 1686838959, i64 431878346, i64 2686675385, i64 1700445008, i64 1080580658, i64 1009431731, i64 832498133, i64 3223435511, i64 2605976345, i64 2271191193, i64 2516031870, i64 1648197032, i64 4164389018, i64 2548247927, i64 300782431, i64 375919233, i64 238389289, i64 3353747414, i64 2531188641, i64 2019080857, i64 1475708069, i64 455242339, i64 2609103871, i64 448939670, i64 3451063019, i64 1395535956, i64 2413381860, i64 1841049896, i64 1491858159, i64 885456874, i64 4264095073, i64 4001119347, i64 1565136089, i64 3898914787, i64 1108368660, i64 540939232, i64 1173283510, i64 2745871338, i64 3681308437, i64 4207628240, i64 3343053890, i64 4016749493, i64 1699691293, i64 1103962373, i64 3625875870, i64 2256883143, i64 3830138730, i64 1031889488, i64 3479347698, i64 1535977030, i64 4236805024, i64 3251091107, i64 2132092099, i64 1774941330, i64 1199868427, i64 1452454533, i64 157007616, i64 2904115357, i64 342012276, i64 595725824, i64 1480756522, i64 206960106, i64 497939518, i64 591360097, i64 863170706, i64 2375253569, i64 3596610801, i64 1814182875, i64 2094937945, i64 3421402208, i64 1082520231, i64 3463918190, i64 2785509508, i64 435703966, i64 3908032597, i64 1641649973, i64 2842273706, i64 3305899714, i64 1510255612, i64 2148256476, i64 2655287854, i64 3276092548, i64 4258621189, i64 236887753, i64 3681803219, i64 274041037, i64 1734335097, i64 3815195456, i64 3317970021, i64 1899903192, i64 1026095262, i64 4050517792, i64 356393447, i64 2410691914, i64 3873677099, i64 3682840055, i64 3913112168, i64 2491498743, i64 4132185628, i64 2489919796, i64 1091903735, i64 1979897079, i64 3170134830, i64 3567386728, i64 3557303409, i64 857797738, i64 1136121015, i64 1342202287, i64 507115054, i64 2535736646, i64 337727348, i64 3213592640, i64 1301675037, i64 2528481711, i64 1895095763, i64 1721773893, i64 3216771564, i64 62756741, i64 2142006736, i64 835421444, i64 2531993523, i64 1442658625, i64 3659876326, i64 2882144922, i64 676362277, i64 1392781812, i64 170690266, i64 3921047035, i64 1759253602, i64 3611846912, i64 1745797284, i64 664899054, i64 1329594018, i64 3901205900, i64 3045908486, i64 2062866102, i64 2865634940, i64 3543621612, i64 3464012697, i64 1080764994, i64 553557557, i64 3656615353, i64 3996768171, i64 991055499, i64 499776247, i64 1265440854, i64 648242737, i64 3940784050, i64 980351604, i64 3713745714, i64 1749149687, i64 3396870395, i64 4211799374, i64 3640570775, i64 1161844396, i64 3125318951, i64 1431517754, i64 545492359, i64 4268468663, i64 3499529547, i64 1437099964, i64 2702547544, i64 3433638243, i64 2581715763, i64 2787789398, i64 1060185593, i64 1593081372, i64 2418618748, i64 4260947970, i64 69676912, i64 2159744348, i64 86519011, i64 2512459080, i64 3838209314, i64 1220612927, i64 3339683548, i64 133810670, i64 1090789135, i64 1078426020, i64 1569222167, i64 845107691, i64 3583754449, i64 4072456591, i64 1091646820, i64 628848692, i64 1613405280, i64 3757631651, i64 526609435, i64 236106946, i64 48312990, i64 2942717905, i64 3402727701, i64 1797494240, i64 859738849, i64 992217954, i64 4005476642, i64 2243076622, i64 3870952857, i64 3732016268, i64 765654824, i64 3490871365, i64 2511836413, i64 1685915746, i64 3888969200, i64 1414112111, i64 2273134842, i64 3281911079, i64 4080962846, i64 172450625, i64 2569994100, i64 980381355, i64 4109958455, i64 2819808352, i64 2716589560, i64 2568741196, i64 3681446669, i64 3329971472, i64 1835478071, i64 660984891, i64 3704678404, i64 4045999559, i64 3422617507, i64 3040415634, i64 1762651403, i64 1719377915, i64 3470491036, i64 2693910283, i64 3642056355, i64 3138596744, i64 1364962596, i64 2073328063, i64 1983633131, i64 926494387, i64 3423689081, i64 2150032023, i64 4096667949, i64 1749200295, i64 3328846651, i64 309677260, i64 2016342300, i64 1779581495, i64 3079819751, i64 111262694, i64 1274766160, i64 443224088, i64 298511866, i64 1025883608, i64 3806446537, i64 1145181785, i64 168956806, i64 3641502830, i64 3584813610, i64 1689216846, i64 3666258015, i64 3200248200, i64 1692713982, i64 2646376535, i64 4042768518, i64 1618508792, i64 1610833997, i64 3523052358, i64 4130873264, i64 2001055236, i64 3610705100, i64 2202168115, i64 4028541809, i64 2961195399, i64 1006657119, i64 2006996926, i64 3186142756, i64 1430667929, i64 3210227297, i64 1314452623, i64 4074634658, i64 4101304120, i64 2273951170, i64 1399257539, i64 3367210612, i64 3027628629, i64 1190975929, i64 2062231137, i64 2333990788, i64 2221543033, i64 2438960610, i64 1181637006, i64 548689776, i64 2362791313, i64 3372408396, i64 3104550113, i64 3145860560, i64 296247880, i64 1970579870, i64 3078560182, i64 3769228297, i64 1714227617, i64 3291629107, i64 3898220290, i64 166772364, i64 1251581989, i64 493813264, i64 448347421, i64 195405023, i64 2709975567, i64 677966185, i64 3703036547, i64 1463355134, i64 2715995803, i64 1338867538, i64 1343315457, i64 2802222074, i64 2684532164, i64 233230375, i64 2599980071, i64 2000651841, i64 3277868038, i64 1638401717, i64 4028070440, i64 3237316320, i64 6314154, i64 819756386, i64 300326615, i64 590932579, i64 1405279636, i64 3267499572, i64 3150704214, i64 2428286686, i64 3959192993, i64 3461946742, i64 1862657033, i64 1266418056, i64 963775037, i64 2089974820, i64 2263052895, i64 1917689273, i64 448879540, i64 3550394620, i64 3981727096, i64 150775221, i64 3627908307, i64 1303187396, i64 508620638, i64 2975983352, i64 2726630617, i64 1817252668, i64 1876281319, i64 1457606340, i64 908771278, i64 3720792119, i64 3617206836, i64 2455994898, i64 1729034894, i64 1080033504, i64 976866871, i64 3556439503, i64 2881648439, i64 1522871579, i64 1555064734, i64 1336096578, i64 3548522304, i64 2579274686, i64 3574697629, i64 3205460757, i64 3593280638, i64 3338716283, i64 3079412587, i64 564236357, i64 2993598910, i64 1781952180, i64 1464380207, i64 3163844217, i64 3332601554, i64 1699332808, i64 1393555694, i64 1183702653, i64 3581086237, i64 1288719814, i64 691649499, i64 2847557200, i64 2895455976, i64 3193889540, i64 2717570544, i64 1781354906, i64 1676643554, i64 2592534050, i64 3230253752, i64 1126444790, i64 2770207658, i64 2633158820, i64 2210423226, i64 2615765581, i64 2414155088, i64 3127139286, i64 673620729, i64 2805611233, i64 1269405062, i64 4015350505, i64 3341807571, i64 4149409754, i64 1057255273, i64 2012875353, i64 2162469141, i64 2276492801, i64 2601117357, i64 993977747, i64 3918593370, i64 2654263191, i64 753973209, i64 36408145, i64 2530585658, i64 25011837, i64 3520020182, i64 2088578344, i64 530523599, i64 2918365339, i64 1524020338, i64 1518925132, i64 3760827505, i64 3759777254, i64 1202760957, i64 3985898139, i64 3906192525, i64 674977740, i64 4174734889, i64 2031300136, i64 2019492241, i64 3983892565, i64 4153806404, i64 3822280332, i64 352677332, i64 2297720250, i64 60907813, i64 90501309, i64 3286998549, i64 1016092578, i64 2535922412, i64 2839152426, i64 457141659, i64 509813237, i64 4120667899, i64 652014361, i64 1966332200, i64 2975202805, i64 55981186, i64 2327461051, i64 676427537, i64 3255491064, i64 2882294119, i64 3433927263, i64 1307055953, i64 942726286, i64 933058658, i64 2468411793, i64 3933900994, i64 4215176142, i64 1361170020, i64 2001714738, i64 2830558078, i64 3274259782, i64 1222529897, i64 1679025792, i64 2729314320, i64 3714953764, i64 1770335741, i64 151462246, i64 3013232138, i64 1682292957, i64 1483529935, i64 471910574, i64 1539241949, i64 458788160, i64 3436315007, i64 1807016891, i64 3718408830, i64 978976581, i64 1043663428, i64 3165965781, i64 1927990952, i64 4200891579, i64 2372276910, i64 3208408903, i64 3533431907, i64 1412390302, i64 2931980059, i64 4132332400, i64 1947078029, i64 3881505623, i64 4168226417, i64 2941484381, i64 1077988104, i64 1320477388, i64 886195818, i64 18198404, i64 3786409000, i64 2509781533, i64 112762804, i64 3463356488, i64 1866414978, i64 891333506, i64 18488651, i64 661792760, i64 1628790961, i64 3885187036, i64 3141171499, i64 876946877, i64 2693282273, i64 1372485963, i64 791857591, i64 2686433993, i64 3759982718, i64 3167212022, i64 3472953795, i64 2716379847, i64 445679433, i64 3561995674, i64 3504004811, i64 3574258232, i64 54117162, i64 3331405415, i64 2381918588, i64 3769707343, i64 4154350007, i64 1140177722, i64 4074052095, i64 668550556, i64 3214352940, i64 367459370, i64 261225585, i64 2610173221, i64 4209349473, i64 3468074219, i64 3265815641, i64 314222801, i64 3066103646, i64 3808782860, i64 282218597, i64 3406013506, i64 3773591054, i64 379116347, i64 1285071038, i64 846784868, i64 2669647154, i64 3771962079, i64 3550491691, i64 2305946142, i64 453669953, i64 1268987020, i64 3317592352, i64 3279303384, i64 3744833421, i64 2610507566, i64 3859509063, i64 266596637, i64 3847019092, i64 517658769, i64 3462560207, i64 3443424879, i64 370717030, i64 4247526661, i64 2224018117, i64 4143653529, i64 4112773975, i64 2788324899, i64 2477274417, i64 1456262402, i64 2901442914, i64 1517677493, i64 1846949527, i64 2295493580, i64 3734397586, i64 2176403920, i64 1280348187, i64 1908823572, i64 3871786941, i64 846861322, i64 1172426758, i64 3287448474, i64 3383383037, i64 1655181056, i64 3139813346, i64 901632758, i64 1897031941, i64 2986607138, i64 3066810236, i64 3447102507, i64 1393639104, i64 373351379, i64 950779232, i64 625454576, i64 3124240540, i64 4148612726, i64 2007998917, i64 544563296, i64 2244738638, i64 2330496472, i64 2058025392, i64 1291430526, i64 424198748, i64 50039436, i64 29584100, i64 3605783033, i64 2429876329, i64 2791104160, i64 1057563949, i64 3255363231, i64 3075367218, i64 3463963227, i64 1469046755, i64 985887462] }, align 8

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @main(i32 noundef %0, ptr nocapture noundef readonly %1) local_unnamed_addr #0 {
  %3 = alloca %struct.bf_key_st, align 8
  %4 = alloca [32 x i8], align 16
  %5 = alloca [40 x i8], align 16
  %6 = alloca [40 x i8], align 16
  %7 = alloca [32 x i8], align 16
  %8 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 8336, ptr nonnull %3) #11
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %4) #11
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %5) #11
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %6) #11
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %7) #11
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %7, i8 0, i64 32, i1 false)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %8) #11
  store i32 0, ptr %8, align 4, !tbaa !7
  %9 = icmp slt i32 %0, 3
  br i1 %9, label %10, label %13

10:                                               ; preds = %2
  %11 = load ptr, ptr @stderr, align 8, !tbaa !11
  %12 = tail call i64 @fwrite(ptr nonnull @.str, i64 44, i64 1, ptr %11) #12
  tail call void @exit(i32 noundef 1) #13
  unreachable

13:                                               ; preds = %2
  %14 = getelementptr inbounds ptr, ptr %1, i64 1
  %15 = load ptr, ptr %14, align 8, !tbaa !11
  %16 = load i8, ptr %15, align 1, !tbaa !13
  switch i8 %16, label %18 [
    i8 101, label %21
    i8 69, label %21
    i8 100, label %17
    i8 68, label %17
  ]

17:                                               ; preds = %13, %13
  br label %21

18:                                               ; preds = %13
  %19 = load ptr, ptr @stderr, align 8, !tbaa !11
  %20 = tail call i64 @fwrite(ptr nonnull @.str, i64 44, i64 1, ptr %19) #12
  tail call void @exit(i32 noundef 1) #13
  unreachable

21:                                               ; preds = %17, %13, %13
  %22 = phi i32 [ 0, %17 ], [ 1, %13 ], [ 1, %13 ]
  %23 = getelementptr inbounds ptr, ptr %1, i64 4
  %24 = load ptr, ptr %23, align 8, !tbaa !11
  br label %25

25:                                               ; preds = %61, %21
  %26 = phi i32 [ 0, %21 ], [ %51, %61 ]
  %27 = phi i32 [ 0, %21 ], [ %52, %61 ]
  %28 = phi ptr [ %24, %21 ], [ %34, %61 ]
  %29 = load i8, ptr %28, align 1, !tbaa !13
  %30 = icmp eq i8 %29, 0
  br i1 %30, label %63, label %31

31:                                               ; preds = %25
  %32 = tail call ptr @__ctype_toupper_loc() #14
  %33 = load ptr, ptr %32, align 8, !tbaa !11
  %34 = getelementptr inbounds i8, ptr %28, i64 1
  %35 = sext i8 %29 to i64
  %36 = getelementptr inbounds i32, ptr %33, i64 %35
  %37 = load i32, ptr %36, align 4, !tbaa !7
  %38 = shl i32 %37, 24
  %39 = ashr exact i32 %38, 24
  %40 = add nsw i32 %39, -48
  %41 = icmp ult i32 %40, 10
  br i1 %41, label %47, label %42

42:                                               ; preds = %31
  %43 = add nsw i32 %39, -65
  %44 = icmp ult i32 %43, 6
  br i1 %44, label %47, label %45

45:                                               ; preds = %42
  %46 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.5)
  tail call void @exit(i32 noundef 1) #13
  unreachable

47:                                               ; preds = %42, %31
  %48 = phi i32 [ -48, %31 ], [ -55, %42 ]
  %49 = shl i32 %26, 4
  %50 = add i32 %49, %48
  %51 = add i32 %50, %39
  %52 = add nuw nsw i32 %27, 1
  %53 = and i32 %27, 1
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %61, label %55

55:                                               ; preds = %47
  %56 = trunc i32 %51 to i8
  %57 = lshr exact i32 %52, 1
  %58 = add nsw i32 %57, -1
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds [32 x i8], ptr %4, i64 0, i64 %59
  store i8 %56, ptr %60, align 1, !tbaa !13
  br label %61

61:                                               ; preds = %55, %47
  %62 = icmp eq i32 %52, 64
  br i1 %62, label %63, label %25, !llvm.loop !14

63:                                               ; preds = %61, %25
  %64 = phi ptr [ %34, %61 ], [ %28, %25 ]
  call void @BF_set_key(ptr noundef nonnull %3, i32 noundef 8, ptr noundef nonnull %4) #11
  %65 = load i8, ptr %64, align 1, !tbaa !13
  %66 = icmp eq i8 %65, 0
  br i1 %66, label %69, label %67

67:                                               ; preds = %63
  %68 = call i32 @puts(ptr nonnull dereferenceable(1) @str)
  call void @exit(i32 noundef 1) #13
  unreachable

69:                                               ; preds = %63
  %70 = getelementptr inbounds ptr, ptr %1, i64 2
  %71 = load ptr, ptr %70, align 8, !tbaa !11
  %72 = call noalias ptr @fopen(ptr noundef %71, ptr noundef nonnull @.str.3)
  %73 = icmp eq ptr %72, null
  br i1 %73, label %74, label %77

74:                                               ; preds = %69
  %75 = load ptr, ptr @stderr, align 8, !tbaa !11
  %76 = call i64 @fwrite(ptr nonnull @.str, i64 44, i64 1, ptr %75) #12
  call void @exit(i32 noundef 1) #13
  unreachable

77:                                               ; preds = %69
  %78 = getelementptr inbounds ptr, ptr %1, i64 3
  %79 = load ptr, ptr %78, align 8, !tbaa !11
  %80 = call noalias ptr @fopen(ptr noundef %79, ptr noundef nonnull @.str.4)
  %81 = icmp eq ptr %80, null
  br i1 %81, label %82, label %85

82:                                               ; preds = %77
  %83 = load ptr, ptr @stderr, align 8, !tbaa !11
  %84 = call i64 @fwrite(ptr nonnull @.str, i64 44, i64 1, ptr %83) #12
  call void @exit(i32 noundef 1) #13
  unreachable

85:                                               ; preds = %115, %77
  %86 = call i32 @feof(ptr noundef nonnull %72) #11
  %87 = icmp eq i32 %86, 0
  br i1 %87, label %88, label %116

88:                                               ; preds = %95, %85
  %89 = phi i32 [ %100, %95 ], [ 0, %85 ]
  %90 = phi i64 [ %98, %95 ], [ 0, %85 ]
  %91 = call i32 @feof(ptr noundef nonnull %72) #11
  %92 = icmp eq i32 %91, 0
  %93 = icmp ult i64 %90, 40
  %94 = select i1 %92, i1 %93, i1 false
  br i1 %94, label %95, label %101

95:                                               ; preds = %88
  %96 = call i32 @getc(ptr noundef nonnull %72)
  %97 = trunc i32 %96 to i8
  %98 = add nuw nsw i64 %90, 1
  %99 = getelementptr inbounds [40 x i8], ptr %5, i64 0, i64 %90
  store i8 %97, ptr %99, align 1, !tbaa !13
  %100 = add nuw nsw i32 %89, 1
  br label %88, !llvm.loop !16

101:                                              ; preds = %88
  %102 = and i64 %90, 4294967295
  call void @BF_cfb64_encrypt(ptr noundef nonnull %5, ptr noundef nonnull %6, i64 noundef %102, ptr noundef nonnull %3, ptr noundef nonnull %7, ptr noundef nonnull %8, i32 noundef %22) #11
  %103 = and i64 %90, 4294967295
  %104 = icmp eq i64 %103, 0
  br i1 %104, label %115, label %105

105:                                              ; preds = %101
  %106 = zext nneg i32 %89 to i64
  br label %107

107:                                              ; preds = %107, %105
  %108 = phi i64 [ 0, %105 ], [ %113, %107 ]
  %109 = getelementptr inbounds [40 x i8], ptr %6, i64 0, i64 %108
  %110 = load i8, ptr %109, align 1, !tbaa !13
  %111 = zext i8 %110 to i32
  %112 = call i32 @fputc(i32 noundef %111, ptr noundef nonnull %80)
  %113 = add nuw nsw i64 %108, 1
  %114 = icmp eq i64 %113, %106
  br i1 %114, label %115, label %107, !llvm.loop !17

115:                                              ; preds = %107, %101
  br label %85, !llvm.loop !18

116:                                              ; preds = %85
  %117 = call i32 @fclose(ptr noundef nonnull %72)
  %118 = call i32 @fclose(ptr noundef nonnull %80)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %8) #11
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %7) #11
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %6) #11
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %5) #11
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %4) #11
  call void @llvm.lifetime.end.p0(i64 8336, ptr nonnull %3) #11
  ret i32 0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #2

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr nocapture noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #3

; Function Attrs: noreturn nounwind
declare void @exit(i32 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare ptr @__ctype_toupper_loc() local_unnamed_addr #5

; Function Attrs: nofree nounwind
declare noundef i32 @puts(ptr nocapture noundef readonly) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare noalias noundef ptr @fopen(ptr nocapture noundef readonly, ptr nocapture noundef readonly) local_unnamed_addr #6

; Function Attrs: nofree nounwind
declare noundef i32 @feof(ptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: nofree nounwind
declare noundef i32 @getc(ptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: nofree nounwind
declare noundef i32 @fputc(i32 noundef, ptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: nofree nounwind
declare noundef i32 @fclose(ptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind uwtable
define dso_local void @BF_cbc_encrypt(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1, i64 noundef %2, ptr noundef %3, ptr nocapture noundef %4, i32 noundef %5) local_unnamed_addr #0 {
  %7 = alloca [2 x i64], align 16
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %7) #11
  %8 = icmp eq i32 %5, 0
  %9 = getelementptr inbounds i8, ptr %4, i64 1
  %10 = load i8, ptr %4, align 1, !tbaa !13
  %11 = zext i8 %10 to i64
  %12 = shl nuw nsw i64 %11, 24
  %13 = getelementptr inbounds i8, ptr %4, i64 2
  %14 = load i8, ptr %9, align 1, !tbaa !13
  %15 = zext i8 %14 to i64
  %16 = shl nuw nsw i64 %15, 16
  %17 = or disjoint i64 %16, %12
  %18 = getelementptr inbounds i8, ptr %4, i64 3
  %19 = load i8, ptr %13, align 1, !tbaa !13
  %20 = zext i8 %19 to i64
  %21 = shl nuw nsw i64 %20, 8
  %22 = or disjoint i64 %17, %21
  %23 = getelementptr inbounds i8, ptr %4, i64 4
  %24 = load i8, ptr %18, align 1, !tbaa !13
  %25 = zext i8 %24 to i64
  %26 = or disjoint i64 %22, %25
  %27 = getelementptr inbounds i8, ptr %4, i64 5
  %28 = load i8, ptr %23, align 1, !tbaa !13
  %29 = zext i8 %28 to i64
  %30 = shl nuw nsw i64 %29, 24
  %31 = getelementptr inbounds i8, ptr %4, i64 6
  %32 = load i8, ptr %27, align 1, !tbaa !13
  %33 = zext i8 %32 to i64
  %34 = shl nuw nsw i64 %33, 16
  %35 = or disjoint i64 %34, %30
  %36 = getelementptr inbounds i8, ptr %4, i64 7
  %37 = load i8, ptr %31, align 1, !tbaa !13
  %38 = zext i8 %37 to i64
  %39 = shl nuw nsw i64 %38, 8
  %40 = or disjoint i64 %35, %39
  %41 = load i8, ptr %36, align 1, !tbaa !13
  %42 = zext i8 %41 to i64
  %43 = or disjoint i64 %40, %42
  %44 = icmp sgt i64 %2, 7
  br i1 %8, label %210, label %45

45:                                               ; preds = %6
  br i1 %44, label %46, label %118

46:                                               ; preds = %45
  %47 = getelementptr inbounds [2 x i64], ptr %7, i64 0, i64 1
  br label %48

48:                                               ; preds = %48, %46
  %49 = phi i64 [ %2, %46 ], [ %54, %48 ]
  %50 = phi i64 [ %43, %46 ], [ %94, %48 ]
  %51 = phi i64 [ %26, %46 ], [ %93, %48 ]
  %52 = phi ptr [ %0, %46 ], [ %87, %48 ]
  %53 = phi ptr [ %1, %46 ], [ %116, %48 ]
  %54 = add nsw i64 %49, -8
  %55 = getelementptr inbounds i8, ptr %52, i64 1
  %56 = load i8, ptr %52, align 1, !tbaa !13
  %57 = zext i8 %56 to i64
  %58 = shl nuw nsw i64 %57, 24
  %59 = getelementptr inbounds i8, ptr %52, i64 2
  %60 = load i8, ptr %55, align 1, !tbaa !13
  %61 = zext i8 %60 to i64
  %62 = shl nuw nsw i64 %61, 16
  %63 = or disjoint i64 %62, %58
  %64 = getelementptr inbounds i8, ptr %52, i64 3
  %65 = load i8, ptr %59, align 1, !tbaa !13
  %66 = zext i8 %65 to i64
  %67 = shl nuw nsw i64 %66, 8
  %68 = or disjoint i64 %63, %67
  %69 = getelementptr inbounds i8, ptr %52, i64 4
  %70 = load i8, ptr %64, align 1, !tbaa !13
  %71 = zext i8 %70 to i64
  %72 = or disjoint i64 %68, %71
  %73 = getelementptr inbounds i8, ptr %52, i64 5
  %74 = load i8, ptr %69, align 1, !tbaa !13
  %75 = zext i8 %74 to i64
  %76 = shl nuw nsw i64 %75, 24
  %77 = getelementptr inbounds i8, ptr %52, i64 6
  %78 = load i8, ptr %73, align 1, !tbaa !13
  %79 = zext i8 %78 to i64
  %80 = shl nuw nsw i64 %79, 16
  %81 = or disjoint i64 %80, %76
  %82 = getelementptr inbounds i8, ptr %52, i64 7
  %83 = load i8, ptr %77, align 1, !tbaa !13
  %84 = zext i8 %83 to i64
  %85 = shl nuw nsw i64 %84, 8
  %86 = or disjoint i64 %81, %85
  %87 = getelementptr inbounds i8, ptr %52, i64 8
  %88 = load i8, ptr %82, align 1, !tbaa !13
  %89 = zext i8 %88 to i64
  %90 = or disjoint i64 %86, %89
  %91 = xor i64 %72, %51
  %92 = xor i64 %90, %50
  store i64 %91, ptr %7, align 16, !tbaa !19
  store i64 %92, ptr %47, align 8, !tbaa !19
  call void @BF_encrypt(ptr noundef nonnull %7, ptr noundef %3, i32 noundef 1) #11
  %93 = load i64, ptr %7, align 16, !tbaa !19
  %94 = load i64, ptr %47, align 8, !tbaa !19
  %95 = lshr i64 %93, 24
  %96 = trunc i64 %95 to i8
  %97 = getelementptr inbounds i8, ptr %53, i64 1
  store i8 %96, ptr %53, align 1, !tbaa !13
  %98 = lshr i64 %93, 16
  %99 = trunc i64 %98 to i8
  %100 = getelementptr inbounds i8, ptr %53, i64 2
  store i8 %99, ptr %97, align 1, !tbaa !13
  %101 = lshr i64 %93, 8
  %102 = trunc i64 %101 to i8
  %103 = getelementptr inbounds i8, ptr %53, i64 3
  store i8 %102, ptr %100, align 1, !tbaa !13
  %104 = trunc i64 %93 to i8
  %105 = getelementptr inbounds i8, ptr %53, i64 4
  store i8 %104, ptr %103, align 1, !tbaa !13
  %106 = lshr i64 %94, 24
  %107 = trunc i64 %106 to i8
  %108 = getelementptr inbounds i8, ptr %53, i64 5
  store i8 %107, ptr %105, align 1, !tbaa !13
  %109 = lshr i64 %94, 16
  %110 = trunc i64 %109 to i8
  %111 = getelementptr inbounds i8, ptr %53, i64 6
  store i8 %110, ptr %108, align 1, !tbaa !13
  %112 = lshr i64 %94, 8
  %113 = trunc i64 %112 to i8
  %114 = getelementptr inbounds i8, ptr %53, i64 7
  store i8 %113, ptr %111, align 1, !tbaa !13
  %115 = trunc i64 %94 to i8
  %116 = getelementptr inbounds i8, ptr %53, i64 8
  store i8 %115, ptr %114, align 1, !tbaa !13
  %117 = icmp sgt i64 %49, 15
  br i1 %117, label %48, label %118, !llvm.loop !21

118:                                              ; preds = %48, %45
  %119 = phi ptr [ %1, %45 ], [ %116, %48 ]
  %120 = phi ptr [ %0, %45 ], [ %87, %48 ]
  %121 = phi i64 [ %26, %45 ], [ %93, %48 ]
  %122 = phi i64 [ %43, %45 ], [ %94, %48 ]
  %123 = phi i64 [ %2, %45 ], [ %54, %48 ]
  %124 = icmp eq i64 %123, 0
  br i1 %124, label %365, label %125

125:                                              ; preds = %118
  %126 = getelementptr inbounds i8, ptr %120, i64 %123
  switch i64 %123, label %181 [
    i64 1, label %172
    i64 7, label %127
    i64 6, label %132
    i64 5, label %140
    i64 4, label %148
    i64 3, label %154
    i64 2, label %163
  ]

127:                                              ; preds = %125
  %128 = getelementptr inbounds i8, ptr %126, i64 -1
  %129 = load i8, ptr %128, align 1, !tbaa !13
  %130 = zext i8 %129 to i64
  %131 = shl nuw nsw i64 %130, 8
  br label %132

132:                                              ; preds = %127, %125
  %133 = phi ptr [ %126, %125 ], [ %128, %127 ]
  %134 = phi i64 [ 0, %125 ], [ %131, %127 ]
  %135 = getelementptr inbounds i8, ptr %133, i64 -1
  %136 = load i8, ptr %135, align 1, !tbaa !13
  %137 = zext i8 %136 to i64
  %138 = shl nuw nsw i64 %137, 16
  %139 = or i64 %138, %134
  br label %140

140:                                              ; preds = %132, %125
  %141 = phi ptr [ %126, %125 ], [ %135, %132 ]
  %142 = phi i64 [ 0, %125 ], [ %139, %132 ]
  %143 = getelementptr inbounds i8, ptr %141, i64 -1
  %144 = load i8, ptr %143, align 1, !tbaa !13
  %145 = zext i8 %144 to i64
  %146 = shl nuw nsw i64 %145, 24
  %147 = or i64 %146, %142
  br label %148

148:                                              ; preds = %140, %125
  %149 = phi ptr [ %126, %125 ], [ %143, %140 ]
  %150 = phi i64 [ 0, %125 ], [ %147, %140 ]
  %151 = getelementptr inbounds i8, ptr %149, i64 -1
  %152 = load i8, ptr %151, align 1, !tbaa !13
  %153 = zext i8 %152 to i64
  br label %154

154:                                              ; preds = %148, %125
  %155 = phi ptr [ %126, %125 ], [ %151, %148 ]
  %156 = phi i64 [ 0, %125 ], [ %153, %148 ]
  %157 = phi i64 [ 0, %125 ], [ %150, %148 ]
  %158 = getelementptr inbounds i8, ptr %155, i64 -1
  %159 = load i8, ptr %158, align 1, !tbaa !13
  %160 = zext i8 %159 to i64
  %161 = shl nuw nsw i64 %160, 8
  %162 = or disjoint i64 %161, %156
  br label %163

163:                                              ; preds = %154, %125
  %164 = phi ptr [ %126, %125 ], [ %158, %154 ]
  %165 = phi i64 [ 0, %125 ], [ %162, %154 ]
  %166 = phi i64 [ 0, %125 ], [ %157, %154 ]
  %167 = getelementptr inbounds i8, ptr %164, i64 -1
  %168 = load i8, ptr %167, align 1, !tbaa !13
  %169 = zext i8 %168 to i64
  %170 = shl nuw nsw i64 %169, 16
  %171 = or i64 %170, %165
  br label %172

172:                                              ; preds = %163, %125
  %173 = phi ptr [ %126, %125 ], [ %167, %163 ]
  %174 = phi i64 [ 0, %125 ], [ %171, %163 ]
  %175 = phi i64 [ 0, %125 ], [ %166, %163 ]
  %176 = getelementptr inbounds i8, ptr %173, i64 -1
  %177 = load i8, ptr %176, align 1, !tbaa !13
  %178 = zext i8 %177 to i64
  %179 = shl nuw nsw i64 %178, 24
  %180 = or i64 %179, %174
  br label %181

181:                                              ; preds = %172, %125
  %182 = phi i64 [ 0, %125 ], [ %180, %172 ]
  %183 = phi i64 [ 0, %125 ], [ %175, %172 ]
  %184 = xor i64 %182, %121
  %185 = xor i64 %183, %122
  store i64 %184, ptr %7, align 16, !tbaa !19
  %186 = getelementptr inbounds [2 x i64], ptr %7, i64 0, i64 1
  store i64 %185, ptr %186, align 8, !tbaa !19
  call void @BF_encrypt(ptr noundef nonnull %7, ptr noundef %3, i32 noundef 1) #11
  %187 = load i64, ptr %7, align 16, !tbaa !19
  %188 = load i64, ptr %186, align 8, !tbaa !19
  %189 = lshr i64 %187, 24
  %190 = trunc i64 %189 to i8
  %191 = getelementptr inbounds i8, ptr %119, i64 1
  store i8 %190, ptr %119, align 1, !tbaa !13
  %192 = lshr i64 %187, 16
  %193 = trunc i64 %192 to i8
  %194 = getelementptr inbounds i8, ptr %119, i64 2
  store i8 %193, ptr %191, align 1, !tbaa !13
  %195 = lshr i64 %187, 8
  %196 = trunc i64 %195 to i8
  %197 = getelementptr inbounds i8, ptr %119, i64 3
  store i8 %196, ptr %194, align 1, !tbaa !13
  %198 = trunc i64 %187 to i8
  %199 = getelementptr inbounds i8, ptr %119, i64 4
  store i8 %198, ptr %197, align 1, !tbaa !13
  %200 = lshr i64 %188, 24
  %201 = trunc i64 %200 to i8
  %202 = getelementptr inbounds i8, ptr %119, i64 5
  store i8 %201, ptr %199, align 1, !tbaa !13
  %203 = lshr i64 %188, 16
  %204 = trunc i64 %203 to i8
  %205 = getelementptr inbounds i8, ptr %119, i64 6
  store i8 %204, ptr %202, align 1, !tbaa !13
  %206 = lshr i64 %188, 8
  %207 = trunc i64 %206 to i8
  %208 = getelementptr inbounds i8, ptr %119, i64 7
  store i8 %207, ptr %205, align 1, !tbaa !13
  %209 = trunc i64 %188 to i8
  store i8 %209, ptr %208, align 1, !tbaa !13
  br label %365

210:                                              ; preds = %6
  br i1 %44, label %211, label %283

211:                                              ; preds = %210
  %212 = getelementptr inbounds [2 x i64], ptr %7, i64 0, i64 1
  br label %213

213:                                              ; preds = %213, %211
  %214 = phi i64 [ %2, %211 ], [ %219, %213 ]
  %215 = phi i64 [ %43, %211 ], [ %255, %213 ]
  %216 = phi i64 [ %26, %211 ], [ %237, %213 ]
  %217 = phi ptr [ %0, %211 ], [ %252, %213 ]
  %218 = phi ptr [ %1, %211 ], [ %281, %213 ]
  %219 = add nsw i64 %214, -8
  %220 = getelementptr inbounds i8, ptr %217, i64 1
  %221 = load i8, ptr %217, align 1, !tbaa !13
  %222 = zext i8 %221 to i64
  %223 = shl nuw nsw i64 %222, 24
  %224 = getelementptr inbounds i8, ptr %217, i64 2
  %225 = load i8, ptr %220, align 1, !tbaa !13
  %226 = zext i8 %225 to i64
  %227 = shl nuw nsw i64 %226, 16
  %228 = or disjoint i64 %227, %223
  %229 = getelementptr inbounds i8, ptr %217, i64 3
  %230 = load i8, ptr %224, align 1, !tbaa !13
  %231 = zext i8 %230 to i64
  %232 = shl nuw nsw i64 %231, 8
  %233 = or disjoint i64 %228, %232
  %234 = getelementptr inbounds i8, ptr %217, i64 4
  %235 = load i8, ptr %229, align 1, !tbaa !13
  %236 = zext i8 %235 to i64
  %237 = or disjoint i64 %233, %236
  %238 = getelementptr inbounds i8, ptr %217, i64 5
  %239 = load i8, ptr %234, align 1, !tbaa !13
  %240 = zext i8 %239 to i64
  %241 = shl nuw nsw i64 %240, 24
  %242 = getelementptr inbounds i8, ptr %217, i64 6
  %243 = load i8, ptr %238, align 1, !tbaa !13
  %244 = zext i8 %243 to i64
  %245 = shl nuw nsw i64 %244, 16
  %246 = or disjoint i64 %245, %241
  %247 = getelementptr inbounds i8, ptr %217, i64 7
  %248 = load i8, ptr %242, align 1, !tbaa !13
  %249 = zext i8 %248 to i64
  %250 = shl nuw nsw i64 %249, 8
  %251 = or disjoint i64 %246, %250
  %252 = getelementptr inbounds i8, ptr %217, i64 8
  %253 = load i8, ptr %247, align 1, !tbaa !13
  %254 = zext i8 %253 to i64
  %255 = or disjoint i64 %251, %254
  store i64 %237, ptr %7, align 16, !tbaa !19
  store i64 %255, ptr %212, align 8, !tbaa !19
  call void @BF_encrypt(ptr noundef nonnull %7, ptr noundef %3, i32 noundef 0) #11
  %256 = load i64, ptr %7, align 16, !tbaa !19
  %257 = xor i64 %256, %216
  %258 = load i64, ptr %212, align 8, !tbaa !19
  %259 = xor i64 %258, %215
  %260 = lshr i64 %257, 24
  %261 = trunc i64 %260 to i8
  %262 = getelementptr inbounds i8, ptr %218, i64 1
  store i8 %261, ptr %218, align 1, !tbaa !13
  %263 = lshr i64 %257, 16
  %264 = trunc i64 %263 to i8
  %265 = getelementptr inbounds i8, ptr %218, i64 2
  store i8 %264, ptr %262, align 1, !tbaa !13
  %266 = lshr i64 %257, 8
  %267 = trunc i64 %266 to i8
  %268 = getelementptr inbounds i8, ptr %218, i64 3
  store i8 %267, ptr %265, align 1, !tbaa !13
  %269 = trunc i64 %257 to i8
  %270 = getelementptr inbounds i8, ptr %218, i64 4
  store i8 %269, ptr %268, align 1, !tbaa !13
  %271 = lshr i64 %259, 24
  %272 = trunc i64 %271 to i8
  %273 = getelementptr inbounds i8, ptr %218, i64 5
  store i8 %272, ptr %270, align 1, !tbaa !13
  %274 = lshr i64 %259, 16
  %275 = trunc i64 %274 to i8
  %276 = getelementptr inbounds i8, ptr %218, i64 6
  store i8 %275, ptr %273, align 1, !tbaa !13
  %277 = lshr i64 %259, 8
  %278 = trunc i64 %277 to i8
  %279 = getelementptr inbounds i8, ptr %218, i64 7
  store i8 %278, ptr %276, align 1, !tbaa !13
  %280 = trunc i64 %259 to i8
  %281 = getelementptr inbounds i8, ptr %218, i64 8
  store i8 %280, ptr %279, align 1, !tbaa !13
  %282 = icmp sgt i64 %214, 15
  br i1 %282, label %213, label %283, !llvm.loop !22

283:                                              ; preds = %213, %210
  %284 = phi ptr [ %1, %210 ], [ %281, %213 ]
  %285 = phi ptr [ %0, %210 ], [ %252, %213 ]
  %286 = phi i64 [ %26, %210 ], [ %237, %213 ]
  %287 = phi i64 [ %43, %210 ], [ %255, %213 ]
  %288 = phi i64 [ %2, %210 ], [ %219, %213 ]
  %289 = icmp eq i64 %288, 0
  br i1 %289, label %365, label %290

290:                                              ; preds = %283
  %291 = getelementptr inbounds i8, ptr %285, i64 1
  %292 = load i8, ptr %285, align 1, !tbaa !13
  %293 = zext i8 %292 to i64
  %294 = shl nuw nsw i64 %293, 24
  %295 = getelementptr inbounds i8, ptr %285, i64 2
  %296 = load i8, ptr %291, align 1, !tbaa !13
  %297 = zext i8 %296 to i64
  %298 = shl nuw nsw i64 %297, 16
  %299 = or disjoint i64 %298, %294
  %300 = getelementptr inbounds i8, ptr %285, i64 3
  %301 = load i8, ptr %295, align 1, !tbaa !13
  %302 = zext i8 %301 to i64
  %303 = shl nuw nsw i64 %302, 8
  %304 = or disjoint i64 %299, %303
  %305 = getelementptr inbounds i8, ptr %285, i64 4
  %306 = load i8, ptr %300, align 1, !tbaa !13
  %307 = zext i8 %306 to i64
  %308 = or disjoint i64 %304, %307
  %309 = getelementptr inbounds i8, ptr %285, i64 5
  %310 = load i8, ptr %305, align 1, !tbaa !13
  %311 = zext i8 %310 to i64
  %312 = shl nuw nsw i64 %311, 24
  %313 = getelementptr inbounds i8, ptr %285, i64 6
  %314 = load i8, ptr %309, align 1, !tbaa !13
  %315 = zext i8 %314 to i64
  %316 = shl nuw nsw i64 %315, 16
  %317 = or disjoint i64 %316, %312
  %318 = getelementptr inbounds i8, ptr %285, i64 7
  %319 = load i8, ptr %313, align 1, !tbaa !13
  %320 = zext i8 %319 to i64
  %321 = shl nuw nsw i64 %320, 8
  %322 = or disjoint i64 %317, %321
  %323 = load i8, ptr %318, align 1, !tbaa !13
  %324 = zext i8 %323 to i64
  %325 = or disjoint i64 %322, %324
  store i64 %308, ptr %7, align 16, !tbaa !19
  %326 = getelementptr inbounds [2 x i64], ptr %7, i64 0, i64 1
  store i64 %325, ptr %326, align 8, !tbaa !19
  call void @BF_encrypt(ptr noundef nonnull %7, ptr noundef %3, i32 noundef 0) #11
  %327 = load i64, ptr %7, align 16, !tbaa !19
  %328 = xor i64 %327, %286
  %329 = load i64, ptr %326, align 8, !tbaa !19
  %330 = xor i64 %329, %287
  %331 = getelementptr inbounds i8, ptr %284, i64 %288
  switch i64 %288, label %365 [
    i64 1, label %360
    i64 7, label %332
    i64 6, label %336
    i64 5, label %341
    i64 4, label %346
    i64 3, label %350
    i64 2, label %355
  ]

332:                                              ; preds = %290
  %333 = lshr i64 %330, 8
  %334 = trunc i64 %333 to i8
  %335 = getelementptr inbounds i8, ptr %331, i64 -1
  store i8 %334, ptr %335, align 1, !tbaa !13
  br label %336

336:                                              ; preds = %332, %290
  %337 = phi ptr [ %331, %290 ], [ %335, %332 ]
  %338 = lshr i64 %330, 16
  %339 = trunc i64 %338 to i8
  %340 = getelementptr inbounds i8, ptr %337, i64 -1
  store i8 %339, ptr %340, align 1, !tbaa !13
  br label %341

341:                                              ; preds = %336, %290
  %342 = phi ptr [ %331, %290 ], [ %340, %336 ]
  %343 = lshr i64 %330, 24
  %344 = trunc i64 %343 to i8
  %345 = getelementptr inbounds i8, ptr %342, i64 -1
  store i8 %344, ptr %345, align 1, !tbaa !13
  br label %346

346:                                              ; preds = %341, %290
  %347 = phi ptr [ %331, %290 ], [ %345, %341 ]
  %348 = trunc i64 %328 to i8
  %349 = getelementptr inbounds i8, ptr %347, i64 -1
  store i8 %348, ptr %349, align 1, !tbaa !13
  br label %350

350:                                              ; preds = %346, %290
  %351 = phi ptr [ %331, %290 ], [ %349, %346 ]
  %352 = lshr i64 %328, 8
  %353 = trunc i64 %352 to i8
  %354 = getelementptr inbounds i8, ptr %351, i64 -1
  store i8 %353, ptr %354, align 1, !tbaa !13
  br label %355

355:                                              ; preds = %350, %290
  %356 = phi ptr [ %331, %290 ], [ %354, %350 ]
  %357 = lshr i64 %328, 16
  %358 = trunc i64 %357 to i8
  %359 = getelementptr inbounds i8, ptr %356, i64 -1
  store i8 %358, ptr %359, align 1, !tbaa !13
  br label %360

360:                                              ; preds = %355, %290
  %361 = phi ptr [ %331, %290 ], [ %359, %355 ]
  %362 = lshr i64 %328, 24
  %363 = trunc i64 %362 to i8
  %364 = getelementptr inbounds i8, ptr %361, i64 -1
  store i8 %363, ptr %364, align 1, !tbaa !13
  br label %365

365:                                              ; preds = %360, %290, %283, %181, %118
  %366 = phi i64 [ %187, %181 ], [ %121, %118 ], [ %286, %283 ], [ %308, %360 ], [ %308, %290 ]
  %367 = phi i64 [ %188, %181 ], [ %122, %118 ], [ %287, %283 ], [ %325, %360 ], [ %325, %290 ]
  %368 = lshr i64 %366, 24
  %369 = trunc i64 %368 to i8
  store i8 %369, ptr %4, align 1, !tbaa !13
  %370 = lshr i64 %366, 16
  %371 = trunc i64 %370 to i8
  store i8 %371, ptr %9, align 1, !tbaa !13
  %372 = lshr i64 %366, 8
  %373 = trunc i64 %372 to i8
  store i8 %373, ptr %13, align 1, !tbaa !13
  %374 = trunc i64 %366 to i8
  store i8 %374, ptr %18, align 1, !tbaa !13
  %375 = lshr i64 %367, 24
  %376 = trunc i64 %375 to i8
  store i8 %376, ptr %23, align 1, !tbaa !13
  %377 = lshr i64 %367, 16
  %378 = trunc i64 %377 to i8
  store i8 %378, ptr %27, align 1, !tbaa !13
  %379 = lshr i64 %367, 8
  %380 = trunc i64 %379 to i8
  store i8 %380, ptr %31, align 1, !tbaa !13
  %381 = trunc i64 %367 to i8
  store i8 %381, ptr %36, align 1, !tbaa !13
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %7, i8 0, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %7) #11
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @BF_cfb64_encrypt(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1, i64 noundef %2, ptr noundef %3, ptr nocapture noundef %4, ptr nocapture noundef %5, i32 noundef %6) local_unnamed_addr #0 {
  %8 = alloca [2 x i64], align 16
  %9 = load i32, ptr %5, align 4, !tbaa !7
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %8) #11
  %10 = icmp eq i32 %6, 0
  %11 = icmp eq i64 %2, 0
  br i1 %10, label %22, label %12

12:                                               ; preds = %7
  br i1 %11, label %158, label %13

13:                                               ; preds = %12
  %14 = getelementptr inbounds i8, ptr %4, i64 1
  %15 = getelementptr inbounds i8, ptr %4, i64 2
  %16 = getelementptr inbounds i8, ptr %4, i64 3
  %17 = getelementptr inbounds i8, ptr %4, i64 4
  %18 = getelementptr inbounds i8, ptr %4, i64 5
  %19 = getelementptr inbounds i8, ptr %4, i64 6
  %20 = getelementptr inbounds i8, ptr %4, i64 7
  %21 = getelementptr inbounds [2 x i64], ptr %8, i64 0, i64 1
  br label %32

22:                                               ; preds = %7
  br i1 %11, label %158, label %23

23:                                               ; preds = %22
  %24 = getelementptr inbounds i8, ptr %4, i64 1
  %25 = getelementptr inbounds i8, ptr %4, i64 2
  %26 = getelementptr inbounds i8, ptr %4, i64 3
  %27 = getelementptr inbounds i8, ptr %4, i64 4
  %28 = getelementptr inbounds i8, ptr %4, i64 5
  %29 = getelementptr inbounds i8, ptr %4, i64 6
  %30 = getelementptr inbounds i8, ptr %4, i64 7
  %31 = getelementptr inbounds [2 x i64], ptr %8, i64 0, i64 1
  br label %95

32:                                               ; preds = %84, %13
  %33 = phi i64 [ %2, %13 ], [ %37, %84 ]
  %34 = phi i32 [ %9, %13 ], [ %93, %84 ]
  %35 = phi ptr [ %0, %13 ], [ %85, %84 ]
  %36 = phi ptr [ %1, %13 ], [ %91, %84 ]
  %37 = add nsw i64 %33, -1
  %38 = icmp eq i32 %34, 0
  br i1 %38, label %39, label %84

39:                                               ; preds = %32
  %40 = load i8, ptr %4, align 1, !tbaa !13
  %41 = zext i8 %40 to i64
  %42 = shl nuw nsw i64 %41, 24
  %43 = load i8, ptr %14, align 1, !tbaa !13
  %44 = zext i8 %43 to i64
  %45 = shl nuw nsw i64 %44, 16
  %46 = or disjoint i64 %45, %42
  %47 = load i8, ptr %15, align 1, !tbaa !13
  %48 = zext i8 %47 to i64
  %49 = shl nuw nsw i64 %48, 8
  %50 = or disjoint i64 %46, %49
  %51 = load i8, ptr %16, align 1, !tbaa !13
  %52 = zext i8 %51 to i64
  %53 = or disjoint i64 %50, %52
  store i64 %53, ptr %8, align 16, !tbaa !19
  %54 = load i8, ptr %17, align 1, !tbaa !13
  %55 = zext i8 %54 to i64
  %56 = shl nuw nsw i64 %55, 24
  %57 = load i8, ptr %18, align 1, !tbaa !13
  %58 = zext i8 %57 to i64
  %59 = shl nuw nsw i64 %58, 16
  %60 = or disjoint i64 %59, %56
  %61 = load i8, ptr %19, align 1, !tbaa !13
  %62 = zext i8 %61 to i64
  %63 = shl nuw nsw i64 %62, 8
  %64 = or disjoint i64 %60, %63
  %65 = load i8, ptr %20, align 1, !tbaa !13
  %66 = zext i8 %65 to i64
  %67 = or disjoint i64 %64, %66
  store i64 %67, ptr %21, align 8, !tbaa !19
  call void @BF_encrypt(ptr noundef nonnull %8, ptr noundef %3, i32 noundef 1) #11
  %68 = load i64, ptr %8, align 16, !tbaa !19
  %69 = lshr i64 %68, 24
  %70 = trunc i64 %69 to i8
  store i8 %70, ptr %4, align 1, !tbaa !13
  %71 = lshr i64 %68, 16
  %72 = trunc i64 %71 to i8
  store i8 %72, ptr %14, align 1, !tbaa !13
  %73 = lshr i64 %68, 8
  %74 = trunc i64 %73 to i8
  store i8 %74, ptr %15, align 1, !tbaa !13
  %75 = trunc i64 %68 to i8
  store i8 %75, ptr %16, align 1, !tbaa !13
  %76 = load i64, ptr %21, align 8, !tbaa !19
  %77 = lshr i64 %76, 24
  %78 = trunc i64 %77 to i8
  store i8 %78, ptr %17, align 1, !tbaa !13
  %79 = lshr i64 %76, 16
  %80 = trunc i64 %79 to i8
  store i8 %80, ptr %18, align 1, !tbaa !13
  %81 = lshr i64 %76, 8
  %82 = trunc i64 %81 to i8
  store i8 %82, ptr %19, align 1, !tbaa !13
  %83 = trunc i64 %76 to i8
  store i8 %83, ptr %20, align 1, !tbaa !13
  br label %84

84:                                               ; preds = %39, %32
  %85 = getelementptr inbounds i8, ptr %35, i64 1
  %86 = load i8, ptr %35, align 1, !tbaa !13
  %87 = sext i32 %34 to i64
  %88 = getelementptr inbounds i8, ptr %4, i64 %87
  %89 = load i8, ptr %88, align 1, !tbaa !13
  %90 = xor i8 %89, %86
  %91 = getelementptr inbounds i8, ptr %36, i64 1
  store i8 %90, ptr %36, align 1, !tbaa !13
  store i8 %90, ptr %88, align 1, !tbaa !13
  %92 = add nsw i32 %34, 1
  %93 = and i32 %92, 7
  %94 = icmp eq i64 %37, 0
  br i1 %94, label %158, label %32, !llvm.loop !23

95:                                               ; preds = %147, %23
  %96 = phi i64 [ %2, %23 ], [ %100, %147 ]
  %97 = phi i32 [ %9, %23 ], [ %156, %147 ]
  %98 = phi ptr [ %0, %23 ], [ %148, %147 ]
  %99 = phi ptr [ %1, %23 ], [ %154, %147 ]
  %100 = add nsw i64 %96, -1
  %101 = icmp eq i32 %97, 0
  br i1 %101, label %102, label %147

102:                                              ; preds = %95
  %103 = load i8, ptr %4, align 1, !tbaa !13
  %104 = zext i8 %103 to i64
  %105 = shl nuw nsw i64 %104, 24
  %106 = load i8, ptr %24, align 1, !tbaa !13
  %107 = zext i8 %106 to i64
  %108 = shl nuw nsw i64 %107, 16
  %109 = or disjoint i64 %108, %105
  %110 = load i8, ptr %25, align 1, !tbaa !13
  %111 = zext i8 %110 to i64
  %112 = shl nuw nsw i64 %111, 8
  %113 = or disjoint i64 %109, %112
  %114 = load i8, ptr %26, align 1, !tbaa !13
  %115 = zext i8 %114 to i64
  %116 = or disjoint i64 %113, %115
  store i64 %116, ptr %8, align 16, !tbaa !19
  %117 = load i8, ptr %27, align 1, !tbaa !13
  %118 = zext i8 %117 to i64
  %119 = shl nuw nsw i64 %118, 24
  %120 = load i8, ptr %28, align 1, !tbaa !13
  %121 = zext i8 %120 to i64
  %122 = shl nuw nsw i64 %121, 16
  %123 = or disjoint i64 %122, %119
  %124 = load i8, ptr %29, align 1, !tbaa !13
  %125 = zext i8 %124 to i64
  %126 = shl nuw nsw i64 %125, 8
  %127 = or disjoint i64 %123, %126
  %128 = load i8, ptr %30, align 1, !tbaa !13
  %129 = zext i8 %128 to i64
  %130 = or disjoint i64 %127, %129
  store i64 %130, ptr %31, align 8, !tbaa !19
  call void @BF_encrypt(ptr noundef nonnull %8, ptr noundef %3, i32 noundef 1) #11
  %131 = load i64, ptr %8, align 16, !tbaa !19
  %132 = lshr i64 %131, 24
  %133 = trunc i64 %132 to i8
  store i8 %133, ptr %4, align 1, !tbaa !13
  %134 = lshr i64 %131, 16
  %135 = trunc i64 %134 to i8
  store i8 %135, ptr %24, align 1, !tbaa !13
  %136 = lshr i64 %131, 8
  %137 = trunc i64 %136 to i8
  store i8 %137, ptr %25, align 1, !tbaa !13
  %138 = trunc i64 %131 to i8
  store i8 %138, ptr %26, align 1, !tbaa !13
  %139 = load i64, ptr %31, align 8, !tbaa !19
  %140 = lshr i64 %139, 24
  %141 = trunc i64 %140 to i8
  store i8 %141, ptr %27, align 1, !tbaa !13
  %142 = lshr i64 %139, 16
  %143 = trunc i64 %142 to i8
  store i8 %143, ptr %28, align 1, !tbaa !13
  %144 = lshr i64 %139, 8
  %145 = trunc i64 %144 to i8
  store i8 %145, ptr %29, align 1, !tbaa !13
  %146 = trunc i64 %139 to i8
  store i8 %146, ptr %30, align 1, !tbaa !13
  br label %147

147:                                              ; preds = %102, %95
  %148 = getelementptr inbounds i8, ptr %98, i64 1
  %149 = load i8, ptr %98, align 1, !tbaa !13
  %150 = sext i32 %97 to i64
  %151 = getelementptr inbounds i8, ptr %4, i64 %150
  %152 = load i8, ptr %151, align 1, !tbaa !13
  store i8 %149, ptr %151, align 1, !tbaa !13
  %153 = xor i8 %152, %149
  %154 = getelementptr inbounds i8, ptr %99, i64 1
  store i8 %153, ptr %99, align 1, !tbaa !13
  %155 = add nsw i32 %97, 1
  %156 = and i32 %155, 7
  %157 = icmp eq i64 %100, 0
  br i1 %157, label %158, label %95, !llvm.loop !24

158:                                              ; preds = %147, %84, %22, %12
  %159 = phi i32 [ %9, %22 ], [ %9, %12 ], [ %156, %147 ], [ %93, %84 ]
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %8, i8 0, i64 16, i1 false)
  store i32 %159, ptr %5, align 4, !tbaa !7
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %8) #11
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef nonnull ptr @BF_options() local_unnamed_addr #7 {
  ret ptr @.str.1
}

; Function Attrs: nounwind uwtable
define dso_local void @BF_ecb_encrypt(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1, ptr noundef %2, i32 noundef %3) local_unnamed_addr #0 {
  %5 = alloca [2 x i64], align 16
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #11
  %6 = getelementptr inbounds i8, ptr %0, i64 1
  %7 = load i8, ptr %0, align 1, !tbaa !13
  %8 = zext i8 %7 to i64
  %9 = shl nuw nsw i64 %8, 24
  %10 = getelementptr inbounds i8, ptr %0, i64 2
  %11 = load i8, ptr %6, align 1, !tbaa !13
  %12 = zext i8 %11 to i64
  %13 = shl nuw nsw i64 %12, 16
  %14 = or disjoint i64 %13, %9
  %15 = getelementptr inbounds i8, ptr %0, i64 3
  %16 = load i8, ptr %10, align 1, !tbaa !13
  %17 = zext i8 %16 to i64
  %18 = shl nuw nsw i64 %17, 8
  %19 = or disjoint i64 %14, %18
  %20 = getelementptr inbounds i8, ptr %0, i64 4
  %21 = load i8, ptr %15, align 1, !tbaa !13
  %22 = zext i8 %21 to i64
  %23 = or disjoint i64 %19, %22
  store i64 %23, ptr %5, align 16, !tbaa !19
  %24 = getelementptr inbounds i8, ptr %0, i64 5
  %25 = load i8, ptr %20, align 1, !tbaa !13
  %26 = zext i8 %25 to i64
  %27 = shl nuw nsw i64 %26, 24
  %28 = getelementptr inbounds i8, ptr %0, i64 6
  %29 = load i8, ptr %24, align 1, !tbaa !13
  %30 = zext i8 %29 to i64
  %31 = shl nuw nsw i64 %30, 16
  %32 = or disjoint i64 %31, %27
  %33 = getelementptr inbounds i8, ptr %0, i64 7
  %34 = load i8, ptr %28, align 1, !tbaa !13
  %35 = zext i8 %34 to i64
  %36 = shl nuw nsw i64 %35, 8
  %37 = or disjoint i64 %32, %36
  %38 = load i8, ptr %33, align 1, !tbaa !13
  %39 = zext i8 %38 to i64
  %40 = or disjoint i64 %37, %39
  %41 = getelementptr inbounds [2 x i64], ptr %5, i64 0, i64 1
  store i64 %40, ptr %41, align 8, !tbaa !19
  call void @BF_encrypt(ptr noundef nonnull %5, ptr noundef %2, i32 noundef %3) #11
  %42 = load i64, ptr %5, align 16, !tbaa !19
  %43 = lshr i64 %42, 24
  %44 = trunc i64 %43 to i8
  %45 = getelementptr inbounds i8, ptr %1, i64 1
  store i8 %44, ptr %1, align 1, !tbaa !13
  %46 = lshr i64 %42, 16
  %47 = trunc i64 %46 to i8
  %48 = getelementptr inbounds i8, ptr %1, i64 2
  store i8 %47, ptr %45, align 1, !tbaa !13
  %49 = lshr i64 %42, 8
  %50 = trunc i64 %49 to i8
  %51 = getelementptr inbounds i8, ptr %1, i64 3
  store i8 %50, ptr %48, align 1, !tbaa !13
  %52 = trunc i64 %42 to i8
  %53 = getelementptr inbounds i8, ptr %1, i64 4
  store i8 %52, ptr %51, align 1, !tbaa !13
  %54 = load i64, ptr %41, align 8, !tbaa !19
  %55 = lshr i64 %54, 24
  %56 = trunc i64 %55 to i8
  %57 = getelementptr inbounds i8, ptr %1, i64 5
  store i8 %56, ptr %53, align 1, !tbaa !13
  %58 = lshr i64 %54, 16
  %59 = trunc i64 %58 to i8
  %60 = getelementptr inbounds i8, ptr %1, i64 6
  store i8 %59, ptr %57, align 1, !tbaa !13
  %61 = lshr i64 %54, 8
  %62 = trunc i64 %61 to i8
  %63 = getelementptr inbounds i8, ptr %1, i64 7
  store i8 %62, ptr %60, align 1, !tbaa !13
  %64 = trunc i64 %54 to i8
  store i8 %64, ptr %63, align 1, !tbaa !13
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %5, i8 0, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #11
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local void @BF_encrypt(ptr nocapture noundef %0, ptr noundef readonly %1, i32 noundef %2) local_unnamed_addr #8 {
  %4 = getelementptr inbounds %struct.bf_key_st, ptr %1, i64 0, i32 1
  %5 = load i64, ptr %0, align 8, !tbaa !19
  %6 = getelementptr inbounds i64, ptr %0, i64 1
  %7 = load i64, ptr %6, align 8, !tbaa !19
  %8 = icmp eq i32 %2, 0
  br i1 %8, label %413, label %9

9:                                                ; preds = %3
  %10 = load i64, ptr %1, align 8, !tbaa !19
  %11 = xor i64 %10, %5
  %12 = getelementptr inbounds i64, ptr %1, i64 1
  %13 = load i64, ptr %12, align 8, !tbaa !19
  %14 = lshr i64 %11, 24
  %15 = getelementptr inbounds i64, ptr %4, i64 %14
  %16 = load i64, ptr %15, align 8, !tbaa !19
  %17 = lshr i64 %11, 16
  %18 = and i64 %17, 255
  %19 = or disjoint i64 %18, 256
  %20 = getelementptr inbounds i64, ptr %4, i64 %19
  %21 = load i64, ptr %20, align 8, !tbaa !19
  %22 = add i64 %21, %16
  %23 = lshr i64 %11, 8
  %24 = and i64 %23, 255
  %25 = or disjoint i64 %24, 512
  %26 = getelementptr inbounds i64, ptr %4, i64 %25
  %27 = load i64, ptr %26, align 8, !tbaa !19
  %28 = xor i64 %22, %27
  %29 = and i64 %11, 255
  %30 = or disjoint i64 %29, 768
  %31 = getelementptr inbounds i64, ptr %4, i64 %30
  %32 = load i64, ptr %31, align 8, !tbaa !19
  %33 = add i64 %28, %32
  %34 = and i64 %33, 4294967295
  %35 = xor i64 %13, %34
  %36 = xor i64 %35, %7
  %37 = getelementptr inbounds i64, ptr %1, i64 2
  %38 = load i64, ptr %37, align 8, !tbaa !19
  %39 = lshr i64 %36, 24
  %40 = getelementptr inbounds i64, ptr %4, i64 %39
  %41 = load i64, ptr %40, align 8, !tbaa !19
  %42 = lshr i64 %36, 16
  %43 = and i64 %42, 255
  %44 = or disjoint i64 %43, 256
  %45 = getelementptr inbounds i64, ptr %4, i64 %44
  %46 = load i64, ptr %45, align 8, !tbaa !19
  %47 = add i64 %46, %41
  %48 = lshr i64 %36, 8
  %49 = and i64 %48, 255
  %50 = or disjoint i64 %49, 512
  %51 = getelementptr inbounds i64, ptr %4, i64 %50
  %52 = load i64, ptr %51, align 8, !tbaa !19
  %53 = xor i64 %47, %52
  %54 = and i64 %36, 255
  %55 = or disjoint i64 %54, 768
  %56 = getelementptr inbounds i64, ptr %4, i64 %55
  %57 = load i64, ptr %56, align 8, !tbaa !19
  %58 = add i64 %53, %57
  %59 = and i64 %58, 4294967295
  %60 = xor i64 %38, %59
  %61 = xor i64 %60, %11
  %62 = getelementptr inbounds i64, ptr %1, i64 3
  %63 = load i64, ptr %62, align 8, !tbaa !19
  %64 = lshr i64 %61, 24
  %65 = getelementptr inbounds i64, ptr %4, i64 %64
  %66 = load i64, ptr %65, align 8, !tbaa !19
  %67 = lshr i64 %61, 16
  %68 = and i64 %67, 255
  %69 = or disjoint i64 %68, 256
  %70 = getelementptr inbounds i64, ptr %4, i64 %69
  %71 = load i64, ptr %70, align 8, !tbaa !19
  %72 = add i64 %71, %66
  %73 = lshr i64 %61, 8
  %74 = and i64 %73, 255
  %75 = or disjoint i64 %74, 512
  %76 = getelementptr inbounds i64, ptr %4, i64 %75
  %77 = load i64, ptr %76, align 8, !tbaa !19
  %78 = xor i64 %72, %77
  %79 = and i64 %61, 255
  %80 = or disjoint i64 %79, 768
  %81 = getelementptr inbounds i64, ptr %4, i64 %80
  %82 = load i64, ptr %81, align 8, !tbaa !19
  %83 = add i64 %78, %82
  %84 = and i64 %83, 4294967295
  %85 = xor i64 %63, %84
  %86 = xor i64 %85, %36
  %87 = getelementptr inbounds i64, ptr %1, i64 4
  %88 = load i64, ptr %87, align 8, !tbaa !19
  %89 = lshr i64 %86, 24
  %90 = getelementptr inbounds i64, ptr %4, i64 %89
  %91 = load i64, ptr %90, align 8, !tbaa !19
  %92 = lshr i64 %86, 16
  %93 = and i64 %92, 255
  %94 = or disjoint i64 %93, 256
  %95 = getelementptr inbounds i64, ptr %4, i64 %94
  %96 = load i64, ptr %95, align 8, !tbaa !19
  %97 = add i64 %96, %91
  %98 = lshr i64 %86, 8
  %99 = and i64 %98, 255
  %100 = or disjoint i64 %99, 512
  %101 = getelementptr inbounds i64, ptr %4, i64 %100
  %102 = load i64, ptr %101, align 8, !tbaa !19
  %103 = xor i64 %97, %102
  %104 = and i64 %86, 255
  %105 = or disjoint i64 %104, 768
  %106 = getelementptr inbounds i64, ptr %4, i64 %105
  %107 = load i64, ptr %106, align 8, !tbaa !19
  %108 = add i64 %103, %107
  %109 = and i64 %108, 4294967295
  %110 = xor i64 %88, %109
  %111 = xor i64 %110, %61
  %112 = getelementptr inbounds i64, ptr %1, i64 5
  %113 = load i64, ptr %112, align 8, !tbaa !19
  %114 = lshr i64 %111, 24
  %115 = getelementptr inbounds i64, ptr %4, i64 %114
  %116 = load i64, ptr %115, align 8, !tbaa !19
  %117 = lshr i64 %111, 16
  %118 = and i64 %117, 255
  %119 = or disjoint i64 %118, 256
  %120 = getelementptr inbounds i64, ptr %4, i64 %119
  %121 = load i64, ptr %120, align 8, !tbaa !19
  %122 = add i64 %121, %116
  %123 = lshr i64 %111, 8
  %124 = and i64 %123, 255
  %125 = or disjoint i64 %124, 512
  %126 = getelementptr inbounds i64, ptr %4, i64 %125
  %127 = load i64, ptr %126, align 8, !tbaa !19
  %128 = xor i64 %122, %127
  %129 = and i64 %111, 255
  %130 = or disjoint i64 %129, 768
  %131 = getelementptr inbounds i64, ptr %4, i64 %130
  %132 = load i64, ptr %131, align 8, !tbaa !19
  %133 = add i64 %128, %132
  %134 = and i64 %133, 4294967295
  %135 = xor i64 %113, %134
  %136 = xor i64 %135, %86
  %137 = getelementptr inbounds i64, ptr %1, i64 6
  %138 = load i64, ptr %137, align 8, !tbaa !19
  %139 = lshr i64 %136, 24
  %140 = getelementptr inbounds i64, ptr %4, i64 %139
  %141 = load i64, ptr %140, align 8, !tbaa !19
  %142 = lshr i64 %136, 16
  %143 = and i64 %142, 255
  %144 = or disjoint i64 %143, 256
  %145 = getelementptr inbounds i64, ptr %4, i64 %144
  %146 = load i64, ptr %145, align 8, !tbaa !19
  %147 = add i64 %146, %141
  %148 = lshr i64 %136, 8
  %149 = and i64 %148, 255
  %150 = or disjoint i64 %149, 512
  %151 = getelementptr inbounds i64, ptr %4, i64 %150
  %152 = load i64, ptr %151, align 8, !tbaa !19
  %153 = xor i64 %147, %152
  %154 = and i64 %136, 255
  %155 = or disjoint i64 %154, 768
  %156 = getelementptr inbounds i64, ptr %4, i64 %155
  %157 = load i64, ptr %156, align 8, !tbaa !19
  %158 = add i64 %153, %157
  %159 = and i64 %158, 4294967295
  %160 = xor i64 %138, %159
  %161 = xor i64 %160, %111
  %162 = getelementptr inbounds i64, ptr %1, i64 7
  %163 = load i64, ptr %162, align 8, !tbaa !19
  %164 = lshr i64 %161, 24
  %165 = getelementptr inbounds i64, ptr %4, i64 %164
  %166 = load i64, ptr %165, align 8, !tbaa !19
  %167 = lshr i64 %161, 16
  %168 = and i64 %167, 255
  %169 = or disjoint i64 %168, 256
  %170 = getelementptr inbounds i64, ptr %4, i64 %169
  %171 = load i64, ptr %170, align 8, !tbaa !19
  %172 = add i64 %171, %166
  %173 = lshr i64 %161, 8
  %174 = and i64 %173, 255
  %175 = or disjoint i64 %174, 512
  %176 = getelementptr inbounds i64, ptr %4, i64 %175
  %177 = load i64, ptr %176, align 8, !tbaa !19
  %178 = xor i64 %172, %177
  %179 = and i64 %161, 255
  %180 = or disjoint i64 %179, 768
  %181 = getelementptr inbounds i64, ptr %4, i64 %180
  %182 = load i64, ptr %181, align 8, !tbaa !19
  %183 = add i64 %178, %182
  %184 = and i64 %183, 4294967295
  %185 = xor i64 %163, %184
  %186 = xor i64 %185, %136
  %187 = getelementptr inbounds i64, ptr %1, i64 8
  %188 = load i64, ptr %187, align 8, !tbaa !19
  %189 = lshr i64 %186, 24
  %190 = getelementptr inbounds i64, ptr %4, i64 %189
  %191 = load i64, ptr %190, align 8, !tbaa !19
  %192 = lshr i64 %186, 16
  %193 = and i64 %192, 255
  %194 = or disjoint i64 %193, 256
  %195 = getelementptr inbounds i64, ptr %4, i64 %194
  %196 = load i64, ptr %195, align 8, !tbaa !19
  %197 = add i64 %196, %191
  %198 = lshr i64 %186, 8
  %199 = and i64 %198, 255
  %200 = or disjoint i64 %199, 512
  %201 = getelementptr inbounds i64, ptr %4, i64 %200
  %202 = load i64, ptr %201, align 8, !tbaa !19
  %203 = xor i64 %197, %202
  %204 = and i64 %186, 255
  %205 = or disjoint i64 %204, 768
  %206 = getelementptr inbounds i64, ptr %4, i64 %205
  %207 = load i64, ptr %206, align 8, !tbaa !19
  %208 = add i64 %203, %207
  %209 = and i64 %208, 4294967295
  %210 = xor i64 %188, %209
  %211 = xor i64 %210, %161
  %212 = getelementptr inbounds i64, ptr %1, i64 9
  %213 = load i64, ptr %212, align 8, !tbaa !19
  %214 = lshr i64 %211, 24
  %215 = getelementptr inbounds i64, ptr %4, i64 %214
  %216 = load i64, ptr %215, align 8, !tbaa !19
  %217 = lshr i64 %211, 16
  %218 = and i64 %217, 255
  %219 = or disjoint i64 %218, 256
  %220 = getelementptr inbounds i64, ptr %4, i64 %219
  %221 = load i64, ptr %220, align 8, !tbaa !19
  %222 = add i64 %221, %216
  %223 = lshr i64 %211, 8
  %224 = and i64 %223, 255
  %225 = or disjoint i64 %224, 512
  %226 = getelementptr inbounds i64, ptr %4, i64 %225
  %227 = load i64, ptr %226, align 8, !tbaa !19
  %228 = xor i64 %222, %227
  %229 = and i64 %211, 255
  %230 = or disjoint i64 %229, 768
  %231 = getelementptr inbounds i64, ptr %4, i64 %230
  %232 = load i64, ptr %231, align 8, !tbaa !19
  %233 = add i64 %228, %232
  %234 = and i64 %233, 4294967295
  %235 = xor i64 %213, %234
  %236 = xor i64 %235, %186
  %237 = getelementptr inbounds i64, ptr %1, i64 10
  %238 = load i64, ptr %237, align 8, !tbaa !19
  %239 = lshr i64 %236, 24
  %240 = getelementptr inbounds i64, ptr %4, i64 %239
  %241 = load i64, ptr %240, align 8, !tbaa !19
  %242 = lshr i64 %236, 16
  %243 = and i64 %242, 255
  %244 = or disjoint i64 %243, 256
  %245 = getelementptr inbounds i64, ptr %4, i64 %244
  %246 = load i64, ptr %245, align 8, !tbaa !19
  %247 = add i64 %246, %241
  %248 = lshr i64 %236, 8
  %249 = and i64 %248, 255
  %250 = or disjoint i64 %249, 512
  %251 = getelementptr inbounds i64, ptr %4, i64 %250
  %252 = load i64, ptr %251, align 8, !tbaa !19
  %253 = xor i64 %247, %252
  %254 = and i64 %236, 255
  %255 = or disjoint i64 %254, 768
  %256 = getelementptr inbounds i64, ptr %4, i64 %255
  %257 = load i64, ptr %256, align 8, !tbaa !19
  %258 = add i64 %253, %257
  %259 = and i64 %258, 4294967295
  %260 = xor i64 %238, %259
  %261 = xor i64 %260, %211
  %262 = getelementptr inbounds i64, ptr %1, i64 11
  %263 = load i64, ptr %262, align 8, !tbaa !19
  %264 = lshr i64 %261, 24
  %265 = getelementptr inbounds i64, ptr %4, i64 %264
  %266 = load i64, ptr %265, align 8, !tbaa !19
  %267 = lshr i64 %261, 16
  %268 = and i64 %267, 255
  %269 = or disjoint i64 %268, 256
  %270 = getelementptr inbounds i64, ptr %4, i64 %269
  %271 = load i64, ptr %270, align 8, !tbaa !19
  %272 = add i64 %271, %266
  %273 = lshr i64 %261, 8
  %274 = and i64 %273, 255
  %275 = or disjoint i64 %274, 512
  %276 = getelementptr inbounds i64, ptr %4, i64 %275
  %277 = load i64, ptr %276, align 8, !tbaa !19
  %278 = xor i64 %272, %277
  %279 = and i64 %261, 255
  %280 = or disjoint i64 %279, 768
  %281 = getelementptr inbounds i64, ptr %4, i64 %280
  %282 = load i64, ptr %281, align 8, !tbaa !19
  %283 = add i64 %278, %282
  %284 = and i64 %283, 4294967295
  %285 = xor i64 %263, %284
  %286 = xor i64 %285, %236
  %287 = getelementptr inbounds i64, ptr %1, i64 12
  %288 = load i64, ptr %287, align 8, !tbaa !19
  %289 = lshr i64 %286, 24
  %290 = getelementptr inbounds i64, ptr %4, i64 %289
  %291 = load i64, ptr %290, align 8, !tbaa !19
  %292 = lshr i64 %286, 16
  %293 = and i64 %292, 255
  %294 = or disjoint i64 %293, 256
  %295 = getelementptr inbounds i64, ptr %4, i64 %294
  %296 = load i64, ptr %295, align 8, !tbaa !19
  %297 = add i64 %296, %291
  %298 = lshr i64 %286, 8
  %299 = and i64 %298, 255
  %300 = or disjoint i64 %299, 512
  %301 = getelementptr inbounds i64, ptr %4, i64 %300
  %302 = load i64, ptr %301, align 8, !tbaa !19
  %303 = xor i64 %297, %302
  %304 = and i64 %286, 255
  %305 = or disjoint i64 %304, 768
  %306 = getelementptr inbounds i64, ptr %4, i64 %305
  %307 = load i64, ptr %306, align 8, !tbaa !19
  %308 = add i64 %303, %307
  %309 = and i64 %308, 4294967295
  %310 = xor i64 %288, %309
  %311 = xor i64 %310, %261
  %312 = getelementptr inbounds i64, ptr %1, i64 13
  %313 = load i64, ptr %312, align 8, !tbaa !19
  %314 = lshr i64 %311, 24
  %315 = getelementptr inbounds i64, ptr %4, i64 %314
  %316 = load i64, ptr %315, align 8, !tbaa !19
  %317 = lshr i64 %311, 16
  %318 = and i64 %317, 255
  %319 = or disjoint i64 %318, 256
  %320 = getelementptr inbounds i64, ptr %4, i64 %319
  %321 = load i64, ptr %320, align 8, !tbaa !19
  %322 = add i64 %321, %316
  %323 = lshr i64 %311, 8
  %324 = and i64 %323, 255
  %325 = or disjoint i64 %324, 512
  %326 = getelementptr inbounds i64, ptr %4, i64 %325
  %327 = load i64, ptr %326, align 8, !tbaa !19
  %328 = xor i64 %322, %327
  %329 = and i64 %311, 255
  %330 = or disjoint i64 %329, 768
  %331 = getelementptr inbounds i64, ptr %4, i64 %330
  %332 = load i64, ptr %331, align 8, !tbaa !19
  %333 = add i64 %328, %332
  %334 = and i64 %333, 4294967295
  %335 = xor i64 %313, %334
  %336 = xor i64 %335, %286
  %337 = getelementptr inbounds i64, ptr %1, i64 14
  %338 = load i64, ptr %337, align 8, !tbaa !19
  %339 = lshr i64 %336, 24
  %340 = getelementptr inbounds i64, ptr %4, i64 %339
  %341 = load i64, ptr %340, align 8, !tbaa !19
  %342 = lshr i64 %336, 16
  %343 = and i64 %342, 255
  %344 = or disjoint i64 %343, 256
  %345 = getelementptr inbounds i64, ptr %4, i64 %344
  %346 = load i64, ptr %345, align 8, !tbaa !19
  %347 = add i64 %346, %341
  %348 = lshr i64 %336, 8
  %349 = and i64 %348, 255
  %350 = or disjoint i64 %349, 512
  %351 = getelementptr inbounds i64, ptr %4, i64 %350
  %352 = load i64, ptr %351, align 8, !tbaa !19
  %353 = xor i64 %347, %352
  %354 = and i64 %336, 255
  %355 = or disjoint i64 %354, 768
  %356 = getelementptr inbounds i64, ptr %4, i64 %355
  %357 = load i64, ptr %356, align 8, !tbaa !19
  %358 = add i64 %353, %357
  %359 = and i64 %358, 4294967295
  %360 = xor i64 %338, %359
  %361 = xor i64 %360, %311
  %362 = getelementptr inbounds i64, ptr %1, i64 15
  %363 = load i64, ptr %362, align 8, !tbaa !19
  %364 = lshr i64 %361, 24
  %365 = getelementptr inbounds i64, ptr %4, i64 %364
  %366 = load i64, ptr %365, align 8, !tbaa !19
  %367 = lshr i64 %361, 16
  %368 = and i64 %367, 255
  %369 = or disjoint i64 %368, 256
  %370 = getelementptr inbounds i64, ptr %4, i64 %369
  %371 = load i64, ptr %370, align 8, !tbaa !19
  %372 = add i64 %371, %366
  %373 = lshr i64 %361, 8
  %374 = and i64 %373, 255
  %375 = or disjoint i64 %374, 512
  %376 = getelementptr inbounds i64, ptr %4, i64 %375
  %377 = load i64, ptr %376, align 8, !tbaa !19
  %378 = xor i64 %372, %377
  %379 = and i64 %361, 255
  %380 = or disjoint i64 %379, 768
  %381 = getelementptr inbounds i64, ptr %4, i64 %380
  %382 = load i64, ptr %381, align 8, !tbaa !19
  %383 = add i64 %378, %382
  %384 = and i64 %383, 4294967295
  %385 = xor i64 %363, %384
  %386 = xor i64 %385, %336
  %387 = getelementptr inbounds i64, ptr %1, i64 16
  %388 = load i64, ptr %387, align 8, !tbaa !19
  %389 = lshr i64 %386, 24
  %390 = getelementptr inbounds i64, ptr %4, i64 %389
  %391 = load i64, ptr %390, align 8, !tbaa !19
  %392 = lshr i64 %386, 16
  %393 = and i64 %392, 255
  %394 = or disjoint i64 %393, 256
  %395 = getelementptr inbounds i64, ptr %4, i64 %394
  %396 = load i64, ptr %395, align 8, !tbaa !19
  %397 = add i64 %396, %391
  %398 = lshr i64 %386, 8
  %399 = and i64 %398, 255
  %400 = or disjoint i64 %399, 512
  %401 = getelementptr inbounds i64, ptr %4, i64 %400
  %402 = load i64, ptr %401, align 8, !tbaa !19
  %403 = xor i64 %397, %402
  %404 = and i64 %386, 255
  %405 = or disjoint i64 %404, 768
  %406 = getelementptr inbounds i64, ptr %4, i64 %405
  %407 = load i64, ptr %406, align 8, !tbaa !19
  %408 = add i64 %403, %407
  %409 = and i64 %408, 4294967295
  %410 = xor i64 %388, %409
  %411 = xor i64 %410, %361
  %412 = getelementptr inbounds i64, ptr %1, i64 17
  br label %817

413:                                              ; preds = %3
  %414 = getelementptr inbounds i64, ptr %1, i64 17
  %415 = load i64, ptr %414, align 8, !tbaa !19
  %416 = xor i64 %415, %5
  %417 = getelementptr inbounds i64, ptr %1, i64 16
  %418 = load i64, ptr %417, align 8, !tbaa !19
  %419 = lshr i64 %416, 24
  %420 = getelementptr inbounds i64, ptr %4, i64 %419
  %421 = load i64, ptr %420, align 8, !tbaa !19
  %422 = lshr i64 %416, 16
  %423 = and i64 %422, 255
  %424 = or disjoint i64 %423, 256
  %425 = getelementptr inbounds i64, ptr %4, i64 %424
  %426 = load i64, ptr %425, align 8, !tbaa !19
  %427 = add i64 %426, %421
  %428 = lshr i64 %416, 8
  %429 = and i64 %428, 255
  %430 = or disjoint i64 %429, 512
  %431 = getelementptr inbounds i64, ptr %4, i64 %430
  %432 = load i64, ptr %431, align 8, !tbaa !19
  %433 = xor i64 %427, %432
  %434 = and i64 %416, 255
  %435 = or disjoint i64 %434, 768
  %436 = getelementptr inbounds i64, ptr %4, i64 %435
  %437 = load i64, ptr %436, align 8, !tbaa !19
  %438 = add i64 %433, %437
  %439 = and i64 %438, 4294967295
  %440 = xor i64 %418, %439
  %441 = xor i64 %440, %7
  %442 = getelementptr inbounds i64, ptr %1, i64 15
  %443 = load i64, ptr %442, align 8, !tbaa !19
  %444 = lshr i64 %441, 24
  %445 = getelementptr inbounds i64, ptr %4, i64 %444
  %446 = load i64, ptr %445, align 8, !tbaa !19
  %447 = lshr i64 %441, 16
  %448 = and i64 %447, 255
  %449 = or disjoint i64 %448, 256
  %450 = getelementptr inbounds i64, ptr %4, i64 %449
  %451 = load i64, ptr %450, align 8, !tbaa !19
  %452 = add i64 %451, %446
  %453 = lshr i64 %441, 8
  %454 = and i64 %453, 255
  %455 = or disjoint i64 %454, 512
  %456 = getelementptr inbounds i64, ptr %4, i64 %455
  %457 = load i64, ptr %456, align 8, !tbaa !19
  %458 = xor i64 %452, %457
  %459 = and i64 %441, 255
  %460 = or disjoint i64 %459, 768
  %461 = getelementptr inbounds i64, ptr %4, i64 %460
  %462 = load i64, ptr %461, align 8, !tbaa !19
  %463 = add i64 %458, %462
  %464 = and i64 %463, 4294967295
  %465 = xor i64 %443, %464
  %466 = xor i64 %465, %416
  %467 = getelementptr inbounds i64, ptr %1, i64 14
  %468 = load i64, ptr %467, align 8, !tbaa !19
  %469 = lshr i64 %466, 24
  %470 = getelementptr inbounds i64, ptr %4, i64 %469
  %471 = load i64, ptr %470, align 8, !tbaa !19
  %472 = lshr i64 %466, 16
  %473 = and i64 %472, 255
  %474 = or disjoint i64 %473, 256
  %475 = getelementptr inbounds i64, ptr %4, i64 %474
  %476 = load i64, ptr %475, align 8, !tbaa !19
  %477 = add i64 %476, %471
  %478 = lshr i64 %466, 8
  %479 = and i64 %478, 255
  %480 = or disjoint i64 %479, 512
  %481 = getelementptr inbounds i64, ptr %4, i64 %480
  %482 = load i64, ptr %481, align 8, !tbaa !19
  %483 = xor i64 %477, %482
  %484 = and i64 %466, 255
  %485 = or disjoint i64 %484, 768
  %486 = getelementptr inbounds i64, ptr %4, i64 %485
  %487 = load i64, ptr %486, align 8, !tbaa !19
  %488 = add i64 %483, %487
  %489 = and i64 %488, 4294967295
  %490 = xor i64 %468, %489
  %491 = xor i64 %490, %441
  %492 = getelementptr inbounds i64, ptr %1, i64 13
  %493 = load i64, ptr %492, align 8, !tbaa !19
  %494 = lshr i64 %491, 24
  %495 = getelementptr inbounds i64, ptr %4, i64 %494
  %496 = load i64, ptr %495, align 8, !tbaa !19
  %497 = lshr i64 %491, 16
  %498 = and i64 %497, 255
  %499 = or disjoint i64 %498, 256
  %500 = getelementptr inbounds i64, ptr %4, i64 %499
  %501 = load i64, ptr %500, align 8, !tbaa !19
  %502 = add i64 %501, %496
  %503 = lshr i64 %491, 8
  %504 = and i64 %503, 255
  %505 = or disjoint i64 %504, 512
  %506 = getelementptr inbounds i64, ptr %4, i64 %505
  %507 = load i64, ptr %506, align 8, !tbaa !19
  %508 = xor i64 %502, %507
  %509 = and i64 %491, 255
  %510 = or disjoint i64 %509, 768
  %511 = getelementptr inbounds i64, ptr %4, i64 %510
  %512 = load i64, ptr %511, align 8, !tbaa !19
  %513 = add i64 %508, %512
  %514 = and i64 %513, 4294967295
  %515 = xor i64 %493, %514
  %516 = xor i64 %515, %466
  %517 = getelementptr inbounds i64, ptr %1, i64 12
  %518 = load i64, ptr %517, align 8, !tbaa !19
  %519 = lshr i64 %516, 24
  %520 = getelementptr inbounds i64, ptr %4, i64 %519
  %521 = load i64, ptr %520, align 8, !tbaa !19
  %522 = lshr i64 %516, 16
  %523 = and i64 %522, 255
  %524 = or disjoint i64 %523, 256
  %525 = getelementptr inbounds i64, ptr %4, i64 %524
  %526 = load i64, ptr %525, align 8, !tbaa !19
  %527 = add i64 %526, %521
  %528 = lshr i64 %516, 8
  %529 = and i64 %528, 255
  %530 = or disjoint i64 %529, 512
  %531 = getelementptr inbounds i64, ptr %4, i64 %530
  %532 = load i64, ptr %531, align 8, !tbaa !19
  %533 = xor i64 %527, %532
  %534 = and i64 %516, 255
  %535 = or disjoint i64 %534, 768
  %536 = getelementptr inbounds i64, ptr %4, i64 %535
  %537 = load i64, ptr %536, align 8, !tbaa !19
  %538 = add i64 %533, %537
  %539 = and i64 %538, 4294967295
  %540 = xor i64 %518, %539
  %541 = xor i64 %540, %491
  %542 = getelementptr inbounds i64, ptr %1, i64 11
  %543 = load i64, ptr %542, align 8, !tbaa !19
  %544 = lshr i64 %541, 24
  %545 = getelementptr inbounds i64, ptr %4, i64 %544
  %546 = load i64, ptr %545, align 8, !tbaa !19
  %547 = lshr i64 %541, 16
  %548 = and i64 %547, 255
  %549 = or disjoint i64 %548, 256
  %550 = getelementptr inbounds i64, ptr %4, i64 %549
  %551 = load i64, ptr %550, align 8, !tbaa !19
  %552 = add i64 %551, %546
  %553 = lshr i64 %541, 8
  %554 = and i64 %553, 255
  %555 = or disjoint i64 %554, 512
  %556 = getelementptr inbounds i64, ptr %4, i64 %555
  %557 = load i64, ptr %556, align 8, !tbaa !19
  %558 = xor i64 %552, %557
  %559 = and i64 %541, 255
  %560 = or disjoint i64 %559, 768
  %561 = getelementptr inbounds i64, ptr %4, i64 %560
  %562 = load i64, ptr %561, align 8, !tbaa !19
  %563 = add i64 %558, %562
  %564 = and i64 %563, 4294967295
  %565 = xor i64 %543, %564
  %566 = xor i64 %565, %516
  %567 = getelementptr inbounds i64, ptr %1, i64 10
  %568 = load i64, ptr %567, align 8, !tbaa !19
  %569 = lshr i64 %566, 24
  %570 = getelementptr inbounds i64, ptr %4, i64 %569
  %571 = load i64, ptr %570, align 8, !tbaa !19
  %572 = lshr i64 %566, 16
  %573 = and i64 %572, 255
  %574 = or disjoint i64 %573, 256
  %575 = getelementptr inbounds i64, ptr %4, i64 %574
  %576 = load i64, ptr %575, align 8, !tbaa !19
  %577 = add i64 %576, %571
  %578 = lshr i64 %566, 8
  %579 = and i64 %578, 255
  %580 = or disjoint i64 %579, 512
  %581 = getelementptr inbounds i64, ptr %4, i64 %580
  %582 = load i64, ptr %581, align 8, !tbaa !19
  %583 = xor i64 %577, %582
  %584 = and i64 %566, 255
  %585 = or disjoint i64 %584, 768
  %586 = getelementptr inbounds i64, ptr %4, i64 %585
  %587 = load i64, ptr %586, align 8, !tbaa !19
  %588 = add i64 %583, %587
  %589 = and i64 %588, 4294967295
  %590 = xor i64 %568, %589
  %591 = xor i64 %590, %541
  %592 = getelementptr inbounds i64, ptr %1, i64 9
  %593 = load i64, ptr %592, align 8, !tbaa !19
  %594 = lshr i64 %591, 24
  %595 = getelementptr inbounds i64, ptr %4, i64 %594
  %596 = load i64, ptr %595, align 8, !tbaa !19
  %597 = lshr i64 %591, 16
  %598 = and i64 %597, 255
  %599 = or disjoint i64 %598, 256
  %600 = getelementptr inbounds i64, ptr %4, i64 %599
  %601 = load i64, ptr %600, align 8, !tbaa !19
  %602 = add i64 %601, %596
  %603 = lshr i64 %591, 8
  %604 = and i64 %603, 255
  %605 = or disjoint i64 %604, 512
  %606 = getelementptr inbounds i64, ptr %4, i64 %605
  %607 = load i64, ptr %606, align 8, !tbaa !19
  %608 = xor i64 %602, %607
  %609 = and i64 %591, 255
  %610 = or disjoint i64 %609, 768
  %611 = getelementptr inbounds i64, ptr %4, i64 %610
  %612 = load i64, ptr %611, align 8, !tbaa !19
  %613 = add i64 %608, %612
  %614 = and i64 %613, 4294967295
  %615 = xor i64 %593, %614
  %616 = xor i64 %615, %566
  %617 = getelementptr inbounds i64, ptr %1, i64 8
  %618 = load i64, ptr %617, align 8, !tbaa !19
  %619 = lshr i64 %616, 24
  %620 = getelementptr inbounds i64, ptr %4, i64 %619
  %621 = load i64, ptr %620, align 8, !tbaa !19
  %622 = lshr i64 %616, 16
  %623 = and i64 %622, 255
  %624 = or disjoint i64 %623, 256
  %625 = getelementptr inbounds i64, ptr %4, i64 %624
  %626 = load i64, ptr %625, align 8, !tbaa !19
  %627 = add i64 %626, %621
  %628 = lshr i64 %616, 8
  %629 = and i64 %628, 255
  %630 = or disjoint i64 %629, 512
  %631 = getelementptr inbounds i64, ptr %4, i64 %630
  %632 = load i64, ptr %631, align 8, !tbaa !19
  %633 = xor i64 %627, %632
  %634 = and i64 %616, 255
  %635 = or disjoint i64 %634, 768
  %636 = getelementptr inbounds i64, ptr %4, i64 %635
  %637 = load i64, ptr %636, align 8, !tbaa !19
  %638 = add i64 %633, %637
  %639 = and i64 %638, 4294967295
  %640 = xor i64 %618, %639
  %641 = xor i64 %640, %591
  %642 = getelementptr inbounds i64, ptr %1, i64 7
  %643 = load i64, ptr %642, align 8, !tbaa !19
  %644 = lshr i64 %641, 24
  %645 = getelementptr inbounds i64, ptr %4, i64 %644
  %646 = load i64, ptr %645, align 8, !tbaa !19
  %647 = lshr i64 %641, 16
  %648 = and i64 %647, 255
  %649 = or disjoint i64 %648, 256
  %650 = getelementptr inbounds i64, ptr %4, i64 %649
  %651 = load i64, ptr %650, align 8, !tbaa !19
  %652 = add i64 %651, %646
  %653 = lshr i64 %641, 8
  %654 = and i64 %653, 255
  %655 = or disjoint i64 %654, 512
  %656 = getelementptr inbounds i64, ptr %4, i64 %655
  %657 = load i64, ptr %656, align 8, !tbaa !19
  %658 = xor i64 %652, %657
  %659 = and i64 %641, 255
  %660 = or disjoint i64 %659, 768
  %661 = getelementptr inbounds i64, ptr %4, i64 %660
  %662 = load i64, ptr %661, align 8, !tbaa !19
  %663 = add i64 %658, %662
  %664 = and i64 %663, 4294967295
  %665 = xor i64 %643, %664
  %666 = xor i64 %665, %616
  %667 = getelementptr inbounds i64, ptr %1, i64 6
  %668 = load i64, ptr %667, align 8, !tbaa !19
  %669 = lshr i64 %666, 24
  %670 = getelementptr inbounds i64, ptr %4, i64 %669
  %671 = load i64, ptr %670, align 8, !tbaa !19
  %672 = lshr i64 %666, 16
  %673 = and i64 %672, 255
  %674 = or disjoint i64 %673, 256
  %675 = getelementptr inbounds i64, ptr %4, i64 %674
  %676 = load i64, ptr %675, align 8, !tbaa !19
  %677 = add i64 %676, %671
  %678 = lshr i64 %666, 8
  %679 = and i64 %678, 255
  %680 = or disjoint i64 %679, 512
  %681 = getelementptr inbounds i64, ptr %4, i64 %680
  %682 = load i64, ptr %681, align 8, !tbaa !19
  %683 = xor i64 %677, %682
  %684 = and i64 %666, 255
  %685 = or disjoint i64 %684, 768
  %686 = getelementptr inbounds i64, ptr %4, i64 %685
  %687 = load i64, ptr %686, align 8, !tbaa !19
  %688 = add i64 %683, %687
  %689 = and i64 %688, 4294967295
  %690 = xor i64 %668, %689
  %691 = xor i64 %690, %641
  %692 = getelementptr inbounds i64, ptr %1, i64 5
  %693 = load i64, ptr %692, align 8, !tbaa !19
  %694 = lshr i64 %691, 24
  %695 = getelementptr inbounds i64, ptr %4, i64 %694
  %696 = load i64, ptr %695, align 8, !tbaa !19
  %697 = lshr i64 %691, 16
  %698 = and i64 %697, 255
  %699 = or disjoint i64 %698, 256
  %700 = getelementptr inbounds i64, ptr %4, i64 %699
  %701 = load i64, ptr %700, align 8, !tbaa !19
  %702 = add i64 %701, %696
  %703 = lshr i64 %691, 8
  %704 = and i64 %703, 255
  %705 = or disjoint i64 %704, 512
  %706 = getelementptr inbounds i64, ptr %4, i64 %705
  %707 = load i64, ptr %706, align 8, !tbaa !19
  %708 = xor i64 %702, %707
  %709 = and i64 %691, 255
  %710 = or disjoint i64 %709, 768
  %711 = getelementptr inbounds i64, ptr %4, i64 %710
  %712 = load i64, ptr %711, align 8, !tbaa !19
  %713 = add i64 %708, %712
  %714 = and i64 %713, 4294967295
  %715 = xor i64 %693, %714
  %716 = xor i64 %715, %666
  %717 = getelementptr inbounds i64, ptr %1, i64 4
  %718 = load i64, ptr %717, align 8, !tbaa !19
  %719 = lshr i64 %716, 24
  %720 = getelementptr inbounds i64, ptr %4, i64 %719
  %721 = load i64, ptr %720, align 8, !tbaa !19
  %722 = lshr i64 %716, 16
  %723 = and i64 %722, 255
  %724 = or disjoint i64 %723, 256
  %725 = getelementptr inbounds i64, ptr %4, i64 %724
  %726 = load i64, ptr %725, align 8, !tbaa !19
  %727 = add i64 %726, %721
  %728 = lshr i64 %716, 8
  %729 = and i64 %728, 255
  %730 = or disjoint i64 %729, 512
  %731 = getelementptr inbounds i64, ptr %4, i64 %730
  %732 = load i64, ptr %731, align 8, !tbaa !19
  %733 = xor i64 %727, %732
  %734 = and i64 %716, 255
  %735 = or disjoint i64 %734, 768
  %736 = getelementptr inbounds i64, ptr %4, i64 %735
  %737 = load i64, ptr %736, align 8, !tbaa !19
  %738 = add i64 %733, %737
  %739 = and i64 %738, 4294967295
  %740 = xor i64 %718, %739
  %741 = xor i64 %740, %691
  %742 = getelementptr inbounds i64, ptr %1, i64 3
  %743 = load i64, ptr %742, align 8, !tbaa !19
  %744 = lshr i64 %741, 24
  %745 = getelementptr inbounds i64, ptr %4, i64 %744
  %746 = load i64, ptr %745, align 8, !tbaa !19
  %747 = lshr i64 %741, 16
  %748 = and i64 %747, 255
  %749 = or disjoint i64 %748, 256
  %750 = getelementptr inbounds i64, ptr %4, i64 %749
  %751 = load i64, ptr %750, align 8, !tbaa !19
  %752 = add i64 %751, %746
  %753 = lshr i64 %741, 8
  %754 = and i64 %753, 255
  %755 = or disjoint i64 %754, 512
  %756 = getelementptr inbounds i64, ptr %4, i64 %755
  %757 = load i64, ptr %756, align 8, !tbaa !19
  %758 = xor i64 %752, %757
  %759 = and i64 %741, 255
  %760 = or disjoint i64 %759, 768
  %761 = getelementptr inbounds i64, ptr %4, i64 %760
  %762 = load i64, ptr %761, align 8, !tbaa !19
  %763 = add i64 %758, %762
  %764 = and i64 %763, 4294967295
  %765 = xor i64 %743, %764
  %766 = xor i64 %765, %716
  %767 = getelementptr inbounds i64, ptr %1, i64 2
  %768 = load i64, ptr %767, align 8, !tbaa !19
  %769 = lshr i64 %766, 24
  %770 = getelementptr inbounds i64, ptr %4, i64 %769
  %771 = load i64, ptr %770, align 8, !tbaa !19
  %772 = lshr i64 %766, 16
  %773 = and i64 %772, 255
  %774 = or disjoint i64 %773, 256
  %775 = getelementptr inbounds i64, ptr %4, i64 %774
  %776 = load i64, ptr %775, align 8, !tbaa !19
  %777 = add i64 %776, %771
  %778 = lshr i64 %766, 8
  %779 = and i64 %778, 255
  %780 = or disjoint i64 %779, 512
  %781 = getelementptr inbounds i64, ptr %4, i64 %780
  %782 = load i64, ptr %781, align 8, !tbaa !19
  %783 = xor i64 %777, %782
  %784 = and i64 %766, 255
  %785 = or disjoint i64 %784, 768
  %786 = getelementptr inbounds i64, ptr %4, i64 %785
  %787 = load i64, ptr %786, align 8, !tbaa !19
  %788 = add i64 %783, %787
  %789 = and i64 %788, 4294967295
  %790 = xor i64 %768, %789
  %791 = xor i64 %790, %741
  %792 = getelementptr inbounds i64, ptr %1, i64 1
  %793 = load i64, ptr %792, align 8, !tbaa !19
  %794 = lshr i64 %791, 24
  %795 = getelementptr inbounds i64, ptr %4, i64 %794
  %796 = load i64, ptr %795, align 8, !tbaa !19
  %797 = lshr i64 %791, 16
  %798 = and i64 %797, 255
  %799 = or disjoint i64 %798, 256
  %800 = getelementptr inbounds i64, ptr %4, i64 %799
  %801 = load i64, ptr %800, align 8, !tbaa !19
  %802 = add i64 %801, %796
  %803 = lshr i64 %791, 8
  %804 = and i64 %803, 255
  %805 = or disjoint i64 %804, 512
  %806 = getelementptr inbounds i64, ptr %4, i64 %805
  %807 = load i64, ptr %806, align 8, !tbaa !19
  %808 = xor i64 %802, %807
  %809 = and i64 %791, 255
  %810 = or disjoint i64 %809, 768
  %811 = getelementptr inbounds i64, ptr %4, i64 %810
  %812 = load i64, ptr %811, align 8, !tbaa !19
  %813 = add i64 %808, %812
  %814 = and i64 %813, 4294967295
  %815 = xor i64 %793, %814
  %816 = xor i64 %815, %766
  br label %817

817:                                              ; preds = %413, %9
  %818 = phi ptr [ %1, %413 ], [ %412, %9 ]
  %819 = phi i64 [ %791, %413 ], [ %386, %9 ]
  %820 = phi i64 [ %816, %413 ], [ %411, %9 ]
  %821 = load i64, ptr %818, align 8, !tbaa !19
  %822 = xor i64 %821, %819
  %823 = and i64 %820, 4294967295
  store i64 %823, ptr %6, align 8, !tbaa !19
  %824 = and i64 %822, 4294967295
  store i64 %824, ptr %0, align 8, !tbaa !19
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @BF_ofb64_encrypt(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1, i64 noundef %2, ptr noundef %3, ptr nocapture noundef %4, ptr nocapture noundef %5) local_unnamed_addr #0 {
  %7 = alloca [8 x i8], align 1
  %8 = alloca [2 x i64], align 16
  %9 = load i32, ptr %5, align 4, !tbaa !7
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #11
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %8) #11
  %10 = getelementptr inbounds i8, ptr %4, i64 1
  %11 = load i8, ptr %4, align 1, !tbaa !13
  %12 = zext i8 %11 to i64
  %13 = shl nuw nsw i64 %12, 24
  %14 = getelementptr inbounds i8, ptr %4, i64 2
  %15 = load i8, ptr %10, align 1, !tbaa !13
  %16 = zext i8 %15 to i64
  %17 = shl nuw nsw i64 %16, 16
  %18 = or disjoint i64 %17, %13
  %19 = getelementptr inbounds i8, ptr %4, i64 3
  %20 = load i8, ptr %14, align 1, !tbaa !13
  %21 = zext i8 %20 to i64
  %22 = shl nuw nsw i64 %21, 8
  %23 = getelementptr inbounds i8, ptr %4, i64 4
  %24 = load i8, ptr %19, align 1, !tbaa !13
  %25 = zext i8 %24 to i64
  %26 = or disjoint i64 %18, %22
  %27 = or disjoint i64 %26, %25
  %28 = getelementptr inbounds i8, ptr %4, i64 5
  %29 = load i8, ptr %23, align 1, !tbaa !13
  %30 = zext i8 %29 to i64
  %31 = shl nuw nsw i64 %30, 24
  %32 = getelementptr inbounds i8, ptr %4, i64 6
  %33 = load i8, ptr %28, align 1, !tbaa !13
  %34 = zext i8 %33 to i64
  %35 = shl nuw nsw i64 %34, 16
  %36 = or disjoint i64 %35, %31
  %37 = getelementptr inbounds i8, ptr %4, i64 7
  %38 = load i8, ptr %32, align 1, !tbaa !13
  %39 = zext i8 %38 to i64
  %40 = shl nuw nsw i64 %39, 8
  %41 = load i8, ptr %37, align 1, !tbaa !13
  %42 = zext i8 %41 to i64
  %43 = or disjoint i64 %36, %40
  %44 = or disjoint i64 %43, %42
  store i64 %27, ptr %8, align 16, !tbaa !19
  %45 = getelementptr inbounds [2 x i64], ptr %8, i64 0, i64 1
  store i64 %44, ptr %45, align 8, !tbaa !19
  %46 = getelementptr inbounds i8, ptr %7, i64 1
  store i8 %11, ptr %7, align 1, !tbaa !13
  %47 = getelementptr inbounds i8, ptr %7, i64 2
  store i8 %15, ptr %46, align 1, !tbaa !13
  %48 = getelementptr inbounds i8, ptr %7, i64 3
  store i8 %20, ptr %47, align 1, !tbaa !13
  %49 = getelementptr inbounds i8, ptr %7, i64 4
  store i8 %24, ptr %48, align 1, !tbaa !13
  %50 = getelementptr inbounds i8, ptr %7, i64 5
  store i8 %29, ptr %49, align 1, !tbaa !13
  %51 = getelementptr inbounds i8, ptr %7, i64 6
  store i8 %33, ptr %50, align 1, !tbaa !13
  %52 = getelementptr inbounds i8, ptr %7, i64 7
  store i8 %38, ptr %51, align 1, !tbaa !13
  store i8 %41, ptr %52, align 1, !tbaa !13
  %53 = icmp eq i64 %2, 0
  br i1 %53, label %94, label %54

54:                                               ; preds = %80, %6
  %55 = phi i64 [ %60, %80 ], [ %2, %6 ]
  %56 = phi i32 [ %81, %80 ], [ 0, %6 ]
  %57 = phi i32 [ %90, %80 ], [ %9, %6 ]
  %58 = phi ptr [ %82, %80 ], [ %0, %6 ]
  %59 = phi ptr [ %88, %80 ], [ %1, %6 ]
  %60 = add nsw i64 %55, -1
  %61 = icmp eq i32 %57, 0
  br i1 %61, label %62, label %80

62:                                               ; preds = %54
  call void @BF_encrypt(ptr noundef nonnull %8, ptr noundef %3, i32 noundef 1) #11
  %63 = load i64, ptr %8, align 16, !tbaa !19
  %64 = lshr i64 %63, 24
  %65 = trunc i64 %64 to i8
  store i8 %65, ptr %7, align 1, !tbaa !13
  %66 = lshr i64 %63, 16
  %67 = trunc i64 %66 to i8
  store i8 %67, ptr %46, align 1, !tbaa !13
  %68 = lshr i64 %63, 8
  %69 = trunc i64 %68 to i8
  store i8 %69, ptr %47, align 1, !tbaa !13
  %70 = trunc i64 %63 to i8
  store i8 %70, ptr %48, align 1, !tbaa !13
  %71 = load i64, ptr %45, align 8, !tbaa !19
  %72 = lshr i64 %71, 24
  %73 = trunc i64 %72 to i8
  store i8 %73, ptr %49, align 1, !tbaa !13
  %74 = lshr i64 %71, 16
  %75 = trunc i64 %74 to i8
  store i8 %75, ptr %50, align 1, !tbaa !13
  %76 = lshr i64 %71, 8
  %77 = trunc i64 %76 to i8
  store i8 %77, ptr %51, align 1, !tbaa !13
  %78 = trunc i64 %71 to i8
  store i8 %78, ptr %52, align 1, !tbaa !13
  %79 = add nsw i32 %56, 1
  br label %80

80:                                               ; preds = %62, %54
  %81 = phi i32 [ %79, %62 ], [ %56, %54 ]
  %82 = getelementptr inbounds i8, ptr %58, i64 1
  %83 = load i8, ptr %58, align 1, !tbaa !13
  %84 = sext i32 %57 to i64
  %85 = getelementptr inbounds [8 x i8], ptr %7, i64 0, i64 %84
  %86 = load i8, ptr %85, align 1, !tbaa !13
  %87 = xor i8 %86, %83
  %88 = getelementptr inbounds i8, ptr %59, i64 1
  store i8 %87, ptr %59, align 1, !tbaa !13
  %89 = add nsw i32 %57, 1
  %90 = and i32 %89, 7
  %91 = icmp eq i64 %60, 0
  br i1 %91, label %92, label %54, !llvm.loop !25

92:                                               ; preds = %80
  %93 = icmp eq i32 %81, 0
  br label %94

94:                                               ; preds = %92, %6
  %95 = phi i32 [ %9, %6 ], [ %90, %92 ]
  %96 = phi i1 [ true, %6 ], [ %93, %92 ]
  br i1 %96, label %114, label %97

97:                                               ; preds = %94
  %98 = load i64, ptr %8, align 16, !tbaa !19
  %99 = load i64, ptr %45, align 8, !tbaa !19
  %100 = lshr i64 %98, 24
  %101 = trunc i64 %100 to i8
  store i8 %101, ptr %4, align 1, !tbaa !13
  %102 = lshr i64 %98, 16
  %103 = trunc i64 %102 to i8
  store i8 %103, ptr %10, align 1, !tbaa !13
  %104 = lshr i64 %98, 8
  %105 = trunc i64 %104 to i8
  store i8 %105, ptr %14, align 1, !tbaa !13
  %106 = trunc i64 %98 to i8
  store i8 %106, ptr %19, align 1, !tbaa !13
  %107 = lshr i64 %99, 24
  %108 = trunc i64 %107 to i8
  store i8 %108, ptr %23, align 1, !tbaa !13
  %109 = lshr i64 %99, 16
  %110 = trunc i64 %109 to i8
  store i8 %110, ptr %28, align 1, !tbaa !13
  %111 = lshr i64 %99, 8
  %112 = trunc i64 %111 to i8
  store i8 %112, ptr %32, align 1, !tbaa !13
  %113 = trunc i64 %99 to i8
  store i8 %113, ptr %37, align 1, !tbaa !13
  br label %114

114:                                              ; preds = %97, %94
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %8, i8 0, i64 16, i1 false)
  store i32 %95, ptr %5, align 4, !tbaa !7
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %8) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #11
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @BF_set_key(ptr noundef %0, i32 noundef %1, ptr noundef readonly %2) local_unnamed_addr #0 {
  %4 = alloca [2 x i64], align 16
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #11
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(8336) %0, ptr noundef nonnull align 8 dereferenceable(8336) @bf_init, i64 8336, i1 false)
  %5 = tail call i32 @llvm.smin.i32(i32 %1, i32 72)
  %6 = sext i32 %5 to i64
  %7 = getelementptr inbounds i8, ptr %2, i64 %6
  br label %8

8:                                                ; preds = %8, %3
  %9 = phi i64 [ 0, %3 ], [ %40, %8 ]
  %10 = phi ptr [ %2, %3 ], [ %36, %8 ]
  %11 = getelementptr inbounds i8, ptr %10, i64 1
  %12 = load i8, ptr %10, align 1, !tbaa !13
  %13 = zext i8 %12 to i64
  %14 = icmp ult ptr %11, %7
  %15 = select i1 %14, ptr %11, ptr %2
  %16 = getelementptr inbounds i8, ptr %15, i64 1
  %17 = load i8, ptr %15, align 1, !tbaa !13
  %18 = zext i8 %17 to i64
  %19 = icmp ult ptr %16, %7
  %20 = select i1 %19, ptr %16, ptr %2
  %21 = shl nuw nsw i64 %13, 16
  %22 = shl nuw nsw i64 %18, 8
  %23 = or disjoint i64 %22, %21
  %24 = getelementptr inbounds i8, ptr %20, i64 1
  %25 = load i8, ptr %20, align 1, !tbaa !13
  %26 = zext i8 %25 to i64
  %27 = or disjoint i64 %23, %26
  %28 = icmp ult ptr %24, %7
  %29 = select i1 %28, ptr %24, ptr %2
  %30 = shl nuw nsw i64 %27, 8
  %31 = getelementptr inbounds i8, ptr %29, i64 1
  %32 = load i8, ptr %29, align 1, !tbaa !13
  %33 = zext i8 %32 to i64
  %34 = or disjoint i64 %30, %33
  %35 = icmp ult ptr %31, %7
  %36 = select i1 %35, ptr %31, ptr %2
  %37 = getelementptr inbounds i64, ptr %0, i64 %9
  %38 = load i64, ptr %37, align 8, !tbaa !19
  %39 = xor i64 %34, %38
  store i64 %39, ptr %37, align 8, !tbaa !19
  %40 = add nuw nsw i64 %9, 1
  %41 = icmp eq i64 %40, 18
  br i1 %41, label %42, label %8, !llvm.loop !26

42:                                               ; preds = %8
  %43 = getelementptr inbounds [2 x i64], ptr %4, i64 0, i64 1
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %4, i8 0, i64 16, i1 false)
  br label %44

44:                                               ; preds = %44, %42
  %45 = phi i64 [ 0, %42 ], [ %51, %44 ]
  call void @BF_encrypt(ptr noundef nonnull %4, ptr noundef %0, i32 noundef 1) #11
  %46 = load i64, ptr %4, align 16, !tbaa !19
  %47 = getelementptr inbounds i64, ptr %0, i64 %45
  store i64 %46, ptr %47, align 8, !tbaa !19
  %48 = load i64, ptr %43, align 8, !tbaa !19
  %49 = or disjoint i64 %45, 1
  %50 = getelementptr inbounds i64, ptr %0, i64 %49
  store i64 %48, ptr %50, align 8, !tbaa !19
  %51 = add nuw nsw i64 %45, 2
  %52 = icmp ult i64 %45, 16
  br i1 %52, label %44, label %53, !llvm.loop !27

53:                                               ; preds = %44
  %54 = getelementptr inbounds %struct.bf_key_st, ptr %0, i64 0, i32 1
  br label %55

55:                                               ; preds = %55, %53
  %56 = phi i64 [ 0, %53 ], [ %62, %55 ]
  call void @BF_encrypt(ptr noundef nonnull %4, ptr noundef %0, i32 noundef 1) #11
  %57 = load i64, ptr %4, align 16, !tbaa !19
  %58 = getelementptr inbounds i64, ptr %54, i64 %56
  store i64 %57, ptr %58, align 8, !tbaa !19
  %59 = load i64, ptr %43, align 8, !tbaa !19
  %60 = or disjoint i64 %56, 1
  %61 = getelementptr inbounds i64, ptr %54, i64 %60
  store i64 %59, ptr %61, align 8, !tbaa !19
  %62 = add nuw nsw i64 %56, 2
  %63 = icmp ult i64 %56, 1022
  br i1 %63, label %55, label %64, !llvm.loop !28

64:                                               ; preds = %55
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #11
  ret void
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #9

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #10

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #3 = { nofree nounwind }
attributes #4 = { noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree nosync nounwind willreturn memory(none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #10 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #11 = { nounwind }
attributes #12 = { cold }
attributes #13 = { noreturn nounwind }
attributes #14 = { nounwind willreturn memory(none) }

!llvm.ident = !{!0, !0, !0, !0, !0, !0, !0}
!llvm.module.flags = !{!1, !2, !3, !4, !5, !6}

!0 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!1 = !{i32 1, !"wchar_size", i32 4}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"PIE Level", i32 2}
!4 = !{i32 7, !"uwtable", i32 2}
!5 = !{i32 1, !"ThinLTO", i32 0}
!6 = !{i32 1, !"EnableSplitLTOUnit", i32 1}
!7 = !{!8, !8, i64 0}
!8 = !{!"int", !9, i64 0}
!9 = !{!"omnipotent char", !10, i64 0}
!10 = !{!"Simple C/C++ TBAA"}
!11 = !{!12, !12, i64 0}
!12 = !{!"any pointer", !9, i64 0}
!13 = !{!9, !9, i64 0}
!14 = distinct !{!14, !15}
!15 = !{!"llvm.loop.unroll.disable"}
!16 = distinct !{!16, !15}
!17 = distinct !{!17, !15}
!18 = distinct !{!18, !15}
!19 = !{!20, !20, i64 0}
!20 = !{!"long", !9, i64 0}
!21 = distinct !{!21, !15}
!22 = distinct !{!22, !15}
!23 = distinct !{!23, !15}
!24 = distinct !{!24, !15}
!25 = distinct !{!25, !15}
!26 = distinct !{!26, !15}
!27 = distinct !{!27, !15}
!28 = distinct !{!28, !15}
