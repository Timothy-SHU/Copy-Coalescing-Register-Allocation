; ModuleID = 'utf8.c'
source_filename = "utf8.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.sv = type { ptr, i32, i32, %union.anon }
%union.anon = type { ptr }
%struct.op = type { ptr, ptr, ptr, i64, i16, i8, i8 }
%struct.xpv = type { ptr, %union._xmgu, i64, %union.anon.0 }
%union._xmgu = type { ptr }
%union.anon.0 = type { i64 }
%struct.stackinfo = type { ptr, ptr, ptr, ptr, i32, i32, i32, i32 }
%struct.xpvav = type { ptr, %union._xmgu, i64, i64, ptr }
%struct.av = type { ptr, i32, i32, %union.anon.1 }
%union.anon.1 = type { ptr }
%struct.yy_parser = type { ptr, %union.YYSTYPE, i32, i32, i32, i32, ptr, ptr, i32, i32, ptr, ptr, i8, i8, i8, i8, i32, ptr, ptr, ptr, i16, i16, i32, ptr, i32, i32, i8, i8, i8, i8, i32, %struct._sublex_info, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i16, i8, i8, ptr, ptr, ptr, i8, [5 x %union.YYSTYPE], [5 x i32], i32, ptr, [256 x i8], i32, i32, i8, i8, i8 }
%union.YYSTYPE = type { ptr }
%struct._sublex_info = type { i8, i16, ptr, ptr }
%struct.gv = type { ptr, i32, i32, %union.anon.2 }
%union.anon.2 = type { ptr }
%struct.xpviv = type { ptr, %union._xmgu, i64, %union.anon.3, %union._xivu }
%union.anon.3 = type { i64 }
%union._xivu = type { i64 }
%struct.xpvnv = type { ptr, %union._xmgu, i64, %union.anon.4, %union._xivu, %union._xnvu }
%union.anon.4 = type { i64 }
%union._xnvu = type { double }
%struct.xpvuv = type { ptr, %union._xmgu, i64, %union.anon.5, %union._xivu }
%union.anon.5 = type { i64 }
%struct.xpvinvlist = type { ptr, %union._xmgu, i64, %union.anon.8, i64, i64, i8 }
%union.anon.8 = type { i64 }
%struct.hv = type { ptr, i32, i32, %union.anon.6 }
%union.anon.6 = type { ptr }
%struct.p5rx = type { ptr, i32, i32, %union.anon.9 }
%union.anon.9 = type { ptr }
%struct.regexp = type { ptr, %union._xmgu, i64, %union.anon.7, ptr, ptr, ptr, i32, i64, i64, i64, ptr, i32, i32, ptr, i32, i32, ptr, ptr, ptr, i64, i64, i64, i64, i16, ptr }
%union.anon.7 = type { i64 }

@.str = private unnamed_addr constant [25 x i8] c"UTF-16 surrogate U+%04lX\00", align 1
@.str.1 = private unnamed_addr constant [55 x i8] c"Code point 0x%04lX is not Unicode, may not be portable\00", align 1
@.str.2 = private unnamed_addr constant [62 x i8] c"Unicode non-character U+%04lX is illegal for open interchange\00", align 1
@PL_utf8skip = external local_unnamed_addr constant [0 x i8], align 1
@.str.3 = private unnamed_addr constant [26 x i8] c"Malformed UTF-8 character\00", align 1
@.str.4 = private unnamed_addr constant [18 x i8] c"%s (empty string)\00", align 1
@.str.5 = private unnamed_addr constant [71 x i8] c"%s (unexpected continuation byte 0x%02x, with no preceding start byte)\00", align 1
@.str.6 = private unnamed_addr constant [82 x i8] c"%s (unexpected non-continuation byte 0x%02x, immediately after start byte 0x%02x)\00", align 1
@.str.7 = private unnamed_addr constant [98 x i8] c"%s (unexpected non-continuation byte 0x%02x, %d bytes after start byte 0x%02x, expected %d bytes)\00", align 1
@.str.8 = private unnamed_addr constant [49 x i8] c"%s (%d byte%s, need %d, after start byte 0x%02x)\00", align 1
@.str.9 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.10 = private unnamed_addr constant [2 x i8] c"s\00", align 1
@.str.11 = private unnamed_addr constant [54 x i8] c"%s (overflow at byte 0x%02x, after start byte 0x%02x)\00", align 1
@.str.12 = private unnamed_addr constant [50 x i8] c"Code point 0x%lX is not Unicode, and not portable\00", align 1
@PL_op = external local_unnamed_addr global ptr, align 8
@.str.13 = private unnamed_addr constant [9 x i8] c"%s in %s\00", align 1
@PL_op_desc = external local_unnamed_addr constant [0 x ptr], align 8
@.str.14 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@unees = internal constant [53 x i8] c"Malformed UTF-8 character (unexpected end of string)\00", align 16
@.str.15 = private unnamed_addr constant [109 x i8] c"Malformed UTF-8 character (unexpected non-continuation byte 0x%02x, immediately after start byte 0x%02x)%s%s\00", align 1
@.str.16 = private unnamed_addr constant [5 x i8] c" in \00", align 1
@.str.17 = private unnamed_addr constant [38 x i8] c"panic: utf16_to_utf8: odd bytelen %lu\00", align 1
@.str.18 = private unnamed_addr constant [27 x i8] c"Malformed UTF-16 surrogate\00", align 1
@.str.19 = private unnamed_addr constant [47 x i8] c"panic: utf16_to_utf8_reversed: odd bytelen %lu\00", align 1
@PL_utf8_idstart = external global ptr, align 8
@.str.20 = private unnamed_addr constant [8 x i8] c"IdStart\00", align 1
@PL_mod_latin1_uc = external local_unnamed_addr constant [0 x i8], align 1
@.str.21 = private unnamed_addr constant [64 x i8] c"panic: to_upper_title_latin1 did not expect '%c' to map to '%c'\00", align 1
@PL_utf8_toupper = external global ptr, align 8
@.str.22 = private unnamed_addr constant [5 x i8] c"ToUc\00", align 1
@PL_utf8_totitle = external global ptr, align 8
@.str.23 = private unnamed_addr constant [5 x i8] c"ToTc\00", align 1
@PL_utf8_tolower = external global ptr, align 8
@.str.24 = private unnamed_addr constant [5 x i8] c"ToLc\00", align 1
@PL_latin1_lc = external local_unnamed_addr constant [0 x i8], align 1
@PL_in_utf8_CTYPE_locale = external local_unnamed_addr global i8, align 1
@PL_utf8_tofold = external global ptr, align 8
@.str.26 = private unnamed_addr constant [5 x i8] c"ToCf\00", align 1
@PL_utf8_swash_ptrs = external global [10 x ptr], align 16
@swash_property_names = internal unnamed_addr constant [10 x ptr] [ptr @.str.70, ptr @.str.71, ptr @.str.72, ptr @.str.73, ptr @.str.74, ptr @.str.75, ptr @.str.76, ptr @.str.77, ptr @.str.78, ptr @.str.79], align 16
@PL_XPosix_ptrs = external local_unnamed_addr global [16 x ptr], align 16
@PL_utf8_perl_idstart = external global ptr, align 8
@_Perl_IDStart_invlist = internal constant [1098 x i64] [i64 1095, i64 148565664, i64 1, i64 0, i64 65, i64 91, i64 95, i64 96, i64 97, i64 123, i64 170, i64 171, i64 181, i64 182, i64 186, i64 187, i64 192, i64 215, i64 216, i64 247, i64 248, i64 706, i64 710, i64 722, i64 736, i64 741, i64 748, i64 749, i64 750, i64 751, i64 880, i64 885, i64 886, i64 888, i64 891, i64 894, i64 895, i64 896, i64 902, i64 903, i64 904, i64 907, i64 908, i64 909, i64 910, i64 930, i64 931, i64 1014, i64 1015, i64 1154, i64 1162, i64 1328, i64 1329, i64 1367, i64 1369, i64 1370, i64 1377, i64 1416, i64 1488, i64 1515, i64 1520, i64 1523, i64 1568, i64 1611, i64 1646, i64 1648, i64 1649, i64 1748, i64 1749, i64 1750, i64 1765, i64 1767, i64 1774, i64 1776, i64 1786, i64 1789, i64 1791, i64 1792, i64 1808, i64 1809, i64 1810, i64 1840, i64 1869, i64 1958, i64 1969, i64 1970, i64 1994, i64 2027, i64 2036, i64 2038, i64 2042, i64 2043, i64 2048, i64 2070, i64 2074, i64 2075, i64 2084, i64 2085, i64 2088, i64 2089, i64 2112, i64 2137, i64 2208, i64 2227, i64 2308, i64 2362, i64 2365, i64 2366, i64 2384, i64 2385, i64 2392, i64 2402, i64 2417, i64 2433, i64 2437, i64 2445, i64 2447, i64 2449, i64 2451, i64 2473, i64 2474, i64 2481, i64 2482, i64 2483, i64 2486, i64 2490, i64 2493, i64 2494, i64 2510, i64 2511, i64 2524, i64 2526, i64 2527, i64 2530, i64 2544, i64 2546, i64 2565, i64 2571, i64 2575, i64 2577, i64 2579, i64 2601, i64 2602, i64 2609, i64 2610, i64 2612, i64 2613, i64 2615, i64 2616, i64 2618, i64 2649, i64 2653, i64 2654, i64 2655, i64 2674, i64 2677, i64 2693, i64 2702, i64 2703, i64 2706, i64 2707, i64 2729, i64 2730, i64 2737, i64 2738, i64 2740, i64 2741, i64 2746, i64 2749, i64 2750, i64 2768, i64 2769, i64 2784, i64 2786, i64 2821, i64 2829, i64 2831, i64 2833, i64 2835, i64 2857, i64 2858, i64 2865, i64 2866, i64 2868, i64 2869, i64 2874, i64 2877, i64 2878, i64 2908, i64 2910, i64 2911, i64 2914, i64 2929, i64 2930, i64 2947, i64 2948, i64 2949, i64 2955, i64 2958, i64 2961, i64 2962, i64 2966, i64 2969, i64 2971, i64 2972, i64 2973, i64 2974, i64 2976, i64 2979, i64 2981, i64 2984, i64 2987, i64 2990, i64 3002, i64 3024, i64 3025, i64 3077, i64 3085, i64 3086, i64 3089, i64 3090, i64 3113, i64 3114, i64 3130, i64 3133, i64 3134, i64 3160, i64 3162, i64 3168, i64 3170, i64 3205, i64 3213, i64 3214, i64 3217, i64 3218, i64 3241, i64 3242, i64 3252, i64 3253, i64 3258, i64 3261, i64 3262, i64 3294, i64 3295, i64 3296, i64 3298, i64 3313, i64 3315, i64 3333, i64 3341, i64 3342, i64 3345, i64 3346, i64 3387, i64 3389, i64 3390, i64 3406, i64 3407, i64 3424, i64 3426, i64 3450, i64 3456, i64 3461, i64 3479, i64 3482, i64 3506, i64 3507, i64 3516, i64 3517, i64 3518, i64 3520, i64 3527, i64 3585, i64 3633, i64 3634, i64 3635, i64 3648, i64 3655, i64 3713, i64 3715, i64 3716, i64 3717, i64 3719, i64 3721, i64 3722, i64 3723, i64 3725, i64 3726, i64 3732, i64 3736, i64 3737, i64 3744, i64 3745, i64 3748, i64 3749, i64 3750, i64 3751, i64 3752, i64 3754, i64 3756, i64 3757, i64 3761, i64 3762, i64 3763, i64 3773, i64 3774, i64 3776, i64 3781, i64 3782, i64 3783, i64 3804, i64 3808, i64 3840, i64 3841, i64 3904, i64 3912, i64 3913, i64 3949, i64 3976, i64 3981, i64 4096, i64 4139, i64 4159, i64 4160, i64 4176, i64 4182, i64 4186, i64 4190, i64 4193, i64 4194, i64 4197, i64 4199, i64 4206, i64 4209, i64 4213, i64 4226, i64 4238, i64 4239, i64 4256, i64 4294, i64 4295, i64 4296, i64 4301, i64 4302, i64 4304, i64 4347, i64 4348, i64 4681, i64 4682, i64 4686, i64 4688, i64 4695, i64 4696, i64 4697, i64 4698, i64 4702, i64 4704, i64 4745, i64 4746, i64 4750, i64 4752, i64 4785, i64 4786, i64 4790, i64 4792, i64 4799, i64 4800, i64 4801, i64 4802, i64 4806, i64 4808, i64 4823, i64 4824, i64 4881, i64 4882, i64 4886, i64 4888, i64 4955, i64 4992, i64 5008, i64 5024, i64 5109, i64 5121, i64 5741, i64 5743, i64 5760, i64 5761, i64 5787, i64 5792, i64 5867, i64 5870, i64 5881, i64 5888, i64 5901, i64 5902, i64 5906, i64 5920, i64 5938, i64 5952, i64 5970, i64 5984, i64 5997, i64 5998, i64 6001, i64 6016, i64 6068, i64 6103, i64 6104, i64 6108, i64 6109, i64 6176, i64 6264, i64 6272, i64 6313, i64 6314, i64 6315, i64 6320, i64 6390, i64 6400, i64 6431, i64 6480, i64 6510, i64 6512, i64 6517, i64 6528, i64 6572, i64 6593, i64 6600, i64 6656, i64 6679, i64 6688, i64 6741, i64 6823, i64 6824, i64 6917, i64 6964, i64 6981, i64 6988, i64 7043, i64 7073, i64 7086, i64 7088, i64 7098, i64 7142, i64 7168, i64 7204, i64 7245, i64 7248, i64 7258, i64 7294, i64 7401, i64 7405, i64 7406, i64 7410, i64 7413, i64 7415, i64 7424, i64 7616, i64 7680, i64 7958, i64 7960, i64 7966, i64 7968, i64 8006, i64 8008, i64 8014, i64 8016, i64 8024, i64 8025, i64 8026, i64 8027, i64 8028, i64 8029, i64 8030, i64 8031, i64 8062, i64 8064, i64 8117, i64 8118, i64 8125, i64 8126, i64 8127, i64 8130, i64 8133, i64 8134, i64 8141, i64 8144, i64 8148, i64 8150, i64 8156, i64 8160, i64 8173, i64 8178, i64 8181, i64 8182, i64 8189, i64 8305, i64 8306, i64 8319, i64 8320, i64 8336, i64 8349, i64 8450, i64 8451, i64 8455, i64 8456, i64 8458, i64 8468, i64 8469, i64 8470, i64 8473, i64 8478, i64 8484, i64 8485, i64 8486, i64 8487, i64 8488, i64 8489, i64 8490, i64 8494, i64 8495, i64 8506, i64 8508, i64 8512, i64 8517, i64 8522, i64 8526, i64 8527, i64 8544, i64 8585, i64 11264, i64 11311, i64 11312, i64 11359, i64 11360, i64 11493, i64 11499, i64 11503, i64 11506, i64 11508, i64 11520, i64 11558, i64 11559, i64 11560, i64 11565, i64 11566, i64 11568, i64 11624, i64 11631, i64 11632, i64 11648, i64 11671, i64 11680, i64 11687, i64 11688, i64 11695, i64 11696, i64 11703, i64 11704, i64 11711, i64 11712, i64 11719, i64 11720, i64 11727, i64 11728, i64 11735, i64 11736, i64 11743, i64 12293, i64 12296, i64 12321, i64 12330, i64 12337, i64 12342, i64 12344, i64 12349, i64 12353, i64 12439, i64 12445, i64 12448, i64 12449, i64 12539, i64 12540, i64 12544, i64 12549, i64 12590, i64 12593, i64 12687, i64 12704, i64 12731, i64 12784, i64 12800, i64 13312, i64 19894, i64 19968, i64 40909, i64 40960, i64 42125, i64 42192, i64 42238, i64 42240, i64 42509, i64 42512, i64 42528, i64 42538, i64 42540, i64 42560, i64 42607, i64 42623, i64 42654, i64 42656, i64 42736, i64 42775, i64 42784, i64 42786, i64 42889, i64 42891, i64 42895, i64 42896, i64 42926, i64 42928, i64 42930, i64 42999, i64 43010, i64 43011, i64 43014, i64 43015, i64 43019, i64 43020, i64 43043, i64 43072, i64 43124, i64 43138, i64 43188, i64 43250, i64 43256, i64 43259, i64 43260, i64 43274, i64 43302, i64 43312, i64 43335, i64 43360, i64 43389, i64 43396, i64 43443, i64 43471, i64 43472, i64 43488, i64 43493, i64 43494, i64 43504, i64 43514, i64 43519, i64 43520, i64 43561, i64 43584, i64 43587, i64 43588, i64 43596, i64 43616, i64 43639, i64 43642, i64 43643, i64 43646, i64 43696, i64 43697, i64 43698, i64 43701, i64 43703, i64 43705, i64 43710, i64 43712, i64 43713, i64 43714, i64 43715, i64 43739, i64 43742, i64 43744, i64 43755, i64 43762, i64 43765, i64 43777, i64 43783, i64 43785, i64 43791, i64 43793, i64 43799, i64 43808, i64 43815, i64 43816, i64 43823, i64 43824, i64 43867, i64 43868, i64 43872, i64 43876, i64 43878, i64 43968, i64 44003, i64 44032, i64 55204, i64 55216, i64 55239, i64 55243, i64 55292, i64 63744, i64 64110, i64 64112, i64 64218, i64 64256, i64 64263, i64 64275, i64 64280, i64 64285, i64 64286, i64 64287, i64 64297, i64 64298, i64 64311, i64 64312, i64 64317, i64 64318, i64 64319, i64 64320, i64 64322, i64 64323, i64 64325, i64 64326, i64 64434, i64 64467, i64 64606, i64 64612, i64 64830, i64 64848, i64 64912, i64 64914, i64 64968, i64 65008, i64 65018, i64 65137, i64 65138, i64 65139, i64 65140, i64 65143, i64 65144, i64 65145, i64 65146, i64 65147, i64 65148, i64 65149, i64 65150, i64 65151, i64 65277, i64 65313, i64 65339, i64 65345, i64 65371, i64 65382, i64 65438, i64 65440, i64 65471, i64 65474, i64 65480, i64 65482, i64 65488, i64 65490, i64 65496, i64 65498, i64 65501, i64 65536, i64 65548, i64 65549, i64 65575, i64 65576, i64 65595, i64 65596, i64 65598, i64 65599, i64 65614, i64 65616, i64 65630, i64 65664, i64 65787, i64 65856, i64 65909, i64 66176, i64 66205, i64 66208, i64 66257, i64 66304, i64 66336, i64 66352, i64 66379, i64 66384, i64 66422, i64 66432, i64 66462, i64 66464, i64 66500, i64 66504, i64 66512, i64 66513, i64 66518, i64 66560, i64 66718, i64 66816, i64 66856, i64 66864, i64 66916, i64 67072, i64 67383, i64 67392, i64 67414, i64 67424, i64 67432, i64 67584, i64 67590, i64 67592, i64 67593, i64 67594, i64 67638, i64 67639, i64 67641, i64 67644, i64 67645, i64 67647, i64 67670, i64 67680, i64 67703, i64 67712, i64 67743, i64 67840, i64 67862, i64 67872, i64 67898, i64 67968, i64 68024, i64 68030, i64 68032, i64 68096, i64 68097, i64 68112, i64 68116, i64 68117, i64 68120, i64 68121, i64 68148, i64 68192, i64 68221, i64 68224, i64 68253, i64 68288, i64 68296, i64 68297, i64 68325, i64 68352, i64 68406, i64 68416, i64 68438, i64 68448, i64 68467, i64 68480, i64 68498, i64 68608, i64 68681, i64 69635, i64 69688, i64 69763, i64 69808, i64 69840, i64 69865, i64 69891, i64 69927, i64 69968, i64 70003, i64 70006, i64 70007, i64 70019, i64 70067, i64 70081, i64 70085, i64 70106, i64 70107, i64 70144, i64 70162, i64 70163, i64 70188, i64 70320, i64 70367, i64 70405, i64 70413, i64 70415, i64 70417, i64 70419, i64 70441, i64 70442, i64 70449, i64 70450, i64 70452, i64 70453, i64 70458, i64 70461, i64 70462, i64 70493, i64 70498, i64 70784, i64 70832, i64 70852, i64 70854, i64 70855, i64 70856, i64 71040, i64 71087, i64 71168, i64 71216, i64 71236, i64 71237, i64 71296, i64 71339, i64 71840, i64 71904, i64 71935, i64 71936, i64 72384, i64 72441, i64 73728, i64 74649, i64 74752, i64 74863, i64 77824, i64 78895, i64 92160, i64 92729, i64 92736, i64 92767, i64 92880, i64 92910, i64 92928, i64 92976, i64 92992, i64 92996, i64 93027, i64 93048, i64 93053, i64 93072, i64 93952, i64 94021, i64 94032, i64 94033, i64 94099, i64 94112, i64 110592, i64 110594, i64 113664, i64 113771, i64 113776, i64 113789, i64 113792, i64 113801, i64 113808, i64 113818, i64 119808, i64 119893, i64 119894, i64 119965, i64 119966, i64 119968, i64 119970, i64 119971, i64 119973, i64 119975, i64 119977, i64 119981, i64 119982, i64 119994, i64 119995, i64 119996, i64 119997, i64 120004, i64 120005, i64 120070, i64 120071, i64 120075, i64 120077, i64 120085, i64 120086, i64 120093, i64 120094, i64 120122, i64 120123, i64 120127, i64 120128, i64 120133, i64 120134, i64 120135, i64 120138, i64 120145, i64 120146, i64 120486, i64 120488, i64 120513, i64 120514, i64 120539, i64 120540, i64 120571, i64 120572, i64 120597, i64 120598, i64 120629, i64 120630, i64 120655, i64 120656, i64 120687, i64 120688, i64 120713, i64 120714, i64 120745, i64 120746, i64 120771, i64 120772, i64 120780, i64 124928, i64 125125, i64 126464, i64 126468, i64 126469, i64 126496, i64 126497, i64 126499, i64 126500, i64 126501, i64 126503, i64 126504, i64 126505, i64 126515, i64 126516, i64 126520, i64 126521, i64 126522, i64 126523, i64 126524, i64 126530, i64 126531, i64 126535, i64 126536, i64 126537, i64 126538, i64 126539, i64 126540, i64 126541, i64 126544, i64 126545, i64 126547, i64 126548, i64 126549, i64 126551, i64 126552, i64 126553, i64 126554, i64 126555, i64 126556, i64 126557, i64 126558, i64 126559, i64 126560, i64 126561, i64 126563, i64 126564, i64 126565, i64 126567, i64 126571, i64 126572, i64 126579, i64 126580, i64 126584, i64 126585, i64 126589, i64 126590, i64 126591, i64 126592, i64 126602, i64 126603, i64 126620, i64 126625, i64 126628, i64 126629, i64 126634, i64 126635, i64 126652, i64 131072, i64 173783, i64 173824, i64 177973, i64 177984, i64 178206, i64 194560, i64 195102], align 16
@.str.27 = private unnamed_addr constant [14 x i8] c"_Perl_IDStart\00", align 1
@PL_utf8_xidstart = external global ptr, align 8
@.str.28 = private unnamed_addr constant [9 x i8] c"XIdStart\00", align 1
@PL_utf8_perl_idcont = external global ptr, align 8
@_Perl_IDCont_invlist = internal constant [1270 x i64] [i64 1267, i64 148565664, i64 1, i64 0, i64 48, i64 58, i64 65, i64 91, i64 95, i64 96, i64 97, i64 123, i64 170, i64 171, i64 181, i64 182, i64 186, i64 187, i64 192, i64 215, i64 216, i64 247, i64 248, i64 706, i64 710, i64 722, i64 736, i64 741, i64 748, i64 749, i64 750, i64 751, i64 768, i64 885, i64 886, i64 888, i64 891, i64 894, i64 895, i64 896, i64 902, i64 903, i64 904, i64 907, i64 908, i64 909, i64 910, i64 930, i64 931, i64 1014, i64 1015, i64 1154, i64 1155, i64 1160, i64 1162, i64 1328, i64 1329, i64 1367, i64 1369, i64 1370, i64 1377, i64 1416, i64 1425, i64 1470, i64 1471, i64 1472, i64 1473, i64 1475, i64 1476, i64 1478, i64 1479, i64 1480, i64 1488, i64 1515, i64 1520, i64 1523, i64 1552, i64 1563, i64 1568, i64 1642, i64 1646, i64 1748, i64 1749, i64 1757, i64 1759, i64 1769, i64 1770, i64 1789, i64 1791, i64 1792, i64 1808, i64 1867, i64 1869, i64 1970, i64 1984, i64 2038, i64 2042, i64 2043, i64 2048, i64 2094, i64 2112, i64 2140, i64 2208, i64 2227, i64 2276, i64 2404, i64 2406, i64 2416, i64 2417, i64 2436, i64 2437, i64 2445, i64 2447, i64 2449, i64 2451, i64 2473, i64 2474, i64 2481, i64 2482, i64 2483, i64 2486, i64 2490, i64 2492, i64 2501, i64 2503, i64 2505, i64 2507, i64 2511, i64 2519, i64 2520, i64 2524, i64 2526, i64 2527, i64 2532, i64 2534, i64 2546, i64 2561, i64 2564, i64 2565, i64 2571, i64 2575, i64 2577, i64 2579, i64 2601, i64 2602, i64 2609, i64 2610, i64 2612, i64 2613, i64 2615, i64 2616, i64 2618, i64 2620, i64 2621, i64 2622, i64 2627, i64 2631, i64 2633, i64 2635, i64 2638, i64 2641, i64 2642, i64 2649, i64 2653, i64 2654, i64 2655, i64 2662, i64 2678, i64 2689, i64 2692, i64 2693, i64 2702, i64 2703, i64 2706, i64 2707, i64 2729, i64 2730, i64 2737, i64 2738, i64 2740, i64 2741, i64 2746, i64 2748, i64 2758, i64 2759, i64 2762, i64 2763, i64 2766, i64 2768, i64 2769, i64 2784, i64 2788, i64 2790, i64 2800, i64 2817, i64 2820, i64 2821, i64 2829, i64 2831, i64 2833, i64 2835, i64 2857, i64 2858, i64 2865, i64 2866, i64 2868, i64 2869, i64 2874, i64 2876, i64 2885, i64 2887, i64 2889, i64 2891, i64 2894, i64 2902, i64 2904, i64 2908, i64 2910, i64 2911, i64 2916, i64 2918, i64 2928, i64 2929, i64 2930, i64 2946, i64 2948, i64 2949, i64 2955, i64 2958, i64 2961, i64 2962, i64 2966, i64 2969, i64 2971, i64 2972, i64 2973, i64 2974, i64 2976, i64 2979, i64 2981, i64 2984, i64 2987, i64 2990, i64 3002, i64 3006, i64 3011, i64 3014, i64 3017, i64 3018, i64 3022, i64 3024, i64 3025, i64 3031, i64 3032, i64 3046, i64 3056, i64 3072, i64 3076, i64 3077, i64 3085, i64 3086, i64 3089, i64 3090, i64 3113, i64 3114, i64 3130, i64 3133, i64 3141, i64 3142, i64 3145, i64 3146, i64 3150, i64 3157, i64 3159, i64 3160, i64 3162, i64 3168, i64 3172, i64 3174, i64 3184, i64 3201, i64 3204, i64 3205, i64 3213, i64 3214, i64 3217, i64 3218, i64 3241, i64 3242, i64 3252, i64 3253, i64 3258, i64 3260, i64 3269, i64 3270, i64 3273, i64 3274, i64 3278, i64 3285, i64 3287, i64 3294, i64 3295, i64 3296, i64 3300, i64 3302, i64 3312, i64 3313, i64 3315, i64 3329, i64 3332, i64 3333, i64 3341, i64 3342, i64 3345, i64 3346, i64 3387, i64 3389, i64 3397, i64 3398, i64 3401, i64 3402, i64 3407, i64 3415, i64 3416, i64 3424, i64 3428, i64 3430, i64 3440, i64 3450, i64 3456, i64 3458, i64 3460, i64 3461, i64 3479, i64 3482, i64 3506, i64 3507, i64 3516, i64 3517, i64 3518, i64 3520, i64 3527, i64 3530, i64 3531, i64 3535, i64 3541, i64 3542, i64 3543, i64 3544, i64 3552, i64 3558, i64 3568, i64 3570, i64 3572, i64 3585, i64 3643, i64 3648, i64 3663, i64 3664, i64 3674, i64 3713, i64 3715, i64 3716, i64 3717, i64 3719, i64 3721, i64 3722, i64 3723, i64 3725, i64 3726, i64 3732, i64 3736, i64 3737, i64 3744, i64 3745, i64 3748, i64 3749, i64 3750, i64 3751, i64 3752, i64 3754, i64 3756, i64 3757, i64 3770, i64 3771, i64 3774, i64 3776, i64 3781, i64 3782, i64 3783, i64 3784, i64 3790, i64 3792, i64 3802, i64 3804, i64 3808, i64 3840, i64 3841, i64 3864, i64 3866, i64 3872, i64 3882, i64 3893, i64 3894, i64 3895, i64 3896, i64 3897, i64 3898, i64 3902, i64 3912, i64 3913, i64 3949, i64 3953, i64 3973, i64 3974, i64 3992, i64 3993, i64 4029, i64 4038, i64 4039, i64 4096, i64 4170, i64 4176, i64 4254, i64 4256, i64 4294, i64 4295, i64 4296, i64 4301, i64 4302, i64 4304, i64 4347, i64 4348, i64 4681, i64 4682, i64 4686, i64 4688, i64 4695, i64 4696, i64 4697, i64 4698, i64 4702, i64 4704, i64 4745, i64 4746, i64 4750, i64 4752, i64 4785, i64 4786, i64 4790, i64 4792, i64 4799, i64 4800, i64 4801, i64 4802, i64 4806, i64 4808, i64 4823, i64 4824, i64 4881, i64 4882, i64 4886, i64 4888, i64 4955, i64 4957, i64 4960, i64 4992, i64 5008, i64 5024, i64 5109, i64 5121, i64 5741, i64 5743, i64 5760, i64 5761, i64 5787, i64 5792, i64 5867, i64 5870, i64 5881, i64 5888, i64 5901, i64 5902, i64 5909, i64 5920, i64 5941, i64 5952, i64 5972, i64 5984, i64 5997, i64 5998, i64 6001, i64 6002, i64 6004, i64 6016, i64 6100, i64 6103, i64 6104, i64 6108, i64 6110, i64 6112, i64 6122, i64 6155, i64 6158, i64 6160, i64 6170, i64 6176, i64 6264, i64 6272, i64 6315, i64 6320, i64 6390, i64 6400, i64 6431, i64 6432, i64 6444, i64 6448, i64 6460, i64 6470, i64 6510, i64 6512, i64 6517, i64 6528, i64 6572, i64 6576, i64 6602, i64 6608, i64 6618, i64 6656, i64 6684, i64 6688, i64 6751, i64 6752, i64 6781, i64 6783, i64 6794, i64 6800, i64 6810, i64 6823, i64 6824, i64 6832, i64 6846, i64 6912, i64 6988, i64 6992, i64 7002, i64 7019, i64 7028, i64 7040, i64 7156, i64 7168, i64 7224, i64 7232, i64 7242, i64 7245, i64 7294, i64 7376, i64 7379, i64 7380, i64 7415, i64 7416, i64 7418, i64 7424, i64 7670, i64 7676, i64 7958, i64 7960, i64 7966, i64 7968, i64 8006, i64 8008, i64 8014, i64 8016, i64 8024, i64 8025, i64 8026, i64 8027, i64 8028, i64 8029, i64 8030, i64 8031, i64 8062, i64 8064, i64 8117, i64 8118, i64 8125, i64 8126, i64 8127, i64 8130, i64 8133, i64 8134, i64 8141, i64 8144, i64 8148, i64 8150, i64 8156, i64 8160, i64 8173, i64 8178, i64 8181, i64 8182, i64 8189, i64 8255, i64 8257, i64 8276, i64 8277, i64 8305, i64 8306, i64 8319, i64 8320, i64 8336, i64 8349, i64 8400, i64 8413, i64 8417, i64 8418, i64 8421, i64 8433, i64 8450, i64 8451, i64 8455, i64 8456, i64 8458, i64 8468, i64 8469, i64 8470, i64 8473, i64 8478, i64 8484, i64 8485, i64 8486, i64 8487, i64 8488, i64 8489, i64 8490, i64 8494, i64 8495, i64 8506, i64 8508, i64 8512, i64 8517, i64 8522, i64 8526, i64 8527, i64 8544, i64 8585, i64 11264, i64 11311, i64 11312, i64 11359, i64 11360, i64 11493, i64 11499, i64 11508, i64 11520, i64 11558, i64 11559, i64 11560, i64 11565, i64 11566, i64 11568, i64 11624, i64 11631, i64 11632, i64 11647, i64 11671, i64 11680, i64 11687, i64 11688, i64 11695, i64 11696, i64 11703, i64 11704, i64 11711, i64 11712, i64 11719, i64 11720, i64 11727, i64 11728, i64 11735, i64 11736, i64 11743, i64 11744, i64 11776, i64 12293, i64 12296, i64 12321, i64 12336, i64 12337, i64 12342, i64 12344, i64 12349, i64 12353, i64 12439, i64 12441, i64 12443, i64 12445, i64 12448, i64 12449, i64 12539, i64 12540, i64 12544, i64 12549, i64 12590, i64 12593, i64 12687, i64 12704, i64 12731, i64 12784, i64 12800, i64 13312, i64 19894, i64 19968, i64 40909, i64 40960, i64 42125, i64 42192, i64 42238, i64 42240, i64 42509, i64 42512, i64 42540, i64 42560, i64 42608, i64 42612, i64 42622, i64 42623, i64 42654, i64 42655, i64 42738, i64 42775, i64 42784, i64 42786, i64 42889, i64 42891, i64 42895, i64 42896, i64 42926, i64 42928, i64 42930, i64 42999, i64 43048, i64 43072, i64 43124, i64 43136, i64 43205, i64 43216, i64 43226, i64 43232, i64 43256, i64 43259, i64 43260, i64 43264, i64 43310, i64 43312, i64 43348, i64 43360, i64 43389, i64 43392, i64 43457, i64 43471, i64 43482, i64 43488, i64 43519, i64 43520, i64 43575, i64 43584, i64 43598, i64 43600, i64 43610, i64 43616, i64 43639, i64 43642, i64 43715, i64 43739, i64 43742, i64 43744, i64 43760, i64 43762, i64 43767, i64 43777, i64 43783, i64 43785, i64 43791, i64 43793, i64 43799, i64 43808, i64 43815, i64 43816, i64 43823, i64 43824, i64 43867, i64 43868, i64 43872, i64 43876, i64 43878, i64 43968, i64 44011, i64 44012, i64 44014, i64 44016, i64 44026, i64 44032, i64 55204, i64 55216, i64 55239, i64 55243, i64 55292, i64 63744, i64 64110, i64 64112, i64 64218, i64 64256, i64 64263, i64 64275, i64 64280, i64 64285, i64 64297, i64 64298, i64 64311, i64 64312, i64 64317, i64 64318, i64 64319, i64 64320, i64 64322, i64 64323, i64 64325, i64 64326, i64 64434, i64 64467, i64 64606, i64 64612, i64 64830, i64 64848, i64 64912, i64 64914, i64 64968, i64 65008, i64 65018, i64 65024, i64 65040, i64 65056, i64 65070, i64 65075, i64 65077, i64 65101, i64 65104, i64 65137, i64 65138, i64 65139, i64 65140, i64 65143, i64 65144, i64 65145, i64 65146, i64 65147, i64 65148, i64 65149, i64 65150, i64 65151, i64 65277, i64 65296, i64 65306, i64 65313, i64 65339, i64 65343, i64 65344, i64 65345, i64 65371, i64 65382, i64 65471, i64 65474, i64 65480, i64 65482, i64 65488, i64 65490, i64 65496, i64 65498, i64 65501, i64 65536, i64 65548, i64 65549, i64 65575, i64 65576, i64 65595, i64 65596, i64 65598, i64 65599, i64 65614, i64 65616, i64 65630, i64 65664, i64 65787, i64 65856, i64 65909, i64 66045, i64 66046, i64 66176, i64 66205, i64 66208, i64 66257, i64 66272, i64 66273, i64 66304, i64 66336, i64 66352, i64 66379, i64 66384, i64 66427, i64 66432, i64 66462, i64 66464, i64 66500, i64 66504, i64 66512, i64 66513, i64 66518, i64 66560, i64 66718, i64 66720, i64 66730, i64 66816, i64 66856, i64 66864, i64 66916, i64 67072, i64 67383, i64 67392, i64 67414, i64 67424, i64 67432, i64 67584, i64 67590, i64 67592, i64 67593, i64 67594, i64 67638, i64 67639, i64 67641, i64 67644, i64 67645, i64 67647, i64 67670, i64 67680, i64 67703, i64 67712, i64 67743, i64 67840, i64 67862, i64 67872, i64 67898, i64 67968, i64 68024, i64 68030, i64 68032, i64 68096, i64 68100, i64 68101, i64 68103, i64 68108, i64 68116, i64 68117, i64 68120, i64 68121, i64 68148, i64 68152, i64 68155, i64 68159, i64 68160, i64 68192, i64 68221, i64 68224, i64 68253, i64 68288, i64 68296, i64 68297, i64 68327, i64 68352, i64 68406, i64 68416, i64 68438, i64 68448, i64 68467, i64 68480, i64 68498, i64 68608, i64 68681, i64 69632, i64 69703, i64 69734, i64 69744, i64 69759, i64 69819, i64 69840, i64 69865, i64 69872, i64 69882, i64 69888, i64 69941, i64 69942, i64 69952, i64 69968, i64 70004, i64 70006, i64 70007, i64 70016, i64 70085, i64 70096, i64 70107, i64 70144, i64 70162, i64 70163, i64 70200, i64 70320, i64 70379, i64 70384, i64 70394, i64 70401, i64 70404, i64 70405, i64 70413, i64 70415, i64 70417, i64 70419, i64 70441, i64 70442, i64 70449, i64 70450, i64 70452, i64 70453, i64 70458, i64 70460, i64 70469, i64 70471, i64 70473, i64 70475, i64 70478, i64 70487, i64 70488, i64 70493, i64 70500, i64 70502, i64 70509, i64 70512, i64 70517, i64 70784, i64 70854, i64 70855, i64 70856, i64 70864, i64 70874, i64 71040, i64 71094, i64 71096, i64 71105, i64 71168, i64 71233, i64 71236, i64 71237, i64 71248, i64 71258, i64 71296, i64 71352, i64 71360, i64 71370, i64 71840, i64 71914, i64 71935, i64 71936, i64 72384, i64 72441, i64 73728, i64 74649, i64 74752, i64 74863, i64 77824, i64 78895, i64 92160, i64 92729, i64 92736, i64 92767, i64 92768, i64 92778, i64 92880, i64 92910, i64 92912, i64 92917, i64 92928, i64 92983, i64 92992, i64 92996, i64 93008, i64 93018, i64 93027, i64 93048, i64 93053, i64 93072, i64 93952, i64 94021, i64 94032, i64 94079, i64 94095, i64 94112, i64 110592, i64 110594, i64 113664, i64 113771, i64 113776, i64 113789, i64 113792, i64 113801, i64 113808, i64 113818, i64 113821, i64 113823, i64 119141, i64 119146, i64 119149, i64 119155, i64 119163, i64 119171, i64 119173, i64 119180, i64 119210, i64 119214, i64 119362, i64 119365, i64 119808, i64 119893, i64 119894, i64 119965, i64 119966, i64 119968, i64 119970, i64 119971, i64 119973, i64 119975, i64 119977, i64 119981, i64 119982, i64 119994, i64 119995, i64 119996, i64 119997, i64 120004, i64 120005, i64 120070, i64 120071, i64 120075, i64 120077, i64 120085, i64 120086, i64 120093, i64 120094, i64 120122, i64 120123, i64 120127, i64 120128, i64 120133, i64 120134, i64 120135, i64 120138, i64 120145, i64 120146, i64 120486, i64 120488, i64 120513, i64 120514, i64 120539, i64 120540, i64 120571, i64 120572, i64 120597, i64 120598, i64 120629, i64 120630, i64 120655, i64 120656, i64 120687, i64 120688, i64 120713, i64 120714, i64 120745, i64 120746, i64 120771, i64 120772, i64 120780, i64 120782, i64 120832, i64 124928, i64 125125, i64 125136, i64 125143, i64 126464, i64 126468, i64 126469, i64 126496, i64 126497, i64 126499, i64 126500, i64 126501, i64 126503, i64 126504, i64 126505, i64 126515, i64 126516, i64 126520, i64 126521, i64 126522, i64 126523, i64 126524, i64 126530, i64 126531, i64 126535, i64 126536, i64 126537, i64 126538, i64 126539, i64 126540, i64 126541, i64 126544, i64 126545, i64 126547, i64 126548, i64 126549, i64 126551, i64 126552, i64 126553, i64 126554, i64 126555, i64 126556, i64 126557, i64 126558, i64 126559, i64 126560, i64 126561, i64 126563, i64 126564, i64 126565, i64 126567, i64 126571, i64 126572, i64 126579, i64 126580, i64 126584, i64 126585, i64 126589, i64 126590, i64 126591, i64 126592, i64 126602, i64 126603, i64 126620, i64 126625, i64 126628, i64 126629, i64 126634, i64 126635, i64 126652, i64 131072, i64 173783, i64 173824, i64 177973, i64 177984, i64 178206, i64 194560, i64 195102, i64 917760, i64 918000], align 16
@.str.29 = private unnamed_addr constant [13 x i8] c"_Perl_IDCont\00", align 1
@PL_utf8_idcont = external global ptr, align 8
@.str.30 = private unnamed_addr constant [11 x i8] c"IdContinue\00", align 1
@.str.31 = private unnamed_addr constant [12 x i8] c"XIdContinue\00", align 1
@PL_utf8_mark = external global ptr, align 8
@.str.32 = private unnamed_addr constant [4 x i8] c"IsM\00", align 1
@.str.33 = private unnamed_addr constant [65 x i8] c"Operation \22%s\22 returns its argument for UTF-16 surrogate U+%04lX\00", align 1
@.str.34 = private unnamed_addr constant [71 x i8] c"Operation \22%s\22 returns its argument for non-Unicode code point 0x%04lX\00", align 1
@.str.35 = private unnamed_addr constant [5 x i8] c"utf8\00", align 1
@PL_sv_undef = external global %struct.sv, align 8
@.str.36 = private unnamed_addr constant [9 x i8] c"SPECIALS\00", align 1
@.str.37 = private unnamed_addr constant [4 x i8] c"\E1\BA\9E\00", align 1
@.str.38 = private unnamed_addr constant [75 x i8] c"Can't do fc(\22\\x{1E9E}\22) on non-UTF-8 locale; resolved to \22\\x{17F}\\x{17F}\22.\00", align 1
@.str.39 = private unnamed_addr constant [4 x i8] c"\EF\AC\85\00", align 1
@.str.40 = private unnamed_addr constant [69 x i8] c"Can't do fc(\22\\x{FB05}\22) on non-UTF-8 locale; resolved to \22\\x{FB06}\22.\00", align 1
@.str.41 = private unnamed_addr constant [4 x i8] c"\EF\AC\86\00", align 1
@PL_curpm = external local_unnamed_addr global ptr, align 8
@PL_stack_sp = external local_unnamed_addr global ptr, align 8
@PL_curstackinfo = external local_unnamed_addr global ptr, align 8
@PL_stack_base = external local_unnamed_addr global ptr, align 8
@PL_curstack = external local_unnamed_addr global ptr, align 8
@PL_stack_max = external local_unnamed_addr global ptr, align 8
@PL_subname = external local_unnamed_addr global ptr, align 8
@PL_parser = external local_unnamed_addr global ptr, align 8
@.str.42 = private unnamed_addr constant [9 x i8] c"SWASHNEW\00", align 1
@PL_errgv = external local_unnamed_addr global ptr, align 8
@PL_tainted = external global i8, align 1
@PL_markstack_ptr = external local_unnamed_addr global ptr, align 8
@PL_markstack_max = external local_unnamed_addr global ptr, align 8
@.str.43 = private unnamed_addr constant [45 x i8] c"Can't find Unicode property definition \22%-p\22\00", align 1
@.str.44 = private unnamed_addr constant [13 x i8] c"USER_DEFINED\00", align 1
@.str.45 = private unnamed_addr constant [2 x i8] c"V\00", align 1
@.str.46 = private unnamed_addr constant [38 x i8] c"panic: hv_store() unexpectedly failed\00", align 1
@PL_last_swash_hv = external local_unnamed_addr global ptr, align 8
@PL_last_swash_klen = external local_unnamed_addr global i8, align 1
@PL_last_swash_key = external global [12 x i8], align 1
@PL_last_swash_tmps = external local_unnamed_addr global ptr, align 8
@PL_last_swash_slen = external local_unnamed_addr global i64, align 8
@.str.47 = private unnamed_addr constant [80 x i8] c"panic: swash_fetch got improper swatch, svp=%p, tmps=%p, slen=%lu, needents=%lu\00", align 1
@.str.48 = private unnamed_addr constant [78 x i8] c"panic: swash_fetch got swatch of unexpected bit width, slen=%lu, needents=%lu\00", align 1
@.str.49 = private unnamed_addr constant [5 x i8] c"LIST\00", align 1
@.str.50 = private unnamed_addr constant [5 x i8] c"TYPE\00", align 1
@.str.51 = private unnamed_addr constant [5 x i8] c"BITS\00", align 1
@.str.52 = private unnamed_addr constant [5 x i8] c"NONE\00", align 1
@.str.53 = private unnamed_addr constant [52 x i8] c"panic: swash_inversion_hash doesn't expect bits %lu\00", align 1
@.str.54 = private unnamed_addr constant [83 x i8] c"panic: value returned from hv_iternextsv() unexpectedly is not a string, flags=%lu\00", align 1
@.str.55 = private unnamed_addr constant [38 x i8] c"panic: av_fetch() unexpectedly failed\00", align 1
@.str.56 = private unnamed_addr constant [31 x i8] c"panic: unexpected entry for %s\00", align 1
@.str.57 = private unnamed_addr constant [7 x i8] c"EXTRAS\00", align 1
@.str.58 = private unnamed_addr constant [10 x i8] c"INVERT_IT\00", align 1
@.str.59 = private unnamed_addr constant [70 x i8] c"panic: Expecting a valid count of elements at start of inversion list\00", align 1
@PL_charclass = external local_unnamed_addr constant [0 x i32], align 4
@.str.60 = private unnamed_addr constant [56 x i8] c"panic: Expecting a valid 0th element for inversion list\00", align 1
@.str.61 = private unnamed_addr constant [50 x i8] c"panic: Expecting %lu more elements than available\00", align 1
@.str.62 = private unnamed_addr constant [51 x i8] c"panic: Expecting a valid element in inversion list\00", align 1
@.str.63 = private unnamed_addr constant [86 x i8] c"panic: _swash_to_invlist only operates on boolean properties, bits=%lu, otherbits=%lu\00", align 1
@.str.64 = private unnamed_addr constant [6 x i8] c"print\00", align 1
@.str.65 = private unnamed_addr constant [46 x i8] c"Unicode surrogate U+%04lX is illegal in UTF-8\00", align 1
@.str.66 = private unnamed_addr constant [2 x i8] c"\\\00", align 1
@.str.67 = private unnamed_addr constant [8 x i8] c"\\x{%lx}\00", align 1
@.str.68 = private unnamed_addr constant [4 x i8] c"...\00", align 1
@.str.69 = private unnamed_addr constant [46 x i8] c"Passing malformed UTF-8 to \22%s\22 is deprecated\00", align 1
@.str.70 = private unnamed_addr constant [11 x i8] c"XPosixWord\00", align 1
@.str.71 = private unnamed_addr constant [12 x i8] c"XPosixDigit\00", align 1
@.str.72 = private unnamed_addr constant [12 x i8] c"XPosixAlpha\00", align 1
@.str.73 = private unnamed_addr constant [12 x i8] c"XPosixLower\00", align 1
@.str.74 = private unnamed_addr constant [12 x i8] c"XPosixUpper\00", align 1
@.str.75 = private unnamed_addr constant [12 x i8] c"XPosixPunct\00", align 1
@.str.76 = private unnamed_addr constant [12 x i8] c"XPosixPrint\00", align 1
@.str.77 = private unnamed_addr constant [12 x i8] c"XPosixAlnum\00", align 1
@.str.78 = private unnamed_addr constant [12 x i8] c"XPosixGraph\00", align 1
@.str.79 = private unnamed_addr constant [6 x i8] c"Cased\00", align 1
@.str.80 = private unnamed_addr constant [67 x i8] c"Can't do %s(\22\\x{%lX}\22) on non-UTF-8 locale; resolved to \22\\x{%lX}\22.\00", align 1
@.str.81 = private unnamed_addr constant [42 x i8] c"panic: swatch_get doesn't expect bits %lu\00", align 1
@.str.82 = private unnamed_addr constant [70 x i8] c"panic: swatch_get found swatch size mismatch, bits=%lu, otherbits=%lu\00", align 1
@.str.83 = private unnamed_addr constant [38 x i8] c"panic: swatch_get got improper swatch\00", align 1
@.str.84 = private unnamed_addr constant [67 x i8] c"panic: swatch_get found swatch length mismatch, slen=%lu, olen=%lu\00", align 1
@.str.85 = private unnamed_addr constant [25 x i8] c"%s: illegal mapping '%s'\00", align 1

; Function Attrs: cold nofree nounwind memory(read, inaccessiblemem: none) uwtable
define dso_local zeroext i1 @Perl_is_invariant_string(ptr noundef readonly %0, i64 noundef %1) local_unnamed_addr #0 !prof !34 {
  %3 = icmp eq i64 %1, 0
  br i1 %3, label %4, label %6, !prof !35

4:                                                ; preds = %2
  %5 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #14
  br label %6

6:                                                ; preds = %2, %4
  %7 = phi i64 [ %5, %4 ], [ %1, %2 ]
  %8 = getelementptr inbounds i8, ptr %0, i64 %7
  %9 = icmp sgt i64 %7, 0
  br i1 %9, label %10, label %17, !prof !36

10:                                               ; preds = %6, %14
  %11 = phi ptr [ %15, %14 ], [ %0, %6 ]
  %12 = load i8, ptr %11, align 1, !tbaa !37
  %13 = icmp sgt i8 %12, -1
  br i1 %13, label %14, label %17, !prof !40

14:                                               ; preds = %10
  %15 = getelementptr inbounds i8, ptr %11, i64 1
  %16 = icmp ult ptr %15, %8
  br i1 %16, label %10, label %17, !prof !41, !llvm.loop !42

17:                                               ; preds = %14, %10, %6
  %18 = phi ptr [ %0, %6 ], [ %15, %14 ], [ %11, %10 ]
  %19 = icmp eq ptr %18, %8
  ret i1 %19
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr nocapture noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: cold nounwind uwtable
define dso_local ptr @Perl_uvoffuni_to_utf8_flags(ptr noundef writeonly %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #3 !prof !45 {
  %4 = icmp ult i64 %1, 128
  br i1 %4, label %5, label %8, !prof !46

5:                                                ; preds = %3
  %6 = trunc i64 %1 to i8
  %7 = getelementptr inbounds i8, ptr %0, i64 1
  store i8 %6, ptr %0, align 1, !tbaa !37
  br label %245

8:                                                ; preds = %3
  %9 = icmp ugt i64 %1, 55295
  br i1 %9, label %10, label %53

10:                                               ; preds = %8
  %11 = tail call zeroext i1 @Perl_ckwarn_d(i32 noundef 3223602) #15
  br i1 %11, label %12, label %53

12:                                               ; preds = %10
  %13 = icmp ult i64 %1, 57344
  br i1 %13, label %14, label %21

14:                                               ; preds = %12
  %15 = and i64 %2, 1
  %16 = icmp eq i64 %15, 0
  br i1 %16, label %18, label %17

17:                                               ; preds = %14
  tail call void (i32, ptr, ...) @Perl_ck_warner_d(i32 noundef 50, ptr noundef nonnull @.str, i64 noundef %1) #15
  br label %18

18:                                               ; preds = %17, %14
  %19 = and i64 %2, 16
  %20 = icmp eq i64 %19, 0
  br i1 %20, label %53, label %245

21:                                               ; preds = %12
  %22 = icmp ugt i64 %1, 1114111
  br i1 %22, label %23, label %40

23:                                               ; preds = %21
  %24 = and i64 %2, 4
  %25 = icmp eq i64 %24, 0
  br i1 %25, label %26, label %31

26:                                               ; preds = %23
  %27 = icmp ult i64 %1, 2147483648
  %28 = and i64 %2, 8
  %29 = icmp eq i64 %28, 0
  %30 = or i1 %27, %29
  br i1 %30, label %32, label %31

31:                                               ; preds = %26, %23
  tail call void (i32, ptr, ...) @Perl_ck_warner_d(i32 noundef 48, ptr noundef nonnull @.str.1, i64 noundef %1) #15
  br label %32

32:                                               ; preds = %31, %26
  %33 = and i64 %2, 64
  %34 = icmp eq i64 %33, 0
  br i1 %34, label %35, label %245

35:                                               ; preds = %32
  %36 = icmp ult i64 %1, 2147483648
  %37 = and i64 %2, 128
  %38 = icmp eq i64 %37, 0
  %39 = or i1 %36, %38
  br i1 %39, label %53, label %245

40:                                               ; preds = %21
  %41 = add nsw i64 %1, -64976
  %42 = icmp ult i64 %41, 32
  %43 = and i64 %1, 65534
  %44 = icmp eq i64 %43, 65534
  %45 = or i1 %42, %44
  br i1 %45, label %46, label %53

46:                                               ; preds = %40
  %47 = and i64 %2, 2
  %48 = icmp eq i64 %47, 0
  br i1 %48, label %50, label %49

49:                                               ; preds = %46
  tail call void (i32, ptr, ...) @Perl_ck_warner_d(i32 noundef 49, ptr noundef nonnull @.str.2, i64 noundef %1) #15
  br label %50

50:                                               ; preds = %49, %46
  %51 = and i64 %2, 32
  %52 = icmp eq i64 %51, 0
  br i1 %52, label %53, label %245

53:                                               ; preds = %40, %18, %50, %35, %10, %8
  %54 = icmp ult i64 %1, 2048
  br i1 %54, label %55, label %64

55:                                               ; preds = %53
  %56 = lshr i64 %1, 6
  %57 = trunc i64 %56 to i8
  %58 = or disjoint i8 %57, -64
  %59 = getelementptr inbounds i8, ptr %0, i64 1
  store i8 %58, ptr %0, align 1, !tbaa !37
  %60 = trunc i64 %1 to i8
  %61 = and i8 %60, 63
  %62 = or disjoint i8 %61, -128
  %63 = getelementptr inbounds i8, ptr %0, i64 2
  store i8 %62, ptr %59, align 1, !tbaa !37
  br label %245

64:                                               ; preds = %53
  %65 = icmp ult i64 %1, 65536
  br i1 %65, label %66, label %80

66:                                               ; preds = %64
  %67 = lshr i64 %1, 12
  %68 = trunc i64 %67 to i8
  %69 = or disjoint i8 %68, -32
  %70 = getelementptr inbounds i8, ptr %0, i64 1
  store i8 %69, ptr %0, align 1, !tbaa !37
  %71 = lshr i64 %1, 6
  %72 = trunc i64 %71 to i8
  %73 = and i8 %72, 63
  %74 = or disjoint i8 %73, -128
  %75 = getelementptr inbounds i8, ptr %0, i64 2
  store i8 %74, ptr %70, align 1, !tbaa !37
  %76 = trunc i64 %1 to i8
  %77 = and i8 %76, 63
  %78 = or disjoint i8 %77, -128
  %79 = getelementptr inbounds i8, ptr %0, i64 3
  store i8 %78, ptr %75, align 1, !tbaa !37
  br label %245

80:                                               ; preds = %64
  %81 = icmp ult i64 %1, 2097152
  br i1 %81, label %82, label %101

82:                                               ; preds = %80
  %83 = lshr i64 %1, 18
  %84 = trunc i64 %83 to i8
  %85 = or disjoint i8 %84, -16
  %86 = getelementptr inbounds i8, ptr %0, i64 1
  store i8 %85, ptr %0, align 1, !tbaa !37
  %87 = lshr i64 %1, 12
  %88 = trunc i64 %87 to i8
  %89 = and i8 %88, 63
  %90 = or disjoint i8 %89, -128
  %91 = getelementptr inbounds i8, ptr %0, i64 2
  store i8 %90, ptr %86, align 1, !tbaa !37
  %92 = lshr i64 %1, 6
  %93 = trunc i64 %92 to i8
  %94 = and i8 %93, 63
  %95 = or disjoint i8 %94, -128
  %96 = getelementptr inbounds i8, ptr %0, i64 3
  store i8 %95, ptr %91, align 1, !tbaa !37
  %97 = trunc i64 %1 to i8
  %98 = and i8 %97, 63
  %99 = or disjoint i8 %98, -128
  %100 = getelementptr inbounds i8, ptr %0, i64 4
  store i8 %99, ptr %96, align 1, !tbaa !37
  br label %245

101:                                              ; preds = %80
  %102 = icmp ult i64 %1, 67108864
  br i1 %102, label %103, label %127

103:                                              ; preds = %101
  %104 = lshr i64 %1, 24
  %105 = trunc i64 %104 to i8
  %106 = or disjoint i8 %105, -8
  %107 = getelementptr inbounds i8, ptr %0, i64 1
  store i8 %106, ptr %0, align 1, !tbaa !37
  %108 = lshr i64 %1, 18
  %109 = trunc i64 %108 to i8
  %110 = and i8 %109, 63
  %111 = or disjoint i8 %110, -128
  %112 = getelementptr inbounds i8, ptr %0, i64 2
  store i8 %111, ptr %107, align 1, !tbaa !37
  %113 = lshr i64 %1, 12
  %114 = trunc i64 %113 to i8
  %115 = and i8 %114, 63
  %116 = or disjoint i8 %115, -128
  %117 = getelementptr inbounds i8, ptr %0, i64 3
  store i8 %116, ptr %112, align 1, !tbaa !37
  %118 = lshr i64 %1, 6
  %119 = trunc i64 %118 to i8
  %120 = and i8 %119, 63
  %121 = or disjoint i8 %120, -128
  %122 = getelementptr inbounds i8, ptr %0, i64 4
  store i8 %121, ptr %117, align 1, !tbaa !37
  %123 = trunc i64 %1 to i8
  %124 = and i8 %123, 63
  %125 = or disjoint i8 %124, -128
  %126 = getelementptr inbounds i8, ptr %0, i64 5
  store i8 %125, ptr %122, align 1, !tbaa !37
  br label %245

127:                                              ; preds = %101
  %128 = icmp ult i64 %1, 2147483648
  br i1 %128, label %129, label %158

129:                                              ; preds = %127
  %130 = lshr i64 %1, 30
  %131 = trunc i64 %130 to i8
  %132 = or disjoint i8 %131, -4
  %133 = getelementptr inbounds i8, ptr %0, i64 1
  store i8 %132, ptr %0, align 1, !tbaa !37
  %134 = lshr i64 %1, 24
  %135 = trunc i64 %134 to i8
  %136 = and i8 %135, 63
  %137 = or disjoint i8 %136, -128
  %138 = getelementptr inbounds i8, ptr %0, i64 2
  store i8 %137, ptr %133, align 1, !tbaa !37
  %139 = lshr i64 %1, 18
  %140 = trunc i64 %139 to i8
  %141 = and i8 %140, 63
  %142 = or disjoint i8 %141, -128
  %143 = getelementptr inbounds i8, ptr %0, i64 3
  store i8 %142, ptr %138, align 1, !tbaa !37
  %144 = lshr i64 %1, 12
  %145 = trunc i64 %144 to i8
  %146 = and i8 %145, 63
  %147 = or disjoint i8 %146, -128
  %148 = getelementptr inbounds i8, ptr %0, i64 4
  store i8 %147, ptr %143, align 1, !tbaa !37
  %149 = lshr i64 %1, 6
  %150 = trunc i64 %149 to i8
  %151 = and i8 %150, 63
  %152 = or disjoint i8 %151, -128
  %153 = getelementptr inbounds i8, ptr %0, i64 5
  store i8 %152, ptr %148, align 1, !tbaa !37
  %154 = trunc i64 %1 to i8
  %155 = and i8 %154, 63
  %156 = or disjoint i8 %155, -128
  %157 = getelementptr inbounds i8, ptr %0, i64 6
  store i8 %156, ptr %153, align 1, !tbaa !37
  br label %245

158:                                              ; preds = %127
  %159 = icmp ult i64 %1, 68719476736
  %160 = getelementptr inbounds i8, ptr %0, i64 1
  br i1 %159, label %161, label %190

161:                                              ; preds = %158
  store i8 -2, ptr %0, align 1, !tbaa !37
  %162 = lshr i64 %1, 30
  %163 = trunc i64 %162 to i8
  %164 = or disjoint i8 %163, -128
  %165 = getelementptr inbounds i8, ptr %0, i64 2
  store i8 %164, ptr %160, align 1, !tbaa !37
  %166 = lshr i64 %1, 24
  %167 = trunc i64 %166 to i8
  %168 = and i8 %167, 63
  %169 = or disjoint i8 %168, -128
  %170 = getelementptr inbounds i8, ptr %0, i64 3
  store i8 %169, ptr %165, align 1, !tbaa !37
  %171 = lshr i64 %1, 18
  %172 = trunc i64 %171 to i8
  %173 = and i8 %172, 63
  %174 = or disjoint i8 %173, -128
  %175 = getelementptr inbounds i8, ptr %0, i64 4
  store i8 %174, ptr %170, align 1, !tbaa !37
  %176 = lshr i64 %1, 12
  %177 = trunc i64 %176 to i8
  %178 = and i8 %177, 63
  %179 = or disjoint i8 %178, -128
  %180 = getelementptr inbounds i8, ptr %0, i64 5
  store i8 %179, ptr %175, align 1, !tbaa !37
  %181 = lshr i64 %1, 6
  %182 = trunc i64 %181 to i8
  %183 = and i8 %182, 63
  %184 = or disjoint i8 %183, -128
  %185 = getelementptr inbounds i8, ptr %0, i64 6
  store i8 %184, ptr %180, align 1, !tbaa !37
  %186 = trunc i64 %1 to i8
  %187 = and i8 %186, 63
  %188 = or disjoint i8 %187, -128
  %189 = getelementptr inbounds i8, ptr %0, i64 7
  store i8 %188, ptr %185, align 1, !tbaa !37
  br label %245

190:                                              ; preds = %158
  store i8 -1, ptr %0, align 1, !tbaa !37
  %191 = getelementptr inbounds i8, ptr %0, i64 2
  store i8 -128, ptr %160, align 1, !tbaa !37
  %192 = lshr i64 %1, 60
  %193 = trunc i64 %192 to i8
  %194 = or disjoint i8 %193, -128
  %195 = getelementptr inbounds i8, ptr %0, i64 3
  store i8 %194, ptr %191, align 1, !tbaa !37
  %196 = lshr i64 %1, 54
  %197 = trunc i64 %196 to i8
  %198 = and i8 %197, 63
  %199 = or disjoint i8 %198, -128
  %200 = getelementptr inbounds i8, ptr %0, i64 4
  store i8 %199, ptr %195, align 1, !tbaa !37
  %201 = lshr i64 %1, 48
  %202 = trunc i64 %201 to i8
  %203 = and i8 %202, 63
  %204 = or disjoint i8 %203, -128
  %205 = getelementptr inbounds i8, ptr %0, i64 5
  store i8 %204, ptr %200, align 1, !tbaa !37
  %206 = lshr i64 %1, 42
  %207 = trunc i64 %206 to i8
  %208 = and i8 %207, 63
  %209 = or disjoint i8 %208, -128
  %210 = getelementptr inbounds i8, ptr %0, i64 6
  store i8 %209, ptr %205, align 1, !tbaa !37
  %211 = lshr i64 %1, 36
  %212 = trunc i64 %211 to i8
  %213 = and i8 %212, 63
  %214 = or disjoint i8 %213, -128
  %215 = getelementptr inbounds i8, ptr %0, i64 7
  store i8 %214, ptr %210, align 1, !tbaa !37
  %216 = lshr i64 %1, 30
  %217 = trunc i64 %216 to i8
  %218 = and i8 %217, 63
  %219 = or disjoint i8 %218, -128
  %220 = getelementptr inbounds i8, ptr %0, i64 8
  store i8 %219, ptr %215, align 1, !tbaa !37
  %221 = lshr i64 %1, 24
  %222 = trunc i64 %221 to i8
  %223 = and i8 %222, 63
  %224 = or disjoint i8 %223, -128
  %225 = getelementptr inbounds i8, ptr %0, i64 9
  store i8 %224, ptr %220, align 1, !tbaa !37
  %226 = lshr i64 %1, 18
  %227 = trunc i64 %226 to i8
  %228 = and i8 %227, 63
  %229 = or disjoint i8 %228, -128
  %230 = getelementptr inbounds i8, ptr %0, i64 10
  store i8 %229, ptr %225, align 1, !tbaa !37
  %231 = lshr i64 %1, 12
  %232 = trunc i64 %231 to i8
  %233 = and i8 %232, 63
  %234 = or disjoint i8 %233, -128
  %235 = getelementptr inbounds i8, ptr %0, i64 11
  store i8 %234, ptr %230, align 1, !tbaa !37
  %236 = lshr i64 %1, 6
  %237 = trunc i64 %236 to i8
  %238 = and i8 %237, 63
  %239 = or disjoint i8 %238, -128
  %240 = getelementptr inbounds i8, ptr %0, i64 12
  store i8 %239, ptr %235, align 1, !tbaa !37
  %241 = trunc i64 %1 to i8
  %242 = and i8 %241, 63
  %243 = or disjoint i8 %242, -128
  %244 = getelementptr inbounds i8, ptr %0, i64 13
  store i8 %243, ptr %240, align 1, !tbaa !37
  br label %245

245:                                              ; preds = %50, %35, %32, %18, %190, %161, %129, %103, %82, %66, %55, %5
  %246 = phi ptr [ %7, %5 ], [ %63, %55 ], [ %79, %66 ], [ %100, %82 ], [ %126, %103 ], [ %157, %129 ], [ %189, %161 ], [ %244, %190 ], [ null, %18 ], [ null, %32 ], [ null, %35 ], [ null, %50 ]
  ret ptr %246
}

declare zeroext i1 @Perl_ckwarn_d(i32 noundef) local_unnamed_addr #4

declare void @Perl_ck_warner_d(i32 noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: cold nounwind uwtable
define dso_local ptr @Perl_uvchr_to_utf8(ptr noundef %0, i64 noundef %1) local_unnamed_addr #3 !prof !47 {
  %3 = tail call ptr @Perl_uvoffuni_to_utf8_flags(ptr noundef %0, i64 noundef %1, i64 noundef 0)
  ret ptr %3
}

; Function Attrs: cold nounwind uwtable
define dso_local ptr @Perl_uvchr_to_utf8_flags(ptr noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #3 !prof !47 {
  %4 = tail call ptr @Perl_uvoffuni_to_utf8_flags(ptr noundef %0, i64 noundef %1, i64 noundef %2)
  ret ptr %4
}

; Function Attrs: cold nounwind uwtable
define dso_local noundef zeroext i1 @Perl_is_utf8_string(ptr noundef %0, i64 noundef %1) local_unnamed_addr #3 !prof !47 {
  %3 = alloca i64, align 8
  %4 = icmp eq i64 %1, 0
  br i1 %4, label %5, label %7

5:                                                ; preds = %2
  %6 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #14
  br label %7

7:                                                ; preds = %2, %5
  %8 = phi i64 [ %6, %5 ], [ %1, %2 ]
  %9 = getelementptr inbounds i8, ptr %0, i64 %8
  %10 = ptrtoint ptr %9 to i64
  br label %11

11:                                               ; preds = %113, %7
  %12 = phi ptr [ %0, %7 ], [ %116, %113 ]
  %13 = icmp uge ptr %12, %9
  br i1 %13, label %117, label %14

14:                                               ; preds = %11
  %15 = load i8, ptr %12, align 1, !tbaa !37
  %16 = icmp sgt i8 %15, -1
  br i1 %16, label %113, label %17

17:                                               ; preds = %14
  %18 = zext i8 %15 to i64
  %19 = ptrtoint ptr %12 to i64
  %20 = sub i64 %10, %19
  %21 = getelementptr inbounds [0 x i8], ptr @PL_utf8skip, i64 0, i64 %18
  %22 = load i8, ptr %21, align 1, !tbaa !37
  %23 = zext i8 %22 to i64
  %24 = icmp slt i64 %20, %23
  br i1 %24, label %113, label %25

25:                                               ; preds = %17
  %26 = icmp ult i8 %22, 5
  br i1 %26, label %27, label %108

27:                                               ; preds = %25
  %28 = add nsw i8 %15, 62
  %29 = icmp ult i8 %28, 30
  br i1 %29, label %30, label %36

30:                                               ; preds = %27
  %31 = getelementptr inbounds i8, ptr %12, i64 1
  %32 = load i8, ptr %31, align 1, !tbaa !37
  %33 = and i8 %32, -64
  %34 = icmp eq i8 %33, -128
  %35 = select i1 %34, i64 2, i64 0
  br label %113

36:                                               ; preds = %27
  %37 = icmp eq i8 %15, -32
  br i1 %37, label %38, label %51

38:                                               ; preds = %36
  %39 = getelementptr inbounds i8, ptr %12, i64 1
  %40 = load i8, ptr %39, align 1, !tbaa !37
  %41 = and i8 %40, -32
  %42 = icmp eq i8 %41, -96
  br i1 %42, label %43, label %48

43:                                               ; preds = %38
  %44 = getelementptr inbounds i8, ptr %12, i64 2
  %45 = load i8, ptr %44, align 1, !tbaa !37
  %46 = and i8 %45, -64
  %47 = icmp eq i8 %46, -128
  br label %48

48:                                               ; preds = %43, %38
  %49 = phi i1 [ false, %38 ], [ %47, %43 ]
  %50 = select i1 %49, i64 3, i64 0
  br label %113

51:                                               ; preds = %36
  %52 = add nsw i8 %15, 31
  %53 = icmp ult i8 %52, 15
  br i1 %53, label %54, label %67

54:                                               ; preds = %51
  %55 = getelementptr inbounds i8, ptr %12, i64 1
  %56 = load i8, ptr %55, align 1, !tbaa !37
  %57 = and i8 %56, -64
  %58 = icmp eq i8 %57, -128
  br i1 %58, label %59, label %64

59:                                               ; preds = %54
  %60 = getelementptr inbounds i8, ptr %12, i64 2
  %61 = load i8, ptr %60, align 1, !tbaa !37
  %62 = and i8 %61, -64
  %63 = icmp eq i8 %62, -128
  br label %64

64:                                               ; preds = %59, %54
  %65 = phi i1 [ false, %54 ], [ %63, %59 ]
  %66 = select i1 %65, i64 3, i64 0
  br label %113

67:                                               ; preds = %51
  %68 = icmp eq i8 %15, -16
  br i1 %68, label %69, label %87

69:                                               ; preds = %67
  %70 = getelementptr inbounds i8, ptr %12, i64 1
  %71 = load i8, ptr %70, align 1, !tbaa !37
  %72 = add i8 %71, 112
  %73 = icmp ult i8 %72, 48
  br i1 %73, label %74, label %84

74:                                               ; preds = %69
  %75 = getelementptr inbounds i8, ptr %12, i64 2
  %76 = load i8, ptr %75, align 1, !tbaa !37
  %77 = and i8 %76, -64
  %78 = icmp eq i8 %77, -128
  br i1 %78, label %79, label %84

79:                                               ; preds = %74
  %80 = getelementptr inbounds i8, ptr %12, i64 3
  %81 = load i8, ptr %80, align 1, !tbaa !37
  %82 = and i8 %81, -64
  %83 = icmp eq i8 %82, -128
  br label %84

84:                                               ; preds = %79, %74, %69
  %85 = phi i1 [ false, %74 ], [ false, %69 ], [ %83, %79 ]
  %86 = select i1 %85, i64 4, i64 0
  br label %113

87:                                               ; preds = %67
  %88 = add nsw i8 %15, 15
  %89 = icmp ult i8 %88, 7
  br i1 %89, label %90, label %105

90:                                               ; preds = %87
  %91 = getelementptr inbounds i8, ptr %12, i64 1
  %92 = load i8, ptr %91, align 1, !tbaa !37
  %93 = and i8 %92, -64
  %94 = icmp eq i8 %93, -128
  br i1 %94, label %95, label %105

95:                                               ; preds = %90
  %96 = getelementptr inbounds i8, ptr %12, i64 2
  %97 = load i8, ptr %96, align 1, !tbaa !37
  %98 = and i8 %97, -64
  %99 = icmp eq i8 %98, -128
  br i1 %99, label %100, label %105

100:                                              ; preds = %95
  %101 = getelementptr inbounds i8, ptr %12, i64 3
  %102 = load i8, ptr %101, align 1, !tbaa !37
  %103 = and i8 %102, -64
  %104 = icmp eq i8 %103, -128
  br label %105

105:                                              ; preds = %100, %95, %90, %87
  %106 = phi i1 [ false, %95 ], [ false, %90 ], [ false, %87 ], [ %104, %100 ]
  %107 = select i1 %106, i64 4, i64 0
  br label %113

108:                                              ; preds = %25
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #15
  %109 = call i64 @Perl_utf8n_to_uvchr(ptr noundef nonnull %12, i64 noundef %20, ptr noundef nonnull %3, i32 noundef 8192)
  %110 = load i64, ptr %3, align 8
  %111 = icmp eq i64 %110, -1
  %112 = select i1 %111, i64 0, i64 %110
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #15
  br label %113

113:                                              ; preds = %30, %64, %105, %84, %48, %14, %108, %17
  %114 = phi i64 [ 1, %14 ], [ 0, %17 ], [ %112, %108 ], [ %35, %30 ], [ %50, %48 ], [ %66, %64 ], [ %86, %84 ], [ %107, %105 ]
  %115 = icmp eq i64 %114, 0
  %116 = getelementptr inbounds i8, ptr %12, i64 %114
  br i1 %115, label %117, label %11, !llvm.loop !48

117:                                              ; preds = %113, %11
  ret i1 %13
}

; Function Attrs: cold nounwind uwtable
define dso_local zeroext i1 @Perl_is_utf8_string_loclen(ptr noundef %0, i64 noundef %1, ptr noundef writeonly %2, ptr noundef writeonly %3) local_unnamed_addr #3 !prof !47 {
  %5 = alloca i64, align 8
  %6 = icmp eq i64 %1, 0
  br i1 %6, label %7, label %9

7:                                                ; preds = %4
  %8 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #14
  br label %9

9:                                                ; preds = %4, %7
  %10 = phi i64 [ %8, %7 ], [ %1, %4 ]
  %11 = getelementptr inbounds i8, ptr %0, i64 %10
  %12 = ptrtoint ptr %11 to i64
  br label %13

13:                                               ; preds = %116, %9
  %14 = phi ptr [ %0, %9 ], [ %119, %116 ]
  %15 = phi i64 [ 0, %9 ], [ %121, %116 ]
  %16 = icmp ult ptr %14, %11
  br i1 %16, label %17, label %122

17:                                               ; preds = %13
  %18 = load i8, ptr %14, align 1, !tbaa !37
  %19 = icmp sgt i8 %18, -1
  br i1 %19, label %116, label %20

20:                                               ; preds = %17
  %21 = zext i8 %18 to i64
  %22 = ptrtoint ptr %14 to i64
  %23 = sub i64 %12, %22
  %24 = getelementptr inbounds [0 x i8], ptr @PL_utf8skip, i64 0, i64 %21
  %25 = load i8, ptr %24, align 1, !tbaa !37
  %26 = zext i8 %25 to i64
  %27 = icmp slt i64 %23, %26
  br i1 %27, label %116, label %28

28:                                               ; preds = %20
  %29 = icmp ult i8 %25, 5
  br i1 %29, label %30, label %111

30:                                               ; preds = %28
  %31 = add nsw i8 %18, 62
  %32 = icmp ult i8 %31, 30
  br i1 %32, label %33, label %39

33:                                               ; preds = %30
  %34 = getelementptr inbounds i8, ptr %14, i64 1
  %35 = load i8, ptr %34, align 1, !tbaa !37
  %36 = and i8 %35, -64
  %37 = icmp eq i8 %36, -128
  %38 = select i1 %37, i64 2, i64 0
  br label %116

39:                                               ; preds = %30
  %40 = icmp eq i8 %18, -32
  br i1 %40, label %41, label %54

41:                                               ; preds = %39
  %42 = getelementptr inbounds i8, ptr %14, i64 1
  %43 = load i8, ptr %42, align 1, !tbaa !37
  %44 = and i8 %43, -32
  %45 = icmp eq i8 %44, -96
  br i1 %45, label %46, label %51

46:                                               ; preds = %41
  %47 = getelementptr inbounds i8, ptr %14, i64 2
  %48 = load i8, ptr %47, align 1, !tbaa !37
  %49 = and i8 %48, -64
  %50 = icmp eq i8 %49, -128
  br label %51

51:                                               ; preds = %46, %41
  %52 = phi i1 [ false, %41 ], [ %50, %46 ]
  %53 = select i1 %52, i64 3, i64 0
  br label %116

54:                                               ; preds = %39
  %55 = add nsw i8 %18, 31
  %56 = icmp ult i8 %55, 15
  br i1 %56, label %57, label %70

57:                                               ; preds = %54
  %58 = getelementptr inbounds i8, ptr %14, i64 1
  %59 = load i8, ptr %58, align 1, !tbaa !37
  %60 = and i8 %59, -64
  %61 = icmp eq i8 %60, -128
  br i1 %61, label %62, label %67

62:                                               ; preds = %57
  %63 = getelementptr inbounds i8, ptr %14, i64 2
  %64 = load i8, ptr %63, align 1, !tbaa !37
  %65 = and i8 %64, -64
  %66 = icmp eq i8 %65, -128
  br label %67

67:                                               ; preds = %62, %57
  %68 = phi i1 [ false, %57 ], [ %66, %62 ]
  %69 = select i1 %68, i64 3, i64 0
  br label %116

70:                                               ; preds = %54
  %71 = icmp eq i8 %18, -16
  br i1 %71, label %72, label %90

72:                                               ; preds = %70
  %73 = getelementptr inbounds i8, ptr %14, i64 1
  %74 = load i8, ptr %73, align 1, !tbaa !37
  %75 = add i8 %74, 112
  %76 = icmp ult i8 %75, 48
  br i1 %76, label %77, label %87

77:                                               ; preds = %72
  %78 = getelementptr inbounds i8, ptr %14, i64 2
  %79 = load i8, ptr %78, align 1, !tbaa !37
  %80 = and i8 %79, -64
  %81 = icmp eq i8 %80, -128
  br i1 %81, label %82, label %87

82:                                               ; preds = %77
  %83 = getelementptr inbounds i8, ptr %14, i64 3
  %84 = load i8, ptr %83, align 1, !tbaa !37
  %85 = and i8 %84, -64
  %86 = icmp eq i8 %85, -128
  br label %87

87:                                               ; preds = %82, %77, %72
  %88 = phi i1 [ false, %77 ], [ false, %72 ], [ %86, %82 ]
  %89 = select i1 %88, i64 4, i64 0
  br label %116

90:                                               ; preds = %70
  %91 = add nsw i8 %18, 15
  %92 = icmp ult i8 %91, 7
  br i1 %92, label %93, label %108

93:                                               ; preds = %90
  %94 = getelementptr inbounds i8, ptr %14, i64 1
  %95 = load i8, ptr %94, align 1, !tbaa !37
  %96 = and i8 %95, -64
  %97 = icmp eq i8 %96, -128
  br i1 %97, label %98, label %108

98:                                               ; preds = %93
  %99 = getelementptr inbounds i8, ptr %14, i64 2
  %100 = load i8, ptr %99, align 1, !tbaa !37
  %101 = and i8 %100, -64
  %102 = icmp eq i8 %101, -128
  br i1 %102, label %103, label %108

103:                                              ; preds = %98
  %104 = getelementptr inbounds i8, ptr %14, i64 3
  %105 = load i8, ptr %104, align 1, !tbaa !37
  %106 = and i8 %105, -64
  %107 = icmp eq i8 %106, -128
  br label %108

108:                                              ; preds = %103, %98, %93, %90
  %109 = phi i1 [ false, %98 ], [ false, %93 ], [ false, %90 ], [ %107, %103 ]
  %110 = select i1 %109, i64 4, i64 0
  br label %116

111:                                              ; preds = %28
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #15
  %112 = call i64 @Perl_utf8n_to_uvchr(ptr noundef nonnull %14, i64 noundef %23, ptr noundef nonnull %5, i32 noundef 8192)
  %113 = load i64, ptr %5, align 8
  %114 = icmp eq i64 %113, -1
  %115 = select i1 %114, i64 0, i64 %113
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #15
  br label %116

116:                                              ; preds = %33, %67, %108, %87, %51, %17, %111, %20
  %117 = phi i64 [ 1, %17 ], [ 0, %20 ], [ %115, %111 ], [ %38, %33 ], [ %53, %51 ], [ %69, %67 ], [ %89, %87 ], [ %110, %108 ]
  %118 = icmp ne i64 %117, 0
  %119 = getelementptr inbounds i8, ptr %14, i64 %117
  %120 = zext i1 %118 to i64
  %121 = add i64 %15, %120
  br i1 %118, label %13, label %122

122:                                              ; preds = %116, %13
  %123 = phi ptr [ %14, %13 ], [ %119, %116 ]
  %124 = phi i64 [ %15, %13 ], [ %121, %116 ]
  %125 = icmp eq ptr %3, null
  br i1 %125, label %127, label %126

126:                                              ; preds = %122
  store i64 %124, ptr %3, align 8, !tbaa !49
  br label %127

127:                                              ; preds = %126, %122
  %128 = icmp eq ptr %2, null
  br i1 %128, label %130, label %129

129:                                              ; preds = %127
  store ptr %123, ptr %2, align 8, !tbaa !51
  br label %130

130:                                              ; preds = %129, %127
  %131 = icmp eq ptr %123, %11
  ret i1 %131
}

; Function Attrs: cold nounwind uwtable
define dso_local i64 @Perl_utf8n_to_uvchr(ptr noundef %0, i64 noundef %1, ptr noundef writeonly %2, i32 noundef %3) local_unnamed_addr #3 !prof !47 {
  %5 = load i8, ptr %0, align 1, !tbaa !37
  %6 = zext i8 %5 to i64
  %7 = icmp eq i64 %1, 0
  br i1 %7, label %8, label %19

8:                                                ; preds = %4
  %9 = icmp eq ptr %2, null
  br i1 %9, label %11, label %10

10:                                               ; preds = %8
  store i64 0, ptr %2, align 8, !tbaa !49
  br label %11

11:                                               ; preds = %10, %8
  %12 = and i32 %3, 1
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %305

14:                                               ; preds = %11
  %15 = and i32 %3, 8192
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %259

17:                                               ; preds = %14
  %18 = tail call ptr (ptr, ...) @Perl_newSVpvf(ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.3) #15
  br label %255

19:                                               ; preds = %4
  %20 = getelementptr inbounds [0 x i8], ptr @PL_utf8skip, i64 0, i64 %6
  %21 = load i8, ptr %20, align 1, !tbaa !37
  %22 = zext i8 %21 to i64
  %23 = icmp eq ptr %2, null
  br i1 %23, label %25, label %24

24:                                               ; preds = %19
  store i64 %22, ptr %2, align 8, !tbaa !49
  br label %25

25:                                               ; preds = %24, %19
  %26 = icmp sgt i8 %5, -1
  br i1 %26, label %305, label %27

27:                                               ; preds = %25
  %28 = and i8 %5, -64
  %29 = icmp eq i8 %28, -128
  br i1 %29, label %30, label %41

30:                                               ; preds = %27
  %31 = and i32 %3, 2
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %34, label %33

33:                                               ; preds = %30
  br i1 %23, label %305, label %302

34:                                               ; preds = %30
  %35 = and i32 %3, 8192
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %37, label %259

37:                                               ; preds = %34
  %38 = load i8, ptr %0, align 1, !tbaa !37
  %39 = zext i8 %38 to i32
  %40 = tail call ptr (ptr, ...) @Perl_newSVpvf(ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.3, i32 noundef %39) #15
  br label %255

41:                                               ; preds = %27
  %42 = icmp ugt i8 %21, 6
  %43 = zext i8 %21 to i32
  %44 = add nsw i32 %43, -2
  %45 = lshr i32 31, %44
  %46 = zext nneg i32 %45 to i64
  %47 = select i1 %42, i64 0, i64 %46
  %48 = and i64 %47, %6
  %49 = tail call i64 @llvm.umin.i64(i64 %22, i64 %1)
  %50 = getelementptr inbounds i8, ptr %0, i64 %49
  %51 = getelementptr inbounds i8, ptr %0, i64 1
  %52 = icmp ugt i64 %49, 1
  br i1 %52, label %53, label %76

53:                                               ; preds = %41
  %54 = load i8, ptr %51, align 1, !tbaa !37
  %55 = and i8 %54, -64
  %56 = icmp eq i8 %55, -128
  br i1 %56, label %61, label %76

57:                                               ; preds = %61
  %58 = load i8, ptr %74, align 1, !tbaa !37
  %59 = and i8 %58, -64
  %60 = icmp eq i8 %59, -128
  br i1 %60, label %61, label %76, !llvm.loop !53

61:                                               ; preds = %53, %57
  %62 = phi i8 [ %58, %57 ], [ %54, %53 ]
  %63 = phi i64 [ %73, %57 ], [ %48, %53 ]
  %64 = phi i8 [ %68, %57 ], [ 0, %53 ]
  %65 = phi i8 [ %69, %57 ], [ 0, %53 ]
  %66 = phi ptr [ %74, %57 ], [ %51, %53 ]
  %67 = icmp ult i64 %63, 288230376151711744
  %68 = select i1 %67, i8 %64, i8 %62
  %69 = select i1 %67, i8 %65, i8 1
  %70 = shl i64 %63, 6
  %71 = and i8 %62, 63
  %72 = zext nneg i8 %71 to i64
  %73 = or disjoint i64 %70, %72
  %74 = getelementptr inbounds i8, ptr %66, i64 1
  %75 = icmp ult ptr %74, %50
  br i1 %75, label %57, label %76, !llvm.loop !53

76:                                               ; preds = %57, %61, %53, %41
  %77 = phi i64 [ %48, %41 ], [ %48, %53 ], [ %73, %61 ], [ %73, %57 ]
  %78 = phi i8 [ 0, %41 ], [ 0, %53 ], [ %68, %61 ], [ %68, %57 ]
  %79 = phi i8 [ 0, %41 ], [ 0, %53 ], [ %69, %61 ], [ %69, %57 ]
  %80 = phi ptr [ %51, %41 ], [ %51, %53 ], [ %74, %61 ], [ %74, %57 ]
  %81 = phi i1 [ %52, %41 ], [ %52, %53 ], [ %75, %61 ], [ %75, %57 ]
  %82 = ptrtoint ptr %80 to i64
  %83 = ptrtoint ptr %0 to i64
  %84 = sub i64 %82, %83
  br i1 %81, label %85, label %105

85:                                               ; preds = %76
  %86 = and i32 %3, 4
  %87 = icmp eq i32 %86, 0
  br i1 %87, label %88, label %104

88:                                               ; preds = %85
  %89 = and i32 %3, 8192
  %90 = icmp eq i32 %89, 0
  br i1 %90, label %91, label %259

91:                                               ; preds = %88
  %92 = icmp eq i64 %84, 1
  %93 = load i8, ptr %80, align 1, !tbaa !37
  %94 = zext i8 %93 to i32
  br i1 %92, label %95, label %99

95:                                               ; preds = %91
  %96 = load i8, ptr %0, align 1, !tbaa !37
  %97 = zext i8 %96 to i32
  %98 = tail call ptr (ptr, ...) @Perl_newSVpvf(ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.3, i32 noundef %94, i32 noundef %97) #15
  br label %255

99:                                               ; preds = %91
  %100 = trunc i64 %84 to i32
  %101 = load i8, ptr %0, align 1, !tbaa !37
  %102 = zext i8 %101 to i32
  %103 = tail call ptr (ptr, ...) @Perl_newSVpvf(ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.3, i32 noundef %94, i32 noundef %100, i32 noundef %102, i32 noundef %43) #15
  br label %255

104:                                              ; preds = %85
  br i1 %23, label %122, label %121

105:                                              ; preds = %76
  %106 = icmp ult i64 %84, %22
  br i1 %106, label %107, label %122

107:                                              ; preds = %105
  %108 = and i32 %3, 8
  %109 = icmp eq i32 %108, 0
  br i1 %109, label %110, label %120

110:                                              ; preds = %107
  %111 = and i32 %3, 8192
  %112 = icmp eq i32 %111, 0
  br i1 %112, label %113, label %259

113:                                              ; preds = %110
  %114 = trunc i64 %84 to i32
  %115 = icmp eq i64 %84, 1
  %116 = select i1 %115, ptr @.str.9, ptr @.str.10
  %117 = load i8, ptr %0, align 1, !tbaa !37
  %118 = zext i8 %117 to i32
  %119 = tail call ptr (ptr, ...) @Perl_newSVpvf(ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.3, i32 noundef %114, ptr noundef nonnull %116, i32 noundef %43, i32 noundef %118) #15
  br label %255

120:                                              ; preds = %107
  br i1 %23, label %122, label %121

121:                                              ; preds = %120, %104
  store i64 %84, ptr %2, align 8, !tbaa !49
  br label %122

122:                                              ; preds = %121, %105, %120, %104
  %123 = phi i64 [ 65533, %104 ], [ 65533, %120 ], [ %77, %105 ], [ 65533, %121 ]
  %124 = phi i1 [ false, %104 ], [ false, %120 ], [ true, %105 ], [ false, %121 ]
  %125 = and i8 %79, 1
  %126 = icmp eq i8 %125, 0
  br i1 %126, label %132, label %127

127:                                              ; preds = %122
  %128 = zext i8 %78 to i32
  %129 = load i8, ptr %0, align 1, !tbaa !37
  %130 = zext i8 %129 to i32
  %131 = tail call ptr (ptr, ...) @Perl_newSVpvf(ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.3, i32 noundef %128, i32 noundef %130) #15
  br label %255

132:                                              ; preds = %122
  br i1 %124, label %133, label %176

133:                                              ; preds = %132
  %134 = icmp ult i64 %123, 128
  br i1 %134, label %148, label %135

135:                                              ; preds = %133
  %136 = icmp ult i64 %123, 2048
  br i1 %136, label %148, label %137

137:                                              ; preds = %135
  %138 = icmp ult i64 %123, 65536
  br i1 %138, label %148, label %139

139:                                              ; preds = %137
  %140 = icmp ult i64 %123, 2097152
  br i1 %140, label %148, label %141

141:                                              ; preds = %139
  %142 = icmp ult i64 %123, 67108864
  br i1 %142, label %148, label %143

143:                                              ; preds = %141
  %144 = icmp ult i64 %123, 2147483648
  br i1 %144, label %148, label %145

145:                                              ; preds = %143
  %146 = icmp ult i64 %123, 68719476736
  %147 = select i1 %146, i64 7, i64 13
  br label %148

148:                                              ; preds = %135, %139, %145, %143, %141, %137, %133
  %149 = phi i64 [ 1, %133 ], [ 2, %135 ], [ 3, %137 ], [ 4, %139 ], [ 5, %141 ], [ %147, %145 ], [ 6, %143 ]
  %150 = icmp ult i64 %149, %22
  %151 = and i32 %3, 16
  %152 = icmp eq i32 %151, 0
  %153 = and i1 %152, %150
  br i1 %153, label %154, label %176

154:                                              ; preds = %148
  %155 = and i32 %3, 8192
  %156 = icmp eq i32 %155, 0
  br i1 %156, label %157, label %259

157:                                              ; preds = %154
  br i1 %134, label %171, label %158

158:                                              ; preds = %157
  %159 = icmp ult i64 %123, 2048
  br i1 %159, label %171, label %160

160:                                              ; preds = %158
  %161 = icmp ult i64 %123, 65536
  br i1 %161, label %171, label %162

162:                                              ; preds = %160
  %163 = icmp ult i64 %123, 2097152
  br i1 %163, label %171, label %164

164:                                              ; preds = %162
  %165 = icmp ult i64 %123, 67108864
  br i1 %165, label %171, label %166

166:                                              ; preds = %164
  %167 = icmp ult i64 %123, 2147483648
  br i1 %167, label %171, label %168

168:                                              ; preds = %166
  %169 = icmp ult i64 %123, 68719476736
  %170 = select i1 %169, i32 7, i32 13
  br label %171

171:                                              ; preds = %158, %162, %168, %166, %164, %160, %157
  %172 = phi i32 [ 1, %157 ], [ 2, %158 ], [ 3, %160 ], [ 4, %162 ], [ 5, %164 ], [ %170, %168 ], [ 6, %166 ]
  %173 = load i8, ptr %0, align 1, !tbaa !37
  %174 = zext i8 %173 to i32
  %175 = tail call ptr (ptr, ...) @Perl_newSVpvf(ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.3, i32 noundef %43, ptr noundef nonnull @.str.10, i32 noundef %172, i32 noundef %174) #15
  br label %255

176:                                              ; preds = %148, %132
  %177 = icmp ult i64 %123, 55296
  %178 = and i32 %3, 8160
  %179 = icmp eq i32 %178, 0
  %180 = or i1 %179, %177
  br i1 %180, label %305, label %181

181:                                              ; preds = %176
  %182 = icmp ult i64 %123, 57344
  br i1 %182, label %183, label %196

183:                                              ; preds = %181
  %184 = and i32 %3, 8256
  %185 = icmp eq i32 %184, 64
  br i1 %185, label %186, label %191

186:                                              ; preds = %183
  %187 = tail call zeroext i1 @Perl_ckwarn_d(i32 noundef 50) #15
  br i1 %187, label %188, label %191

188:                                              ; preds = %186
  %189 = tail call ptr (ptr, ...) @Perl_newSVpvf(ptr noundef nonnull @.str, i64 noundef %123) #15
  %190 = tail call ptr @Perl_sv_2mortal(ptr noundef %189) #15
  br label %191

191:                                              ; preds = %188, %186, %183
  %192 = phi ptr [ %190, %188 ], [ null, %186 ], [ null, %183 ]
  %193 = phi i64 [ 50, %188 ], [ 0, %186 ], [ 0, %183 ]
  %194 = and i32 %3, 32
  %195 = icmp eq i32 %194, 0
  br i1 %195, label %251, label %266

196:                                              ; preds = %181
  %197 = icmp ugt i64 %123, 1114111
  br i1 %197, label %198, label %232

198:                                              ; preds = %196
  %199 = and i32 %3, 9216
  %200 = icmp eq i32 %199, 1024
  br i1 %200, label %201, label %206

201:                                              ; preds = %198
  %202 = tail call zeroext i1 @Perl_ckwarn_d(i32 noundef 48) #15
  br i1 %202, label %203, label %206

203:                                              ; preds = %201
  %204 = tail call ptr (ptr, ...) @Perl_newSVpvf(ptr noundef nonnull @.str.1, i64 noundef %123) #15
  %205 = tail call ptr @Perl_sv_2mortal(ptr noundef %204) #15
  br label %206

206:                                              ; preds = %203, %201, %198
  %207 = phi ptr [ %205, %203 ], [ null, %201 ], [ null, %198 ]
  %208 = phi i64 [ 48, %203 ], [ 0, %201 ], [ 0, %198 ]
  %209 = load i8, ptr %0, align 1, !tbaa !37
  %210 = icmp ult i8 %209, -2
  %211 = and i32 %3, 6144
  %212 = icmp eq i32 %211, 0
  %213 = or i1 %212, %210
  br i1 %213, label %227, label %214

214:                                              ; preds = %206
  %215 = and i32 %3, 12288
  %216 = icmp eq i32 %215, 4096
  br i1 %216, label %217, label %222

217:                                              ; preds = %214
  %218 = tail call zeroext i1 @Perl_ckwarn_d(i32 noundef 44) #15
  br i1 %218, label %219, label %222

219:                                              ; preds = %217
  %220 = tail call ptr (ptr, ...) @Perl_newSVpvf(ptr noundef nonnull @.str.12, i64 noundef %123) #15
  %221 = tail call ptr @Perl_sv_2mortal(ptr noundef %220) #15
  br label %222

222:                                              ; preds = %219, %217, %214
  %223 = phi ptr [ %221, %219 ], [ %207, %217 ], [ %207, %214 ]
  %224 = phi i64 [ 44, %219 ], [ %208, %217 ], [ %208, %214 ]
  %225 = and i32 %3, 2048
  %226 = icmp eq i32 %225, 0
  br i1 %226, label %227, label %266

227:                                              ; preds = %222, %206
  %228 = phi ptr [ %223, %222 ], [ %207, %206 ]
  %229 = phi i64 [ %224, %222 ], [ %208, %206 ]
  %230 = and i32 %3, 512
  %231 = icmp eq i32 %230, 0
  br i1 %231, label %251, label %266

232:                                              ; preds = %196
  %233 = add nsw i64 %123, -64976
  %234 = icmp ult i64 %233, 32
  %235 = and i64 %123, 65534
  %236 = icmp eq i64 %235, 65534
  %237 = or i1 %234, %236
  br i1 %237, label %238, label %251

238:                                              ; preds = %232
  %239 = and i32 %3, 8448
  %240 = icmp eq i32 %239, 256
  br i1 %240, label %241, label %246

241:                                              ; preds = %238
  %242 = tail call zeroext i1 @Perl_ckwarn_d(i32 noundef 49) #15
  br i1 %242, label %243, label %246

243:                                              ; preds = %241
  %244 = tail call ptr (ptr, ...) @Perl_newSVpvf(ptr noundef nonnull @.str.2, i64 noundef %123) #15
  %245 = tail call ptr @Perl_sv_2mortal(ptr noundef %244) #15
  br label %246

246:                                              ; preds = %243, %241, %238
  %247 = phi ptr [ %245, %243 ], [ null, %241 ], [ null, %238 ]
  %248 = phi i64 [ 49, %243 ], [ 0, %241 ], [ 0, %238 ]
  %249 = and i32 %3, 128
  %250 = icmp eq i32 %249, 0
  br i1 %250, label %251, label %266

251:                                              ; preds = %232, %227, %246, %191
  %252 = phi ptr [ %192, %191 ], [ %228, %227 ], [ %247, %246 ], [ null, %232 ]
  %253 = phi i64 [ %193, %191 ], [ %229, %227 ], [ %248, %246 ], [ 0, %232 ]
  %254 = icmp eq ptr %252, null
  br i1 %254, label %305, label %274

255:                                              ; preds = %127, %17, %95, %99, %113, %171, %37
  %256 = phi ptr [ %40, %37 ], [ %175, %171 ], [ %119, %113 ], [ %103, %99 ], [ %98, %95 ], [ %18, %17 ], [ %131, %127 ]
  %257 = phi i64 [ 1, %37 ], [ %84, %171 ], [ %84, %113 ], [ %84, %99 ], [ 1, %95 ], [ 0, %17 ], [ %84, %127 ]
  %258 = tail call ptr @Perl_sv_2mortal(ptr noundef %256) #15
  br label %259

259:                                              ; preds = %255, %34, %154, %110, %88, %14
  %260 = phi ptr [ null, %14 ], [ null, %154 ], [ null, %88 ], [ null, %110 ], [ null, %34 ], [ %258, %255 ]
  %261 = phi i64 [ 0, %14 ], [ %84, %154 ], [ %84, %88 ], [ %84, %110 ], [ 1, %34 ], [ %257, %255 ]
  %262 = icmp eq ptr %260, null
  br i1 %262, label %266, label %263

263:                                              ; preds = %259
  %264 = tail call zeroext i1 @Perl_ckwarn_d(i32 noundef 44) #15
  %265 = select i1 %264, i64 44, i64 0
  br label %266

266:                                              ; preds = %246, %227, %222, %191, %263, %259
  %267 = phi ptr [ null, %259 ], [ %260, %263 ], [ %192, %191 ], [ %223, %222 ], [ %228, %227 ], [ %247, %246 ]
  %268 = phi i64 [ 0, %259 ], [ %265, %263 ], [ %193, %191 ], [ %224, %222 ], [ %229, %227 ], [ %248, %246 ]
  %269 = phi i64 [ %261, %259 ], [ %261, %263 ], [ %84, %191 ], [ %84, %222 ], [ %84, %227 ], [ %84, %246 ]
  %270 = and i32 %3, 8192
  %271 = icmp eq i32 %270, 0
  br i1 %271, label %274, label %272

272:                                              ; preds = %266
  %273 = icmp eq ptr %2, null
  br i1 %273, label %305, label %302

274:                                              ; preds = %251, %266
  %275 = phi ptr [ %267, %266 ], [ %252, %251 ]
  %276 = phi i64 [ 0, %266 ], [ %123, %251 ]
  %277 = phi i64 [ %268, %266 ], [ %253, %251 ]
  %278 = phi i64 [ %269, %266 ], [ %84, %251 ]
  %279 = icmp eq i64 %277, 0
  br i1 %279, label %300, label %280

280:                                              ; preds = %274
  %281 = getelementptr inbounds %struct.sv, ptr %275, i64 0, i32 3
  %282 = load ptr, ptr %281, align 8, !tbaa !37
  %283 = load ptr, ptr @PL_op, align 8, !tbaa !51
  %284 = icmp eq ptr %283, null
  %285 = trunc i64 %277 to i32
  br i1 %284, label %299, label %286

286:                                              ; preds = %280
  %287 = getelementptr inbounds %struct.op, ptr %283, i64 0, i32 4
  %288 = load i16, ptr %287, align 8
  %289 = and i16 %288, 511
  %290 = icmp eq i16 %289, 380
  br i1 %290, label %291, label %293

291:                                              ; preds = %286
  %292 = tail call ptr @Perl_custom_op_get_field(ptr noundef nonnull %283, i32 noundef 2) #15
  br label %297

293:                                              ; preds = %286
  %294 = zext nneg i16 %289 to i64
  %295 = getelementptr inbounds [0 x ptr], ptr @PL_op_desc, i64 0, i64 %294
  %296 = load ptr, ptr %295, align 8, !tbaa !51
  br label %297

297:                                              ; preds = %293, %291
  %298 = phi ptr [ %292, %291 ], [ %296, %293 ]
  tail call void (i32, ptr, ...) @Perl_warner(i32 noundef %285, ptr noundef nonnull @.str.13, ptr noundef %282, ptr noundef %298) #15
  br label %300

299:                                              ; preds = %280
  tail call void (i32, ptr, ...) @Perl_warner(i32 noundef %285, ptr noundef nonnull @.str.14, ptr noundef %282) #15
  br label %300

300:                                              ; preds = %297, %299, %274
  %301 = icmp eq ptr %2, null
  br i1 %301, label %305, label %302

302:                                              ; preds = %300, %272, %33
  %303 = phi i64 [ 1, %33 ], [ -1, %272 ], [ %278, %300 ]
  %304 = phi i64 [ 65533, %33 ], [ 0, %272 ], [ %276, %300 ]
  store i64 %303, ptr %2, align 8, !tbaa !49
  br label %305

305:                                              ; preds = %302, %251, %300, %272, %176, %33, %25, %11
  %306 = phi i64 [ 0, %11 ], [ %6, %25 ], [ 65533, %33 ], [ %123, %176 ], [ 0, %272 ], [ %276, %300 ], [ %123, %251 ], [ %304, %302 ]
  ret i64 %306
}

declare ptr @Perl_sv_2mortal(ptr noundef) local_unnamed_addr #4

declare ptr @Perl_newSVpvf(ptr noundef, ...) local_unnamed_addr #4

declare void @Perl_warner(i32 noundef, ptr noundef, ...) local_unnamed_addr #4

declare ptr @Perl_custom_op_get_field(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: cold nounwind uwtable
define dso_local i64 @Perl_utf8_to_uvchr_buf(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #3 !prof !47 {
  %4 = ptrtoint ptr %1 to i64
  %5 = ptrtoint ptr %0 to i64
  %6 = sub i64 %4, %5
  %7 = tail call zeroext i1 @Perl_ckwarn_d(i32 noundef 44) #15
  %8 = select i1 %7, i32 0, i32 -8161
  %9 = tail call i64 @Perl_utf8n_to_uvchr(ptr noundef %0, i64 noundef %6, ptr noundef %2, i32 noundef %8)
  ret i64 %9
}

; Function Attrs: cold nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local i64 @Perl_valid_utf8_to_uvchr(ptr noundef readonly %0, ptr noundef writeonly %1) local_unnamed_addr #5 !prof !47 {
  %3 = load i8, ptr %0, align 1, !tbaa !37
  %4 = zext i8 %3 to i64
  %5 = getelementptr inbounds [0 x i8], ptr @PL_utf8skip, i64 0, i64 %4
  %6 = load i8, ptr %5, align 1, !tbaa !37
  %7 = zext i8 %6 to i64
  %8 = getelementptr inbounds i8, ptr %0, i64 %7
  %9 = icmp eq ptr %1, null
  br i1 %9, label %11, label %10

10:                                               ; preds = %2
  store i64 %7, ptr %1, align 8, !tbaa !49
  br label %11

11:                                               ; preds = %10, %2
  %12 = icmp eq i8 %6, 1
  br i1 %12, label %34, label %13

13:                                               ; preds = %11
  %14 = icmp ugt i8 %6, 6
  %15 = zext i8 %6 to i32
  %16 = add nsw i32 %15, -2
  %17 = lshr i32 31, %16
  %18 = zext nneg i32 %17 to i64
  %19 = select i1 %14, i64 0, i64 %18
  %20 = and i64 %19, %4
  %21 = icmp eq i8 %6, 0
  br i1 %21, label %34, label %22

22:                                               ; preds = %13
  %23 = getelementptr inbounds i8, ptr %0, i64 1
  br label %24

24:                                               ; preds = %22, %24
  %25 = phi ptr [ %32, %24 ], [ %23, %22 ]
  %26 = phi i64 [ %31, %24 ], [ %20, %22 ]
  %27 = shl i64 %26, 6
  %28 = load i8, ptr %25, align 1, !tbaa !37
  %29 = and i8 %28, 63
  %30 = zext nneg i8 %29 to i64
  %31 = or disjoint i64 %27, %30
  %32 = getelementptr inbounds i8, ptr %25, i64 1
  %33 = icmp ult ptr %32, %8
  br i1 %33, label %24, label %34, !llvm.loop !54

34:                                               ; preds = %24, %13, %11
  %35 = phi i64 [ %4, %11 ], [ %20, %13 ], [ %31, %24 ]
  ret i64 %35
}

; Function Attrs: cold nounwind uwtable
define dso_local i64 @Perl_utf8_to_uvuni_buf(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #3 !prof !47 {
  %4 = ptrtoint ptr %1 to i64
  %5 = ptrtoint ptr %0 to i64
  %6 = sub i64 %4, %5
  %7 = tail call zeroext i1 @Perl_ckwarn_d(i32 noundef 44) #15
  %8 = select i1 %7, i32 0, i32 -8161
  %9 = tail call i64 @Perl_utf8n_to_uvchr(ptr noundef %0, i64 noundef %6, ptr noundef %2, i32 noundef %8)
  ret i64 %9
}

; Function Attrs: cold nounwind uwtable
define dso_local i64 @Perl_utf8_length(ptr noundef readonly %0, ptr noundef readnone %1) local_unnamed_addr #3 !prof !47 {
  %3 = icmp ult ptr %1, %0
  br i1 %3, label %23, label %4

4:                                                ; preds = %2
  %5 = icmp ult ptr %0, %1
  br i1 %5, label %6, label %17

6:                                                ; preds = %4, %6
  %7 = phi ptr [ %14, %6 ], [ %0, %4 ]
  %8 = phi i64 [ %15, %6 ], [ 0, %4 ]
  %9 = load i8, ptr %7, align 1, !tbaa !37
  %10 = zext i8 %9 to i64
  %11 = getelementptr inbounds [0 x i8], ptr @PL_utf8skip, i64 0, i64 %10
  %12 = load i8, ptr %11, align 1, !tbaa !37
  %13 = zext i8 %12 to i64
  %14 = getelementptr inbounds i8, ptr %7, i64 %13
  %15 = add i64 %8, 1
  %16 = icmp ult ptr %14, %1
  br i1 %16, label %6, label %17, !llvm.loop !55

17:                                               ; preds = %6, %4
  %18 = phi i64 [ 0, %4 ], [ %15, %6 ]
  %19 = phi ptr [ %0, %4 ], [ %14, %6 ]
  %20 = icmp eq ptr %19, %1
  br i1 %20, label %41, label %21

21:                                               ; preds = %17
  %22 = add i64 %18, -1
  br label %23

23:                                               ; preds = %2, %21
  %24 = phi i64 [ 0, %2 ], [ %22, %21 ]
  %25 = load ptr, ptr @PL_op, align 8, !tbaa !51
  %26 = icmp eq ptr %25, null
  br i1 %26, label %40, label %27

27:                                               ; preds = %23
  %28 = getelementptr inbounds %struct.op, ptr %25, i64 0, i32 4
  %29 = load i16, ptr %28, align 8
  %30 = and i16 %29, 511
  %31 = icmp eq i16 %30, 380
  br i1 %31, label %32, label %34

32:                                               ; preds = %27
  %33 = tail call ptr @Perl_custom_op_get_field(ptr noundef nonnull %25, i32 noundef 2) #15
  br label %38

34:                                               ; preds = %27
  %35 = zext nneg i16 %30 to i64
  %36 = getelementptr inbounds [0 x ptr], ptr @PL_op_desc, i64 0, i64 %35
  %37 = load ptr, ptr %36, align 8, !tbaa !51
  br label %38

38:                                               ; preds = %34, %32
  %39 = phi ptr [ %33, %32 ], [ %37, %34 ]
  tail call void (i32, ptr, ...) @Perl_ck_warner_d(i32 noundef 44, ptr noundef nonnull @.str.13, ptr noundef nonnull @unees, ptr noundef %39) #15
  br label %41

40:                                               ; preds = %23
  tail call void (i32, ptr, ...) @Perl_ck_warner_d(i32 noundef 44, ptr noundef nonnull @.str.14, ptr noundef nonnull @unees) #15
  br label %41

41:                                               ; preds = %38, %40, %17
  %42 = phi i64 [ %24, %38 ], [ %24, %40 ], [ %18, %17 ]
  ret i64 %42
}

; Function Attrs: cold nounwind uwtable
define dso_local i64 @Perl_utf8_distance(ptr noundef %0, ptr noundef %1) local_unnamed_addr #3 !prof !47 {
  %3 = icmp ult ptr %0, %1
  br i1 %3, label %4, label %7

4:                                                ; preds = %2
  %5 = tail call i64 @Perl_utf8_length(ptr noundef %0, ptr noundef nonnull %1)
  %6 = sub nsw i64 0, %5
  br label %9

7:                                                ; preds = %2
  %8 = tail call i64 @Perl_utf8_length(ptr noundef %1, ptr noundef %0)
  br label %9

9:                                                ; preds = %7, %4
  %10 = phi i64 [ %6, %4 ], [ %8, %7 ]
  ret i64 %10
}

; Function Attrs: cold nofree norecurse nosync nounwind memory(read, inaccessiblemem: none) uwtable
define dso_local ptr @Perl_utf8_hop(ptr noundef readonly %0, i32 noundef %1) local_unnamed_addr #6 !prof !47 {
  %3 = icmp sgt i32 %1, -1
  br i1 %3, label %4, label %20

4:                                                ; preds = %2
  %5 = icmp eq i32 %1, 0
  br i1 %5, label %29, label %6

6:                                                ; preds = %4, %6
  %7 = phi i32 [ %9, %6 ], [ %1, %4 ]
  %8 = phi ptr [ %15, %6 ], [ %0, %4 ]
  %9 = add nsw i32 %7, -1
  %10 = load i8, ptr %8, align 1, !tbaa !37
  %11 = zext i8 %10 to i64
  %12 = getelementptr inbounds [0 x i8], ptr @PL_utf8skip, i64 0, i64 %11
  %13 = load i8, ptr %12, align 1, !tbaa !37
  %14 = zext i8 %13 to i64
  %15 = getelementptr inbounds i8, ptr %8, i64 %14
  %16 = icmp eq i32 %9, 0
  br i1 %16, label %29, label %6, !llvm.loop !56

17:                                               ; preds = %23
  %18 = add nsw i32 %21, 1
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %29, label %20, !llvm.loop !57

20:                                               ; preds = %2, %17
  %21 = phi i32 [ %18, %17 ], [ %1, %2 ]
  %22 = phi ptr [ %25, %17 ], [ %0, %2 ]
  br label %23

23:                                               ; preds = %23, %20
  %24 = phi ptr [ %25, %23 ], [ %22, %20 ]
  %25 = getelementptr inbounds i8, ptr %24, i64 -1
  %26 = load i8, ptr %25, align 1, !tbaa !37
  %27 = and i8 %26, -64
  %28 = icmp eq i8 %27, -128
  br i1 %28, label %23, label %17, !llvm.loop !58

29:                                               ; preds = %17, %6, %4
  %30 = phi ptr [ %0, %4 ], [ %15, %6 ], [ %25, %17 ]
  ret ptr %30
}

; Function Attrs: cold nounwind uwtable
define dso_local i32 @Perl_bytes_cmp_utf8(ptr noundef readonly %0, i64 noundef %1, ptr noundef readonly %2, i64 noundef %3) local_unnamed_addr #3 !prof !47 {
  %5 = getelementptr inbounds i8, ptr %0, i64 %1
  %6 = getelementptr inbounds i8, ptr %2, i64 %3
  br label %7

7:                                                ; preds = %82, %4
  %8 = phi ptr [ %2, %4 ], [ %83, %82 ]
  %9 = phi ptr [ %0, %4 ], [ %84, %82 ]
  %10 = phi i32 [ undef, %4 ], [ %86, %82 ]
  %11 = icmp ult ptr %9, %5
  %12 = icmp ult ptr %8, %6
  %13 = select i1 %11, i1 %12, i1 false
  br i1 %13, label %14, label %87

14:                                               ; preds = %7
  %15 = getelementptr inbounds i8, ptr %8, i64 1
  %16 = load i8, ptr %8, align 1, !tbaa !37
  %17 = icmp sgt i8 %16, -1
  br i1 %17, label %71, label %18

18:                                               ; preds = %14
  %19 = zext i8 %16 to i32
  %20 = and i32 %19, 254
  %21 = icmp eq i32 %20, 194
  br i1 %21, label %22, label %82

22:                                               ; preds = %18
  %23 = icmp ult ptr %15, %6
  br i1 %23, label %24, label %54

24:                                               ; preds = %22
  %25 = getelementptr inbounds i8, ptr %8, i64 2
  %26 = load i8, ptr %15, align 1, !tbaa !37
  %27 = zext i8 %26 to i32
  %28 = and i32 %27, 192
  %29 = icmp eq i32 %28, 128
  br i1 %29, label %30, label %34

30:                                               ; preds = %24
  %31 = shl i8 %16, 6
  %32 = and i8 %26, 63
  %33 = or disjoint i8 %32, %31
  br label %51

34:                                               ; preds = %24
  %35 = load ptr, ptr @PL_op, align 8, !tbaa !51
  %36 = icmp eq ptr %35, null
  %37 = select i1 %36, ptr @.str.9, ptr @.str.16
  br i1 %36, label %49, label %38

38:                                               ; preds = %34
  %39 = getelementptr inbounds %struct.op, ptr %35, i64 0, i32 4
  %40 = load i16, ptr %39, align 8
  %41 = and i16 %40, 511
  %42 = icmp eq i16 %41, 380
  br i1 %42, label %43, label %45

43:                                               ; preds = %38
  %44 = tail call ptr @Perl_custom_op_get_field(ptr noundef nonnull %35, i32 noundef 2) #15
  br label %49

45:                                               ; preds = %38
  %46 = zext nneg i16 %41 to i64
  %47 = getelementptr inbounds [0 x ptr], ptr @PL_op_desc, i64 0, i64 %46
  %48 = load ptr, ptr %47, align 8, !tbaa !51
  br label %49

49:                                               ; preds = %34, %43, %45
  %50 = phi ptr [ %44, %43 ], [ %48, %45 ], [ @.str.9, %34 ]
  tail call void (i32, ptr, ...) @Perl_ck_warner_d(i32 noundef 44, ptr noundef nonnull @.str.15, i32 noundef %27, i32 noundef %19, ptr noundef nonnull %37, ptr noundef %50) #15
  br label %51

51:                                               ; preds = %30, %49
  %52 = phi i8 [ %33, %30 ], [ %16, %49 ]
  %53 = phi i32 [ %10, %30 ], [ -2, %49 ]
  br i1 %29, label %71, label %82

54:                                               ; preds = %22
  %55 = load ptr, ptr @PL_op, align 8, !tbaa !51
  %56 = icmp eq ptr %55, null
  br i1 %56, label %70, label %57

57:                                               ; preds = %54
  %58 = getelementptr inbounds %struct.op, ptr %55, i64 0, i32 4
  %59 = load i16, ptr %58, align 8
  %60 = and i16 %59, 511
  %61 = icmp eq i16 %60, 380
  br i1 %61, label %62, label %64

62:                                               ; preds = %57
  %63 = tail call ptr @Perl_custom_op_get_field(ptr noundef nonnull %55, i32 noundef 2) #15
  br label %68

64:                                               ; preds = %57
  %65 = zext nneg i16 %60 to i64
  %66 = getelementptr inbounds [0 x ptr], ptr @PL_op_desc, i64 0, i64 %65
  %67 = load ptr, ptr %66, align 8, !tbaa !51
  br label %68

68:                                               ; preds = %64, %62
  %69 = phi ptr [ %63, %62 ], [ %67, %64 ]
  tail call void (i32, ptr, ...) @Perl_ck_warner_d(i32 noundef 44, ptr noundef nonnull @.str.13, ptr noundef nonnull @unees, ptr noundef %69) #15
  br label %82

70:                                               ; preds = %54
  tail call void (i32, ptr, ...) @Perl_ck_warner_d(i32 noundef 44, ptr noundef nonnull @.str.14, ptr noundef nonnull @unees) #15
  br label %82

71:                                               ; preds = %51, %14
  %72 = phi i8 [ %16, %14 ], [ %52, %51 ]
  %73 = phi ptr [ %15, %14 ], [ %25, %51 ]
  %74 = phi i32 [ %10, %14 ], [ %53, %51 ]
  %75 = load i8, ptr %9, align 1, !tbaa !37
  %76 = icmp eq i8 %75, %72
  br i1 %76, label %80, label %77

77:                                               ; preds = %71
  %78 = icmp ult i8 %75, %72
  %79 = select i1 %78, i32 -2, i32 2
  br label %82

80:                                               ; preds = %71
  %81 = getelementptr inbounds i8, ptr %9, i64 1
  br label %82

82:                                               ; preds = %18, %68, %70, %51, %80, %77
  %83 = phi ptr [ %73, %77 ], [ %73, %80 ], [ %25, %51 ], [ %15, %70 ], [ %15, %68 ], [ %15, %18 ]
  %84 = phi ptr [ %9, %77 ], [ %81, %80 ], [ %9, %51 ], [ %9, %70 ], [ %9, %68 ], [ %9, %18 ]
  %85 = phi i1 [ false, %77 ], [ true, %80 ], [ false, %51 ], [ false, %70 ], [ false, %68 ], [ false, %18 ]
  %86 = phi i32 [ %79, %77 ], [ %74, %80 ], [ %53, %51 ], [ -2, %70 ], [ -2, %68 ], [ -2, %18 ]
  br i1 %85, label %7, label %93, !llvm.loop !59

87:                                               ; preds = %7
  %88 = icmp eq ptr %9, %5
  %89 = icmp eq ptr %8, %6
  %90 = select i1 %88, i1 %89, i1 false
  %91 = select i1 %11, i32 1, i32 -1
  %92 = select i1 %90, i32 0, i32 %91
  br label %93

93:                                               ; preds = %82, %87
  %94 = phi i32 [ %92, %87 ], [ %86, %82 ]
  ret i32 %94
}

; Function Attrs: cold nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define dso_local noundef ptr @Perl_utf8_to_bytes(ptr noundef %0, ptr nocapture noundef %1) local_unnamed_addr #7 !prof !47 {
  %3 = load i64, ptr %1, align 8, !tbaa !49
  %4 = getelementptr inbounds i8, ptr %0, i64 %3
  %5 = icmp sgt i64 %3, 0
  br i1 %5, label %6, label %8

6:                                                ; preds = %2
  %7 = ptrtoint ptr %4 to i64
  br label %10

8:                                                ; preds = %26, %2
  %9 = icmp sgt i64 %3, 0
  br i1 %9, label %30, label %47

10:                                               ; preds = %6, %26
  %11 = phi ptr [ %0, %6 ], [ %28, %26 ]
  %12 = load i8, ptr %11, align 1, !tbaa !37
  %13 = icmp sgt i8 %12, -1
  br i1 %13, label %26, label %14

14:                                               ; preds = %10
  %15 = and i8 %12, -2
  %16 = icmp eq i8 %15, -62
  %17 = ptrtoint ptr %11 to i64
  %18 = sub i64 %7, %17
  %19 = icmp sgt i64 %18, 1
  %20 = and i1 %19, %16
  br i1 %20, label %21, label %52

21:                                               ; preds = %14
  %22 = getelementptr inbounds i8, ptr %11, i64 1
  %23 = load i8, ptr %22, align 1, !tbaa !37
  %24 = and i8 %23, -64
  %25 = icmp eq i8 %24, -128
  br i1 %25, label %26, label %52

26:                                               ; preds = %21, %10
  %27 = phi ptr [ %11, %10 ], [ %22, %21 ]
  %28 = getelementptr inbounds i8, ptr %27, i64 1
  %29 = icmp ult ptr %28, %4
  br i1 %29, label %10, label %8, !llvm.loop !60

30:                                               ; preds = %8, %42
  %31 = phi ptr [ %45, %42 ], [ %0, %8 ]
  %32 = phi ptr [ %43, %42 ], [ %0, %8 ]
  %33 = getelementptr inbounds i8, ptr %32, i64 1
  %34 = load i8, ptr %32, align 1, !tbaa !37
  %35 = icmp sgt i8 %34, -1
  br i1 %35, label %42, label %36

36:                                               ; preds = %30
  %37 = shl i8 %34, 6
  %38 = load i8, ptr %33, align 1, !tbaa !37
  %39 = and i8 %38, 63
  %40 = or disjoint i8 %39, %37
  %41 = getelementptr inbounds i8, ptr %32, i64 2
  br label %42

42:                                               ; preds = %36, %30
  %43 = phi ptr [ %33, %30 ], [ %41, %36 ]
  %44 = phi i8 [ %34, %30 ], [ %40, %36 ]
  %45 = getelementptr inbounds i8, ptr %31, i64 1
  store i8 %44, ptr %31, align 1, !tbaa !37
  %46 = icmp ult ptr %43, %4
  br i1 %46, label %30, label %47, !llvm.loop !61

47:                                               ; preds = %42, %8
  %48 = phi ptr [ %0, %8 ], [ %45, %42 ]
  store i8 0, ptr %48, align 1, !tbaa !37
  %49 = ptrtoint ptr %48 to i64
  %50 = ptrtoint ptr %0 to i64
  %51 = sub i64 %49, %50
  br label %52

52:                                               ; preds = %14, %21, %47
  %53 = phi i64 [ %51, %47 ], [ -1, %21 ], [ -1, %14 ]
  %54 = phi ptr [ %0, %47 ], [ null, %21 ], [ null, %14 ]
  store i64 %53, ptr %1, align 8, !tbaa !49
  ret ptr %54
}

; Function Attrs: cold nounwind uwtable
define dso_local ptr @Perl_bytes_from_utf8(ptr noundef %0, ptr nocapture noundef %1, ptr nocapture noundef %2) local_unnamed_addr #3 !prof !47 {
  %4 = load i8, ptr %2, align 1, !tbaa !62, !range !64, !noundef !65
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %66, label %6

6:                                                ; preds = %3
  %7 = load i64, ptr %1, align 8, !tbaa !49
  %8 = getelementptr inbounds i8, ptr %0, i64 %7
  %9 = icmp sgt i64 %7, 0
  br i1 %9, label %10, label %38

10:                                               ; preds = %6
  %11 = ptrtoint ptr %8 to i64
  br label %12

12:                                               ; preds = %10, %31
  %13 = phi i32 [ 0, %10 ], [ %33, %31 ]
  %14 = phi ptr [ %0, %10 ], [ %34, %31 ]
  %15 = load i8, ptr %14, align 1, !tbaa !37
  %16 = icmp sgt i8 %15, -1
  br i1 %16, label %31, label %17

17:                                               ; preds = %12
  %18 = and i8 %15, -2
  %19 = icmp eq i8 %18, -62
  %20 = ptrtoint ptr %14 to i64
  %21 = sub i64 %11, %20
  %22 = icmp sgt i64 %21, 1
  %23 = and i1 %22, %19
  br i1 %23, label %24, label %66

24:                                               ; preds = %17
  %25 = getelementptr inbounds i8, ptr %14, i64 1
  %26 = load i8, ptr %25, align 1, !tbaa !37
  %27 = and i8 %26, -64
  %28 = icmp eq i8 %27, -128
  br i1 %28, label %29, label %66

29:                                               ; preds = %24
  %30 = add nsw i32 %13, 1
  br label %31

31:                                               ; preds = %29, %12
  %32 = phi ptr [ %14, %12 ], [ %25, %29 ]
  %33 = phi i32 [ %13, %12 ], [ %30, %29 ]
  %34 = getelementptr inbounds i8, ptr %32, i64 1
  %35 = icmp ult ptr %34, %8
  br i1 %35, label %12, label %36, !llvm.loop !66

36:                                               ; preds = %31
  %37 = sext i32 %33 to i64
  br label %38

38:                                               ; preds = %36, %6
  %39 = phi i64 [ 0, %6 ], [ %37, %36 ]
  store i8 0, ptr %2, align 1, !tbaa !62
  %40 = add i64 %7, 1
  %41 = sub i64 %40, %39
  %42 = tail call ptr @Perl_safesysmalloc(i64 noundef %41) #15
  %43 = icmp sgt i64 %7, 0
  br i1 %43, label %44, label %61

44:                                               ; preds = %38, %56
  %45 = phi ptr [ %59, %56 ], [ %42, %38 ]
  %46 = phi ptr [ %57, %56 ], [ %0, %38 ]
  %47 = getelementptr inbounds i8, ptr %46, i64 1
  %48 = load i8, ptr %46, align 1, !tbaa !37
  %49 = icmp sgt i8 %48, -1
  br i1 %49, label %56, label %50

50:                                               ; preds = %44
  %51 = shl i8 %48, 6
  %52 = load i8, ptr %47, align 1, !tbaa !37
  %53 = and i8 %52, 63
  %54 = or disjoint i8 %53, %51
  %55 = getelementptr inbounds i8, ptr %46, i64 2
  br label %56

56:                                               ; preds = %50, %44
  %57 = phi ptr [ %47, %44 ], [ %55, %50 ]
  %58 = phi i8 [ %48, %44 ], [ %54, %50 ]
  %59 = getelementptr inbounds i8, ptr %45, i64 1
  store i8 %58, ptr %45, align 1, !tbaa !37
  %60 = icmp ult ptr %57, %8
  br i1 %60, label %44, label %61, !llvm.loop !67

61:                                               ; preds = %56, %38
  %62 = phi ptr [ %42, %38 ], [ %59, %56 ]
  store i8 0, ptr %62, align 1, !tbaa !37
  %63 = ptrtoint ptr %62 to i64
  %64 = ptrtoint ptr %42 to i64
  %65 = sub i64 %63, %64
  store i64 %65, ptr %1, align 8, !tbaa !49
  br label %66

66:                                               ; preds = %17, %24, %3, %61
  %67 = phi ptr [ %42, %61 ], [ %0, %3 ], [ %0, %24 ], [ %0, %17 ]
  ret ptr %67
}

declare ptr @Perl_safesysmalloc(i64 noundef) local_unnamed_addr #4

; Function Attrs: cold nounwind uwtable
define dso_local ptr @Perl_bytes_to_utf8(ptr noundef readonly %0, ptr nocapture noundef %1) local_unnamed_addr #3 !prof !47 {
  %3 = load i64, ptr %1, align 8, !tbaa !49
  %4 = getelementptr inbounds i8, ptr %0, i64 %3
  %5 = shl i64 %3, 1
  %6 = or disjoint i64 %5, 1
  %7 = tail call ptr @Perl_safesysmalloc(i64 noundef %6) #15
  %8 = icmp sgt i64 %3, 0
  br i1 %8, label %9, label %26

9:                                                ; preds = %2, %22
  %10 = phi ptr [ %24, %22 ], [ %0, %2 ]
  %11 = phi ptr [ %23, %22 ], [ %7, %2 ]
  %12 = load i8, ptr %10, align 1, !tbaa !37
  %13 = icmp sgt i8 %12, -1
  br i1 %13, label %14, label %16

14:                                               ; preds = %9
  %15 = getelementptr inbounds i8, ptr %11, i64 1
  store i8 %12, ptr %11, align 1, !tbaa !37
  br label %22

16:                                               ; preds = %9
  %17 = lshr i8 %12, 6
  %18 = or disjoint i8 %17, -64
  %19 = getelementptr inbounds i8, ptr %11, i64 1
  store i8 %18, ptr %11, align 1, !tbaa !37
  %20 = and i8 %12, -65
  %21 = getelementptr inbounds i8, ptr %11, i64 2
  store i8 %20, ptr %19, align 1, !tbaa !37
  br label %22

22:                                               ; preds = %14, %16
  %23 = phi ptr [ %15, %14 ], [ %21, %16 ]
  %24 = getelementptr inbounds i8, ptr %10, i64 1
  %25 = icmp ult ptr %24, %4
  br i1 %25, label %9, label %26, !llvm.loop !68

26:                                               ; preds = %22, %2
  %27 = phi ptr [ %7, %2 ], [ %23, %22 ]
  store i8 0, ptr %27, align 1, !tbaa !37
  %28 = ptrtoint ptr %27 to i64
  %29 = ptrtoint ptr %7 to i64
  %30 = sub i64 %28, %29
  store i64 %30, ptr %1, align 8, !tbaa !49
  ret ptr %7
}

; Function Attrs: cold nounwind uwtable
define dso_local ptr @Perl_utf16_to_utf8(ptr noundef readonly %0, ptr noundef %1, i32 noundef %2, ptr nocapture noundef writeonly %3) local_unnamed_addr #3 !prof !47 {
  %5 = and i32 %2, 1
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %9, label %7

7:                                                ; preds = %4
  %8 = sext i32 %2 to i64
  tail call void (ptr, ...) @Perl_croak(ptr noundef nonnull @.str.17, i64 noundef %8) #15
  br label %9

9:                                                ; preds = %7, %4
  %10 = sext i32 %2 to i64
  %11 = getelementptr inbounds i8, ptr %0, i64 %10
  %12 = icmp sgt i32 %2, 0
  br i1 %12, label %13, label %100

13:                                               ; preds = %9, %96
  %14 = phi ptr [ %98, %96 ], [ %0, %9 ]
  %15 = phi ptr [ %97, %96 ], [ %1, %9 ]
  %16 = load i8, ptr %14, align 1, !tbaa !37
  %17 = zext i8 %16 to i64
  %18 = shl nuw nsw i64 %17, 8
  %19 = getelementptr inbounds i8, ptr %14, i64 1
  %20 = load i8, ptr %19, align 1, !tbaa !37
  %21 = zext i8 %20 to i64
  %22 = or disjoint i64 %18, %21
  %23 = getelementptr inbounds i8, ptr %14, i64 2
  %24 = icmp ult i64 %22, 128
  br i1 %24, label %25, label %27

25:                                               ; preds = %13
  %26 = getelementptr inbounds i8, ptr %15, i64 1
  store i8 %20, ptr %15, align 1, !tbaa !37
  br label %96, !llvm.loop !69

27:                                               ; preds = %13
  %28 = icmp ult i64 %22, 2048
  br i1 %28, label %29, label %37

29:                                               ; preds = %27
  %30 = lshr i64 %22, 6
  %31 = trunc i64 %30 to i8
  %32 = or disjoint i8 %31, -64
  %33 = getelementptr inbounds i8, ptr %15, i64 1
  store i8 %32, ptr %15, align 1, !tbaa !37
  %34 = and i8 %20, 63
  %35 = or disjoint i8 %34, -128
  %36 = getelementptr inbounds i8, ptr %15, i64 2
  store i8 %35, ptr %33, align 1, !tbaa !37
  br label %96, !llvm.loop !69

37:                                               ; preds = %27
  %38 = and i64 %17, 248
  %39 = icmp eq i64 %38, 216
  br i1 %39, label %40, label %61

40:                                               ; preds = %37
  %41 = icmp uge ptr %23, %11
  %42 = icmp ugt i64 %22, 56319
  %43 = or i1 %41, %42
  br i1 %43, label %44, label %45

44:                                               ; preds = %40
  tail call void (ptr, ...) @Perl_croak(ptr noundef nonnull @.str.18) #15
  br label %61

45:                                               ; preds = %40
  %46 = load i8, ptr %23, align 1, !tbaa !37
  %47 = zext i8 %46 to i64
  %48 = shl nuw nsw i64 %47, 8
  %49 = getelementptr inbounds i8, ptr %14, i64 3
  %50 = load i8, ptr %49, align 1, !tbaa !37
  %51 = zext i8 %50 to i64
  %52 = or disjoint i64 %48, %51
  %53 = add nsw i64 %48, -57344
  %54 = icmp ult i64 %53, -1024
  br i1 %54, label %55, label %56

55:                                               ; preds = %45
  tail call void (ptr, ...) @Perl_croak(ptr noundef nonnull @.str.18) #15
  br label %56

56:                                               ; preds = %45, %55
  %57 = getelementptr inbounds i8, ptr %14, i64 4
  %58 = shl nuw nsw i64 %22, 10
  %59 = add nsw i64 %58, -56613888
  %60 = add nuw nsw i64 %59, %52
  br label %61

61:                                               ; preds = %44, %56, %37
  %62 = phi i64 [ %22, %44 ], [ %60, %56 ], [ %22, %37 ]
  %63 = phi ptr [ %23, %44 ], [ %57, %56 ], [ %23, %37 ]
  %64 = icmp ult i64 %62, 65536
  %65 = getelementptr inbounds i8, ptr %15, i64 1
  %66 = getelementptr inbounds i8, ptr %15, i64 2
  br i1 %64, label %67, label %79

67:                                               ; preds = %61
  %68 = lshr i64 %62, 12
  %69 = trunc i64 %68 to i8
  %70 = or disjoint i8 %69, -32
  store i8 %70, ptr %15, align 1, !tbaa !37
  %71 = lshr i64 %62, 6
  %72 = trunc i64 %71 to i8
  %73 = and i8 %72, 63
  %74 = or disjoint i8 %73, -128
  store i8 %74, ptr %65, align 1, !tbaa !37
  %75 = trunc i64 %62 to i8
  %76 = and i8 %75, 63
  %77 = or disjoint i8 %76, -128
  %78 = getelementptr inbounds i8, ptr %15, i64 3
  store i8 %77, ptr %66, align 1, !tbaa !37
  br label %96, !llvm.loop !69

79:                                               ; preds = %61
  %80 = lshr i64 %62, 18
  %81 = trunc i64 %80 to i8
  %82 = or i8 %81, -16
  store i8 %82, ptr %15, align 1, !tbaa !37
  %83 = lshr i64 %62, 12
  %84 = trunc i64 %83 to i8
  %85 = and i8 %84, 63
  %86 = or disjoint i8 %85, -128
  store i8 %86, ptr %65, align 1, !tbaa !37
  %87 = lshr i64 %62, 6
  %88 = trunc i64 %87 to i8
  %89 = and i8 %88, 63
  %90 = or disjoint i8 %89, -128
  %91 = getelementptr inbounds i8, ptr %15, i64 3
  store i8 %90, ptr %66, align 1, !tbaa !37
  %92 = trunc i64 %62 to i8
  %93 = and i8 %92, 63
  %94 = or disjoint i8 %93, -128
  %95 = getelementptr inbounds i8, ptr %15, i64 4
  store i8 %94, ptr %91, align 1, !tbaa !37
  br label %96, !llvm.loop !69

96:                                               ; preds = %79, %67, %29, %25
  %97 = phi ptr [ %26, %25 ], [ %36, %29 ], [ %78, %67 ], [ %95, %79 ]
  %98 = phi ptr [ %23, %25 ], [ %23, %29 ], [ %63, %67 ], [ %63, %79 ]
  %99 = icmp ult ptr %98, %11
  br i1 %99, label %13, label %100

100:                                              ; preds = %96, %9
  %101 = phi ptr [ %1, %9 ], [ %97, %96 ]
  %102 = ptrtoint ptr %101 to i64
  %103 = ptrtoint ptr %1 to i64
  %104 = sub i64 %102, %103
  %105 = trunc i64 %104 to i32
  store i32 %105, ptr %3, align 4, !tbaa !70
  ret ptr %101
}

declare void @Perl_croak(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: cold nounwind uwtable
define dso_local ptr @Perl_utf16_to_utf8_reversed(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr nocapture noundef writeonly %3) local_unnamed_addr #3 !prof !47 {
  %5 = sext i32 %2 to i64
  %6 = getelementptr inbounds i8, ptr %0, i64 %5
  %7 = and i32 %2, 1
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %10, label %9

9:                                                ; preds = %4
  tail call void (ptr, ...) @Perl_croak(ptr noundef nonnull @.str.19, i64 noundef %5) #15
  br label %10

10:                                               ; preds = %9, %4
  %11 = icmp sgt i32 %2, 0
  br i1 %11, label %12, label %19

12:                                               ; preds = %10, %12
  %13 = phi ptr [ %17, %12 ], [ %0, %10 ]
  %14 = load i8, ptr %13, align 1, !tbaa !37
  %15 = getelementptr inbounds i8, ptr %13, i64 1
  %16 = load i8, ptr %15, align 1, !tbaa !37
  store i8 %16, ptr %13, align 1, !tbaa !37
  store i8 %14, ptr %15, align 1, !tbaa !37
  %17 = getelementptr inbounds i8, ptr %13, i64 2
  %18 = icmp ult ptr %17, %6
  br i1 %18, label %12, label %19, !llvm.loop !72

19:                                               ; preds = %12, %10
  %20 = tail call ptr @Perl_utf16_to_utf8(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3)
  ret ptr %20
}

; Function Attrs: cold nounwind uwtable
define dso_local zeroext i1 @Perl__is_uni_FOO(i8 noundef zeroext %0, i64 noundef %1) local_unnamed_addr #3 !prof !47 {
  %3 = alloca [14 x i8], align 1
  call void @llvm.lifetime.start.p0(i64 14, ptr nonnull %3) #15
  %4 = call ptr @Perl_uvoffuni_to_utf8_flags(ptr noundef nonnull %3, i64 noundef %1, i64 noundef 0)
  %5 = zext i8 %0 to i64
  %6 = getelementptr inbounds [10 x ptr], ptr @PL_utf8_swash_ptrs, i64 0, i64 %5
  %7 = getelementptr inbounds [10 x ptr], ptr @swash_property_names, i64 0, i64 %5
  %8 = load ptr, ptr %7, align 8, !tbaa !51
  %9 = getelementptr inbounds [16 x ptr], ptr @PL_XPosix_ptrs, i64 0, i64 %5
  %10 = load ptr, ptr %9, align 8, !tbaa !51
  %11 = call fastcc zeroext i1 @S_is_utf8_common(ptr noundef nonnull %3, ptr noundef nonnull %6, ptr noundef %8, ptr noundef %10)
  call void @llvm.lifetime.end.p0(i64 14, ptr nonnull %3) #15
  ret i1 %11
}

; Function Attrs: cold nounwind uwtable
define dso_local zeroext i1 @Perl__is_utf8_FOO(i8 noundef zeroext %0, ptr noundef %1) local_unnamed_addr #3 !prof !47 {
  %3 = zext i8 %0 to i64
  %4 = getelementptr inbounds [10 x ptr], ptr @PL_utf8_swash_ptrs, i64 0, i64 %3
  %5 = getelementptr inbounds [10 x ptr], ptr @swash_property_names, i64 0, i64 %3
  %6 = load ptr, ptr %5, align 8, !tbaa !51
  %7 = getelementptr inbounds [16 x ptr], ptr @PL_XPosix_ptrs, i64 0, i64 %3
  %8 = load ptr, ptr %7, align 8, !tbaa !51
  %9 = tail call fastcc zeroext i1 @S_is_utf8_common(ptr noundef %1, ptr noundef nonnull %4, ptr noundef %6, ptr noundef %8)
  ret i1 %9
}

; Function Attrs: cold nounwind uwtable
define dso_local zeroext i1 @Perl__is_utf8_idstart(ptr noundef %0) local_unnamed_addr #3 !prof !47 {
  %2 = load i8, ptr %0, align 1, !tbaa !37
  %3 = icmp eq i8 %2, 95
  br i1 %3, label %6, label %4

4:                                                ; preds = %1
  %5 = tail call fastcc zeroext i1 @S_is_utf8_common(ptr noundef nonnull %0, ptr noundef nonnull @PL_utf8_idstart, ptr noundef nonnull @.str.20, ptr noundef null)
  br label %6

6:                                                ; preds = %1, %4
  %7 = phi i1 [ %5, %4 ], [ true, %1 ]
  ret i1 %7
}

; Function Attrs: cold nounwind uwtable
define internal fastcc zeroext i1 @S_is_utf8_common(ptr noundef %0, ptr nocapture noundef %1, ptr noundef %2, ptr noundef %3) unnamed_addr #3 !prof !47 {
  %5 = alloca i64, align 8
  %6 = alloca i8, align 1
  %7 = load i8, ptr %0, align 1, !tbaa !37
  %8 = zext i8 %7 to i64
  %9 = getelementptr inbounds [0 x i8], ptr @PL_utf8skip, i64 0, i64 %8
  %10 = load i8, ptr %9, align 1, !tbaa !37
  %11 = zext i8 %10 to i64
  %12 = icmp eq i8 %10, 0
  br i1 %12, label %71, label %13

13:                                               ; preds = %4
  %14 = icmp sgt i8 %7, -1
  br i1 %14, label %84, label %15

15:                                               ; preds = %13
  %16 = icmp ult i8 %10, 5
  br i1 %16, label %17, label %66

17:                                               ; preds = %15
  %18 = add nsw i8 %7, 62
  %19 = icmp ult i8 %18, 30
  br i1 %19, label %60, label %20

20:                                               ; preds = %17
  %21 = icmp eq i8 %7, -32
  br i1 %21, label %22, label %27

22:                                               ; preds = %20
  %23 = getelementptr inbounds i8, ptr %0, i64 1
  %24 = load i8, ptr %23, align 1, !tbaa !37
  %25 = and i8 %24, -32
  %26 = icmp eq i8 %25, -96
  br i1 %26, label %60, label %71

27:                                               ; preds = %20
  %28 = add nsw i8 %7, 31
  %29 = icmp ult i8 %28, 15
  br i1 %29, label %30, label %35

30:                                               ; preds = %27
  %31 = getelementptr inbounds i8, ptr %0, i64 1
  %32 = load i8, ptr %31, align 1, !tbaa !37
  %33 = and i8 %32, -64
  %34 = icmp eq i8 %33, -128
  br i1 %34, label %60, label %71

35:                                               ; preds = %27
  %36 = icmp eq i8 %7, -16
  br i1 %36, label %37, label %47

37:                                               ; preds = %35
  %38 = getelementptr inbounds i8, ptr %0, i64 1
  %39 = load i8, ptr %38, align 1, !tbaa !37
  %40 = add i8 %39, 112
  %41 = icmp ult i8 %40, 48
  br i1 %41, label %42, label %71

42:                                               ; preds = %37
  %43 = getelementptr inbounds i8, ptr %0, i64 2
  %44 = load i8, ptr %43, align 1, !tbaa !37
  %45 = and i8 %44, -64
  %46 = icmp eq i8 %45, -128
  br i1 %46, label %60, label %71

47:                                               ; preds = %35
  %48 = add nsw i8 %7, 15
  %49 = icmp ult i8 %48, 7
  br i1 %49, label %50, label %71

50:                                               ; preds = %47
  %51 = getelementptr inbounds i8, ptr %0, i64 1
  %52 = load i8, ptr %51, align 1, !tbaa !37
  %53 = and i8 %52, -64
  %54 = icmp eq i8 %53, -128
  br i1 %54, label %55, label %71

55:                                               ; preds = %50
  %56 = getelementptr inbounds i8, ptr %0, i64 2
  %57 = load i8, ptr %56, align 1, !tbaa !37
  %58 = and i8 %57, -64
  %59 = icmp eq i8 %58, -128
  br i1 %59, label %60, label %71

60:                                               ; preds = %55, %42, %30, %22, %17
  %61 = phi i64 [ 1, %17 ], [ 2, %22 ], [ 2, %30 ], [ 3, %42 ], [ 3, %55 ]
  %62 = getelementptr inbounds i8, ptr %0, i64 %61
  %63 = load i8, ptr %62, align 1, !tbaa !37
  %64 = and i8 %63, -64
  %65 = icmp ne i8 %64, -128
  br i1 %65, label %71, label %84

66:                                               ; preds = %15
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #15
  %67 = call i64 @Perl_utf8n_to_uvchr(ptr noundef nonnull %0, i64 noundef %11, ptr noundef nonnull %5, i32 noundef 8192)
  %68 = load i64, ptr %5, align 8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #15
  %69 = add i64 %68, 1
  %70 = icmp ult i64 %69, 2
  br i1 %70, label %71, label %84

71:                                               ; preds = %22, %30, %42, %37, %55, %50, %47, %60, %4, %66
  %72 = call zeroext i1 @Perl_ckwarn_d(i32 noundef 44) #15
  br i1 %72, label %73, label %95

73:                                               ; preds = %71
  call void (i32, ptr, ...) @Perl_warner(i32 noundef 11266, ptr noundef nonnull @.str.69, ptr noundef %2) #15
  %74 = call zeroext i1 @Perl_ckwarn(i32 noundef 44) #15
  br i1 %74, label %75, label %95

75:                                               ; preds = %73
  %76 = load i8, ptr %0, align 1, !tbaa !37
  %77 = zext i8 %76 to i64
  %78 = getelementptr inbounds [0 x i8], ptr @PL_utf8skip, i64 0, i64 %77
  %79 = load i8, ptr %78, align 1, !tbaa !37
  %80 = zext i8 %79 to i64
  %81 = call zeroext i1 @Perl_ckwarn_d(i32 noundef 44) #15
  %82 = select i1 %81, i32 0, i32 -8161
  %83 = call i64 @Perl_utf8n_to_uvchr(ptr noundef nonnull %0, i64 noundef %80, ptr noundef null, i32 noundef %82)
  br label %95

84:                                               ; preds = %13, %66, %60
  %85 = load ptr, ptr %1, align 8, !tbaa !51
  %86 = icmp eq ptr %85, null
  br i1 %86, label %87, label %91

87:                                               ; preds = %84
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %6) #15
  store i8 4, ptr %6, align 1, !tbaa !37
  %88 = icmp eq ptr %3, null
  %89 = select i1 %88, ptr %2, ptr @.str.9
  %90 = call ptr @Perl__core_swash_init(ptr noundef nonnull @.str.35, ptr noundef %89, ptr noundef nonnull @PL_sv_undef, i32 noundef 1, i32 noundef 0, ptr noundef %3, ptr noundef nonnull %6)
  store ptr %90, ptr %1, align 8, !tbaa !51
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %6) #15
  br label %91

91:                                               ; preds = %87, %84
  %92 = load ptr, ptr %1, align 8, !tbaa !51
  %93 = call i64 @Perl_swash_fetch(ptr noundef %92, ptr noundef nonnull %0, i1 noundef zeroext true), !range !73
  %94 = icmp ne i64 %93, 0
  br label %95

95:                                               ; preds = %71, %75, %73, %91
  %96 = phi i1 [ %94, %91 ], [ false, %73 ], [ false, %75 ], [ false, %71 ]
  ret i1 %96
}

; Function Attrs: cold nounwind uwtable
define dso_local zeroext i1 @Perl__is_uni_perl_idcont(i64 noundef %0) local_unnamed_addr #3 !prof !47 {
  %2 = alloca [14 x i8], align 1
  call void @llvm.lifetime.start.p0(i64 14, ptr nonnull %2) #15
  %3 = call ptr @Perl_uvoffuni_to_utf8_flags(ptr noundef nonnull %2, i64 noundef %0, i64 noundef 0)
  %4 = load ptr, ptr @PL_utf8_perl_idcont, align 8, !tbaa !51
  %5 = icmp eq ptr %4, null
  br i1 %5, label %6, label %8

6:                                                ; preds = %1
  %7 = call ptr @Perl__new_invlist_C_array(ptr noundef nonnull @_Perl_IDCont_invlist) #15
  br label %8

8:                                                ; preds = %1, %6
  %9 = phi ptr [ null, %1 ], [ %7, %6 ]
  %10 = call fastcc zeroext i1 @S_is_utf8_common(ptr noundef nonnull %2, ptr noundef nonnull @PL_utf8_perl_idcont, ptr noundef nonnull @.str.29, ptr noundef %9)
  call void @llvm.lifetime.end.p0(i64 14, ptr nonnull %2) #15
  ret i1 %10
}

; Function Attrs: cold nounwind uwtable
define dso_local zeroext i1 @Perl__is_utf8_perl_idcont(ptr noundef %0) local_unnamed_addr #3 !prof !47 {
  %2 = load ptr, ptr @PL_utf8_perl_idcont, align 8, !tbaa !51
  %3 = icmp eq ptr %2, null
  br i1 %3, label %4, label %6

4:                                                ; preds = %1
  %5 = tail call ptr @Perl__new_invlist_C_array(ptr noundef nonnull @_Perl_IDCont_invlist) #15
  br label %6

6:                                                ; preds = %4, %1
  %7 = phi ptr [ null, %1 ], [ %5, %4 ]
  %8 = tail call fastcc zeroext i1 @S_is_utf8_common(ptr noundef %0, ptr noundef nonnull @PL_utf8_perl_idcont, ptr noundef nonnull @.str.29, ptr noundef %7)
  ret i1 %8
}

; Function Attrs: cold nounwind uwtable
define dso_local zeroext i1 @Perl__is_uni_perl_idstart(i64 noundef %0) local_unnamed_addr #3 !prof !47 {
  %2 = alloca [14 x i8], align 1
  call void @llvm.lifetime.start.p0(i64 14, ptr nonnull %2) #15
  %3 = call ptr @Perl_uvoffuni_to_utf8_flags(ptr noundef nonnull %2, i64 noundef %0, i64 noundef 0)
  %4 = load ptr, ptr @PL_utf8_perl_idstart, align 8, !tbaa !51
  %5 = icmp eq ptr %4, null
  br i1 %5, label %6, label %8

6:                                                ; preds = %1
  %7 = call ptr @Perl__new_invlist_C_array(ptr noundef nonnull @_Perl_IDStart_invlist) #15
  br label %8

8:                                                ; preds = %1, %6
  %9 = phi ptr [ null, %1 ], [ %7, %6 ]
  %10 = call fastcc zeroext i1 @S_is_utf8_common(ptr noundef nonnull %2, ptr noundef nonnull @PL_utf8_perl_idstart, ptr noundef nonnull @.str.27, ptr noundef %9)
  call void @llvm.lifetime.end.p0(i64 14, ptr nonnull %2) #15
  ret i1 %10
}

; Function Attrs: cold nounwind uwtable
define dso_local zeroext i1 @Perl__is_utf8_perl_idstart(ptr noundef %0) local_unnamed_addr #3 !prof !47 {
  %2 = load ptr, ptr @PL_utf8_perl_idstart, align 8, !tbaa !51
  %3 = icmp eq ptr %2, null
  br i1 %3, label %4, label %6

4:                                                ; preds = %1
  %5 = tail call ptr @Perl__new_invlist_C_array(ptr noundef nonnull @_Perl_IDStart_invlist) #15
  br label %6

6:                                                ; preds = %4, %1
  %7 = phi ptr [ null, %1 ], [ %5, %4 ]
  %8 = tail call fastcc zeroext i1 @S_is_utf8_common(ptr noundef %0, ptr noundef nonnull @PL_utf8_perl_idstart, ptr noundef nonnull @.str.27, ptr noundef %7)
  ret i1 %8
}

; Function Attrs: cold nounwind uwtable
define dso_local i64 @Perl__to_upper_title_latin1(i8 noundef zeroext %0, ptr nocapture noundef writeonly %1, ptr nocapture noundef writeonly %2, i8 noundef signext %3) local_unnamed_addr #3 !prof !47 {
  %5 = zext i8 %0 to i64
  %6 = getelementptr inbounds [0 x i8], ptr @PL_mod_latin1_uc, i64 0, i64 %5
  %7 = load i8, ptr %6, align 1, !tbaa !37
  %8 = zext i8 %7 to i64
  %9 = icmp sgt i8 %7, -1
  br i1 %9, label %10, label %11

10:                                               ; preds = %4
  store i8 %7, ptr %1, align 1, !tbaa !37
  br label %28

11:                                               ; preds = %4
  %12 = icmp eq i8 %7, -1
  br i1 %12, label %13, label %19

13:                                               ; preds = %11
  switch i8 %0, label %17 [
    i8 -1, label %19
    i8 -75, label %14
    i8 -33, label %15
  ]

14:                                               ; preds = %13
  br label %19

15:                                               ; preds = %13
  %16 = getelementptr inbounds i8, ptr %1, i64 1
  store i8 83, ptr %1, align 1, !tbaa !37
  store i8 %3, ptr %16, align 1, !tbaa !37
  br label %28

17:                                               ; preds = %13
  %18 = zext i8 %0 to i32
  tail call void (ptr, ...) @Perl_croak(ptr noundef nonnull @.str.21, i32 noundef %18, i32 noundef 255) #15
  br label %19

19:                                               ; preds = %13, %14, %17, %11
  %20 = phi i64 [ 255, %17 ], [ 924, %14 ], [ %8, %11 ], [ 376, %13 ]
  %21 = lshr i64 %20, 6
  %22 = trunc i64 %21 to i8
  %23 = or disjoint i8 %22, -64
  %24 = getelementptr inbounds i8, ptr %1, i64 1
  store i8 %23, ptr %1, align 1, !tbaa !37
  %25 = trunc i64 %20 to i8
  %26 = and i8 %25, 63
  %27 = or disjoint i8 %26, -128
  store i8 %27, ptr %24, align 1, !tbaa !37
  br label %28

28:                                               ; preds = %19, %15, %10
  %29 = phi i64 [ 2, %19 ], [ 2, %15 ], [ 1, %10 ]
  %30 = phi i64 [ %20, %19 ], [ 83, %15 ], [ %8, %10 ]
  store i64 %29, ptr %2, align 8, !tbaa !49
  ret i64 %30
}

; Function Attrs: cold nounwind uwtable
define dso_local i64 @Perl_to_uni_upper(i64 noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #3 !prof !47 {
  %4 = icmp ult i64 %0, 256
  br i1 %4, label %5, label %8

5:                                                ; preds = %3
  %6 = trunc i64 %0 to i8
  %7 = tail call i64 @Perl__to_upper_title_latin1(i8 noundef zeroext %6, ptr noundef %1, ptr noundef %2, i8 noundef signext 83), !range !74
  br label %11

8:                                                ; preds = %3
  %9 = tail call ptr @Perl_uvoffuni_to_utf8_flags(ptr noundef %1, i64 noundef %0, i64 noundef 0)
  %10 = tail call i64 @Perl_to_utf8_case(ptr noundef %1, ptr noundef %1, ptr noundef %2, ptr noundef nonnull @PL_utf8_toupper, ptr noundef nonnull @.str.22, ptr noundef nonnull @.str.9)
  br label %11

11:                                               ; preds = %8, %5
  %12 = phi i64 [ %7, %5 ], [ %10, %8 ]
  ret i64 %12
}

; Function Attrs: cold nounwind uwtable
define dso_local i64 @Perl_to_utf8_case(ptr noundef %0, ptr noundef %1, ptr noundef writeonly %2, ptr nocapture noundef %3, ptr noundef %4, ptr noundef %5) local_unnamed_addr #3 !prof !47 {
  %7 = alloca i64, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #15
  store i64 0, ptr %7, align 8, !tbaa !49
  %8 = load i8, ptr %0, align 1, !tbaa !37
  %9 = zext i8 %8 to i64
  %10 = getelementptr inbounds [0 x i8], ptr @PL_utf8skip, i64 0, i64 %9
  %11 = load i8, ptr %10, align 1, !tbaa !37
  %12 = zext i8 %11 to i64
  %13 = getelementptr inbounds i8, ptr %0, i64 %12
  %14 = icmp eq i8 %11, 1
  br i1 %14, label %36, label %15

15:                                               ; preds = %6
  %16 = icmp ugt i8 %11, 6
  %17 = zext i8 %11 to i32
  %18 = add nsw i32 %17, -2
  %19 = lshr i32 31, %18
  %20 = zext nneg i32 %19 to i64
  %21 = select i1 %16, i64 0, i64 %20
  %22 = and i64 %21, %9
  %23 = icmp eq i8 %11, 0
  br i1 %23, label %36, label %24

24:                                               ; preds = %15
  %25 = getelementptr inbounds i8, ptr %0, i64 1
  br label %26

26:                                               ; preds = %24, %26
  %27 = phi ptr [ %34, %26 ], [ %25, %24 ]
  %28 = phi i64 [ %33, %26 ], [ %22, %24 ]
  %29 = shl i64 %28, 6
  %30 = load i8, ptr %27, align 1, !tbaa !37
  %31 = and i8 %30, 63
  %32 = zext nneg i8 %31 to i64
  %33 = or disjoint i64 %29, %32
  %34 = getelementptr inbounds i8, ptr %27, i64 1
  %35 = icmp ult ptr %34, %13
  br i1 %35, label %26, label %36, !llvm.loop !54

36:                                               ; preds = %26, %15, %6
  %37 = phi i64 [ %9, %6 ], [ %22, %15 ], [ %33, %26 ]
  %38 = icmp ugt i64 %37, 55295
  br i1 %38, label %39, label %79

39:                                               ; preds = %36
  %40 = icmp ult i64 %37, 57344
  br i1 %40, label %41, label %59

41:                                               ; preds = %39
  %42 = tail call zeroext i1 @Perl_ckwarn_d(i32 noundef 50) #15
  br i1 %42, label %43, label %79

43:                                               ; preds = %41
  %44 = load ptr, ptr @PL_op, align 8, !tbaa !51
  %45 = icmp eq ptr %44, null
  br i1 %45, label %57, label %46

46:                                               ; preds = %43
  %47 = getelementptr inbounds %struct.op, ptr %44, i64 0, i32 4
  %48 = load i16, ptr %47, align 8
  %49 = and i16 %48, 511
  %50 = icmp eq i16 %49, 380
  br i1 %50, label %51, label %53

51:                                               ; preds = %46
  %52 = tail call ptr @Perl_custom_op_get_field(ptr noundef nonnull %44, i32 noundef 2) #15
  br label %57

53:                                               ; preds = %46
  %54 = zext nneg i16 %49 to i64
  %55 = getelementptr inbounds [0 x ptr], ptr @PL_op_desc, i64 0, i64 %54
  %56 = load ptr, ptr %55, align 8, !tbaa !51
  br label %57

57:                                               ; preds = %43, %51, %53
  %58 = phi ptr [ %52, %51 ], [ %56, %53 ], [ %4, %43 ]
  tail call void (i32, ptr, ...) @Perl_warner(i32 noundef 50, ptr noundef nonnull @.str.33, ptr noundef %58, i64 noundef %37) #15
  br label %79

59:                                               ; preds = %39
  %60 = icmp ugt i64 %37, 1114111
  br i1 %60, label %61, label %79

61:                                               ; preds = %59
  %62 = tail call zeroext i1 @Perl_ckwarn_d(i32 noundef 48) #15
  br i1 %62, label %63, label %79

63:                                               ; preds = %61
  %64 = load ptr, ptr @PL_op, align 8, !tbaa !51
  %65 = icmp eq ptr %64, null
  br i1 %65, label %77, label %66

66:                                               ; preds = %63
  %67 = getelementptr inbounds %struct.op, ptr %64, i64 0, i32 4
  %68 = load i16, ptr %67, align 8
  %69 = and i16 %68, 511
  %70 = icmp eq i16 %69, 380
  br i1 %70, label %71, label %73

71:                                               ; preds = %66
  %72 = tail call ptr @Perl_custom_op_get_field(ptr noundef nonnull %64, i32 noundef 2) #15
  br label %77

73:                                               ; preds = %66
  %74 = zext nneg i16 %69 to i64
  %75 = getelementptr inbounds [0 x ptr], ptr @PL_op_desc, i64 0, i64 %74
  %76 = load ptr, ptr %75, align 8, !tbaa !51
  br label %77

77:                                               ; preds = %63, %71, %73
  %78 = phi ptr [ %72, %71 ], [ %76, %73 ], [ %4, %63 ]
  tail call void (i32, ptr, ...) @Perl_warner(i32 noundef 48, ptr noundef nonnull @.str.34, ptr noundef %78, i64 noundef %37) #15
  br label %79

79:                                               ; preds = %57, %41, %61, %77, %59, %36
  %80 = load ptr, ptr %3, align 8, !tbaa !51
  %81 = icmp eq ptr %80, null
  br i1 %81, label %82, label %84

82:                                               ; preds = %79
  %83 = tail call ptr @Perl__core_swash_init(ptr noundef nonnull @.str.35, ptr noundef %4, ptr noundef nonnull @PL_sv_undef, i32 noundef 4, i32 noundef 0, ptr noundef null, ptr noundef null)
  store ptr %83, ptr %3, align 8, !tbaa !51
  br label %84

84:                                               ; preds = %82, %79
  %85 = icmp eq ptr %5, null
  br i1 %85, label %151, label %86

86:                                               ; preds = %84
  %87 = load i8, ptr %5, align 1, !tbaa !37
  %88 = icmp eq i8 %87, 0
  br i1 %88, label %91, label %89

89:                                               ; preds = %86
  %90 = tail call ptr @Perl_get_hv(ptr noundef nonnull %5, i32 noundef 0) #15
  br label %101

91:                                               ; preds = %86
  %92 = load ptr, ptr %3, align 8, !tbaa !51
  %93 = getelementptr inbounds %struct.sv, ptr %92, i64 0, i32 3
  %94 = load ptr, ptr %93, align 8, !tbaa !37
  %95 = tail call ptr @Perl_hv_common(ptr noundef %94, ptr noundef null, ptr noundef nonnull @.str.36, i64 noundef 8, i32 noundef 0, i32 noundef 32, ptr noundef null, i32 noundef 0) #15
  %96 = icmp eq ptr %95, null
  br i1 %96, label %101, label %97

97:                                               ; preds = %91
  %98 = load ptr, ptr %95, align 8, !tbaa !51
  %99 = getelementptr inbounds %struct.sv, ptr %98, i64 0, i32 3
  %100 = load ptr, ptr %99, align 8, !tbaa !37
  br label %101

101:                                              ; preds = %91, %97, %89
  %102 = phi ptr [ %90, %89 ], [ %100, %97 ], [ null, %91 ]
  %103 = icmp eq ptr %102, null
  br i1 %103, label %151, label %104

104:                                              ; preds = %101
  %105 = icmp ult i64 %37, 128
  br i1 %105, label %119, label %106

106:                                              ; preds = %104
  %107 = icmp ult i64 %37, 2048
  br i1 %107, label %119, label %108

108:                                              ; preds = %106
  %109 = icmp ult i64 %37, 65536
  br i1 %109, label %119, label %110

110:                                              ; preds = %108
  %111 = icmp ult i64 %37, 2097152
  br i1 %111, label %119, label %112

112:                                              ; preds = %110
  %113 = icmp ult i64 %37, 67108864
  br i1 %113, label %119, label %114

114:                                              ; preds = %112
  %115 = icmp ult i64 %37, 2147483648
  br i1 %115, label %119, label %116

116:                                              ; preds = %114
  %117 = icmp ult i64 %37, 68719476736
  %118 = select i1 %117, i32 7, i32 13
  br label %119

119:                                              ; preds = %106, %110, %116, %114, %112, %108, %104
  %120 = phi i32 [ 1, %104 ], [ 2, %106 ], [ 3, %108 ], [ 4, %110 ], [ 5, %112 ], [ %118, %116 ], [ 6, %114 ]
  %121 = tail call ptr @Perl_hv_common_key_len(ptr noundef nonnull %102, ptr noundef nonnull %0, i32 noundef %120, i32 noundef 32, ptr noundef null, i32 noundef 0) #15
  %122 = icmp eq ptr %121, null
  br i1 %122, label %151, label %123

123:                                              ; preds = %119
  %124 = load ptr, ptr %121, align 8, !tbaa !51
  %125 = icmp eq ptr %124, null
  br i1 %125, label %151, label %126

126:                                              ; preds = %123
  %127 = getelementptr inbounds %struct.sv, ptr %124, i64 0, i32 2
  %128 = load i32, ptr %127, align 4, !tbaa !75
  %129 = and i32 %128, 2098176
  %130 = icmp eq i32 %129, 1024
  br i1 %130, label %131, label %137

131:                                              ; preds = %126
  %132 = load ptr, ptr %124, align 8, !tbaa !77
  %133 = getelementptr inbounds %struct.xpv, ptr %132, i64 0, i32 2
  %134 = load i64, ptr %133, align 8, !tbaa !78
  store i64 %134, ptr %7, align 8, !tbaa !49
  %135 = getelementptr inbounds %struct.sv, ptr %124, i64 0, i32 3
  %136 = load ptr, ptr %135, align 8, !tbaa !37
  br label %139

137:                                              ; preds = %126
  %138 = call ptr @Perl_sv_2pv_flags(ptr noundef nonnull %124, ptr noundef nonnull %7, i32 noundef 34) #15
  br label %139

139:                                              ; preds = %137, %131
  %140 = phi ptr [ %136, %131 ], [ %138, %137 ]
  %141 = load i64, ptr %7, align 8, !tbaa !49
  %142 = icmp eq i64 %141, 1
  br i1 %142, label %143, label %150

143:                                              ; preds = %139
  %144 = load i8, ptr %140, align 1, !tbaa !37
  %145 = zext i8 %144 to i64
  %146 = call ptr @Perl_uvoffuni_to_utf8_flags(ptr noundef %1, i64 noundef %145, i64 noundef 0)
  %147 = ptrtoint ptr %146 to i64
  %148 = ptrtoint ptr %1 to i64
  %149 = sub i64 %147, %148
  store i64 %149, ptr %7, align 8, !tbaa !49
  br label %151

150:                                              ; preds = %139
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %1, ptr align 1 %140, i64 %141, i1 false)
  br label %151

151:                                              ; preds = %101, %119, %123, %150, %143, %84
  %152 = load i64, ptr %7, align 8, !tbaa !49
  %153 = icmp eq i64 %152, 0
  br i1 %153, label %154, label %165

154:                                              ; preds = %151
  %155 = load ptr, ptr %3, align 8, !tbaa !51
  %156 = icmp eq ptr %155, null
  br i1 %156, label %165, label %157

157:                                              ; preds = %154
  %158 = call i64 @Perl_swash_fetch(ptr noundef nonnull %155, ptr noundef nonnull %0, i1 noundef zeroext true), !range !73
  %159 = icmp eq i64 %158, 0
  br i1 %159, label %165, label %160

160:                                              ; preds = %157
  %161 = call ptr @Perl_uvoffuni_to_utf8_flags(ptr noundef %1, i64 noundef %158, i64 noundef 0)
  %162 = ptrtoint ptr %161 to i64
  %163 = ptrtoint ptr %1 to i64
  %164 = sub i64 %162, %163
  store i64 %164, ptr %7, align 8, !tbaa !49
  br label %165

165:                                              ; preds = %157, %160, %154, %151
  %166 = load i64, ptr %7, align 8, !tbaa !49
  %167 = icmp eq i64 %166, 0
  br i1 %167, label %200, label %168

168:                                              ; preds = %165
  %169 = icmp eq ptr %2, null
  br i1 %169, label %171, label %170

170:                                              ; preds = %168
  store i64 %166, ptr %2, align 8, !tbaa !49
  br label %171

171:                                              ; preds = %170, %168
  %172 = load i8, ptr %1, align 1, !tbaa !37
  %173 = zext i8 %172 to i64
  %174 = getelementptr inbounds [0 x i8], ptr @PL_utf8skip, i64 0, i64 %173
  %175 = load i8, ptr %174, align 1, !tbaa !37
  %176 = zext i8 %175 to i64
  %177 = getelementptr inbounds i8, ptr %1, i64 %176
  %178 = icmp eq i8 %175, 1
  br i1 %178, label %211, label %179

179:                                              ; preds = %171
  %180 = icmp ugt i8 %175, 6
  %181 = zext i8 %175 to i32
  %182 = add nsw i32 %181, -2
  %183 = lshr i32 31, %182
  %184 = zext nneg i32 %183 to i64
  %185 = select i1 %180, i64 0, i64 %184
  %186 = and i64 %185, %173
  %187 = icmp eq i8 %175, 0
  br i1 %187, label %211, label %188

188:                                              ; preds = %179
  %189 = getelementptr inbounds i8, ptr %1, i64 1
  br label %190

190:                                              ; preds = %188, %190
  %191 = phi ptr [ %198, %190 ], [ %189, %188 ]
  %192 = phi i64 [ %197, %190 ], [ %186, %188 ]
  %193 = shl i64 %192, 6
  %194 = load i8, ptr %191, align 1, !tbaa !37
  %195 = and i8 %194, 63
  %196 = zext nneg i8 %195 to i64
  %197 = or disjoint i64 %193, %196
  %198 = getelementptr inbounds i8, ptr %191, i64 1
  %199 = icmp ult ptr %198, %177
  br i1 %199, label %190, label %211, !llvm.loop !54

200:                                              ; preds = %165
  %201 = load i8, ptr %0, align 1, !tbaa !37
  %202 = zext i8 %201 to i64
  %203 = getelementptr inbounds [0 x i8], ptr @PL_utf8skip, i64 0, i64 %202
  %204 = load i8, ptr %203, align 1, !tbaa !37
  %205 = zext i8 %204 to i64
  store i64 %205, ptr %7, align 8, !tbaa !49
  %206 = icmp eq ptr %0, %1
  br i1 %206, label %208, label %207

207:                                              ; preds = %200
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %1, ptr nonnull align 1 %0, i64 %205, i1 false)
  br label %208

208:                                              ; preds = %207, %200
  %209 = icmp eq ptr %2, null
  br i1 %209, label %211, label %210

210:                                              ; preds = %208
  store i64 %205, ptr %2, align 8, !tbaa !49
  br label %211

211:                                              ; preds = %190, %179, %171, %208, %210
  %212 = phi i64 [ %37, %210 ], [ %37, %208 ], [ %173, %171 ], [ %186, %179 ], [ %197, %190 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #15
  ret i64 %212
}

; Function Attrs: cold nounwind uwtable
define dso_local i64 @Perl_to_uni_title(i64 noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #3 !prof !47 {
  %4 = icmp ult i64 %0, 256
  br i1 %4, label %5, label %8

5:                                                ; preds = %3
  %6 = trunc i64 %0 to i8
  %7 = tail call i64 @Perl__to_upper_title_latin1(i8 noundef zeroext %6, ptr noundef %1, ptr noundef %2, i8 noundef signext 115), !range !74
  br label %11

8:                                                ; preds = %3
  %9 = tail call ptr @Perl_uvoffuni_to_utf8_flags(ptr noundef %1, i64 noundef %0, i64 noundef 0)
  %10 = tail call i64 @Perl_to_utf8_case(ptr noundef %1, ptr noundef %1, ptr noundef %2, ptr noundef nonnull @PL_utf8_totitle, ptr noundef nonnull @.str.23, ptr noundef nonnull @.str.9)
  br label %11

11:                                               ; preds = %8, %5
  %12 = phi i64 [ %7, %5 ], [ %10, %8 ]
  ret i64 %12
}

; Function Attrs: cold nounwind uwtable
define dso_local i64 @Perl_to_uni_lower(i64 noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #3 !prof !47 {
  %4 = icmp ult i64 %0, 256
  br i1 %4, label %5, label %21

5:                                                ; preds = %3
  %6 = getelementptr inbounds [0 x i8], ptr @PL_latin1_lc, i64 0, i64 %0
  %7 = load i8, ptr %6, align 1, !tbaa !37
  %8 = icmp eq ptr %1, null
  br i1 %8, label %19, label %9

9:                                                ; preds = %5
  %10 = icmp sgt i8 %7, -1
  br i1 %10, label %11, label %12

11:                                               ; preds = %9
  store i8 %7, ptr %1, align 1, !tbaa !37
  br label %17

12:                                               ; preds = %9
  %13 = lshr i8 %7, 6
  %14 = or disjoint i8 %13, -64
  store i8 %14, ptr %1, align 1, !tbaa !37
  %15 = and i8 %7, -65
  %16 = getelementptr inbounds i8, ptr %1, i64 1
  store i8 %15, ptr %16, align 1, !tbaa !37
  br label %17

17:                                               ; preds = %12, %11
  %18 = phi i64 [ 1, %11 ], [ 2, %12 ]
  store i64 %18, ptr %2, align 8, !tbaa !49
  br label %19

19:                                               ; preds = %17, %5
  %20 = zext i8 %7 to i64
  br label %24

21:                                               ; preds = %3
  %22 = tail call ptr @Perl_uvoffuni_to_utf8_flags(ptr noundef %1, i64 noundef %0, i64 noundef 0)
  %23 = tail call i64 @Perl_to_utf8_case(ptr noundef %1, ptr noundef %1, ptr noundef %2, ptr noundef nonnull @PL_utf8_tolower, ptr noundef nonnull @.str.24, ptr noundef nonnull @.str.9)
  br label %24

24:                                               ; preds = %21, %19
  %25 = phi i64 [ %20, %19 ], [ %23, %21 ]
  ret i64 %25
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local i64 @Perl__to_fold_latin1(i8 noundef zeroext %0, ptr nocapture noundef writeonly %1, ptr nocapture noundef writeonly %2, i32 noundef %3) local_unnamed_addr #8 !prof !80 {
  %5 = icmp eq i8 %0, -75
  br i1 %5, label %22, label %6, !prof !81

6:                                                ; preds = %4
  %7 = and i32 %3, 2
  %8 = icmp ne i32 %7, 0
  %9 = icmp eq i8 %0, -33
  %10 = and i1 %9, %8
  br i1 %10, label %11, label %17, !prof !81

11:                                               ; preds = %6
  %12 = and i32 %3, 4
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %15, label %14

14:                                               ; preds = %11
  store i64 4, ptr %2, align 8, !tbaa !49
  store i32 -1077559355, ptr %1, align 1
  br label %37

15:                                               ; preds = %11
  %16 = getelementptr inbounds i8, ptr %1, i64 1
  store i8 115, ptr %1, align 1, !tbaa !37
  store i8 115, ptr %16, align 1, !tbaa !37
  store i64 2, ptr %2, align 8, !tbaa !49
  br label %37

17:                                               ; preds = %6
  %18 = zext i8 %0 to i64
  %19 = getelementptr inbounds [0 x i8], ptr @PL_latin1_lc, i64 0, i64 %18
  %20 = load i8, ptr %19, align 1, !tbaa !37
  %21 = zext i8 %20 to i64
  br label %22

22:                                               ; preds = %4, %17
  %23 = phi i64 [ %21, %17 ], [ 956, %4 ]
  %24 = icmp ult i64 %23, 128
  br i1 %24, label %25, label %27, !prof !82

25:                                               ; preds = %22
  %26 = trunc i64 %23 to i8
  store i8 %26, ptr %1, align 1, !tbaa !37
  br label %35

27:                                               ; preds = %22
  %28 = lshr i64 %23, 6
  %29 = trunc i64 %28 to i8
  %30 = or disjoint i8 %29, -64
  %31 = getelementptr inbounds i8, ptr %1, i64 1
  store i8 %30, ptr %1, align 1, !tbaa !37
  %32 = trunc i64 %23 to i8
  %33 = and i8 %32, 63
  %34 = or disjoint i8 %33, -128
  store i8 %34, ptr %31, align 1, !tbaa !37
  br label %35

35:                                               ; preds = %27, %25
  %36 = phi i64 [ 2, %27 ], [ 1, %25 ]
  store i64 %36, ptr %2, align 8, !tbaa !49
  br label %37

37:                                               ; preds = %35, %15, %14
  %38 = phi i64 [ %23, %35 ], [ 383, %14 ], [ 115, %15 ]
  ret i64 %38
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #9

; Function Attrs: cold nounwind uwtable
define dso_local i64 @Perl__to_uni_fold_flags(i64 noundef %0, ptr noundef %1, ptr noundef %2, i8 noundef zeroext %3) local_unnamed_addr #3 !prof !47 {
  %5 = alloca [14 x i8], align 1
  %6 = and i8 %3, 1
  %7 = icmp eq i8 %6, 0
  br i1 %7, label %13, label %8

8:                                                ; preds = %4
  %9 = load i8, ptr @PL_in_utf8_CTYPE_locale, align 1, !tbaa !62, !range !64, !noundef !65
  %10 = icmp eq i8 %9, 0
  br i1 %10, label %31, label %11

11:                                               ; preds = %8
  %12 = and i8 %3, -2
  br label %13

13:                                               ; preds = %11, %4
  %14 = phi i8 [ %12, %11 ], [ %3, %4 ]
  %15 = icmp ult i64 %0, 256
  br i1 %15, label %16, label %21

16:                                               ; preds = %13
  %17 = trunc i64 %0 to i8
  %18 = and i8 %14, 6
  %19 = zext nneg i8 %18 to i32
  %20 = tail call i64 @Perl__to_fold_latin1(i8 noundef zeroext %17, ptr noundef %1, ptr noundef %2, i32 noundef %19), !range !83
  br label %35

21:                                               ; preds = %13
  %22 = zext i8 %14 to i32
  %23 = and i32 %22, 5
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %25, label %31

25:                                               ; preds = %21
  %26 = tail call ptr @Perl_uvoffuni_to_utf8_flags(ptr noundef %1, i64 noundef %0, i64 noundef 0)
  %27 = and i32 %22, 2
  %28 = icmp eq i32 %27, 0
  %29 = select i1 %28, ptr null, ptr @.str.9
  %30 = tail call i64 @Perl_to_utf8_case(ptr noundef %1, ptr noundef %1, ptr noundef %2, ptr noundef nonnull @PL_utf8_tofold, ptr noundef nonnull @.str.26, ptr noundef %29)
  br label %35

31:                                               ; preds = %21, %8
  %32 = phi i8 [ %14, %21 ], [ %3, %8 ]
  %33 = call ptr @Perl_uvoffuni_to_utf8_flags(ptr noundef nonnull %5, i64 noundef %0, i64 noundef 0)
  %34 = call i64 @Perl__to_utf8_fold_flags(ptr noundef nonnull %5, ptr noundef %1, ptr noundef %2, i8 noundef zeroext %32)
  br label %35

35:                                               ; preds = %31, %25, %16
  %36 = phi i64 [ %20, %16 ], [ %34, %31 ], [ %30, %25 ]
  ret i64 %36
}

; Function Attrs: cold nounwind uwtable
define dso_local i64 @Perl__to_utf8_fold_flags(ptr noundef %0, ptr noundef %1, ptr noundef %2, i8 noundef zeroext %3) local_unnamed_addr #3 !prof !47 {
  %5 = and i8 %3, 1
  %6 = icmp eq i8 %5, 0
  %7 = load i8, ptr @PL_in_utf8_CTYPE_locale, align 1, !range !64
  %8 = icmp eq i8 %7, 0
  %9 = select i1 %6, i1 true, i1 %8
  %10 = and i8 %3, -2
  %11 = select i1 %9, i8 %3, i8 %10
  %12 = load i8, ptr %0, align 1, !tbaa !37
  %13 = icmp sgt i8 %12, -1
  br i1 %13, label %14, label %28

14:                                               ; preds = %4
  %15 = zext i8 %11 to i32
  %16 = and i32 %15, 1
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %25, label %18

18:                                               ; preds = %14
  %19 = tail call ptr @__ctype_tolower_loc() #16
  %20 = load ptr, ptr %19, align 8, !tbaa !51
  %21 = zext nneg i8 %12 to i64
  %22 = getelementptr inbounds i32, ptr %20, i64 %21
  %23 = load i32, ptr %22, align 4, !tbaa !70
  %24 = sext i32 %23 to i64
  br label %126

25:                                               ; preds = %14
  %26 = and i32 %15, 6
  %27 = tail call i64 @Perl__to_fold_latin1(i8 noundef zeroext %12, ptr noundef %1, ptr noundef %2, i32 noundef %26), !range !83
  br label %141

28:                                               ; preds = %4
  %29 = and i8 %12, -2
  %30 = icmp eq i8 %29, -62
  %31 = zext i8 %11 to i32
  br i1 %30, label %32, label %45

32:                                               ; preds = %28
  %33 = and i32 %31, 1
  %34 = icmp eq i32 %33, 0
  %35 = shl i8 %12, 6
  %36 = getelementptr inbounds i8, ptr %0, i64 1
  %37 = load i8, ptr %36, align 1, !tbaa !37
  %38 = and i8 %37, 63
  %39 = or disjoint i8 %38, %35
  br i1 %34, label %42, label %40

40:                                               ; preds = %32
  %41 = zext i8 %39 to i64
  br label %126

42:                                               ; preds = %32
  %43 = and i32 %31, 6
  %44 = tail call i64 @Perl__to_fold_latin1(i8 noundef zeroext %39, ptr noundef %1, ptr noundef %2, i32 noundef %43), !range !83
  br label %141

45:                                               ; preds = %28
  %46 = and i32 %31, 2
  %47 = icmp eq i32 %46, 0
  %48 = select i1 %47, ptr null, ptr @.str.9
  %49 = tail call i64 @Perl_to_utf8_case(ptr noundef nonnull %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull @PL_utf8_tofold, ptr noundef nonnull @.str.26, ptr noundef %48)
  %50 = and i32 %31, 1
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %72, label %52

52:                                               ; preds = %45
  %53 = load i8, ptr %0, align 1, !tbaa !37
  %54 = zext i8 %53 to i64
  %55 = getelementptr inbounds [0 x i8], ptr @PL_utf8skip, i64 0, i64 %54
  %56 = load i8, ptr %55, align 1, !tbaa !37
  %57 = icmp eq i8 %56, 3
  br i1 %57, label %58, label %67

58:                                               ; preds = %52
  %59 = tail call i32 @bcmp(ptr noundef nonnull dereferenceable(3) %0, ptr noundef nonnull dereferenceable(3) @.str.37, i64 3)
  %60 = icmp eq i32 %59, 0
  br i1 %60, label %61, label %62

61:                                               ; preds = %58
  tail call void (i32, ptr, ...) @Perl_ck_warner(i32 noundef 65, ptr noundef nonnull @.str.38) #15
  br label %69

62:                                               ; preds = %58
  br i1 %57, label %63, label %67

63:                                               ; preds = %62
  %64 = tail call i32 @bcmp(ptr noundef nonnull dereferenceable(3) %0, ptr noundef nonnull dereferenceable(3) @.str.39, i64 3)
  %65 = icmp eq i32 %64, 0
  br i1 %65, label %66, label %67

66:                                               ; preds = %63
  tail call void (i32, ptr, ...) @Perl_ck_warner(i32 noundef 65, ptr noundef nonnull @.str.40) #15
  br label %69

67:                                               ; preds = %52, %62, %63
  %68 = tail call fastcc i64 @S_check_locale_boundary_crossing(ptr noundef nonnull %0, i64 noundef %49, ptr noundef %1, ptr noundef %2)
  br label %69

69:                                               ; preds = %66, %61, %67
  %70 = phi i32 [ 1, %67 ], [ 3, %66 ], [ 2, %61 ]
  %71 = phi i64 [ %68, %67 ], [ undef, %66 ], [ undef, %61 ]
  switch i32 %70, label %141 [
    i32 2, label %139
    i32 3, label %140
  ]

72:                                               ; preds = %45
  %73 = and i32 %31, 4
  %74 = icmp eq i32 %73, 0
  br i1 %74, label %141, label %75

75:                                               ; preds = %72
  %76 = load i64, ptr %2, align 8, !tbaa !49
  %77 = getelementptr inbounds i8, ptr %1, i64 %76
  %78 = icmp sgt i64 %76, 0
  br i1 %78, label %79, label %123

79:                                               ; preds = %75, %116
  %80 = phi ptr [ %121, %116 ], [ %1, %75 ]
  %81 = load i8, ptr %80, align 1, !tbaa !37
  %82 = icmp sgt i8 %81, -1
  br i1 %82, label %83, label %116

83:                                               ; preds = %79
  %84 = load i8, ptr %0, align 1, !tbaa !37
  %85 = zext i8 %84 to i64
  %86 = getelementptr inbounds [0 x i8], ptr @PL_utf8skip, i64 0, i64 %85
  %87 = load i8, ptr %86, align 1, !tbaa !37
  %88 = zext i8 %87 to i64
  %89 = getelementptr inbounds i8, ptr %0, i64 %88
  store i64 %88, ptr %2, align 8, !tbaa !49
  %90 = icmp eq i8 %87, 1
  br i1 %90, label %112, label %91

91:                                               ; preds = %83
  %92 = icmp ugt i8 %87, 6
  %93 = zext i8 %87 to i32
  %94 = add nsw i32 %93, -2
  %95 = lshr i32 31, %94
  %96 = zext nneg i32 %95 to i64
  %97 = select i1 %92, i64 0, i64 %96
  %98 = and i64 %97, %85
  %99 = icmp eq i8 %87, 0
  br i1 %99, label %112, label %100

100:                                              ; preds = %91
  %101 = getelementptr inbounds i8, ptr %0, i64 1
  br label %102

102:                                              ; preds = %100, %102
  %103 = phi ptr [ %110, %102 ], [ %101, %100 ]
  %104 = phi i64 [ %109, %102 ], [ %98, %100 ]
  %105 = shl i64 %104, 6
  %106 = load i8, ptr %103, align 1, !tbaa !37
  %107 = and i8 %106, 63
  %108 = zext nneg i8 %107 to i64
  %109 = or disjoint i64 %105, %108
  %110 = getelementptr inbounds i8, ptr %103, i64 1
  %111 = icmp ult ptr %110, %89
  br i1 %111, label %102, label %112, !llvm.loop !54

112:                                              ; preds = %102, %91, %83
  %113 = phi i64 [ %85, %83 ], [ %98, %91 ], [ %109, %102 ]
  switch i64 %113, label %115 [
    i64 7838, label %123
    i64 223, label %123
    i64 64261, label %114
  ]

114:                                              ; preds = %112
  br label %123

115:                                              ; preds = %112
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %1, ptr nonnull align 1 %0, i64 %88, i1 false)
  br label %123

116:                                              ; preds = %79
  %117 = zext i8 %81 to i64
  %118 = getelementptr inbounds [0 x i8], ptr @PL_utf8skip, i64 0, i64 %117
  %119 = load i8, ptr %118, align 1, !tbaa !37
  %120 = zext i8 %119 to i64
  %121 = getelementptr inbounds i8, ptr %80, i64 %120
  %122 = icmp ult ptr %121, %77
  br i1 %122, label %79, label %123, !llvm.loop !84

123:                                              ; preds = %116, %75, %112, %112, %114, %115
  %124 = phi i32 [ 3, %114 ], [ 1, %115 ], [ 2, %112 ], [ 2, %112 ], [ 1, %75 ], [ 1, %116 ]
  %125 = phi i64 [ undef, %114 ], [ %113, %115 ], [ undef, %112 ], [ undef, %112 ], [ %49, %75 ], [ %49, %116 ]
  switch i32 %124, label %141 [
    i32 2, label %139
    i32 3, label %140
  ]

126:                                              ; preds = %40, %18
  %127 = phi i64 [ %24, %18 ], [ %41, %40 ]
  %128 = icmp ult i64 %127, 128
  %129 = trunc i64 %127 to i8
  br i1 %128, label %130, label %131

130:                                              ; preds = %126
  store i8 %129, ptr %1, align 1, !tbaa !37
  br label %137

131:                                              ; preds = %126
  %132 = lshr i8 %129, 6
  %133 = or disjoint i8 %132, -64
  store i8 %133, ptr %1, align 1, !tbaa !37
  %134 = and i8 %129, 63
  %135 = or disjoint i8 %134, -128
  %136 = getelementptr inbounds i8, ptr %1, i64 1
  store i8 %135, ptr %136, align 1, !tbaa !37
  br label %137

137:                                              ; preds = %131, %130
  %138 = phi i64 [ 2, %131 ], [ 1, %130 ]
  store i64 %138, ptr %2, align 8, !tbaa !49
  br label %141

139:                                              ; preds = %123, %69
  store i64 4, ptr %2, align 8, !tbaa !49
  store i32 -1077559355, ptr %1, align 1
  br label %141

140:                                              ; preds = %123, %69
  store i64 3, ptr %2, align 8, !tbaa !49
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %1, ptr noundef nonnull align 1 dereferenceable(3) @.str.41, i64 3, i1 false)
  br label %141

141:                                              ; preds = %72, %140, %139, %123, %69, %137, %42, %25
  %142 = phi i64 [ %127, %137 ], [ %27, %25 ], [ %44, %42 ], [ %71, %69 ], [ 64262, %140 ], [ 383, %139 ], [ %125, %123 ], [ %49, %72 ]
  ret i64 %142
}

declare ptr @Perl__new_invlist_C_array(ptr noundef) local_unnamed_addr #4

; Function Attrs: cold nounwind uwtable
define dso_local zeroext i1 @Perl__is_utf8_xidstart(ptr noundef %0) local_unnamed_addr #3 !prof !47 {
  %2 = load i8, ptr %0, align 1, !tbaa !37
  %3 = icmp eq i8 %2, 95
  br i1 %3, label %6, label %4

4:                                                ; preds = %1
  %5 = tail call fastcc zeroext i1 @S_is_utf8_common(ptr noundef nonnull %0, ptr noundef nonnull @PL_utf8_xidstart, ptr noundef nonnull @.str.28, ptr noundef null)
  br label %6

6:                                                ; preds = %1, %4
  %7 = phi i1 [ %5, %4 ], [ true, %1 ]
  ret i1 %7
}

; Function Attrs: cold nounwind uwtable
define dso_local zeroext i1 @Perl__is_utf8_idcont(ptr noundef %0) local_unnamed_addr #3 !prof !47 {
  %2 = tail call fastcc zeroext i1 @S_is_utf8_common(ptr noundef %0, ptr noundef nonnull @PL_utf8_idcont, ptr noundef nonnull @.str.30, ptr noundef null)
  ret i1 %2
}

; Function Attrs: cold nounwind uwtable
define dso_local zeroext i1 @Perl__is_utf8_xidcont(ptr noundef %0) local_unnamed_addr #3 !prof !47 {
  %2 = tail call fastcc zeroext i1 @S_is_utf8_common(ptr noundef %0, ptr noundef nonnull @PL_utf8_idcont, ptr noundef nonnull @.str.31, ptr noundef null)
  ret i1 %2
}

; Function Attrs: cold nounwind uwtable
define dso_local zeroext i1 @Perl__is_utf8_mark(ptr noundef %0) local_unnamed_addr #3 !prof !47 {
  %2 = tail call fastcc zeroext i1 @S_is_utf8_common(ptr noundef %0, ptr noundef nonnull @PL_utf8_mark, ptr noundef nonnull @.str.32, ptr noundef null)
  ret i1 %2
}

; Function Attrs: cold nounwind uwtable
define dso_local ptr @Perl__core_swash_init(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, i32 noundef %4, ptr noundef %5, ptr noundef %6) local_unnamed_addr #3 !prof !47 {
  %8 = alloca ptr, align 8
  %9 = load ptr, ptr @PL_curpm, align 8, !tbaa !51
  %10 = icmp ne ptr %6, null
  br i1 %10, label %11, label %15

11:                                               ; preds = %7
  %12 = load i8, ptr %6, align 1, !tbaa !37
  %13 = and i8 %12, 4
  %14 = icmp ne i8 %13, 0
  br label %15

15:                                               ; preds = %11, %7
  %16 = phi i1 [ false, %7 ], [ %14, %11 ]
  %17 = select i1 %16, i32 512, i32 -1
  store ptr null, ptr @PL_curpm, align 8, !tbaa !51
  %18 = icmp eq ptr %2, @PL_sv_undef
  br i1 %18, label %19, label %22

19:                                               ; preds = %15
  %20 = load i8, ptr %1, align 1
  %21 = icmp eq i8 %20, 0
  br i1 %21, label %354, label %22

22:                                               ; preds = %19, %15
  %23 = load ptr, ptr @PL_stack_sp, align 8, !tbaa !51
  %24 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #14
  %25 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #14
  %26 = trunc i64 %24 to i32
  %27 = tail call ptr @Perl_gv_stashpvn(ptr noundef %0, i32 noundef %26, i32 noundef 0) #15
  %28 = load ptr, ptr @PL_curstackinfo, align 8, !tbaa !51
  %29 = getelementptr inbounds %struct.stackinfo, ptr %28, i64 0, i32 3
  %30 = load ptr, ptr %29, align 8, !tbaa !85
  %31 = icmp eq ptr %30, null
  br i1 %31, label %32, label %37

32:                                               ; preds = %22
  %33 = tail call ptr @Perl_new_stackinfo(i32 noundef 32, i32 noundef 22) #15
  %34 = load ptr, ptr @PL_curstackinfo, align 8, !tbaa !51
  %35 = getelementptr inbounds %struct.stackinfo, ptr %33, i64 0, i32 2
  store ptr %34, ptr %35, align 8, !tbaa !87
  %36 = getelementptr inbounds %struct.stackinfo, ptr %34, i64 0, i32 3
  store ptr %33, ptr %36, align 8, !tbaa !85
  br label %37

37:                                               ; preds = %32, %22
  %38 = phi ptr [ %30, %22 ], [ %33, %32 ]
  %39 = getelementptr inbounds %struct.stackinfo, ptr %38, i64 0, i32 6
  store i32 2, ptr %39, align 8, !tbaa !88
  %40 = getelementptr inbounds %struct.stackinfo, ptr %38, i64 0, i32 4
  store i32 -1, ptr %40, align 8, !tbaa !89
  %41 = load ptr, ptr %38, align 8, !tbaa !90
  %42 = load ptr, ptr %41, align 8, !tbaa !91
  %43 = getelementptr inbounds %struct.xpvav, ptr %42, i64 0, i32 2
  store i64 0, ptr %43, align 8, !tbaa !93
  %44 = load ptr, ptr @PL_stack_base, align 8, !tbaa !51
  %45 = ptrtoint ptr %23 to i64
  %46 = ptrtoint ptr %44 to i64
  %47 = sub i64 %45, %46
  %48 = ashr exact i64 %47, 3
  %49 = load ptr, ptr @PL_curstack, align 8, !tbaa !51
  %50 = load ptr, ptr %49, align 8, !tbaa !91
  %51 = getelementptr inbounds %struct.xpvav, ptr %50, i64 0, i32 2
  store i64 %48, ptr %51, align 8, !tbaa !93
  %52 = getelementptr inbounds %struct.av, ptr %41, i64 0, i32 3
  %53 = load ptr, ptr %52, align 8, !tbaa !37
  store ptr %53, ptr @PL_stack_base, align 8, !tbaa !51
  %54 = load ptr, ptr %38, align 8, !tbaa !90
  %55 = load ptr, ptr %54, align 8, !tbaa !91
  %56 = getelementptr inbounds %struct.xpvav, ptr %55, i64 0, i32 3
  %57 = load i64, ptr %56, align 8, !tbaa !95
  %58 = getelementptr inbounds ptr, ptr %53, i64 %57
  store ptr %58, ptr @PL_stack_max, align 8, !tbaa !51
  %59 = load ptr, ptr %38, align 8, !tbaa !90
  %60 = load ptr, ptr %59, align 8, !tbaa !91
  %61 = getelementptr inbounds %struct.xpvav, ptr %60, i64 0, i32 2
  %62 = load i64, ptr %61, align 8, !tbaa !93
  %63 = getelementptr inbounds ptr, ptr %53, i64 %62
  store ptr %63, ptr @PL_stack_sp, align 8, !tbaa !51
  %64 = load ptr, ptr %38, align 8, !tbaa !90
  store ptr %64, ptr @PL_curstack, align 8, !tbaa !51
  store ptr %38, ptr @PL_curstackinfo, align 8, !tbaa !51
  tail call void @Perl_push_scope() #15
  tail call void @Perl_save_hints() #15
  tail call void @Perl_save_re_context() #15
  %65 = load ptr, ptr @PL_subname, align 8, !tbaa !51
  tail call void @Perl_save_item(ptr noundef %65) #15
  %66 = load ptr, ptr @PL_parser, align 8, !tbaa !51
  %67 = icmp eq ptr %66, null
  br i1 %67, label %75, label %68

68:                                               ; preds = %37
  %69 = getelementptr inbounds %struct.yy_parser, ptr %66, i64 0, i32 44
  %70 = load i8, ptr %69, align 1, !tbaa !96
  %71 = icmp eq i8 %70, 0
  br i1 %71, label %75, label %72

72:                                               ; preds = %68
  tail call void @Perl_save_I8(ptr noundef nonnull %69) #15
  %73 = load ptr, ptr @PL_parser, align 8, !tbaa !51
  %74 = getelementptr inbounds %struct.yy_parser, ptr %73, i64 0, i32 44
  store i8 0, ptr %74, align 1, !tbaa !96
  br label %75

75:                                               ; preds = %72, %68, %37
  %76 = tail call ptr @Perl_gv_fetchmeth_pvn(ptr noundef %27, ptr noundef nonnull @.str.42, i64 noundef 8, i32 noundef -1, i32 noundef 0) #15
  %77 = icmp eq ptr %76, null
  br i1 %77, label %78, label %166

78:                                               ; preds = %75
  tail call void @Perl_push_scope() #15
  %79 = load ptr, ptr @PL_errgv, align 8, !tbaa !51
  %80 = getelementptr inbounds %struct.gv, ptr %79, i64 0, i32 3
  %81 = load ptr, ptr %80, align 8, !tbaa !37
  %82 = load ptr, ptr %81, align 8, !tbaa !100
  %83 = icmp eq ptr %82, null
  br i1 %83, label %85, label %84

84:                                               ; preds = %78
  tail call void @Perl_save_pushptr(ptr noundef nonnull %82, i32 noundef 11) #15
  br label %85

85:                                               ; preds = %84, %78
  %86 = load ptr, ptr @PL_errgv, align 8, !tbaa !51
  %87 = getelementptr inbounds %struct.gv, ptr %86, i64 0, i32 3
  %88 = load ptr, ptr %87, align 8, !tbaa !37
  store ptr null, ptr %88, align 8, !tbaa !100
  tail call void @Perl_save_bool(ptr noundef nonnull @PL_tainted) #15
  store i8 0, ptr @PL_tainted, align 1, !tbaa !62
  %89 = tail call ptr @Perl_newSVpvn(ptr noundef %0, i64 noundef %24) #15
  tail call void (i32, ptr, ptr, ...) @Perl_load_module(i32 noundef 2, ptr noundef %89, ptr noundef null) #15
  %90 = load ptr, ptr @PL_errgv, align 8, !tbaa !51
  %91 = getelementptr inbounds %struct.gv, ptr %90, i64 0, i32 3
  %92 = load ptr, ptr %91, align 8, !tbaa !37
  %93 = load ptr, ptr %92, align 8, !tbaa !100
  %94 = icmp eq ptr %93, null
  br i1 %94, label %149, label %95

95:                                               ; preds = %85
  %96 = getelementptr inbounds %struct.sv, ptr %93, i64 0, i32 2
  %97 = load i32, ptr %96, align 4, !tbaa !75
  %98 = and i32 %97, 2097152
  %99 = icmp eq i32 %98, 0
  br i1 %99, label %102, label %100

100:                                              ; preds = %95
  %101 = tail call zeroext i1 @Perl_sv_2bool_flags(ptr noundef nonnull %93, i32 noundef 2) #15
  br i1 %101, label %165, label %149

102:                                              ; preds = %95
  %103 = and i32 %97, 65280
  %104 = icmp ne i32 %103, 0
  %105 = and i32 %97, 255
  %106 = icmp eq i32 %105, 8
  %107 = or i1 %104, %106
  %108 = and i32 %97, 16777471
  %109 = icmp eq i32 %108, 16777226
  %110 = or i1 %109, %107
  br i1 %110, label %111, label %149

111:                                              ; preds = %102
  %112 = and i32 %97, 1024
  %113 = icmp eq i32 %112, 0
  br i1 %113, label %128, label %114

114:                                              ; preds = %111
  %115 = load ptr, ptr %93, align 8, !tbaa !77
  %116 = icmp eq ptr %115, null
  br i1 %116, label %149, label %117

117:                                              ; preds = %114
  %118 = getelementptr inbounds %struct.xpv, ptr %115, i64 0, i32 2
  %119 = load i64, ptr %118, align 8, !tbaa !78
  %120 = icmp ugt i64 %119, 1
  br i1 %120, label %165, label %121

121:                                              ; preds = %117
  %122 = icmp eq i64 %119, 0
  br i1 %122, label %149, label %123

123:                                              ; preds = %121
  %124 = getelementptr inbounds %struct.sv, ptr %93, i64 0, i32 3
  %125 = load ptr, ptr %124, align 8, !tbaa !37
  %126 = load i8, ptr %125, align 1, !tbaa !37
  %127 = icmp eq i8 %126, 48
  br i1 %127, label %149, label %165

128:                                              ; preds = %111
  %129 = and i32 %97, 768
  %130 = icmp eq i32 %129, 0
  br i1 %130, label %147, label %131

131:                                              ; preds = %128
  %132 = and i32 %97, 256
  %133 = icmp eq i32 %132, 0
  br i1 %133, label %139, label %134

134:                                              ; preds = %131
  %135 = load ptr, ptr %93, align 8, !tbaa !77
  %136 = getelementptr inbounds %struct.xpviv, ptr %135, i64 0, i32 4
  %137 = load i64, ptr %136, align 8, !tbaa !37
  %138 = icmp eq i64 %137, 0
  br i1 %138, label %139, label %165

139:                                              ; preds = %134, %131
  %140 = and i32 %97, 512
  %141 = icmp eq i32 %140, 0
  br i1 %141, label %149, label %142

142:                                              ; preds = %139
  %143 = load ptr, ptr %93, align 8, !tbaa !77
  %144 = getelementptr inbounds %struct.xpvnv, ptr %143, i64 0, i32 5
  %145 = load double, ptr %144, align 8, !tbaa !37
  %146 = fcmp une double %145, 0.000000e+00
  br i1 %146, label %165, label %149

147:                                              ; preds = %128
  %148 = tail call zeroext i1 @Perl_sv_2bool_flags(ptr noundef nonnull %93, i32 noundef 0) #15
  br i1 %148, label %165, label %149

149:                                              ; preds = %147, %142, %100, %102, %85, %139, %123, %121, %114
  br i1 %83, label %154, label %150

150:                                              ; preds = %149
  %151 = getelementptr inbounds %struct.sv, ptr %82, i64 0, i32 1
  %152 = load i32, ptr %151, align 8, !tbaa !102
  %153 = add i32 %152, 1
  store i32 %153, ptr %151, align 8, !tbaa !102
  br label %154

154:                                              ; preds = %149, %150
  %155 = load ptr, ptr @PL_errgv, align 8, !tbaa !51
  %156 = getelementptr inbounds %struct.gv, ptr %155, i64 0, i32 3
  %157 = load ptr, ptr %156, align 8, !tbaa !37
  store ptr %82, ptr %157, align 8, !tbaa !100
  br i1 %94, label %165, label %158

158:                                              ; preds = %154
  %159 = getelementptr inbounds %struct.sv, ptr %93, i64 0, i32 1
  %160 = load i32, ptr %159, align 8, !tbaa !102
  %161 = icmp ugt i32 %160, 1
  br i1 %161, label %162, label %164

162:                                              ; preds = %158
  %163 = add i32 %160, -1
  store i32 %163, ptr %159, align 8, !tbaa !102
  br label %165

164:                                              ; preds = %158
  tail call void @Perl_sv_free2(ptr noundef nonnull %93, i32 noundef %160) #15
  br label %165

165:                                              ; preds = %123, %164, %162, %154, %147, %142, %134, %117, %100
  tail call void @Perl_pop_scope() #15
  br label %166

166:                                              ; preds = %165, %75
  %167 = load ptr, ptr @PL_stack_sp, align 8, !tbaa !51
  %168 = load ptr, ptr @PL_markstack_ptr, align 8, !tbaa !51
  %169 = getelementptr inbounds i32, ptr %168, i64 1
  store ptr %169, ptr @PL_markstack_ptr, align 8, !tbaa !51
  %170 = load ptr, ptr @PL_markstack_max, align 8, !tbaa !51
  %171 = icmp eq ptr %169, %170
  br i1 %171, label %172, label %174

172:                                              ; preds = %166
  %173 = tail call ptr @Perl_markstack_grow() #15
  br label %174

174:                                              ; preds = %166, %172
  %175 = phi ptr [ %173, %172 ], [ %169, %166 ]
  %176 = load ptr, ptr @PL_stack_base, align 8, !tbaa !51
  %177 = ptrtoint ptr %167 to i64
  %178 = ptrtoint ptr %176 to i64
  %179 = sub i64 %177, %178
  %180 = lshr exact i64 %179, 3
  %181 = trunc i64 %180 to i32
  store i32 %181, ptr %175, align 4, !tbaa !70
  %182 = load ptr, ptr @PL_stack_max, align 8, !tbaa !51
  %183 = ptrtoint ptr %182 to i64
  %184 = sub i64 %183, %177
  %185 = icmp slt i64 %184, 40
  br i1 %185, label %186, label %188

186:                                              ; preds = %174
  %187 = tail call ptr @Perl_stack_grow(ptr noundef %167, ptr noundef %167, i64 noundef 5) #15
  br label %188

188:                                              ; preds = %174, %186
  %189 = phi ptr [ %187, %186 ], [ %167, %174 ]
  %190 = tail call ptr @Perl_newSVpvn_flags(ptr noundef %0, i64 noundef %24, i32 noundef 524288) #15
  %191 = getelementptr inbounds ptr, ptr %189, i64 1
  store ptr %190, ptr %191, align 8, !tbaa !51
  %192 = tail call ptr @Perl_newSVpvn_flags(ptr noundef %1, i64 noundef %25, i32 noundef 524288) #15
  %193 = getelementptr inbounds ptr, ptr %189, i64 2
  store ptr %192, ptr %193, align 8, !tbaa !51
  %194 = getelementptr inbounds ptr, ptr %189, i64 3
  store ptr %2, ptr %194, align 8, !tbaa !51
  %195 = tail call ptr @Perl_sv_newmortal() #15
  %196 = getelementptr inbounds ptr, ptr %189, i64 4
  store ptr %195, ptr %196, align 8, !tbaa !51
  %197 = sext i32 %3 to i64
  tail call void @Perl_sv_setiv(ptr noundef %195, i64 noundef %197) #15
  %198 = tail call ptr @Perl_sv_newmortal() #15
  %199 = getelementptr inbounds ptr, ptr %189, i64 5
  store ptr %198, ptr %199, align 8, !tbaa !51
  %200 = sext i32 %4 to i64
  tail call void @Perl_sv_setiv(ptr noundef %198, i64 noundef %200) #15
  store ptr %199, ptr @PL_stack_sp, align 8, !tbaa !51
  %201 = load ptr, ptr @PL_errgv, align 8, !tbaa !51
  %202 = getelementptr inbounds %struct.gv, ptr %201, i64 0, i32 3
  %203 = load ptr, ptr %202, align 8, !tbaa !37
  %204 = load ptr, ptr %203, align 8, !tbaa !100
  %205 = icmp eq ptr %204, null
  br i1 %205, label %207, label %206

206:                                              ; preds = %188
  tail call void @Perl_save_pushptr(ptr noundef nonnull %204, i32 noundef 11) #15
  br label %207

207:                                              ; preds = %206, %188
  %208 = load ptr, ptr @PL_errgv, align 8, !tbaa !51
  %209 = getelementptr inbounds %struct.gv, ptr %208, i64 0, i32 3
  %210 = load ptr, ptr %209, align 8, !tbaa !37
  store ptr null, ptr %210, align 8, !tbaa !100
  br i1 %77, label %214, label %211

211:                                              ; preds = %207
  %212 = tail call i32 @Perl_call_sv(ptr noundef nonnull %76, i32 noundef 2) #15
  %213 = icmp eq i32 %212, 0
  br i1 %213, label %227, label %218

214:                                              ; preds = %207
  %215 = tail call ptr @Perl_newSVpvn_flags(ptr noundef nonnull @.str.42, i64 noundef 8, i32 noundef 524288) #15
  %216 = tail call i32 @Perl_call_sv(ptr noundef %215, i32 noundef 130) #15
  %217 = icmp eq i32 %216, 0
  br i1 %217, label %227, label %218

218:                                              ; preds = %214, %211
  %219 = load ptr, ptr @PL_stack_sp, align 8, !tbaa !51
  %220 = getelementptr inbounds ptr, ptr %219, i64 -1
  store ptr %220, ptr @PL_stack_sp, align 8, !tbaa !51
  %221 = load ptr, ptr %219, align 8, !tbaa !51
  %222 = icmp eq ptr %221, null
  br i1 %222, label %227, label %223

223:                                              ; preds = %218
  %224 = getelementptr inbounds %struct.sv, ptr %221, i64 0, i32 1
  %225 = load i32, ptr %224, align 8, !tbaa !102
  %226 = add i32 %225, 1
  store i32 %226, ptr %224, align 8, !tbaa !102
  br label %227

227:                                              ; preds = %218, %214, %223, %211
  %228 = phi ptr [ @PL_sv_undef, %211 ], [ %221, %223 ], [ @PL_sv_undef, %214 ], [ %221, %218 ]
  %229 = load ptr, ptr @PL_errgv, align 8, !tbaa !51
  %230 = getelementptr inbounds %struct.gv, ptr %229, i64 0, i32 3
  %231 = load ptr, ptr %230, align 8, !tbaa !37
  %232 = load ptr, ptr %231, align 8, !tbaa !100
  %233 = icmp eq ptr %232, null
  br i1 %233, label %288, label %234

234:                                              ; preds = %227
  %235 = getelementptr inbounds %struct.sv, ptr %232, i64 0, i32 2
  %236 = load i32, ptr %235, align 4, !tbaa !75
  %237 = and i32 %236, 2097152
  %238 = icmp eq i32 %237, 0
  br i1 %238, label %241, label %239

239:                                              ; preds = %234
  %240 = tail call zeroext i1 @Perl_sv_2bool_flags(ptr noundef nonnull %232, i32 noundef 2) #15
  br i1 %240, label %304, label %288

241:                                              ; preds = %234
  %242 = and i32 %236, 65280
  %243 = icmp ne i32 %242, 0
  %244 = and i32 %236, 255
  %245 = icmp eq i32 %244, 8
  %246 = or i1 %243, %245
  %247 = and i32 %236, 16777471
  %248 = icmp eq i32 %247, 16777226
  %249 = or i1 %248, %246
  br i1 %249, label %250, label %288

250:                                              ; preds = %241
  %251 = and i32 %236, 1024
  %252 = icmp eq i32 %251, 0
  br i1 %252, label %267, label %253

253:                                              ; preds = %250
  %254 = load ptr, ptr %232, align 8, !tbaa !77
  %255 = icmp eq ptr %254, null
  br i1 %255, label %288, label %256

256:                                              ; preds = %253
  %257 = getelementptr inbounds %struct.xpv, ptr %254, i64 0, i32 2
  %258 = load i64, ptr %257, align 8, !tbaa !78
  %259 = icmp ugt i64 %258, 1
  br i1 %259, label %304, label %260

260:                                              ; preds = %256
  %261 = icmp eq i64 %258, 0
  br i1 %261, label %288, label %262

262:                                              ; preds = %260
  %263 = getelementptr inbounds %struct.sv, ptr %232, i64 0, i32 3
  %264 = load ptr, ptr %263, align 8, !tbaa !37
  %265 = load i8, ptr %264, align 1, !tbaa !37
  %266 = icmp eq i8 %265, 48
  br i1 %266, label %288, label %304

267:                                              ; preds = %250
  %268 = and i32 %236, 768
  %269 = icmp eq i32 %268, 0
  br i1 %269, label %286, label %270

270:                                              ; preds = %267
  %271 = and i32 %236, 256
  %272 = icmp eq i32 %271, 0
  br i1 %272, label %278, label %273

273:                                              ; preds = %270
  %274 = load ptr, ptr %232, align 8, !tbaa !77
  %275 = getelementptr inbounds %struct.xpviv, ptr %274, i64 0, i32 4
  %276 = load i64, ptr %275, align 8, !tbaa !37
  %277 = icmp eq i64 %276, 0
  br i1 %277, label %278, label %304

278:                                              ; preds = %273, %270
  %279 = and i32 %236, 512
  %280 = icmp eq i32 %279, 0
  br i1 %280, label %288, label %281

281:                                              ; preds = %278
  %282 = load ptr, ptr %232, align 8, !tbaa !77
  %283 = getelementptr inbounds %struct.xpvnv, ptr %282, i64 0, i32 5
  %284 = load double, ptr %283, align 8, !tbaa !37
  %285 = fcmp une double %284, 0.000000e+00
  br i1 %285, label %304, label %288

286:                                              ; preds = %267
  %287 = tail call zeroext i1 @Perl_sv_2bool_flags(ptr noundef nonnull %232, i32 noundef 0) #15
  br i1 %287, label %304, label %288

288:                                              ; preds = %286, %281, %239, %241, %227, %278, %262, %260, %253
  br i1 %205, label %293, label %289

289:                                              ; preds = %288
  %290 = getelementptr inbounds %struct.sv, ptr %204, i64 0, i32 1
  %291 = load i32, ptr %290, align 8, !tbaa !102
  %292 = add i32 %291, 1
  store i32 %292, ptr %290, align 8, !tbaa !102
  br label %293

293:                                              ; preds = %288, %289
  %294 = load ptr, ptr @PL_errgv, align 8, !tbaa !51
  %295 = getelementptr inbounds %struct.gv, ptr %294, i64 0, i32 3
  %296 = load ptr, ptr %295, align 8, !tbaa !37
  store ptr %204, ptr %296, align 8, !tbaa !100
  br i1 %233, label %304, label %297

297:                                              ; preds = %293
  %298 = getelementptr inbounds %struct.sv, ptr %232, i64 0, i32 1
  %299 = load i32, ptr %298, align 8, !tbaa !102
  %300 = icmp ugt i32 %299, 1
  br i1 %300, label %301, label %303

301:                                              ; preds = %297
  %302 = add i32 %299, -1
  store i32 %302, ptr %298, align 8, !tbaa !102
  br label %304

303:                                              ; preds = %297
  tail call void @Perl_sv_free2(ptr noundef nonnull %232, i32 noundef %299) #15
  br label %304

304:                                              ; preds = %262, %303, %301, %293, %286, %281, %273, %256, %239
  tail call void @Perl_pop_scope() #15
  %305 = load ptr, ptr @PL_stack_sp, align 8, !tbaa !51
  %306 = load ptr, ptr @PL_curstackinfo, align 8, !tbaa !51
  %307 = getelementptr inbounds %struct.stackinfo, ptr %306, i64 0, i32 2
  %308 = load ptr, ptr %307, align 8, !tbaa !87
  %309 = icmp eq ptr %308, null
  br i1 %309, label %310, label %311

310:                                              ; preds = %304
  tail call void @Perl_croak_popstack() #15
  br label %311

311:                                              ; preds = %304, %310
  %312 = load ptr, ptr @PL_stack_base, align 8, !tbaa !51
  %313 = ptrtoint ptr %305 to i64
  %314 = ptrtoint ptr %312 to i64
  %315 = sub i64 %313, %314
  %316 = ashr exact i64 %315, 3
  %317 = load ptr, ptr @PL_curstack, align 8, !tbaa !51
  %318 = load ptr, ptr %317, align 8, !tbaa !91
  %319 = getelementptr inbounds %struct.xpvav, ptr %318, i64 0, i32 2
  store i64 %316, ptr %319, align 8, !tbaa !93
  %320 = load ptr, ptr %308, align 8, !tbaa !90
  %321 = getelementptr inbounds %struct.av, ptr %320, i64 0, i32 3
  %322 = load ptr, ptr %321, align 8, !tbaa !37
  store ptr %322, ptr @PL_stack_base, align 8, !tbaa !51
  %323 = load ptr, ptr %308, align 8, !tbaa !90
  %324 = load ptr, ptr %323, align 8, !tbaa !91
  %325 = getelementptr inbounds %struct.xpvav, ptr %324, i64 0, i32 3
  %326 = load i64, ptr %325, align 8, !tbaa !95
  %327 = getelementptr inbounds ptr, ptr %322, i64 %326
  store ptr %327, ptr @PL_stack_max, align 8, !tbaa !51
  %328 = load ptr, ptr %308, align 8, !tbaa !90
  %329 = load ptr, ptr %328, align 8, !tbaa !91
  %330 = getelementptr inbounds %struct.xpvav, ptr %329, i64 0, i32 2
  %331 = load i64, ptr %330, align 8, !tbaa !93
  %332 = getelementptr inbounds ptr, ptr %322, i64 %331
  store ptr %332, ptr @PL_stack_sp, align 8, !tbaa !51
  %333 = load ptr, ptr %308, align 8, !tbaa !90
  store ptr %333, ptr @PL_curstack, align 8, !tbaa !51
  store ptr %308, ptr @PL_curstackinfo, align 8, !tbaa !51
  %334 = getelementptr inbounds %struct.sv, ptr %228, i64 0, i32 2
  %335 = load i32, ptr %334, align 4, !tbaa !75
  %336 = and i32 %335, 2048
  %337 = icmp eq i32 %336, 0
  br i1 %337, label %345, label %338

338:                                              ; preds = %311
  %339 = getelementptr inbounds %struct.sv, ptr %228, i64 0, i32 3
  %340 = load ptr, ptr %339, align 8, !tbaa !37
  %341 = getelementptr inbounds %struct.sv, ptr %340, i64 0, i32 2
  %342 = load i32, ptr %341, align 4, !tbaa !75
  %343 = and i32 %342, 255
  %344 = icmp eq i32 %343, 12
  br i1 %344, label %354, label %345

345:                                              ; preds = %338, %311
  %346 = and i32 %335, 1024
  %347 = icmp ne i32 %346, 0
  %348 = and i1 %10, %347
  br i1 %348, label %349, label %353

349:                                              ; preds = %345
  %350 = load i8, ptr %6, align 1, !tbaa !37
  %351 = and i8 %350, 2
  %352 = icmp eq i8 %351, 0
  br i1 %352, label %353, label %507

353:                                              ; preds = %349, %345
  tail call void (ptr, ...) @Perl_croak(ptr noundef nonnull @.str.43, ptr noundef %228) #15
  br label %354

354:                                              ; preds = %353, %338, %19
  %355 = phi ptr [ @PL_sv_undef, %19 ], [ %228, %338 ], [ %228, %353 ]
  %356 = icmp eq ptr %355, @PL_sv_undef
  br i1 %356, label %391, label %357

357:                                              ; preds = %354
  %358 = icmp eq i32 %3, 1
  br i1 %358, label %364, label %359

359:                                              ; preds = %357
  br i1 %10, label %360, label %391

360:                                              ; preds = %359
  %361 = load i8, ptr %6, align 1, !tbaa !37
  %362 = and i8 %361, 1
  %363 = icmp eq i8 %362, 0
  br i1 %363, label %364, label %391

364:                                              ; preds = %360, %357
  %365 = getelementptr inbounds %struct.sv, ptr %355, i64 0, i32 3
  %366 = load ptr, ptr %365, align 8, !tbaa !37
  br i1 %10, label %367, label %391

367:                                              ; preds = %364
  %368 = load i8, ptr %6, align 1, !tbaa !37
  %369 = and i8 %368, 1
  %370 = icmp eq i8 %369, 0
  br i1 %370, label %371, label %391

371:                                              ; preds = %367
  %372 = tail call ptr @Perl_hv_common(ptr noundef %366, ptr noundef null, ptr noundef nonnull @.str.44, i64 noundef 12, i32 noundef 0, i32 noundef 32, ptr noundef null, i32 noundef 0) #15
  %373 = icmp eq ptr %372, null
  br i1 %373, label %391, label %374

374:                                              ; preds = %371
  %375 = load ptr, ptr %372, align 8, !tbaa !51
  %376 = getelementptr inbounds %struct.sv, ptr %375, i64 0, i32 2
  %377 = load i32, ptr %376, align 4, !tbaa !75
  %378 = and i32 %377, -2145386240
  %379 = icmp eq i32 %378, -2147483392
  br i1 %379, label %380, label %385

380:                                              ; preds = %374
  %381 = load ptr, ptr %375, align 8, !tbaa !77
  %382 = getelementptr inbounds %struct.xpvuv, ptr %381, i64 0, i32 4
  %383 = load i64, ptr %382, align 8, !tbaa !37
  %384 = icmp eq i64 %383, 0
  br i1 %384, label %391, label %388

385:                                              ; preds = %374
  %386 = tail call i64 @Perl_sv_2uv_flags(ptr noundef %375, i32 noundef 2) #15
  %387 = icmp eq i64 %386, 0
  br i1 %387, label %391, label %388

388:                                              ; preds = %385, %380
  %389 = load i8, ptr %6, align 1, !tbaa !37
  %390 = or i8 %389, 1
  store i8 %390, ptr %6, align 1, !tbaa !37
  br label %391

391:                                              ; preds = %385, %360, %371, %380, %388, %364, %367, %359, %354
  %392 = phi ptr [ %366, %367 ], [ %366, %364 ], [ null, %359 ], [ null, %354 ], [ %366, %388 ], [ %366, %380 ], [ %366, %371 ], [ null, %360 ], [ %366, %385 ]
  %393 = icmp eq i32 %3, 1
  br i1 %393, label %394, label %507

394:                                              ; preds = %391
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %8) #15
  store ptr null, ptr %8, align 8, !tbaa !51
  %395 = icmp eq ptr %392, null
  br i1 %395, label %403, label %396

396:                                              ; preds = %394
  %397 = tail call ptr @Perl_hv_common(ptr noundef nonnull %392, ptr noundef null, ptr noundef nonnull @.str.45, i64 noundef 1, i32 noundef 0, i32 noundef 32, ptr noundef null, i32 noundef 0) #15
  %398 = icmp eq ptr %397, null
  br i1 %398, label %401, label %399

399:                                              ; preds = %396
  %400 = load ptr, ptr %397, align 8, !tbaa !51
  store ptr %400, ptr %8, align 8, !tbaa !51
  br label %403

401:                                              ; preds = %396
  %402 = tail call ptr @Perl__swash_to_invlist(ptr noundef %355)
  store ptr %402, ptr %8, align 8, !tbaa !51
  br label %403

403:                                              ; preds = %399, %401, %394
  %404 = phi i8 [ 1, %399 ], [ 0, %401 ], [ 0, %394 ]
  %405 = phi i1 [ true, %399 ], [ false, %401 ], [ true, %394 ]
  %406 = phi i8 [ 0, %399 ], [ 1, %401 ], [ 0, %394 ]
  %407 = icmp eq ptr %5, null
  br i1 %407, label %432, label %408

408:                                              ; preds = %403
  %409 = load ptr, ptr %8, align 8, !tbaa !51
  %410 = icmp eq ptr %409, null
  br i1 %410, label %412, label %411

411:                                              ; preds = %408
  call void @Perl__invlist_union_maybe_complement_2nd(ptr noundef nonnull %5, ptr noundef nonnull %409, i1 noundef zeroext false, ptr noundef nonnull %8) #15
  br label %432

412:                                              ; preds = %408
  %413 = load ptr, ptr %5, align 8, !tbaa !77
  %414 = getelementptr inbounds %struct.xpv, ptr %413, i64 0, i32 2
  %415 = load i64, ptr %414, align 8, !tbaa !78
  %416 = icmp eq i64 %415, 0
  br i1 %416, label %424, label %417

417:                                              ; preds = %412
  %418 = lshr i64 %415, 3
  %419 = getelementptr inbounds %struct.xpvinvlist, ptr %413, i64 0, i32 6
  %420 = load i8, ptr %419, align 1, !tbaa !62, !range !64, !noundef !65
  %421 = zext nneg i8 %420 to i64
  %422 = sub nsw i64 %418, %421
  %423 = trunc i64 %422 to i32
  br label %424

424:                                              ; preds = %412, %417
  %425 = phi i32 [ %423, %417 ], [ 0, %412 ]
  %426 = icmp slt i32 %17, %425
  br i1 %426, label %427, label %430

427:                                              ; preds = %424
  %428 = tail call ptr @Perl_newSV_type(i32 noundef 12) #15
  %429 = tail call ptr @Perl_newRV_noinc(ptr noundef %428) #15
  br label %430

430:                                              ; preds = %427, %424
  %431 = phi ptr [ %429, %427 ], [ %355, %424 ]
  store ptr %5, ptr %8, align 8, !tbaa !51
  br label %432

432:                                              ; preds = %411, %430, %403
  %433 = phi ptr [ %355, %411 ], [ %431, %430 ], [ %355, %403 ]
  %434 = phi i8 [ 0, %411 ], [ %404, %430 ], [ %404, %403 ]
  %435 = and i8 %434, 1
  %436 = icmp eq i8 %435, 0
  br i1 %436, label %437, label %465

437:                                              ; preds = %432
  %438 = load ptr, ptr %8, align 8, !tbaa !51
  %439 = load ptr, ptr %438, align 8, !tbaa !77
  %440 = getelementptr inbounds %struct.xpv, ptr %439, i64 0, i32 2
  %441 = load i64, ptr %440, align 8, !tbaa !78
  %442 = icmp eq i64 %441, 0
  br i1 %442, label %450, label %443

443:                                              ; preds = %437
  %444 = lshr i64 %441, 3
  %445 = getelementptr inbounds %struct.xpvinvlist, ptr %439, i64 0, i32 6
  %446 = load i8, ptr %445, align 1, !tbaa !62, !range !64, !noundef !65
  %447 = zext nneg i8 %446 to i64
  %448 = sub nsw i64 %444, %447
  %449 = trunc i64 %448 to i32
  br label %450

450:                                              ; preds = %437, %443
  %451 = phi i32 [ %449, %443 ], [ 0, %437 ]
  %452 = icmp slt i32 %17, %451
  br i1 %452, label %453, label %465

453:                                              ; preds = %450
  %454 = getelementptr inbounds %struct.sv, ptr %433, i64 0, i32 3
  %455 = load ptr, ptr %454, align 8, !tbaa !37
  %456 = call ptr @Perl_hv_common(ptr noundef %455, ptr noundef null, ptr noundef nonnull @.str.45, i64 noundef 1, i32 noundef 0, i32 noundef 36, ptr noundef nonnull %438, i32 noundef 0) #15
  %457 = icmp eq ptr %456, null
  br i1 %457, label %458, label %459

458:                                              ; preds = %453
  call void (ptr, ...) @Perl_croak(ptr noundef nonnull @.str.46) #15
  br label %459

459:                                              ; preds = %458, %453
  br i1 %405, label %460, label %465

460:                                              ; preds = %459
  %461 = load ptr, ptr %8, align 8, !tbaa !51
  %462 = getelementptr inbounds %struct.sv, ptr %461, i64 0, i32 1
  %463 = load i32, ptr %462, align 8, !tbaa !102
  %464 = add i32 %463, 1
  store i32 %464, ptr %462, align 8, !tbaa !102
  br label %465

465:                                              ; preds = %459, %460, %450, %432
  %466 = phi i8 [ %406, %432 ], [ %406, %460 ], [ %406, %450 ], [ 0, %459 ]
  %467 = load ptr, ptr %8, align 8, !tbaa !51
  %468 = getelementptr inbounds %struct.sv, ptr %467, i64 0, i32 2
  %469 = load i32, ptr %468, align 4, !tbaa !75
  %470 = or i32 %469, 134283264
  store i32 %470, ptr %468, align 4, !tbaa !75
  %471 = load ptr, ptr %467, align 8, !tbaa !77
  %472 = getelementptr inbounds %struct.xpv, ptr %471, i64 0, i32 2
  %473 = load i64, ptr %472, align 8, !tbaa !78
  %474 = icmp eq i64 %473, 0
  br i1 %474, label %482, label %475

475:                                              ; preds = %465
  %476 = lshr i64 %473, 3
  %477 = getelementptr inbounds %struct.xpvinvlist, ptr %471, i64 0, i32 6
  %478 = load i8, ptr %477, align 1, !tbaa !62, !range !64, !noundef !65
  %479 = zext nneg i8 %478 to i64
  %480 = sub nsw i64 %476, %479
  %481 = trunc i64 %480 to i32
  br label %482

482:                                              ; preds = %465, %475
  %483 = phi i32 [ %481, %475 ], [ 0, %465 ]
  %484 = icmp slt i32 %17, %483
  br i1 %484, label %505, label %485

485:                                              ; preds = %482
  %486 = icmp eq ptr %433, null
  br i1 %486, label %494, label %487

487:                                              ; preds = %485
  %488 = getelementptr inbounds %struct.sv, ptr %433, i64 0, i32 1
  %489 = load i32, ptr %488, align 8, !tbaa !102
  %490 = icmp ugt i32 %489, 1
  br i1 %490, label %491, label %493

491:                                              ; preds = %487
  %492 = add i32 %489, -1
  store i32 %492, ptr %488, align 8, !tbaa !102
  br label %494

493:                                              ; preds = %487
  call void @Perl_sv_free2(ptr noundef nonnull %433, i32 noundef %489) #15
  br label %494

494:                                              ; preds = %485, %491, %493
  %495 = and i8 %466, 1
  %496 = icmp eq i8 %495, 0
  br i1 %496, label %497, label %502

497:                                              ; preds = %494
  %498 = load ptr, ptr %8, align 8, !tbaa !51
  %499 = getelementptr inbounds %struct.sv, ptr %498, i64 0, i32 1
  %500 = load i32, ptr %499, align 8, !tbaa !102
  %501 = add i32 %500, 1
  store i32 %501, ptr %499, align 8, !tbaa !102
  br label %502

502:                                              ; preds = %497, %494
  %503 = load ptr, ptr %8, align 8, !tbaa !51
  %504 = call ptr @Perl_newRV_noinc(ptr noundef %503) #15
  br label %505

505:                                              ; preds = %502, %482
  %506 = phi ptr [ %504, %502 ], [ %433, %482 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %8) #15
  br label %507

507:                                              ; preds = %391, %505, %349
  %508 = phi ptr [ null, %349 ], [ %506, %505 ], [ %355, %391 ]
  store ptr %9, ptr @PL_curpm, align 8, !tbaa !51
  ret ptr %508
}

declare ptr @Perl_get_hv(ptr noundef, i32 noundef) local_unnamed_addr #4

declare ptr @Perl_hv_common(ptr noundef, ptr noundef, ptr noundef, i64 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

declare ptr @Perl_hv_common_key_len(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

declare ptr @Perl_sv_2pv_flags(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: cold nounwind uwtable
define dso_local i64 @Perl_swash_fetch(ptr nocapture noundef readonly %0, ptr noundef %1, i1 noundef zeroext %2) local_unnamed_addr #3 !prof !47 {
  %4 = alloca i64, align 8
  %5 = getelementptr inbounds %struct.sv, ptr %0, i64 0, i32 3
  %6 = load ptr, ptr %5, align 8, !tbaa !37
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #15
  store i64 0, ptr %4, align 8, !tbaa !49
  %7 = load i8, ptr %1, align 1, !tbaa !37
  %8 = getelementptr inbounds %struct.hv, ptr %6, i64 0, i32 2
  %9 = load i32, ptr %8, align 4, !tbaa !103
  %10 = and i32 %9, 255
  %11 = icmp eq i32 %10, 12
  %12 = zext i8 %7 to i64
  br i1 %11, label %47, label %13

13:                                               ; preds = %3
  br i1 %2, label %14, label %41

14:                                               ; preds = %13
  %15 = getelementptr inbounds [0 x i8], ptr @PL_utf8skip, i64 0, i64 %12
  %16 = load i8, ptr %15, align 1, !tbaa !37
  %17 = zext i8 %16 to i64
  %18 = getelementptr inbounds i8, ptr %1, i64 %17
  %19 = icmp eq i8 %16, 1
  br i1 %19, label %41, label %20

20:                                               ; preds = %14
  %21 = icmp ugt i8 %16, 6
  %22 = zext i8 %16 to i32
  %23 = add nsw i32 %22, -2
  %24 = lshr i32 31, %23
  %25 = zext nneg i32 %24 to i64
  %26 = select i1 %21, i64 0, i64 %25
  %27 = and i64 %26, %12
  %28 = icmp eq i8 %16, 0
  br i1 %28, label %41, label %29

29:                                               ; preds = %20
  %30 = getelementptr inbounds i8, ptr %1, i64 1
  br label %31

31:                                               ; preds = %29, %31
  %32 = phi ptr [ %39, %31 ], [ %30, %29 ]
  %33 = phi i64 [ %38, %31 ], [ %27, %29 ]
  %34 = shl i64 %33, 6
  %35 = load i8, ptr %32, align 1, !tbaa !37
  %36 = and i8 %35, 63
  %37 = zext nneg i8 %36 to i64
  %38 = or disjoint i64 %34, %37
  %39 = getelementptr inbounds i8, ptr %32, i64 1
  %40 = icmp ult ptr %39, %18
  br i1 %40, label %31, label %41, !llvm.loop !54

41:                                               ; preds = %31, %13, %20, %14
  %42 = phi i64 [ %12, %14 ], [ %27, %20 ], [ %12, %13 ], [ %38, %31 ]
  %43 = tail call i64 @Perl__invlist_search(ptr noundef %6, i64 noundef %42) #15
  %44 = and i64 %43, -9223372036854775807
  %45 = icmp eq i64 %44, 0
  %46 = zext i1 %45 to i64
  br label %247

47:                                               ; preds = %3
  %48 = icmp slt i8 %7, 0
  %49 = select i1 %2, i1 %48, i1 false
  %50 = zext i8 %7 to i32
  br i1 %49, label %51, label %72

51:                                               ; preds = %47
  %52 = and i32 %50, 254
  %53 = icmp eq i32 %52, 194
  br i1 %53, label %54, label %62

54:                                               ; preds = %51
  %55 = shl nuw nsw i32 %50, 6
  %56 = and i32 %55, 192
  %57 = getelementptr inbounds i8, ptr %1, i64 1
  %58 = load i8, ptr %57, align 1, !tbaa !37
  %59 = and i8 %58, 63
  %60 = zext nneg i8 %59 to i32
  %61 = or disjoint i32 %56, %60
  br label %72

62:                                               ; preds = %51
  %63 = getelementptr inbounds [0 x i8], ptr @PL_utf8skip, i64 0, i64 %12
  %64 = load i8, ptr %63, align 1, !tbaa !37
  %65 = zext i8 %64 to i32
  %66 = add nsw i32 %65, -1
  %67 = zext i32 %66 to i64
  %68 = getelementptr inbounds i8, ptr %1, i64 %67
  %69 = load i8, ptr %68, align 1, !tbaa !37
  %70 = and i8 %69, 63
  %71 = zext nneg i8 %70 to i32
  br label %72

72:                                               ; preds = %47, %54, %62
  %73 = phi i32 [ %61, %54 ], [ %71, %62 ], [ %50, %47 ]
  %74 = phi i64 [ 256, %54 ], [ 64, %62 ], [ 256, %47 ]
  %75 = phi i32 [ 0, %54 ], [ %66, %62 ], [ 0, %47 ]
  %76 = load ptr, ptr @PL_last_swash_hv, align 8, !tbaa !51
  %77 = icmp eq ptr %6, %76
  %78 = load i8, ptr @PL_last_swash_klen, align 1
  %79 = zext i8 %78 to i32
  %80 = icmp eq i32 %75, %79
  %81 = select i1 %77, i1 %80, i1 false
  br i1 %81, label %82, label %91

82:                                               ; preds = %72
  %83 = icmp eq i32 %75, 0
  br i1 %83, label %88, label %84

84:                                               ; preds = %82
  %85 = zext nneg i32 %75 to i64
  %86 = tail call i32 @bcmp(ptr nonnull %1, ptr nonnull @PL_last_swash_key, i64 %85)
  %87 = icmp eq i32 %86, 0
  br i1 %87, label %88, label %91

88:                                               ; preds = %84, %82
  %89 = load ptr, ptr @PL_last_swash_tmps, align 8, !tbaa !51
  %90 = load i64, ptr @PL_last_swash_slen, align 8, !tbaa !49
  store i64 %90, ptr %4, align 8, !tbaa !49
  br label %185

91:                                               ; preds = %84, %72
  %92 = tail call ptr @Perl_hv_common_key_len(ptr noundef %6, ptr noundef nonnull %1, i32 noundef %75, i32 noundef 32, ptr noundef null, i32 noundef 0) #15
  %93 = icmp eq ptr %92, null
  br i1 %93, label %114, label %94

94:                                               ; preds = %91
  %95 = load ptr, ptr %92, align 8, !tbaa !51
  %96 = getelementptr inbounds %struct.sv, ptr %95, i64 0, i32 2
  %97 = load i32, ptr %96, align 4, !tbaa !75
  %98 = and i32 %97, 1024
  %99 = icmp eq i32 %98, 0
  br i1 %99, label %114, label %100

100:                                              ; preds = %94
  %101 = and i32 %97, 2098176
  %102 = icmp eq i32 %101, 1024
  br i1 %102, label %103, label %109

103:                                              ; preds = %100
  %104 = load ptr, ptr %95, align 8, !tbaa !77
  %105 = getelementptr inbounds %struct.xpv, ptr %104, i64 0, i32 2
  %106 = load i64, ptr %105, align 8, !tbaa !78
  store i64 %106, ptr %4, align 8, !tbaa !49
  %107 = getelementptr inbounds %struct.sv, ptr %95, i64 0, i32 3
  %108 = load ptr, ptr %107, align 8, !tbaa !37
  br label %111

109:                                              ; preds = %100
  %110 = call ptr @Perl_sv_2pv_flags(ptr noundef %95, ptr noundef nonnull %4, i32 noundef 34) #15
  br label %111

111:                                              ; preds = %109, %103
  %112 = phi ptr [ %108, %103 ], [ %110, %109 ]
  %113 = icmp eq ptr %112, null
  br i1 %113, label %114, label %178

114:                                              ; preds = %111, %94, %91
  %115 = icmp eq i32 %75, 0
  br i1 %115, label %149, label %116

116:                                              ; preds = %114
  %117 = load i8, ptr %1, align 1, !tbaa !37
  %118 = zext i8 %117 to i64
  %119 = getelementptr inbounds [0 x i8], ptr @PL_utf8skip, i64 0, i64 %118
  %120 = load i8, ptr %119, align 1, !tbaa !37
  %121 = zext i8 %120 to i64
  %122 = getelementptr inbounds i8, ptr %1, i64 %121
  %123 = icmp eq i8 %120, 1
  br i1 %123, label %145, label %124

124:                                              ; preds = %116
  %125 = icmp ugt i8 %120, 6
  %126 = zext i8 %120 to i32
  %127 = add nsw i32 %126, -2
  %128 = lshr i32 31, %127
  %129 = zext nneg i32 %128 to i64
  %130 = select i1 %125, i64 0, i64 %129
  %131 = and i64 %130, %118
  %132 = icmp eq i8 %120, 0
  br i1 %132, label %145, label %133

133:                                              ; preds = %124
  %134 = getelementptr inbounds i8, ptr %1, i64 1
  br label %135

135:                                              ; preds = %133, %135
  %136 = phi ptr [ %143, %135 ], [ %134, %133 ]
  %137 = phi i64 [ %142, %135 ], [ %131, %133 ]
  %138 = shl i64 %137, 6
  %139 = load i8, ptr %136, align 1, !tbaa !37
  %140 = and i8 %139, 63
  %141 = zext nneg i8 %140 to i64
  %142 = or disjoint i64 %138, %141
  %143 = getelementptr inbounds i8, ptr %136, i64 1
  %144 = icmp ult ptr %143, %122
  br i1 %144, label %135, label %145, !llvm.loop !54

145:                                              ; preds = %135, %124, %116
  %146 = phi i64 [ %118, %116 ], [ %131, %124 ], [ %142, %135 ]
  %147 = sub nsw i64 0, %74
  %148 = and i64 %146, %147
  br label %149

149:                                              ; preds = %114, %145
  %150 = phi i64 [ %148, %145 ], [ 0, %114 ]
  %151 = call fastcc ptr @S_swatch_get(ptr noundef %0, i64 noundef %150, i64 noundef %74)
  %152 = call ptr @Perl_hv_common_key_len(ptr noundef %6, ptr noundef nonnull %1, i32 noundef %75, i32 noundef 36, ptr noundef %151, i32 noundef 0) #15
  %153 = icmp eq ptr %152, null
  br i1 %153, label %175, label %154

154:                                              ; preds = %149
  %155 = load ptr, ptr %152, align 8, !tbaa !51
  %156 = getelementptr inbounds %struct.sv, ptr %155, i64 0, i32 2
  %157 = load i32, ptr %156, align 4, !tbaa !75
  %158 = and i32 %157, 2098176
  %159 = icmp eq i32 %158, 1024
  br i1 %159, label %160, label %166

160:                                              ; preds = %154
  %161 = load ptr, ptr %155, align 8, !tbaa !77
  %162 = getelementptr inbounds %struct.xpv, ptr %161, i64 0, i32 2
  %163 = load i64, ptr %162, align 8, !tbaa !78
  store i64 %163, ptr %4, align 8, !tbaa !49
  %164 = getelementptr inbounds %struct.sv, ptr %155, i64 0, i32 3
  %165 = load ptr, ptr %164, align 8, !tbaa !37
  br label %168

166:                                              ; preds = %154
  %167 = call ptr @Perl_sv_2pv_flags(ptr noundef %155, ptr noundef nonnull %4, i32 noundef 2) #15
  br label %168

168:                                              ; preds = %166, %160
  %169 = phi ptr [ %165, %160 ], [ %167, %166 ]
  %170 = icmp eq ptr %169, null
  br i1 %170, label %175, label %171

171:                                              ; preds = %168
  %172 = load i64, ptr %4, align 8, !tbaa !49
  %173 = shl i64 %172, 3
  %174 = icmp ult i64 %173, %74
  br i1 %174, label %175, label %178

175:                                              ; preds = %171, %168, %149
  %176 = phi ptr [ %169, %171 ], [ null, %168 ], [ null, %149 ]
  %177 = load i64, ptr %4, align 8, !tbaa !49
  call void (ptr, ...) @Perl_croak(ptr noundef nonnull @.str.47, ptr noundef %152, ptr noundef %176, i64 noundef %177, i64 noundef %74) #15
  br label %178

178:                                              ; preds = %171, %175, %111
  %179 = phi ptr [ %112, %111 ], [ %176, %175 ], [ %169, %171 ]
  store ptr %6, ptr @PL_last_swash_hv, align 8, !tbaa !51
  %180 = trunc i32 %75 to i8
  store i8 %180, ptr @PL_last_swash_klen, align 1, !tbaa !37
  store ptr %179, ptr @PL_last_swash_tmps, align 8, !tbaa !51
  %181 = load i64, ptr %4, align 8, !tbaa !49
  store i64 %181, ptr @PL_last_swash_slen, align 8, !tbaa !49
  %182 = icmp eq i32 %75, 0
  br i1 %182, label %185, label %183

183:                                              ; preds = %178
  %184 = zext i32 %75 to i64
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 @PL_last_swash_key, ptr nonnull align 1 %1, i64 %184, i1 false)
  br label %185

185:                                              ; preds = %178, %183, %88
  %186 = phi ptr [ %89, %88 ], [ %179, %183 ], [ %179, %178 ]
  %187 = load i64, ptr %4, align 8, !tbaa !49
  %188 = shl i64 %187, 3
  %189 = udiv i64 %188, %74
  %190 = trunc i64 %189 to i32
  switch i32 %190, label %246 [
    i32 1, label %191
    i32 8, label %201
    i32 16, label %206
    i32 32, label %219
  ]

191:                                              ; preds = %185
  %192 = lshr i32 %73, 3
  %193 = zext nneg i32 %192 to i64
  %194 = getelementptr inbounds i8, ptr %186, i64 %193
  %195 = load i8, ptr %194, align 1, !tbaa !37
  %196 = and i32 %73, 7
  %197 = zext i8 %195 to i32
  %198 = lshr i32 %197, %196
  %199 = and i32 %198, 1
  %200 = zext nneg i32 %199 to i64
  br label %247

201:                                              ; preds = %185
  %202 = zext nneg i32 %73 to i64
  %203 = getelementptr inbounds i8, ptr %186, i64 %202
  %204 = load i8, ptr %203, align 1, !tbaa !37
  %205 = zext i8 %204 to i64
  br label %247

206:                                              ; preds = %185
  %207 = shl nuw nsw i32 %73, 1
  %208 = zext nneg i32 %207 to i64
  %209 = getelementptr inbounds i8, ptr %186, i64 %208
  %210 = load i8, ptr %209, align 1, !tbaa !37
  %211 = zext i8 %210 to i64
  %212 = shl nuw nsw i64 %211, 8
  %213 = or disjoint i32 %207, 1
  %214 = zext nneg i32 %213 to i64
  %215 = getelementptr inbounds i8, ptr %186, i64 %214
  %216 = load i8, ptr %215, align 1, !tbaa !37
  %217 = zext i8 %216 to i64
  %218 = or disjoint i64 %212, %217
  br label %247

219:                                              ; preds = %185
  %220 = shl nuw nsw i32 %73, 2
  %221 = zext nneg i32 %220 to i64
  %222 = getelementptr inbounds i8, ptr %186, i64 %221
  %223 = load i8, ptr %222, align 1, !tbaa !37
  %224 = zext i8 %223 to i64
  %225 = shl nuw nsw i64 %224, 24
  %226 = or disjoint i32 %220, 1
  %227 = zext nneg i32 %226 to i64
  %228 = getelementptr inbounds i8, ptr %186, i64 %227
  %229 = load i8, ptr %228, align 1, !tbaa !37
  %230 = zext i8 %229 to i64
  %231 = shl nuw nsw i64 %230, 16
  %232 = or disjoint i64 %231, %225
  %233 = or disjoint i32 %220, 2
  %234 = zext nneg i32 %233 to i64
  %235 = getelementptr inbounds i8, ptr %186, i64 %234
  %236 = load i8, ptr %235, align 1, !tbaa !37
  %237 = zext i8 %236 to i64
  %238 = shl nuw nsw i64 %237, 8
  %239 = or disjoint i64 %232, %238
  %240 = or disjoint i32 %220, 3
  %241 = zext nneg i32 %240 to i64
  %242 = getelementptr inbounds i8, ptr %186, i64 %241
  %243 = load i8, ptr %242, align 1, !tbaa !37
  %244 = zext i8 %243 to i64
  %245 = or disjoint i64 %239, %244
  br label %247

246:                                              ; preds = %185
  call void (ptr, ...) @Perl_croak(ptr noundef nonnull @.str.48, i64 noundef %187, i64 noundef %74) #15
  br label %247

247:                                              ; preds = %246, %219, %206, %201, %191, %41
  %248 = phi i64 [ %46, %41 ], [ 0, %246 ], [ %245, %219 ], [ %218, %206 ], [ %205, %201 ], [ %200, %191 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #15
  ret i64 %248
}

; Function Attrs: cold nounwind uwtable
define dso_local i64 @Perl__to_utf8_upper_flags(ptr noundef %0, ptr noundef %1, ptr noundef %2, i1 noundef zeroext %3) local_unnamed_addr #3 !prof !47 {
  %5 = xor i1 %3, true
  %6 = load i8, ptr @PL_in_utf8_CTYPE_locale, align 1, !range !64
  %7 = icmp eq i8 %6, 0
  %8 = select i1 %5, i1 true, i1 %7
  %9 = and i1 %8, %3
  %10 = load i8, ptr %0, align 1, !tbaa !37
  %11 = icmp sgt i8 %10, -1
  br i1 %11, label %12, label %22

12:                                               ; preds = %4
  br i1 %9, label %13, label %20

13:                                               ; preds = %12
  %14 = tail call ptr @__ctype_toupper_loc() #16
  %15 = load ptr, ptr %14, align 8, !tbaa !51
  %16 = zext nneg i8 %10 to i64
  %17 = getelementptr inbounds i32, ptr %15, i64 %16
  %18 = load i32, ptr %17, align 4, !tbaa !70
  %19 = sext i32 %18 to i64
  br label %39

20:                                               ; preds = %12
  %21 = tail call i64 @Perl__to_upper_title_latin1(i8 noundef zeroext %10, ptr noundef %1, ptr noundef %2, i8 noundef signext 83), !range !74
  br label %52

22:                                               ; preds = %4
  %23 = and i8 %10, -2
  %24 = icmp eq i8 %23, -62
  br i1 %24, label %25, label %35

25:                                               ; preds = %22
  %26 = shl i8 %10, 6
  %27 = getelementptr inbounds i8, ptr %0, i64 1
  %28 = load i8, ptr %27, align 1, !tbaa !37
  %29 = and i8 %28, 63
  %30 = or disjoint i8 %29, %26
  br i1 %9, label %31, label %33

31:                                               ; preds = %25
  %32 = zext i8 %30 to i64
  br label %39

33:                                               ; preds = %25
  %34 = tail call i64 @Perl__to_upper_title_latin1(i8 noundef zeroext %30, ptr noundef %1, ptr noundef %2, i8 noundef signext 83), !range !74
  br label %52

35:                                               ; preds = %22
  %36 = tail call i64 @Perl_to_utf8_case(ptr noundef nonnull %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull @PL_utf8_toupper, ptr noundef nonnull @.str.22, ptr noundef nonnull @.str.9)
  br i1 %9, label %37, label %52

37:                                               ; preds = %35
  %38 = tail call fastcc i64 @S_check_locale_boundary_crossing(ptr noundef nonnull %0, i64 noundef %36, ptr noundef %1, ptr noundef %2)
  br label %52

39:                                               ; preds = %31, %13
  %40 = phi i64 [ %19, %13 ], [ %32, %31 ]
  %41 = icmp ult i64 %40, 128
  %42 = trunc i64 %40 to i8
  br i1 %41, label %43, label %44

43:                                               ; preds = %39
  store i8 %42, ptr %1, align 1, !tbaa !37
  br label %50

44:                                               ; preds = %39
  %45 = lshr i8 %42, 6
  %46 = or disjoint i8 %45, -64
  store i8 %46, ptr %1, align 1, !tbaa !37
  %47 = and i8 %42, 63
  %48 = or disjoint i8 %47, -128
  %49 = getelementptr inbounds i8, ptr %1, i64 1
  store i8 %48, ptr %49, align 1, !tbaa !37
  br label %50

50:                                               ; preds = %44, %43
  %51 = phi i64 [ 2, %44 ], [ 1, %43 ]
  store i64 %51, ptr %2, align 8, !tbaa !49
  br label %52

52:                                               ; preds = %35, %37, %50, %33, %20
  %53 = phi i64 [ %40, %50 ], [ %21, %20 ], [ %34, %33 ], [ %38, %37 ], [ %36, %35 ]
  ret i64 %53
}

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare ptr @__ctype_toupper_loc() local_unnamed_addr #10

; Function Attrs: cold nounwind uwtable
define internal fastcc i64 @S_check_locale_boundary_crossing(ptr noundef readonly %0, i64 noundef %1, ptr noundef %2, ptr noundef %3) unnamed_addr #3 !prof !47 {
  %5 = icmp ugt i64 %1, 255
  br i1 %5, label %6, label %28

6:                                                ; preds = %4
  %7 = load i8, ptr %2, align 1, !tbaa !37
  %8 = zext i8 %7 to i64
  %9 = getelementptr inbounds [0 x i8], ptr @PL_utf8skip, i64 0, i64 %8
  %10 = load i8, ptr %9, align 1, !tbaa !37
  %11 = zext i8 %10 to i64
  %12 = load i64, ptr %3, align 8, !tbaa !49
  %13 = getelementptr inbounds i8, ptr %2, i64 %12
  %14 = icmp sgt i64 %12, %11
  br i1 %14, label %15, label %76

15:                                               ; preds = %6
  %16 = getelementptr inbounds i8, ptr %2, i64 %11
  br label %17

17:                                               ; preds = %15, %21
  %18 = phi ptr [ %26, %21 ], [ %16, %15 ]
  %19 = load i8, ptr %18, align 1, !tbaa !37
  %20 = icmp ugt i8 %19, -61
  br i1 %20, label %21, label %28

21:                                               ; preds = %17
  %22 = zext i8 %19 to i64
  %23 = getelementptr inbounds [0 x i8], ptr @PL_utf8skip, i64 0, i64 %22
  %24 = load i8, ptr %23, align 1, !tbaa !37
  %25 = zext i8 %24 to i64
  %26 = getelementptr inbounds i8, ptr %18, i64 %25
  %27 = icmp ult ptr %26, %13
  br i1 %27, label %17, label %76, !llvm.loop !105

28:                                               ; preds = %17, %4
  %29 = load i8, ptr %0, align 1, !tbaa !37
  %30 = zext i8 %29 to i64
  %31 = getelementptr inbounds [0 x i8], ptr @PL_utf8skip, i64 0, i64 %30
  %32 = load i8, ptr %31, align 1, !tbaa !37
  %33 = zext i8 %32 to i64
  %34 = getelementptr inbounds i8, ptr %0, i64 %33
  %35 = icmp eq ptr %3, null
  br i1 %35, label %37, label %36

36:                                               ; preds = %28
  store i64 %33, ptr %3, align 8, !tbaa !49
  br label %37

37:                                               ; preds = %36, %28
  %38 = icmp eq i8 %32, 1
  br i1 %38, label %60, label %39

39:                                               ; preds = %37
  %40 = icmp ugt i8 %32, 6
  %41 = zext i8 %32 to i32
  %42 = add nsw i32 %41, -2
  %43 = lshr i32 31, %42
  %44 = zext nneg i32 %43 to i64
  %45 = select i1 %40, i64 0, i64 %44
  %46 = and i64 %45, %30
  %47 = icmp eq i8 %32, 0
  br i1 %47, label %60, label %48

48:                                               ; preds = %39
  %49 = getelementptr inbounds i8, ptr %0, i64 1
  br label %50

50:                                               ; preds = %48, %50
  %51 = phi ptr [ %58, %50 ], [ %49, %48 ]
  %52 = phi i64 [ %57, %50 ], [ %46, %48 ]
  %53 = shl i64 %52, 6
  %54 = load i8, ptr %51, align 1, !tbaa !37
  %55 = and i8 %54, 63
  %56 = zext nneg i8 %55 to i64
  %57 = or disjoint i64 %53, %56
  %58 = getelementptr inbounds i8, ptr %51, i64 1
  %59 = icmp ult ptr %58, %34
  br i1 %59, label %50, label %60, !llvm.loop !54

60:                                               ; preds = %50, %39, %37
  %61 = phi i64 [ %30, %37 ], [ %46, %39 ], [ %57, %50 ]
  %62 = load ptr, ptr @PL_op, align 8, !tbaa !51
  %63 = getelementptr inbounds %struct.op, ptr %62, i64 0, i32 4
  %64 = load i16, ptr %63, align 8
  %65 = and i16 %64, 511
  %66 = icmp eq i16 %65, 380
  br i1 %66, label %67, label %69

67:                                               ; preds = %60
  %68 = tail call ptr @Perl_custom_op_get_field(ptr noundef %62, i32 noundef 2) #15
  br label %73

69:                                               ; preds = %60
  %70 = zext nneg i16 %65 to i64
  %71 = getelementptr inbounds [0 x ptr], ptr @PL_op_desc, i64 0, i64 %70
  %72 = load ptr, ptr %71, align 8, !tbaa !51
  br label %73

73:                                               ; preds = %69, %67
  %74 = phi ptr [ %68, %67 ], [ %72, %69 ]
  tail call void (i32, ptr, ...) @Perl_ck_warner(i32 noundef 65, ptr noundef nonnull @.str.80, ptr noundef %74, i64 noundef %61, i64 noundef %61) #15
  %75 = load i64, ptr %3, align 8, !tbaa !49
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %2, ptr nonnull align 1 %0, i64 %75, i1 false)
  br label %76

76:                                               ; preds = %21, %6, %73
  %77 = phi i64 [ %61, %73 ], [ %1, %6 ], [ %1, %21 ]
  ret i64 %77
}

; Function Attrs: cold nounwind uwtable
define dso_local i64 @Perl__to_utf8_title_flags(ptr noundef %0, ptr noundef %1, ptr noundef %2, i1 noundef zeroext %3) local_unnamed_addr #3 !prof !47 {
  %5 = xor i1 %3, true
  %6 = load i8, ptr @PL_in_utf8_CTYPE_locale, align 1, !range !64
  %7 = icmp eq i8 %6, 0
  %8 = select i1 %5, i1 true, i1 %7
  %9 = and i1 %8, %3
  %10 = load i8, ptr %0, align 1, !tbaa !37
  %11 = icmp sgt i8 %10, -1
  br i1 %11, label %12, label %22

12:                                               ; preds = %4
  br i1 %9, label %13, label %20

13:                                               ; preds = %12
  %14 = tail call ptr @__ctype_toupper_loc() #16
  %15 = load ptr, ptr %14, align 8, !tbaa !51
  %16 = zext nneg i8 %10 to i64
  %17 = getelementptr inbounds i32, ptr %15, i64 %16
  %18 = load i32, ptr %17, align 4, !tbaa !70
  %19 = sext i32 %18 to i64
  br label %39

20:                                               ; preds = %12
  %21 = tail call i64 @Perl__to_upper_title_latin1(i8 noundef zeroext %10, ptr noundef %1, ptr noundef %2, i8 noundef signext 115), !range !74
  br label %52

22:                                               ; preds = %4
  %23 = and i8 %10, -2
  %24 = icmp eq i8 %23, -62
  br i1 %24, label %25, label %35

25:                                               ; preds = %22
  %26 = shl i8 %10, 6
  %27 = getelementptr inbounds i8, ptr %0, i64 1
  %28 = load i8, ptr %27, align 1, !tbaa !37
  %29 = and i8 %28, 63
  %30 = or disjoint i8 %29, %26
  br i1 %9, label %31, label %33

31:                                               ; preds = %25
  %32 = zext i8 %30 to i64
  br label %39

33:                                               ; preds = %25
  %34 = tail call i64 @Perl__to_upper_title_latin1(i8 noundef zeroext %30, ptr noundef %1, ptr noundef %2, i8 noundef signext 115), !range !74
  br label %52

35:                                               ; preds = %22
  %36 = tail call i64 @Perl_to_utf8_case(ptr noundef nonnull %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull @PL_utf8_totitle, ptr noundef nonnull @.str.23, ptr noundef nonnull @.str.9)
  br i1 %9, label %37, label %52

37:                                               ; preds = %35
  %38 = tail call fastcc i64 @S_check_locale_boundary_crossing(ptr noundef nonnull %0, i64 noundef %36, ptr noundef %1, ptr noundef %2)
  br label %52

39:                                               ; preds = %31, %13
  %40 = phi i64 [ %19, %13 ], [ %32, %31 ]
  %41 = icmp ult i64 %40, 128
  %42 = trunc i64 %40 to i8
  br i1 %41, label %43, label %44

43:                                               ; preds = %39
  store i8 %42, ptr %1, align 1, !tbaa !37
  br label %50

44:                                               ; preds = %39
  %45 = lshr i8 %42, 6
  %46 = or disjoint i8 %45, -64
  store i8 %46, ptr %1, align 1, !tbaa !37
  %47 = and i8 %42, 63
  %48 = or disjoint i8 %47, -128
  %49 = getelementptr inbounds i8, ptr %1, i64 1
  store i8 %48, ptr %49, align 1, !tbaa !37
  br label %50

50:                                               ; preds = %44, %43
  %51 = phi i64 [ 2, %44 ], [ 1, %43 ]
  store i64 %51, ptr %2, align 8, !tbaa !49
  br label %52

52:                                               ; preds = %35, %37, %50, %33, %20
  %53 = phi i64 [ %40, %50 ], [ %21, %20 ], [ %34, %33 ], [ %38, %37 ], [ %36, %35 ]
  ret i64 %53
}

; Function Attrs: cold nounwind uwtable
define dso_local i64 @Perl__to_utf8_lower_flags(ptr noundef %0, ptr noundef %1, ptr noundef %2, i1 noundef zeroext %3) local_unnamed_addr #3 !prof !47 {
  %5 = xor i1 %3, true
  %6 = load i8, ptr @PL_in_utf8_CTYPE_locale, align 1, !range !64
  %7 = icmp eq i8 %6, 0
  %8 = select i1 %5, i1 true, i1 %7
  %9 = and i1 %8, %3
  %10 = load i8, ptr %0, align 1, !tbaa !37
  %11 = icmp sgt i8 %10, -1
  br i1 %11, label %12, label %37

12:                                               ; preds = %4
  br i1 %9, label %13, label %20

13:                                               ; preds = %12
  %14 = tail call ptr @__ctype_tolower_loc() #16
  %15 = load ptr, ptr %14, align 8, !tbaa !51
  %16 = zext nneg i8 %10 to i64
  %17 = getelementptr inbounds i32, ptr %15, i64 %16
  %18 = load i32, ptr %17, align 4, !tbaa !70
  %19 = sext i32 %18 to i64
  br label %67

20:                                               ; preds = %12
  %21 = zext nneg i8 %10 to i64
  %22 = getelementptr inbounds [0 x i8], ptr @PL_latin1_lc, i64 0, i64 %21
  %23 = load i8, ptr %22, align 1, !tbaa !37
  %24 = icmp eq ptr %1, null
  br i1 %24, label %35, label %25

25:                                               ; preds = %20
  %26 = icmp sgt i8 %23, -1
  br i1 %26, label %27, label %28

27:                                               ; preds = %25
  store i8 %23, ptr %1, align 1, !tbaa !37
  br label %33

28:                                               ; preds = %25
  %29 = lshr i8 %23, 6
  %30 = or disjoint i8 %29, -64
  store i8 %30, ptr %1, align 1, !tbaa !37
  %31 = and i8 %23, -65
  %32 = getelementptr inbounds i8, ptr %1, i64 1
  store i8 %31, ptr %32, align 1, !tbaa !37
  br label %33

33:                                               ; preds = %28, %27
  %34 = phi i64 [ 1, %27 ], [ 2, %28 ]
  store i64 %34, ptr %2, align 8, !tbaa !49
  br label %35

35:                                               ; preds = %33, %20
  %36 = zext i8 %23 to i64
  br label %80

37:                                               ; preds = %4
  %38 = and i8 %10, -2
  %39 = icmp eq i8 %38, -62
  br i1 %39, label %40, label %63

40:                                               ; preds = %37
  %41 = shl i8 %10, 6
  %42 = getelementptr inbounds i8, ptr %0, i64 1
  %43 = load i8, ptr %42, align 1, !tbaa !37
  %44 = and i8 %43, 63
  %45 = or disjoint i8 %44, %41
  %46 = zext i8 %45 to i64
  br i1 %9, label %67, label %47

47:                                               ; preds = %40
  %48 = getelementptr inbounds [0 x i8], ptr @PL_latin1_lc, i64 0, i64 %46
  %49 = load i8, ptr %48, align 1, !tbaa !37
  %50 = icmp eq ptr %1, null
  br i1 %50, label %61, label %51

51:                                               ; preds = %47
  %52 = icmp sgt i8 %49, -1
  br i1 %52, label %53, label %54

53:                                               ; preds = %51
  store i8 %49, ptr %1, align 1, !tbaa !37
  br label %59

54:                                               ; preds = %51
  %55 = lshr i8 %49, 6
  %56 = or disjoint i8 %55, -64
  store i8 %56, ptr %1, align 1, !tbaa !37
  %57 = and i8 %49, -65
  %58 = getelementptr inbounds i8, ptr %1, i64 1
  store i8 %57, ptr %58, align 1, !tbaa !37
  br label %59

59:                                               ; preds = %54, %53
  %60 = phi i64 [ 1, %53 ], [ 2, %54 ]
  store i64 %60, ptr %2, align 8, !tbaa !49
  br label %61

61:                                               ; preds = %59, %47
  %62 = zext i8 %49 to i64
  br label %80

63:                                               ; preds = %37
  %64 = tail call i64 @Perl_to_utf8_case(ptr noundef nonnull %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull @PL_utf8_tolower, ptr noundef nonnull @.str.24, ptr noundef nonnull @.str.9)
  br i1 %9, label %65, label %80

65:                                               ; preds = %63
  %66 = tail call fastcc i64 @S_check_locale_boundary_crossing(ptr noundef nonnull %0, i64 noundef %64, ptr noundef %1, ptr noundef %2)
  br label %80

67:                                               ; preds = %40, %13
  %68 = phi i64 [ %19, %13 ], [ %46, %40 ]
  %69 = icmp ult i64 %68, 128
  %70 = trunc i64 %68 to i8
  br i1 %69, label %71, label %72

71:                                               ; preds = %67
  store i8 %70, ptr %1, align 1, !tbaa !37
  br label %78

72:                                               ; preds = %67
  %73 = lshr i8 %70, 6
  %74 = or disjoint i8 %73, -64
  store i8 %74, ptr %1, align 1, !tbaa !37
  %75 = and i8 %70, 63
  %76 = or disjoint i8 %75, -128
  %77 = getelementptr inbounds i8, ptr %1, i64 1
  store i8 %76, ptr %77, align 1, !tbaa !37
  br label %78

78:                                               ; preds = %72, %71
  %79 = phi i64 [ 2, %72 ], [ 1, %71 ]
  store i64 %79, ptr %2, align 8, !tbaa !49
  br label %80

80:                                               ; preds = %63, %65, %78, %61, %35
  %81 = phi i64 [ %68, %78 ], [ %36, %35 ], [ %62, %61 ], [ %66, %65 ], [ %64, %63 ]
  ret i64 %81
}

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare ptr @__ctype_tolower_loc() local_unnamed_addr #10

declare void @Perl_ck_warner(i32 noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: cold nounwind uwtable
define dso_local ptr @Perl_swash_init(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, i32 noundef %4) local_unnamed_addr #3 !prof !47 {
  %6 = tail call ptr @Perl__core_swash_init(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, i32 noundef %4, ptr noundef null, ptr noundef null)
  %7 = tail call ptr @Perl_newSVsv(ptr noundef %6) #15
  ret ptr %7
}

declare ptr @Perl_newSVsv(ptr noundef) local_unnamed_addr #4

declare ptr @Perl_gv_stashpvn(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

declare ptr @Perl_new_stackinfo(i32 noundef, i32 noundef) local_unnamed_addr #4

declare void @Perl_push_scope() local_unnamed_addr #4

declare void @Perl_save_hints() local_unnamed_addr #4

declare void @Perl_save_re_context() local_unnamed_addr #4

declare void @Perl_save_item(ptr noundef) local_unnamed_addr #4

declare void @Perl_save_I8(ptr noundef) local_unnamed_addr #4

declare ptr @Perl_gv_fetchmeth_pvn(ptr noundef, ptr noundef, i64 noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

declare void @Perl_save_pushptr(ptr noundef, i32 noundef) local_unnamed_addr #4

declare void @Perl_save_bool(ptr noundef) local_unnamed_addr #4

declare void @Perl_load_module(i32 noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #4

declare ptr @Perl_newSVpvn(ptr noundef, i64 noundef) local_unnamed_addr #4

declare zeroext i1 @Perl_sv_2bool_flags(ptr noundef, i32 noundef) local_unnamed_addr #4

declare void @Perl_pop_scope() local_unnamed_addr #4

declare ptr @Perl_markstack_grow() local_unnamed_addr #4

declare ptr @Perl_stack_grow(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #4

declare ptr @Perl_newSVpvn_flags(ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #4

declare void @Perl_sv_setiv(ptr noundef, i64 noundef) local_unnamed_addr #4

declare ptr @Perl_sv_newmortal() local_unnamed_addr #4

declare i32 @Perl_call_sv(ptr noundef, i32 noundef) local_unnamed_addr #4

declare void @Perl_croak_popstack() local_unnamed_addr #4

declare i64 @Perl_sv_2uv_flags(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: cold nounwind uwtable
define dso_local ptr @Perl__swash_to_invlist(ptr nocapture noundef readonly %0) local_unnamed_addr #3 !prof !47 {
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  %4 = alloca [1 x i8], align 1
  %5 = alloca i64, align 8
  %6 = alloca ptr, align 8
  %7 = alloca ptr, align 8
  %8 = alloca i64, align 8
  %9 = alloca ptr, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #15
  %13 = getelementptr inbounds %struct.sv, ptr %0, i64 0, i32 3
  %14 = load ptr, ptr %13, align 8, !tbaa !37
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #15
  store i64 0, ptr %3, align 8, !tbaa !49
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %4) #15
  store i8 0, ptr %4, align 1
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #15
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #15
  %15 = getelementptr inbounds %struct.hv, ptr %14, i64 0, i32 2
  %16 = load i32, ptr %15, align 4, !tbaa !103
  %17 = and i32 %16, 255
  %18 = icmp eq i32 %17, 12
  br i1 %18, label %23, label %19

19:                                               ; preds = %1
  %20 = getelementptr inbounds %struct.sv, ptr %14, i64 0, i32 1
  %21 = load i32, ptr %20, align 8, !tbaa !102
  %22 = add i32 %21, 1
  store i32 %22, ptr %20, align 8, !tbaa !102
  br label %276

23:                                               ; preds = %1
  %24 = tail call ptr @Perl_hv_common(ptr noundef %14, ptr noundef null, ptr noundef nonnull @.str.49, i64 noundef 4, i32 noundef 0, i32 noundef 32, ptr noundef null, i32 noundef 0) #15
  %25 = tail call ptr @Perl_hv_common(ptr noundef %14, ptr noundef null, ptr noundef nonnull @.str.50, i64 noundef 4, i32 noundef 0, i32 noundef 32, ptr noundef null, i32 noundef 0) #15
  %26 = tail call ptr @Perl_hv_common(ptr noundef %14, ptr noundef null, ptr noundef nonnull @.str.51, i64 noundef 4, i32 noundef 0, i32 noundef 32, ptr noundef null, i32 noundef 0) #15
  %27 = tail call ptr @Perl_hv_common(ptr noundef %14, ptr noundef null, ptr noundef nonnull @.str.57, i64 noundef 6, i32 noundef 0, i32 noundef 32, ptr noundef null, i32 noundef 0) #15
  %28 = tail call ptr @Perl_hv_common(ptr noundef %14, ptr noundef null, ptr noundef nonnull @.str.58, i64 noundef 9, i32 noundef 0, i32 noundef 32, ptr noundef null, i32 noundef 0) #15
  %29 = load ptr, ptr %25, align 8, !tbaa !51
  %30 = getelementptr inbounds %struct.sv, ptr %29, i64 0, i32 2
  %31 = load i32, ptr %30, align 4, !tbaa !75
  %32 = and i32 %31, 2098176
  %33 = icmp eq i32 %32, 1024
  br i1 %33, label %34, label %37

34:                                               ; preds = %23
  %35 = getelementptr inbounds %struct.sv, ptr %29, i64 0, i32 3
  %36 = load ptr, ptr %35, align 8, !tbaa !37
  br label %39

37:                                               ; preds = %23
  %38 = tail call ptr @Perl_sv_2pv_flags(ptr noundef %29, ptr noundef null, i32 noundef 2) #15
  br label %39

39:                                               ; preds = %37, %34
  %40 = phi ptr [ %36, %34 ], [ %38, %37 ]
  %41 = load ptr, ptr %26, align 8, !tbaa !51
  %42 = getelementptr inbounds %struct.sv, ptr %41, i64 0, i32 2
  %43 = load i32, ptr %42, align 4, !tbaa !75
  %44 = and i32 %43, -2145386240
  %45 = icmp eq i32 %44, -2147483392
  br i1 %45, label %46, label %50

46:                                               ; preds = %39
  %47 = load ptr, ptr %41, align 8, !tbaa !77
  %48 = getelementptr inbounds %struct.xpvuv, ptr %47, i64 0, i32 4
  %49 = load i64, ptr %48, align 8, !tbaa !37
  br label %52

50:                                               ; preds = %39
  %51 = tail call i64 @Perl_sv_2uv_flags(ptr noundef %41, i32 noundef 2) #15
  br label %52

52:                                               ; preds = %50, %46
  %53 = phi i64 [ %49, %46 ], [ %51, %50 ]
  %54 = load ptr, ptr %24, align 8, !tbaa !51
  %55 = getelementptr inbounds %struct.sv, ptr %54, i64 0, i32 2
  %56 = load i32, ptr %55, align 4, !tbaa !75
  %57 = and i32 %56, 1024
  %58 = icmp eq i32 %57, 0
  br i1 %58, label %70, label %59

59:                                               ; preds = %52
  %60 = and i32 %56, 2098176
  %61 = icmp eq i32 %60, 1024
  br i1 %61, label %62, label %68

62:                                               ; preds = %59
  %63 = load ptr, ptr %54, align 8, !tbaa !77
  %64 = getelementptr inbounds %struct.xpv, ptr %63, i64 0, i32 2
  %65 = load i64, ptr %64, align 8, !tbaa !78
  store i64 %65, ptr %2, align 8, !tbaa !49
  %66 = getelementptr inbounds %struct.sv, ptr %54, i64 0, i32 3
  %67 = load ptr, ptr %66, align 8, !tbaa !37
  br label %71

68:                                               ; preds = %59
  %69 = call ptr @Perl_sv_2pv_flags(ptr noundef %54, ptr noundef nonnull %2, i32 noundef 2) #15
  br label %71

70:                                               ; preds = %52
  store i64 0, ptr %2, align 8, !tbaa !49
  br label %71

71:                                               ; preds = %62, %68, %70
  %72 = phi ptr [ %4, %70 ], [ %67, %62 ], [ %69, %68 ]
  %73 = load i64, ptr %2, align 8, !tbaa !49
  %74 = getelementptr inbounds i8, ptr %72, i64 %73
  %75 = load i8, ptr %72, align 1, !tbaa !37
  %76 = icmp eq i8 %75, 86
  br i1 %76, label %82, label %77

77:                                               ; preds = %71
  %78 = call ptr @strchr(ptr noundef nonnull dereferenceable(1) %72, i32 noundef 10) #14
  %79 = icmp eq ptr %78, null
  br i1 %79, label %146, label %80

80:                                               ; preds = %77
  %81 = load i64, ptr %3, align 8, !tbaa !49
  br label %139

82:                                               ; preds = %71
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #15
  store ptr %74, ptr %7, align 8, !tbaa !51
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %8) #15
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %9) #15
  %83 = getelementptr inbounds i8, ptr %72, i64 1
  %84 = call zeroext i1 @Perl_grok_atoUV(ptr noundef nonnull %83, ptr noundef nonnull %3, ptr noundef nonnull %7) #15
  br i1 %84, label %86, label %85

85:                                               ; preds = %82
  call void (ptr, ...) @Perl_croak(ptr noundef nonnull @.str.59) #15
  br label %86

86:                                               ; preds = %85, %82
  %87 = load i64, ptr %3, align 8, !tbaa !49
  %88 = icmp eq i64 %87, 0
  br i1 %88, label %89, label %91

89:                                               ; preds = %86
  %90 = call ptr @Perl__new_invlist(i64 noundef 0) #15
  store ptr %90, ptr %6, align 8, !tbaa !51
  br label %138

91:                                               ; preds = %86
  %92 = load ptr, ptr %7, align 8, !tbaa !51
  br label %93

93:                                               ; preds = %93, %91
  %94 = phi ptr [ %92, %91 ], [ %101, %93 ]
  %95 = load i8, ptr %94, align 1, !tbaa !37
  %96 = zext i8 %95 to i64
  %97 = getelementptr inbounds [0 x i32], ptr @PL_charclass, i64 0, i64 %96
  %98 = load i32, ptr %97, align 4, !tbaa !70
  %99 = and i32 %98, 17408
  %100 = icmp eq i32 %99, 17408
  %101 = getelementptr inbounds i8, ptr %94, i64 1
  br i1 %100, label %93, label %102, !llvm.loop !106

102:                                              ; preds = %93
  %103 = call zeroext i1 @Perl_grok_atoUV(ptr noundef nonnull %94, ptr noundef nonnull %8, ptr noundef nonnull %7) #15
  br i1 %103, label %105, label %104

104:                                              ; preds = %102
  call void (ptr, ...) @Perl_croak(ptr noundef nonnull @.str.60) #15
  br label %105

105:                                              ; preds = %104, %102
  %106 = load ptr, ptr %7, align 8, !tbaa !51
  %107 = load i64, ptr %3, align 8, !tbaa !49
  %108 = load i64, ptr %8, align 8, !tbaa !49
  %109 = call ptr @Perl__setup_canned_invlist(i64 noundef %107, i64 noundef %108, ptr noundef nonnull %9) #15
  store ptr %109, ptr %6, align 8, !tbaa !51
  %110 = load i64, ptr %3, align 8, !tbaa !49
  %111 = add i64 %110, -2
  store i64 %111, ptr %3, align 8, !tbaa !49
  %112 = icmp eq i64 %110, 1
  br i1 %112, label %138, label %113

113:                                              ; preds = %105, %133
  %114 = phi i64 [ %136, %133 ], [ %111, %105 ]
  %115 = phi ptr [ %134, %133 ], [ %106, %105 ]
  %116 = icmp ugt ptr %115, %74
  br i1 %116, label %117, label %118

117:                                              ; preds = %113
  call void (ptr, ...) @Perl_croak(ptr noundef nonnull @.str.61, i64 noundef %114) #15
  br label %118

118:                                              ; preds = %117, %113
  br label %119

119:                                              ; preds = %118, %119
  %120 = phi ptr [ %127, %119 ], [ %115, %118 ]
  %121 = load i8, ptr %120, align 1, !tbaa !37
  %122 = zext i8 %121 to i64
  %123 = getelementptr inbounds [0 x i32], ptr @PL_charclass, i64 0, i64 %122
  %124 = load i32, ptr %123, align 4, !tbaa !70
  %125 = and i32 %124, 17408
  %126 = icmp eq i32 %125, 17408
  %127 = getelementptr inbounds i8, ptr %120, i64 1
  br i1 %126, label %119, label %128, !llvm.loop !107

128:                                              ; preds = %119
  %129 = load ptr, ptr %9, align 8, !tbaa !51
  %130 = getelementptr inbounds i64, ptr %129, i64 1
  store ptr %130, ptr %9, align 8, !tbaa !51
  %131 = call zeroext i1 @Perl_grok_atoUV(ptr noundef nonnull %120, ptr noundef %129, ptr noundef nonnull %7) #15
  br i1 %131, label %133, label %132

132:                                              ; preds = %128
  call void (ptr, ...) @Perl_croak(ptr noundef nonnull @.str.62) #15
  br label %133

133:                                              ; preds = %132, %128
  %134 = load ptr, ptr %7, align 8, !tbaa !51
  %135 = load i64, ptr %3, align 8, !tbaa !49
  %136 = add i64 %135, -1
  store i64 %136, ptr %3, align 8, !tbaa !49
  %137 = icmp eq i64 %135, 0
  br i1 %137, label %138, label %113, !llvm.loop !108

138:                                              ; preds = %133, %105, %89
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %9) #15
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %8) #15
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #15
  br label %174

139:                                              ; preds = %80, %139
  %140 = phi ptr [ %144, %139 ], [ %78, %80 ]
  %141 = phi i64 [ %142, %139 ], [ %81, %80 ]
  %142 = add i64 %141, 2
  store i64 %142, ptr %3, align 8, !tbaa !49
  %143 = getelementptr inbounds i8, ptr %140, i64 1
  %144 = call ptr @strchr(ptr noundef nonnull dereferenceable(1) %143, i32 noundef 10) #14
  %145 = icmp eq ptr %144, null
  br i1 %145, label %146, label %139, !llvm.loop !109

146:                                              ; preds = %139, %77
  %147 = load i8, ptr %74, align 1, !tbaa !37
  switch i8 %147, label %154 [
    i8 10, label %157
    i8 0, label %148
  ]

148:                                              ; preds = %146
  %149 = icmp eq i64 %73, 0
  br i1 %149, label %157, label %150

150:                                              ; preds = %148
  %151 = getelementptr inbounds i8, ptr %74, i64 -1
  %152 = load i8, ptr %151, align 1, !tbaa !37
  %153 = icmp eq i8 %152, 10
  br i1 %153, label %157, label %154

154:                                              ; preds = %150, %146
  %155 = load i64, ptr %3, align 8, !tbaa !49
  %156 = add i64 %155, 1
  store i64 %156, ptr %3, align 8, !tbaa !49
  br label %157

157:                                              ; preds = %146, %154, %150, %148
  %158 = load i64, ptr %3, align 8, !tbaa !49
  %159 = call ptr @Perl__new_invlist(i64 noundef %158) #15
  store ptr %159, ptr %6, align 8, !tbaa !51
  %160 = icmp sgt i64 %73, 0
  br i1 %160, label %161, label %174

161:                                              ; preds = %157
  %162 = icmp ugt i64 %53, 7
  br label %163

163:                                              ; preds = %161, %167
  %164 = phi ptr [ %72, %161 ], [ %165, %167 ]
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %10) #15
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %11) #15
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %12) #15
  %165 = call fastcc ptr @S_swash_scan_list_line(ptr noundef %164, ptr noundef nonnull %74, ptr noundef nonnull %10, ptr noundef nonnull %11, ptr noundef nonnull %12, i1 noundef zeroext %162, ptr noundef %40)
  %166 = icmp ugt ptr %165, %74
  br i1 %166, label %173, label %167

167:                                              ; preds = %163
  %168 = load ptr, ptr %6, align 8, !tbaa !51
  %169 = load i64, ptr %10, align 8, !tbaa !49
  %170 = load i64, ptr %11, align 8, !tbaa !49
  %171 = call ptr @Perl__add_range_to_invlist(ptr noundef %168, i64 noundef %169, i64 noundef %170) #15
  store ptr %171, ptr %6, align 8, !tbaa !51
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %12) #15
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %11) #15
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %10) #15
  %172 = icmp ult ptr %165, %74
  br i1 %172, label %163, label %174

173:                                              ; preds = %163
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %12) #15
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %11) #15
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %10) #15
  br label %174

174:                                              ; preds = %167, %157, %173, %138
  %175 = icmp eq ptr %28, null
  br i1 %175, label %192, label %176

176:                                              ; preds = %174
  %177 = load ptr, ptr %28, align 8, !tbaa !51
  %178 = getelementptr inbounds %struct.sv, ptr %177, i64 0, i32 2
  %179 = load i32, ptr %178, align 4, !tbaa !75
  %180 = and i32 %179, -2145386240
  %181 = icmp eq i32 %180, -2147483392
  br i1 %181, label %182, label %187

182:                                              ; preds = %176
  %183 = load ptr, ptr %177, align 8, !tbaa !77
  %184 = getelementptr inbounds %struct.xpvuv, ptr %183, i64 0, i32 4
  %185 = load i64, ptr %184, align 8, !tbaa !37
  %186 = icmp eq i64 %185, 0
  br i1 %186, label %192, label %190

187:                                              ; preds = %176
  %188 = call i64 @Perl_sv_2uv_flags(ptr noundef %177, i32 noundef 2) #15
  %189 = icmp eq i64 %188, 0
  br i1 %189, label %192, label %190

190:                                              ; preds = %187, %182
  %191 = load ptr, ptr %6, align 8, !tbaa !51
  call void @Perl__invlist_invert(ptr noundef %191) #15
  br label %192

192:                                              ; preds = %187, %190, %182, %174
  %193 = load ptr, ptr %27, align 8, !tbaa !51
  %194 = getelementptr inbounds %struct.sv, ptr %193, i64 0, i32 2
  %195 = load i32, ptr %194, align 4, !tbaa !75
  %196 = and i32 %195, 2098176
  %197 = icmp eq i32 %196, 1024
  br i1 %197, label %198, label %204

198:                                              ; preds = %192
  %199 = load ptr, ptr %193, align 8, !tbaa !77
  %200 = getelementptr inbounds %struct.xpv, ptr %199, i64 0, i32 2
  %201 = load i64, ptr %200, align 8, !tbaa !78
  store i64 %201, ptr %5, align 8, !tbaa !49
  %202 = getelementptr inbounds %struct.sv, ptr %193, i64 0, i32 3
  %203 = load ptr, ptr %202, align 8, !tbaa !37
  br label %206

204:                                              ; preds = %192
  %205 = call ptr @Perl_sv_2pv_flags(ptr noundef %193, ptr noundef nonnull %5, i32 noundef 2) #15
  br label %206

206:                                              ; preds = %204, %198
  %207 = phi ptr [ %203, %198 ], [ %205, %204 ]
  %208 = load i64, ptr %5, align 8, !tbaa !49
  %209 = getelementptr inbounds i8, ptr %207, i64 %208
  %210 = ptrtoint ptr %209 to i64
  %211 = icmp ne i64 %53, 1
  br label %212

212:                                              ; preds = %268, %206
  %213 = phi ptr [ %207, %206 ], [ %270, %268 ]
  %214 = icmp ult ptr %213, %209
  br i1 %214, label %215, label %271

215:                                              ; preds = %212
  %216 = getelementptr inbounds i8, ptr %213, i64 1
  %217 = load i8, ptr %213, align 1, !tbaa !37
  %218 = icmp eq i8 %217, 10
  br i1 %218, label %268, label %219, !llvm.loop !110

219:                                              ; preds = %215
  %220 = ptrtoint ptr %216 to i64
  %221 = sub i64 %210, %220
  %222 = call ptr @memchr(ptr noundef nonnull %216, i32 noundef 10, i64 noundef %221) #14
  switch i8 %217, label %223 [
    i8 45, label %227
    i8 43, label %227
    i8 38, label %227
    i8 33, label %227
  ]

223:                                              ; preds = %219
  %224 = icmp eq ptr %222, null
  %225 = getelementptr inbounds i8, ptr %222, i64 1
  %226 = select i1 %224, ptr %209, ptr %225
  br label %268

227:                                              ; preds = %219, %219, %219, %219
  %228 = icmp eq ptr %222, null
  %229 = ptrtoint ptr %222 to i64
  %230 = sub i64 %229, %220
  %231 = getelementptr inbounds i8, ptr %222, i64 1
  %232 = select i1 %228, i64 %221, i64 %230
  %233 = select i1 %228, ptr %209, ptr %231
  %234 = trunc i64 %232 to i32
  %235 = call ptr @Perl_hv_common_key_len(ptr noundef %14, ptr noundef nonnull %216, i32 noundef %234, i32 noundef 32, ptr noundef null, i32 noundef 0) #15
  %236 = load ptr, ptr %235, align 8, !tbaa !51
  %237 = getelementptr inbounds %struct.sv, ptr %236, i64 0, i32 3
  %238 = load ptr, ptr %237, align 8, !tbaa !37
  %239 = call ptr @Perl_hv_common(ptr noundef %238, ptr noundef null, ptr noundef nonnull @.str.51, i64 noundef 4, i32 noundef 0, i32 noundef 32, ptr noundef null, i32 noundef 0) #15
  %240 = load ptr, ptr %239, align 8, !tbaa !51
  %241 = getelementptr inbounds %struct.sv, ptr %240, i64 0, i32 2
  %242 = load i32, ptr %241, align 4, !tbaa !75
  %243 = and i32 %242, -2145386240
  %244 = icmp eq i32 %243, -2147483392
  br i1 %244, label %245, label %249

245:                                              ; preds = %227
  %246 = load ptr, ptr %240, align 8, !tbaa !77
  %247 = getelementptr inbounds %struct.xpvuv, ptr %246, i64 0, i32 4
  %248 = load i64, ptr %247, align 8, !tbaa !37
  br label %251

249:                                              ; preds = %227
  %250 = call i64 @Perl_sv_2uv_flags(ptr noundef %240, i32 noundef 2) #15
  br label %251

251:                                              ; preds = %249, %245
  %252 = phi i64 [ %248, %245 ], [ %250, %249 ]
  %253 = icmp ne i64 %252, 1
  %254 = or i1 %211, %253
  br i1 %254, label %255, label %256

255:                                              ; preds = %251
  call void (ptr, ...) @Perl_croak(ptr noundef nonnull @.str.63, i64 noundef %53, i64 noundef %252) #15
  br label %256

256:                                              ; preds = %251, %255
  %257 = load ptr, ptr %235, align 8, !tbaa !51
  %258 = call ptr @Perl__swash_to_invlist(ptr noundef %257)
  switch i8 %217, label %267 [
    i8 43, label %259
    i8 33, label %261
    i8 45, label %263
    i8 38, label %265
  ]

259:                                              ; preds = %256
  %260 = load ptr, ptr %6, align 8, !tbaa !51
  call void @Perl__invlist_union_maybe_complement_2nd(ptr noundef %260, ptr noundef %258, i1 noundef zeroext false, ptr noundef nonnull %6) #15
  br label %267

261:                                              ; preds = %256
  %262 = load ptr, ptr %6, align 8, !tbaa !51
  call void @Perl__invlist_union_maybe_complement_2nd(ptr noundef %262, ptr noundef %258, i1 noundef zeroext true, ptr noundef nonnull %6) #15
  br label %267

263:                                              ; preds = %256
  %264 = load ptr, ptr %6, align 8, !tbaa !51
  call void @Perl__invlist_intersection_maybe_complement_2nd(ptr noundef %264, ptr noundef %258, i1 noundef zeroext true, ptr noundef nonnull %6) #15
  br label %267

265:                                              ; preds = %256
  %266 = load ptr, ptr %6, align 8, !tbaa !51
  call void @Perl__invlist_intersection_maybe_complement_2nd(ptr noundef %266, ptr noundef %258, i1 noundef zeroext false, ptr noundef nonnull %6) #15
  br label %267

267:                                              ; preds = %256, %265, %263, %261, %259
  call void @Perl_sv_free(ptr noundef %258) #15
  br label %268

268:                                              ; preds = %223, %215, %267
  %269 = phi i1 [ false, %267 ], [ false, %215 ], [ %224, %223 ]
  %270 = phi ptr [ %233, %267 ], [ %216, %215 ], [ %226, %223 ]
  br i1 %269, label %271, label %212

271:                                              ; preds = %268, %212
  %272 = load ptr, ptr %6, align 8, !tbaa !51
  %273 = getelementptr inbounds %struct.sv, ptr %272, i64 0, i32 2
  %274 = load i32, ptr %273, align 4, !tbaa !75
  %275 = or i32 %274, 134283264
  store i32 %275, ptr %273, align 4, !tbaa !75
  br label %276

276:                                              ; preds = %271, %19
  %277 = phi ptr [ %14, %19 ], [ %272, %271 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #15
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #15
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %4) #15
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #15
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #15
  ret ptr %277
}

declare void @Perl__invlist_union_maybe_complement_2nd(ptr noundef, ptr noundef, i1 noundef zeroext, ptr noundef) local_unnamed_addr #4

declare ptr @Perl_newSV_type(i32 noundef) local_unnamed_addr #4

declare ptr @Perl_newRV_noinc(ptr noundef) local_unnamed_addr #4

; Function Attrs: cold nounwind uwtable
define internal fastcc ptr @S_swatch_get(ptr nocapture noundef readonly %0, i64 noundef %1, i64 noundef %2) unnamed_addr #3 !prof !47 {
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #15
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #15
  %11 = getelementptr inbounds %struct.sv, ptr %0, i64 0, i32 3
  %12 = load ptr, ptr %11, align 8, !tbaa !37
  %13 = tail call ptr @Perl_hv_common(ptr noundef %12, ptr noundef null, ptr noundef nonnull @.str.45, i64 noundef 1, i32 noundef 0, i32 noundef 32, ptr noundef null, i32 noundef 0) #15
  %14 = add i64 %2, %1
  %15 = icmp eq ptr %13, null
  br i1 %15, label %16, label %59

16:                                               ; preds = %3
  %17 = tail call ptr @Perl_hv_common(ptr noundef %12, ptr noundef null, ptr noundef nonnull @.str.51, i64 noundef 4, i32 noundef 0, i32 noundef 32, ptr noundef null, i32 noundef 0) #15
  %18 = tail call ptr @Perl_hv_common(ptr noundef %12, ptr noundef null, ptr noundef nonnull @.str.52, i64 noundef 4, i32 noundef 0, i32 noundef 32, ptr noundef null, i32 noundef 0) #15
  %19 = tail call ptr @Perl_hv_common(ptr noundef %12, ptr noundef null, ptr noundef nonnull @.str.50, i64 noundef 4, i32 noundef 0, i32 noundef 32, ptr noundef null, i32 noundef 0) #15
  %20 = tail call ptr @Perl_hv_common(ptr noundef %12, ptr noundef null, ptr noundef nonnull @.str.57, i64 noundef 6, i32 noundef 0, i32 noundef 32, ptr noundef null, i32 noundef 0) #15
  %21 = tail call ptr @Perl_hv_common(ptr noundef %12, ptr noundef null, ptr noundef nonnull @.str.49, i64 noundef 4, i32 noundef 0, i32 noundef 32, ptr noundef null, i32 noundef 0) #15
  %22 = tail call ptr @Perl_hv_common(ptr noundef %12, ptr noundef null, ptr noundef nonnull @.str.58, i64 noundef 9, i32 noundef 0, i32 noundef 32, ptr noundef null, i32 noundef 0) #15
  %23 = load ptr, ptr %17, align 8, !tbaa !51
  %24 = getelementptr inbounds %struct.sv, ptr %23, i64 0, i32 2
  %25 = load i32, ptr %24, align 4, !tbaa !75
  %26 = and i32 %25, -2145386240
  %27 = icmp eq i32 %26, -2147483392
  br i1 %27, label %28, label %32

28:                                               ; preds = %16
  %29 = load ptr, ptr %23, align 8, !tbaa !77
  %30 = getelementptr inbounds %struct.xpvuv, ptr %29, i64 0, i32 4
  %31 = load i64, ptr %30, align 8, !tbaa !37
  br label %34

32:                                               ; preds = %16
  %33 = tail call i64 @Perl_sv_2uv_flags(ptr noundef %23, i32 noundef 2) #15
  br label %34

34:                                               ; preds = %32, %28
  %35 = phi i64 [ %31, %28 ], [ %33, %32 ]
  %36 = load ptr, ptr %18, align 8, !tbaa !51
  %37 = getelementptr inbounds %struct.sv, ptr %36, i64 0, i32 2
  %38 = load i32, ptr %37, align 4, !tbaa !75
  %39 = and i32 %38, -2145386240
  %40 = icmp eq i32 %39, -2147483392
  br i1 %40, label %41, label %45

41:                                               ; preds = %34
  %42 = load ptr, ptr %36, align 8, !tbaa !77
  %43 = getelementptr inbounds %struct.xpvuv, ptr %42, i64 0, i32 4
  %44 = load i64, ptr %43, align 8, !tbaa !37
  br label %47

45:                                               ; preds = %34
  %46 = tail call i64 @Perl_sv_2uv_flags(ptr noundef %36, i32 noundef 2) #15
  br label %47

47:                                               ; preds = %45, %41
  %48 = phi i64 [ %44, %41 ], [ %46, %45 ]
  %49 = load ptr, ptr %19, align 8, !tbaa !51
  %50 = getelementptr inbounds %struct.sv, ptr %49, i64 0, i32 2
  %51 = load i32, ptr %50, align 4, !tbaa !75
  %52 = and i32 %51, 2098176
  %53 = icmp eq i32 %52, 1024
  br i1 %53, label %54, label %57

54:                                               ; preds = %47
  %55 = getelementptr inbounds %struct.sv, ptr %49, i64 0, i32 3
  %56 = load ptr, ptr %55, align 8, !tbaa !37
  br label %59

57:                                               ; preds = %47
  %58 = tail call ptr @Perl_sv_2pv_flags(ptr noundef %49, ptr noundef null, i32 noundef 2) #15
  br label %59

59:                                               ; preds = %3, %54, %57
  %60 = phi i64 [ %48, %57 ], [ %48, %54 ], [ 0, %3 ]
  %61 = phi i64 [ %35, %57 ], [ %35, %54 ], [ 1, %3 ]
  %62 = phi ptr [ %58, %57 ], [ %56, %54 ], [ null, %3 ]
  %63 = phi ptr [ %22, %57 ], [ %22, %54 ], [ null, %3 ]
  %64 = phi ptr [ %20, %57 ], [ %20, %54 ], [ null, %3 ]
  %65 = phi ptr [ %21, %57 ], [ %21, %54 ], [ null, %3 ]
  %66 = lshr i64 %61, 3
  switch i64 %61, label %67 [
    i64 32, label %68
    i64 16, label %68
    i64 8, label %68
    i64 1, label %68
  ]

67:                                               ; preds = %59
  tail call void (ptr, ...) @Perl_croak(ptr noundef nonnull @.str.81, i64 noundef %61) #15
  br label %68

68:                                               ; preds = %59, %59, %59, %59, %67
  %69 = icmp ult i64 %14, %1
  %70 = xor i64 %1, -1
  %71 = select i1 %69, i64 -1, i64 %14
  %72 = select i1 %69, i64 %70, i64 %2
  %73 = icmp ugt i64 %61, 7
  %74 = mul i64 %66, %72
  %75 = add i64 %72, 7
  %76 = lshr i64 %75, 3
  %77 = select i1 %73, i64 %74, i64 %76
  %78 = tail call ptr @Perl_newSV(i64 noundef %77) #15
  %79 = getelementptr inbounds %struct.sv, ptr %78, i64 0, i32 2
  %80 = load i32, ptr %79, align 4, !tbaa !75
  %81 = or i32 %80, 17408
  store i32 %81, ptr %79, align 4, !tbaa !75
  %82 = getelementptr inbounds %struct.sv, ptr %78, i64 0, i32 3
  %83 = load ptr, ptr %82, align 8, !tbaa !37
  %84 = icmp ne i64 %60, 0
  %85 = select i1 %73, i1 %84, i1 false
  br i1 %85, label %86, label %118

86:                                               ; preds = %68
  %87 = getelementptr inbounds i8, ptr %83, i64 %77
  %88 = icmp sgt i64 %77, 0
  br i1 %88, label %89, label %116

89:                                               ; preds = %86
  %90 = lshr i64 %60, 24
  %91 = trunc i64 %90 to i8
  %92 = lshr i64 %60, 16
  %93 = trunc i64 %92 to i8
  %94 = lshr i64 %60, 8
  %95 = trunc i64 %94 to i8
  %96 = trunc i64 %60 to i8
  %97 = lshr i64 %60, 8
  %98 = trunc i64 %97 to i8
  %99 = trunc i64 %60 to i8
  %100 = trunc i64 %60 to i8
  br label %101

101:                                              ; preds = %89, %113
  %102 = phi ptr [ %83, %89 ], [ %114, %113 ]
  switch i64 %61, label %113 [
    i64 8, label %103
    i64 16, label %105
    i64 32, label %108
  ]

103:                                              ; preds = %101
  %104 = getelementptr inbounds i8, ptr %102, i64 1
  store i8 %100, ptr %102, align 1, !tbaa !37
  br label %113

105:                                              ; preds = %101
  %106 = getelementptr inbounds i8, ptr %102, i64 1
  store i8 %98, ptr %102, align 1, !tbaa !37
  %107 = getelementptr inbounds i8, ptr %102, i64 2
  store i8 %99, ptr %106, align 1, !tbaa !37
  br label %113

108:                                              ; preds = %101
  %109 = getelementptr inbounds i8, ptr %102, i64 1
  store i8 %91, ptr %102, align 1, !tbaa !37
  %110 = getelementptr inbounds i8, ptr %102, i64 2
  store i8 %93, ptr %109, align 1, !tbaa !37
  %111 = getelementptr inbounds i8, ptr %102, i64 3
  store i8 %95, ptr %110, align 1, !tbaa !37
  %112 = getelementptr inbounds i8, ptr %102, i64 4
  store i8 %96, ptr %111, align 1, !tbaa !37
  br label %113

113:                                              ; preds = %101, %105, %108, %103
  %114 = phi ptr [ %104, %103 ], [ %107, %105 ], [ %112, %108 ], [ %102, %101 ]
  %115 = icmp ult ptr %114, %87
  br i1 %115, label %101, label %116, !llvm.loop !111

116:                                              ; preds = %113, %86
  %117 = phi ptr [ %83, %86 ], [ %114, %113 ]
  store i8 0, ptr %117, align 1, !tbaa !37
  br label %120

118:                                              ; preds = %68
  %119 = add i64 %77, 1
  tail call void @llvm.memset.p0.i64(ptr align 1 %83, i8 0, i64 %119, i1 false)
  br label %120

120:                                              ; preds = %116, %118
  %121 = load ptr, ptr %78, align 8, !tbaa !77
  %122 = getelementptr inbounds %struct.xpv, ptr %121, i64 0, i32 2
  store i64 %77, ptr %122, align 8, !tbaa !78
  %123 = load ptr, ptr %82, align 8, !tbaa !37
  br i1 %15, label %126, label %124

124:                                              ; preds = %120
  %125 = load ptr, ptr %13, align 8, !tbaa !51
  tail call void @Perl__invlist_populate_swatch(ptr noundef %125, i64 noundef %1, i64 noundef %71, ptr noundef %123) #15
  br label %514

126:                                              ; preds = %120
  %127 = load ptr, ptr %65, align 8, !tbaa !51
  %128 = getelementptr inbounds %struct.sv, ptr %127, i64 0, i32 2
  %129 = load i32, ptr %128, align 4, !tbaa !75
  %130 = and i32 %129, 2098176
  %131 = icmp eq i32 %130, 1024
  br i1 %131, label %132, label %138

132:                                              ; preds = %126
  %133 = load ptr, ptr %127, align 8, !tbaa !77
  %134 = getelementptr inbounds %struct.xpv, ptr %133, i64 0, i32 2
  %135 = load i64, ptr %134, align 8, !tbaa !78
  store i64 %135, ptr %4, align 8, !tbaa !49
  %136 = getelementptr inbounds %struct.sv, ptr %127, i64 0, i32 3
  %137 = load ptr, ptr %136, align 8, !tbaa !37
  br label %140

138:                                              ; preds = %126
  %139 = call ptr @Perl_sv_2pv_flags(ptr noundef %127, ptr noundef nonnull %4, i32 noundef 2) #15
  br label %140

140:                                              ; preds = %138, %132
  %141 = phi ptr [ %137, %132 ], [ %139, %138 ]
  %142 = load i64, ptr %4, align 8, !tbaa !49
  %143 = getelementptr inbounds i8, ptr %141, i64 %142
  br label %144

144:                                              ; preds = %229, %140
  %145 = phi ptr [ %141, %140 ], [ %148, %229 ]
  %146 = icmp ult ptr %145, %143
  br i1 %146, label %147, label %231

147:                                              ; preds = %144
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #15
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #15
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %8) #15
  %148 = call fastcc ptr @S_swash_scan_list_line(ptr noundef %145, ptr noundef nonnull %143, ptr noundef nonnull %6, ptr noundef nonnull %7, ptr noundef nonnull %8, i1 noundef zeroext %73, ptr noundef %62)
  %149 = icmp ugt ptr %148, %143
  br i1 %149, label %230, label %150

150:                                              ; preds = %147
  %151 = load i64, ptr %7, align 8, !tbaa !49
  %152 = icmp ult i64 %151, %1
  br i1 %152, label %229, label %153, !llvm.loop !112

153:                                              ; preds = %150
  %154 = icmp ult i64 %151, %71
  %155 = and i64 %151, %71
  %156 = icmp ne i64 %155, -1
  %157 = sext i1 %156 to i64
  %158 = add i64 %71, %157
  %159 = select i1 %154, i64 %151, i64 %158
  %160 = load i64, ptr %6, align 8, !tbaa !49
  br i1 %73, label %161, label %212

161:                                              ; preds = %153
  %162 = icmp ult i64 %160, %1
  br i1 %162, label %163, label %172

163:                                              ; preds = %161
  %164 = add i64 %60, -1
  %165 = load i64, ptr %8, align 8
  %166 = freeze i64 %165
  %167 = icmp ult i64 %164, %166
  br i1 %167, label %171, label %168

168:                                              ; preds = %163
  %169 = sub i64 %1, %160
  %170 = add i64 %169, %166
  store i64 %170, ptr %8, align 8, !tbaa !49
  br label %171

171:                                              ; preds = %163, %168
  store i64 %1, ptr %6, align 8, !tbaa !49
  br label %172

172:                                              ; preds = %171, %161
  %173 = load i64, ptr %6, align 8, !tbaa !49
  %174 = load i64, ptr %8, align 8
  %175 = icmp ugt i64 %173, %159
  br i1 %175, label %227, label %176

176:                                              ; preds = %172
  %177 = add i64 %60, -1
  br label %178

178:                                              ; preds = %176, %206
  %179 = phi i64 [ %210, %206 ], [ %173, %176 ]
  %180 = phi i64 [ %209, %206 ], [ %174, %176 ]
  %181 = freeze i64 %180
  %182 = sub i64 %179, %1
  %183 = mul i64 %182, %66
  switch i64 %61, label %206 [
    i64 8, label %202
    i64 16, label %184
    i64 32, label %189
  ]

184:                                              ; preds = %178
  %185 = lshr i64 %181, 8
  %186 = trunc i64 %185 to i8
  %187 = getelementptr inbounds i8, ptr %123, i64 %183
  store i8 %186, ptr %187, align 1, !tbaa !37
  %188 = or disjoint i64 %183, 1
  br label %202

189:                                              ; preds = %178
  %190 = lshr i64 %181, 24
  %191 = trunc i64 %190 to i8
  %192 = getelementptr inbounds i8, ptr %123, i64 %183
  store i8 %191, ptr %192, align 1, !tbaa !37
  %193 = lshr i64 %181, 16
  %194 = trunc i64 %193 to i8
  %195 = or disjoint i64 %183, 1
  %196 = getelementptr inbounds i8, ptr %123, i64 %195
  store i8 %194, ptr %196, align 1, !tbaa !37
  %197 = lshr i64 %181, 8
  %198 = trunc i64 %197 to i8
  %199 = or disjoint i64 %183, 2
  %200 = getelementptr inbounds i8, ptr %123, i64 %199
  store i8 %198, ptr %200, align 1, !tbaa !37
  %201 = or disjoint i64 %183, 3
  br label %202

202:                                              ; preds = %178, %189, %184
  %203 = phi i64 [ %188, %184 ], [ %201, %189 ], [ %183, %178 ]
  %204 = trunc i64 %181 to i8
  %205 = getelementptr inbounds i8, ptr %123, i64 %203
  store i8 %204, ptr %205, align 1, !tbaa !37
  br label %206

206:                                              ; preds = %202, %178
  %207 = icmp uge i64 %177, %181
  %208 = zext i1 %207 to i64
  %209 = add i64 %181, %208
  %210 = add i64 %179, 1
  %211 = icmp ugt i64 %210, %159
  br i1 %211, label %227, label %178, !llvm.loop !113

212:                                              ; preds = %153
  %213 = call i64 @llvm.umax.i64(i64 %160, i64 %1)
  store i64 %213, ptr %6, align 8
  %214 = icmp ugt i64 %213, %159
  br i1 %214, label %229, label %215

215:                                              ; preds = %212, %215
  %216 = phi i64 [ %225, %215 ], [ %213, %212 ]
  %217 = sub i64 %216, %1
  %218 = trunc i64 %217 to i8
  %219 = and i8 %218, 7
  %220 = shl nuw i8 1, %219
  %221 = lshr i64 %217, 3
  %222 = getelementptr inbounds i8, ptr %123, i64 %221
  %223 = load i8, ptr %222, align 1, !tbaa !37
  %224 = or i8 %223, %220
  store i8 %224, ptr %222, align 1, !tbaa !37
  %225 = add i64 %216, 1
  %226 = icmp ugt i64 %225, %159
  br i1 %226, label %229, label %215, !llvm.loop !114

227:                                              ; preds = %206, %172
  %228 = phi i64 [ %174, %172 ], [ %209, %206 ]
  store i64 %228, ptr %8, align 8
  br label %229

229:                                              ; preds = %215, %212, %227, %150
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %8) #15
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #15
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #15
  br i1 %149, label %231, label %144

230:                                              ; preds = %147
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %8) #15
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #15
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #15
  br label %231

231:                                              ; preds = %229, %144, %230
  %232 = icmp eq ptr %63, null
  br i1 %232, label %260, label %233

233:                                              ; preds = %231
  %234 = load ptr, ptr %63, align 8, !tbaa !51
  %235 = getelementptr inbounds %struct.sv, ptr %234, i64 0, i32 2
  %236 = load i32, ptr %235, align 4, !tbaa !75
  %237 = and i32 %236, -2145386240
  %238 = icmp eq i32 %237, -2147483392
  br i1 %238, label %239, label %246

239:                                              ; preds = %233
  %240 = load ptr, ptr %234, align 8, !tbaa !77
  %241 = getelementptr inbounds %struct.xpvuv, ptr %240, i64 0, i32 4
  %242 = load i64, ptr %241, align 8, !tbaa !37
  %243 = icmp ne i64 %242, 0
  %244 = icmp ult i64 %1, 1114112
  %245 = and i1 %244, %243
  br i1 %245, label %251, label %260

246:                                              ; preds = %233
  %247 = call i64 @Perl_sv_2uv_flags(ptr noundef %234, i32 noundef 2) #15
  %248 = icmp ne i64 %247, 0
  %249 = icmp ult i64 %1, 1114112
  %250 = and i1 %249, %248
  br i1 %250, label %251, label %260

251:                                              ; preds = %239, %246
  %252 = getelementptr inbounds i8, ptr %123, i64 %77
  %253 = icmp sgt i64 %77, 0
  br i1 %253, label %254, label %260

254:                                              ; preds = %251, %254
  %255 = phi ptr [ %258, %254 ], [ %123, %251 ]
  %256 = load i8, ptr %255, align 1, !tbaa !37
  %257 = xor i8 %256, -1
  store i8 %257, ptr %255, align 1, !tbaa !37
  %258 = getelementptr inbounds i8, ptr %255, i64 1
  %259 = icmp ult ptr %258, %252
  br i1 %259, label %254, label %260, !llvm.loop !115

260:                                              ; preds = %254, %251, %246, %239, %231
  %261 = load ptr, ptr %64, align 8, !tbaa !51
  %262 = getelementptr inbounds %struct.sv, ptr %261, i64 0, i32 2
  %263 = load i32, ptr %262, align 4, !tbaa !75
  %264 = and i32 %263, 2098176
  %265 = icmp eq i32 %264, 1024
  br i1 %265, label %266, label %272

266:                                              ; preds = %260
  %267 = load ptr, ptr %261, align 8, !tbaa !77
  %268 = getelementptr inbounds %struct.xpv, ptr %267, i64 0, i32 2
  %269 = load i64, ptr %268, align 8, !tbaa !78
  store i64 %269, ptr %5, align 8, !tbaa !49
  %270 = getelementptr inbounds %struct.sv, ptr %261, i64 0, i32 3
  %271 = load ptr, ptr %270, align 8, !tbaa !37
  br label %274

272:                                              ; preds = %260
  %273 = call ptr @Perl_sv_2pv_flags(ptr noundef %261, ptr noundef nonnull %5, i32 noundef 2) #15
  br label %274

274:                                              ; preds = %272, %266
  %275 = phi ptr [ %271, %266 ], [ %273, %272 ]
  %276 = load i64, ptr %5, align 8, !tbaa !49
  %277 = getelementptr inbounds i8, ptr %275, i64 %276
  %278 = ptrtoint ptr %277 to i64
  %279 = icmp eq i64 %61, 1
  br label %280

280:                                              ; preds = %511, %274
  %281 = phi ptr [ %275, %274 ], [ %513, %511 ]
  %282 = icmp ult ptr %281, %277
  br i1 %282, label %283, label %514

283:                                              ; preds = %280
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %9) #15
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %10) #15
  %284 = getelementptr inbounds i8, ptr %281, i64 1
  %285 = load i8, ptr %281, align 1, !tbaa !37
  %286 = icmp eq i8 %285, 10
  br i1 %286, label %511, label %287, !llvm.loop !116

287:                                              ; preds = %283
  %288 = ptrtoint ptr %284 to i64
  %289 = sub i64 %278, %288
  %290 = call ptr @memchr(ptr noundef nonnull %284, i32 noundef 10, i64 noundef %289) #14
  %291 = icmp ne i8 %285, 33
  %292 = icmp ne i8 %285, 38
  switch i8 %285, label %293 [
    i8 45, label %297
    i8 43, label %297
    i8 38, label %297
    i8 33, label %297
  ]

293:                                              ; preds = %287
  %294 = icmp eq ptr %290, null
  %295 = getelementptr inbounds i8, ptr %290, i64 1
  %296 = select i1 %294, ptr %277, ptr %295
  br label %511

297:                                              ; preds = %287, %287, %287, %287
  %298 = icmp eq ptr %290, null
  %299 = ptrtoint ptr %290 to i64
  %300 = sub i64 %299, %288
  %301 = getelementptr inbounds i8, ptr %290, i64 1
  %302 = select i1 %298, i64 %289, i64 %300
  %303 = select i1 %298, ptr %277, ptr %301
  %304 = trunc i64 %302 to i32
  %305 = call ptr @Perl_hv_common_key_len(ptr noundef %12, ptr noundef nonnull %284, i32 noundef %304, i32 noundef 32, ptr noundef null, i32 noundef 0) #15
  %306 = load ptr, ptr %305, align 8, !tbaa !51
  %307 = getelementptr inbounds %struct.sv, ptr %306, i64 0, i32 3
  %308 = load ptr, ptr %307, align 8, !tbaa !37
  %309 = call ptr @Perl_hv_common(ptr noundef %308, ptr noundef null, ptr noundef nonnull @.str.51, i64 noundef 4, i32 noundef 0, i32 noundef 32, ptr noundef null, i32 noundef 0) #15
  %310 = load ptr, ptr %309, align 8, !tbaa !51
  %311 = getelementptr inbounds %struct.sv, ptr %310, i64 0, i32 2
  %312 = load i32, ptr %311, align 4, !tbaa !75
  %313 = and i32 %312, -2145386240
  %314 = icmp eq i32 %313, -2147483392
  br i1 %314, label %315, label %319

315:                                              ; preds = %297
  %316 = load ptr, ptr %310, align 8, !tbaa !77
  %317 = getelementptr inbounds %struct.xpvuv, ptr %316, i64 0, i32 4
  %318 = load i64, ptr %317, align 8, !tbaa !37
  br label %321

319:                                              ; preds = %297
  %320 = call i64 @Perl_sv_2uv_flags(ptr noundef %310, i32 noundef 2) #15
  br label %321

321:                                              ; preds = %319, %315
  %322 = phi i64 [ %318, %315 ], [ %320, %319 ]
  %323 = icmp ult i64 %61, %322
  br i1 %323, label %324, label %325

324:                                              ; preds = %321
  call void (ptr, ...) @Perl_croak(ptr noundef nonnull @.str.82, i64 noundef %61, i64 noundef %322) #15
  br label %325

325:                                              ; preds = %324, %321
  %326 = load ptr, ptr %305, align 8, !tbaa !51
  %327 = call fastcc ptr @S_swatch_get(ptr noundef %326, i64 noundef %1, i64 noundef %72)
  %328 = getelementptr inbounds %struct.sv, ptr %327, i64 0, i32 2
  %329 = load i32, ptr %328, align 4, !tbaa !75
  %330 = and i32 %329, 2098176
  %331 = icmp eq i32 %330, 1024
  br i1 %331, label %332, label %338

332:                                              ; preds = %325
  %333 = load ptr, ptr %327, align 8, !tbaa !77
  %334 = getelementptr inbounds %struct.xpv, ptr %333, i64 0, i32 2
  %335 = load i64, ptr %334, align 8, !tbaa !78
  store i64 %335, ptr %10, align 8, !tbaa !49
  %336 = getelementptr inbounds %struct.sv, ptr %327, i64 0, i32 3
  %337 = load ptr, ptr %336, align 8, !tbaa !37
  br label %340

338:                                              ; preds = %325
  %339 = call ptr @Perl_sv_2pv_flags(ptr noundef %327, ptr noundef nonnull %10, i32 noundef 2) #15
  br label %340

340:                                              ; preds = %338, %332
  %341 = phi ptr [ %337, %332 ], [ %339, %338 ]
  %342 = load i64, ptr %10, align 8, !tbaa !49
  %343 = icmp eq i64 %342, 0
  br i1 %343, label %344, label %345

344:                                              ; preds = %340
  call void (ptr, ...) @Perl_croak(ptr noundef nonnull @.str.83) #15
  br label %345

345:                                              ; preds = %344, %340
  %346 = load i32, ptr %79, align 4, !tbaa !75
  %347 = and i32 %346, 2098176
  %348 = icmp eq i32 %347, 1024
  br i1 %348, label %349, label %354

349:                                              ; preds = %345
  %350 = load ptr, ptr %78, align 8, !tbaa !77
  %351 = getelementptr inbounds %struct.xpv, ptr %350, i64 0, i32 2
  %352 = load i64, ptr %351, align 8, !tbaa !78
  store i64 %352, ptr %9, align 8, !tbaa !49
  %353 = load ptr, ptr %82, align 8, !tbaa !37
  br label %356

354:                                              ; preds = %345
  %355 = call ptr @Perl_sv_2pv_flags(ptr noundef nonnull %78, ptr noundef nonnull %9, i32 noundef 2) #15
  br label %356

356:                                              ; preds = %354, %349
  %357 = phi ptr [ %353, %349 ], [ %355, %354 ]
  %358 = icmp eq i64 %322, 1
  %359 = and i1 %279, %358
  %360 = load i64, ptr %9, align 8, !tbaa !49
  br i1 %359, label %361, label %428

361:                                              ; preds = %356
  %362 = load i64, ptr %10, align 8, !tbaa !49
  %363 = icmp eq i64 %360, %362
  br i1 %363, label %365, label %364

364:                                              ; preds = %361
  call void (ptr, ...) @Perl_croak(ptr noundef nonnull @.str.84, i64 noundef %360, i64 noundef %362) #15
  br label %365

365:                                              ; preds = %364, %361
  switch i8 %285, label %510 [
    i8 43, label %378
    i8 33, label %374
    i8 45, label %370
    i8 38, label %366
  ]

366:                                              ; preds = %365
  %367 = load i64, ptr %9, align 8, !tbaa !49
  %368 = add i64 %367, -1
  store i64 %368, ptr %9, align 8, !tbaa !49
  %369 = icmp eq i64 %367, 0
  br i1 %369, label %510, label %417

370:                                              ; preds = %365
  %371 = load i64, ptr %9, align 8, !tbaa !49
  %372 = add i64 %371, -1
  store i64 %372, ptr %9, align 8, !tbaa !49
  %373 = icmp eq i64 %371, 0
  br i1 %373, label %510, label %405

374:                                              ; preds = %365
  %375 = load i64, ptr %9, align 8, !tbaa !49
  %376 = add i64 %375, -1
  store i64 %376, ptr %9, align 8, !tbaa !49
  %377 = icmp eq i64 %375, 0
  br i1 %377, label %510, label %393

378:                                              ; preds = %365
  %379 = load i64, ptr %9, align 8, !tbaa !49
  %380 = add i64 %379, -1
  store i64 %380, ptr %9, align 8, !tbaa !49
  %381 = icmp eq i64 %379, 0
  br i1 %381, label %510, label %382

382:                                              ; preds = %378, %382
  %383 = phi ptr [ %385, %382 ], [ %341, %378 ]
  %384 = phi ptr [ %387, %382 ], [ %357, %378 ]
  %385 = getelementptr inbounds i8, ptr %383, i64 1
  %386 = load i8, ptr %383, align 1, !tbaa !37
  %387 = getelementptr inbounds i8, ptr %384, i64 1
  %388 = load i8, ptr %384, align 1, !tbaa !37
  %389 = or i8 %388, %386
  store i8 %389, ptr %384, align 1, !tbaa !37
  %390 = load i64, ptr %9, align 8, !tbaa !49
  %391 = add i64 %390, -1
  store i64 %391, ptr %9, align 8, !tbaa !49
  %392 = icmp eq i64 %390, 0
  br i1 %392, label %510, label %382, !llvm.loop !117

393:                                              ; preds = %374, %393
  %394 = phi ptr [ %396, %393 ], [ %341, %374 ]
  %395 = phi ptr [ %399, %393 ], [ %357, %374 ]
  %396 = getelementptr inbounds i8, ptr %394, i64 1
  %397 = load i8, ptr %394, align 1, !tbaa !37
  %398 = xor i8 %397, -1
  %399 = getelementptr inbounds i8, ptr %395, i64 1
  %400 = load i8, ptr %395, align 1, !tbaa !37
  %401 = or i8 %400, %398
  store i8 %401, ptr %395, align 1, !tbaa !37
  %402 = load i64, ptr %9, align 8, !tbaa !49
  %403 = add i64 %402, -1
  store i64 %403, ptr %9, align 8, !tbaa !49
  %404 = icmp eq i64 %402, 0
  br i1 %404, label %510, label %393, !llvm.loop !118

405:                                              ; preds = %370, %405
  %406 = phi ptr [ %408, %405 ], [ %341, %370 ]
  %407 = phi ptr [ %411, %405 ], [ %357, %370 ]
  %408 = getelementptr inbounds i8, ptr %406, i64 1
  %409 = load i8, ptr %406, align 1, !tbaa !37
  %410 = xor i8 %409, -1
  %411 = getelementptr inbounds i8, ptr %407, i64 1
  %412 = load i8, ptr %407, align 1, !tbaa !37
  %413 = and i8 %412, %410
  store i8 %413, ptr %407, align 1, !tbaa !37
  %414 = load i64, ptr %9, align 8, !tbaa !49
  %415 = add i64 %414, -1
  store i64 %415, ptr %9, align 8, !tbaa !49
  %416 = icmp eq i64 %414, 0
  br i1 %416, label %510, label %405, !llvm.loop !119

417:                                              ; preds = %366, %417
  %418 = phi ptr [ %420, %417 ], [ %341, %366 ]
  %419 = phi ptr [ %422, %417 ], [ %357, %366 ]
  %420 = getelementptr inbounds i8, ptr %418, i64 1
  %421 = load i8, ptr %418, align 1, !tbaa !37
  %422 = getelementptr inbounds i8, ptr %419, i64 1
  %423 = load i8, ptr %419, align 1, !tbaa !37
  %424 = and i8 %423, %421
  store i8 %424, ptr %419, align 1, !tbaa !37
  %425 = load i64, ptr %9, align 8, !tbaa !49
  %426 = add i64 %425, -1
  store i64 %426, ptr %9, align 8, !tbaa !49
  %427 = icmp eq i64 %425, 0
  br i1 %427, label %510, label %417, !llvm.loop !120

428:                                              ; preds = %356
  %429 = getelementptr inbounds i8, ptr %357, i64 %360
  %430 = icmp sgt i64 %360, 0
  br i1 %430, label %431, label %510

431:                                              ; preds = %428
  %432 = lshr i64 %322, 3
  %433 = add nsw i64 %432, -1
  %434 = icmp eq i64 %433, 0
  %435 = icmp eq i8 %285, 43
  %436 = icmp eq i8 %285, 45
  br label %437

437:                                              ; preds = %431, %507
  %438 = phi i64 [ 0, %431 ], [ %471, %507 ]
  %439 = phi ptr [ %341, %431 ], [ %470, %507 ]
  %440 = phi ptr [ %357, %431 ], [ %508, %507 ]
  br i1 %358, label %441, label %452

441:                                              ; preds = %437
  %442 = lshr i64 %438, 3
  %443 = getelementptr inbounds i8, ptr %439, i64 %442
  %444 = load i8, ptr %443, align 1, !tbaa !37
  %445 = zext i8 %444 to i32
  %446 = trunc i64 %438 to i32
  %447 = and i32 %446, 7
  %448 = lshr i32 %445, %447
  %449 = and i32 %448, 1
  %450 = zext nneg i32 %449 to i64
  %451 = add i64 %438, 1
  br label %469

452:                                              ; preds = %437
  %453 = load i8, ptr %439, align 1, !tbaa !37
  %454 = zext i8 %453 to i64
  %455 = getelementptr inbounds i8, ptr %439, i64 1
  br i1 %434, label %469, label %456

456:                                              ; preds = %452, %456
  %457 = phi i64 [ %465, %456 ], [ %433, %452 ]
  %458 = phi ptr [ %464, %456 ], [ %455, %452 ]
  %459 = phi i64 [ %463, %456 ], [ %454, %452 ]
  %460 = shl i64 %459, 8
  %461 = load i8, ptr %458, align 1, !tbaa !37
  %462 = zext i8 %461 to i64
  %463 = or disjoint i64 %460, %462
  %464 = getelementptr inbounds i8, ptr %458, i64 1
  %465 = add i64 %457, -1
  %466 = icmp eq i64 %465, 0
  br i1 %466, label %467, label %456, !llvm.loop !121

467:                                              ; preds = %456
  %468 = getelementptr i8, ptr %439, i64 %432
  br label %469

469:                                              ; preds = %467, %452, %441
  %470 = phi ptr [ %439, %441 ], [ %455, %452 ], [ %468, %467 ]
  %471 = phi i64 [ %451, %441 ], [ %438, %452 ], [ %438, %467 ]
  %472 = phi i64 [ %450, %441 ], [ %454, %452 ], [ %463, %467 ]
  %473 = icmp ne i64 %472, 0
  %474 = select i1 %435, i1 %473, i1 false
  br i1 %474, label %484, label %475

475:                                              ; preds = %469
  %476 = select i1 %291, i1 true, i1 %473
  br i1 %476, label %477, label %484

477:                                              ; preds = %475
  %478 = select i1 %436, i1 %473, i1 false
  %479 = xor i1 %478, true
  %480 = select i1 %292, i1 true, i1 %473
  %481 = select i1 %479, i1 %480, i1 false
  br i1 %481, label %482, label %484

482:                                              ; preds = %477
  %483 = getelementptr inbounds i8, ptr %440, i64 %66
  br label %507, !llvm.loop !122

484:                                              ; preds = %477, %475, %469
  %485 = phi i64 [ %472, %469 ], [ 1, %475 ], [ 0, %477 ]
  switch i64 %61, label %507 [
    i64 8, label %486
    i64 16, label %489
    i64 32, label %495
  ]

486:                                              ; preds = %484
  %487 = trunc i64 %485 to i8
  %488 = getelementptr inbounds i8, ptr %440, i64 1
  store i8 %487, ptr %440, align 1, !tbaa !37
  br label %507

489:                                              ; preds = %484
  %490 = lshr i64 %485, 8
  %491 = trunc i64 %490 to i8
  %492 = getelementptr inbounds i8, ptr %440, i64 1
  store i8 %491, ptr %440, align 1, !tbaa !37
  %493 = trunc i64 %485 to i8
  %494 = getelementptr inbounds i8, ptr %440, i64 2
  store i8 %493, ptr %492, align 1, !tbaa !37
  br label %507

495:                                              ; preds = %484
  %496 = lshr i64 %485, 24
  %497 = trunc i64 %496 to i8
  %498 = getelementptr inbounds i8, ptr %440, i64 1
  store i8 %497, ptr %440, align 1, !tbaa !37
  %499 = lshr i64 %485, 16
  %500 = trunc i64 %499 to i8
  %501 = getelementptr inbounds i8, ptr %440, i64 2
  store i8 %500, ptr %498, align 1, !tbaa !37
  %502 = lshr i64 %485, 8
  %503 = trunc i64 %502 to i8
  %504 = getelementptr inbounds i8, ptr %440, i64 3
  store i8 %503, ptr %501, align 1, !tbaa !37
  %505 = trunc i64 %485 to i8
  %506 = getelementptr inbounds i8, ptr %440, i64 4
  store i8 %505, ptr %504, align 1, !tbaa !37
  br label %507

507:                                              ; preds = %486, %495, %489, %484, %482
  %508 = phi ptr [ %483, %482 ], [ %488, %486 ], [ %494, %489 ], [ %506, %495 ], [ %440, %484 ]
  %509 = icmp ult ptr %508, %429
  br i1 %509, label %437, label %510

510:                                              ; preds = %507, %417, %405, %393, %382, %428, %366, %370, %374, %378, %365
  call void @Perl_sv_free(ptr noundef %327) #15
  br label %511

511:                                              ; preds = %293, %283, %510
  %512 = phi i1 [ false, %510 ], [ false, %283 ], [ %294, %293 ]
  %513 = phi ptr [ %303, %510 ], [ %284, %283 ], [ %296, %293 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %10) #15
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %9) #15
  br i1 %512, label %514, label %280

514:                                              ; preds = %511, %280, %124
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #15
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #15
  ret ptr %78
}

; Function Attrs: cold nounwind uwtable
define dso_local ptr @Perl__swash_inversion_hash(ptr nocapture noundef readonly %0) local_unnamed_addr #3 !prof !47 {
  %2 = alloca i64, align 8
  %3 = alloca ptr, align 8
  %4 = alloca i32, align 4
  %5 = alloca ptr, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca [14 x i8], align 1
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #15
  %11 = getelementptr inbounds %struct.sv, ptr %0, i64 0, i32 3
  %12 = load ptr, ptr %11, align 8, !tbaa !37
  %13 = tail call ptr @Perl_hv_common(ptr noundef %12, ptr noundef null, ptr noundef nonnull @.str.49, i64 noundef 4, i32 noundef 0, i32 noundef 32, ptr noundef null, i32 noundef 0) #15
  %14 = tail call ptr @Perl_hv_common(ptr noundef %12, ptr noundef null, ptr noundef nonnull @.str.50, i64 noundef 4, i32 noundef 0, i32 noundef 32, ptr noundef null, i32 noundef 0) #15
  %15 = tail call ptr @Perl_hv_common(ptr noundef %12, ptr noundef null, ptr noundef nonnull @.str.51, i64 noundef 4, i32 noundef 0, i32 noundef 32, ptr noundef null, i32 noundef 0) #15
  %16 = tail call ptr @Perl_hv_common(ptr noundef %12, ptr noundef null, ptr noundef nonnull @.str.52, i64 noundef 4, i32 noundef 0, i32 noundef 32, ptr noundef null, i32 noundef 0) #15
  %17 = load ptr, ptr %14, align 8, !tbaa !51
  %18 = getelementptr inbounds %struct.sv, ptr %17, i64 0, i32 2
  %19 = load i32, ptr %18, align 4, !tbaa !75
  %20 = and i32 %19, 2098176
  %21 = icmp eq i32 %20, 1024
  br i1 %21, label %22, label %25

22:                                               ; preds = %1
  %23 = getelementptr inbounds %struct.sv, ptr %17, i64 0, i32 3
  %24 = load ptr, ptr %23, align 8, !tbaa !37
  br label %27

25:                                               ; preds = %1
  %26 = tail call ptr @Perl_sv_2pv_flags(ptr noundef %17, ptr noundef null, i32 noundef 2) #15
  br label %27

27:                                               ; preds = %25, %22
  %28 = phi ptr [ %24, %22 ], [ %26, %25 ]
  %29 = load ptr, ptr %15, align 8, !tbaa !51
  %30 = getelementptr inbounds %struct.sv, ptr %29, i64 0, i32 2
  %31 = load i32, ptr %30, align 4, !tbaa !75
  %32 = and i32 %31, -2145386240
  %33 = icmp eq i32 %32, -2147483392
  br i1 %33, label %34, label %38

34:                                               ; preds = %27
  %35 = load ptr, ptr %29, align 8, !tbaa !77
  %36 = getelementptr inbounds %struct.xpvuv, ptr %35, i64 0, i32 4
  %37 = load i64, ptr %36, align 8, !tbaa !37
  br label %40

38:                                               ; preds = %27
  %39 = tail call i64 @Perl_sv_2uv_flags(ptr noundef %29, i32 noundef 2) #15
  br label %40

40:                                               ; preds = %38, %34
  %41 = phi i64 [ %37, %34 ], [ %39, %38 ]
  %42 = load ptr, ptr %16, align 8, !tbaa !51
  %43 = getelementptr inbounds %struct.sv, ptr %42, i64 0, i32 2
  %44 = load i32, ptr %43, align 4, !tbaa !75
  %45 = and i32 %44, -2145386240
  %46 = icmp eq i32 %45, -2147483392
  br i1 %46, label %47, label %51

47:                                               ; preds = %40
  %48 = load ptr, ptr %42, align 8, !tbaa !77
  %49 = getelementptr inbounds %struct.xpvuv, ptr %48, i64 0, i32 4
  %50 = load i64, ptr %49, align 8, !tbaa !37
  br label %53

51:                                               ; preds = %40
  %52 = tail call i64 @Perl_sv_2uv_flags(ptr noundef %42, i32 noundef 2) #15
  br label %53

53:                                               ; preds = %51, %47
  %54 = phi i64 [ %50, %47 ], [ %52, %51 ]
  %55 = tail call ptr @Perl_hv_common(ptr noundef %12, ptr noundef null, ptr noundef nonnull @.str.36, i64 noundef 8, i32 noundef 0, i32 noundef 32, ptr noundef null, i32 noundef 0) #15
  %56 = tail call ptr @Perl_newSV_type(i32 noundef 12) #15
  switch i64 %41, label %57 [
    i64 32, label %58
    i64 16, label %58
    i64 8, label %58
  ]

57:                                               ; preds = %53
  tail call void (ptr, ...) @Perl_croak(ptr noundef nonnull @.str.53, i64 noundef %41) #15
  br label %58

58:                                               ; preds = %53, %53, %53, %57
  %59 = icmp eq ptr %55, null
  br i1 %59, label %216, label %60

60:                                               ; preds = %58
  %61 = load ptr, ptr %55, align 8, !tbaa !51
  %62 = getelementptr inbounds %struct.sv, ptr %61, i64 0, i32 3
  %63 = load ptr, ptr %62, align 8, !tbaa !37
  %64 = tail call ptr @Perl_newSV_type(i32 noundef 12) #15
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #15
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #15
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #15
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #15
  %65 = tail call i32 @Perl_hv_iterinit(ptr noundef %63) #15
  %66 = call ptr @Perl_hv_iternextsv(ptr noundef %63, ptr noundef nonnull %3, ptr noundef nonnull %4) #15
  %67 = icmp eq ptr %66, null
  br i1 %67, label %68, label %71

68:                                               ; preds = %100, %60
  %69 = call ptr @Perl_hv_iternextsv(ptr noundef %64, ptr noundef nonnull %5, ptr noundef nonnull %6) #15
  %70 = icmp eq ptr %69, null
  br i1 %70, label %206, label %108

71:                                               ; preds = %60, %100
  %72 = phi ptr [ %106, %100 ], [ %66, %60 ]
  %73 = getelementptr inbounds %struct.sv, ptr %72, i64 0, i32 2
  %74 = load i32, ptr %73, align 4, !tbaa !75
  %75 = and i32 %74, 1024
  %76 = icmp eq i32 %75, 0
  br i1 %76, label %77, label %79

77:                                               ; preds = %71
  %78 = zext i32 %74 to i64
  call void (ptr, ...) @Perl_croak(ptr noundef nonnull @.str.54, i64 noundef %78) #15
  br label %79

79:                                               ; preds = %77, %71
  %80 = getelementptr inbounds %struct.sv, ptr %72, i64 0, i32 3
  %81 = load ptr, ptr %80, align 8, !tbaa !37
  %82 = load ptr, ptr %72, align 8, !tbaa !77
  %83 = getelementptr inbounds %struct.xpv, ptr %82, i64 0, i32 2
  %84 = load i64, ptr %83, align 8, !tbaa !78
  %85 = trunc i64 %84 to i32
  %86 = call ptr @Perl_hv_common_key_len(ptr noundef %64, ptr noundef %81, i32 noundef %85, i32 noundef 32, ptr noundef null, i32 noundef 0) #15
  %87 = icmp eq ptr %86, null
  br i1 %87, label %90, label %88

88:                                               ; preds = %79
  %89 = load ptr, ptr %86, align 8, !tbaa !51
  br label %100

90:                                               ; preds = %79
  %91 = call ptr @Perl_newSV_type(i32 noundef 11) #15
  %92 = load ptr, ptr %80, align 8, !tbaa !37
  %93 = load ptr, ptr %72, align 8, !tbaa !77
  %94 = getelementptr inbounds %struct.xpv, ptr %93, i64 0, i32 2
  %95 = load i64, ptr %94, align 8, !tbaa !78
  %96 = trunc i64 %95 to i32
  %97 = call ptr @Perl_hv_common_key_len(ptr noundef %64, ptr noundef %92, i32 noundef %96, i32 noundef 36, ptr noundef %91, i32 noundef 0) #15
  %98 = icmp eq ptr %97, null
  br i1 %98, label %99, label %100

99:                                               ; preds = %90
  call void (ptr, ...) @Perl_croak(ptr noundef nonnull @.str.46) #15
  br label %100

100:                                              ; preds = %90, %99, %88
  %101 = phi ptr [ %89, %88 ], [ %91, %90 ], [ %91, %99 ]
  %102 = load ptr, ptr %3, align 8, !tbaa !51
  %103 = load i32, ptr %4, align 4, !tbaa !70
  %104 = sext i32 %103 to i64
  %105 = call ptr @Perl_newSVpvn_flags(ptr noundef %102, i64 noundef %104, i32 noundef 536870912) #15
  call void @Perl_av_push(ptr noundef %101, ptr noundef %105) #15
  %106 = call ptr @Perl_hv_iternextsv(ptr noundef %63, ptr noundef nonnull %3, ptr noundef nonnull %4) #15
  %107 = icmp eq ptr %106, null
  br i1 %107, label %68, label %71, !llvm.loop !123

108:                                              ; preds = %68, %203
  %109 = phi ptr [ %204, %203 ], [ %69, %68 ]
  %110 = getelementptr inbounds %struct.sv, ptr %109, i64 0, i32 2
  %111 = load i32, ptr %110, align 4, !tbaa !75
  %112 = and i32 %111, 8388608
  %113 = icmp eq i32 %112, 0
  br i1 %113, label %117, label %114

114:                                              ; preds = %108
  %115 = call i32 @Perl_mg_size(ptr noundef nonnull %109) #15
  %116 = sext i32 %115 to i64
  br label %121

117:                                              ; preds = %108
  %118 = load ptr, ptr %109, align 8, !tbaa !91
  %119 = getelementptr inbounds %struct.xpvav, ptr %118, i64 0, i32 2
  %120 = load i64, ptr %119, align 8, !tbaa !93
  br label %121

121:                                              ; preds = %114, %117
  %122 = phi i64 [ %116, %114 ], [ %120, %117 ]
  %123 = icmp sgt i64 %122, 0
  br i1 %123, label %124, label %203

124:                                              ; preds = %121, %201
  %125 = phi i64 [ %202, %201 ], [ 0, %121 ]
  %126 = load i32, ptr %110, align 4, !tbaa !75
  %127 = and i32 %126, 8388608
  %128 = icmp eq i32 %127, 0
  br i1 %128, label %132, label %129

129:                                              ; preds = %124
  %130 = call i32 @Perl_mg_size(ptr noundef nonnull %109) #15
  %131 = sext i32 %130 to i64
  br label %136

132:                                              ; preds = %124
  %133 = load ptr, ptr %109, align 8, !tbaa !91
  %134 = getelementptr inbounds %struct.xpvav, ptr %133, i64 0, i32 2
  %135 = load i64, ptr %134, align 8, !tbaa !93
  br label %136

136:                                              ; preds = %129, %132
  %137 = phi i64 [ %131, %129 ], [ %135, %132 ]
  %138 = icmp sgt i64 %125, %137
  br i1 %138, label %203, label %139

139:                                              ; preds = %136
  %140 = call ptr @Perl_newSV_type(i32 noundef 11) #15
  %141 = call ptr @Perl_av_fetch(ptr noundef nonnull %109, i64 noundef %125, i32 noundef 0) #15
  %142 = icmp eq ptr %141, null
  br i1 %142, label %143, label %144

143:                                              ; preds = %139
  call void (ptr, ...) @Perl_croak(ptr noundef nonnull @.str.55) #15
  br label %144

144:                                              ; preds = %143, %139
  %145 = load ptr, ptr %141, align 8, !tbaa !51
  %146 = getelementptr inbounds %struct.sv, ptr %145, i64 0, i32 3
  %147 = load ptr, ptr %146, align 8, !tbaa !37
  %148 = load ptr, ptr %145, align 8, !tbaa !77
  %149 = getelementptr inbounds %struct.xpv, ptr %148, i64 0, i32 2
  %150 = load i64, ptr %149, align 8, !tbaa !78
  %151 = trunc i64 %150 to i32
  %152 = call ptr @Perl_hv_common_key_len(ptr noundef %56, ptr noundef %147, i32 noundef %151, i32 noundef 32, ptr noundef null, i32 noundef 0) #15
  %153 = icmp eq ptr %152, null
  br i1 %153, label %158, label %154

154:                                              ; preds = %144
  %155 = load ptr, ptr %141, align 8, !tbaa !51
  %156 = getelementptr inbounds %struct.sv, ptr %155, i64 0, i32 3
  %157 = load ptr, ptr %156, align 8, !tbaa !37
  call void (ptr, ...) @Perl_croak(ptr noundef nonnull @.str.56, ptr noundef %157) #15
  br label %158

158:                                              ; preds = %154, %144
  %159 = load ptr, ptr %141, align 8, !tbaa !51
  %160 = getelementptr inbounds %struct.sv, ptr %159, i64 0, i32 3
  %161 = load ptr, ptr %160, align 8, !tbaa !37
  %162 = load ptr, ptr %159, align 8, !tbaa !77
  %163 = getelementptr inbounds %struct.xpv, ptr %162, i64 0, i32 2
  %164 = load i64, ptr %163, align 8, !tbaa !78
  %165 = trunc i64 %164 to i32
  %166 = call ptr @Perl_hv_common_key_len(ptr noundef %56, ptr noundef %161, i32 noundef %165, i32 noundef 36, ptr noundef %140, i32 noundef 0) #15
  %167 = icmp eq ptr %166, null
  br i1 %167, label %168, label %169

168:                                              ; preds = %158
  call void (ptr, ...) @Perl_croak(ptr noundef nonnull @.str.46) #15
  br label %169

169:                                              ; preds = %168, %158
  br label %170

170:                                              ; preds = %169, %189
  %171 = phi i64 [ %200, %189 ], [ 0, %169 ]
  %172 = load i32, ptr %110, align 4, !tbaa !75
  %173 = and i32 %172, 8388608
  %174 = icmp eq i32 %173, 0
  br i1 %174, label %178, label %175

175:                                              ; preds = %170
  %176 = call i32 @Perl_mg_size(ptr noundef nonnull %109) #15
  %177 = sext i32 %176 to i64
  br label %182

178:                                              ; preds = %170
  %179 = load ptr, ptr %109, align 8, !tbaa !91
  %180 = getelementptr inbounds %struct.xpvav, ptr %179, i64 0, i32 2
  %181 = load i64, ptr %180, align 8, !tbaa !93
  br label %182

182:                                              ; preds = %175, %178
  %183 = phi i64 [ %177, %175 ], [ %181, %178 ]
  %184 = icmp sgt i64 %171, %183
  br i1 %184, label %201, label %185

185:                                              ; preds = %182
  %186 = call ptr @Perl_av_fetch(ptr noundef nonnull %109, i64 noundef %171, i32 noundef 0) #15
  %187 = icmp eq ptr %186, null
  br i1 %187, label %188, label %189

188:                                              ; preds = %185
  call void (ptr, ...) @Perl_croak(ptr noundef nonnull @.str.55) #15
  br label %189

189:                                              ; preds = %188, %185
  %190 = load ptr, ptr %186, align 8, !tbaa !51
  %191 = getelementptr inbounds %struct.sv, ptr %190, i64 0, i32 3
  %192 = load ptr, ptr %191, align 8, !tbaa !37
  %193 = load ptr, ptr %190, align 8, !tbaa !77
  %194 = getelementptr inbounds %struct.xpv, ptr %193, i64 0, i32 2
  %195 = load i64, ptr %194, align 8, !tbaa !78
  %196 = call zeroext i1 @Perl_ckwarn_d(i32 noundef 44) #15
  %197 = select i1 %196, i32 0, i32 -8161
  %198 = call i64 @Perl_utf8n_to_uvchr(ptr noundef %192, i64 noundef %195, ptr noundef null, i32 noundef %197)
  %199 = call ptr @Perl_newSVuv(i64 noundef %198) #15
  call void @Perl_av_push(ptr noundef %140, ptr noundef %199) #15
  %200 = add nuw nsw i64 %171, 1
  br label %170, !llvm.loop !124

201:                                              ; preds = %182
  %202 = add nuw nsw i64 %125, 1
  br label %124, !llvm.loop !125

203:                                              ; preds = %136, %121
  %204 = call ptr @Perl_hv_iternextsv(ptr noundef %64, ptr noundef nonnull %5, ptr noundef nonnull %6) #15
  %205 = icmp eq ptr %204, null
  br i1 %205, label %206, label %108, !llvm.loop !126

206:                                              ; preds = %203, %68
  %207 = icmp eq ptr %64, null
  br i1 %207, label %215, label %208

208:                                              ; preds = %206
  %209 = getelementptr inbounds %struct.sv, ptr %64, i64 0, i32 1
  %210 = load i32, ptr %209, align 8, !tbaa !102
  %211 = icmp ugt i32 %210, 1
  br i1 %211, label %212, label %214

212:                                              ; preds = %208
  %213 = add i32 %210, -1
  store i32 %213, ptr %209, align 8, !tbaa !102
  br label %215

214:                                              ; preds = %208
  call void @Perl_sv_free2(ptr noundef nonnull %64, i32 noundef %210) #15
  br label %215

215:                                              ; preds = %206, %212, %214
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #15
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #15
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #15
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #15
  br label %216

216:                                              ; preds = %215, %58
  %217 = load ptr, ptr %13, align 8, !tbaa !51
  %218 = getelementptr inbounds %struct.sv, ptr %217, i64 0, i32 2
  %219 = load i32, ptr %218, align 4, !tbaa !75
  %220 = and i32 %219, 2098176
  %221 = icmp eq i32 %220, 1024
  br i1 %221, label %222, label %228

222:                                              ; preds = %216
  %223 = load ptr, ptr %217, align 8, !tbaa !77
  %224 = getelementptr inbounds %struct.xpv, ptr %223, i64 0, i32 2
  %225 = load i64, ptr %224, align 8, !tbaa !78
  store i64 %225, ptr %2, align 8, !tbaa !49
  %226 = getelementptr inbounds %struct.sv, ptr %217, i64 0, i32 3
  %227 = load ptr, ptr %226, align 8, !tbaa !37
  br label %230

228:                                              ; preds = %216
  %229 = call ptr @Perl_sv_2pv_flags(ptr noundef %217, ptr noundef nonnull %2, i32 noundef 2) #15
  br label %230

230:                                              ; preds = %228, %222
  %231 = phi ptr [ %227, %222 ], [ %229, %228 ]
  %232 = load i64, ptr %2, align 8, !tbaa !49
  %233 = getelementptr inbounds i8, ptr %231, i64 %232
  %234 = icmp ugt i64 %41, 7
  br label %235

235:                                              ; preds = %331, %230
  %236 = phi ptr [ %231, %230 ], [ %239, %331 ]
  %237 = icmp ult ptr %236, %233
  br i1 %237, label %238, label %334

238:                                              ; preds = %235
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #15
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %8) #15
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %9) #15
  %239 = call fastcc ptr @S_swash_scan_list_line(ptr noundef %236, ptr noundef nonnull %233, ptr noundef nonnull %7, ptr noundef nonnull %8, ptr noundef nonnull %9, i1 noundef zeroext %234, ptr noundef %28)
  %240 = icmp ugt ptr %239, %233
  br i1 %240, label %333, label %241

241:                                              ; preds = %238
  %242 = load i64, ptr %7, align 8, !tbaa !49
  %243 = load i64, ptr %8, align 8, !tbaa !49
  %244 = load i64, ptr %9, align 8
  %245 = icmp ugt i64 %242, %243
  br i1 %245, label %331, label %246

246:                                              ; preds = %241
  %247 = ptrtoint ptr %10 to i64
  %248 = add i64 %54, -1
  br label %249

249:                                              ; preds = %246, %325
  %250 = phi i64 [ %329, %325 ], [ %242, %246 ]
  %251 = phi i64 [ %328, %325 ], [ %244, %246 ]
  call void @llvm.lifetime.start.p0(i64 14, ptr nonnull %10) #15
  %252 = call ptr @Perl_uvoffuni_to_utf8_flags(ptr noundef nonnull %10, i64 noundef %251, i64 noundef 0)
  %253 = ptrtoint ptr %252 to i64
  %254 = sub i64 %253, %247
  %255 = trunc i64 %254 to i32
  %256 = call ptr @Perl_hv_common_key_len(ptr noundef %56, ptr noundef nonnull %10, i32 noundef %255, i32 noundef 32, ptr noundef null, i32 noundef 0) #15
  %257 = icmp eq ptr %256, null
  br i1 %257, label %260, label %258

258:                                              ; preds = %249
  %259 = load ptr, ptr %256, align 8, !tbaa !51
  br label %265

260:                                              ; preds = %249
  %261 = call ptr @Perl_newSV_type(i32 noundef 11) #15
  %262 = call ptr @Perl_hv_common_key_len(ptr noundef %56, ptr noundef nonnull %10, i32 noundef %255, i32 noundef 36, ptr noundef %261, i32 noundef 0) #15
  %263 = icmp eq ptr %262, null
  br i1 %263, label %264, label %265

264:                                              ; preds = %260
  call void (ptr, ...) @Perl_croak(ptr noundef nonnull @.str.46) #15
  br label %265

265:                                              ; preds = %260, %264, %258
  %266 = phi ptr [ %259, %258 ], [ %261, %260 ], [ %261, %264 ]
  %267 = getelementptr inbounds %struct.sv, ptr %266, i64 0, i32 2
  br label %268

268:                                              ; preds = %301, %265
  %269 = phi i64 [ 0, %265 ], [ %312, %301 ]
  %270 = phi i8 [ 0, %265 ], [ %304, %301 ]
  %271 = phi i8 [ 0, %265 ], [ %306, %301 ]
  %272 = load i32, ptr %267, align 4, !tbaa !75
  %273 = and i32 %272, 8388608
  %274 = icmp eq i32 %273, 0
  br i1 %274, label %278, label %275

275:                                              ; preds = %268
  %276 = call i32 @Perl_mg_size(ptr noundef %266) #15
  %277 = sext i32 %276 to i64
  br label %282

278:                                              ; preds = %268
  %279 = load ptr, ptr %266, align 8, !tbaa !91
  %280 = getelementptr inbounds %struct.xpvav, ptr %279, i64 0, i32 2
  %281 = load i64, ptr %280, align 8, !tbaa !93
  br label %282

282:                                              ; preds = %275, %278
  %283 = phi i64 [ %277, %275 ], [ %281, %278 ]
  %284 = icmp sgt i64 %269, %283
  br i1 %284, label %313, label %285

285:                                              ; preds = %282
  %286 = call ptr @Perl_av_fetch(ptr noundef %266, i64 noundef %269, i32 noundef 0) #15
  %287 = icmp eq ptr %286, null
  br i1 %287, label %288, label %289

288:                                              ; preds = %285
  call void (ptr, ...) @Perl_croak(ptr noundef nonnull @.str.55) #15
  br label %289

289:                                              ; preds = %288, %285
  %290 = load ptr, ptr %286, align 8, !tbaa !51
  %291 = getelementptr inbounds %struct.sv, ptr %290, i64 0, i32 2
  %292 = load i32, ptr %291, align 4, !tbaa !75
  %293 = and i32 %292, -2145386240
  %294 = icmp eq i32 %293, -2147483392
  br i1 %294, label %295, label %299

295:                                              ; preds = %289
  %296 = load ptr, ptr %290, align 8, !tbaa !77
  %297 = getelementptr inbounds %struct.xpvuv, ptr %296, i64 0, i32 4
  %298 = load i64, ptr %297, align 8, !tbaa !37
  br label %301

299:                                              ; preds = %289
  %300 = call i64 @Perl_sv_2uv_flags(ptr noundef %290, i32 noundef 2) #15
  br label %301

301:                                              ; preds = %299, %295
  %302 = phi i64 [ %298, %295 ], [ %300, %299 ]
  %303 = icmp eq i64 %302, %251
  %304 = select i1 %303, i8 1, i8 %270
  %305 = icmp eq i64 %302, %250
  %306 = select i1 %305, i8 1, i8 %271
  %307 = and i8 %304, 1
  %308 = icmp eq i8 %307, 0
  %309 = and i8 %306, 1
  %310 = icmp eq i8 %309, 0
  %311 = select i1 %308, i1 true, i1 %310
  %312 = add nuw nsw i64 %269, 1
  br i1 %311, label %268, label %313, !llvm.loop !127

313:                                              ; preds = %301, %282
  %314 = phi i8 [ %304, %301 ], [ %270, %282 ]
  %315 = phi i8 [ %306, %301 ], [ %271, %282 ]
  %316 = and i8 %314, 1
  %317 = icmp eq i8 %316, 0
  br i1 %317, label %318, label %320

318:                                              ; preds = %313
  %319 = call ptr @Perl_newSVuv(i64 noundef %251) #15
  call void @Perl_av_push(ptr noundef %266, ptr noundef %319) #15
  br label %320

320:                                              ; preds = %318, %313
  %321 = and i8 %315, 1
  %322 = icmp eq i8 %321, 0
  br i1 %322, label %323, label %325

323:                                              ; preds = %320
  %324 = call ptr @Perl_newSVuv(i64 noundef %250) #15
  call void @Perl_av_push(ptr noundef %266, ptr noundef %324) #15
  br label %325

325:                                              ; preds = %323, %320
  %326 = icmp uge i64 %248, %251
  %327 = zext i1 %326 to i64
  %328 = add i64 %251, %327
  call void @llvm.lifetime.end.p0(i64 14, ptr nonnull %10) #15
  %329 = add i64 %250, 1
  %330 = icmp ugt i64 %329, %243
  br i1 %330, label %331, label %249, !llvm.loop !128

331:                                              ; preds = %325, %241
  %332 = phi i64 [ %244, %241 ], [ %328, %325 ]
  store i64 %332, ptr %9, align 8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %9) #15
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %8) #15
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #15
  br i1 %240, label %334, label %235

333:                                              ; preds = %238
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %9) #15
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %8) #15
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #15
  br label %334

334:                                              ; preds = %331, %235, %333
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #15
  ret ptr %56
}

declare i32 @Perl_hv_iterinit(ptr noundef) local_unnamed_addr #4

declare ptr @Perl_hv_iternextsv(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

declare void @Perl_av_push(ptr noundef, ptr noundef) local_unnamed_addr #4

declare ptr @Perl_av_fetch(ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #4

declare ptr @Perl_newSVuv(i64 noundef) local_unnamed_addr #4

; Function Attrs: cold nounwind uwtable
define internal fastcc ptr @S_swash_scan_list_line(ptr noundef %0, ptr noundef %1, ptr nocapture noundef %2, ptr nocapture noundef writeonly %3, ptr nocapture noundef writeonly %4, i1 noundef zeroext %5, ptr noundef %6) unnamed_addr #3 !prof !47 {
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = load i8, ptr %6, align 1, !tbaa !37
  %11 = icmp eq i8 %10, 84
  br i1 %11, label %12, label %16

12:                                               ; preds = %7
  %13 = getelementptr inbounds i8, ptr %6, i64 1
  %14 = load i8, ptr %13, align 1, !tbaa !37
  %15 = icmp eq i8 %14, 111
  br label %16

16:                                               ; preds = %12, %7
  %17 = phi i1 [ false, %7 ], [ %15, %12 ]
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %8) #15
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %9) #15
  store i32 14, ptr %9, align 4, !tbaa !70
  %18 = ptrtoint ptr %1 to i64
  %19 = ptrtoint ptr %0 to i64
  %20 = sub i64 %18, %19
  %21 = tail call ptr @memchr(ptr noundef %0, i32 noundef 10, i64 noundef %20) #14
  store i64 %20, ptr %8, align 8, !tbaa !49
  %22 = call i64 @Perl_grok_hex(ptr noundef %0, ptr noundef nonnull %8, ptr noundef nonnull %9, ptr noundef null) #15
  store i64 %22, ptr %2, align 8, !tbaa !49
  store i64 %22, ptr %3, align 8, !tbaa !49
  %23 = load i64, ptr %8, align 8, !tbaa !49
  %24 = icmp eq i64 %23, 0
  br i1 %24, label %33, label %25

25:                                               ; preds = %16
  %26 = getelementptr inbounds i8, ptr %0, i64 %23
  %27 = load i8, ptr %26, align 1, !tbaa !37
  %28 = zext i8 %27 to i64
  %29 = getelementptr inbounds [0 x i32], ptr @PL_charclass, i64 0, i64 %28
  %30 = load i32, ptr %29, align 4, !tbaa !70
  %31 = and i32 %30, 18432
  %32 = icmp eq i32 %31, 18432
  br i1 %32, label %39, label %70

33:                                               ; preds = %16
  %34 = icmp eq ptr %21, null
  br i1 %34, label %37, label %35

35:                                               ; preds = %33
  %36 = getelementptr inbounds i8, ptr %21, i64 1
  br label %77

37:                                               ; preds = %33
  %38 = getelementptr inbounds i8, ptr %1, i64 1
  br label %77

39:                                               ; preds = %25
  %40 = getelementptr inbounds i8, ptr %26, i64 1
  store i32 14, ptr %9, align 4, !tbaa !70
  %41 = ptrtoint ptr %40 to i64
  %42 = sub i64 %18, %41
  store i64 %42, ptr %8, align 8, !tbaa !49
  %43 = call i64 @Perl_grok_hex(ptr noundef nonnull %40, ptr noundef nonnull %8, ptr noundef nonnull %9, ptr noundef null) #15
  store i64 %43, ptr %3, align 8, !tbaa !49
  %44 = load i64, ptr %8, align 8, !tbaa !49
  %45 = icmp eq i64 %44, 0
  br i1 %45, label %48, label %46

46:                                               ; preds = %39
  %47 = getelementptr inbounds i8, ptr %40, i64 %44
  br label %50

48:                                               ; preds = %39
  %49 = load i64, ptr %2, align 8, !tbaa !49
  store i64 %49, ptr %3, align 8, !tbaa !49
  br label %50

50:                                               ; preds = %48, %46
  %51 = phi ptr [ %47, %46 ], [ %40, %48 ]
  br i1 %5, label %52, label %69

52:                                               ; preds = %50
  %53 = load i8, ptr %51, align 1, !tbaa !37
  %54 = zext i8 %53 to i64
  %55 = getelementptr inbounds [0 x i32], ptr @PL_charclass, i64 0, i64 %54
  %56 = load i32, ptr %55, align 4, !tbaa !70
  %57 = and i32 %56, 18432
  %58 = icmp eq i32 %57, 18432
  br i1 %58, label %59, label %67

59:                                               ; preds = %52
  %60 = getelementptr inbounds i8, ptr %51, i64 1
  store i32 14, ptr %9, align 4, !tbaa !70
  %61 = ptrtoint ptr %60 to i64
  %62 = sub i64 %18, %61
  store i64 %62, ptr %8, align 8, !tbaa !49
  %63 = call i64 @Perl_grok_hex(ptr noundef nonnull %60, ptr noundef nonnull %8, ptr noundef nonnull %9, ptr noundef null) #15
  store i64 %63, ptr %4, align 8, !tbaa !49
  %64 = load i64, ptr %8, align 8, !tbaa !49
  %65 = icmp eq i64 %64, 0
  %66 = select i1 %65, i64 0, i64 %63
  store i64 %66, ptr %4, align 8
  br label %73

67:                                               ; preds = %52
  store i64 0, ptr %4, align 8, !tbaa !49
  br i1 %17, label %68, label %73

68:                                               ; preds = %67
  call void (ptr, ...) @Perl_croak(ptr noundef nonnull @.str.85, ptr noundef nonnull %6, ptr noundef nonnull %51) #15
  br label %73

69:                                               ; preds = %50
  store i64 0, ptr %4, align 8, !tbaa !49
  br label %73

70:                                               ; preds = %25
  store i64 0, ptr %4, align 8, !tbaa !49
  %71 = select i1 %5, i1 %17, i1 false
  br i1 %71, label %72, label %73

72:                                               ; preds = %70
  call void (ptr, ...) @Perl_croak(ptr noundef nonnull @.str.85, ptr noundef nonnull %6, ptr noundef nonnull %26) #15
  br label %73

73:                                               ; preds = %70, %59, %72, %69, %67, %68
  %74 = icmp eq ptr %21, null
  %75 = getelementptr inbounds i8, ptr %21, i64 1
  %76 = select i1 %74, ptr %1, ptr %75
  br label %77

77:                                               ; preds = %73, %37, %35
  %78 = phi ptr [ %76, %73 ], [ %36, %35 ], [ %38, %37 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %9) #15
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %8) #15
  ret ptr %78
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #11

declare zeroext i1 @Perl_grok_atoUV(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

declare ptr @Perl__new_invlist(i64 noundef) local_unnamed_addr #4

declare ptr @Perl__setup_canned_invlist(i64 noundef, i64 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare ptr @strchr(ptr noundef, i32 noundef) local_unnamed_addr #2

declare ptr @Perl__add_range_to_invlist(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #4

declare void @Perl__invlist_invert(ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare ptr @memchr(ptr noundef, i32 noundef, i64 noundef) local_unnamed_addr #2

declare void @Perl__invlist_intersection_maybe_complement_2nd(ptr noundef, ptr noundef, i1 noundef zeroext, ptr noundef) local_unnamed_addr #4

declare void @Perl_sv_free(ptr noundef) local_unnamed_addr #4

; Function Attrs: cold nounwind uwtable
define dso_local ptr @Perl__get_swash_invlist(ptr nocapture noundef readonly %0) local_unnamed_addr #3 !prof !47 {
  %2 = getelementptr inbounds %struct.sv, ptr %0, i64 0, i32 2
  %3 = load i32, ptr %2, align 4, !tbaa !75
  %4 = and i32 %3, 2048
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %18, label %6

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.sv, ptr %0, i64 0, i32 3
  %8 = load ptr, ptr %7, align 8, !tbaa !37
  %9 = getelementptr inbounds %struct.sv, ptr %8, i64 0, i32 2
  %10 = load i32, ptr %9, align 4, !tbaa !75
  %11 = and i32 %10, 255
  %12 = icmp eq i32 %11, 12
  br i1 %12, label %13, label %18

13:                                               ; preds = %6
  %14 = tail call ptr @Perl_hv_common(ptr noundef %8, ptr noundef null, ptr noundef nonnull @.str.45, i64 noundef 1, i32 noundef 0, i32 noundef 32, ptr noundef null, i32 noundef 0) #15
  %15 = icmp eq ptr %14, null
  br i1 %15, label %18, label %16

16:                                               ; preds = %13
  %17 = load ptr, ptr %14, align 8, !tbaa !51
  br label %18

18:                                               ; preds = %13, %6, %1, %16
  %19 = phi ptr [ %17, %16 ], [ null, %1 ], [ %8, %6 ], [ null, %13 ]
  ret ptr %19
}

; Function Attrs: cold nounwind uwtable
define dso_local zeroext i1 @Perl_check_utf8_print(ptr noundef %0, i64 noundef %1) local_unnamed_addr #3 !prof !47 {
  %3 = alloca i64, align 8
  %4 = getelementptr inbounds i8, ptr %0, i64 %1
  %5 = icmp sgt i64 %1, 0
  br i1 %5, label %6, label %141

6:                                                ; preds = %2, %129
  %7 = phi ptr [ %136, %129 ], [ %0, %2 ]
  %8 = phi i8 [ %130, %129 ], [ 1, %2 ]
  %9 = load i8, ptr %7, align 1, !tbaa !37
  %10 = zext i8 %9 to i64
  %11 = getelementptr inbounds [0 x i8], ptr @PL_utf8skip, i64 0, i64 %10
  %12 = load i8, ptr %11, align 1, !tbaa !37
  %13 = zext i8 %12 to i64
  %14 = icmp ugt i64 %13, %1
  br i1 %14, label %15, label %31

15:                                               ; preds = %6
  %16 = load ptr, ptr @PL_op, align 8, !tbaa !51
  %17 = icmp eq ptr %16, null
  br i1 %17, label %29, label %18

18:                                               ; preds = %15
  %19 = getelementptr inbounds %struct.op, ptr %16, i64 0, i32 4
  %20 = load i16, ptr %19, align 8
  %21 = and i16 %20, 511
  %22 = icmp eq i16 %21, 380
  br i1 %22, label %23, label %25

23:                                               ; preds = %18
  %24 = call ptr @Perl_custom_op_get_field(ptr noundef nonnull %16, i32 noundef 2) #15
  br label %29

25:                                               ; preds = %18
  %26 = zext nneg i16 %21 to i64
  %27 = getelementptr inbounds [0 x ptr], ptr @PL_op_desc, i64 0, i64 %26
  %28 = load ptr, ptr %27, align 8, !tbaa !51
  br label %29

29:                                               ; preds = %15, %23, %25
  %30 = phi ptr [ %24, %23 ], [ %28, %25 ], [ @.str.64, %15 ]
  call void (i32, ptr, ...) @Perl_ck_warner_d(i32 noundef 44, ptr noundef nonnull @.str.13, ptr noundef nonnull @unees, ptr noundef %30) #15
  br label %141

31:                                               ; preds = %6
  %32 = icmp ugt i8 %9, -20
  br i1 %32, label %33, label %129

33:                                               ; preds = %31
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #15
  %34 = icmp ugt i8 %9, -13
  br i1 %34, label %35, label %50

35:                                               ; preds = %33
  %36 = icmp eq i8 %9, -12
  br i1 %36, label %37, label %41

37:                                               ; preds = %35
  %38 = getelementptr inbounds i8, ptr %7, i64 1
  %39 = load i8, ptr %38, align 1, !tbaa !37
  %40 = icmp ugt i8 %39, -113
  br i1 %40, label %41, label %50

41:                                               ; preds = %37, %35
  %42 = call zeroext i1 @Perl_ckwarn_d(i32 noundef 48) #15
  br i1 %42, label %43, label %127

43:                                               ; preds = %41
  %44 = ptrtoint ptr %4 to i64
  %45 = ptrtoint ptr %7 to i64
  %46 = sub i64 %44, %45
  %47 = call zeroext i1 @Perl_ckwarn_d(i32 noundef 44) #15
  %48 = select i1 %47, i32 0, i32 -8161
  %49 = call i64 @Perl_utf8n_to_uvchr(ptr noundef nonnull %7, i64 noundef %46, ptr noundef nonnull %3, i32 noundef %48)
  call void (i32, ptr, ...) @Perl_warner(i32 noundef 48, ptr noundef nonnull @.str.1, i64 noundef %49) #15
  br label %127

50:                                               ; preds = %37, %33
  switch i8 %9, label %88 [
    i8 -19, label %51
    i8 -17, label %65
    i8 -16, label %77
  ]

51:                                               ; preds = %50
  %52 = getelementptr inbounds i8, ptr %7, i64 1
  %53 = load i8, ptr %52, align 1, !tbaa !37
  %54 = icmp ugt i8 %53, -97
  br i1 %54, label %55, label %64

55:                                               ; preds = %51
  %56 = call zeroext i1 @Perl_ckwarn_d(i32 noundef 50) #15
  br i1 %56, label %57, label %127

57:                                               ; preds = %55
  %58 = ptrtoint ptr %4 to i64
  %59 = ptrtoint ptr %7 to i64
  %60 = sub i64 %58, %59
  %61 = call zeroext i1 @Perl_ckwarn_d(i32 noundef 44) #15
  %62 = select i1 %61, i32 0, i32 -8161
  %63 = call i64 @Perl_utf8n_to_uvchr(ptr noundef nonnull %7, i64 noundef %60, ptr noundef nonnull %3, i32 noundef %62)
  call void (i32, ptr, ...) @Perl_warner(i32 noundef 50, ptr noundef nonnull @.str.65, i64 noundef %63) #15
  br label %127

64:                                               ; preds = %51
  switch i8 %9, label %88 [
    i8 -17, label %65
    i8 -16, label %77
  ]

65:                                               ; preds = %50, %64
  %66 = getelementptr inbounds i8, ptr %7, i64 1
  %67 = load i8, ptr %66, align 1, !tbaa !37
  switch i8 %67, label %127 [
    i8 -73, label %68
    i8 -65, label %73
  ]

68:                                               ; preds = %65
  %69 = getelementptr inbounds i8, ptr %7, i64 2
  %70 = load i8, ptr %69, align 1, !tbaa !37
  %71 = add i8 %70, 112
  %72 = icmp ult i8 %71, 32
  br i1 %72, label %118, label %127

73:                                               ; preds = %65
  %74 = getelementptr inbounds i8, ptr %7, i64 2
  %75 = load i8, ptr %74, align 1, !tbaa !37
  %76 = icmp ugt i8 %75, -67
  br i1 %76, label %118, label %127

77:                                               ; preds = %50, %64
  %78 = getelementptr inbounds i8, ptr %7, i64 1
  %79 = load i8, ptr %78, align 1, !tbaa !37
  switch i8 %79, label %127 [
    i8 -65, label %80
    i8 -81, label %80
    i8 -97, label %80
  ]

80:                                               ; preds = %77, %77, %77
  %81 = getelementptr inbounds i8, ptr %7, i64 2
  %82 = load i8, ptr %81, align 1, !tbaa !37
  %83 = icmp eq i8 %82, -65
  br i1 %83, label %84, label %127

84:                                               ; preds = %80
  %85 = getelementptr inbounds i8, ptr %7, i64 3
  %86 = load i8, ptr %85, align 1, !tbaa !37
  %87 = icmp ugt i8 %86, -67
  br i1 %87, label %118, label %127

88:                                               ; preds = %50, %64
  %89 = add nsw i8 %9, 15
  %90 = icmp ult i8 %89, 3
  br i1 %90, label %91, label %104

91:                                               ; preds = %88
  %92 = getelementptr inbounds i8, ptr %7, i64 1
  %93 = load i8, ptr %92, align 1, !tbaa !37
  %94 = and i8 %93, -49
  %95 = icmp eq i8 %94, -113
  br i1 %95, label %96, label %127

96:                                               ; preds = %91
  %97 = getelementptr inbounds i8, ptr %7, i64 2
  %98 = load i8, ptr %97, align 1, !tbaa !37
  %99 = icmp eq i8 %98, -65
  br i1 %99, label %100, label %127

100:                                              ; preds = %96
  %101 = getelementptr inbounds i8, ptr %7, i64 3
  %102 = load i8, ptr %101, align 1, !tbaa !37
  %103 = icmp ugt i8 %102, -67
  br i1 %103, label %118, label %127

104:                                              ; preds = %88
  %105 = icmp eq i8 %9, -12
  br i1 %105, label %106, label %127

106:                                              ; preds = %104
  %107 = getelementptr inbounds i8, ptr %7, i64 1
  %108 = load i8, ptr %107, align 1, !tbaa !37
  %109 = icmp eq i8 %108, -113
  br i1 %109, label %110, label %127

110:                                              ; preds = %106
  %111 = getelementptr inbounds i8, ptr %7, i64 2
  %112 = load i8, ptr %111, align 1, !tbaa !37
  %113 = icmp eq i8 %112, -65
  br i1 %113, label %114, label %127

114:                                              ; preds = %110
  %115 = getelementptr inbounds i8, ptr %7, i64 3
  %116 = load i8, ptr %115, align 1, !tbaa !37
  %117 = icmp ugt i8 %116, -67
  br i1 %117, label %118, label %127

118:                                              ; preds = %68, %73, %84, %100, %114
  %119 = call zeroext i1 @Perl_ckwarn_d(i32 noundef 49) #15
  br i1 %119, label %120, label %127

120:                                              ; preds = %118
  %121 = ptrtoint ptr %4 to i64
  %122 = ptrtoint ptr %7 to i64
  %123 = sub i64 %121, %122
  %124 = call zeroext i1 @Perl_ckwarn_d(i32 noundef 44) #15
  %125 = select i1 %124, i32 0, i32 -8161
  %126 = call i64 @Perl_utf8n_to_uvchr(ptr noundef nonnull %7, i64 noundef %123, ptr noundef nonnull %3, i32 noundef %125)
  call void (i32, ptr, ...) @Perl_warner(i32 noundef 49, ptr noundef nonnull @.str.2, i64 noundef %126) #15
  br label %127

127:                                              ; preds = %114, %100, %84, %77, %73, %68, %65, %57, %55, %80, %96, %91, %110, %106, %104, %120, %118, %41, %43
  %128 = phi i8 [ 0, %43 ], [ %8, %41 ], [ 0, %57 ], [ %8, %55 ], [ 0, %120 ], [ %8, %118 ], [ %8, %80 ], [ %8, %96 ], [ %8, %91 ], [ %8, %110 ], [ %8, %106 ], [ %8, %104 ], [ %8, %65 ], [ %8, %68 ], [ %8, %73 ], [ %8, %77 ], [ %8, %84 ], [ %8, %100 ], [ %8, %114 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #15
  br label %129

129:                                              ; preds = %31, %127
  %130 = phi i8 [ %128, %127 ], [ %8, %31 ]
  %131 = load i8, ptr %7, align 1, !tbaa !37
  %132 = zext i8 %131 to i64
  %133 = getelementptr inbounds [0 x i8], ptr @PL_utf8skip, i64 0, i64 %132
  %134 = load i8, ptr %133, align 1, !tbaa !37
  %135 = zext i8 %134 to i64
  %136 = getelementptr inbounds i8, ptr %7, i64 %135
  %137 = icmp ult ptr %136, %4
  br i1 %137, label %6, label %138, !llvm.loop !129

138:                                              ; preds = %129
  %139 = and i8 %130, 1
  %140 = icmp ne i8 %139, 0
  br label %141

141:                                              ; preds = %2, %138, %29
  %142 = phi i1 [ false, %29 ], [ true, %2 ], [ %140, %138 ]
  ret i1 %142
}

; Function Attrs: cold nounwind uwtable
define dso_local ptr @Perl_pv_uni_display(ptr noundef %0, ptr noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4) local_unnamed_addr #3 !prof !47 {
  %6 = alloca i8, align 1
  %7 = alloca i8, align 1
  tail call void @Perl_sv_setpvn(ptr noundef %0, ptr noundef nonnull @.str.9, i64 noundef 0) #15
  %8 = getelementptr inbounds %struct.sv, ptr %0, i64 0, i32 2
  %9 = load i32, ptr %8, align 4, !tbaa !75
  %10 = and i32 %9, -536870913
  store i32 %10, ptr %8, align 4, !tbaa !75
  %11 = getelementptr inbounds i8, ptr %1, i64 %2
  %12 = icmp sgt i64 %2, 0
  br i1 %12, label %13, label %75

13:                                               ; preds = %5
  %14 = icmp eq i64 %3, 0
  %15 = ptrtoint ptr %11 to i64
  br label %16

16:                                               ; preds = %13, %64
  %17 = phi i32 [ 0, %13 ], [ %63, %64 ]
  %18 = phi ptr [ %1, %13 ], [ %70, %64 ]
  br i1 %14, label %26, label %19

19:                                               ; preds = %16
  %20 = load ptr, ptr %0, align 8, !tbaa !77
  %21 = getelementptr inbounds %struct.xpv, ptr %20, i64 0, i32 2
  %22 = load i64, ptr %21, align 8, !tbaa !78
  %23 = icmp ult i64 %22, %3
  br i1 %23, label %26, label %24

24:                                               ; preds = %19
  %25 = add nsw i32 %17, 1
  br label %61

26:                                               ; preds = %19, %16
  %27 = ptrtoint ptr %18 to i64
  %28 = sub i64 %15, %27
  %29 = call zeroext i1 @Perl_ckwarn_d(i32 noundef 44) #15
  %30 = select i1 %29, i32 0, i32 -8161
  %31 = call i64 @Perl_utf8n_to_uvchr(ptr noundef %18, i64 noundef %28, ptr noundef null, i32 noundef %30)
  %32 = icmp ult i64 %31, 256
  br i1 %32, label %33, label %60

33:                                               ; preds = %26
  %34 = and i64 %4, 2
  %35 = icmp eq i64 %34, 0
  %36 = trunc i64 %31 to i8
  br i1 %35, label %48, label %37

37:                                               ; preds = %33
  switch i8 %36, label %44 [
    i8 10, label %38
    i8 13, label %39
    i8 9, label %40
    i8 12, label %41
    i8 7, label %42
    i8 92, label %43
  ]

38:                                               ; preds = %37
  br label %44

39:                                               ; preds = %37
  br label %44

40:                                               ; preds = %37
  br label %44

41:                                               ; preds = %37
  br label %44

42:                                               ; preds = %37
  br label %44

43:                                               ; preds = %37
  br label %44

44:                                               ; preds = %37, %43, %42, %41, %40, %39, %38
  %45 = phi i1 [ true, %37 ], [ false, %43 ], [ false, %42 ], [ false, %41 ], [ false, %40 ], [ false, %39 ], [ false, %38 ]
  %46 = phi i8 [ 0, %37 ], [ 92, %43 ], [ 97, %42 ], [ 102, %41 ], [ 116, %40 ], [ 114, %39 ], [ 110, %38 ]
  br i1 %45, label %48, label %47

47:                                               ; preds = %44
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %6) #15
  store i8 %46, ptr %6, align 1, !tbaa !37
  call void @Perl_sv_catpvn_flags(ptr noundef %0, ptr noundef nonnull @.str.66, i64 noundef 1, i32 noundef 2) #15
  call void @Perl_sv_catpvn_flags(ptr noundef %0, ptr noundef nonnull %6, i64 noundef 1, i32 noundef 2) #15
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %6) #15
  br label %48

48:                                               ; preds = %44, %47, %33
  %49 = phi i8 [ %46, %47 ], [ 0, %44 ], [ 0, %33 ]
  %50 = icmp eq i8 %49, 0
  br i1 %50, label %51, label %61

51:                                               ; preds = %48
  %52 = and i64 %4, 1
  %53 = icmp eq i64 %52, 0
  br i1 %53, label %60, label %54

54:                                               ; preds = %51
  %55 = getelementptr inbounds [0 x i32], ptr @PL_charclass, i64 0, i64 %31
  %56 = load i32, ptr %55, align 4, !tbaa !70
  %57 = and i32 %56, 16448
  %58 = icmp eq i32 %57, 16448
  br i1 %58, label %59, label %60

59:                                               ; preds = %54
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %7) #15
  store i8 %36, ptr %7, align 1, !tbaa !37
  call void @Perl_sv_catpvn_flags(ptr noundef %0, ptr noundef nonnull %7, i64 noundef 1, i32 noundef 2) #15
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %7) #15
  br label %61

60:                                               ; preds = %51, %54, %26
  call void (ptr, ptr, ...) @Perl_sv_catpvf(ptr noundef %0, ptr noundef nonnull @.str.67, i64 noundef %31) #15
  br label %61

61:                                               ; preds = %59, %48, %60, %24
  %62 = phi i1 [ false, %24 ], [ true, %60 ], [ true, %48 ], [ true, %59 ]
  %63 = phi i32 [ %25, %24 ], [ %17, %60 ], [ %17, %48 ], [ %17, %59 ]
  br i1 %62, label %64, label %72

64:                                               ; preds = %61
  %65 = load i8, ptr %18, align 1, !tbaa !37
  %66 = zext i8 %65 to i64
  %67 = getelementptr inbounds [0 x i8], ptr @PL_utf8skip, i64 0, i64 %66
  %68 = load i8, ptr %67, align 1, !tbaa !37
  %69 = zext i8 %68 to i64
  %70 = getelementptr inbounds i8, ptr %18, i64 %69
  %71 = icmp ult ptr %70, %11
  br i1 %71, label %16, label %72, !llvm.loop !130

72:                                               ; preds = %61, %64
  %73 = icmp eq i32 %63, 0
  br i1 %73, label %75, label %74

74:                                               ; preds = %72
  call void @Perl_sv_catpvn_flags(ptr noundef %0, ptr noundef nonnull @.str.68, i64 noundef 3, i32 noundef 2) #15
  br label %75

75:                                               ; preds = %5, %74, %72
  %76 = getelementptr inbounds %struct.sv, ptr %0, i64 0, i32 3
  %77 = load ptr, ptr %76, align 8, !tbaa !37
  ret ptr %77
}

declare void @Perl_sv_setpvn(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #4

declare void @Perl_sv_catpvn_flags(ptr noundef, ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #4

declare void @Perl_sv_catpvf(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: cold nounwind uwtable
define dso_local ptr @Perl_sv_uni_display(ptr noundef %0, ptr nocapture noundef readonly %1, i64 noundef %2, i64 noundef %3) local_unnamed_addr #3 !prof !47 {
  %5 = getelementptr inbounds %struct.sv, ptr %1, i64 0, i32 2
  %6 = load i32, ptr %5, align 4, !tbaa !75
  %7 = and i32 %6, 255
  %8 = icmp eq i32 %7, 8
  %9 = and i32 %6, 16826623
  %10 = icmp eq i32 %9, 16777226
  %11 = or i1 %8, %10
  br i1 %11, label %12, label %16

12:                                               ; preds = %4
  %13 = getelementptr inbounds %struct.p5rx, ptr %1, i64 0, i32 3
  %14 = load ptr, ptr %13, align 8, !tbaa !37
  %15 = getelementptr inbounds %struct.regexp, ptr %14, i64 0, i32 3
  br label %18

16:                                               ; preds = %4
  %17 = getelementptr inbounds %struct.sv, ptr %1, i64 0, i32 3
  br label %18

18:                                               ; preds = %16, %12
  %19 = phi ptr [ %15, %12 ], [ %17, %16 ]
  %20 = load ptr, ptr %19, align 8, !tbaa !37
  %21 = load ptr, ptr %1, align 8, !tbaa !77
  %22 = getelementptr inbounds %struct.xpv, ptr %21, i64 0, i32 2
  %23 = load i64, ptr %22, align 8, !tbaa !78
  %24 = tail call ptr @Perl_pv_uni_display(ptr noundef %0, ptr noundef %20, i64 noundef %23, i64 noundef %2, i64 noundef %3)
  ret ptr %24
}

; Function Attrs: cold nounwind uwtable
define dso_local noundef i32 @Perl_foldEQ_utf8_flags(ptr noundef %0, ptr noundef %1, i64 noundef %2, i1 noundef zeroext %3, ptr noundef %4, ptr noundef %5, i64 noundef %6, i1 noundef zeroext %7, i32 noundef %8) local_unnamed_addr #3 !prof !47 {
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca [14 x i8], align 1
  %13 = alloca [14 x i8], align 1
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %10) #15
  store i64 0, ptr %10, align 8, !tbaa !49
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %11) #15
  store i64 0, ptr %11, align 8, !tbaa !49
  call void @llvm.lifetime.start.p0(i64 14, ptr nonnull %12) #15
  call void @llvm.lifetime.start.p0(i64 14, ptr nonnull %13) #15
  %14 = and i32 %8, 2
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %22, label %16

16:                                               ; preds = %9
  %17 = load i8, ptr @PL_in_utf8_CTYPE_locale, align 1, !tbaa !62, !range !64, !noundef !65
  %18 = icmp eq i8 %17, 0
  %19 = and i32 %8, -3
  %20 = select i1 %18, i32 %8, i32 %19
  %21 = select i1 %18, i8 3, i8 2
  br label %22

22:                                               ; preds = %16, %9
  %23 = phi i32 [ %8, %9 ], [ %20, %16 ]
  %24 = phi i8 [ 2, %9 ], [ %21, %16 ]
  %25 = icmp eq ptr %1, null
  br i1 %25, label %28, label %26

26:                                               ; preds = %22
  %27 = load ptr, ptr %1, align 8, !tbaa !51
  br label %28

28:                                               ; preds = %26, %22
  %29 = phi ptr [ %27, %26 ], [ null, %22 ]
  %30 = icmp eq i64 %2, 0
  %31 = getelementptr inbounds i8, ptr %0, i64 %2
  %32 = select i1 %30, ptr null, ptr %31
  %33 = icmp eq ptr %5, null
  br i1 %33, label %36, label %34

34:                                               ; preds = %28
  %35 = load ptr, ptr %5, align 8, !tbaa !51
  br label %36

36:                                               ; preds = %34, %28
  %37 = phi ptr [ %35, %34 ], [ null, %28 ]
  %38 = icmp eq i64 %6, 0
  %39 = getelementptr inbounds i8, ptr %4, i64 %6
  %40 = select i1 %38, ptr null, ptr %39
  %41 = icmp eq ptr %32, null
  %42 = select i1 %41, ptr %29, ptr %32
  %43 = icmp eq ptr %40, null
  %44 = select i1 %43, ptr %37, ptr %40
  %45 = icmp ugt ptr %42, %0
  %46 = icmp ugt ptr %44, %4
  %47 = select i1 %45, i1 %46, i1 false
  br i1 %47, label %48, label %200

48:                                               ; preds = %36, %195
  %49 = phi ptr [ %137, %195 ], [ null, %36 ]
  %50 = phi ptr [ %136, %195 ], [ null, %36 ]
  %51 = phi ptr [ %196, %195 ], [ %4, %36 ]
  %52 = phi ptr [ %183, %195 ], [ %0, %36 ]
  %53 = load i64, ptr %10, align 8, !tbaa !49
  %54 = icmp eq i64 %53, 0
  br i1 %54, label %55, label %90

55:                                               ; preds = %48
  %56 = and i32 %23, 4
  %57 = icmp eq i32 %56, 0
  %58 = load i8, ptr %52, align 1, !tbaa !37
  br i1 %57, label %64, label %59

59:                                               ; preds = %55
  %60 = zext i8 %58 to i64
  %61 = getelementptr inbounds [0 x i8], ptr @PL_utf8skip, i64 0, i64 %60
  %62 = load i8, ptr %61, align 1, !tbaa !37
  %63 = zext i8 %62 to i64
  store i64 %63, ptr %10, align 8, !tbaa !49
  br label %90

64:                                               ; preds = %55
  %65 = and i32 %23, 2
  %66 = icmp eq i32 %65, 0
  %67 = icmp sgt i8 %58, -1
  %68 = and i1 %66, %67
  br i1 %68, label %69, label %84

69:                                               ; preds = %64
  %70 = and i32 %23, 1
  %71 = icmp eq i32 %70, 0
  br i1 %71, label %75, label %72

72:                                               ; preds = %69
  %73 = load i8, ptr %51, align 1, !tbaa !37
  %74 = icmp sgt i8 %73, -1
  br i1 %74, label %75, label %221

75:                                               ; preds = %72, %69
  store i64 1, ptr %10, align 8, !tbaa !49
  %76 = load i8, ptr %52, align 1, !tbaa !37
  %77 = zext i8 %76 to i64
  %78 = getelementptr inbounds [0 x i32], ptr @PL_charclass, i64 0, i64 %77
  %79 = load i32, ptr %78, align 4, !tbaa !70
  %80 = and i32 %79, 16400
  %81 = icmp eq i32 %80, 16400
  %82 = add i8 %76, 32
  %83 = select i1 %81, i8 %82, i8 %76
  store i8 %83, ptr %12, align 1, !tbaa !37
  br label %90

84:                                               ; preds = %64
  br i1 %3, label %85, label %87

85:                                               ; preds = %84
  %86 = call i64 @Perl__to_utf8_fold_flags(ptr noundef nonnull %52, ptr noundef nonnull %12, ptr noundef nonnull %10, i8 noundef zeroext %24)
  br label %90

87:                                               ; preds = %84
  %88 = zext i8 %58 to i64
  %89 = call i64 @Perl__to_uni_fold_flags(i64 noundef %88, ptr noundef nonnull %12, ptr noundef nonnull %10, i8 noundef zeroext %24)
  br label %90

90:                                               ; preds = %75, %87, %85, %59, %48
  %91 = phi ptr [ %52, %59 ], [ %50, %48 ], [ %12, %85 ], [ %12, %87 ], [ %12, %75 ]
  %92 = load i64, ptr %11, align 8, !tbaa !49
  %93 = icmp eq i64 %92, 0
  br i1 %93, label %94, label %129

94:                                               ; preds = %90
  %95 = and i32 %23, 8
  %96 = icmp eq i32 %95, 0
  %97 = load i8, ptr %51, align 1, !tbaa !37
  br i1 %96, label %103, label %98

98:                                               ; preds = %94
  %99 = zext i8 %97 to i64
  %100 = getelementptr inbounds [0 x i8], ptr @PL_utf8skip, i64 0, i64 %99
  %101 = load i8, ptr %100, align 1, !tbaa !37
  %102 = zext i8 %101 to i64
  store i64 %102, ptr %11, align 8, !tbaa !49
  br label %129

103:                                              ; preds = %94
  %104 = and i32 %23, 2
  %105 = icmp eq i32 %104, 0
  %106 = icmp sgt i8 %97, -1
  %107 = and i1 %105, %106
  br i1 %107, label %108, label %123

108:                                              ; preds = %103
  %109 = and i32 %23, 1
  %110 = icmp eq i32 %109, 0
  br i1 %110, label %114, label %111

111:                                              ; preds = %108
  %112 = load i8, ptr %52, align 1, !tbaa !37
  %113 = icmp sgt i8 %112, -1
  br i1 %113, label %114, label %221

114:                                              ; preds = %111, %108
  store i64 1, ptr %11, align 8, !tbaa !49
  %115 = load i8, ptr %51, align 1, !tbaa !37
  %116 = zext i8 %115 to i64
  %117 = getelementptr inbounds [0 x i32], ptr @PL_charclass, i64 0, i64 %116
  %118 = load i32, ptr %117, align 4, !tbaa !70
  %119 = and i32 %118, 16400
  %120 = icmp eq i32 %119, 16400
  %121 = add i8 %115, 32
  %122 = select i1 %120, i8 %121, i8 %115
  store i8 %122, ptr %13, align 1, !tbaa !37
  br label %129

123:                                              ; preds = %103
  br i1 %7, label %124, label %126

124:                                              ; preds = %123
  %125 = call i64 @Perl__to_utf8_fold_flags(ptr noundef nonnull %51, ptr noundef nonnull %13, ptr noundef nonnull %11, i8 noundef zeroext %24)
  br label %129

126:                                              ; preds = %123
  %127 = zext i8 %97 to i64
  %128 = call i64 @Perl__to_uni_fold_flags(i64 noundef %127, ptr noundef nonnull %13, ptr noundef nonnull %11, i8 noundef zeroext %24)
  br label %129

129:                                              ; preds = %114, %126, %124, %98, %90
  %130 = phi ptr [ %51, %98 ], [ %49, %90 ], [ %13, %124 ], [ %13, %126 ], [ %13, %114 ]
  %131 = load i64, ptr %10, align 8, !tbaa !49
  %132 = load i64, ptr %11, align 8
  br label %133

133:                                              ; preds = %164, %129
  %134 = phi i64 [ %132, %129 ], [ %165, %164 ]
  %135 = phi i64 [ %131, %129 ], [ %166, %164 ]
  %136 = phi ptr [ %91, %129 ], [ %167, %164 ]
  %137 = phi ptr [ %130, %129 ], [ %168, %164 ]
  %138 = icmp ne i64 %135, 0
  %139 = icmp ne i64 %134, 0
  %140 = select i1 %138, i1 %139, i1 false
  br i1 %140, label %141, label %170

141:                                              ; preds = %133
  %142 = load i8, ptr %136, align 1, !tbaa !37
  %143 = zext i8 %142 to i64
  %144 = getelementptr inbounds [0 x i8], ptr @PL_utf8skip, i64 0, i64 %143
  %145 = load i8, ptr %144, align 1, !tbaa !37
  %146 = load i8, ptr %137, align 1, !tbaa !37
  %147 = zext i8 %146 to i64
  %148 = getelementptr inbounds [0 x i8], ptr @PL_utf8skip, i64 0, i64 %147
  %149 = load i8, ptr %148, align 1, !tbaa !37
  %150 = icmp eq i8 %145, %149
  br i1 %150, label %151, label %164

151:                                              ; preds = %141
  %152 = icmp ne i8 %145, 1
  %153 = icmp eq i8 %142, %146
  %154 = or i1 %152, %153
  br i1 %154, label %155, label %164

155:                                              ; preds = %151
  %156 = zext i8 %145 to i64
  %157 = call i32 @bcmp(ptr nonnull %136, ptr nonnull %137, i64 %156)
  %158 = icmp eq i32 %157, 0
  br i1 %158, label %159, label %164

159:                                              ; preds = %155
  %160 = sub i64 %135, %156
  store i64 %160, ptr %10, align 8, !tbaa !49
  %161 = getelementptr inbounds i8, ptr %136, i64 %156
  %162 = sub i64 %134, %156
  store i64 %162, ptr %11, align 8, !tbaa !49
  %163 = getelementptr inbounds i8, ptr %137, i64 %156
  br label %164

164:                                              ; preds = %141, %155, %151, %159
  %165 = phi i64 [ %162, %159 ], [ %134, %151 ], [ %134, %155 ], [ %134, %141 ]
  %166 = phi i64 [ %160, %159 ], [ %135, %151 ], [ %135, %155 ], [ %135, %141 ]
  %167 = phi ptr [ %161, %159 ], [ %136, %151 ], [ %136, %155 ], [ %136, %141 ]
  %168 = phi ptr [ %163, %159 ], [ %137, %151 ], [ %137, %155 ], [ %137, %141 ]
  %169 = phi i1 [ true, %159 ], [ false, %151 ], [ false, %155 ], [ false, %141 ]
  br i1 %169, label %133, label %221, !llvm.loop !131

170:                                              ; preds = %133
  %171 = icmp eq i64 %135, 0
  br i1 %171, label %172, label %182

172:                                              ; preds = %170
  br i1 %3, label %173, label %179

173:                                              ; preds = %172
  %174 = load i8, ptr %52, align 1, !tbaa !37
  %175 = zext i8 %174 to i64
  %176 = getelementptr inbounds [0 x i8], ptr @PL_utf8skip, i64 0, i64 %175
  %177 = load i8, ptr %176, align 1, !tbaa !37
  %178 = zext i8 %177 to i64
  br label %179

179:                                              ; preds = %172, %173
  %180 = phi i64 [ %178, %173 ], [ 1, %172 ]
  %181 = getelementptr inbounds i8, ptr %52, i64 %180
  br label %182

182:                                              ; preds = %179, %170
  %183 = phi ptr [ %181, %179 ], [ %52, %170 ]
  %184 = icmp eq i64 %134, 0
  br i1 %184, label %185, label %195

185:                                              ; preds = %182
  br i1 %7, label %186, label %192

186:                                              ; preds = %185
  %187 = load i8, ptr %51, align 1, !tbaa !37
  %188 = zext i8 %187 to i64
  %189 = getelementptr inbounds [0 x i8], ptr @PL_utf8skip, i64 0, i64 %188
  %190 = load i8, ptr %189, align 1, !tbaa !37
  %191 = zext i8 %190 to i64
  br label %192

192:                                              ; preds = %185, %186
  %193 = phi i64 [ %191, %186 ], [ 1, %185 ]
  %194 = getelementptr inbounds i8, ptr %51, i64 %193
  br label %195

195:                                              ; preds = %192, %182
  %196 = phi ptr [ %194, %192 ], [ %51, %182 ]
  %197 = icmp ult ptr %183, %42
  %198 = icmp ult ptr %196, %44
  %199 = select i1 %197, i1 %198, i1 false
  br i1 %199, label %48, label %200, !llvm.loop !132

200:                                              ; preds = %195, %36
  %201 = phi ptr [ %0, %36 ], [ %183, %195 ]
  %202 = phi ptr [ %4, %36 ], [ %196, %195 ]
  %203 = icmp eq ptr %201, %32
  %204 = or i1 %41, %203
  br i1 %204, label %205, label %221

205:                                              ; preds = %200
  br i1 %43, label %211, label %206

206:                                              ; preds = %205
  %207 = icmp ne ptr %202, %40
  %208 = load i64, ptr %10, align 8
  %209 = icmp ne i64 %208, 0
  %210 = select i1 %207, i1 true, i1 %209
  br i1 %210, label %221, label %214

211:                                              ; preds = %205
  %212 = load i64, ptr %10, align 8, !tbaa !49
  %213 = icmp eq i64 %212, 0
  br i1 %213, label %214, label %221

214:                                              ; preds = %211, %206
  %215 = load i64, ptr %11, align 8, !tbaa !49
  %216 = icmp eq i64 %215, 0
  br i1 %216, label %217, label %221

217:                                              ; preds = %214
  br i1 %25, label %219, label %218

218:                                              ; preds = %217
  store ptr %201, ptr %1, align 8, !tbaa !51
  br label %219

219:                                              ; preds = %218, %217
  br i1 %33, label %221, label %220

220:                                              ; preds = %219
  store ptr %202, ptr %5, align 8, !tbaa !51
  br label %221

221:                                              ; preds = %111, %72, %164, %214, %219, %220, %206, %211, %200
  %222 = phi i32 [ 0, %200 ], [ 0, %211 ], [ 0, %206 ], [ 1, %220 ], [ 1, %219 ], [ 0, %214 ], [ 0, %164 ], [ 0, %72 ], [ 0, %111 ]
  call void @llvm.lifetime.end.p0(i64 14, ptr nonnull %13) #15
  call void @llvm.lifetime.end.p0(i64 14, ptr nonnull %12) #15
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %11) #15
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %10) #15
  ret i32 %222
}

; Function Attrs: cold nounwind uwtable
define dso_local ptr @Perl_uvuni_to_utf8(ptr noundef %0, i64 noundef %1) local_unnamed_addr #3 !prof !47 {
  %3 = tail call ptr @Perl_uvoffuni_to_utf8_flags(ptr noundef %0, i64 noundef %1, i64 noundef 0)
  ret ptr %3
}

; Function Attrs: cold nounwind uwtable
define dso_local i64 @Perl_utf8n_to_uvuni(ptr noundef %0, i64 noundef %1, ptr noundef %2, i32 noundef %3) local_unnamed_addr #3 !prof !47 {
  %5 = tail call i64 @Perl_utf8n_to_uvchr(ptr noundef %0, i64 noundef %1, ptr noundef %2, i32 noundef %3)
  ret i64 %5
}

; Function Attrs: cold nounwind uwtable
define dso_local ptr @Perl_uvuni_to_utf8_flags(ptr noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #3 !prof !47 {
  %4 = tail call ptr @Perl_uvoffuni_to_utf8_flags(ptr noundef %0, i64 noundef %1, i64 noundef %2)
  ret ptr %4
}

declare zeroext i1 @Perl_ckwarn(i32 noundef) local_unnamed_addr #4

declare void @Perl_sv_free2(ptr noundef, i32 noundef) local_unnamed_addr #4

declare i64 @Perl__invlist_search(ptr noundef, i64 noundef) local_unnamed_addr #4

declare ptr @Perl_newSV(i64 noundef) local_unnamed_addr #4

declare void @Perl__invlist_populate_swatch(ptr noundef, i64 noundef, i64 noundef, ptr noundef) local_unnamed_addr #4

declare i32 @Perl_mg_size(ptr noundef) local_unnamed_addr #4

declare i64 @Perl_grok_hex(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #12

; Function Attrs: nofree nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr nocapture, ptr nocapture, i64) local_unnamed_addr #13

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #12

attributes #0 = { cold nofree nounwind memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nofree nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { cold nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { cold nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { cold nofree norecurse nosync nounwind memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { cold nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #10 = { mustprogress nofree nosync nounwind willreturn memory(none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #12 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #13 = { nofree nounwind willreturn memory(argmem: read) }
attributes #14 = { nounwind willreturn memory(read) }
attributes #15 = { nounwind }
attributes #16 = { nounwind willreturn memory(none) }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!33}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 1, !"ProfileSummary", !5}
!5 = !{!6, !7, !8, !9, !10, !11, !12, !13, !14, !15}
!6 = !{!"ProfileFormat", !"InstrProf"}
!7 = !{!"TotalCount", i64 53336217263}
!8 = !{!"MaxCount", i64 1126593358}
!9 = !{!"MaxInternalCount", i64 1126593358}
!10 = !{!"MaxFunctionCount", i64 465576726}
!11 = !{!"NumCounts", i64 53216}
!12 = !{!"NumFunctions", i64 2490}
!13 = !{!"IsPartialProfile", i64 0}
!14 = !{!"PartialProfileRatio", double 0.000000e+00}
!15 = !{!"DetailedSummary", !16}
!16 = !{!17, !18, !19, !20, !21, !22, !23, !24, !25, !26, !27, !28, !29, !30, !31, !32}
!17 = !{i32 10000, i64 1126593358, i32 1}
!18 = !{i32 100000, i64 852534058, i32 6}
!19 = !{i32 200000, i64 504831111, i32 16}
!20 = !{i32 300000, i64 482068791, i32 26}
!21 = !{i32 400000, i64 459921484, i32 39}
!22 = !{i32 500000, i64 444801476, i32 50}
!23 = !{i32 600000, i64 426267029, i32 64}
!24 = !{i32 700000, i64 422040304, i32 74}
!25 = !{i32 800000, i64 220037356, i32 89}
!26 = !{i32 900000, i64 39885265, i32 162}
!27 = !{i32 950000, i64 20973884, i32 262}
!28 = !{i32 990000, i64 1545742, i32 632}
!29 = !{i32 999000, i64 97988, i32 1692}
!30 = !{i32 999900, i64 9981, i32 2885}
!31 = !{i32 999990, i64 671, i32 4392}
!32 = !{i32 999999, i64 57, i32 6648}
!33 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!34 = !{!"function_entry_count", i64 1}
!35 = !{!"branch_weights", i32 0, i32 1}
!36 = !{!"branch_weights", i32 127, i32 1}
!37 = !{!38, !38, i64 0}
!38 = !{!"omnipotent char", !39, i64 0}
!39 = !{!"Simple C/C++ TBAA"}
!40 = !{!"branch_weights", i32 16, i32 0}
!41 = !{!"branch_weights", i32 1921, i32 127}
!42 = distinct !{!42, !43, !44}
!43 = !{!"llvm.loop.mustprogress"}
!44 = !{!"llvm.loop.unroll.disable"}
!45 = !{!"function_entry_count", i64 3}
!46 = !{!"branch_weights", i32 3, i32 0}
!47 = !{!"function_entry_count", i64 0}
!48 = distinct !{!48, !43, !44}
!49 = !{!50, !50, i64 0}
!50 = !{!"long", !38, i64 0}
!51 = !{!52, !52, i64 0}
!52 = !{!"any pointer", !38, i64 0}
!53 = distinct !{!53, !43, !44}
!54 = distinct !{!54, !43, !44}
!55 = distinct !{!55, !43, !44}
!56 = distinct !{!56, !43, !44}
!57 = distinct !{!57, !43, !44}
!58 = distinct !{!58, !43, !44}
!59 = distinct !{!59, !43, !44}
!60 = distinct !{!60, !43, !44}
!61 = distinct !{!61, !43, !44}
!62 = !{!63, !63, i64 0}
!63 = !{!"_Bool", !38, i64 0}
!64 = !{i8 0, i8 2}
!65 = !{}
!66 = distinct !{!66, !43, !44}
!67 = distinct !{!67, !43, !44}
!68 = distinct !{!68, !43, !44}
!69 = distinct !{!69, !43, !44}
!70 = !{!71, !71, i64 0}
!71 = !{!"int", !38, i64 0}
!72 = distinct !{!72, !43, !44}
!73 = !{i64 0, i64 4294967296}
!74 = !{i64 0, i64 925}
!75 = !{!76, !71, i64 12}
!76 = !{!"sv", !52, i64 0, !71, i64 8, !71, i64 12, !38, i64 16}
!77 = !{!76, !52, i64 0}
!78 = !{!79, !50, i64 16}
!79 = !{!"xpv", !52, i64 0, !38, i64 8, !50, i64 16, !38, i64 24}
!80 = !{!"function_entry_count", i64 372172}
!81 = !{!"branch_weights", i32 0, i32 372172}
!82 = !{!"branch_weights", i32 372172, i32 0}
!83 = !{i64 0, i64 957}
!84 = distinct !{!84, !43, !44}
!85 = !{!86, !52, i64 24}
!86 = !{!"stackinfo", !52, i64 0, !52, i64 8, !52, i64 16, !52, i64 24, !71, i64 32, !71, i64 36, !71, i64 40, !71, i64 44}
!87 = !{!86, !52, i64 16}
!88 = !{!86, !71, i64 40}
!89 = !{!86, !71, i64 32}
!90 = !{!86, !52, i64 0}
!91 = !{!92, !52, i64 0}
!92 = !{!"av", !52, i64 0, !71, i64 8, !71, i64 12, !38, i64 16}
!93 = !{!94, !50, i64 16}
!94 = !{!"xpvav", !52, i64 0, !38, i64 8, !50, i64 16, !50, i64 24, !52, i64 32}
!95 = !{!94, !50, i64 24}
!96 = !{!97, !38, i64 239}
!97 = !{!"yy_parser", !52, i64 0, !38, i64 8, !71, i64 16, !71, i64 20, !71, i64 24, !71, i64 28, !52, i64 32, !52, i64 40, !71, i64 48, !71, i64 52, !52, i64 56, !52, i64 64, !38, i64 72, !38, i64 73, !38, i64 74, !38, i64 75, !71, i64 76, !52, i64 80, !52, i64 88, !52, i64 96, !98, i64 104, !98, i64 106, !71, i64 108, !52, i64 112, !71, i64 120, !71, i64 124, !38, i64 128, !38, i64 129, !63, i64 130, !63, i64 131, !71, i64 132, !99, i64 136, !52, i64 160, !52, i64 168, !52, i64 176, !52, i64 184, !52, i64 192, !52, i64 200, !52, i64 208, !52, i64 216, !52, i64 224, !71, i64 232, !98, i64 236, !38, i64 238, !38, i64 239, !52, i64 240, !52, i64 248, !52, i64 256, !38, i64 264, !38, i64 272, !38, i64 312, !71, i64 332, !52, i64 336, !38, i64 344, !71, i64 600, !71, i64 604, !38, i64 608, !38, i64 609, !71, i64 610, !71, i64 610, !71, i64 610, !71, i64 610}
!98 = !{!"short", !38, i64 0}
!99 = !{!"_sublex_info", !38, i64 0, !98, i64 2, !52, i64 8, !52, i64 16}
!100 = !{!101, !52, i64 0}
!101 = !{!"gp", !52, i64 0, !52, i64 8, !52, i64 16, !71, i64 24, !71, i64 28, !52, i64 32, !52, i64 40, !52, i64 48, !52, i64 56, !71, i64 64, !71, i64 67, !52, i64 72}
!102 = !{!76, !71, i64 8}
!103 = !{!104, !71, i64 12}
!104 = !{!"hv", !52, i64 0, !71, i64 8, !71, i64 12, !38, i64 16}
!105 = distinct !{!105, !43, !44}
!106 = distinct !{!106, !43, !44}
!107 = distinct !{!107, !43, !44}
!108 = distinct !{!108, !43, !44}
!109 = distinct !{!109, !43, !44}
!110 = distinct !{!110, !43, !44}
!111 = distinct !{!111, !43, !44}
!112 = distinct !{!112, !43, !44}
!113 = distinct !{!113, !43, !44}
!114 = distinct !{!114, !43, !44}
!115 = distinct !{!115, !43, !44}
!116 = distinct !{!116, !43, !44}
!117 = distinct !{!117, !43, !44}
!118 = distinct !{!118, !43, !44}
!119 = distinct !{!119, !43, !44}
!120 = distinct !{!120, !43, !44}
!121 = distinct !{!121, !43, !44}
!122 = distinct !{!122, !43, !44}
!123 = distinct !{!123, !43, !44}
!124 = distinct !{!124, !43, !44}
!125 = distinct !{!125, !43, !44}
!126 = distinct !{!126, !43, !44}
!127 = distinct !{!127, !43, !44}
!128 = distinct !{!128, !43, !44}
!129 = distinct !{!129, !43, !44}
!130 = distinct !{!130, !43, !44}
!131 = distinct !{!131, !43, !44}
!132 = distinct !{!132, !43, !44}
