; ModuleID = 'utf8.c'
source_filename = "utf8.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.sv = type { ptr, i32, i32, %union.anon }
%union.anon = type { ptr }
%struct.op = type { ptr, ptr, ptr, i64, i16, i8, i8 }
%struct.stackinfo = type { ptr, ptr, ptr, ptr, i32, i32, i32, i32 }
%struct.xpvav = type { ptr, %union._xmgu, i64, i64, ptr }
%union._xmgu = type { ptr }
%struct.av = type { ptr, i32, i32, %union.anon.1 }
%union.anon.1 = type { ptr }
%struct.yy_parser = type { ptr, %union.YYSTYPE, i32, i32, i32, i32, ptr, ptr, i32, i32, ptr, ptr, i8, i8, i8, i8, i32, ptr, ptr, ptr, i16, i16, i32, ptr, i32, i32, i8, i8, i8, i8, i32, %struct._sublex_info, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i16, i8, i8, ptr, ptr, ptr, i8, [5 x %union.YYSTYPE], [5 x i32], i32, ptr, [256 x i8], i32, i32, i8, i8, i8 }
%union.YYSTYPE = type { ptr }
%struct._sublex_info = type { i8, i16, ptr, ptr }
%struct.gv = type { ptr, i32, i32, %union.anon.2 }
%union.anon.2 = type { ptr }
%struct.xpv = type { ptr, %union._xmgu, i64, %union.anon.0 }
%union.anon.0 = type { i64 }
%struct.xpviv = type { ptr, %union._xmgu, i64, %union.anon.3, %union._xivu }
%union.anon.3 = type { i64 }
%union._xivu = type { i64 }
%struct.xpvnv = type { ptr, %union._xmgu, i64, %union.anon.4, %union._xivu, %union._xnvu }
%union.anon.4 = type { i64 }
%union._xnvu = type { double }
%struct.xpvuv = type { ptr, %union._xmgu, i64, %union.anon.5, %union._xivu }
%union.anon.5 = type { i64 }
%struct.hv = type { ptr, i32, i32, %union.anon.7 }
%union.anon.7 = type { ptr }
%struct.xpvinvlist = type { ptr, %union._xmgu, i64, %union.anon.6, i64, i64, i8 }
%union.anon.6 = type { i64 }
%struct.regexp = type { ptr, %union._xmgu, i64, %union.anon.8, ptr, ptr, ptr, i32, i64, i64, i64, ptr, i32, i32, ptr, i32, i32, ptr, ptr, ptr, i64, i64, i64, i64, i16, ptr }
%union.anon.8 = type { i64 }
%struct.p5rx = type { ptr, i32, i32, %union.anon.9 }
%union.anon.9 = type { ptr }

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
@.str.21 = private unnamed_addr constant [46 x i8] c"Passing malformed UTF-8 to \22%s\22 is deprecated\00", align 1
@.str.22 = private unnamed_addr constant [5 x i8] c"utf8\00", align 1
@PL_sv_undef = external global %struct.sv, align 8
@PL_mod_latin1_uc = external local_unnamed_addr constant [0 x i8], align 1
@.str.23 = private unnamed_addr constant [64 x i8] c"panic: to_upper_title_latin1 did not expect '%c' to map to '%c'\00", align 1
@PL_utf8_toupper = external global ptr, align 8
@.str.24 = private unnamed_addr constant [5 x i8] c"ToUc\00", align 1
@PL_utf8_totitle = external global ptr, align 8
@.str.25 = private unnamed_addr constant [5 x i8] c"ToTc\00", align 1
@PL_utf8_tolower = external global ptr, align 8
@.str.26 = private unnamed_addr constant [5 x i8] c"ToLc\00", align 1
@PL_latin1_lc = external local_unnamed_addr constant [0 x i8], align 1
@PL_in_utf8_CTYPE_locale = external local_unnamed_addr global i8, align 1
@PL_utf8_tofold = external global ptr, align 8
@.str.28 = private unnamed_addr constant [5 x i8] c"ToCf\00", align 1
@PL_utf8_swash_ptrs = external global [10 x ptr], align 16
@reltable.Perl__is_utf8_FOO = internal unnamed_addr constant [10 x i32] [i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.29 to i64), i64 ptrtoint (ptr @reltable.Perl__is_utf8_FOO to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.30 to i64), i64 ptrtoint (ptr @reltable.Perl__is_utf8_FOO to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.31 to i64), i64 ptrtoint (ptr @reltable.Perl__is_utf8_FOO to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.32 to i64), i64 ptrtoint (ptr @reltable.Perl__is_utf8_FOO to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.33 to i64), i64 ptrtoint (ptr @reltable.Perl__is_utf8_FOO to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.34 to i64), i64 ptrtoint (ptr @reltable.Perl__is_utf8_FOO to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.35 to i64), i64 ptrtoint (ptr @reltable.Perl__is_utf8_FOO to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.36 to i64), i64 ptrtoint (ptr @reltable.Perl__is_utf8_FOO to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.37 to i64), i64 ptrtoint (ptr @reltable.Perl__is_utf8_FOO to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.38 to i64), i64 ptrtoint (ptr @reltable.Perl__is_utf8_FOO to i64)) to i32)], align 4
@PL_XPosix_ptrs = external local_unnamed_addr global [16 x ptr], align 16
@.str.29 = private unnamed_addr constant [11 x i8] c"XPosixWord\00", align 1
@.str.30 = private unnamed_addr constant [12 x i8] c"XPosixDigit\00", align 1
@.str.31 = private unnamed_addr constant [12 x i8] c"XPosixAlpha\00", align 1
@.str.32 = private unnamed_addr constant [12 x i8] c"XPosixLower\00", align 1
@.str.33 = private unnamed_addr constant [12 x i8] c"XPosixUpper\00", align 1
@.str.34 = private unnamed_addr constant [12 x i8] c"XPosixPunct\00", align 1
@.str.35 = private unnamed_addr constant [12 x i8] c"XPosixPrint\00", align 1
@.str.36 = private unnamed_addr constant [12 x i8] c"XPosixAlnum\00", align 1
@.str.37 = private unnamed_addr constant [12 x i8] c"XPosixGraph\00", align 1
@.str.38 = private unnamed_addr constant [6 x i8] c"Cased\00", align 1
@PL_utf8_perl_idstart = external global ptr, align 8
@_Perl_IDStart_invlist = internal constant [1098 x i64] [i64 1095, i64 148565664, i64 1, i64 0, i64 65, i64 91, i64 95, i64 96, i64 97, i64 123, i64 170, i64 171, i64 181, i64 182, i64 186, i64 187, i64 192, i64 215, i64 216, i64 247, i64 248, i64 706, i64 710, i64 722, i64 736, i64 741, i64 748, i64 749, i64 750, i64 751, i64 880, i64 885, i64 886, i64 888, i64 891, i64 894, i64 895, i64 896, i64 902, i64 903, i64 904, i64 907, i64 908, i64 909, i64 910, i64 930, i64 931, i64 1014, i64 1015, i64 1154, i64 1162, i64 1328, i64 1329, i64 1367, i64 1369, i64 1370, i64 1377, i64 1416, i64 1488, i64 1515, i64 1520, i64 1523, i64 1568, i64 1611, i64 1646, i64 1648, i64 1649, i64 1748, i64 1749, i64 1750, i64 1765, i64 1767, i64 1774, i64 1776, i64 1786, i64 1789, i64 1791, i64 1792, i64 1808, i64 1809, i64 1810, i64 1840, i64 1869, i64 1958, i64 1969, i64 1970, i64 1994, i64 2027, i64 2036, i64 2038, i64 2042, i64 2043, i64 2048, i64 2070, i64 2074, i64 2075, i64 2084, i64 2085, i64 2088, i64 2089, i64 2112, i64 2137, i64 2208, i64 2227, i64 2308, i64 2362, i64 2365, i64 2366, i64 2384, i64 2385, i64 2392, i64 2402, i64 2417, i64 2433, i64 2437, i64 2445, i64 2447, i64 2449, i64 2451, i64 2473, i64 2474, i64 2481, i64 2482, i64 2483, i64 2486, i64 2490, i64 2493, i64 2494, i64 2510, i64 2511, i64 2524, i64 2526, i64 2527, i64 2530, i64 2544, i64 2546, i64 2565, i64 2571, i64 2575, i64 2577, i64 2579, i64 2601, i64 2602, i64 2609, i64 2610, i64 2612, i64 2613, i64 2615, i64 2616, i64 2618, i64 2649, i64 2653, i64 2654, i64 2655, i64 2674, i64 2677, i64 2693, i64 2702, i64 2703, i64 2706, i64 2707, i64 2729, i64 2730, i64 2737, i64 2738, i64 2740, i64 2741, i64 2746, i64 2749, i64 2750, i64 2768, i64 2769, i64 2784, i64 2786, i64 2821, i64 2829, i64 2831, i64 2833, i64 2835, i64 2857, i64 2858, i64 2865, i64 2866, i64 2868, i64 2869, i64 2874, i64 2877, i64 2878, i64 2908, i64 2910, i64 2911, i64 2914, i64 2929, i64 2930, i64 2947, i64 2948, i64 2949, i64 2955, i64 2958, i64 2961, i64 2962, i64 2966, i64 2969, i64 2971, i64 2972, i64 2973, i64 2974, i64 2976, i64 2979, i64 2981, i64 2984, i64 2987, i64 2990, i64 3002, i64 3024, i64 3025, i64 3077, i64 3085, i64 3086, i64 3089, i64 3090, i64 3113, i64 3114, i64 3130, i64 3133, i64 3134, i64 3160, i64 3162, i64 3168, i64 3170, i64 3205, i64 3213, i64 3214, i64 3217, i64 3218, i64 3241, i64 3242, i64 3252, i64 3253, i64 3258, i64 3261, i64 3262, i64 3294, i64 3295, i64 3296, i64 3298, i64 3313, i64 3315, i64 3333, i64 3341, i64 3342, i64 3345, i64 3346, i64 3387, i64 3389, i64 3390, i64 3406, i64 3407, i64 3424, i64 3426, i64 3450, i64 3456, i64 3461, i64 3479, i64 3482, i64 3506, i64 3507, i64 3516, i64 3517, i64 3518, i64 3520, i64 3527, i64 3585, i64 3633, i64 3634, i64 3635, i64 3648, i64 3655, i64 3713, i64 3715, i64 3716, i64 3717, i64 3719, i64 3721, i64 3722, i64 3723, i64 3725, i64 3726, i64 3732, i64 3736, i64 3737, i64 3744, i64 3745, i64 3748, i64 3749, i64 3750, i64 3751, i64 3752, i64 3754, i64 3756, i64 3757, i64 3761, i64 3762, i64 3763, i64 3773, i64 3774, i64 3776, i64 3781, i64 3782, i64 3783, i64 3804, i64 3808, i64 3840, i64 3841, i64 3904, i64 3912, i64 3913, i64 3949, i64 3976, i64 3981, i64 4096, i64 4139, i64 4159, i64 4160, i64 4176, i64 4182, i64 4186, i64 4190, i64 4193, i64 4194, i64 4197, i64 4199, i64 4206, i64 4209, i64 4213, i64 4226, i64 4238, i64 4239, i64 4256, i64 4294, i64 4295, i64 4296, i64 4301, i64 4302, i64 4304, i64 4347, i64 4348, i64 4681, i64 4682, i64 4686, i64 4688, i64 4695, i64 4696, i64 4697, i64 4698, i64 4702, i64 4704, i64 4745, i64 4746, i64 4750, i64 4752, i64 4785, i64 4786, i64 4790, i64 4792, i64 4799, i64 4800, i64 4801, i64 4802, i64 4806, i64 4808, i64 4823, i64 4824, i64 4881, i64 4882, i64 4886, i64 4888, i64 4955, i64 4992, i64 5008, i64 5024, i64 5109, i64 5121, i64 5741, i64 5743, i64 5760, i64 5761, i64 5787, i64 5792, i64 5867, i64 5870, i64 5881, i64 5888, i64 5901, i64 5902, i64 5906, i64 5920, i64 5938, i64 5952, i64 5970, i64 5984, i64 5997, i64 5998, i64 6001, i64 6016, i64 6068, i64 6103, i64 6104, i64 6108, i64 6109, i64 6176, i64 6264, i64 6272, i64 6313, i64 6314, i64 6315, i64 6320, i64 6390, i64 6400, i64 6431, i64 6480, i64 6510, i64 6512, i64 6517, i64 6528, i64 6572, i64 6593, i64 6600, i64 6656, i64 6679, i64 6688, i64 6741, i64 6823, i64 6824, i64 6917, i64 6964, i64 6981, i64 6988, i64 7043, i64 7073, i64 7086, i64 7088, i64 7098, i64 7142, i64 7168, i64 7204, i64 7245, i64 7248, i64 7258, i64 7294, i64 7401, i64 7405, i64 7406, i64 7410, i64 7413, i64 7415, i64 7424, i64 7616, i64 7680, i64 7958, i64 7960, i64 7966, i64 7968, i64 8006, i64 8008, i64 8014, i64 8016, i64 8024, i64 8025, i64 8026, i64 8027, i64 8028, i64 8029, i64 8030, i64 8031, i64 8062, i64 8064, i64 8117, i64 8118, i64 8125, i64 8126, i64 8127, i64 8130, i64 8133, i64 8134, i64 8141, i64 8144, i64 8148, i64 8150, i64 8156, i64 8160, i64 8173, i64 8178, i64 8181, i64 8182, i64 8189, i64 8305, i64 8306, i64 8319, i64 8320, i64 8336, i64 8349, i64 8450, i64 8451, i64 8455, i64 8456, i64 8458, i64 8468, i64 8469, i64 8470, i64 8473, i64 8478, i64 8484, i64 8485, i64 8486, i64 8487, i64 8488, i64 8489, i64 8490, i64 8494, i64 8495, i64 8506, i64 8508, i64 8512, i64 8517, i64 8522, i64 8526, i64 8527, i64 8544, i64 8585, i64 11264, i64 11311, i64 11312, i64 11359, i64 11360, i64 11493, i64 11499, i64 11503, i64 11506, i64 11508, i64 11520, i64 11558, i64 11559, i64 11560, i64 11565, i64 11566, i64 11568, i64 11624, i64 11631, i64 11632, i64 11648, i64 11671, i64 11680, i64 11687, i64 11688, i64 11695, i64 11696, i64 11703, i64 11704, i64 11711, i64 11712, i64 11719, i64 11720, i64 11727, i64 11728, i64 11735, i64 11736, i64 11743, i64 12293, i64 12296, i64 12321, i64 12330, i64 12337, i64 12342, i64 12344, i64 12349, i64 12353, i64 12439, i64 12445, i64 12448, i64 12449, i64 12539, i64 12540, i64 12544, i64 12549, i64 12590, i64 12593, i64 12687, i64 12704, i64 12731, i64 12784, i64 12800, i64 13312, i64 19894, i64 19968, i64 40909, i64 40960, i64 42125, i64 42192, i64 42238, i64 42240, i64 42509, i64 42512, i64 42528, i64 42538, i64 42540, i64 42560, i64 42607, i64 42623, i64 42654, i64 42656, i64 42736, i64 42775, i64 42784, i64 42786, i64 42889, i64 42891, i64 42895, i64 42896, i64 42926, i64 42928, i64 42930, i64 42999, i64 43010, i64 43011, i64 43014, i64 43015, i64 43019, i64 43020, i64 43043, i64 43072, i64 43124, i64 43138, i64 43188, i64 43250, i64 43256, i64 43259, i64 43260, i64 43274, i64 43302, i64 43312, i64 43335, i64 43360, i64 43389, i64 43396, i64 43443, i64 43471, i64 43472, i64 43488, i64 43493, i64 43494, i64 43504, i64 43514, i64 43519, i64 43520, i64 43561, i64 43584, i64 43587, i64 43588, i64 43596, i64 43616, i64 43639, i64 43642, i64 43643, i64 43646, i64 43696, i64 43697, i64 43698, i64 43701, i64 43703, i64 43705, i64 43710, i64 43712, i64 43713, i64 43714, i64 43715, i64 43739, i64 43742, i64 43744, i64 43755, i64 43762, i64 43765, i64 43777, i64 43783, i64 43785, i64 43791, i64 43793, i64 43799, i64 43808, i64 43815, i64 43816, i64 43823, i64 43824, i64 43867, i64 43868, i64 43872, i64 43876, i64 43878, i64 43968, i64 44003, i64 44032, i64 55204, i64 55216, i64 55239, i64 55243, i64 55292, i64 63744, i64 64110, i64 64112, i64 64218, i64 64256, i64 64263, i64 64275, i64 64280, i64 64285, i64 64286, i64 64287, i64 64297, i64 64298, i64 64311, i64 64312, i64 64317, i64 64318, i64 64319, i64 64320, i64 64322, i64 64323, i64 64325, i64 64326, i64 64434, i64 64467, i64 64606, i64 64612, i64 64830, i64 64848, i64 64912, i64 64914, i64 64968, i64 65008, i64 65018, i64 65137, i64 65138, i64 65139, i64 65140, i64 65143, i64 65144, i64 65145, i64 65146, i64 65147, i64 65148, i64 65149, i64 65150, i64 65151, i64 65277, i64 65313, i64 65339, i64 65345, i64 65371, i64 65382, i64 65438, i64 65440, i64 65471, i64 65474, i64 65480, i64 65482, i64 65488, i64 65490, i64 65496, i64 65498, i64 65501, i64 65536, i64 65548, i64 65549, i64 65575, i64 65576, i64 65595, i64 65596, i64 65598, i64 65599, i64 65614, i64 65616, i64 65630, i64 65664, i64 65787, i64 65856, i64 65909, i64 66176, i64 66205, i64 66208, i64 66257, i64 66304, i64 66336, i64 66352, i64 66379, i64 66384, i64 66422, i64 66432, i64 66462, i64 66464, i64 66500, i64 66504, i64 66512, i64 66513, i64 66518, i64 66560, i64 66718, i64 66816, i64 66856, i64 66864, i64 66916, i64 67072, i64 67383, i64 67392, i64 67414, i64 67424, i64 67432, i64 67584, i64 67590, i64 67592, i64 67593, i64 67594, i64 67638, i64 67639, i64 67641, i64 67644, i64 67645, i64 67647, i64 67670, i64 67680, i64 67703, i64 67712, i64 67743, i64 67840, i64 67862, i64 67872, i64 67898, i64 67968, i64 68024, i64 68030, i64 68032, i64 68096, i64 68097, i64 68112, i64 68116, i64 68117, i64 68120, i64 68121, i64 68148, i64 68192, i64 68221, i64 68224, i64 68253, i64 68288, i64 68296, i64 68297, i64 68325, i64 68352, i64 68406, i64 68416, i64 68438, i64 68448, i64 68467, i64 68480, i64 68498, i64 68608, i64 68681, i64 69635, i64 69688, i64 69763, i64 69808, i64 69840, i64 69865, i64 69891, i64 69927, i64 69968, i64 70003, i64 70006, i64 70007, i64 70019, i64 70067, i64 70081, i64 70085, i64 70106, i64 70107, i64 70144, i64 70162, i64 70163, i64 70188, i64 70320, i64 70367, i64 70405, i64 70413, i64 70415, i64 70417, i64 70419, i64 70441, i64 70442, i64 70449, i64 70450, i64 70452, i64 70453, i64 70458, i64 70461, i64 70462, i64 70493, i64 70498, i64 70784, i64 70832, i64 70852, i64 70854, i64 70855, i64 70856, i64 71040, i64 71087, i64 71168, i64 71216, i64 71236, i64 71237, i64 71296, i64 71339, i64 71840, i64 71904, i64 71935, i64 71936, i64 72384, i64 72441, i64 73728, i64 74649, i64 74752, i64 74863, i64 77824, i64 78895, i64 92160, i64 92729, i64 92736, i64 92767, i64 92880, i64 92910, i64 92928, i64 92976, i64 92992, i64 92996, i64 93027, i64 93048, i64 93053, i64 93072, i64 93952, i64 94021, i64 94032, i64 94033, i64 94099, i64 94112, i64 110592, i64 110594, i64 113664, i64 113771, i64 113776, i64 113789, i64 113792, i64 113801, i64 113808, i64 113818, i64 119808, i64 119893, i64 119894, i64 119965, i64 119966, i64 119968, i64 119970, i64 119971, i64 119973, i64 119975, i64 119977, i64 119981, i64 119982, i64 119994, i64 119995, i64 119996, i64 119997, i64 120004, i64 120005, i64 120070, i64 120071, i64 120075, i64 120077, i64 120085, i64 120086, i64 120093, i64 120094, i64 120122, i64 120123, i64 120127, i64 120128, i64 120133, i64 120134, i64 120135, i64 120138, i64 120145, i64 120146, i64 120486, i64 120488, i64 120513, i64 120514, i64 120539, i64 120540, i64 120571, i64 120572, i64 120597, i64 120598, i64 120629, i64 120630, i64 120655, i64 120656, i64 120687, i64 120688, i64 120713, i64 120714, i64 120745, i64 120746, i64 120771, i64 120772, i64 120780, i64 124928, i64 125125, i64 126464, i64 126468, i64 126469, i64 126496, i64 126497, i64 126499, i64 126500, i64 126501, i64 126503, i64 126504, i64 126505, i64 126515, i64 126516, i64 126520, i64 126521, i64 126522, i64 126523, i64 126524, i64 126530, i64 126531, i64 126535, i64 126536, i64 126537, i64 126538, i64 126539, i64 126540, i64 126541, i64 126544, i64 126545, i64 126547, i64 126548, i64 126549, i64 126551, i64 126552, i64 126553, i64 126554, i64 126555, i64 126556, i64 126557, i64 126558, i64 126559, i64 126560, i64 126561, i64 126563, i64 126564, i64 126565, i64 126567, i64 126571, i64 126572, i64 126579, i64 126580, i64 126584, i64 126585, i64 126589, i64 126590, i64 126591, i64 126592, i64 126602, i64 126603, i64 126620, i64 126625, i64 126628, i64 126629, i64 126634, i64 126635, i64 126652, i64 131072, i64 173783, i64 173824, i64 177973, i64 177984, i64 178206, i64 194560, i64 195102], align 16
@.str.39 = private unnamed_addr constant [14 x i8] c"_Perl_IDStart\00", align 1
@PL_utf8_xidstart = external global ptr, align 8
@.str.40 = private unnamed_addr constant [9 x i8] c"XIdStart\00", align 1
@PL_utf8_perl_idcont = external global ptr, align 8
@_Perl_IDCont_invlist = internal constant [1270 x i64] [i64 1267, i64 148565664, i64 1, i64 0, i64 48, i64 58, i64 65, i64 91, i64 95, i64 96, i64 97, i64 123, i64 170, i64 171, i64 181, i64 182, i64 186, i64 187, i64 192, i64 215, i64 216, i64 247, i64 248, i64 706, i64 710, i64 722, i64 736, i64 741, i64 748, i64 749, i64 750, i64 751, i64 768, i64 885, i64 886, i64 888, i64 891, i64 894, i64 895, i64 896, i64 902, i64 903, i64 904, i64 907, i64 908, i64 909, i64 910, i64 930, i64 931, i64 1014, i64 1015, i64 1154, i64 1155, i64 1160, i64 1162, i64 1328, i64 1329, i64 1367, i64 1369, i64 1370, i64 1377, i64 1416, i64 1425, i64 1470, i64 1471, i64 1472, i64 1473, i64 1475, i64 1476, i64 1478, i64 1479, i64 1480, i64 1488, i64 1515, i64 1520, i64 1523, i64 1552, i64 1563, i64 1568, i64 1642, i64 1646, i64 1748, i64 1749, i64 1757, i64 1759, i64 1769, i64 1770, i64 1789, i64 1791, i64 1792, i64 1808, i64 1867, i64 1869, i64 1970, i64 1984, i64 2038, i64 2042, i64 2043, i64 2048, i64 2094, i64 2112, i64 2140, i64 2208, i64 2227, i64 2276, i64 2404, i64 2406, i64 2416, i64 2417, i64 2436, i64 2437, i64 2445, i64 2447, i64 2449, i64 2451, i64 2473, i64 2474, i64 2481, i64 2482, i64 2483, i64 2486, i64 2490, i64 2492, i64 2501, i64 2503, i64 2505, i64 2507, i64 2511, i64 2519, i64 2520, i64 2524, i64 2526, i64 2527, i64 2532, i64 2534, i64 2546, i64 2561, i64 2564, i64 2565, i64 2571, i64 2575, i64 2577, i64 2579, i64 2601, i64 2602, i64 2609, i64 2610, i64 2612, i64 2613, i64 2615, i64 2616, i64 2618, i64 2620, i64 2621, i64 2622, i64 2627, i64 2631, i64 2633, i64 2635, i64 2638, i64 2641, i64 2642, i64 2649, i64 2653, i64 2654, i64 2655, i64 2662, i64 2678, i64 2689, i64 2692, i64 2693, i64 2702, i64 2703, i64 2706, i64 2707, i64 2729, i64 2730, i64 2737, i64 2738, i64 2740, i64 2741, i64 2746, i64 2748, i64 2758, i64 2759, i64 2762, i64 2763, i64 2766, i64 2768, i64 2769, i64 2784, i64 2788, i64 2790, i64 2800, i64 2817, i64 2820, i64 2821, i64 2829, i64 2831, i64 2833, i64 2835, i64 2857, i64 2858, i64 2865, i64 2866, i64 2868, i64 2869, i64 2874, i64 2876, i64 2885, i64 2887, i64 2889, i64 2891, i64 2894, i64 2902, i64 2904, i64 2908, i64 2910, i64 2911, i64 2916, i64 2918, i64 2928, i64 2929, i64 2930, i64 2946, i64 2948, i64 2949, i64 2955, i64 2958, i64 2961, i64 2962, i64 2966, i64 2969, i64 2971, i64 2972, i64 2973, i64 2974, i64 2976, i64 2979, i64 2981, i64 2984, i64 2987, i64 2990, i64 3002, i64 3006, i64 3011, i64 3014, i64 3017, i64 3018, i64 3022, i64 3024, i64 3025, i64 3031, i64 3032, i64 3046, i64 3056, i64 3072, i64 3076, i64 3077, i64 3085, i64 3086, i64 3089, i64 3090, i64 3113, i64 3114, i64 3130, i64 3133, i64 3141, i64 3142, i64 3145, i64 3146, i64 3150, i64 3157, i64 3159, i64 3160, i64 3162, i64 3168, i64 3172, i64 3174, i64 3184, i64 3201, i64 3204, i64 3205, i64 3213, i64 3214, i64 3217, i64 3218, i64 3241, i64 3242, i64 3252, i64 3253, i64 3258, i64 3260, i64 3269, i64 3270, i64 3273, i64 3274, i64 3278, i64 3285, i64 3287, i64 3294, i64 3295, i64 3296, i64 3300, i64 3302, i64 3312, i64 3313, i64 3315, i64 3329, i64 3332, i64 3333, i64 3341, i64 3342, i64 3345, i64 3346, i64 3387, i64 3389, i64 3397, i64 3398, i64 3401, i64 3402, i64 3407, i64 3415, i64 3416, i64 3424, i64 3428, i64 3430, i64 3440, i64 3450, i64 3456, i64 3458, i64 3460, i64 3461, i64 3479, i64 3482, i64 3506, i64 3507, i64 3516, i64 3517, i64 3518, i64 3520, i64 3527, i64 3530, i64 3531, i64 3535, i64 3541, i64 3542, i64 3543, i64 3544, i64 3552, i64 3558, i64 3568, i64 3570, i64 3572, i64 3585, i64 3643, i64 3648, i64 3663, i64 3664, i64 3674, i64 3713, i64 3715, i64 3716, i64 3717, i64 3719, i64 3721, i64 3722, i64 3723, i64 3725, i64 3726, i64 3732, i64 3736, i64 3737, i64 3744, i64 3745, i64 3748, i64 3749, i64 3750, i64 3751, i64 3752, i64 3754, i64 3756, i64 3757, i64 3770, i64 3771, i64 3774, i64 3776, i64 3781, i64 3782, i64 3783, i64 3784, i64 3790, i64 3792, i64 3802, i64 3804, i64 3808, i64 3840, i64 3841, i64 3864, i64 3866, i64 3872, i64 3882, i64 3893, i64 3894, i64 3895, i64 3896, i64 3897, i64 3898, i64 3902, i64 3912, i64 3913, i64 3949, i64 3953, i64 3973, i64 3974, i64 3992, i64 3993, i64 4029, i64 4038, i64 4039, i64 4096, i64 4170, i64 4176, i64 4254, i64 4256, i64 4294, i64 4295, i64 4296, i64 4301, i64 4302, i64 4304, i64 4347, i64 4348, i64 4681, i64 4682, i64 4686, i64 4688, i64 4695, i64 4696, i64 4697, i64 4698, i64 4702, i64 4704, i64 4745, i64 4746, i64 4750, i64 4752, i64 4785, i64 4786, i64 4790, i64 4792, i64 4799, i64 4800, i64 4801, i64 4802, i64 4806, i64 4808, i64 4823, i64 4824, i64 4881, i64 4882, i64 4886, i64 4888, i64 4955, i64 4957, i64 4960, i64 4992, i64 5008, i64 5024, i64 5109, i64 5121, i64 5741, i64 5743, i64 5760, i64 5761, i64 5787, i64 5792, i64 5867, i64 5870, i64 5881, i64 5888, i64 5901, i64 5902, i64 5909, i64 5920, i64 5941, i64 5952, i64 5972, i64 5984, i64 5997, i64 5998, i64 6001, i64 6002, i64 6004, i64 6016, i64 6100, i64 6103, i64 6104, i64 6108, i64 6110, i64 6112, i64 6122, i64 6155, i64 6158, i64 6160, i64 6170, i64 6176, i64 6264, i64 6272, i64 6315, i64 6320, i64 6390, i64 6400, i64 6431, i64 6432, i64 6444, i64 6448, i64 6460, i64 6470, i64 6510, i64 6512, i64 6517, i64 6528, i64 6572, i64 6576, i64 6602, i64 6608, i64 6618, i64 6656, i64 6684, i64 6688, i64 6751, i64 6752, i64 6781, i64 6783, i64 6794, i64 6800, i64 6810, i64 6823, i64 6824, i64 6832, i64 6846, i64 6912, i64 6988, i64 6992, i64 7002, i64 7019, i64 7028, i64 7040, i64 7156, i64 7168, i64 7224, i64 7232, i64 7242, i64 7245, i64 7294, i64 7376, i64 7379, i64 7380, i64 7415, i64 7416, i64 7418, i64 7424, i64 7670, i64 7676, i64 7958, i64 7960, i64 7966, i64 7968, i64 8006, i64 8008, i64 8014, i64 8016, i64 8024, i64 8025, i64 8026, i64 8027, i64 8028, i64 8029, i64 8030, i64 8031, i64 8062, i64 8064, i64 8117, i64 8118, i64 8125, i64 8126, i64 8127, i64 8130, i64 8133, i64 8134, i64 8141, i64 8144, i64 8148, i64 8150, i64 8156, i64 8160, i64 8173, i64 8178, i64 8181, i64 8182, i64 8189, i64 8255, i64 8257, i64 8276, i64 8277, i64 8305, i64 8306, i64 8319, i64 8320, i64 8336, i64 8349, i64 8400, i64 8413, i64 8417, i64 8418, i64 8421, i64 8433, i64 8450, i64 8451, i64 8455, i64 8456, i64 8458, i64 8468, i64 8469, i64 8470, i64 8473, i64 8478, i64 8484, i64 8485, i64 8486, i64 8487, i64 8488, i64 8489, i64 8490, i64 8494, i64 8495, i64 8506, i64 8508, i64 8512, i64 8517, i64 8522, i64 8526, i64 8527, i64 8544, i64 8585, i64 11264, i64 11311, i64 11312, i64 11359, i64 11360, i64 11493, i64 11499, i64 11508, i64 11520, i64 11558, i64 11559, i64 11560, i64 11565, i64 11566, i64 11568, i64 11624, i64 11631, i64 11632, i64 11647, i64 11671, i64 11680, i64 11687, i64 11688, i64 11695, i64 11696, i64 11703, i64 11704, i64 11711, i64 11712, i64 11719, i64 11720, i64 11727, i64 11728, i64 11735, i64 11736, i64 11743, i64 11744, i64 11776, i64 12293, i64 12296, i64 12321, i64 12336, i64 12337, i64 12342, i64 12344, i64 12349, i64 12353, i64 12439, i64 12441, i64 12443, i64 12445, i64 12448, i64 12449, i64 12539, i64 12540, i64 12544, i64 12549, i64 12590, i64 12593, i64 12687, i64 12704, i64 12731, i64 12784, i64 12800, i64 13312, i64 19894, i64 19968, i64 40909, i64 40960, i64 42125, i64 42192, i64 42238, i64 42240, i64 42509, i64 42512, i64 42540, i64 42560, i64 42608, i64 42612, i64 42622, i64 42623, i64 42654, i64 42655, i64 42738, i64 42775, i64 42784, i64 42786, i64 42889, i64 42891, i64 42895, i64 42896, i64 42926, i64 42928, i64 42930, i64 42999, i64 43048, i64 43072, i64 43124, i64 43136, i64 43205, i64 43216, i64 43226, i64 43232, i64 43256, i64 43259, i64 43260, i64 43264, i64 43310, i64 43312, i64 43348, i64 43360, i64 43389, i64 43392, i64 43457, i64 43471, i64 43482, i64 43488, i64 43519, i64 43520, i64 43575, i64 43584, i64 43598, i64 43600, i64 43610, i64 43616, i64 43639, i64 43642, i64 43715, i64 43739, i64 43742, i64 43744, i64 43760, i64 43762, i64 43767, i64 43777, i64 43783, i64 43785, i64 43791, i64 43793, i64 43799, i64 43808, i64 43815, i64 43816, i64 43823, i64 43824, i64 43867, i64 43868, i64 43872, i64 43876, i64 43878, i64 43968, i64 44011, i64 44012, i64 44014, i64 44016, i64 44026, i64 44032, i64 55204, i64 55216, i64 55239, i64 55243, i64 55292, i64 63744, i64 64110, i64 64112, i64 64218, i64 64256, i64 64263, i64 64275, i64 64280, i64 64285, i64 64297, i64 64298, i64 64311, i64 64312, i64 64317, i64 64318, i64 64319, i64 64320, i64 64322, i64 64323, i64 64325, i64 64326, i64 64434, i64 64467, i64 64606, i64 64612, i64 64830, i64 64848, i64 64912, i64 64914, i64 64968, i64 65008, i64 65018, i64 65024, i64 65040, i64 65056, i64 65070, i64 65075, i64 65077, i64 65101, i64 65104, i64 65137, i64 65138, i64 65139, i64 65140, i64 65143, i64 65144, i64 65145, i64 65146, i64 65147, i64 65148, i64 65149, i64 65150, i64 65151, i64 65277, i64 65296, i64 65306, i64 65313, i64 65339, i64 65343, i64 65344, i64 65345, i64 65371, i64 65382, i64 65471, i64 65474, i64 65480, i64 65482, i64 65488, i64 65490, i64 65496, i64 65498, i64 65501, i64 65536, i64 65548, i64 65549, i64 65575, i64 65576, i64 65595, i64 65596, i64 65598, i64 65599, i64 65614, i64 65616, i64 65630, i64 65664, i64 65787, i64 65856, i64 65909, i64 66045, i64 66046, i64 66176, i64 66205, i64 66208, i64 66257, i64 66272, i64 66273, i64 66304, i64 66336, i64 66352, i64 66379, i64 66384, i64 66427, i64 66432, i64 66462, i64 66464, i64 66500, i64 66504, i64 66512, i64 66513, i64 66518, i64 66560, i64 66718, i64 66720, i64 66730, i64 66816, i64 66856, i64 66864, i64 66916, i64 67072, i64 67383, i64 67392, i64 67414, i64 67424, i64 67432, i64 67584, i64 67590, i64 67592, i64 67593, i64 67594, i64 67638, i64 67639, i64 67641, i64 67644, i64 67645, i64 67647, i64 67670, i64 67680, i64 67703, i64 67712, i64 67743, i64 67840, i64 67862, i64 67872, i64 67898, i64 67968, i64 68024, i64 68030, i64 68032, i64 68096, i64 68100, i64 68101, i64 68103, i64 68108, i64 68116, i64 68117, i64 68120, i64 68121, i64 68148, i64 68152, i64 68155, i64 68159, i64 68160, i64 68192, i64 68221, i64 68224, i64 68253, i64 68288, i64 68296, i64 68297, i64 68327, i64 68352, i64 68406, i64 68416, i64 68438, i64 68448, i64 68467, i64 68480, i64 68498, i64 68608, i64 68681, i64 69632, i64 69703, i64 69734, i64 69744, i64 69759, i64 69819, i64 69840, i64 69865, i64 69872, i64 69882, i64 69888, i64 69941, i64 69942, i64 69952, i64 69968, i64 70004, i64 70006, i64 70007, i64 70016, i64 70085, i64 70096, i64 70107, i64 70144, i64 70162, i64 70163, i64 70200, i64 70320, i64 70379, i64 70384, i64 70394, i64 70401, i64 70404, i64 70405, i64 70413, i64 70415, i64 70417, i64 70419, i64 70441, i64 70442, i64 70449, i64 70450, i64 70452, i64 70453, i64 70458, i64 70460, i64 70469, i64 70471, i64 70473, i64 70475, i64 70478, i64 70487, i64 70488, i64 70493, i64 70500, i64 70502, i64 70509, i64 70512, i64 70517, i64 70784, i64 70854, i64 70855, i64 70856, i64 70864, i64 70874, i64 71040, i64 71094, i64 71096, i64 71105, i64 71168, i64 71233, i64 71236, i64 71237, i64 71248, i64 71258, i64 71296, i64 71352, i64 71360, i64 71370, i64 71840, i64 71914, i64 71935, i64 71936, i64 72384, i64 72441, i64 73728, i64 74649, i64 74752, i64 74863, i64 77824, i64 78895, i64 92160, i64 92729, i64 92736, i64 92767, i64 92768, i64 92778, i64 92880, i64 92910, i64 92912, i64 92917, i64 92928, i64 92983, i64 92992, i64 92996, i64 93008, i64 93018, i64 93027, i64 93048, i64 93053, i64 93072, i64 93952, i64 94021, i64 94032, i64 94079, i64 94095, i64 94112, i64 110592, i64 110594, i64 113664, i64 113771, i64 113776, i64 113789, i64 113792, i64 113801, i64 113808, i64 113818, i64 113821, i64 113823, i64 119141, i64 119146, i64 119149, i64 119155, i64 119163, i64 119171, i64 119173, i64 119180, i64 119210, i64 119214, i64 119362, i64 119365, i64 119808, i64 119893, i64 119894, i64 119965, i64 119966, i64 119968, i64 119970, i64 119971, i64 119973, i64 119975, i64 119977, i64 119981, i64 119982, i64 119994, i64 119995, i64 119996, i64 119997, i64 120004, i64 120005, i64 120070, i64 120071, i64 120075, i64 120077, i64 120085, i64 120086, i64 120093, i64 120094, i64 120122, i64 120123, i64 120127, i64 120128, i64 120133, i64 120134, i64 120135, i64 120138, i64 120145, i64 120146, i64 120486, i64 120488, i64 120513, i64 120514, i64 120539, i64 120540, i64 120571, i64 120572, i64 120597, i64 120598, i64 120629, i64 120630, i64 120655, i64 120656, i64 120687, i64 120688, i64 120713, i64 120714, i64 120745, i64 120746, i64 120771, i64 120772, i64 120780, i64 120782, i64 120832, i64 124928, i64 125125, i64 125136, i64 125143, i64 126464, i64 126468, i64 126469, i64 126496, i64 126497, i64 126499, i64 126500, i64 126501, i64 126503, i64 126504, i64 126505, i64 126515, i64 126516, i64 126520, i64 126521, i64 126522, i64 126523, i64 126524, i64 126530, i64 126531, i64 126535, i64 126536, i64 126537, i64 126538, i64 126539, i64 126540, i64 126541, i64 126544, i64 126545, i64 126547, i64 126548, i64 126549, i64 126551, i64 126552, i64 126553, i64 126554, i64 126555, i64 126556, i64 126557, i64 126558, i64 126559, i64 126560, i64 126561, i64 126563, i64 126564, i64 126565, i64 126567, i64 126571, i64 126572, i64 126579, i64 126580, i64 126584, i64 126585, i64 126589, i64 126590, i64 126591, i64 126592, i64 126602, i64 126603, i64 126620, i64 126625, i64 126628, i64 126629, i64 126634, i64 126635, i64 126652, i64 131072, i64 173783, i64 173824, i64 177973, i64 177984, i64 178206, i64 194560, i64 195102, i64 917760, i64 918000], align 16
@.str.41 = private unnamed_addr constant [13 x i8] c"_Perl_IDCont\00", align 1
@PL_utf8_idcont = external global ptr, align 8
@.str.42 = private unnamed_addr constant [11 x i8] c"IdContinue\00", align 1
@.str.43 = private unnamed_addr constant [12 x i8] c"XIdContinue\00", align 1
@PL_utf8_mark = external global ptr, align 8
@.str.44 = private unnamed_addr constant [4 x i8] c"IsM\00", align 1
@.str.45 = private unnamed_addr constant [65 x i8] c"Operation \22%s\22 returns its argument for UTF-16 surrogate U+%04lX\00", align 1
@.str.46 = private unnamed_addr constant [71 x i8] c"Operation \22%s\22 returns its argument for non-Unicode code point 0x%04lX\00", align 1
@.str.47 = private unnamed_addr constant [9 x i8] c"SPECIALS\00", align 1
@.str.48 = private unnamed_addr constant [67 x i8] c"Can't do %s(\22\\x{%lX}\22) on non-UTF-8 locale; resolved to \22\\x{%lX}\22.\00", align 1
@.str.49 = private unnamed_addr constant [4 x i8] c"\E1\BA\9E\00", align 1
@.str.50 = private unnamed_addr constant [75 x i8] c"Can't do fc(\22\\x{1E9E}\22) on non-UTF-8 locale; resolved to \22\\x{17F}\\x{17F}\22.\00", align 1
@.str.51 = private unnamed_addr constant [4 x i8] c"\EF\AC\85\00", align 1
@.str.52 = private unnamed_addr constant [69 x i8] c"Can't do fc(\22\\x{FB05}\22) on non-UTF-8 locale; resolved to \22\\x{FB06}\22.\00", align 1
@.str.53 = private unnamed_addr constant [4 x i8] c"\EF\AC\86\00", align 1
@PL_curpm = external local_unnamed_addr global ptr, align 8
@PL_stack_sp = external local_unnamed_addr global ptr, align 8
@PL_curstackinfo = external local_unnamed_addr global ptr, align 8
@PL_stack_base = external local_unnamed_addr global ptr, align 8
@PL_curstack = external local_unnamed_addr global ptr, align 8
@PL_stack_max = external local_unnamed_addr global ptr, align 8
@PL_subname = external local_unnamed_addr global ptr, align 8
@PL_parser = external local_unnamed_addr global ptr, align 8
@.str.54 = private unnamed_addr constant [9 x i8] c"SWASHNEW\00", align 1
@PL_errgv = external local_unnamed_addr global ptr, align 8
@PL_tainted = external global i8, align 1
@PL_markstack_ptr = external local_unnamed_addr global ptr, align 8
@PL_markstack_max = external local_unnamed_addr global ptr, align 8
@.str.55 = private unnamed_addr constant [45 x i8] c"Can't find Unicode property definition \22%-p\22\00", align 1
@.str.56 = private unnamed_addr constant [13 x i8] c"USER_DEFINED\00", align 1
@.str.57 = private unnamed_addr constant [2 x i8] c"V\00", align 1
@.str.58 = private unnamed_addr constant [38 x i8] c"panic: hv_store() unexpectedly failed\00", align 1
@PL_last_swash_hv = external local_unnamed_addr global ptr, align 8
@PL_last_swash_klen = external local_unnamed_addr global i8, align 1
@PL_last_swash_key = external global [12 x i8], align 1
@PL_last_swash_tmps = external local_unnamed_addr global ptr, align 8
@PL_last_swash_slen = external local_unnamed_addr global i64, align 8
@.str.59 = private unnamed_addr constant [80 x i8] c"panic: swash_fetch got improper swatch, svp=%p, tmps=%p, slen=%lu, needents=%lu\00", align 1
@.str.60 = private unnamed_addr constant [78 x i8] c"panic: swash_fetch got swatch of unexpected bit width, slen=%lu, needents=%lu\00", align 1
@.str.61 = private unnamed_addr constant [5 x i8] c"BITS\00", align 1
@.str.62 = private unnamed_addr constant [5 x i8] c"NONE\00", align 1
@.str.63 = private unnamed_addr constant [5 x i8] c"TYPE\00", align 1
@.str.64 = private unnamed_addr constant [7 x i8] c"EXTRAS\00", align 1
@.str.65 = private unnamed_addr constant [5 x i8] c"LIST\00", align 1
@.str.66 = private unnamed_addr constant [10 x i8] c"INVERT_IT\00", align 1
@.str.67 = private unnamed_addr constant [42 x i8] c"panic: swatch_get doesn't expect bits %lu\00", align 1
@.str.68 = private unnamed_addr constant [70 x i8] c"panic: swatch_get found swatch size mismatch, bits=%lu, otherbits=%lu\00", align 1
@.str.69 = private unnamed_addr constant [38 x i8] c"panic: swatch_get got improper swatch\00", align 1
@.str.70 = private unnamed_addr constant [67 x i8] c"panic: swatch_get found swatch length mismatch, slen=%lu, olen=%lu\00", align 1
@PL_charclass = external local_unnamed_addr constant [0 x i32], align 4
@.str.71 = private unnamed_addr constant [25 x i8] c"%s: illegal mapping '%s'\00", align 1
@.str.72 = private unnamed_addr constant [52 x i8] c"panic: swash_inversion_hash doesn't expect bits %lu\00", align 1
@.str.73 = private unnamed_addr constant [83 x i8] c"panic: value returned from hv_iternextsv() unexpectedly is not a string, flags=%lu\00", align 1
@.str.74 = private unnamed_addr constant [38 x i8] c"panic: av_fetch() unexpectedly failed\00", align 1
@.str.75 = private unnamed_addr constant [31 x i8] c"panic: unexpected entry for %s\00", align 1
@.str.76 = private unnamed_addr constant [70 x i8] c"panic: Expecting a valid count of elements at start of inversion list\00", align 1
@.str.77 = private unnamed_addr constant [56 x i8] c"panic: Expecting a valid 0th element for inversion list\00", align 1
@.str.78 = private unnamed_addr constant [50 x i8] c"panic: Expecting %lu more elements than available\00", align 1
@.str.79 = private unnamed_addr constant [51 x i8] c"panic: Expecting a valid element in inversion list\00", align 1
@.str.80 = private unnamed_addr constant [86 x i8] c"panic: _swash_to_invlist only operates on boolean properties, bits=%lu, otherbits=%lu\00", align 1
@.str.81 = private unnamed_addr constant [6 x i8] c"print\00", align 1
@.str.82 = private unnamed_addr constant [46 x i8] c"Unicode surrogate U+%04lX is illegal in UTF-8\00", align 1
@.str.83 = private unnamed_addr constant [2 x i8] c"\\\00", align 1
@.str.84 = private unnamed_addr constant [8 x i8] c"\\x{%lx}\00", align 1
@.str.85 = private unnamed_addr constant [4 x i8] c"...\00", align 1

; Function Attrs: nofree noinline nounwind optsize memory(read, inaccessiblemem: none) uwtable
define dso_local zeroext i1 @Perl_is_invariant_string(ptr noundef readonly %0, i64 noundef %1) local_unnamed_addr #0 !prof !35 {
  %3 = icmp eq i64 %1, 0
  br i1 %3, label %4, label %6, !prof !36

4:                                                ; preds = %2
  %5 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #19
  br label %6

6:                                                ; preds = %2, %4
  %7 = phi i64 [ %5, %4 ], [ %1, %2 ]
  %8 = getelementptr inbounds i8, ptr %0, i64 %7
  %9 = icmp sgt i64 %7, 0
  br i1 %9, label %10, label %17, !prof !37

10:                                               ; preds = %6, %14
  %11 = phi ptr [ %15, %14 ], [ %0, %6 ]
  %12 = load i8, ptr %11, align 1, !tbaa !38
  %13 = icmp sgt i8 %12, -1
  br i1 %13, label %14, label %17, !prof !41

14:                                               ; preds = %10
  %15 = getelementptr inbounds i8, ptr %11, i64 1
  %16 = icmp ult ptr %15, %8
  br i1 %16, label %10, label %17, !prof !42, !llvm.loop !43

17:                                               ; preds = %14, %10, %6
  %18 = phi ptr [ %0, %6 ], [ %11, %10 ], [ %15, %14 ]
  %19 = icmp eq ptr %18, %8
  ret i1 %19
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(argmem: read)
declare i64 @strlen(ptr nocapture noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @Perl_uvoffuni_to_utf8_flags(ptr noundef writeonly %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #3 !prof !45 {
  %4 = icmp ult i64 %1, 128
  br i1 %4, label %5, label %8, !prof !46

5:                                                ; preds = %3
  %6 = trunc i64 %1 to i8
  %7 = getelementptr inbounds i8, ptr %0, i64 1
  store i8 %6, ptr %0, align 1, !tbaa !38
  br label %245

8:                                                ; preds = %3
  %9 = icmp ugt i64 %1, 55295
  br i1 %9, label %10, label %53

10:                                               ; preds = %8
  %11 = tail call zeroext i1 @Perl_ckwarn_d(i32 noundef 3223602) #20
  br i1 %11, label %12, label %64

12:                                               ; preds = %10
  %13 = icmp ult i64 %1, 57344
  br i1 %13, label %14, label %21

14:                                               ; preds = %12
  %15 = and i64 %2, 1
  %16 = icmp eq i64 %15, 0
  br i1 %16, label %18, label %17

17:                                               ; preds = %14
  tail call void (i32, ptr, ...) @Perl_ck_warner_d(i32 noundef 50, ptr noundef nonnull @.str, i64 noundef %1) #20
  br label %18

18:                                               ; preds = %17, %14
  %19 = and i64 %2, 16
  %20 = icmp eq i64 %19, 0
  br i1 %20, label %66, label %245

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
  tail call void (i32, ptr, ...) @Perl_ck_warner_d(i32 noundef 48, ptr noundef nonnull @.str.1, i64 noundef %1) #20
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
  br i1 %39, label %80, label %245

40:                                               ; preds = %21
  %41 = add nsw i64 %1, -64976
  %42 = icmp ult i64 %41, 32
  %43 = and i64 %1, 65534
  %44 = icmp eq i64 %43, 65534
  %45 = or i1 %42, %44
  br i1 %45, label %46, label %64

46:                                               ; preds = %40
  %47 = and i64 %2, 2
  %48 = icmp eq i64 %47, 0
  br i1 %48, label %50, label %49

49:                                               ; preds = %46
  tail call void (i32, ptr, ...) @Perl_ck_warner_d(i32 noundef 49, ptr noundef nonnull @.str.2, i64 noundef %1) #20
  br label %50

50:                                               ; preds = %49, %46
  %51 = and i64 %2, 32
  %52 = icmp eq i64 %51, 0
  br i1 %52, label %64, label %245

53:                                               ; preds = %8
  %54 = icmp ult i64 %1, 2048
  br i1 %54, label %55, label %66

55:                                               ; preds = %53
  %56 = lshr i64 %1, 6
  %57 = trunc i64 %56 to i8
  %58 = or disjoint i8 %57, -64
  %59 = getelementptr inbounds i8, ptr %0, i64 1
  store i8 %58, ptr %0, align 1, !tbaa !38
  %60 = trunc i64 %1 to i8
  %61 = and i8 %60, 63
  %62 = or disjoint i8 %61, -128
  %63 = getelementptr inbounds i8, ptr %0, i64 2
  store i8 %62, ptr %59, align 1, !tbaa !38
  br label %245

64:                                               ; preds = %40, %50, %10
  %65 = icmp ult i64 %1, 65536
  br i1 %65, label %66, label %80

66:                                               ; preds = %53, %18, %64
  %67 = lshr i64 %1, 12
  %68 = trunc i64 %67 to i8
  %69 = or disjoint i8 %68, -32
  %70 = getelementptr inbounds i8, ptr %0, i64 1
  store i8 %69, ptr %0, align 1, !tbaa !38
  %71 = lshr i64 %1, 6
  %72 = trunc i64 %71 to i8
  %73 = and i8 %72, 63
  %74 = or disjoint i8 %73, -128
  %75 = getelementptr inbounds i8, ptr %0, i64 2
  store i8 %74, ptr %70, align 1, !tbaa !38
  %76 = trunc i64 %1 to i8
  %77 = and i8 %76, 63
  %78 = or disjoint i8 %77, -128
  %79 = getelementptr inbounds i8, ptr %0, i64 3
  store i8 %78, ptr %75, align 1, !tbaa !38
  br label %245

80:                                               ; preds = %35, %64
  %81 = icmp ult i64 %1, 2097152
  br i1 %81, label %82, label %101

82:                                               ; preds = %80
  %83 = lshr i64 %1, 18
  %84 = trunc i64 %83 to i8
  %85 = or disjoint i8 %84, -16
  %86 = getelementptr inbounds i8, ptr %0, i64 1
  store i8 %85, ptr %0, align 1, !tbaa !38
  %87 = lshr i64 %1, 12
  %88 = trunc i64 %87 to i8
  %89 = and i8 %88, 63
  %90 = or disjoint i8 %89, -128
  %91 = getelementptr inbounds i8, ptr %0, i64 2
  store i8 %90, ptr %86, align 1, !tbaa !38
  %92 = lshr i64 %1, 6
  %93 = trunc i64 %92 to i8
  %94 = and i8 %93, 63
  %95 = or disjoint i8 %94, -128
  %96 = getelementptr inbounds i8, ptr %0, i64 3
  store i8 %95, ptr %91, align 1, !tbaa !38
  %97 = trunc i64 %1 to i8
  %98 = and i8 %97, 63
  %99 = or disjoint i8 %98, -128
  %100 = getelementptr inbounds i8, ptr %0, i64 4
  store i8 %99, ptr %96, align 1, !tbaa !38
  br label %245

101:                                              ; preds = %80
  %102 = icmp ult i64 %1, 67108864
  br i1 %102, label %103, label %127

103:                                              ; preds = %101
  %104 = lshr i64 %1, 24
  %105 = trunc i64 %104 to i8
  %106 = or disjoint i8 %105, -8
  %107 = getelementptr inbounds i8, ptr %0, i64 1
  store i8 %106, ptr %0, align 1, !tbaa !38
  %108 = lshr i64 %1, 18
  %109 = trunc i64 %108 to i8
  %110 = and i8 %109, 63
  %111 = or disjoint i8 %110, -128
  %112 = getelementptr inbounds i8, ptr %0, i64 2
  store i8 %111, ptr %107, align 1, !tbaa !38
  %113 = lshr i64 %1, 12
  %114 = trunc i64 %113 to i8
  %115 = and i8 %114, 63
  %116 = or disjoint i8 %115, -128
  %117 = getelementptr inbounds i8, ptr %0, i64 3
  store i8 %116, ptr %112, align 1, !tbaa !38
  %118 = lshr i64 %1, 6
  %119 = trunc i64 %118 to i8
  %120 = and i8 %119, 63
  %121 = or disjoint i8 %120, -128
  %122 = getelementptr inbounds i8, ptr %0, i64 4
  store i8 %121, ptr %117, align 1, !tbaa !38
  %123 = trunc i64 %1 to i8
  %124 = and i8 %123, 63
  %125 = or disjoint i8 %124, -128
  %126 = getelementptr inbounds i8, ptr %0, i64 5
  store i8 %125, ptr %122, align 1, !tbaa !38
  br label %245

127:                                              ; preds = %101
  %128 = icmp ult i64 %1, 2147483648
  br i1 %128, label %129, label %158

129:                                              ; preds = %127
  %130 = lshr i64 %1, 30
  %131 = trunc i64 %130 to i8
  %132 = or disjoint i8 %131, -4
  %133 = getelementptr inbounds i8, ptr %0, i64 1
  store i8 %132, ptr %0, align 1, !tbaa !38
  %134 = lshr i64 %1, 24
  %135 = trunc i64 %134 to i8
  %136 = and i8 %135, 63
  %137 = or disjoint i8 %136, -128
  %138 = getelementptr inbounds i8, ptr %0, i64 2
  store i8 %137, ptr %133, align 1, !tbaa !38
  %139 = lshr i64 %1, 18
  %140 = trunc i64 %139 to i8
  %141 = and i8 %140, 63
  %142 = or disjoint i8 %141, -128
  %143 = getelementptr inbounds i8, ptr %0, i64 3
  store i8 %142, ptr %138, align 1, !tbaa !38
  %144 = lshr i64 %1, 12
  %145 = trunc i64 %144 to i8
  %146 = and i8 %145, 63
  %147 = or disjoint i8 %146, -128
  %148 = getelementptr inbounds i8, ptr %0, i64 4
  store i8 %147, ptr %143, align 1, !tbaa !38
  %149 = lshr i64 %1, 6
  %150 = trunc i64 %149 to i8
  %151 = and i8 %150, 63
  %152 = or disjoint i8 %151, -128
  %153 = getelementptr inbounds i8, ptr %0, i64 5
  store i8 %152, ptr %148, align 1, !tbaa !38
  %154 = trunc i64 %1 to i8
  %155 = and i8 %154, 63
  %156 = or disjoint i8 %155, -128
  %157 = getelementptr inbounds i8, ptr %0, i64 6
  store i8 %156, ptr %153, align 1, !tbaa !38
  br label %245

158:                                              ; preds = %127
  %159 = icmp ult i64 %1, 68719476736
  %160 = getelementptr inbounds i8, ptr %0, i64 1
  br i1 %159, label %161, label %190

161:                                              ; preds = %158
  store i8 -2, ptr %0, align 1, !tbaa !38
  %162 = lshr i64 %1, 30
  %163 = trunc i64 %162 to i8
  %164 = or disjoint i8 %163, -128
  %165 = getelementptr inbounds i8, ptr %0, i64 2
  store i8 %164, ptr %160, align 1, !tbaa !38
  %166 = lshr i64 %1, 24
  %167 = trunc i64 %166 to i8
  %168 = and i8 %167, 63
  %169 = or disjoint i8 %168, -128
  %170 = getelementptr inbounds i8, ptr %0, i64 3
  store i8 %169, ptr %165, align 1, !tbaa !38
  %171 = lshr i64 %1, 18
  %172 = trunc i64 %171 to i8
  %173 = and i8 %172, 63
  %174 = or disjoint i8 %173, -128
  %175 = getelementptr inbounds i8, ptr %0, i64 4
  store i8 %174, ptr %170, align 1, !tbaa !38
  %176 = lshr i64 %1, 12
  %177 = trunc i64 %176 to i8
  %178 = and i8 %177, 63
  %179 = or disjoint i8 %178, -128
  %180 = getelementptr inbounds i8, ptr %0, i64 5
  store i8 %179, ptr %175, align 1, !tbaa !38
  %181 = lshr i64 %1, 6
  %182 = trunc i64 %181 to i8
  %183 = and i8 %182, 63
  %184 = or disjoint i8 %183, -128
  %185 = getelementptr inbounds i8, ptr %0, i64 6
  store i8 %184, ptr %180, align 1, !tbaa !38
  %186 = trunc i64 %1 to i8
  %187 = and i8 %186, 63
  %188 = or disjoint i8 %187, -128
  %189 = getelementptr inbounds i8, ptr %0, i64 7
  store i8 %188, ptr %185, align 1, !tbaa !38
  br label %245

190:                                              ; preds = %158
  store i8 -1, ptr %0, align 1, !tbaa !38
  %191 = getelementptr inbounds i8, ptr %0, i64 2
  store i8 -128, ptr %160, align 1, !tbaa !38
  %192 = lshr i64 %1, 60
  %193 = trunc i64 %192 to i8
  %194 = or disjoint i8 %193, -128
  %195 = getelementptr inbounds i8, ptr %0, i64 3
  store i8 %194, ptr %191, align 1, !tbaa !38
  %196 = lshr i64 %1, 54
  %197 = trunc i64 %196 to i8
  %198 = and i8 %197, 63
  %199 = or disjoint i8 %198, -128
  %200 = getelementptr inbounds i8, ptr %0, i64 4
  store i8 %199, ptr %195, align 1, !tbaa !38
  %201 = lshr i64 %1, 48
  %202 = trunc i64 %201 to i8
  %203 = and i8 %202, 63
  %204 = or disjoint i8 %203, -128
  %205 = getelementptr inbounds i8, ptr %0, i64 5
  store i8 %204, ptr %200, align 1, !tbaa !38
  %206 = lshr i64 %1, 42
  %207 = trunc i64 %206 to i8
  %208 = and i8 %207, 63
  %209 = or disjoint i8 %208, -128
  %210 = getelementptr inbounds i8, ptr %0, i64 6
  store i8 %209, ptr %205, align 1, !tbaa !38
  %211 = lshr i64 %1, 36
  %212 = trunc i64 %211 to i8
  %213 = and i8 %212, 63
  %214 = or disjoint i8 %213, -128
  %215 = getelementptr inbounds i8, ptr %0, i64 7
  store i8 %214, ptr %210, align 1, !tbaa !38
  %216 = lshr i64 %1, 30
  %217 = trunc i64 %216 to i8
  %218 = and i8 %217, 63
  %219 = or disjoint i8 %218, -128
  %220 = getelementptr inbounds i8, ptr %0, i64 8
  store i8 %219, ptr %215, align 1, !tbaa !38
  %221 = lshr i64 %1, 24
  %222 = trunc i64 %221 to i8
  %223 = and i8 %222, 63
  %224 = or disjoint i8 %223, -128
  %225 = getelementptr inbounds i8, ptr %0, i64 9
  store i8 %224, ptr %220, align 1, !tbaa !38
  %226 = lshr i64 %1, 18
  %227 = trunc i64 %226 to i8
  %228 = and i8 %227, 63
  %229 = or disjoint i8 %228, -128
  %230 = getelementptr inbounds i8, ptr %0, i64 10
  store i8 %229, ptr %225, align 1, !tbaa !38
  %231 = lshr i64 %1, 12
  %232 = trunc i64 %231 to i8
  %233 = and i8 %232, 63
  %234 = or disjoint i8 %233, -128
  %235 = getelementptr inbounds i8, ptr %0, i64 11
  store i8 %234, ptr %230, align 1, !tbaa !38
  %236 = lshr i64 %1, 6
  %237 = trunc i64 %236 to i8
  %238 = and i8 %237, 63
  %239 = or disjoint i8 %238, -128
  %240 = getelementptr inbounds i8, ptr %0, i64 12
  store i8 %239, ptr %235, align 1, !tbaa !38
  %241 = trunc i64 %1 to i8
  %242 = and i8 %241, 63
  %243 = or disjoint i8 %242, -128
  %244 = getelementptr inbounds i8, ptr %0, i64 13
  store i8 %243, ptr %240, align 1, !tbaa !38
  br label %245

245:                                              ; preds = %50, %32, %35, %18, %190, %161, %129, %103, %82, %66, %55, %5
  %246 = phi ptr [ %7, %5 ], [ %63, %55 ], [ %79, %66 ], [ %100, %82 ], [ %126, %103 ], [ %157, %129 ], [ %189, %161 ], [ %244, %190 ], [ null, %18 ], [ null, %35 ], [ null, %32 ], [ null, %50 ]
  ret ptr %246
}

; Function Attrs: optsize
declare zeroext i1 @Perl_ckwarn_d(i32 noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare void @Perl_ck_warner_d(i32 noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @Perl_uvchr_to_utf8(ptr noundef %0, i64 noundef %1) local_unnamed_addr #3 !prof !47 {
  %3 = tail call ptr @Perl_uvoffuni_to_utf8_flags(ptr noundef %0, i64 noundef %1, i64 noundef 0) #21
  ret ptr %3
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @Perl_uvchr_to_utf8_flags(ptr noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #3 !prof !47 {
  %4 = tail call ptr @Perl_uvoffuni_to_utf8_flags(ptr noundef %0, i64 noundef %1, i64 noundef %2) #21
  ret ptr %4
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef zeroext i1 @Perl_is_utf8_string(ptr noundef %0, i64 noundef %1) local_unnamed_addr #3 !prof !47 {
  %3 = icmp eq i64 %1, 0
  br i1 %3, label %4, label %6

4:                                                ; preds = %2
  %5 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #19
  br label %6

6:                                                ; preds = %2, %4
  %7 = phi i64 [ %5, %4 ], [ %1, %2 ]
  %8 = getelementptr inbounds i8, ptr %0, i64 %7
  %9 = ptrtoint ptr %8 to i64
  br label %10

10:                                               ; preds = %100, %6
  %11 = phi ptr [ %0, %6 ], [ %103, %100 ]
  %12 = icmp uge ptr %11, %8
  br i1 %12, label %104, label %13

13:                                               ; preds = %10
  %14 = load i8, ptr %11, align 1, !tbaa !38
  %15 = icmp sgt i8 %14, -1
  br i1 %15, label %100, label %16

16:                                               ; preds = %13
  %17 = zext i8 %14 to i64
  %18 = ptrtoint ptr %11 to i64
  %19 = sub i64 %9, %18
  %20 = getelementptr inbounds [0 x i8], ptr @PL_utf8skip, i64 0, i64 %17
  %21 = load i8, ptr %20, align 1, !tbaa !38
  %22 = zext i8 %21 to i64
  %23 = icmp slt i64 %19, %22
  br i1 %23, label %104, label %24

24:                                               ; preds = %16
  %25 = icmp ult i8 %21, 5
  br i1 %25, label %26, label %98

26:                                               ; preds = %24
  %27 = add nsw i8 %14, 62
  %28 = icmp ult i8 %27, 30
  br i1 %28, label %29, label %34

29:                                               ; preds = %26
  %30 = getelementptr inbounds i8, ptr %11, i64 1
  %31 = load i8, ptr %30, align 1, !tbaa !38
  %32 = and i8 %31, -64
  %33 = icmp eq i8 %32, -128
  br i1 %33, label %100, label %104

34:                                               ; preds = %26
  %35 = icmp eq i8 %14, -32
  br i1 %35, label %36, label %47

36:                                               ; preds = %34
  %37 = getelementptr inbounds i8, ptr %11, i64 1
  %38 = load i8, ptr %37, align 1, !tbaa !38
  %39 = and i8 %38, -32
  %40 = icmp eq i8 %39, -96
  br i1 %40, label %41, label %104

41:                                               ; preds = %36
  %42 = getelementptr inbounds i8, ptr %11, i64 2
  %43 = load i8, ptr %42, align 1, !tbaa !38
  %44 = freeze i8 %43
  %45 = and i8 %44, -64
  %46 = icmp eq i8 %45, -128
  br i1 %46, label %100, label %104

47:                                               ; preds = %34
  %48 = add nsw i8 %14, 31
  %49 = icmp ult i8 %48, 15
  br i1 %49, label %50, label %61

50:                                               ; preds = %47
  %51 = getelementptr inbounds i8, ptr %11, i64 1
  %52 = load i8, ptr %51, align 1, !tbaa !38
  %53 = and i8 %52, -64
  %54 = icmp eq i8 %53, -128
  br i1 %54, label %55, label %104

55:                                               ; preds = %50
  %56 = getelementptr inbounds i8, ptr %11, i64 2
  %57 = load i8, ptr %56, align 1, !tbaa !38
  %58 = freeze i8 %57
  %59 = and i8 %58, -64
  %60 = icmp eq i8 %59, -128
  br i1 %60, label %100, label %104

61:                                               ; preds = %47
  %62 = icmp eq i8 %14, -16
  br i1 %62, label %63, label %79

63:                                               ; preds = %61
  %64 = getelementptr inbounds i8, ptr %11, i64 1
  %65 = load i8, ptr %64, align 1, !tbaa !38
  %66 = add i8 %65, 112
  %67 = icmp ult i8 %66, 48
  br i1 %67, label %68, label %104

68:                                               ; preds = %63
  %69 = getelementptr inbounds i8, ptr %11, i64 2
  %70 = load i8, ptr %69, align 1, !tbaa !38
  %71 = and i8 %70, -64
  %72 = icmp eq i8 %71, -128
  br i1 %72, label %73, label %104

73:                                               ; preds = %68
  %74 = getelementptr inbounds i8, ptr %11, i64 3
  %75 = load i8, ptr %74, align 1, !tbaa !38
  %76 = freeze i8 %75
  %77 = and i8 %76, -64
  %78 = icmp eq i8 %77, -128
  br i1 %78, label %100, label %104

79:                                               ; preds = %61
  %80 = add nsw i8 %14, 15
  %81 = icmp ult i8 %80, 7
  br i1 %81, label %82, label %104

82:                                               ; preds = %79
  %83 = getelementptr inbounds i8, ptr %11, i64 1
  %84 = load i8, ptr %83, align 1, !tbaa !38
  %85 = and i8 %84, -64
  %86 = icmp eq i8 %85, -128
  br i1 %86, label %87, label %104

87:                                               ; preds = %82
  %88 = getelementptr inbounds i8, ptr %11, i64 2
  %89 = load i8, ptr %88, align 1, !tbaa !38
  %90 = and i8 %89, -64
  %91 = icmp eq i8 %90, -128
  br i1 %91, label %92, label %104

92:                                               ; preds = %87
  %93 = getelementptr inbounds i8, ptr %11, i64 3
  %94 = load i8, ptr %93, align 1, !tbaa !38
  %95 = freeze i8 %94
  %96 = and i8 %95, -64
  %97 = icmp eq i8 %96, -128
  br i1 %97, label %100, label %104

98:                                               ; preds = %24
  %99 = tail call fastcc i64 @S__is_utf8_char_slow(ptr noundef nonnull %11, ptr noundef nonnull %8) #21
  br label %100

100:                                              ; preds = %29, %92, %73, %55, %41, %13, %98
  %101 = phi i64 [ 1, %13 ], [ %99, %98 ], [ 3, %41 ], [ 3, %55 ], [ 4, %73 ], [ 4, %92 ], [ 2, %29 ]
  %102 = icmp eq i64 %101, 0
  %103 = getelementptr inbounds i8, ptr %11, i64 %101
  br i1 %102, label %104, label %10, !llvm.loop !48

104:                                              ; preds = %79, %82, %87, %63, %68, %50, %36, %92, %73, %55, %41, %29, %16, %10, %100
  ret i1 %12
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i64 @S__is_utf8_char_slow(ptr noundef %0, ptr noundef %1) unnamed_addr #3 !prof !47 !PGOFuncName !49 {
  %3 = alloca i64, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #22
  %4 = ptrtoint ptr %1 to i64
  %5 = ptrtoint ptr %0 to i64
  %6 = sub i64 %4, %5
  %7 = call i64 @Perl_utf8n_to_uvchr(ptr noundef %0, i64 noundef %6, ptr noundef nonnull %3, i32 noundef 8192) #21
  %8 = load i64, ptr %3, align 8
  %9 = icmp eq i64 %8, -1
  %10 = select i1 %9, i64 0, i64 %8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #22
  ret i64 %10
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i64 @Perl_utf8n_to_uvchr(ptr noundef %0, i64 noundef %1, ptr noundef writeonly %2, i32 noundef %3) local_unnamed_addr #3 !prof !47 {
  %5 = load i8, ptr %0, align 1, !tbaa !38
  %6 = zext i8 %5 to i64
  %7 = icmp eq i64 %1, 0
  br i1 %7, label %8, label %19

8:                                                ; preds = %4
  %9 = icmp eq ptr %2, null
  br i1 %9, label %11, label %10

10:                                               ; preds = %8
  store i64 0, ptr %2, align 8, !tbaa !50
  br label %11

11:                                               ; preds = %10, %8
  %12 = and i32 %3, 1
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %312

14:                                               ; preds = %11
  %15 = and i32 %3, 8192
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %273

17:                                               ; preds = %14
  %18 = tail call ptr (ptr, ...) @Perl_newSVpvf(ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.3) #20
  br label %265

19:                                               ; preds = %4
  %20 = getelementptr inbounds [0 x i8], ptr @PL_utf8skip, i64 0, i64 %6
  %21 = load i8, ptr %20, align 1, !tbaa !38
  %22 = zext i8 %21 to i64
  %23 = icmp eq ptr %2, null
  br i1 %23, label %25, label %24

24:                                               ; preds = %19
  store i64 %22, ptr %2, align 8, !tbaa !50
  br label %25

25:                                               ; preds = %24, %19
  %26 = icmp sgt i8 %5, -1
  br i1 %26, label %312, label %27

27:                                               ; preds = %25
  %28 = and i8 %5, -64
  %29 = icmp eq i8 %28, -128
  br i1 %29, label %30, label %41

30:                                               ; preds = %27
  %31 = and i32 %3, 2
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %34, label %33

33:                                               ; preds = %30
  br i1 %23, label %312, label %309

34:                                               ; preds = %30
  %35 = and i32 %3, 8192
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %37, label %273

37:                                               ; preds = %34
  %38 = load i8, ptr %0, align 1, !tbaa !38
  %39 = zext i8 %38 to i32
  %40 = tail call ptr (ptr, ...) @Perl_newSVpvf(ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.3, i32 noundef %39) #20
  br label %265

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
  br i1 %52, label %53, label %93

53:                                               ; preds = %41, %61
  %54 = phi ptr [ %69, %61 ], [ %51, %41 ]
  %55 = phi i8 [ %64, %61 ], [ 0, %41 ]
  %56 = phi i8 [ %63, %61 ], [ 0, %41 ]
  %57 = phi i64 [ %68, %61 ], [ %48, %41 ]
  %58 = load i8, ptr %54, align 1, !tbaa !38
  %59 = and i8 %58, -64
  %60 = icmp eq i8 %59, -128
  br i1 %60, label %61, label %71

61:                                               ; preds = %53
  %62 = icmp ult i64 %57, 288230376151711744
  %63 = select i1 %62, i8 %56, i8 %58
  %64 = select i1 %62, i8 %55, i8 1
  %65 = shl i64 %57, 6
  %66 = and i8 %58, 63
  %67 = zext nneg i8 %66 to i64
  %68 = or disjoint i64 %65, %67
  %69 = getelementptr inbounds i8, ptr %54, i64 1
  %70 = icmp ult ptr %69, %50
  br i1 %70, label %53, label %93, !llvm.loop !52

71:                                               ; preds = %53
  %72 = ptrtoint ptr %54 to i64
  %73 = ptrtoint ptr %0 to i64
  %74 = sub i64 %72, %73
  %75 = and i32 %3, 4
  %76 = icmp eq i32 %75, 0
  br i1 %76, label %77, label %92

77:                                               ; preds = %71
  %78 = and i32 %3, 8192
  %79 = icmp eq i32 %78, 0
  br i1 %79, label %80, label %273

80:                                               ; preds = %77
  %81 = icmp eq i64 %74, 1
  %82 = zext i8 %58 to i32
  br i1 %81, label %83, label %87

83:                                               ; preds = %80
  %84 = load i8, ptr %0, align 1, !tbaa !38
  %85 = zext i8 %84 to i32
  %86 = tail call ptr (ptr, ...) @Perl_newSVpvf(ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.3, i32 noundef %82, i32 noundef %85) #20
  br label %265

87:                                               ; preds = %80
  %88 = trunc i64 %74 to i32
  %89 = load i8, ptr %0, align 1, !tbaa !38
  %90 = zext i8 %89 to i32
  %91 = tail call ptr (ptr, ...) @Perl_newSVpvf(ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.3, i32 noundef %82, i32 noundef %88, i32 noundef %90, i32 noundef %43) #20
  br label %265

92:                                               ; preds = %71
  br i1 %23, label %120, label %116

93:                                               ; preds = %61, %41
  %94 = phi i64 [ %48, %41 ], [ %68, %61 ]
  %95 = phi i8 [ 0, %41 ], [ %63, %61 ]
  %96 = phi i8 [ 0, %41 ], [ %64, %61 ]
  %97 = phi ptr [ %51, %41 ], [ %69, %61 ]
  %98 = ptrtoint ptr %97 to i64
  %99 = ptrtoint ptr %0 to i64
  %100 = sub i64 %98, %99
  %101 = icmp ult i64 %100, %22
  br i1 %101, label %102, label %126

102:                                              ; preds = %93
  %103 = and i32 %3, 8
  %104 = icmp eq i32 %103, 0
  br i1 %104, label %105, label %115

105:                                              ; preds = %102
  %106 = and i32 %3, 8192
  %107 = icmp eq i32 %106, 0
  br i1 %107, label %108, label %273

108:                                              ; preds = %105
  %109 = trunc i64 %100 to i32
  %110 = icmp eq i64 %100, 1
  %111 = select i1 %110, ptr @.str.9, ptr @.str.10
  %112 = load i8, ptr %0, align 1, !tbaa !38
  %113 = zext i8 %112 to i32
  %114 = tail call ptr (ptr, ...) @Perl_newSVpvf(ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.3, i32 noundef %109, ptr noundef nonnull %111, i32 noundef %43, i32 noundef %113) #20
  br label %265

115:                                              ; preds = %102
  br i1 %23, label %120, label %116

116:                                              ; preds = %115, %92
  %117 = phi i64 [ %74, %92 ], [ %100, %115 ]
  %118 = phi i8 [ %56, %92 ], [ %95, %115 ]
  %119 = phi i8 [ %55, %92 ], [ %96, %115 ]
  store i64 %117, ptr %2, align 8, !tbaa !50
  br label %120

120:                                              ; preds = %116, %115, %92
  %121 = phi i8 [ %56, %92 ], [ %95, %115 ], [ %118, %116 ]
  %122 = phi i8 [ %55, %92 ], [ %96, %115 ], [ %119, %116 ]
  %123 = phi i64 [ %74, %92 ], [ %100, %115 ], [ %117, %116 ]
  %124 = and i8 %122, 1
  %125 = icmp eq i8 %124, 0
  br i1 %125, label %184, label %129

126:                                              ; preds = %93
  %127 = and i8 %96, 1
  %128 = icmp eq i8 %127, 0
  br i1 %128, label %136, label %129

129:                                              ; preds = %126, %120
  %130 = phi i8 [ %95, %126 ], [ %121, %120 ]
  %131 = phi i64 [ %100, %126 ], [ %123, %120 ]
  %132 = zext i8 %130 to i32
  %133 = load i8, ptr %0, align 1, !tbaa !38
  %134 = zext i8 %133 to i32
  %135 = tail call ptr (ptr, ...) @Perl_newSVpvf(ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.3, i32 noundef %132, i32 noundef %134) #20
  br label %265

136:                                              ; preds = %126
  %137 = icmp ult i64 %94, 128
  br i1 %137, label %151, label %138

138:                                              ; preds = %136
  %139 = icmp ult i64 %94, 2048
  br i1 %139, label %151, label %140

140:                                              ; preds = %138
  %141 = icmp ult i64 %94, 65536
  br i1 %141, label %151, label %142

142:                                              ; preds = %140
  %143 = icmp ult i64 %94, 2097152
  br i1 %143, label %151, label %144

144:                                              ; preds = %142
  %145 = icmp ult i64 %94, 67108864
  br i1 %145, label %151, label %146

146:                                              ; preds = %144
  %147 = icmp ult i64 %94, 2147483648
  br i1 %147, label %151, label %148

148:                                              ; preds = %146
  %149 = icmp ult i64 %94, 68719476736
  %150 = select i1 %149, i64 7, i64 13
  br label %151

151:                                              ; preds = %138, %142, %148, %146, %144, %140, %136
  %152 = phi i64 [ 1, %136 ], [ 2, %138 ], [ 3, %140 ], [ 4, %142 ], [ 5, %144 ], [ %150, %148 ], [ 6, %146 ]
  %153 = icmp ult i64 %152, %22
  %154 = and i32 %3, 16
  %155 = icmp eq i32 %154, 0
  %156 = and i1 %155, %153
  br i1 %156, label %157, label %179

157:                                              ; preds = %151
  %158 = and i32 %3, 8192
  %159 = icmp eq i32 %158, 0
  br i1 %159, label %160, label %273

160:                                              ; preds = %157
  br i1 %137, label %174, label %161

161:                                              ; preds = %160
  %162 = icmp ult i64 %94, 2048
  br i1 %162, label %174, label %163

163:                                              ; preds = %161
  %164 = icmp ult i64 %94, 65536
  br i1 %164, label %174, label %165

165:                                              ; preds = %163
  %166 = icmp ult i64 %94, 2097152
  br i1 %166, label %174, label %167

167:                                              ; preds = %165
  %168 = icmp ult i64 %94, 67108864
  br i1 %168, label %174, label %169

169:                                              ; preds = %167
  %170 = icmp ult i64 %94, 2147483648
  br i1 %170, label %174, label %171

171:                                              ; preds = %169
  %172 = icmp ult i64 %94, 68719476736
  %173 = select i1 %172, i32 7, i32 13
  br label %174

174:                                              ; preds = %161, %165, %171, %169, %167, %163, %160
  %175 = phi i32 [ 1, %160 ], [ 2, %161 ], [ 3, %163 ], [ 4, %165 ], [ 5, %167 ], [ %173, %171 ], [ 6, %169 ]
  %176 = load i8, ptr %0, align 1, !tbaa !38
  %177 = zext i8 %176 to i32
  %178 = tail call ptr (ptr, ...) @Perl_newSVpvf(ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.3, i32 noundef %43, ptr noundef nonnull @.str.10, i32 noundef %175, i32 noundef %177) #20
  br label %265

179:                                              ; preds = %151
  %180 = icmp ult i64 %94, 55296
  %181 = and i32 %3, 8160
  %182 = icmp eq i32 %181, 0
  %183 = or i1 %182, %180
  br i1 %183, label %312, label %187

184:                                              ; preds = %120
  %185 = and i32 %3, 8160
  %186 = icmp eq i32 %185, 0
  br i1 %186, label %312, label %238

187:                                              ; preds = %179
  %188 = icmp ult i64 %94, 57344
  br i1 %188, label %189, label %202

189:                                              ; preds = %187
  %190 = and i32 %3, 8256
  %191 = icmp eq i32 %190, 64
  br i1 %191, label %192, label %197

192:                                              ; preds = %189
  %193 = tail call zeroext i1 @Perl_ckwarn_d(i32 noundef 50) #20
  br i1 %193, label %194, label %197

194:                                              ; preds = %192
  %195 = tail call ptr (ptr, ...) @Perl_newSVpvf(ptr noundef nonnull @.str, i64 noundef %94) #20
  %196 = tail call ptr @Perl_sv_2mortal(ptr noundef %195) #20
  br label %197

197:                                              ; preds = %194, %192, %189
  %198 = phi ptr [ %196, %194 ], [ null, %192 ], [ null, %189 ]
  %199 = phi i64 [ 50, %194 ], [ 0, %192 ], [ 0, %189 ]
  %200 = and i32 %3, 32
  %201 = icmp eq i32 %200, 0
  br i1 %201, label %259, label %273

202:                                              ; preds = %187
  %203 = icmp ugt i64 %94, 1114111
  br i1 %203, label %204, label %238

204:                                              ; preds = %202
  %205 = and i32 %3, 9216
  %206 = icmp eq i32 %205, 1024
  br i1 %206, label %207, label %212

207:                                              ; preds = %204
  %208 = tail call zeroext i1 @Perl_ckwarn_d(i32 noundef 48) #20
  br i1 %208, label %209, label %212

209:                                              ; preds = %207
  %210 = tail call ptr (ptr, ...) @Perl_newSVpvf(ptr noundef nonnull @.str.1, i64 noundef %94) #20
  %211 = tail call ptr @Perl_sv_2mortal(ptr noundef %210) #20
  br label %212

212:                                              ; preds = %209, %207, %204
  %213 = phi ptr [ %211, %209 ], [ null, %207 ], [ null, %204 ]
  %214 = phi i64 [ 48, %209 ], [ 0, %207 ], [ 0, %204 ]
  %215 = load i8, ptr %0, align 1, !tbaa !38
  %216 = icmp ult i8 %215, -2
  %217 = and i32 %3, 6144
  %218 = icmp eq i32 %217, 0
  %219 = or i1 %218, %216
  br i1 %219, label %233, label %220

220:                                              ; preds = %212
  %221 = and i32 %3, 12288
  %222 = icmp eq i32 %221, 4096
  br i1 %222, label %223, label %228

223:                                              ; preds = %220
  %224 = tail call zeroext i1 @Perl_ckwarn_d(i32 noundef 44) #20
  br i1 %224, label %225, label %228

225:                                              ; preds = %223
  %226 = tail call ptr (ptr, ...) @Perl_newSVpvf(ptr noundef nonnull @.str.12, i64 noundef %94) #20
  %227 = tail call ptr @Perl_sv_2mortal(ptr noundef %226) #20
  br label %228

228:                                              ; preds = %225, %223, %220
  %229 = phi ptr [ %227, %225 ], [ %213, %223 ], [ %213, %220 ]
  %230 = phi i64 [ 44, %225 ], [ %214, %223 ], [ %214, %220 ]
  %231 = and i32 %3, 2048
  %232 = icmp eq i32 %231, 0
  br i1 %232, label %233, label %273

233:                                              ; preds = %228, %212
  %234 = phi ptr [ %229, %228 ], [ %213, %212 ]
  %235 = phi i64 [ %230, %228 ], [ %214, %212 ]
  %236 = and i32 %3, 512
  %237 = icmp eq i32 %236, 0
  br i1 %237, label %259, label %273

238:                                              ; preds = %184, %202
  %239 = phi i64 [ %94, %202 ], [ 65533, %184 ]
  %240 = phi i64 [ %100, %202 ], [ %123, %184 ]
  %241 = add nsw i64 %239, -64976
  %242 = icmp ult i64 %241, 32
  %243 = and i64 %239, 65534
  %244 = icmp eq i64 %243, 65534
  %245 = or i1 %242, %244
  br i1 %245, label %246, label %312

246:                                              ; preds = %238
  %247 = and i32 %3, 8448
  %248 = icmp eq i32 %247, 256
  br i1 %248, label %249, label %254

249:                                              ; preds = %246
  %250 = tail call zeroext i1 @Perl_ckwarn_d(i32 noundef 49) #20
  br i1 %250, label %251, label %254

251:                                              ; preds = %249
  %252 = tail call ptr (ptr, ...) @Perl_newSVpvf(ptr noundef nonnull @.str.2, i64 noundef %239) #20
  %253 = tail call ptr @Perl_sv_2mortal(ptr noundef %252) #20
  br label %254

254:                                              ; preds = %251, %249, %246
  %255 = phi ptr [ %253, %251 ], [ null, %249 ], [ null, %246 ]
  %256 = phi i64 [ 49, %251 ], [ 0, %249 ], [ 0, %246 ]
  %257 = and i32 %3, 128
  %258 = icmp eq i32 %257, 0
  br i1 %258, label %259, label %273

259:                                              ; preds = %233, %254, %197
  %260 = phi i64 [ %100, %197 ], [ %100, %233 ], [ %240, %254 ]
  %261 = phi i64 [ %94, %197 ], [ %94, %233 ], [ %239, %254 ]
  %262 = phi ptr [ %198, %197 ], [ %234, %233 ], [ %255, %254 ]
  %263 = phi i64 [ %199, %197 ], [ %235, %233 ], [ %256, %254 ]
  %264 = icmp eq ptr %262, null
  br i1 %264, label %312, label %281

265:                                              ; preds = %37, %174, %108, %87, %83, %17, %129
  %266 = phi ptr [ %40, %37 ], [ %178, %174 ], [ %114, %108 ], [ %91, %87 ], [ %86, %83 ], [ %18, %17 ], [ %135, %129 ]
  %267 = phi i64 [ 1, %37 ], [ %100, %174 ], [ %100, %108 ], [ %74, %87 ], [ 1, %83 ], [ 0, %17 ], [ %131, %129 ]
  %268 = tail call ptr @Perl_sv_2mortal(ptr noundef %266) #20
  %269 = icmp eq ptr %268, null
  br i1 %269, label %273, label %270

270:                                              ; preds = %265
  %271 = tail call zeroext i1 @Perl_ckwarn_d(i32 noundef 44) #20
  %272 = select i1 %271, i64 44, i64 0
  br label %273

273:                                              ; preds = %34, %105, %77, %157, %14, %270, %265, %254, %233, %228, %197
  %274 = phi ptr [ null, %265 ], [ %198, %197 ], [ %229, %228 ], [ %234, %233 ], [ %255, %254 ], [ %268, %270 ], [ null, %14 ], [ null, %157 ], [ null, %77 ], [ null, %105 ], [ null, %34 ]
  %275 = phi i64 [ 0, %265 ], [ %199, %197 ], [ %230, %228 ], [ %235, %233 ], [ %256, %254 ], [ %272, %270 ], [ 0, %14 ], [ 0, %157 ], [ 0, %77 ], [ 0, %105 ], [ 0, %34 ]
  %276 = phi i64 [ %267, %265 ], [ %100, %197 ], [ %100, %228 ], [ %100, %233 ], [ %240, %254 ], [ %267, %270 ], [ 0, %14 ], [ %100, %157 ], [ %74, %77 ], [ %100, %105 ], [ 1, %34 ]
  %277 = and i32 %3, 8192
  %278 = icmp eq i32 %277, 0
  br i1 %278, label %281, label %279

279:                                              ; preds = %273
  %280 = icmp eq ptr %2, null
  br i1 %280, label %312, label %309

281:                                              ; preds = %259, %273
  %282 = phi ptr [ %274, %273 ], [ %262, %259 ]
  %283 = phi i64 [ 0, %273 ], [ %261, %259 ]
  %284 = phi i64 [ %275, %273 ], [ %263, %259 ]
  %285 = phi i64 [ %276, %273 ], [ %260, %259 ]
  %286 = icmp eq i64 %284, 0
  br i1 %286, label %307, label %287

287:                                              ; preds = %281
  %288 = getelementptr inbounds %struct.sv, ptr %282, i64 0, i32 3
  %289 = load ptr, ptr %288, align 8, !tbaa !38
  %290 = load ptr, ptr @PL_op, align 8, !tbaa !53
  %291 = icmp eq ptr %290, null
  %292 = trunc i64 %284 to i32
  br i1 %291, label %306, label %293

293:                                              ; preds = %287
  %294 = getelementptr inbounds %struct.op, ptr %290, i64 0, i32 4
  %295 = load i16, ptr %294, align 8
  %296 = and i16 %295, 511
  %297 = icmp eq i16 %296, 380
  br i1 %297, label %298, label %300

298:                                              ; preds = %293
  %299 = tail call ptr @Perl_custom_op_get_field(ptr noundef nonnull %290, i32 noundef 2) #20
  br label %304

300:                                              ; preds = %293
  %301 = zext nneg i16 %296 to i64
  %302 = getelementptr inbounds [0 x ptr], ptr @PL_op_desc, i64 0, i64 %301
  %303 = load ptr, ptr %302, align 8, !tbaa !53
  br label %304

304:                                              ; preds = %300, %298
  %305 = phi ptr [ %299, %298 ], [ %303, %300 ]
  tail call void (i32, ptr, ...) @Perl_warner(i32 noundef %292, ptr noundef nonnull @.str.13, ptr noundef %289, ptr noundef %305) #20
  br label %307

306:                                              ; preds = %287
  tail call void (i32, ptr, ...) @Perl_warner(i32 noundef %292, ptr noundef nonnull @.str.14, ptr noundef %289) #20
  br label %307

307:                                              ; preds = %304, %306, %281
  %308 = icmp eq ptr %2, null
  br i1 %308, label %312, label %309

309:                                              ; preds = %307, %279, %33
  %310 = phi i64 [ 1, %33 ], [ -1, %279 ], [ %285, %307 ]
  %311 = phi i64 [ 65533, %33 ], [ 0, %279 ], [ %283, %307 ]
  store i64 %310, ptr %2, align 8, !tbaa !50
  br label %312

312:                                              ; preds = %309, %238, %184, %307, %279, %179, %259, %33, %25, %11
  %313 = phi i64 [ 0, %11 ], [ %6, %25 ], [ 65533, %33 ], [ %261, %259 ], [ %94, %179 ], [ 0, %279 ], [ %283, %307 ], [ 65533, %184 ], [ %239, %238 ], [ %311, %309 ]
  ret i64 %313
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local zeroext i1 @Perl_is_utf8_string_loclen(ptr noundef %0, i64 noundef %1, ptr noundef writeonly %2, ptr noundef writeonly %3) local_unnamed_addr #3 !prof !47 {
  %5 = icmp eq i64 %1, 0
  br i1 %5, label %6, label %8

6:                                                ; preds = %4
  %7 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #19
  br label %8

8:                                                ; preds = %4, %6
  %9 = phi i64 [ %7, %6 ], [ %1, %4 ]
  %10 = getelementptr inbounds i8, ptr %0, i64 %9
  %11 = ptrtoint ptr %10 to i64
  br label %12

12:                                               ; preds = %103, %8
  %13 = phi ptr [ %0, %8 ], [ %106, %103 ]
  %14 = phi i64 [ 0, %8 ], [ %107, %103 ]
  %15 = icmp ult ptr %13, %10
  br i1 %15, label %16, label %108

16:                                               ; preds = %12
  %17 = load i8, ptr %13, align 1, !tbaa !38
  %18 = icmp sgt i8 %17, -1
  br i1 %18, label %103, label %19

19:                                               ; preds = %16
  %20 = zext i8 %17 to i64
  %21 = ptrtoint ptr %13 to i64
  %22 = sub i64 %11, %21
  %23 = getelementptr inbounds [0 x i8], ptr @PL_utf8skip, i64 0, i64 %20
  %24 = load i8, ptr %23, align 1, !tbaa !38
  %25 = zext i8 %24 to i64
  %26 = icmp slt i64 %22, %25
  br i1 %26, label %108, label %27

27:                                               ; preds = %19
  %28 = icmp ult i8 %24, 5
  br i1 %28, label %29, label %101

29:                                               ; preds = %27
  %30 = add nsw i8 %17, 62
  %31 = icmp ult i8 %30, 30
  br i1 %31, label %32, label %37

32:                                               ; preds = %29
  %33 = getelementptr inbounds i8, ptr %13, i64 1
  %34 = load i8, ptr %33, align 1, !tbaa !38
  %35 = and i8 %34, -64
  %36 = icmp eq i8 %35, -128
  br i1 %36, label %103, label %108

37:                                               ; preds = %29
  %38 = icmp eq i8 %17, -32
  br i1 %38, label %39, label %50

39:                                               ; preds = %37
  %40 = getelementptr inbounds i8, ptr %13, i64 1
  %41 = load i8, ptr %40, align 1, !tbaa !38
  %42 = and i8 %41, -32
  %43 = icmp eq i8 %42, -96
  br i1 %43, label %44, label %108

44:                                               ; preds = %39
  %45 = getelementptr inbounds i8, ptr %13, i64 2
  %46 = load i8, ptr %45, align 1, !tbaa !38
  %47 = freeze i8 %46
  %48 = and i8 %47, -64
  %49 = icmp eq i8 %48, -128
  br i1 %49, label %103, label %108

50:                                               ; preds = %37
  %51 = add nsw i8 %17, 31
  %52 = icmp ult i8 %51, 15
  br i1 %52, label %53, label %64

53:                                               ; preds = %50
  %54 = getelementptr inbounds i8, ptr %13, i64 1
  %55 = load i8, ptr %54, align 1, !tbaa !38
  %56 = and i8 %55, -64
  %57 = icmp eq i8 %56, -128
  br i1 %57, label %58, label %108

58:                                               ; preds = %53
  %59 = getelementptr inbounds i8, ptr %13, i64 2
  %60 = load i8, ptr %59, align 1, !tbaa !38
  %61 = freeze i8 %60
  %62 = and i8 %61, -64
  %63 = icmp eq i8 %62, -128
  br i1 %63, label %103, label %108

64:                                               ; preds = %50
  %65 = icmp eq i8 %17, -16
  br i1 %65, label %66, label %82

66:                                               ; preds = %64
  %67 = getelementptr inbounds i8, ptr %13, i64 1
  %68 = load i8, ptr %67, align 1, !tbaa !38
  %69 = add i8 %68, 112
  %70 = icmp ult i8 %69, 48
  br i1 %70, label %71, label %108

71:                                               ; preds = %66
  %72 = getelementptr inbounds i8, ptr %13, i64 2
  %73 = load i8, ptr %72, align 1, !tbaa !38
  %74 = and i8 %73, -64
  %75 = icmp eq i8 %74, -128
  br i1 %75, label %76, label %108

76:                                               ; preds = %71
  %77 = getelementptr inbounds i8, ptr %13, i64 3
  %78 = load i8, ptr %77, align 1, !tbaa !38
  %79 = freeze i8 %78
  %80 = and i8 %79, -64
  %81 = icmp eq i8 %80, -128
  br i1 %81, label %103, label %108

82:                                               ; preds = %64
  %83 = add nsw i8 %17, 15
  %84 = icmp ult i8 %83, 7
  br i1 %84, label %85, label %108

85:                                               ; preds = %82
  %86 = getelementptr inbounds i8, ptr %13, i64 1
  %87 = load i8, ptr %86, align 1, !tbaa !38
  %88 = and i8 %87, -64
  %89 = icmp eq i8 %88, -128
  br i1 %89, label %90, label %108

90:                                               ; preds = %85
  %91 = getelementptr inbounds i8, ptr %13, i64 2
  %92 = load i8, ptr %91, align 1, !tbaa !38
  %93 = and i8 %92, -64
  %94 = icmp eq i8 %93, -128
  br i1 %94, label %95, label %108

95:                                               ; preds = %90
  %96 = getelementptr inbounds i8, ptr %13, i64 3
  %97 = load i8, ptr %96, align 1, !tbaa !38
  %98 = freeze i8 %97
  %99 = and i8 %98, -64
  %100 = icmp eq i8 %99, -128
  br i1 %100, label %103, label %108

101:                                              ; preds = %27
  %102 = tail call fastcc i64 @S__is_utf8_char_slow(ptr noundef nonnull %13, ptr noundef nonnull %10) #21
  br label %103

103:                                              ; preds = %32, %95, %76, %58, %44, %16, %101
  %104 = phi i64 [ 1, %16 ], [ %102, %101 ], [ 3, %44 ], [ 3, %58 ], [ 4, %76 ], [ 4, %95 ], [ 2, %32 ]
  %105 = icmp eq i64 %104, 0
  %106 = getelementptr inbounds i8, ptr %13, i64 %104
  %107 = add i64 %14, 1
  br i1 %105, label %108, label %12

108:                                              ; preds = %82, %85, %90, %66, %71, %53, %39, %95, %76, %58, %44, %32, %19, %103, %12
  %109 = phi ptr [ %106, %103 ], [ %13, %12 ], [ %13, %19 ], [ %13, %32 ], [ %13, %44 ], [ %13, %58 ], [ %13, %76 ], [ %13, %95 ], [ %13, %39 ], [ %13, %53 ], [ %13, %71 ], [ %13, %66 ], [ %13, %90 ], [ %13, %85 ], [ %13, %82 ]
  %110 = icmp eq ptr %3, null
  br i1 %110, label %112, label %111

111:                                              ; preds = %108
  store i64 %14, ptr %3, align 8, !tbaa !50
  br label %112

112:                                              ; preds = %111, %108
  %113 = icmp eq ptr %2, null
  br i1 %113, label %115, label %114

114:                                              ; preds = %112
  store ptr %109, ptr %2, align 8, !tbaa !53
  br label %115

115:                                              ; preds = %114, %112
  %116 = icmp eq ptr %109, %10
  ret i1 %116
}

; Function Attrs: optsize
declare ptr @Perl_sv_2mortal(ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare ptr @Perl_newSVpvf(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: optsize
declare void @Perl_warner(i32 noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: optsize
declare ptr @Perl_custom_op_get_field(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i64 @Perl_utf8_to_uvchr_buf(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #3 !prof !47 {
  %4 = ptrtoint ptr %1 to i64
  %5 = ptrtoint ptr %0 to i64
  %6 = sub i64 %4, %5
  %7 = tail call zeroext i1 @Perl_ckwarn_d(i32 noundef 44) #20
  %8 = select i1 %7, i32 0, i32 -8161
  %9 = tail call i64 @Perl_utf8n_to_uvchr(ptr noundef %0, i64 noundef %6, ptr noundef %2, i32 noundef %8) #21
  ret i64 %9
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local i64 @Perl_valid_utf8_to_uvchr(ptr noundef readonly %0, ptr noundef writeonly %1) local_unnamed_addr #5 !prof !47 {
  %3 = load i8, ptr %0, align 1, !tbaa !38
  %4 = zext i8 %3 to i64
  %5 = getelementptr inbounds [0 x i8], ptr @PL_utf8skip, i64 0, i64 %4
  %6 = load i8, ptr %5, align 1, !tbaa !38
  %7 = zext i8 %6 to i64
  %8 = getelementptr inbounds i8, ptr %0, i64 %7
  %9 = icmp eq ptr %1, null
  br i1 %9, label %11, label %10

10:                                               ; preds = %2
  store i64 %7, ptr %1, align 8, !tbaa !50
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
  %28 = load i8, ptr %25, align 1, !tbaa !38
  %29 = and i8 %28, 63
  %30 = zext nneg i8 %29 to i64
  %31 = or disjoint i64 %27, %30
  %32 = getelementptr inbounds i8, ptr %25, i64 1
  %33 = icmp ult ptr %32, %8
  br i1 %33, label %24, label %34, !llvm.loop !55

34:                                               ; preds = %24, %13, %11
  %35 = phi i64 [ %4, %11 ], [ %20, %13 ], [ %31, %24 ]
  ret i64 %35
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i64 @Perl_utf8_to_uvuni_buf(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #3 !prof !47 {
  %4 = ptrtoint ptr %1 to i64
  %5 = ptrtoint ptr %0 to i64
  %6 = sub i64 %4, %5
  %7 = tail call zeroext i1 @Perl_ckwarn_d(i32 noundef 44) #20
  %8 = select i1 %7, i32 0, i32 -8161
  %9 = tail call i64 @Perl_utf8n_to_uvchr(ptr noundef %0, i64 noundef %6, ptr noundef %2, i32 noundef %8) #21
  ret i64 %9
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i64 @Perl_utf8_length(ptr noundef readonly %0, ptr noundef readnone %1) local_unnamed_addr #3 !prof !47 {
  %3 = icmp ult ptr %1, %0
  br i1 %3, label %23, label %4

4:                                                ; preds = %2
  %5 = icmp ult ptr %0, %1
  br i1 %5, label %6, label %17

6:                                                ; preds = %4, %6
  %7 = phi ptr [ %14, %6 ], [ %0, %4 ]
  %8 = phi i64 [ %15, %6 ], [ 0, %4 ]
  %9 = load i8, ptr %7, align 1, !tbaa !38
  %10 = zext i8 %9 to i64
  %11 = getelementptr inbounds [0 x i8], ptr @PL_utf8skip, i64 0, i64 %10
  %12 = load i8, ptr %11, align 1, !tbaa !38
  %13 = zext i8 %12 to i64
  %14 = getelementptr inbounds i8, ptr %7, i64 %13
  %15 = add i64 %8, 1
  %16 = icmp ult ptr %14, %1
  br i1 %16, label %6, label %17, !llvm.loop !56

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
  %25 = load ptr, ptr @PL_op, align 8, !tbaa !53
  %26 = icmp eq ptr %25, null
  br i1 %26, label %40, label %27

27:                                               ; preds = %23
  %28 = getelementptr inbounds %struct.op, ptr %25, i64 0, i32 4
  %29 = load i16, ptr %28, align 8
  %30 = and i16 %29, 511
  %31 = icmp eq i16 %30, 380
  br i1 %31, label %32, label %34

32:                                               ; preds = %27
  %33 = tail call ptr @Perl_custom_op_get_field(ptr noundef nonnull %25, i32 noundef 2) #20
  br label %38

34:                                               ; preds = %27
  %35 = zext nneg i16 %30 to i64
  %36 = getelementptr inbounds [0 x ptr], ptr @PL_op_desc, i64 0, i64 %35
  %37 = load ptr, ptr %36, align 8, !tbaa !53
  br label %38

38:                                               ; preds = %34, %32
  %39 = phi ptr [ %33, %32 ], [ %37, %34 ]
  tail call void (i32, ptr, ...) @Perl_ck_warner_d(i32 noundef 44, ptr noundef nonnull @.str.13, ptr noundef nonnull @unees, ptr noundef %39) #20
  br label %41

40:                                               ; preds = %23
  tail call void (i32, ptr, ...) @Perl_ck_warner_d(i32 noundef 44, ptr noundef nonnull @.str.14, ptr noundef nonnull @unees) #20
  br label %41

41:                                               ; preds = %38, %40, %17
  %42 = phi i64 [ %24, %38 ], [ %24, %40 ], [ %18, %17 ]
  ret i64 %42
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i64 @Perl_utf8_distance(ptr noundef %0, ptr noundef %1) local_unnamed_addr #3 !prof !47 {
  %3 = icmp ult ptr %0, %1
  br i1 %3, label %4, label %7

4:                                                ; preds = %2
  %5 = tail call i64 @Perl_utf8_length(ptr noundef %0, ptr noundef nonnull %1) #21
  %6 = sub nsw i64 0, %5
  br label %9

7:                                                ; preds = %2
  %8 = tail call i64 @Perl_utf8_length(ptr noundef %1, ptr noundef %0) #21
  br label %9

9:                                                ; preds = %7, %4
  %10 = phi i64 [ %6, %4 ], [ %8, %7 ]
  ret i64 %10
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable
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
  %10 = load i8, ptr %8, align 1, !tbaa !38
  %11 = zext i8 %10 to i64
  %12 = getelementptr inbounds [0 x i8], ptr @PL_utf8skip, i64 0, i64 %11
  %13 = load i8, ptr %12, align 1, !tbaa !38
  %14 = zext i8 %13 to i64
  %15 = getelementptr inbounds i8, ptr %8, i64 %14
  %16 = icmp eq i32 %9, 0
  br i1 %16, label %29, label %6, !llvm.loop !57

17:                                               ; preds = %23
  %18 = add nsw i32 %21, 1
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %29, label %20, !llvm.loop !58

20:                                               ; preds = %2, %17
  %21 = phi i32 [ %18, %17 ], [ %1, %2 ]
  %22 = phi ptr [ %25, %17 ], [ %0, %2 ]
  br label %23

23:                                               ; preds = %23, %20
  %24 = phi ptr [ %25, %23 ], [ %22, %20 ]
  %25 = getelementptr inbounds i8, ptr %24, i64 -1
  %26 = load i8, ptr %25, align 1, !tbaa !38
  %27 = and i8 %26, -64
  %28 = icmp eq i8 %27, -128
  br i1 %28, label %23, label %17, !llvm.loop !59

29:                                               ; preds = %17, %6, %4
  %30 = phi ptr [ %0, %4 ], [ %15, %6 ], [ %25, %17 ]
  ret ptr %30
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @Perl_bytes_cmp_utf8(ptr noundef readonly %0, i64 noundef %1, ptr noundef readonly %2, i64 noundef %3) local_unnamed_addr #3 !prof !47 {
  %5 = getelementptr inbounds i8, ptr %0, i64 %1
  %6 = getelementptr inbounds i8, ptr %2, i64 %3
  %7 = icmp sgt i64 %1, 0
  %8 = icmp sgt i64 %3, 0
  %9 = and i1 %7, %8
  br i1 %9, label %10, label %79

10:                                               ; preds = %4, %74
  %11 = phi ptr [ %75, %74 ], [ %0, %4 ]
  %12 = phi ptr [ %68, %74 ], [ %2, %4 ]
  %13 = getelementptr inbounds i8, ptr %12, i64 1
  %14 = load i8, ptr %12, align 1, !tbaa !38
  %15 = icmp sgt i8 %14, -1
  br i1 %15, label %66, label %16

16:                                               ; preds = %10
  %17 = zext i8 %14 to i32
  %18 = and i32 %17, 254
  %19 = icmp eq i32 %18, 194
  br i1 %19, label %20, label %88

20:                                               ; preds = %16
  %21 = icmp ult ptr %13, %6
  br i1 %21, label %22, label %49

22:                                               ; preds = %20
  %23 = load i8, ptr %13, align 1, !tbaa !38
  %24 = zext i8 %23 to i32
  %25 = and i32 %24, 192
  %26 = icmp eq i32 %25, 128
  br i1 %26, label %27, label %32

27:                                               ; preds = %22
  %28 = getelementptr inbounds i8, ptr %12, i64 2
  %29 = shl i8 %14, 6
  %30 = and i8 %23, 63
  %31 = or disjoint i8 %30, %29
  br label %66

32:                                               ; preds = %22
  %33 = load ptr, ptr @PL_op, align 8, !tbaa !53
  %34 = icmp eq ptr %33, null
  %35 = select i1 %34, ptr @.str.9, ptr @.str.16
  br i1 %34, label %47, label %36

36:                                               ; preds = %32
  %37 = getelementptr inbounds %struct.op, ptr %33, i64 0, i32 4
  %38 = load i16, ptr %37, align 8
  %39 = and i16 %38, 511
  %40 = icmp eq i16 %39, 380
  br i1 %40, label %41, label %43

41:                                               ; preds = %36
  %42 = tail call ptr @Perl_custom_op_get_field(ptr noundef nonnull %33, i32 noundef 2) #20
  br label %47

43:                                               ; preds = %36
  %44 = zext nneg i16 %39 to i64
  %45 = getelementptr inbounds [0 x ptr], ptr @PL_op_desc, i64 0, i64 %44
  %46 = load ptr, ptr %45, align 8, !tbaa !53
  br label %47

47:                                               ; preds = %43, %41, %32
  %48 = phi ptr [ %42, %41 ], [ %46, %43 ], [ @.str.9, %32 ]
  tail call void (i32, ptr, ...) @Perl_ck_warner_d(i32 noundef 44, ptr noundef nonnull @.str.15, i32 noundef %24, i32 noundef %17, ptr noundef nonnull %35, ptr noundef %48) #20
  br label %88

49:                                               ; preds = %20
  %50 = load ptr, ptr @PL_op, align 8, !tbaa !53
  %51 = icmp eq ptr %50, null
  br i1 %51, label %65, label %52

52:                                               ; preds = %49
  %53 = getelementptr inbounds %struct.op, ptr %50, i64 0, i32 4
  %54 = load i16, ptr %53, align 8
  %55 = and i16 %54, 511
  %56 = icmp eq i16 %55, 380
  br i1 %56, label %57, label %59

57:                                               ; preds = %52
  %58 = tail call ptr @Perl_custom_op_get_field(ptr noundef nonnull %50, i32 noundef 2) #20
  br label %63

59:                                               ; preds = %52
  %60 = zext nneg i16 %55 to i64
  %61 = getelementptr inbounds [0 x ptr], ptr @PL_op_desc, i64 0, i64 %60
  %62 = load ptr, ptr %61, align 8, !tbaa !53
  br label %63

63:                                               ; preds = %59, %57
  %64 = phi ptr [ %58, %57 ], [ %62, %59 ]
  tail call void (i32, ptr, ...) @Perl_ck_warner_d(i32 noundef 44, ptr noundef nonnull @.str.13, ptr noundef nonnull @unees, ptr noundef %64) #20
  br label %88

65:                                               ; preds = %49
  tail call void (i32, ptr, ...) @Perl_ck_warner_d(i32 noundef 44, ptr noundef nonnull @.str.14, ptr noundef nonnull @unees) #20
  br label %88

66:                                               ; preds = %27, %10
  %67 = phi i8 [ %14, %10 ], [ %31, %27 ]
  %68 = phi ptr [ %13, %10 ], [ %28, %27 ]
  %69 = load i8, ptr %11, align 1, !tbaa !38
  %70 = icmp eq i8 %69, %67
  br i1 %70, label %74, label %71

71:                                               ; preds = %66
  %72 = icmp ult i8 %69, %67
  %73 = select i1 %72, i32 -2, i32 2
  br label %88

74:                                               ; preds = %66
  %75 = getelementptr inbounds i8, ptr %11, i64 1
  %76 = icmp ult ptr %75, %5
  %77 = icmp ult ptr %68, %6
  %78 = select i1 %76, i1 %77, i1 false
  br i1 %78, label %10, label %79, !llvm.loop !60

79:                                               ; preds = %74, %4
  %80 = phi ptr [ %2, %4 ], [ %68, %74 ]
  %81 = phi ptr [ %0, %4 ], [ %75, %74 ]
  %82 = phi i1 [ %7, %4 ], [ %76, %74 ]
  %83 = icmp eq ptr %81, %5
  %84 = icmp eq ptr %80, %6
  %85 = select i1 %83, i1 %84, i1 false
  %86 = select i1 %82, i32 1, i32 -1
  %87 = select i1 %85, i32 0, i32 %86
  br label %88

88:                                               ; preds = %16, %63, %65, %47, %71, %79
  %89 = phi i32 [ %87, %79 ], [ -2, %63 ], [ -2, %65 ], [ -2, %47 ], [ %73, %71 ], [ -2, %16 ]
  ret i32 %89
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define dso_local noundef ptr @Perl_utf8_to_bytes(ptr noundef %0, ptr nocapture noundef %1) local_unnamed_addr #7 !prof !47 {
  %3 = load i64, ptr %1, align 8, !tbaa !50
  %4 = getelementptr inbounds i8, ptr %0, i64 %3
  %5 = icmp sgt i64 %3, 0
  br i1 %5, label %6, label %46

6:                                                ; preds = %2
  %7 = ptrtoint ptr %4 to i64
  br label %9

8:                                                ; preds = %25
  br i1 %5, label %29, label %46

9:                                                ; preds = %6, %25
  %10 = phi ptr [ %0, %6 ], [ %27, %25 ]
  %11 = load i8, ptr %10, align 1, !tbaa !38
  %12 = icmp sgt i8 %11, -1
  br i1 %12, label %25, label %13

13:                                               ; preds = %9
  %14 = and i8 %11, -2
  %15 = icmp eq i8 %14, -62
  %16 = ptrtoint ptr %10 to i64
  %17 = sub i64 %7, %16
  %18 = icmp sgt i64 %17, 1
  %19 = and i1 %18, %15
  br i1 %19, label %20, label %51

20:                                               ; preds = %13
  %21 = getelementptr inbounds i8, ptr %10, i64 1
  %22 = load i8, ptr %21, align 1, !tbaa !38
  %23 = and i8 %22, -64
  %24 = icmp eq i8 %23, -128
  br i1 %24, label %25, label %51

25:                                               ; preds = %20, %9
  %26 = phi ptr [ %10, %9 ], [ %21, %20 ]
  %27 = getelementptr inbounds i8, ptr %26, i64 1
  %28 = icmp ult ptr %27, %4
  br i1 %28, label %9, label %8, !llvm.loop !61

29:                                               ; preds = %8, %41
  %30 = phi ptr [ %44, %41 ], [ %0, %8 ]
  %31 = phi ptr [ %42, %41 ], [ %0, %8 ]
  %32 = getelementptr inbounds i8, ptr %31, i64 1
  %33 = load i8, ptr %31, align 1, !tbaa !38
  %34 = icmp sgt i8 %33, -1
  br i1 %34, label %41, label %35

35:                                               ; preds = %29
  %36 = shl i8 %33, 6
  %37 = load i8, ptr %32, align 1, !tbaa !38
  %38 = and i8 %37, 63
  %39 = or disjoint i8 %38, %36
  %40 = getelementptr inbounds i8, ptr %31, i64 2
  br label %41

41:                                               ; preds = %35, %29
  %42 = phi ptr [ %32, %29 ], [ %40, %35 ]
  %43 = phi i8 [ %33, %29 ], [ %39, %35 ]
  %44 = getelementptr inbounds i8, ptr %30, i64 1
  store i8 %43, ptr %30, align 1, !tbaa !38
  %45 = icmp ult ptr %42, %4
  br i1 %45, label %29, label %46, !llvm.loop !62

46:                                               ; preds = %41, %2, %8
  %47 = phi ptr [ %0, %8 ], [ %0, %2 ], [ %44, %41 ]
  store i8 0, ptr %47, align 1, !tbaa !38
  %48 = ptrtoint ptr %47 to i64
  %49 = ptrtoint ptr %0 to i64
  %50 = sub i64 %48, %49
  br label %51

51:                                               ; preds = %13, %20, %46
  %52 = phi i64 [ %50, %46 ], [ -1, %20 ], [ -1, %13 ]
  %53 = phi ptr [ %0, %46 ], [ null, %20 ], [ null, %13 ]
  store i64 %52, ptr %1, align 8, !tbaa !50
  ret ptr %53
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @Perl_bytes_from_utf8(ptr noundef %0, ptr nocapture noundef %1, ptr nocapture noundef %2) local_unnamed_addr #3 !prof !47 {
  %4 = load i8, ptr %2, align 1, !tbaa !63, !range !65, !noundef !66
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %65, label %6

6:                                                ; preds = %3
  %7 = load i64, ptr %1, align 8, !tbaa !50
  %8 = getelementptr inbounds i8, ptr %0, i64 %7
  %9 = icmp sgt i64 %7, 0
  br i1 %9, label %10, label %38

10:                                               ; preds = %6
  %11 = ptrtoint ptr %8 to i64
  br label %12

12:                                               ; preds = %10, %31
  %13 = phi i32 [ 0, %10 ], [ %33, %31 ]
  %14 = phi ptr [ %0, %10 ], [ %34, %31 ]
  %15 = load i8, ptr %14, align 1, !tbaa !38
  %16 = icmp sgt i8 %15, -1
  br i1 %16, label %31, label %17

17:                                               ; preds = %12
  %18 = and i8 %15, -2
  %19 = icmp eq i8 %18, -62
  %20 = ptrtoint ptr %14 to i64
  %21 = sub i64 %11, %20
  %22 = icmp sgt i64 %21, 1
  %23 = and i1 %22, %19
  br i1 %23, label %24, label %65

24:                                               ; preds = %17
  %25 = getelementptr inbounds i8, ptr %14, i64 1
  %26 = load i8, ptr %25, align 1, !tbaa !38
  %27 = and i8 %26, -64
  %28 = icmp eq i8 %27, -128
  br i1 %28, label %29, label %65

29:                                               ; preds = %24
  %30 = add nsw i32 %13, 1
  br label %31

31:                                               ; preds = %29, %12
  %32 = phi ptr [ %14, %12 ], [ %25, %29 ]
  %33 = phi i32 [ %13, %12 ], [ %30, %29 ]
  %34 = getelementptr inbounds i8, ptr %32, i64 1
  %35 = icmp ult ptr %34, %8
  br i1 %35, label %12, label %36, !llvm.loop !67

36:                                               ; preds = %31
  %37 = sext i32 %33 to i64
  br label %38

38:                                               ; preds = %36, %6
  %39 = phi i64 [ 0, %6 ], [ %37, %36 ]
  store i8 0, ptr %2, align 1, !tbaa !63
  %40 = add i64 %7, 1
  %41 = sub i64 %40, %39
  %42 = tail call ptr @Perl_safesysmalloc(i64 noundef %41) #20
  br i1 %9, label %43, label %60

43:                                               ; preds = %38, %55
  %44 = phi ptr [ %58, %55 ], [ %42, %38 ]
  %45 = phi ptr [ %56, %55 ], [ %0, %38 ]
  %46 = getelementptr inbounds i8, ptr %45, i64 1
  %47 = load i8, ptr %45, align 1, !tbaa !38
  %48 = icmp sgt i8 %47, -1
  br i1 %48, label %55, label %49

49:                                               ; preds = %43
  %50 = shl i8 %47, 6
  %51 = load i8, ptr %46, align 1, !tbaa !38
  %52 = and i8 %51, 63
  %53 = or disjoint i8 %52, %50
  %54 = getelementptr inbounds i8, ptr %45, i64 2
  br label %55

55:                                               ; preds = %49, %43
  %56 = phi ptr [ %46, %43 ], [ %54, %49 ]
  %57 = phi i8 [ %47, %43 ], [ %53, %49 ]
  %58 = getelementptr inbounds i8, ptr %44, i64 1
  store i8 %57, ptr %44, align 1, !tbaa !38
  %59 = icmp ult ptr %56, %8
  br i1 %59, label %43, label %60, !llvm.loop !68

60:                                               ; preds = %55, %38
  %61 = phi ptr [ %42, %38 ], [ %58, %55 ]
  store i8 0, ptr %61, align 1, !tbaa !38
  %62 = ptrtoint ptr %61 to i64
  %63 = ptrtoint ptr %42 to i64
  %64 = sub i64 %62, %63
  store i64 %64, ptr %1, align 8, !tbaa !50
  br label %65

65:                                               ; preds = %17, %24, %3, %60
  %66 = phi ptr [ %42, %60 ], [ %0, %3 ], [ %0, %24 ], [ %0, %17 ]
  ret ptr %66
}

; Function Attrs: optsize
declare ptr @Perl_safesysmalloc(i64 noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @Perl_bytes_to_utf8(ptr noundef readonly %0, ptr nocapture noundef %1) local_unnamed_addr #3 !prof !47 {
  %3 = alloca ptr, align 8
  %4 = load i64, ptr %1, align 8, !tbaa !50
  %5 = getelementptr inbounds i8, ptr %0, i64 %4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #22
  %6 = shl i64 %4, 1
  %7 = or disjoint i64 %6, 1
  %8 = tail call ptr @Perl_safesysmalloc(i64 noundef %7) #20
  store ptr %8, ptr %3, align 8, !tbaa !53
  %9 = icmp sgt i64 %4, 0
  br i1 %9, label %10, label %17

10:                                               ; preds = %2, %10
  %11 = phi ptr [ %13, %10 ], [ %0, %2 ]
  %12 = load i8, ptr %11, align 1, !tbaa !38
  call fastcc void @S_append_utf8_from_native_byte(i8 noundef zeroext %12, ptr noundef nonnull %3) #21
  %13 = getelementptr inbounds i8, ptr %11, i64 1
  %14 = icmp ult ptr %13, %5
  br i1 %14, label %10, label %15, !llvm.loop !69

15:                                               ; preds = %10
  %16 = load ptr, ptr %3, align 8, !tbaa !53
  br label %17

17:                                               ; preds = %15, %2
  %18 = phi ptr [ %16, %15 ], [ %8, %2 ]
  store i8 0, ptr %18, align 1, !tbaa !38
  %19 = ptrtoint ptr %18 to i64
  %20 = ptrtoint ptr %8 to i64
  %21 = sub i64 %19, %20
  store i64 %21, ptr %1, align 8, !tbaa !50
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #22
  ret ptr %8
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @S_append_utf8_from_native_byte(i8 noundef zeroext %0, ptr nocapture noundef %1) unnamed_addr #8 !prof !47 !PGOFuncName !70 {
  %3 = icmp sgt i8 %0, -1
  br i1 %3, label %4, label %7

4:                                                ; preds = %2
  %5 = load ptr, ptr %1, align 8, !tbaa !53
  %6 = getelementptr inbounds i8, ptr %5, i64 1
  store ptr %6, ptr %1, align 8, !tbaa !53
  store i8 %0, ptr %5, align 1, !tbaa !38
  br label %15

7:                                                ; preds = %2
  %8 = lshr i8 %0, 6
  %9 = or disjoint i8 %8, -64
  %10 = load ptr, ptr %1, align 8, !tbaa !53
  %11 = getelementptr inbounds i8, ptr %10, i64 1
  store ptr %11, ptr %1, align 8, !tbaa !53
  store i8 %9, ptr %10, align 1, !tbaa !38
  %12 = and i8 %0, -65
  %13 = load ptr, ptr %1, align 8, !tbaa !53
  %14 = getelementptr inbounds i8, ptr %13, i64 1
  store ptr %14, ptr %1, align 8, !tbaa !53
  store i8 %12, ptr %13, align 1, !tbaa !38
  br label %15

15:                                               ; preds = %7, %4
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @Perl_utf16_to_utf8(ptr noundef readonly %0, ptr noundef %1, i32 noundef %2, ptr nocapture noundef writeonly %3) local_unnamed_addr #3 !prof !47 {
  %5 = and i32 %2, 1
  %6 = icmp eq i32 %5, 0
  %7 = sext i32 %2 to i64
  br i1 %6, label %9, label %8

8:                                                ; preds = %4
  tail call void (ptr, ...) @Perl_croak(ptr noundef nonnull @.str.17, i64 noundef %7) #20
  br label %9

9:                                                ; preds = %4, %8
  %10 = getelementptr inbounds i8, ptr %0, i64 %7
  %11 = icmp sgt i32 %2, 0
  br i1 %11, label %12, label %99

12:                                               ; preds = %9, %95
  %13 = phi ptr [ %97, %95 ], [ %0, %9 ]
  %14 = phi ptr [ %96, %95 ], [ %1, %9 ]
  %15 = load i8, ptr %13, align 1, !tbaa !38
  %16 = zext i8 %15 to i64
  %17 = shl nuw nsw i64 %16, 8
  %18 = getelementptr inbounds i8, ptr %13, i64 1
  %19 = load i8, ptr %18, align 1, !tbaa !38
  %20 = zext i8 %19 to i64
  %21 = or disjoint i64 %17, %20
  %22 = getelementptr inbounds i8, ptr %13, i64 2
  %23 = icmp ult i64 %21, 128
  br i1 %23, label %24, label %26

24:                                               ; preds = %12
  %25 = getelementptr inbounds i8, ptr %14, i64 1
  store i8 %19, ptr %14, align 1, !tbaa !38
  br label %95, !llvm.loop !71

26:                                               ; preds = %12
  %27 = icmp ult i64 %21, 2048
  br i1 %27, label %28, label %36

28:                                               ; preds = %26
  %29 = lshr i64 %21, 6
  %30 = trunc i64 %29 to i8
  %31 = or disjoint i8 %30, -64
  %32 = getelementptr inbounds i8, ptr %14, i64 1
  store i8 %31, ptr %14, align 1, !tbaa !38
  %33 = and i8 %19, 63
  %34 = or disjoint i8 %33, -128
  %35 = getelementptr inbounds i8, ptr %14, i64 2
  store i8 %34, ptr %32, align 1, !tbaa !38
  br label %95, !llvm.loop !71

36:                                               ; preds = %26
  %37 = and i64 %16, 248
  %38 = icmp eq i64 %37, 216
  br i1 %38, label %39, label %61

39:                                               ; preds = %36
  %40 = icmp uge ptr %22, %10
  %41 = icmp ugt i64 %21, 56319
  %42 = or i1 %40, %41
  br i1 %42, label %43, label %44

43:                                               ; preds = %39
  tail call void (ptr, ...) @Perl_croak(ptr noundef nonnull @.str.18) #20
  br label %61

44:                                               ; preds = %39
  %45 = load i8, ptr %22, align 1, !tbaa !38
  %46 = zext i8 %45 to i64
  %47 = shl nuw nsw i64 %46, 8
  %48 = getelementptr inbounds i8, ptr %13, i64 3
  %49 = load i8, ptr %48, align 1, !tbaa !38
  %50 = zext i8 %49 to i64
  %51 = or disjoint i64 %47, %50
  %52 = add nsw i64 %47, -57344
  %53 = icmp ult i64 %52, -1024
  br i1 %53, label %54, label %55

54:                                               ; preds = %44
  tail call void (ptr, ...) @Perl_croak(ptr noundef nonnull @.str.18) #20
  br label %55

55:                                               ; preds = %54, %44
  %56 = getelementptr inbounds i8, ptr %13, i64 4
  %57 = shl nuw nsw i64 %21, 10
  %58 = add nsw i64 %57, -56613888
  %59 = add nuw nsw i64 %58, %51
  %60 = icmp ult i64 %59, 65536
  br i1 %60, label %61, label %77

61:                                               ; preds = %36, %43, %55
  %62 = phi ptr [ %56, %55 ], [ %22, %43 ], [ %22, %36 ]
  %63 = phi i64 [ %59, %55 ], [ %21, %43 ], [ %21, %36 ]
  %64 = lshr i64 %63, 12
  %65 = trunc i64 %64 to i8
  %66 = or disjoint i8 %65, -32
  %67 = getelementptr inbounds i8, ptr %14, i64 1
  store i8 %66, ptr %14, align 1, !tbaa !38
  %68 = lshr i64 %63, 6
  %69 = trunc i64 %68 to i8
  %70 = and i8 %69, 63
  %71 = or disjoint i8 %70, -128
  %72 = getelementptr inbounds i8, ptr %14, i64 2
  store i8 %71, ptr %67, align 1, !tbaa !38
  %73 = trunc i64 %63 to i8
  %74 = and i8 %73, 63
  %75 = or disjoint i8 %74, -128
  %76 = getelementptr inbounds i8, ptr %14, i64 3
  store i8 %75, ptr %72, align 1, !tbaa !38
  br label %95, !llvm.loop !71

77:                                               ; preds = %55
  %78 = lshr i64 %59, 18
  %79 = trunc i64 %78 to i8
  %80 = or i8 %79, -16
  %81 = getelementptr inbounds i8, ptr %14, i64 1
  store i8 %80, ptr %14, align 1, !tbaa !38
  %82 = lshr i64 %59, 12
  %83 = trunc i64 %82 to i8
  %84 = and i8 %83, 63
  %85 = or disjoint i8 %84, -128
  %86 = getelementptr inbounds i8, ptr %14, i64 2
  store i8 %85, ptr %81, align 1, !tbaa !38
  %87 = lshr i64 %59, 6
  %88 = trunc i64 %87 to i8
  %89 = and i8 %88, 63
  %90 = or disjoint i8 %89, -128
  %91 = getelementptr inbounds i8, ptr %14, i64 3
  store i8 %90, ptr %86, align 1, !tbaa !38
  %92 = and i8 %49, 63
  %93 = or disjoint i8 %92, -128
  %94 = getelementptr inbounds i8, ptr %14, i64 4
  store i8 %93, ptr %91, align 1, !tbaa !38
  br label %95, !llvm.loop !71

95:                                               ; preds = %77, %61, %28, %24
  %96 = phi ptr [ %25, %24 ], [ %35, %28 ], [ %76, %61 ], [ %94, %77 ]
  %97 = phi ptr [ %22, %24 ], [ %22, %28 ], [ %62, %61 ], [ %56, %77 ]
  %98 = icmp ult ptr %97, %10
  br i1 %98, label %12, label %99

99:                                               ; preds = %95, %9
  %100 = phi ptr [ %1, %9 ], [ %96, %95 ]
  %101 = ptrtoint ptr %100 to i64
  %102 = ptrtoint ptr %1 to i64
  %103 = sub i64 %101, %102
  %104 = trunc i64 %103 to i32
  store i32 %104, ptr %3, align 4, !tbaa !72
  ret ptr %100
}

; Function Attrs: optsize
declare void @Perl_croak(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @Perl_utf16_to_utf8_reversed(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr nocapture noundef writeonly %3) local_unnamed_addr #3 !prof !47 {
  %5 = sext i32 %2 to i64
  %6 = getelementptr inbounds i8, ptr %0, i64 %5
  %7 = and i32 %2, 1
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %10, label %9

9:                                                ; preds = %4
  tail call void (ptr, ...) @Perl_croak(ptr noundef nonnull @.str.19, i64 noundef %5) #20
  br label %10

10:                                               ; preds = %9, %4
  %11 = icmp sgt i32 %2, 0
  br i1 %11, label %12, label %19

12:                                               ; preds = %10, %12
  %13 = phi ptr [ %17, %12 ], [ %0, %10 ]
  %14 = load i8, ptr %13, align 1, !tbaa !38
  %15 = getelementptr inbounds i8, ptr %13, i64 1
  %16 = load i8, ptr %15, align 1, !tbaa !38
  store i8 %16, ptr %13, align 1, !tbaa !38
  store i8 %14, ptr %15, align 1, !tbaa !38
  %17 = getelementptr inbounds i8, ptr %13, i64 2
  %18 = icmp ult ptr %17, %6
  br i1 %18, label %12, label %19, !llvm.loop !74

19:                                               ; preds = %12, %10
  %20 = tail call ptr @Perl_utf16_to_utf8(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3) #21
  ret ptr %20
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local zeroext i1 @Perl__is_uni_FOO(i8 noundef zeroext %0, i64 noundef %1) local_unnamed_addr #3 !prof !47 {
  %3 = alloca [14 x i8], align 1
  call void @llvm.lifetime.start.p0(i64 14, ptr nonnull %3) #22
  %4 = call ptr @Perl_uvoffuni_to_utf8_flags(ptr noundef nonnull %3, i64 noundef %1, i64 noundef 0) #21
  %5 = call zeroext i1 @Perl__is_utf8_FOO(i8 noundef zeroext %0, ptr noundef nonnull %3) #21
  call void @llvm.lifetime.end.p0(i64 14, ptr nonnull %3) #22
  ret i1 %5
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local zeroext i1 @Perl__is_utf8_FOO(i8 noundef zeroext %0, ptr noundef %1) local_unnamed_addr #3 !prof !47 {
  %3 = zext i8 %0 to i64
  %4 = getelementptr inbounds [10 x ptr], ptr @PL_utf8_swash_ptrs, i64 0, i64 %3
  %5 = shl i64 %3, 2
  %6 = call ptr @llvm.load.relative.i64(ptr @reltable.Perl__is_utf8_FOO, i64 %5)
  %7 = getelementptr inbounds [16 x ptr], ptr @PL_XPosix_ptrs, i64 0, i64 %3
  %8 = load ptr, ptr %7, align 8, !tbaa !53
  %9 = tail call fastcc zeroext i1 @S_is_utf8_common(ptr noundef %1, ptr noundef nonnull %4, ptr noundef %6, ptr noundef %8) #21
  ret i1 %9
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local zeroext i1 @Perl__is_utf8_idstart(ptr noundef %0) local_unnamed_addr #3 !prof !47 {
  %2 = load i8, ptr %0, align 1, !tbaa !38
  %3 = icmp eq i8 %2, 95
  br i1 %3, label %6, label %4

4:                                                ; preds = %1
  %5 = tail call fastcc zeroext i1 @S_is_utf8_common(ptr noundef nonnull %0, ptr noundef nonnull @PL_utf8_idstart, ptr noundef nonnull @.str.20, ptr noundef null) #21
  br label %6

6:                                                ; preds = %1, %4
  %7 = phi i1 [ %5, %4 ], [ true, %1 ]
  ret i1 %7
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc zeroext i1 @S_is_utf8_common(ptr noundef %0, ptr nocapture noundef %1, ptr noundef %2, ptr noundef %3) unnamed_addr #3 !prof !47 !PGOFuncName !75 {
  %5 = alloca i8, align 1
  %6 = load i8, ptr %0, align 1, !tbaa !38
  %7 = zext i8 %6 to i64
  %8 = getelementptr inbounds [0 x i8], ptr @PL_utf8skip, i64 0, i64 %7
  %9 = load i8, ptr %8, align 1, !tbaa !38
  %10 = zext i8 %9 to i64
  %11 = getelementptr inbounds i8, ptr %0, i64 %10
  %12 = icmp eq i8 %9, 0
  br i1 %12, label %88, label %13

13:                                               ; preds = %4
  %14 = icmp sgt i8 %6, -1
  br i1 %14, label %101, label %15

15:                                               ; preds = %13
  %16 = icmp ult i8 %9, 5
  br i1 %16, label %17, label %85

17:                                               ; preds = %15
  %18 = add nsw i8 %6, 62
  %19 = icmp ult i8 %18, 30
  br i1 %19, label %20, label %25

20:                                               ; preds = %17
  %21 = getelementptr inbounds i8, ptr %0, i64 1
  %22 = load i8, ptr %21, align 1, !tbaa !38
  %23 = and i8 %22, -64
  %24 = icmp eq i8 %23, -128
  br i1 %24, label %101, label %88

25:                                               ; preds = %17
  %26 = icmp eq i8 %6, -32
  br i1 %26, label %27, label %37

27:                                               ; preds = %25
  %28 = getelementptr inbounds i8, ptr %0, i64 1
  %29 = load i8, ptr %28, align 1, !tbaa !38
  %30 = and i8 %29, -32
  %31 = icmp eq i8 %30, -96
  br i1 %31, label %32, label %88

32:                                               ; preds = %27
  %33 = getelementptr inbounds i8, ptr %0, i64 2
  %34 = load i8, ptr %33, align 1, !tbaa !38
  %35 = and i8 %34, -64
  %36 = icmp eq i8 %35, -128
  br i1 %36, label %101, label %88

37:                                               ; preds = %25
  %38 = add nsw i8 %6, 31
  %39 = icmp ult i8 %38, 15
  br i1 %39, label %40, label %50

40:                                               ; preds = %37
  %41 = getelementptr inbounds i8, ptr %0, i64 1
  %42 = load i8, ptr %41, align 1, !tbaa !38
  %43 = and i8 %42, -64
  %44 = icmp eq i8 %43, -128
  br i1 %44, label %45, label %88

45:                                               ; preds = %40
  %46 = getelementptr inbounds i8, ptr %0, i64 2
  %47 = load i8, ptr %46, align 1, !tbaa !38
  %48 = and i8 %47, -64
  %49 = icmp eq i8 %48, -128
  br i1 %49, label %101, label %88

50:                                               ; preds = %37
  %51 = icmp eq i8 %6, -16
  br i1 %51, label %52, label %67

52:                                               ; preds = %50
  %53 = getelementptr inbounds i8, ptr %0, i64 1
  %54 = load i8, ptr %53, align 1, !tbaa !38
  %55 = add i8 %54, 112
  %56 = icmp ult i8 %55, 48
  br i1 %56, label %57, label %88

57:                                               ; preds = %52
  %58 = getelementptr inbounds i8, ptr %0, i64 2
  %59 = load i8, ptr %58, align 1, !tbaa !38
  %60 = and i8 %59, -64
  %61 = icmp eq i8 %60, -128
  br i1 %61, label %62, label %88

62:                                               ; preds = %57
  %63 = getelementptr inbounds i8, ptr %0, i64 3
  %64 = load i8, ptr %63, align 1, !tbaa !38
  %65 = and i8 %64, -64
  %66 = icmp eq i8 %65, -128
  br i1 %66, label %101, label %88

67:                                               ; preds = %50
  %68 = add nsw i8 %6, 15
  %69 = icmp ult i8 %68, 7
  br i1 %69, label %70, label %88

70:                                               ; preds = %67
  %71 = getelementptr inbounds i8, ptr %0, i64 1
  %72 = load i8, ptr %71, align 1, !tbaa !38
  %73 = and i8 %72, -64
  %74 = icmp eq i8 %73, -128
  br i1 %74, label %75, label %88

75:                                               ; preds = %70
  %76 = getelementptr inbounds i8, ptr %0, i64 2
  %77 = load i8, ptr %76, align 1, !tbaa !38
  %78 = and i8 %77, -64
  %79 = icmp eq i8 %78, -128
  br i1 %79, label %80, label %88

80:                                               ; preds = %75
  %81 = getelementptr inbounds i8, ptr %0, i64 3
  %82 = load i8, ptr %81, align 1, !tbaa !38
  %83 = and i8 %82, -64
  %84 = icmp eq i8 %83, -128
  br i1 %84, label %101, label %88

85:                                               ; preds = %15
  %86 = tail call fastcc i64 @S__is_utf8_char_slow(ptr noundef nonnull %0, ptr noundef nonnull %11) #21
  %87 = icmp eq i64 %86, 0
  br i1 %87, label %88, label %101

88:                                               ; preds = %80, %62, %45, %32, %20, %67, %70, %75, %52, %57, %40, %27, %4, %85
  %89 = tail call zeroext i1 @Perl_ckwarn_d(i32 noundef 44) #20
  br i1 %89, label %90, label %112

90:                                               ; preds = %88
  tail call void (i32, ptr, ...) @Perl_warner(i32 noundef 11266, ptr noundef nonnull @.str.21, ptr noundef %2) #20
  %91 = tail call zeroext i1 @Perl_ckwarn(i32 noundef 44) #20
  br i1 %91, label %92, label %112

92:                                               ; preds = %90
  %93 = load i8, ptr %0, align 1, !tbaa !38
  %94 = zext i8 %93 to i64
  %95 = getelementptr inbounds [0 x i8], ptr @PL_utf8skip, i64 0, i64 %94
  %96 = load i8, ptr %95, align 1, !tbaa !38
  %97 = zext i8 %96 to i64
  %98 = tail call zeroext i1 @Perl_ckwarn_d(i32 noundef 44) #20
  %99 = select i1 %98, i32 0, i32 -8161
  %100 = tail call i64 @Perl_utf8n_to_uvchr(ptr noundef nonnull %0, i64 noundef %97, ptr noundef null, i32 noundef %99) #21
  br label %112

101:                                              ; preds = %80, %62, %45, %32, %20, %13, %85
  %102 = load ptr, ptr %1, align 8, !tbaa !53
  %103 = icmp eq ptr %102, null
  br i1 %103, label %104, label %108

104:                                              ; preds = %101
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %5) #22
  store i8 4, ptr %5, align 1, !tbaa !38
  %105 = icmp eq ptr %3, null
  %106 = select i1 %105, ptr %2, ptr @.str.9
  %107 = call ptr @Perl__core_swash_init(ptr noundef nonnull @.str.22, ptr noundef %106, ptr noundef nonnull @PL_sv_undef, i32 noundef 1, i32 noundef 0, ptr noundef %3, ptr noundef nonnull %5) #21
  store ptr %107, ptr %1, align 8, !tbaa !53
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %5) #22
  br label %108

108:                                              ; preds = %104, %101
  %109 = phi ptr [ %107, %104 ], [ %102, %101 ]
  %110 = call i64 @Perl_swash_fetch(ptr noundef %109, ptr noundef nonnull %0, i1 noundef zeroext true) #21, !range !76
  %111 = icmp ne i64 %110, 0
  br label %112

112:                                              ; preds = %88, %92, %90, %108
  %113 = phi i1 [ %111, %108 ], [ false, %90 ], [ false, %92 ], [ false, %88 ]
  ret i1 %113
}

; Function Attrs: optsize
declare zeroext i1 @Perl_ckwarn(i32 noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @Perl__core_swash_init(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, i32 noundef %4, ptr noundef %5, ptr noundef %6) local_unnamed_addr #3 !prof !47 {
  %8 = alloca ptr, align 8
  %9 = load ptr, ptr @PL_curpm, align 8, !tbaa !53
  %10 = icmp ne ptr %6, null
  br i1 %10, label %11, label %17

11:                                               ; preds = %7
  %12 = load i8, ptr %6, align 1, !tbaa !38
  %13 = freeze i8 %12
  %14 = and i8 %13, 4
  %15 = icmp eq i8 %14, 0
  %16 = select i1 %15, i32 -1, i32 512
  br label %17

17:                                               ; preds = %11, %7
  %18 = phi i32 [ -1, %7 ], [ %16, %11 ]
  store ptr null, ptr @PL_curpm, align 8, !tbaa !53
  %19 = icmp eq ptr %2, @PL_sv_undef
  br i1 %19, label %20, label %23

20:                                               ; preds = %17
  %21 = load i8, ptr %1, align 1
  %22 = icmp eq i8 %21, 0
  br i1 %22, label %373, label %23

23:                                               ; preds = %20, %17
  %24 = load ptr, ptr @PL_stack_sp, align 8, !tbaa !53
  %25 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #19
  %26 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #19
  %27 = trunc i64 %25 to i32
  %28 = tail call ptr @Perl_gv_stashpvn(ptr noundef %0, i32 noundef %27, i32 noundef 0) #20
  %29 = load ptr, ptr @PL_curstackinfo, align 8, !tbaa !53
  %30 = getelementptr inbounds %struct.stackinfo, ptr %29, i64 0, i32 3
  %31 = load ptr, ptr %30, align 8, !tbaa !77
  %32 = icmp eq ptr %31, null
  br i1 %32, label %33, label %38

33:                                               ; preds = %23
  %34 = tail call ptr @Perl_new_stackinfo(i32 noundef 32, i32 noundef 22) #20
  %35 = load ptr, ptr @PL_curstackinfo, align 8, !tbaa !53
  %36 = getelementptr inbounds %struct.stackinfo, ptr %34, i64 0, i32 2
  store ptr %35, ptr %36, align 8, !tbaa !79
  %37 = getelementptr inbounds %struct.stackinfo, ptr %35, i64 0, i32 3
  store ptr %34, ptr %37, align 8, !tbaa !77
  br label %38

38:                                               ; preds = %33, %23
  %39 = phi ptr [ %31, %23 ], [ %34, %33 ]
  %40 = getelementptr inbounds %struct.stackinfo, ptr %39, i64 0, i32 6
  store i32 2, ptr %40, align 8, !tbaa !80
  %41 = getelementptr inbounds %struct.stackinfo, ptr %39, i64 0, i32 4
  store i32 -1, ptr %41, align 8, !tbaa !81
  %42 = load ptr, ptr %39, align 8, !tbaa !82
  %43 = load ptr, ptr %42, align 8, !tbaa !83
  %44 = getelementptr inbounds %struct.xpvav, ptr %43, i64 0, i32 2
  store i64 0, ptr %44, align 8, !tbaa !85
  %45 = load ptr, ptr @PL_stack_base, align 8, !tbaa !53
  %46 = ptrtoint ptr %24 to i64
  %47 = ptrtoint ptr %45 to i64
  %48 = sub i64 %46, %47
  %49 = ashr exact i64 %48, 3
  %50 = load ptr, ptr @PL_curstack, align 8, !tbaa !53
  %51 = load ptr, ptr %50, align 8, !tbaa !83
  %52 = getelementptr inbounds %struct.xpvav, ptr %51, i64 0, i32 2
  store i64 %49, ptr %52, align 8, !tbaa !85
  %53 = getelementptr inbounds %struct.av, ptr %42, i64 0, i32 3
  %54 = load ptr, ptr %53, align 8, !tbaa !38
  store ptr %54, ptr @PL_stack_base, align 8, !tbaa !53
  %55 = load ptr, ptr %39, align 8, !tbaa !82
  %56 = load ptr, ptr %55, align 8, !tbaa !83
  %57 = getelementptr inbounds %struct.xpvav, ptr %56, i64 0, i32 3
  %58 = load i64, ptr %57, align 8, !tbaa !87
  %59 = getelementptr inbounds ptr, ptr %54, i64 %58
  store ptr %59, ptr @PL_stack_max, align 8, !tbaa !53
  %60 = load ptr, ptr %39, align 8, !tbaa !82
  %61 = load ptr, ptr %60, align 8, !tbaa !83
  %62 = getelementptr inbounds %struct.xpvav, ptr %61, i64 0, i32 2
  %63 = load i64, ptr %62, align 8, !tbaa !85
  %64 = getelementptr inbounds ptr, ptr %54, i64 %63
  store ptr %64, ptr @PL_stack_sp, align 8, !tbaa !53
  %65 = load ptr, ptr %39, align 8, !tbaa !82
  store ptr %65, ptr @PL_curstack, align 8, !tbaa !53
  store ptr %39, ptr @PL_curstackinfo, align 8, !tbaa !53
  tail call void @Perl_push_scope() #20
  tail call void @Perl_save_hints() #20
  tail call void @Perl_save_re_context() #20
  %66 = load ptr, ptr @PL_subname, align 8, !tbaa !53
  tail call void @Perl_save_item(ptr noundef %66) #20
  %67 = load ptr, ptr @PL_parser, align 8, !tbaa !53
  %68 = icmp eq ptr %67, null
  br i1 %68, label %76, label %69

69:                                               ; preds = %38
  %70 = getelementptr inbounds %struct.yy_parser, ptr %67, i64 0, i32 44
  %71 = load i8, ptr %70, align 1, !tbaa !88
  %72 = icmp eq i8 %71, 0
  br i1 %72, label %76, label %73

73:                                               ; preds = %69
  tail call void @Perl_save_I8(ptr noundef nonnull %70) #20
  %74 = load ptr, ptr @PL_parser, align 8, !tbaa !53
  %75 = getelementptr inbounds %struct.yy_parser, ptr %74, i64 0, i32 44
  store i8 0, ptr %75, align 1, !tbaa !88
  br label %76

76:                                               ; preds = %73, %69, %38
  %77 = tail call ptr @Perl_gv_fetchmeth_pvn(ptr noundef %28, ptr noundef nonnull @.str.54, i64 noundef 8, i32 noundef -1, i32 noundef 0) #20
  %78 = icmp eq ptr %77, null
  br i1 %78, label %79, label %157

79:                                               ; preds = %76
  tail call void @Perl_push_scope() #20
  %80 = load ptr, ptr @PL_errgv, align 8, !tbaa !53
  %81 = getelementptr inbounds %struct.gv, ptr %80, i64 0, i32 3
  %82 = load ptr, ptr %81, align 8, !tbaa !38
  %83 = load ptr, ptr %82, align 8, !tbaa !92
  %84 = icmp eq ptr %83, null
  br i1 %84, label %89, label %85

85:                                               ; preds = %79
  tail call void @Perl_save_pushptr(ptr noundef nonnull %83, i32 noundef 11) #20
  %86 = load ptr, ptr @PL_errgv, align 8, !tbaa !53
  %87 = getelementptr inbounds %struct.gv, ptr %86, i64 0, i32 3
  %88 = load ptr, ptr %87, align 8, !tbaa !38
  br label %89

89:                                               ; preds = %85, %79
  %90 = phi ptr [ %88, %85 ], [ %82, %79 ]
  store ptr null, ptr %90, align 8, !tbaa !92
  tail call void @Perl_save_bool(ptr noundef nonnull @PL_tainted) #20
  store i8 0, ptr @PL_tainted, align 1, !tbaa !63
  %91 = tail call ptr @Perl_newSVpvn(ptr noundef %0, i64 noundef %25) #20
  tail call void (i32, ptr, ptr, ...) @Perl_load_module(i32 noundef 2, ptr noundef %91, ptr noundef null) #20
  %92 = load ptr, ptr @PL_errgv, align 8, !tbaa !53
  %93 = getelementptr inbounds %struct.gv, ptr %92, i64 0, i32 3
  %94 = load ptr, ptr %93, align 8, !tbaa !38
  %95 = load ptr, ptr %94, align 8, !tbaa !92
  %96 = icmp eq ptr %95, null
  br i1 %96, label %151, label %97

97:                                               ; preds = %89
  %98 = getelementptr inbounds %struct.sv, ptr %95, i64 0, i32 2
  %99 = load i32, ptr %98, align 4, !tbaa !94
  %100 = and i32 %99, 2097152
  %101 = icmp eq i32 %100, 0
  br i1 %101, label %104, label %102

102:                                              ; preds = %97
  %103 = tail call zeroext i1 @Perl_sv_2bool_flags(ptr noundef nonnull %95, i32 noundef 2) #20
  br i1 %103, label %156, label %151

104:                                              ; preds = %97
  %105 = and i32 %99, 65280
  %106 = icmp ne i32 %105, 0
  %107 = and i32 %99, 255
  %108 = icmp eq i32 %107, 8
  %109 = or i1 %106, %108
  %110 = and i32 %99, 16777471
  %111 = icmp eq i32 %110, 16777226
  %112 = or i1 %111, %109
  br i1 %112, label %113, label %151

113:                                              ; preds = %104
  %114 = and i32 %99, 1024
  %115 = icmp eq i32 %114, 0
  br i1 %115, label %130, label %116

116:                                              ; preds = %113
  %117 = load ptr, ptr %95, align 8, !tbaa !96
  %118 = icmp eq ptr %117, null
  br i1 %118, label %151, label %119

119:                                              ; preds = %116
  %120 = getelementptr inbounds %struct.xpv, ptr %117, i64 0, i32 2
  %121 = load i64, ptr %120, align 8, !tbaa !97
  %122 = icmp ugt i64 %121, 1
  br i1 %122, label %156, label %123

123:                                              ; preds = %119
  %124 = icmp eq i64 %121, 0
  br i1 %124, label %151, label %125

125:                                              ; preds = %123
  %126 = getelementptr inbounds %struct.sv, ptr %95, i64 0, i32 3
  %127 = load ptr, ptr %126, align 8, !tbaa !38
  %128 = load i8, ptr %127, align 1, !tbaa !38
  %129 = icmp eq i8 %128, 48
  br i1 %129, label %151, label %156

130:                                              ; preds = %113
  %131 = and i32 %99, 768
  %132 = icmp eq i32 %131, 0
  br i1 %132, label %149, label %133

133:                                              ; preds = %130
  %134 = and i32 %99, 256
  %135 = icmp eq i32 %134, 0
  br i1 %135, label %141, label %136

136:                                              ; preds = %133
  %137 = load ptr, ptr %95, align 8, !tbaa !96
  %138 = getelementptr inbounds %struct.xpviv, ptr %137, i64 0, i32 4
  %139 = load i64, ptr %138, align 8, !tbaa !38
  %140 = icmp eq i64 %139, 0
  br i1 %140, label %141, label %156

141:                                              ; preds = %136, %133
  %142 = and i32 %99, 512
  %143 = icmp eq i32 %142, 0
  br i1 %143, label %151, label %144

144:                                              ; preds = %141
  %145 = load ptr, ptr %95, align 8, !tbaa !96
  %146 = getelementptr inbounds %struct.xpvnv, ptr %145, i64 0, i32 5
  %147 = load double, ptr %146, align 8, !tbaa !38
  %148 = fcmp une double %147, 0.000000e+00
  br i1 %148, label %156, label %151

149:                                              ; preds = %130
  %150 = tail call zeroext i1 @Perl_sv_2bool_flags(ptr noundef nonnull %95, i32 noundef 0) #20
  br i1 %150, label %156, label %151

151:                                              ; preds = %144, %104, %89, %149, %141, %125, %123, %116, %102
  %152 = tail call fastcc ptr @S_SvREFCNT_inc(ptr noundef %83) #21
  %153 = load ptr, ptr @PL_errgv, align 8, !tbaa !53
  %154 = getelementptr inbounds %struct.gv, ptr %153, i64 0, i32 3
  %155 = load ptr, ptr %154, align 8, !tbaa !38
  store ptr %83, ptr %155, align 8, !tbaa !92
  tail call fastcc void @S_SvREFCNT_dec(ptr noundef %95) #21
  br label %156

156:                                              ; preds = %151, %149, %144, %136, %125, %119, %102
  tail call void @Perl_pop_scope() #20
  br label %157

157:                                              ; preds = %156, %76
  %158 = load ptr, ptr @PL_stack_sp, align 8, !tbaa !53
  %159 = load ptr, ptr @PL_markstack_ptr, align 8, !tbaa !53
  %160 = getelementptr inbounds i32, ptr %159, i64 1
  store ptr %160, ptr @PL_markstack_ptr, align 8, !tbaa !53
  %161 = load ptr, ptr @PL_markstack_max, align 8, !tbaa !53
  %162 = icmp eq ptr %160, %161
  br i1 %162, label %163, label %165

163:                                              ; preds = %157
  %164 = tail call ptr @Perl_markstack_grow() #20
  br label %165

165:                                              ; preds = %157, %163
  %166 = phi ptr [ %164, %163 ], [ %160, %157 ]
  %167 = load ptr, ptr @PL_stack_base, align 8, !tbaa !53
  %168 = ptrtoint ptr %158 to i64
  %169 = ptrtoint ptr %167 to i64
  %170 = sub i64 %168, %169
  %171 = lshr exact i64 %170, 3
  %172 = trunc i64 %171 to i32
  store i32 %172, ptr %166, align 4, !tbaa !72
  %173 = load ptr, ptr @PL_stack_max, align 8, !tbaa !53
  %174 = ptrtoint ptr %173 to i64
  %175 = sub i64 %174, %168
  %176 = icmp slt i64 %175, 40
  br i1 %176, label %177, label %179

177:                                              ; preds = %165
  %178 = tail call ptr @Perl_stack_grow(ptr noundef %158, ptr noundef %158, i64 noundef 5) #20
  br label %179

179:                                              ; preds = %165, %177
  %180 = phi ptr [ %178, %177 ], [ %158, %165 ]
  %181 = tail call ptr @Perl_newSVpvn_flags(ptr noundef %0, i64 noundef %25, i32 noundef 524288) #20
  %182 = getelementptr inbounds ptr, ptr %180, i64 1
  store ptr %181, ptr %182, align 8, !tbaa !53
  %183 = tail call ptr @Perl_newSVpvn_flags(ptr noundef %1, i64 noundef %26, i32 noundef 524288) #20
  %184 = getelementptr inbounds ptr, ptr %180, i64 2
  store ptr %183, ptr %184, align 8, !tbaa !53
  %185 = getelementptr inbounds ptr, ptr %180, i64 3
  store ptr %2, ptr %185, align 8, !tbaa !53
  %186 = tail call ptr @Perl_sv_newmortal() #20
  %187 = getelementptr inbounds ptr, ptr %180, i64 4
  store ptr %186, ptr %187, align 8, !tbaa !53
  %188 = sext i32 %3 to i64
  tail call void @Perl_sv_setiv(ptr noundef %186, i64 noundef %188) #20
  %189 = tail call ptr @Perl_sv_newmortal() #20
  %190 = getelementptr inbounds ptr, ptr %180, i64 5
  store ptr %189, ptr %190, align 8, !tbaa !53
  %191 = sext i32 %4 to i64
  tail call void @Perl_sv_setiv(ptr noundef %189, i64 noundef %191) #20
  store ptr %190, ptr @PL_stack_sp, align 8, !tbaa !53
  %192 = load ptr, ptr @PL_errgv, align 8, !tbaa !53
  %193 = getelementptr inbounds %struct.gv, ptr %192, i64 0, i32 3
  %194 = load ptr, ptr %193, align 8, !tbaa !38
  %195 = load ptr, ptr %194, align 8, !tbaa !92
  %196 = icmp eq ptr %195, null
  br i1 %196, label %201, label %197

197:                                              ; preds = %179
  tail call void @Perl_save_pushptr(ptr noundef nonnull %195, i32 noundef 11) #20
  %198 = load ptr, ptr @PL_errgv, align 8, !tbaa !53
  %199 = getelementptr inbounds %struct.gv, ptr %198, i64 0, i32 3
  %200 = load ptr, ptr %199, align 8, !tbaa !38
  br label %201

201:                                              ; preds = %197, %179
  %202 = phi ptr [ %200, %197 ], [ %194, %179 ]
  store ptr null, ptr %202, align 8, !tbaa !92
  br i1 %78, label %206, label %203

203:                                              ; preds = %201
  %204 = tail call i32 @Perl_call_sv(ptr noundef nonnull %77, i32 noundef 2) #20
  %205 = icmp eq i32 %204, 0
  br i1 %205, label %215, label %210

206:                                              ; preds = %201
  %207 = tail call ptr @Perl_newSVpvn_flags(ptr noundef nonnull @.str.54, i64 noundef 8, i32 noundef 524288) #20
  %208 = tail call i32 @Perl_call_sv(ptr noundef %207, i32 noundef 130) #20
  %209 = icmp eq i32 %208, 0
  br i1 %209, label %215, label %210

210:                                              ; preds = %206, %203
  %211 = load ptr, ptr @PL_stack_sp, align 8, !tbaa !53
  %212 = getelementptr inbounds ptr, ptr %211, i64 -1
  store ptr %212, ptr @PL_stack_sp, align 8, !tbaa !53
  %213 = load ptr, ptr %211, align 8, !tbaa !53
  %214 = tail call fastcc ptr @S_SvREFCNT_inc(ptr noundef %213) #21
  br label %215

215:                                              ; preds = %210, %206, %203
  %216 = phi ptr [ %213, %210 ], [ @PL_sv_undef, %203 ], [ @PL_sv_undef, %206 ]
  %217 = load ptr, ptr @PL_errgv, align 8, !tbaa !53
  %218 = getelementptr inbounds %struct.gv, ptr %217, i64 0, i32 3
  %219 = load ptr, ptr %218, align 8, !tbaa !38
  %220 = load ptr, ptr %219, align 8, !tbaa !92
  %221 = icmp eq ptr %220, null
  br i1 %221, label %276, label %222

222:                                              ; preds = %215
  %223 = getelementptr inbounds %struct.sv, ptr %220, i64 0, i32 2
  %224 = load i32, ptr %223, align 4, !tbaa !94
  %225 = and i32 %224, 2097152
  %226 = icmp eq i32 %225, 0
  br i1 %226, label %229, label %227

227:                                              ; preds = %222
  %228 = tail call zeroext i1 @Perl_sv_2bool_flags(ptr noundef nonnull %220, i32 noundef 2) #20
  br i1 %228, label %281, label %276

229:                                              ; preds = %222
  %230 = and i32 %224, 65280
  %231 = icmp ne i32 %230, 0
  %232 = and i32 %224, 255
  %233 = icmp eq i32 %232, 8
  %234 = or i1 %231, %233
  %235 = and i32 %224, 16777471
  %236 = icmp eq i32 %235, 16777226
  %237 = or i1 %236, %234
  br i1 %237, label %238, label %276

238:                                              ; preds = %229
  %239 = and i32 %224, 1024
  %240 = icmp eq i32 %239, 0
  br i1 %240, label %255, label %241

241:                                              ; preds = %238
  %242 = load ptr, ptr %220, align 8, !tbaa !96
  %243 = icmp eq ptr %242, null
  br i1 %243, label %276, label %244

244:                                              ; preds = %241
  %245 = getelementptr inbounds %struct.xpv, ptr %242, i64 0, i32 2
  %246 = load i64, ptr %245, align 8, !tbaa !97
  %247 = icmp ugt i64 %246, 1
  br i1 %247, label %281, label %248

248:                                              ; preds = %244
  %249 = icmp eq i64 %246, 0
  br i1 %249, label %276, label %250

250:                                              ; preds = %248
  %251 = getelementptr inbounds %struct.sv, ptr %220, i64 0, i32 3
  %252 = load ptr, ptr %251, align 8, !tbaa !38
  %253 = load i8, ptr %252, align 1, !tbaa !38
  %254 = icmp eq i8 %253, 48
  br i1 %254, label %276, label %281

255:                                              ; preds = %238
  %256 = and i32 %224, 768
  %257 = icmp eq i32 %256, 0
  br i1 %257, label %274, label %258

258:                                              ; preds = %255
  %259 = and i32 %224, 256
  %260 = icmp eq i32 %259, 0
  br i1 %260, label %266, label %261

261:                                              ; preds = %258
  %262 = load ptr, ptr %220, align 8, !tbaa !96
  %263 = getelementptr inbounds %struct.xpviv, ptr %262, i64 0, i32 4
  %264 = load i64, ptr %263, align 8, !tbaa !38
  %265 = icmp eq i64 %264, 0
  br i1 %265, label %266, label %281

266:                                              ; preds = %261, %258
  %267 = and i32 %224, 512
  %268 = icmp eq i32 %267, 0
  br i1 %268, label %276, label %269

269:                                              ; preds = %266
  %270 = load ptr, ptr %220, align 8, !tbaa !96
  %271 = getelementptr inbounds %struct.xpvnv, ptr %270, i64 0, i32 5
  %272 = load double, ptr %271, align 8, !tbaa !38
  %273 = fcmp une double %272, 0.000000e+00
  br i1 %273, label %281, label %276

274:                                              ; preds = %255
  %275 = tail call zeroext i1 @Perl_sv_2bool_flags(ptr noundef nonnull %220, i32 noundef 0) #20
  br i1 %275, label %281, label %276

276:                                              ; preds = %269, %229, %215, %274, %266, %250, %248, %241, %227
  %277 = tail call fastcc ptr @S_SvREFCNT_inc(ptr noundef %195) #21
  %278 = load ptr, ptr @PL_errgv, align 8, !tbaa !53
  %279 = getelementptr inbounds %struct.gv, ptr %278, i64 0, i32 3
  %280 = load ptr, ptr %279, align 8, !tbaa !38
  store ptr %195, ptr %280, align 8, !tbaa !92
  tail call fastcc void @S_SvREFCNT_dec(ptr noundef %220) #21
  br label %281

281:                                              ; preds = %276, %274, %269, %261, %250, %244, %227
  tail call void @Perl_pop_scope() #20
  %282 = load ptr, ptr @PL_stack_sp, align 8, !tbaa !53
  %283 = load ptr, ptr @PL_curstackinfo, align 8, !tbaa !53
  %284 = getelementptr inbounds %struct.stackinfo, ptr %283, i64 0, i32 2
  %285 = load ptr, ptr %284, align 8, !tbaa !79
  %286 = icmp eq ptr %285, null
  br i1 %286, label %287, label %288

287:                                              ; preds = %281
  tail call void @Perl_croak_popstack() #20
  br label %288

288:                                              ; preds = %281, %287
  %289 = load ptr, ptr @PL_stack_base, align 8, !tbaa !53
  %290 = ptrtoint ptr %282 to i64
  %291 = ptrtoint ptr %289 to i64
  %292 = sub i64 %290, %291
  %293 = ashr exact i64 %292, 3
  %294 = load ptr, ptr @PL_curstack, align 8, !tbaa !53
  %295 = load ptr, ptr %294, align 8, !tbaa !83
  %296 = getelementptr inbounds %struct.xpvav, ptr %295, i64 0, i32 2
  store i64 %293, ptr %296, align 8, !tbaa !85
  %297 = load ptr, ptr %285, align 8, !tbaa !82
  %298 = getelementptr inbounds %struct.av, ptr %297, i64 0, i32 3
  %299 = load ptr, ptr %298, align 8, !tbaa !38
  store ptr %299, ptr @PL_stack_base, align 8, !tbaa !53
  %300 = load ptr, ptr %285, align 8, !tbaa !82
  %301 = load ptr, ptr %300, align 8, !tbaa !83
  %302 = getelementptr inbounds %struct.xpvav, ptr %301, i64 0, i32 3
  %303 = load i64, ptr %302, align 8, !tbaa !87
  %304 = getelementptr inbounds ptr, ptr %299, i64 %303
  store ptr %304, ptr @PL_stack_max, align 8, !tbaa !53
  %305 = load ptr, ptr %285, align 8, !tbaa !82
  %306 = load ptr, ptr %305, align 8, !tbaa !83
  %307 = getelementptr inbounds %struct.xpvav, ptr %306, i64 0, i32 2
  %308 = load i64, ptr %307, align 8, !tbaa !85
  %309 = getelementptr inbounds ptr, ptr %299, i64 %308
  store ptr %309, ptr @PL_stack_sp, align 8, !tbaa !53
  %310 = load ptr, ptr %285, align 8, !tbaa !82
  store ptr %310, ptr @PL_curstack, align 8, !tbaa !53
  store ptr %285, ptr @PL_curstackinfo, align 8, !tbaa !53
  %311 = getelementptr inbounds %struct.sv, ptr %216, i64 0, i32 2
  %312 = load i32, ptr %311, align 4, !tbaa !94
  %313 = and i32 %312, 2048
  %314 = icmp eq i32 %313, 0
  br i1 %314, label %322, label %315

315:                                              ; preds = %288
  %316 = getelementptr inbounds %struct.sv, ptr %216, i64 0, i32 3
  %317 = load ptr, ptr %316, align 8, !tbaa !38
  %318 = getelementptr inbounds %struct.sv, ptr %317, i64 0, i32 2
  %319 = load i32, ptr %318, align 4, !tbaa !94
  %320 = and i32 %319, 255
  %321 = icmp eq i32 %320, 12
  br i1 %321, label %331, label %322

322:                                              ; preds = %315, %288
  %323 = and i32 %312, 1024
  %324 = icmp ne i32 %323, 0
  %325 = and i1 %10, %324
  br i1 %325, label %326, label %330

326:                                              ; preds = %322
  %327 = load i8, ptr %6, align 1, !tbaa !38
  %328 = and i8 %327, 2
  %329 = icmp eq i8 %328, 0
  br i1 %329, label %330, label %453

330:                                              ; preds = %326, %322
  tail call void (ptr, ...) @Perl_croak(ptr noundef nonnull @.str.55, ptr noundef nonnull %216) #20
  br label %331

331:                                              ; preds = %330, %315
  %332 = icmp eq ptr %216, @PL_sv_undef
  br i1 %332, label %373, label %333

333:                                              ; preds = %331
  %334 = icmp eq i32 %3, 1
  br i1 %334, label %343, label %335

335:                                              ; preds = %333
  br i1 %10, label %336, label %453

336:                                              ; preds = %335
  %337 = load i8, ptr %6, align 1, !tbaa !38
  %338 = and i8 %337, 1
  %339 = icmp eq i8 %338, 0
  br i1 %339, label %340, label %453

340:                                              ; preds = %336
  %341 = getelementptr inbounds %struct.sv, ptr %216, i64 0, i32 3
  %342 = load ptr, ptr %341, align 8, !tbaa !38
  br label %348

343:                                              ; preds = %333
  %344 = getelementptr inbounds %struct.sv, ptr %216, i64 0, i32 3
  %345 = load ptr, ptr %344, align 8, !tbaa !38
  br i1 %10, label %346, label %377

346:                                              ; preds = %343
  %347 = load i8, ptr %6, align 1, !tbaa !38
  br label %348

348:                                              ; preds = %346, %340
  %349 = phi i8 [ %337, %340 ], [ %347, %346 ]
  %350 = phi ptr [ %342, %340 ], [ %345, %346 ]
  %351 = and i8 %349, 1
  %352 = icmp eq i8 %351, 0
  br i1 %352, label %353, label %373

353:                                              ; preds = %348
  %354 = tail call ptr @Perl_hv_common(ptr noundef %350, ptr noundef null, ptr noundef nonnull @.str.56, i64 noundef 12, i32 noundef 0, i32 noundef 32, ptr noundef null, i32 noundef 0) #20
  %355 = icmp eq ptr %354, null
  br i1 %355, label %373, label %356

356:                                              ; preds = %353
  %357 = load ptr, ptr %354, align 8, !tbaa !53
  %358 = getelementptr inbounds %struct.sv, ptr %357, i64 0, i32 2
  %359 = load i32, ptr %358, align 4, !tbaa !94
  %360 = and i32 %359, -2145386240
  %361 = icmp eq i32 %360, -2147483392
  br i1 %361, label %362, label %367

362:                                              ; preds = %356
  %363 = load ptr, ptr %357, align 8, !tbaa !96
  %364 = getelementptr inbounds %struct.xpvuv, ptr %363, i64 0, i32 4
  %365 = load i64, ptr %364, align 8, !tbaa !38
  %366 = icmp eq i64 %365, 0
  br i1 %366, label %373, label %370

367:                                              ; preds = %356
  %368 = tail call i64 @Perl_sv_2uv_flags(ptr noundef nonnull %357, i32 noundef 2) #20
  %369 = icmp eq i64 %368, 0
  br i1 %369, label %373, label %370

370:                                              ; preds = %367, %362
  %371 = load i8, ptr %6, align 1, !tbaa !38
  %372 = or i8 %371, 1
  store i8 %372, ptr %6, align 1, !tbaa !38
  br label %373

373:                                              ; preds = %20, %353, %362, %367, %370, %348, %331
  %374 = phi ptr [ %216, %348 ], [ @PL_sv_undef, %331 ], [ %216, %370 ], [ %216, %367 ], [ %216, %362 ], [ %216, %353 ], [ @PL_sv_undef, %20 ]
  %375 = phi ptr [ %350, %348 ], [ null, %331 ], [ %350, %370 ], [ %350, %367 ], [ %350, %362 ], [ %350, %353 ], [ null, %20 ]
  %376 = icmp eq i32 %3, 1
  br i1 %376, label %377, label %453

377:                                              ; preds = %343, %373
  %378 = phi ptr [ %375, %373 ], [ %345, %343 ]
  %379 = phi ptr [ %374, %373 ], [ %216, %343 ]
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %8) #22
  store ptr null, ptr %8, align 8, !tbaa !53
  %380 = icmp eq ptr %378, null
  br i1 %380, label %393, label %381

381:                                              ; preds = %377
  %382 = tail call ptr @Perl_hv_common(ptr noundef nonnull %378, ptr noundef null, ptr noundef nonnull @.str.57, i64 noundef 1, i32 noundef 0, i32 noundef 32, ptr noundef null, i32 noundef 0) #20
  %383 = icmp eq ptr %382, null
  br i1 %383, label %386, label %384

384:                                              ; preds = %381
  %385 = load ptr, ptr %382, align 8, !tbaa !53
  br label %388

386:                                              ; preds = %381
  %387 = tail call ptr @Perl__swash_to_invlist(ptr noundef %379) #21
  br label %388

388:                                              ; preds = %384, %386
  %389 = phi ptr [ %385, %384 ], [ %387, %386 ]
  %390 = phi i8 [ 0, %384 ], [ 1, %386 ]
  %391 = xor i1 %383, true
  store ptr %389, ptr %8, align 8, !tbaa !53
  %392 = icmp eq ptr %5, null
  br i1 %392, label %411, label %395

393:                                              ; preds = %377
  %394 = icmp eq ptr %5, null
  br i1 %394, label %412, label %399

395:                                              ; preds = %388
  %396 = icmp eq ptr %389, null
  br i1 %396, label %399, label %397

397:                                              ; preds = %395
  call void @Perl__invlist_union_maybe_complement_2nd(ptr noundef nonnull %5, ptr noundef nonnull %389, i1 noundef zeroext false, ptr noundef nonnull %8) #20
  %398 = load ptr, ptr %8, align 8, !tbaa !53
  br label %412

399:                                              ; preds = %393, %395
  %400 = phi i1 [ %383, %395 ], [ true, %393 ]
  %401 = phi i1 [ %391, %395 ], [ true, %393 ]
  %402 = phi i8 [ %390, %395 ], [ 0, %393 ]
  %403 = tail call fastcc i64 @S__invlist_len(ptr noundef nonnull %5) #21, !range !99
  %404 = trunc i64 %403 to i32
  %405 = icmp slt i32 %18, %404
  br i1 %405, label %406, label %409

406:                                              ; preds = %399
  %407 = tail call ptr @Perl_newSV_type(i32 noundef 12) #20
  %408 = tail call ptr @Perl_newRV_noinc(ptr noundef %407) #20
  br label %409

409:                                              ; preds = %406, %399
  %410 = phi ptr [ %408, %406 ], [ %379, %399 ]
  store ptr %5, ptr %8, align 8, !tbaa !53
  br i1 %400, label %412, label %432

411:                                              ; preds = %388
  br i1 %383, label %412, label %432

412:                                              ; preds = %393, %409, %397, %411
  %413 = phi i8 [ %390, %397 ], [ %390, %411 ], [ %402, %409 ], [ 0, %393 ]
  %414 = phi i1 [ %391, %397 ], [ %391, %411 ], [ %401, %409 ], [ true, %393 ]
  %415 = phi ptr [ %398, %397 ], [ %389, %411 ], [ %5, %409 ], [ null, %393 ]
  %416 = phi ptr [ %379, %397 ], [ %379, %411 ], [ %410, %409 ], [ %379, %393 ]
  %417 = call fastcc i64 @S__invlist_len(ptr noundef %415) #21, !range !99
  %418 = trunc i64 %417 to i32
  %419 = icmp slt i32 %18, %418
  br i1 %419, label %420, label %432

420:                                              ; preds = %412
  %421 = getelementptr inbounds %struct.sv, ptr %416, i64 0, i32 3
  %422 = load ptr, ptr %421, align 8, !tbaa !38
  %423 = call ptr @Perl_hv_common(ptr noundef %422, ptr noundef null, ptr noundef nonnull @.str.57, i64 noundef 1, i32 noundef 0, i32 noundef 36, ptr noundef %415, i32 noundef 0) #20
  %424 = icmp eq ptr %423, null
  br i1 %424, label %425, label %426

425:                                              ; preds = %420
  call void (ptr, ...) @Perl_croak(ptr noundef nonnull @.str.58) #20
  br label %426

426:                                              ; preds = %425, %420
  %427 = load ptr, ptr %8, align 8, !tbaa !53
  br i1 %414, label %428, label %432

428:                                              ; preds = %426
  %429 = getelementptr inbounds %struct.sv, ptr %427, i64 0, i32 1
  %430 = load i32, ptr %429, align 8, !tbaa !100
  %431 = add i32 %430, 1
  store i32 %431, ptr %429, align 8, !tbaa !100
  br label %432

432:                                              ; preds = %409, %426, %428, %412, %411
  %433 = phi ptr [ %389, %411 ], [ %427, %428 ], [ %415, %412 ], [ %427, %426 ], [ %5, %409 ]
  %434 = phi ptr [ %379, %411 ], [ %416, %428 ], [ %416, %412 ], [ %416, %426 ], [ %410, %409 ]
  %435 = phi i8 [ %390, %411 ], [ %413, %428 ], [ %413, %412 ], [ 0, %426 ], [ %402, %409 ]
  %436 = getelementptr inbounds %struct.sv, ptr %433, i64 0, i32 2
  %437 = load i32, ptr %436, align 4, !tbaa !94
  %438 = or i32 %437, 134283264
  store i32 %438, ptr %436, align 4, !tbaa !94
  %439 = call fastcc i64 @S__invlist_len(ptr noundef %433) #21, !range !99
  %440 = trunc i64 %439 to i32
  %441 = icmp slt i32 %18, %440
  br i1 %441, label %451, label %442

442:                                              ; preds = %432
  call fastcc void @S_SvREFCNT_dec(ptr noundef %434) #21
  %443 = icmp eq i8 %435, 0
  %444 = load ptr, ptr %8, align 8, !tbaa !53
  br i1 %443, label %445, label %449

445:                                              ; preds = %442
  %446 = getelementptr inbounds %struct.sv, ptr %444, i64 0, i32 1
  %447 = load i32, ptr %446, align 8, !tbaa !100
  %448 = add i32 %447, 1
  store i32 %448, ptr %446, align 8, !tbaa !100
  br label %449

449:                                              ; preds = %445, %442
  %450 = call ptr @Perl_newRV_noinc(ptr noundef %444) #20
  br label %451

451:                                              ; preds = %449, %432
  %452 = phi ptr [ %450, %449 ], [ %434, %432 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %8) #22
  br label %453

453:                                              ; preds = %373, %451, %336, %335, %326
  %454 = phi ptr [ null, %326 ], [ %452, %451 ], [ %374, %373 ], [ %216, %336 ], [ %216, %335 ]
  store ptr %9, ptr @PL_curpm, align 8, !tbaa !53
  ret ptr %454
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i64 @Perl_swash_fetch(ptr nocapture noundef readonly %0, ptr noundef %1, i1 noundef zeroext %2) local_unnamed_addr #3 !prof !47 {
  %4 = alloca i64, align 8
  %5 = getelementptr inbounds %struct.sv, ptr %0, i64 0, i32 3
  %6 = load ptr, ptr %5, align 8, !tbaa !38
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #22
  store i64 0, ptr %4, align 8, !tbaa !50
  %7 = load i8, ptr %1, align 1, !tbaa !38
  %8 = getelementptr inbounds %struct.hv, ptr %6, i64 0, i32 2
  %9 = load i32, ptr %8, align 4, !tbaa !101
  %10 = and i32 %9, 255
  %11 = icmp eq i32 %10, 12
  br i1 %11, label %21, label %12

12:                                               ; preds = %3
  br i1 %2, label %13, label %15

13:                                               ; preds = %12
  %14 = tail call i64 @Perl_valid_utf8_to_uvchr(ptr noundef nonnull %1, ptr noundef null) #21
  br label %17

15:                                               ; preds = %12
  %16 = zext i8 %7 to i64
  br label %17

17:                                               ; preds = %15, %13
  %18 = phi i64 [ %14, %13 ], [ %16, %15 ]
  %19 = tail call fastcc zeroext i1 @S__invlist_contains_cp(ptr noundef nonnull %6, i64 noundef %18) #21
  %20 = zext i1 %19 to i64
  br label %196

21:                                               ; preds = %3
  %22 = zext i8 %7 to i64
  %23 = icmp slt i8 %7, 0
  %24 = select i1 %2, i1 %23, i1 false
  %25 = zext i8 %7 to i32
  br i1 %24, label %26, label %47

26:                                               ; preds = %21
  %27 = and i32 %25, 254
  %28 = icmp eq i32 %27, 194
  br i1 %28, label %29, label %37

29:                                               ; preds = %26
  %30 = shl nuw nsw i32 %25, 6
  %31 = and i32 %30, 192
  %32 = getelementptr inbounds i8, ptr %1, i64 1
  %33 = load i8, ptr %32, align 1, !tbaa !38
  %34 = and i8 %33, 63
  %35 = zext nneg i8 %34 to i32
  %36 = or disjoint i32 %31, %35
  br label %47

37:                                               ; preds = %26
  %38 = getelementptr inbounds [0 x i8], ptr @PL_utf8skip, i64 0, i64 %22
  %39 = load i8, ptr %38, align 1, !tbaa !38
  %40 = zext i8 %39 to i32
  %41 = add nsw i32 %40, -1
  %42 = zext i32 %41 to i64
  %43 = getelementptr inbounds i8, ptr %1, i64 %42
  %44 = load i8, ptr %43, align 1, !tbaa !38
  %45 = and i8 %44, 63
  %46 = zext nneg i8 %45 to i32
  br label %47

47:                                               ; preds = %21, %29, %37
  %48 = phi i32 [ %36, %29 ], [ %46, %37 ], [ %25, %21 ]
  %49 = phi i64 [ 256, %29 ], [ 64, %37 ], [ 256, %21 ]
  %50 = phi i32 [ 0, %29 ], [ %41, %37 ], [ 0, %21 ]
  %51 = load ptr, ptr @PL_last_swash_hv, align 8, !tbaa !53
  %52 = icmp eq ptr %6, %51
  %53 = load i8, ptr @PL_last_swash_klen, align 1
  %54 = zext i8 %53 to i32
  %55 = icmp eq i32 %50, %54
  %56 = select i1 %52, i1 %55, i1 false
  br i1 %56, label %57, label %66

57:                                               ; preds = %47
  %58 = icmp eq i32 %50, 0
  br i1 %58, label %63, label %59

59:                                               ; preds = %57
  %60 = zext nneg i32 %50 to i64
  %61 = tail call i32 @bcmp(ptr nonnull %1, ptr nonnull @PL_last_swash_key, i64 %60)
  %62 = icmp eq i32 %61, 0
  br i1 %62, label %63, label %66

63:                                               ; preds = %59, %57
  %64 = load ptr, ptr @PL_last_swash_tmps, align 8, !tbaa !53
  %65 = load i64, ptr @PL_last_swash_slen, align 8, !tbaa !50
  store i64 %65, ptr %4, align 8, !tbaa !50
  br label %134

66:                                               ; preds = %59, %47
  %67 = tail call ptr @Perl_hv_common_key_len(ptr noundef nonnull %6, ptr noundef nonnull %1, i32 noundef %50, i32 noundef 32, ptr noundef null, i32 noundef 0) #20
  %68 = icmp eq ptr %67, null
  br i1 %68, label %89, label %69

69:                                               ; preds = %66
  %70 = load ptr, ptr %67, align 8, !tbaa !53
  %71 = getelementptr inbounds %struct.sv, ptr %70, i64 0, i32 2
  %72 = load i32, ptr %71, align 4, !tbaa !94
  %73 = and i32 %72, 1024
  %74 = icmp eq i32 %73, 0
  br i1 %74, label %89, label %75

75:                                               ; preds = %69
  %76 = and i32 %72, 2098176
  %77 = icmp eq i32 %76, 1024
  br i1 %77, label %78, label %84

78:                                               ; preds = %75
  %79 = load ptr, ptr %70, align 8, !tbaa !96
  %80 = getelementptr inbounds %struct.xpv, ptr %79, i64 0, i32 2
  %81 = load i64, ptr %80, align 8, !tbaa !97
  store i64 %81, ptr %4, align 8, !tbaa !50
  %82 = getelementptr inbounds %struct.sv, ptr %70, i64 0, i32 3
  %83 = load ptr, ptr %82, align 8, !tbaa !38
  br label %86

84:                                               ; preds = %75
  %85 = call ptr @Perl_sv_2pv_flags(ptr noundef nonnull %70, ptr noundef nonnull %4, i32 noundef 34) #20
  br label %86

86:                                               ; preds = %84, %78
  %87 = phi ptr [ %83, %78 ], [ %85, %84 ]
  %88 = icmp eq ptr %87, null
  br i1 %88, label %89, label %127

89:                                               ; preds = %86, %69, %66
  %90 = icmp eq i32 %50, 0
  br i1 %90, label %95, label %91

91:                                               ; preds = %89
  %92 = call i64 @Perl_valid_utf8_to_uvchr(ptr noundef nonnull %1, ptr noundef null) #21
  %93 = sub nsw i64 0, %49
  %94 = and i64 %92, %93
  br label %95

95:                                               ; preds = %89, %91
  %96 = phi i64 [ %94, %91 ], [ 0, %89 ]
  %97 = call fastcc ptr @S_swatch_get(ptr noundef nonnull %0, i64 noundef %96, i64 noundef %49) #21
  %98 = call ptr @Perl_hv_common_key_len(ptr noundef nonnull %6, ptr noundef nonnull %1, i32 noundef %50, i32 noundef 36, ptr noundef %97, i32 noundef 0) #20
  %99 = icmp eq ptr %98, null
  br i1 %99, label %100, label %102

100:                                              ; preds = %95
  %101 = load i64, ptr %4, align 8, !tbaa !50
  br label %124

102:                                              ; preds = %95
  %103 = load ptr, ptr %98, align 8, !tbaa !53
  %104 = getelementptr inbounds %struct.sv, ptr %103, i64 0, i32 2
  %105 = load i32, ptr %104, align 4, !tbaa !94
  %106 = and i32 %105, 2098176
  %107 = icmp eq i32 %106, 1024
  br i1 %107, label %108, label %114

108:                                              ; preds = %102
  %109 = load ptr, ptr %103, align 8, !tbaa !96
  %110 = getelementptr inbounds %struct.xpv, ptr %109, i64 0, i32 2
  %111 = load i64, ptr %110, align 8, !tbaa !97
  store i64 %111, ptr %4, align 8, !tbaa !50
  %112 = getelementptr inbounds %struct.sv, ptr %103, i64 0, i32 3
  %113 = load ptr, ptr %112, align 8, !tbaa !38
  br label %117

114:                                              ; preds = %102
  %115 = call ptr @Perl_sv_2pv_flags(ptr noundef nonnull %103, ptr noundef nonnull %4, i32 noundef 2) #20
  %116 = load i64, ptr %4, align 8, !tbaa !50
  br label %117

117:                                              ; preds = %114, %108
  %118 = phi i64 [ %111, %108 ], [ %116, %114 ]
  %119 = phi ptr [ %113, %108 ], [ %115, %114 ]
  %120 = icmp eq ptr %119, null
  br i1 %120, label %124, label %121

121:                                              ; preds = %117
  %122 = shl i64 %118, 3
  %123 = icmp ult i64 %122, %49
  br i1 %123, label %124, label %127

124:                                              ; preds = %100, %121, %117
  %125 = phi i64 [ %118, %121 ], [ %118, %117 ], [ %101, %100 ]
  %126 = phi ptr [ %119, %121 ], [ null, %117 ], [ null, %100 ]
  call void (ptr, ...) @Perl_croak(ptr noundef nonnull @.str.59, ptr noundef %98, ptr noundef %126, i64 noundef %125, i64 noundef %49) #20
  br label %127

127:                                              ; preds = %121, %124, %86
  %128 = phi ptr [ %87, %86 ], [ %126, %124 ], [ %119, %121 ]
  store ptr %6, ptr @PL_last_swash_hv, align 8, !tbaa !53
  %129 = trunc i32 %50 to i8
  store i8 %129, ptr @PL_last_swash_klen, align 1, !tbaa !38
  store ptr %128, ptr @PL_last_swash_tmps, align 8, !tbaa !53
  %130 = load i64, ptr %4, align 8, !tbaa !50
  store i64 %130, ptr @PL_last_swash_slen, align 8, !tbaa !50
  %131 = icmp eq i32 %50, 0
  br i1 %131, label %134, label %132

132:                                              ; preds = %127
  %133 = zext i32 %50 to i64
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 @PL_last_swash_key, ptr nonnull align 1 %1, i64 %133, i1 false)
  br label %134

134:                                              ; preds = %127, %132, %63
  %135 = phi i64 [ %65, %63 ], [ %130, %132 ], [ %130, %127 ]
  %136 = phi ptr [ %64, %63 ], [ %128, %132 ], [ %128, %127 ]
  %137 = shl i64 %135, 3
  %138 = udiv i64 %137, %49
  %139 = trunc i64 %138 to i32
  switch i32 %139, label %195 [
    i32 1, label %140
    i32 8, label %150
    i32 16, label %155
    i32 32, label %168
  ]

140:                                              ; preds = %134
  %141 = lshr i32 %48, 3
  %142 = zext nneg i32 %141 to i64
  %143 = getelementptr inbounds i8, ptr %136, i64 %142
  %144 = load i8, ptr %143, align 1, !tbaa !38
  %145 = and i32 %48, 7
  %146 = zext i8 %144 to i32
  %147 = lshr i32 %146, %145
  %148 = and i32 %147, 1
  %149 = zext nneg i32 %148 to i64
  br label %196

150:                                              ; preds = %134
  %151 = zext nneg i32 %48 to i64
  %152 = getelementptr inbounds i8, ptr %136, i64 %151
  %153 = load i8, ptr %152, align 1, !tbaa !38
  %154 = zext i8 %153 to i64
  br label %196

155:                                              ; preds = %134
  %156 = shl nuw nsw i32 %48, 1
  %157 = zext nneg i32 %156 to i64
  %158 = getelementptr inbounds i8, ptr %136, i64 %157
  %159 = load i8, ptr %158, align 1, !tbaa !38
  %160 = zext i8 %159 to i64
  %161 = shl nuw nsw i64 %160, 8
  %162 = or disjoint i32 %156, 1
  %163 = zext nneg i32 %162 to i64
  %164 = getelementptr inbounds i8, ptr %136, i64 %163
  %165 = load i8, ptr %164, align 1, !tbaa !38
  %166 = zext i8 %165 to i64
  %167 = or disjoint i64 %161, %166
  br label %196

168:                                              ; preds = %134
  %169 = shl nuw nsw i32 %48, 2
  %170 = zext nneg i32 %169 to i64
  %171 = getelementptr inbounds i8, ptr %136, i64 %170
  %172 = load i8, ptr %171, align 1, !tbaa !38
  %173 = zext i8 %172 to i64
  %174 = shl nuw nsw i64 %173, 24
  %175 = or disjoint i32 %169, 1
  %176 = zext nneg i32 %175 to i64
  %177 = getelementptr inbounds i8, ptr %136, i64 %176
  %178 = load i8, ptr %177, align 1, !tbaa !38
  %179 = zext i8 %178 to i64
  %180 = shl nuw nsw i64 %179, 16
  %181 = or disjoint i64 %180, %174
  %182 = or disjoint i32 %169, 2
  %183 = zext nneg i32 %182 to i64
  %184 = getelementptr inbounds i8, ptr %136, i64 %183
  %185 = load i8, ptr %184, align 1, !tbaa !38
  %186 = zext i8 %185 to i64
  %187 = shl nuw nsw i64 %186, 8
  %188 = or disjoint i64 %181, %187
  %189 = or disjoint i32 %169, 3
  %190 = zext nneg i32 %189 to i64
  %191 = getelementptr inbounds i8, ptr %136, i64 %190
  %192 = load i8, ptr %191, align 1, !tbaa !38
  %193 = zext i8 %192 to i64
  %194 = or disjoint i64 %188, %193
  br label %196

195:                                              ; preds = %134
  call void (ptr, ...) @Perl_croak(ptr noundef nonnull @.str.60, i64 noundef %135, i64 noundef %49) #20
  br label %196

196:                                              ; preds = %195, %168, %155, %150, %140, %17
  %197 = phi i64 [ %20, %17 ], [ 0, %195 ], [ %194, %168 ], [ %167, %155 ], [ %154, %150 ], [ %149, %140 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #22
  ret i64 %197
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local zeroext i1 @Perl__is_uni_perl_idcont(i64 noundef %0) local_unnamed_addr #3 !prof !47 {
  %2 = alloca [14 x i8], align 1
  call void @llvm.lifetime.start.p0(i64 14, ptr nonnull %2) #22
  %3 = call ptr @Perl_uvoffuni_to_utf8_flags(ptr noundef nonnull %2, i64 noundef %0, i64 noundef 0) #21
  %4 = call zeroext i1 @Perl__is_utf8_perl_idcont(ptr noundef nonnull %2) #21
  call void @llvm.lifetime.end.p0(i64 14, ptr nonnull %2) #22
  ret i1 %4
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local zeroext i1 @Perl__is_utf8_perl_idcont(ptr noundef %0) local_unnamed_addr #3 !prof !47 {
  %2 = load ptr, ptr @PL_utf8_perl_idcont, align 8, !tbaa !53
  %3 = icmp eq ptr %2, null
  br i1 %3, label %4, label %6

4:                                                ; preds = %1
  %5 = tail call ptr @Perl__new_invlist_C_array(ptr noundef nonnull @_Perl_IDCont_invlist) #20
  br label %6

6:                                                ; preds = %4, %1
  %7 = phi ptr [ null, %1 ], [ %5, %4 ]
  %8 = tail call fastcc zeroext i1 @S_is_utf8_common(ptr noundef %0, ptr noundef nonnull @PL_utf8_perl_idcont, ptr noundef nonnull @.str.41, ptr noundef %7) #21
  ret i1 %8
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local zeroext i1 @Perl__is_uni_perl_idstart(i64 noundef %0) local_unnamed_addr #3 !prof !47 {
  %2 = alloca [14 x i8], align 1
  call void @llvm.lifetime.start.p0(i64 14, ptr nonnull %2) #22
  %3 = call ptr @Perl_uvoffuni_to_utf8_flags(ptr noundef nonnull %2, i64 noundef %0, i64 noundef 0) #21
  %4 = call zeroext i1 @Perl__is_utf8_perl_idstart(ptr noundef nonnull %2) #21
  call void @llvm.lifetime.end.p0(i64 14, ptr nonnull %2) #22
  ret i1 %4
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local zeroext i1 @Perl__is_utf8_perl_idstart(ptr noundef %0) local_unnamed_addr #3 !prof !47 {
  %2 = load ptr, ptr @PL_utf8_perl_idstart, align 8, !tbaa !53
  %3 = icmp eq ptr %2, null
  br i1 %3, label %4, label %6

4:                                                ; preds = %1
  %5 = tail call ptr @Perl__new_invlist_C_array(ptr noundef nonnull @_Perl_IDStart_invlist) #20
  br label %6

6:                                                ; preds = %4, %1
  %7 = phi ptr [ null, %1 ], [ %5, %4 ]
  %8 = tail call fastcc zeroext i1 @S_is_utf8_common(ptr noundef %0, ptr noundef nonnull @PL_utf8_perl_idstart, ptr noundef nonnull @.str.39, ptr noundef %7) #21
  ret i1 %8
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i64 @Perl__to_upper_title_latin1(i8 noundef zeroext %0, ptr nocapture noundef writeonly %1, ptr nocapture noundef writeonly %2, i8 noundef signext %3) local_unnamed_addr #3 !prof !47 {
  %5 = zext i8 %0 to i64
  %6 = getelementptr inbounds [0 x i8], ptr @PL_mod_latin1_uc, i64 0, i64 %5
  %7 = load i8, ptr %6, align 1, !tbaa !38
  %8 = zext i8 %7 to i64
  %9 = icmp sgt i8 %7, -1
  br i1 %9, label %10, label %11

10:                                               ; preds = %4
  store i8 %7, ptr %1, align 1, !tbaa !38
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
  store i8 83, ptr %1, align 1, !tbaa !38
  store i8 %3, ptr %16, align 1, !tbaa !38
  br label %28

17:                                               ; preds = %13
  %18 = zext i8 %0 to i32
  tail call void (ptr, ...) @Perl_croak(ptr noundef nonnull @.str.23, i32 noundef %18, i32 noundef 255) #20
  br label %19

19:                                               ; preds = %13, %14, %17, %11
  %20 = phi i64 [ 255, %17 ], [ 924, %14 ], [ %8, %11 ], [ 376, %13 ]
  %21 = lshr i64 %20, 6
  %22 = trunc i64 %21 to i8
  %23 = or disjoint i8 %22, -64
  %24 = getelementptr inbounds i8, ptr %1, i64 1
  store i8 %23, ptr %1, align 1, !tbaa !38
  %25 = trunc i64 %20 to i8
  %26 = and i8 %25, 63
  %27 = or disjoint i8 %26, -128
  store i8 %27, ptr %24, align 1, !tbaa !38
  br label %28

28:                                               ; preds = %19, %15, %10
  %29 = phi i64 [ 2, %19 ], [ 2, %15 ], [ 1, %10 ]
  %30 = phi i64 [ %20, %19 ], [ 83, %15 ], [ %8, %10 ]
  store i64 %29, ptr %2, align 8, !tbaa !50
  ret i64 %30
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i64 @Perl_to_uni_upper(i64 noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #3 !prof !47 {
  %4 = icmp ult i64 %0, 256
  br i1 %4, label %5, label %8

5:                                                ; preds = %3
  %6 = trunc i64 %0 to i8
  %7 = tail call i64 @Perl__to_upper_title_latin1(i8 noundef zeroext %6, ptr noundef %1, ptr noundef %2, i8 noundef signext 83) #21, !range !103
  br label %11

8:                                                ; preds = %3
  %9 = tail call ptr @Perl_uvoffuni_to_utf8_flags(ptr noundef %1, i64 noundef %0, i64 noundef 0) #21
  %10 = tail call i64 @Perl_to_utf8_case(ptr noundef %1, ptr noundef %1, ptr noundef %2, ptr noundef nonnull @PL_utf8_toupper, ptr noundef nonnull @.str.24, ptr noundef nonnull @.str.9) #21
  br label %11

11:                                               ; preds = %8, %5
  %12 = phi i64 [ %7, %5 ], [ %10, %8 ]
  ret i64 %12
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i64 @Perl_to_utf8_case(ptr noundef %0, ptr noundef %1, ptr noundef writeonly %2, ptr nocapture noundef %3, ptr noundef %4, ptr noundef %5) local_unnamed_addr #3 !prof !47 {
  %7 = alloca i64, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #22
  store i64 0, ptr %7, align 8, !tbaa !50
  %8 = tail call i64 @Perl_valid_utf8_to_uvchr(ptr noundef %0, ptr noundef null) #21
  %9 = icmp ugt i64 %8, 55295
  br i1 %9, label %10, label %50

10:                                               ; preds = %6
  %11 = icmp ult i64 %8, 57344
  br i1 %11, label %12, label %30

12:                                               ; preds = %10
  %13 = tail call zeroext i1 @Perl_ckwarn_d(i32 noundef 50) #20
  br i1 %13, label %14, label %50

14:                                               ; preds = %12
  %15 = load ptr, ptr @PL_op, align 8, !tbaa !53
  %16 = icmp eq ptr %15, null
  br i1 %16, label %28, label %17

17:                                               ; preds = %14
  %18 = getelementptr inbounds %struct.op, ptr %15, i64 0, i32 4
  %19 = load i16, ptr %18, align 8
  %20 = and i16 %19, 511
  %21 = icmp eq i16 %20, 380
  br i1 %21, label %22, label %24

22:                                               ; preds = %17
  %23 = tail call ptr @Perl_custom_op_get_field(ptr noundef nonnull %15, i32 noundef 2) #20
  br label %28

24:                                               ; preds = %17
  %25 = zext nneg i16 %20 to i64
  %26 = getelementptr inbounds [0 x ptr], ptr @PL_op_desc, i64 0, i64 %25
  %27 = load ptr, ptr %26, align 8, !tbaa !53
  br label %28

28:                                               ; preds = %14, %22, %24
  %29 = phi ptr [ %23, %22 ], [ %27, %24 ], [ %4, %14 ]
  tail call void (i32, ptr, ...) @Perl_warner(i32 noundef 50, ptr noundef nonnull @.str.45, ptr noundef %29, i64 noundef %8) #20
  br label %50

30:                                               ; preds = %10
  %31 = icmp ugt i64 %8, 1114111
  br i1 %31, label %32, label %50

32:                                               ; preds = %30
  %33 = tail call zeroext i1 @Perl_ckwarn_d(i32 noundef 48) #20
  br i1 %33, label %34, label %50

34:                                               ; preds = %32
  %35 = load ptr, ptr @PL_op, align 8, !tbaa !53
  %36 = icmp eq ptr %35, null
  br i1 %36, label %48, label %37

37:                                               ; preds = %34
  %38 = getelementptr inbounds %struct.op, ptr %35, i64 0, i32 4
  %39 = load i16, ptr %38, align 8
  %40 = and i16 %39, 511
  %41 = icmp eq i16 %40, 380
  br i1 %41, label %42, label %44

42:                                               ; preds = %37
  %43 = tail call ptr @Perl_custom_op_get_field(ptr noundef nonnull %35, i32 noundef 2) #20
  br label %48

44:                                               ; preds = %37
  %45 = zext nneg i16 %40 to i64
  %46 = getelementptr inbounds [0 x ptr], ptr @PL_op_desc, i64 0, i64 %45
  %47 = load ptr, ptr %46, align 8, !tbaa !53
  br label %48

48:                                               ; preds = %34, %42, %44
  %49 = phi ptr [ %43, %42 ], [ %47, %44 ], [ %4, %34 ]
  tail call void (i32, ptr, ...) @Perl_warner(i32 noundef 48, ptr noundef nonnull @.str.46, ptr noundef %49, i64 noundef %8) #20
  br label %50

50:                                               ; preds = %28, %12, %32, %48, %30, %6
  %51 = load ptr, ptr %3, align 8, !tbaa !53
  %52 = icmp eq ptr %51, null
  br i1 %52, label %53, label %55

53:                                               ; preds = %50
  %54 = tail call ptr @Perl__core_swash_init(ptr noundef nonnull @.str.22, ptr noundef %4, ptr noundef nonnull @PL_sv_undef, i32 noundef 4, i32 noundef 0, ptr noundef null, ptr noundef null) #21
  store ptr %54, ptr %3, align 8, !tbaa !53
  br label %55

55:                                               ; preds = %53, %50
  %56 = phi ptr [ %54, %53 ], [ %51, %50 ]
  %57 = icmp eq ptr %5, null
  br i1 %57, label %126, label %58

58:                                               ; preds = %55
  %59 = load i8, ptr %5, align 1, !tbaa !38
  %60 = icmp eq i8 %59, 0
  br i1 %60, label %63, label %61

61:                                               ; preds = %58
  %62 = tail call ptr @Perl_get_hv(ptr noundef nonnull %5, i32 noundef 0) #20
  br label %72

63:                                               ; preds = %58
  %64 = getelementptr inbounds %struct.sv, ptr %56, i64 0, i32 3
  %65 = load ptr, ptr %64, align 8, !tbaa !38
  %66 = tail call ptr @Perl_hv_common(ptr noundef %65, ptr noundef null, ptr noundef nonnull @.str.47, i64 noundef 8, i32 noundef 0, i32 noundef 32, ptr noundef null, i32 noundef 0) #20
  %67 = icmp eq ptr %66, null
  br i1 %67, label %126, label %68

68:                                               ; preds = %63
  %69 = load ptr, ptr %66, align 8, !tbaa !53
  %70 = getelementptr inbounds %struct.sv, ptr %69, i64 0, i32 3
  %71 = load ptr, ptr %70, align 8, !tbaa !38
  br label %72

72:                                               ; preds = %68, %61
  %73 = phi ptr [ %62, %61 ], [ %71, %68 ]
  %74 = icmp eq ptr %73, null
  br i1 %74, label %126, label %75

75:                                               ; preds = %72
  %76 = icmp ult i64 %8, 128
  br i1 %76, label %90, label %77

77:                                               ; preds = %75
  %78 = icmp ult i64 %8, 2048
  br i1 %78, label %90, label %79

79:                                               ; preds = %77
  %80 = icmp ult i64 %8, 65536
  br i1 %80, label %90, label %81

81:                                               ; preds = %79
  %82 = icmp ult i64 %8, 2097152
  br i1 %82, label %90, label %83

83:                                               ; preds = %81
  %84 = icmp ult i64 %8, 67108864
  br i1 %84, label %90, label %85

85:                                               ; preds = %83
  %86 = icmp ult i64 %8, 2147483648
  br i1 %86, label %90, label %87

87:                                               ; preds = %85
  %88 = icmp ult i64 %8, 68719476736
  %89 = select i1 %88, i32 7, i32 13
  br label %90

90:                                               ; preds = %77, %81, %87, %85, %83, %79, %75
  %91 = phi i32 [ 1, %75 ], [ 2, %77 ], [ 3, %79 ], [ 4, %81 ], [ 5, %83 ], [ %89, %87 ], [ 6, %85 ]
  %92 = tail call ptr @Perl_hv_common_key_len(ptr noundef nonnull %73, ptr noundef %0, i32 noundef %91, i32 noundef 32, ptr noundef null, i32 noundef 0) #20
  %93 = icmp eq ptr %92, null
  br i1 %93, label %126, label %94

94:                                               ; preds = %90
  %95 = load ptr, ptr %92, align 8, !tbaa !53
  %96 = icmp eq ptr %95, null
  br i1 %96, label %126, label %97

97:                                               ; preds = %94
  %98 = getelementptr inbounds %struct.sv, ptr %95, i64 0, i32 2
  %99 = load i32, ptr %98, align 4, !tbaa !94
  %100 = and i32 %99, 2098176
  %101 = icmp eq i32 %100, 1024
  br i1 %101, label %102, label %108

102:                                              ; preds = %97
  %103 = load ptr, ptr %95, align 8, !tbaa !96
  %104 = getelementptr inbounds %struct.xpv, ptr %103, i64 0, i32 2
  %105 = load i64, ptr %104, align 8, !tbaa !97
  store i64 %105, ptr %7, align 8, !tbaa !50
  %106 = getelementptr inbounds %struct.sv, ptr %95, i64 0, i32 3
  %107 = load ptr, ptr %106, align 8, !tbaa !38
  br label %111

108:                                              ; preds = %97
  %109 = call ptr @Perl_sv_2pv_flags(ptr noundef nonnull %95, ptr noundef nonnull %7, i32 noundef 34) #20
  %110 = load i64, ptr %7, align 8, !tbaa !50
  br label %111

111:                                              ; preds = %108, %102
  %112 = phi i64 [ %110, %108 ], [ %105, %102 ]
  %113 = phi ptr [ %109, %108 ], [ %107, %102 ]
  %114 = icmp eq i64 %112, 1
  br i1 %114, label %115, label %122

115:                                              ; preds = %111
  %116 = load i8, ptr %113, align 1, !tbaa !38
  %117 = zext i8 %116 to i64
  %118 = call ptr @Perl_uvoffuni_to_utf8_flags(ptr noundef %1, i64 noundef %117, i64 noundef 0) #21
  %119 = ptrtoint ptr %118 to i64
  %120 = ptrtoint ptr %1 to i64
  %121 = sub i64 %119, %120
  store i64 %121, ptr %7, align 8, !tbaa !50
  br label %123

122:                                              ; preds = %111
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %1, ptr align 1 %113, i64 %112, i1 false)
  br label %123

123:                                              ; preds = %122, %115
  %124 = phi i64 [ %121, %115 ], [ %112, %122 ]
  %125 = icmp eq i64 %124, 0
  br i1 %125, label %126, label %142

126:                                              ; preds = %72, %90, %94, %55, %63, %123
  %127 = load ptr, ptr %3, align 8, !tbaa !53
  %128 = icmp eq ptr %127, null
  br i1 %128, label %148, label %129

129:                                              ; preds = %126
  %130 = call i64 @Perl_swash_fetch(ptr noundef nonnull %127, ptr noundef %0, i1 noundef zeroext true) #21, !range !76
  %131 = icmp eq i64 %130, 0
  br i1 %131, label %132, label %134

132:                                              ; preds = %129
  %133 = load i64, ptr %7, align 8, !tbaa !50
  br label %139

134:                                              ; preds = %129
  %135 = call ptr @Perl_uvoffuni_to_utf8_flags(ptr noundef %1, i64 noundef %130, i64 noundef 0) #21
  %136 = ptrtoint ptr %135 to i64
  %137 = ptrtoint ptr %1 to i64
  %138 = sub i64 %136, %137
  store i64 %138, ptr %7, align 8, !tbaa !50
  br label %139

139:                                              ; preds = %132, %134
  %140 = phi i64 [ %138, %134 ], [ %133, %132 ]
  %141 = icmp eq i64 %140, 0
  br i1 %141, label %148, label %142

142:                                              ; preds = %123, %139
  %143 = phi i64 [ %140, %139 ], [ %124, %123 ]
  %144 = icmp eq ptr %2, null
  br i1 %144, label %146, label %145

145:                                              ; preds = %142
  store i64 %143, ptr %2, align 8, !tbaa !50
  br label %146

146:                                              ; preds = %145, %142
  %147 = call i64 @Perl_valid_utf8_to_uvchr(ptr noundef %1, ptr noundef null) #21
  br label %159

148:                                              ; preds = %126, %139
  %149 = load i8, ptr %0, align 1, !tbaa !38
  %150 = zext i8 %149 to i64
  %151 = getelementptr inbounds [0 x i8], ptr @PL_utf8skip, i64 0, i64 %150
  %152 = load i8, ptr %151, align 1, !tbaa !38
  %153 = zext i8 %152 to i64
  %154 = icmp eq ptr %0, %1
  br i1 %154, label %156, label %155

155:                                              ; preds = %148
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %1, ptr nonnull align 1 %0, i64 %153, i1 false)
  br label %156

156:                                              ; preds = %155, %148
  %157 = icmp eq ptr %2, null
  br i1 %157, label %159, label %158

158:                                              ; preds = %156
  store i64 %153, ptr %2, align 8, !tbaa !50
  br label %159

159:                                              ; preds = %156, %158, %146
  %160 = phi i64 [ %147, %146 ], [ %8, %158 ], [ %8, %156 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #22
  ret i64 %160
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i64 @Perl_to_uni_title(i64 noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #3 !prof !47 {
  %4 = icmp ult i64 %0, 256
  br i1 %4, label %5, label %8

5:                                                ; preds = %3
  %6 = trunc i64 %0 to i8
  %7 = tail call i64 @Perl__to_upper_title_latin1(i8 noundef zeroext %6, ptr noundef %1, ptr noundef %2, i8 noundef signext 115) #21, !range !103
  br label %11

8:                                                ; preds = %3
  %9 = tail call ptr @Perl_uvoffuni_to_utf8_flags(ptr noundef %1, i64 noundef %0, i64 noundef 0) #21
  %10 = tail call i64 @Perl_to_utf8_case(ptr noundef %1, ptr noundef %1, ptr noundef %2, ptr noundef nonnull @PL_utf8_totitle, ptr noundef nonnull @.str.25, ptr noundef nonnull @.str.9) #21
  br label %11

11:                                               ; preds = %8, %5
  %12 = phi i64 [ %7, %5 ], [ %10, %8 ]
  ret i64 %12
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i64 @Perl_to_uni_lower(i64 noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #3 !prof !47 {
  %4 = icmp ult i64 %0, 256
  br i1 %4, label %5, label %9

5:                                                ; preds = %3
  %6 = trunc i64 %0 to i8
  %7 = tail call fastcc zeroext i8 @S_to_lower_latin1(i8 noundef zeroext %6, ptr noundef %1, ptr noundef %2) #21
  %8 = zext i8 %7 to i64
  br label %12

9:                                                ; preds = %3
  %10 = tail call ptr @Perl_uvoffuni_to_utf8_flags(ptr noundef %1, i64 noundef %0, i64 noundef 0) #21
  %11 = tail call i64 @Perl_to_utf8_case(ptr noundef %1, ptr noundef %1, ptr noundef %2, ptr noundef nonnull @PL_utf8_tolower, ptr noundef nonnull @.str.26, ptr noundef nonnull @.str.9) #21
  br label %12

12:                                               ; preds = %9, %5
  %13 = phi i64 [ %8, %5 ], [ %11, %9 ]
  ret i64 %13
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define internal fastcc zeroext i8 @S_to_lower_latin1(i8 noundef zeroext %0, ptr noundef writeonly %1, ptr nocapture noundef writeonly %2) unnamed_addr #9 !prof !47 !PGOFuncName !104 {
  %4 = zext i8 %0 to i64
  %5 = getelementptr inbounds [0 x i8], ptr @PL_latin1_lc, i64 0, i64 %4
  %6 = load i8, ptr %5, align 1, !tbaa !38
  %7 = icmp eq ptr %1, null
  br i1 %7, label %18, label %8

8:                                                ; preds = %3
  %9 = icmp sgt i8 %6, -1
  br i1 %9, label %10, label %11

10:                                               ; preds = %8
  store i8 %6, ptr %1, align 1, !tbaa !38
  br label %16

11:                                               ; preds = %8
  %12 = lshr i8 %6, 6
  %13 = or disjoint i8 %12, -64
  store i8 %13, ptr %1, align 1, !tbaa !38
  %14 = and i8 %6, -65
  %15 = getelementptr inbounds i8, ptr %1, i64 1
  store i8 %14, ptr %15, align 1, !tbaa !38
  br label %16

16:                                               ; preds = %11, %10
  %17 = phi i64 [ 1, %10 ], [ 2, %11 ]
  store i64 %17, ptr %2, align 8, !tbaa !50
  br label %18

18:                                               ; preds = %16, %3
  ret i8 %6
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define dso_local i64 @Perl__to_fold_latin1(i8 noundef zeroext %0, ptr nocapture noundef writeonly %1, ptr nocapture noundef writeonly %2, i32 noundef %3) local_unnamed_addr #9 !prof !105 {
  %5 = icmp eq i8 %0, -75
  br i1 %5, label %24, label %6, !prof !106

6:                                                ; preds = %4
  %7 = and i32 %3, 2
  %8 = icmp ne i32 %7, 0
  %9 = icmp eq i8 %0, -33
  %10 = and i1 %9, %8
  br i1 %10, label %11, label %17, !prof !107

11:                                               ; preds = %6
  %12 = and i32 %3, 4
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %15, label %14

14:                                               ; preds = %11
  store i64 4, ptr %2, align 8, !tbaa !50
  store i32 -1077559355, ptr %1, align 1
  br label %36

15:                                               ; preds = %11
  %16 = getelementptr inbounds i8, ptr %1, i64 1
  store i8 115, ptr %1, align 1, !tbaa !38
  store i8 115, ptr %16, align 1, !tbaa !38
  store i64 2, ptr %2, align 8, !tbaa !50
  br label %36

17:                                               ; preds = %6
  %18 = zext i8 %0 to i64
  %19 = getelementptr inbounds [0 x i8], ptr @PL_latin1_lc, i64 0, i64 %18
  %20 = load i8, ptr %19, align 1, !tbaa !38
  %21 = zext i8 %20 to i64
  %22 = icmp sgt i8 %20, -1
  br i1 %22, label %23, label %24, !prof !108

23:                                               ; preds = %17
  store i8 %20, ptr %1, align 1, !tbaa !38
  br label %33

24:                                               ; preds = %4, %17
  %25 = phi i64 [ %21, %17 ], [ 956, %4 ]
  %26 = lshr i64 %25, 6
  %27 = trunc i64 %26 to i8
  %28 = or disjoint i8 %27, -64
  %29 = getelementptr inbounds i8, ptr %1, i64 1
  store i8 %28, ptr %1, align 1, !tbaa !38
  %30 = trunc i64 %25 to i8
  %31 = and i8 %30, 63
  %32 = or disjoint i8 %31, -128
  store i8 %32, ptr %29, align 1, !tbaa !38
  br label %33

33:                                               ; preds = %24, %23
  %34 = phi i64 [ %25, %24 ], [ %21, %23 ]
  %35 = phi i64 [ 2, %24 ], [ 1, %23 ]
  store i64 %35, ptr %2, align 8, !tbaa !50
  br label %36

36:                                               ; preds = %33, %15, %14
  %37 = phi i64 [ %34, %33 ], [ 383, %14 ], [ 115, %15 ]
  ret i64 %37
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #10

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i64 @Perl__to_uni_fold_flags(i64 noundef %0, ptr noundef %1, ptr noundef %2, i8 noundef zeroext %3) local_unnamed_addr #3 !prof !47 {
  %5 = alloca [14 x i8], align 1
  %6 = and i8 %3, 1
  %7 = icmp eq i8 %6, 0
  br i1 %7, label %13, label %8

8:                                                ; preds = %4
  %9 = load i8, ptr @PL_in_utf8_CTYPE_locale, align 1, !tbaa !63, !range !65, !noundef !66
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
  %20 = tail call i64 @Perl__to_fold_latin1(i8 noundef zeroext %17, ptr noundef %1, ptr noundef %2, i32 noundef %19) #21, !range !109
  br label %35

21:                                               ; preds = %13
  %22 = zext i8 %14 to i32
  %23 = and i32 %22, 5
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %25, label %31

25:                                               ; preds = %21
  %26 = tail call ptr @Perl_uvoffuni_to_utf8_flags(ptr noundef %1, i64 noundef %0, i64 noundef 0) #21
  %27 = and i32 %22, 2
  %28 = icmp eq i32 %27, 0
  %29 = select i1 %28, ptr null, ptr @.str.9
  %30 = tail call i64 @Perl_to_utf8_case(ptr noundef %1, ptr noundef %1, ptr noundef %2, ptr noundef nonnull @PL_utf8_tofold, ptr noundef nonnull @.str.28, ptr noundef %29) #21
  br label %35

31:                                               ; preds = %21, %8
  %32 = phi i8 [ %14, %21 ], [ %3, %8 ]
  %33 = call ptr @Perl_uvoffuni_to_utf8_flags(ptr noundef nonnull %5, i64 noundef %0, i64 noundef 0) #21
  %34 = call i64 @Perl__to_utf8_fold_flags(ptr noundef nonnull %5, ptr noundef %1, ptr noundef %2, i8 noundef zeroext %32) #21
  br label %35

35:                                               ; preds = %31, %25, %16
  %36 = phi i64 [ %20, %16 ], [ %34, %31 ], [ %30, %25 ]
  ret i64 %36
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i64 @Perl__to_utf8_fold_flags(ptr noundef %0, ptr noundef %1, ptr noundef %2, i8 noundef zeroext %3) local_unnamed_addr #3 !prof !47 {
  %5 = and i8 %3, 1
  %6 = icmp eq i8 %5, 0
  %7 = load i8, ptr @PL_in_utf8_CTYPE_locale, align 1, !range !65
  %8 = icmp eq i8 %7, 0
  %9 = select i1 %6, i1 true, i1 %8
  %10 = and i8 %3, -2
  %11 = select i1 %9, i8 %3, i8 %10
  %12 = load i8, ptr %0, align 1, !tbaa !38
  %13 = icmp sgt i8 %12, -1
  br i1 %13, label %14, label %21

14:                                               ; preds = %4
  %15 = zext i8 %11 to i32
  %16 = and i32 %15, 1
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %83

18:                                               ; preds = %14
  %19 = and i32 %15, 6
  %20 = tail call i64 @Perl__to_fold_latin1(i8 noundef zeroext %12, ptr noundef %1, ptr noundef %2, i32 noundef %19) #21, !range !109
  br label %106

21:                                               ; preds = %4
  %22 = and i8 %12, -2
  %23 = icmp eq i8 %22, -62
  %24 = zext i8 %11 to i32
  br i1 %23, label %25, label %38

25:                                               ; preds = %21
  %26 = and i32 %24, 1
  %27 = icmp eq i32 %26, 0
  %28 = shl i8 %12, 6
  %29 = getelementptr inbounds i8, ptr %0, i64 1
  %30 = load i8, ptr %29, align 1, !tbaa !38
  %31 = and i8 %30, 63
  %32 = or disjoint i8 %31, %28
  br i1 %27, label %35, label %33

33:                                               ; preds = %25
  %34 = zext i8 %32 to i64
  br label %93

35:                                               ; preds = %25
  %36 = and i32 %24, 6
  %37 = tail call i64 @Perl__to_fold_latin1(i8 noundef zeroext %32, ptr noundef %1, ptr noundef %2, i32 noundef %36) #21, !range !109
  br label %106

38:                                               ; preds = %21
  %39 = and i32 %24, 2
  %40 = icmp eq i32 %39, 0
  %41 = select i1 %40, ptr null, ptr @.str.9
  %42 = tail call i64 @Perl_to_utf8_case(ptr noundef nonnull %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull @PL_utf8_tofold, ptr noundef nonnull @.str.28, ptr noundef %41) #21
  %43 = and i32 %24, 1
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %61, label %45

45:                                               ; preds = %38
  %46 = load i8, ptr %0, align 1, !tbaa !38
  %47 = zext i8 %46 to i64
  %48 = getelementptr inbounds [0 x i8], ptr @PL_utf8skip, i64 0, i64 %47
  %49 = load i8, ptr %48, align 1, !tbaa !38
  %50 = icmp eq i8 %49, 3
  br i1 %50, label %51, label %58

51:                                               ; preds = %45
  %52 = tail call i32 @bcmp(ptr noundef nonnull dereferenceable(3) %0, ptr noundef nonnull dereferenceable(3) @.str.49, i64 3)
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %54, label %55

54:                                               ; preds = %51
  tail call void (i32, ptr, ...) @Perl_ck_warner(i32 noundef 65, ptr noundef nonnull @.str.50) #20
  br label %104

55:                                               ; preds = %51
  %56 = tail call i32 @bcmp(ptr noundef nonnull dereferenceable(3) %0, ptr noundef nonnull dereferenceable(3) @.str.51, i64 3)
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %60, label %58

58:                                               ; preds = %55, %45
  %59 = tail call fastcc i64 @S_check_locale_boundary_crossing(ptr noundef nonnull %0, i64 noundef %42, ptr noundef %1, ptr noundef %2) #21
  br label %106

60:                                               ; preds = %55
  tail call void (i32, ptr, ...) @Perl_ck_warner(i32 noundef 65, ptr noundef nonnull @.str.52) #20
  br label %105

61:                                               ; preds = %38
  %62 = and i32 %24, 4
  %63 = icmp eq i32 %62, 0
  br i1 %63, label %106, label %64

64:                                               ; preds = %61
  %65 = load i64, ptr %2, align 8, !tbaa !50
  %66 = getelementptr inbounds i8, ptr %1, i64 %65
  %67 = icmp sgt i64 %65, 0
  br i1 %67, label %68, label %106

68:                                               ; preds = %64, %76
  %69 = phi ptr [ %81, %76 ], [ %1, %64 ]
  %70 = load i8, ptr %69, align 1, !tbaa !38
  %71 = icmp sgt i8 %70, -1
  br i1 %71, label %72, label %76

72:                                               ; preds = %68
  %73 = tail call i64 @Perl_valid_utf8_to_uvchr(ptr noundef nonnull %0, ptr noundef nonnull %2) #21
  switch i64 %73, label %74 [
    i64 7838, label %104
    i64 223, label %104
    i64 64261, label %105
  ]

74:                                               ; preds = %72
  %75 = load i64, ptr %2, align 8, !tbaa !50
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %1, ptr nonnull align 1 %0, i64 %75, i1 false)
  br label %106

76:                                               ; preds = %68
  %77 = zext i8 %70 to i64
  %78 = getelementptr inbounds [0 x i8], ptr @PL_utf8skip, i64 0, i64 %77
  %79 = load i8, ptr %78, align 1, !tbaa !38
  %80 = zext i8 %79 to i64
  %81 = getelementptr inbounds i8, ptr %69, i64 %80
  %82 = icmp ult ptr %81, %66
  br i1 %82, label %68, label %106, !llvm.loop !110

83:                                               ; preds = %14
  %84 = tail call ptr @__ctype_tolower_loc() #23
  %85 = load ptr, ptr %84, align 8, !tbaa !53
  %86 = zext nneg i8 %12 to i64
  %87 = getelementptr inbounds i32, ptr %85, i64 %86
  %88 = load i32, ptr %87, align 4, !tbaa !72
  %89 = sext i32 %88 to i64
  %90 = icmp ult i32 %88, 128
  br i1 %90, label %91, label %93

91:                                               ; preds = %83
  %92 = trunc i32 %88 to i8
  store i8 %92, ptr %1, align 1, !tbaa !38
  br label %101

93:                                               ; preds = %33, %83
  %94 = phi i64 [ %34, %33 ], [ %89, %83 ]
  %95 = trunc i64 %94 to i8
  %96 = lshr i8 %95, 6
  %97 = or disjoint i8 %96, -64
  store i8 %97, ptr %1, align 1, !tbaa !38
  %98 = and i8 %95, 63
  %99 = or disjoint i8 %98, -128
  %100 = getelementptr inbounds i8, ptr %1, i64 1
  store i8 %99, ptr %100, align 1, !tbaa !38
  br label %101

101:                                              ; preds = %93, %91
  %102 = phi i64 [ %94, %93 ], [ %89, %91 ]
  %103 = phi i64 [ 2, %93 ], [ 1, %91 ]
  store i64 %103, ptr %2, align 8, !tbaa !50
  br label %106

104:                                              ; preds = %72, %72, %54
  store i64 4, ptr %2, align 8, !tbaa !50
  store i32 -1077559355, ptr %1, align 1
  br label %106

105:                                              ; preds = %72, %60
  store i64 3, ptr %2, align 8, !tbaa !50
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %1, ptr noundef nonnull align 1 dereferenceable(3) @.str.53, i64 3, i1 false)
  br label %106

106:                                              ; preds = %76, %64, %74, %58, %61, %105, %104, %101, %35, %18
  %107 = phi i64 [ %102, %101 ], [ %20, %18 ], [ %37, %35 ], [ 64262, %105 ], [ 383, %104 ], [ %42, %61 ], [ %59, %58 ], [ %73, %74 ], [ %42, %64 ], [ %42, %76 ]
  ret i64 %107
}

; Function Attrs: optsize
declare ptr @Perl__new_invlist_C_array(ptr noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind optsize uwtable
define dso_local zeroext i1 @Perl__is_utf8_xidstart(ptr noundef %0) local_unnamed_addr #3 !prof !47 {
  %2 = load i8, ptr %0, align 1, !tbaa !38
  %3 = icmp eq i8 %2, 95
  br i1 %3, label %6, label %4

4:                                                ; preds = %1
  %5 = tail call fastcc zeroext i1 @S_is_utf8_common(ptr noundef nonnull %0, ptr noundef nonnull @PL_utf8_xidstart, ptr noundef nonnull @.str.40, ptr noundef null) #21
  br label %6

6:                                                ; preds = %1, %4
  %7 = phi i1 [ %5, %4 ], [ true, %1 ]
  ret i1 %7
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local zeroext i1 @Perl__is_utf8_idcont(ptr noundef %0) local_unnamed_addr #3 !prof !47 {
  %2 = tail call fastcc zeroext i1 @S_is_utf8_common(ptr noundef %0, ptr noundef nonnull @PL_utf8_idcont, ptr noundef nonnull @.str.42, ptr noundef null) #21
  ret i1 %2
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local zeroext i1 @Perl__is_utf8_xidcont(ptr noundef %0) local_unnamed_addr #3 !prof !47 {
  %2 = tail call fastcc zeroext i1 @S_is_utf8_common(ptr noundef %0, ptr noundef nonnull @PL_utf8_idcont, ptr noundef nonnull @.str.43, ptr noundef null) #21
  ret i1 %2
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local zeroext i1 @Perl__is_utf8_mark(ptr noundef %0) local_unnamed_addr #3 !prof !47 {
  %2 = tail call fastcc zeroext i1 @S_is_utf8_common(ptr noundef %0, ptr noundef nonnull @PL_utf8_mark, ptr noundef nonnull @.str.44, ptr noundef null) #21
  ret i1 %2
}

; Function Attrs: optsize
declare ptr @Perl_get_hv(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare ptr @Perl_hv_common(ptr noundef, ptr noundef, ptr noundef, i64 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare ptr @Perl_hv_common_key_len(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare ptr @Perl_sv_2pv_flags(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i64 @Perl__to_utf8_upper_flags(ptr noundef %0, ptr noundef %1, ptr noundef %2, i1 noundef zeroext %3) local_unnamed_addr #3 !prof !47 {
  %5 = xor i1 %3, true
  %6 = load i8, ptr @PL_in_utf8_CTYPE_locale, align 1, !range !65
  %7 = icmp eq i8 %6, 0
  %8 = select i1 %5, i1 true, i1 %7
  %9 = and i1 %8, %3
  %10 = load i8, ptr %0, align 1, !tbaa !38
  %11 = icmp sgt i8 %10, -1
  br i1 %11, label %12, label %15

12:                                               ; preds = %4
  br i1 %9, label %32, label %13

13:                                               ; preds = %12
  %14 = tail call i64 @Perl__to_upper_title_latin1(i8 noundef zeroext %10, ptr noundef %1, ptr noundef %2, i8 noundef signext 83) #21, !range !103
  br label %53

15:                                               ; preds = %4
  %16 = and i8 %10, -2
  %17 = icmp eq i8 %16, -62
  br i1 %17, label %18, label %28

18:                                               ; preds = %15
  %19 = shl i8 %10, 6
  %20 = getelementptr inbounds i8, ptr %0, i64 1
  %21 = load i8, ptr %20, align 1, !tbaa !38
  %22 = and i8 %21, 63
  %23 = or disjoint i8 %22, %19
  br i1 %9, label %24, label %26

24:                                               ; preds = %18
  %25 = zext i8 %23 to i64
  br label %42

26:                                               ; preds = %18
  %27 = tail call i64 @Perl__to_upper_title_latin1(i8 noundef zeroext %23, ptr noundef %1, ptr noundef %2, i8 noundef signext 83) #21, !range !103
  br label %53

28:                                               ; preds = %15
  %29 = tail call i64 @Perl_to_utf8_case(ptr noundef nonnull %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull @PL_utf8_toupper, ptr noundef nonnull @.str.24, ptr noundef nonnull @.str.9) #21
  br i1 %9, label %30, label %53

30:                                               ; preds = %28
  %31 = tail call fastcc i64 @S_check_locale_boundary_crossing(ptr noundef nonnull %0, i64 noundef %29, ptr noundef %1, ptr noundef %2) #21
  br label %53

32:                                               ; preds = %12
  %33 = tail call ptr @__ctype_toupper_loc() #23
  %34 = load ptr, ptr %33, align 8, !tbaa !53
  %35 = zext nneg i8 %10 to i64
  %36 = getelementptr inbounds i32, ptr %34, i64 %35
  %37 = load i32, ptr %36, align 4, !tbaa !72
  %38 = sext i32 %37 to i64
  %39 = icmp ult i32 %37, 128
  br i1 %39, label %40, label %42

40:                                               ; preds = %32
  %41 = trunc i32 %37 to i8
  store i8 %41, ptr %1, align 1, !tbaa !38
  br label %50

42:                                               ; preds = %24, %32
  %43 = phi i64 [ %25, %24 ], [ %38, %32 ]
  %44 = trunc i64 %43 to i8
  %45 = lshr i8 %44, 6
  %46 = or disjoint i8 %45, -64
  store i8 %46, ptr %1, align 1, !tbaa !38
  %47 = and i8 %44, 63
  %48 = or disjoint i8 %47, -128
  %49 = getelementptr inbounds i8, ptr %1, i64 1
  store i8 %48, ptr %49, align 1, !tbaa !38
  br label %50

50:                                               ; preds = %42, %40
  %51 = phi i64 [ %43, %42 ], [ %38, %40 ]
  %52 = phi i64 [ 2, %42 ], [ 1, %40 ]
  store i64 %52, ptr %2, align 8, !tbaa !50
  br label %53

53:                                               ; preds = %28, %30, %50, %26, %13
  %54 = phi i64 [ %51, %50 ], [ %14, %13 ], [ %27, %26 ], [ %31, %30 ], [ %29, %28 ]
  ret i64 %54
}

; Function Attrs: mustprogress nofree nosync nounwind optsize willreturn memory(none)
declare ptr @__ctype_toupper_loc() local_unnamed_addr #11

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i64 @S_check_locale_boundary_crossing(ptr noundef %0, i64 noundef %1, ptr noundef %2, ptr noundef %3) unnamed_addr #3 !prof !47 !PGOFuncName !111 {
  %5 = icmp ugt i64 %1, 255
  br i1 %5, label %6, label %28

6:                                                ; preds = %4
  %7 = load i8, ptr %2, align 1, !tbaa !38
  %8 = zext i8 %7 to i64
  %9 = getelementptr inbounds [0 x i8], ptr @PL_utf8skip, i64 0, i64 %8
  %10 = load i8, ptr %9, align 1, !tbaa !38
  %11 = zext i8 %10 to i64
  %12 = load i64, ptr %3, align 8, !tbaa !50
  %13 = getelementptr inbounds i8, ptr %2, i64 %12
  %14 = icmp sgt i64 %12, %11
  br i1 %14, label %15, label %44

15:                                               ; preds = %6
  %16 = getelementptr inbounds i8, ptr %2, i64 %11
  br label %17

17:                                               ; preds = %15, %21
  %18 = phi ptr [ %26, %21 ], [ %16, %15 ]
  %19 = load i8, ptr %18, align 1, !tbaa !38
  %20 = icmp ugt i8 %19, -61
  br i1 %20, label %21, label %28

21:                                               ; preds = %17
  %22 = zext i8 %19 to i64
  %23 = getelementptr inbounds [0 x i8], ptr @PL_utf8skip, i64 0, i64 %22
  %24 = load i8, ptr %23, align 1, !tbaa !38
  %25 = zext i8 %24 to i64
  %26 = getelementptr inbounds i8, ptr %18, i64 %25
  %27 = icmp ult ptr %26, %13
  br i1 %27, label %17, label %44, !llvm.loop !112

28:                                               ; preds = %17, %4
  %29 = tail call i64 @Perl_valid_utf8_to_uvchr(ptr noundef %0, ptr noundef %3) #21
  %30 = load ptr, ptr @PL_op, align 8, !tbaa !53
  %31 = getelementptr inbounds %struct.op, ptr %30, i64 0, i32 4
  %32 = load i16, ptr %31, align 8
  %33 = and i16 %32, 511
  %34 = icmp eq i16 %33, 380
  br i1 %34, label %35, label %37

35:                                               ; preds = %28
  %36 = tail call ptr @Perl_custom_op_get_field(ptr noundef nonnull %30, i32 noundef 2) #20
  br label %41

37:                                               ; preds = %28
  %38 = zext nneg i16 %33 to i64
  %39 = getelementptr inbounds [0 x ptr], ptr @PL_op_desc, i64 0, i64 %38
  %40 = load ptr, ptr %39, align 8, !tbaa !53
  br label %41

41:                                               ; preds = %37, %35
  %42 = phi ptr [ %36, %35 ], [ %40, %37 ]
  tail call void (i32, ptr, ...) @Perl_ck_warner(i32 noundef 65, ptr noundef nonnull @.str.48, ptr noundef %42, i64 noundef %29, i64 noundef %29) #20
  %43 = load i64, ptr %3, align 8, !tbaa !50
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %2, ptr align 1 %0, i64 %43, i1 false)
  br label %44

44:                                               ; preds = %21, %6, %41
  %45 = phi i64 [ %29, %41 ], [ %1, %6 ], [ %1, %21 ]
  ret i64 %45
}

; Function Attrs: optsize
declare void @Perl_ck_warner(i32 noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i64 @Perl__to_utf8_title_flags(ptr noundef %0, ptr noundef %1, ptr noundef %2, i1 noundef zeroext %3) local_unnamed_addr #3 !prof !47 {
  %5 = xor i1 %3, true
  %6 = load i8, ptr @PL_in_utf8_CTYPE_locale, align 1, !range !65
  %7 = icmp eq i8 %6, 0
  %8 = select i1 %5, i1 true, i1 %7
  %9 = and i1 %8, %3
  %10 = load i8, ptr %0, align 1, !tbaa !38
  %11 = icmp sgt i8 %10, -1
  br i1 %11, label %12, label %15

12:                                               ; preds = %4
  br i1 %9, label %32, label %13

13:                                               ; preds = %12
  %14 = tail call i64 @Perl__to_upper_title_latin1(i8 noundef zeroext %10, ptr noundef %1, ptr noundef %2, i8 noundef signext 115) #21, !range !103
  br label %53

15:                                               ; preds = %4
  %16 = and i8 %10, -2
  %17 = icmp eq i8 %16, -62
  br i1 %17, label %18, label %28

18:                                               ; preds = %15
  %19 = shl i8 %10, 6
  %20 = getelementptr inbounds i8, ptr %0, i64 1
  %21 = load i8, ptr %20, align 1, !tbaa !38
  %22 = and i8 %21, 63
  %23 = or disjoint i8 %22, %19
  br i1 %9, label %24, label %26

24:                                               ; preds = %18
  %25 = zext i8 %23 to i64
  br label %42

26:                                               ; preds = %18
  %27 = tail call i64 @Perl__to_upper_title_latin1(i8 noundef zeroext %23, ptr noundef %1, ptr noundef %2, i8 noundef signext 115) #21, !range !103
  br label %53

28:                                               ; preds = %15
  %29 = tail call i64 @Perl_to_utf8_case(ptr noundef nonnull %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull @PL_utf8_totitle, ptr noundef nonnull @.str.25, ptr noundef nonnull @.str.9) #21
  br i1 %9, label %30, label %53

30:                                               ; preds = %28
  %31 = tail call fastcc i64 @S_check_locale_boundary_crossing(ptr noundef nonnull %0, i64 noundef %29, ptr noundef %1, ptr noundef %2) #21
  br label %53

32:                                               ; preds = %12
  %33 = tail call ptr @__ctype_toupper_loc() #23
  %34 = load ptr, ptr %33, align 8, !tbaa !53
  %35 = zext nneg i8 %10 to i64
  %36 = getelementptr inbounds i32, ptr %34, i64 %35
  %37 = load i32, ptr %36, align 4, !tbaa !72
  %38 = sext i32 %37 to i64
  %39 = icmp ult i32 %37, 128
  br i1 %39, label %40, label %42

40:                                               ; preds = %32
  %41 = trunc i32 %37 to i8
  store i8 %41, ptr %1, align 1, !tbaa !38
  br label %50

42:                                               ; preds = %24, %32
  %43 = phi i64 [ %25, %24 ], [ %38, %32 ]
  %44 = trunc i64 %43 to i8
  %45 = lshr i8 %44, 6
  %46 = or disjoint i8 %45, -64
  store i8 %46, ptr %1, align 1, !tbaa !38
  %47 = and i8 %44, 63
  %48 = or disjoint i8 %47, -128
  %49 = getelementptr inbounds i8, ptr %1, i64 1
  store i8 %48, ptr %49, align 1, !tbaa !38
  br label %50

50:                                               ; preds = %42, %40
  %51 = phi i64 [ %43, %42 ], [ %38, %40 ]
  %52 = phi i64 [ 2, %42 ], [ 1, %40 ]
  store i64 %52, ptr %2, align 8, !tbaa !50
  br label %53

53:                                               ; preds = %28, %30, %50, %26, %13
  %54 = phi i64 [ %51, %50 ], [ %14, %13 ], [ %27, %26 ], [ %31, %30 ], [ %29, %28 ]
  ret i64 %54
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i64 @Perl__to_utf8_lower_flags(ptr noundef %0, ptr noundef %1, ptr noundef %2, i1 noundef zeroext %3) local_unnamed_addr #3 !prof !47 {
  %5 = xor i1 %3, true
  %6 = load i8, ptr @PL_in_utf8_CTYPE_locale, align 1, !range !65
  %7 = icmp eq i8 %6, 0
  %8 = select i1 %5, i1 true, i1 %7
  %9 = and i1 %8, %3
  %10 = load i8, ptr %0, align 1, !tbaa !38
  %11 = icmp sgt i8 %10, -1
  br i1 %11, label %12, label %16

12:                                               ; preds = %4
  br i1 %9, label %34, label %13

13:                                               ; preds = %12
  %14 = tail call fastcc zeroext i8 @S_to_lower_latin1(i8 noundef zeroext %10, ptr noundef %1, ptr noundef %2) #21
  %15 = zext i8 %14 to i64
  br label %55

16:                                               ; preds = %4
  %17 = and i8 %10, -2
  %18 = icmp eq i8 %17, -62
  br i1 %18, label %19, label %30

19:                                               ; preds = %16
  %20 = shl i8 %10, 6
  %21 = getelementptr inbounds i8, ptr %0, i64 1
  %22 = load i8, ptr %21, align 1, !tbaa !38
  %23 = and i8 %22, 63
  %24 = or disjoint i8 %23, %20
  br i1 %9, label %25, label %27

25:                                               ; preds = %19
  %26 = zext i8 %24 to i64
  br label %44

27:                                               ; preds = %19
  %28 = tail call fastcc zeroext i8 @S_to_lower_latin1(i8 noundef zeroext %24, ptr noundef %1, ptr noundef %2) #21
  %29 = zext i8 %28 to i64
  br label %55

30:                                               ; preds = %16
  %31 = tail call i64 @Perl_to_utf8_case(ptr noundef nonnull %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull @PL_utf8_tolower, ptr noundef nonnull @.str.26, ptr noundef nonnull @.str.9) #21
  br i1 %9, label %32, label %55

32:                                               ; preds = %30
  %33 = tail call fastcc i64 @S_check_locale_boundary_crossing(ptr noundef nonnull %0, i64 noundef %31, ptr noundef %1, ptr noundef %2) #21
  br label %55

34:                                               ; preds = %12
  %35 = tail call ptr @__ctype_tolower_loc() #23
  %36 = load ptr, ptr %35, align 8, !tbaa !53
  %37 = zext nneg i8 %10 to i64
  %38 = getelementptr inbounds i32, ptr %36, i64 %37
  %39 = load i32, ptr %38, align 4, !tbaa !72
  %40 = sext i32 %39 to i64
  %41 = icmp ult i32 %39, 128
  br i1 %41, label %42, label %44

42:                                               ; preds = %34
  %43 = trunc i32 %39 to i8
  store i8 %43, ptr %1, align 1, !tbaa !38
  br label %52

44:                                               ; preds = %25, %34
  %45 = phi i64 [ %26, %25 ], [ %40, %34 ]
  %46 = trunc i64 %45 to i8
  %47 = lshr i8 %46, 6
  %48 = or disjoint i8 %47, -64
  store i8 %48, ptr %1, align 1, !tbaa !38
  %49 = and i8 %46, 63
  %50 = or disjoint i8 %49, -128
  %51 = getelementptr inbounds i8, ptr %1, i64 1
  store i8 %50, ptr %51, align 1, !tbaa !38
  br label %52

52:                                               ; preds = %44, %42
  %53 = phi i64 [ %45, %44 ], [ %40, %42 ]
  %54 = phi i64 [ 2, %44 ], [ 1, %42 ]
  store i64 %54, ptr %2, align 8, !tbaa !50
  br label %55

55:                                               ; preds = %30, %32, %52, %27, %13
  %56 = phi i64 [ %53, %52 ], [ %15, %13 ], [ %29, %27 ], [ %33, %32 ], [ %31, %30 ]
  ret i64 %56
}

; Function Attrs: mustprogress nofree nosync nounwind optsize willreturn memory(none)
declare ptr @__ctype_tolower_loc() local_unnamed_addr #11

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @Perl_swash_init(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, i32 noundef %4) local_unnamed_addr #3 !prof !47 {
  %6 = tail call ptr @Perl__core_swash_init(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, i32 noundef %4, ptr noundef null, ptr noundef null) #21
  %7 = tail call ptr @Perl_newSVsv(ptr noundef %6) #20
  ret ptr %7
}

; Function Attrs: optsize
declare ptr @Perl_newSVsv(ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare ptr @Perl_gv_stashpvn(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare ptr @Perl_new_stackinfo(i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare void @Perl_push_scope() local_unnamed_addr #4

; Function Attrs: optsize
declare void @Perl_save_hints() local_unnamed_addr #4

; Function Attrs: optsize
declare void @Perl_save_re_context() local_unnamed_addr #4

; Function Attrs: optsize
declare void @Perl_save_item(ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare void @Perl_save_I8(ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare ptr @Perl_gv_fetchmeth_pvn(ptr noundef, ptr noundef, i64 noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare void @Perl_save_pushptr(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare void @Perl_save_bool(ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare void @Perl_load_module(i32 noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: optsize
declare ptr @Perl_newSVpvn(ptr noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare zeroext i1 @Perl_sv_2bool_flags(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc noundef ptr @S_SvREFCNT_inc(ptr noundef returned %0) unnamed_addr #12 !prof !47 !PGOFuncName !113 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %7, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.sv, ptr %0, i64 0, i32 1
  %5 = load i32, ptr %4, align 8, !tbaa !100
  %6 = add i32 %5, 1
  store i32 %6, ptr %4, align 8, !tbaa !100
  br label %7

7:                                                ; preds = %1, %3
  ret ptr %0
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @S_SvREFCNT_dec(ptr noundef %0) unnamed_addr #3 !prof !47 !PGOFuncName !114 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %10, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.sv, ptr %0, i64 0, i32 1
  %5 = load i32, ptr %4, align 8, !tbaa !100
  %6 = icmp ugt i32 %5, 1
  br i1 %6, label %7, label %9

7:                                                ; preds = %3
  %8 = add i32 %5, -1
  store i32 %8, ptr %4, align 8, !tbaa !100
  br label %10

9:                                                ; preds = %3
  tail call void @Perl_sv_free2(ptr noundef nonnull %0, i32 noundef %5) #20
  br label %10

10:                                               ; preds = %7, %9, %1
  ret void
}

; Function Attrs: optsize
declare void @Perl_pop_scope() local_unnamed_addr #4

; Function Attrs: optsize
declare ptr @Perl_markstack_grow() local_unnamed_addr #4

; Function Attrs: optsize
declare ptr @Perl_stack_grow(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare ptr @Perl_newSVpvn_flags(ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare void @Perl_sv_setiv(ptr noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare ptr @Perl_sv_newmortal() local_unnamed_addr #4

; Function Attrs: optsize
declare i32 @Perl_call_sv(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare void @Perl_croak_popstack() local_unnamed_addr #4

; Function Attrs: optsize
declare i64 @Perl_sv_2uv_flags(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind optsize uwtable
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
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #22
  %13 = getelementptr inbounds %struct.sv, ptr %0, i64 0, i32 3
  %14 = load ptr, ptr %13, align 8, !tbaa !38
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #22
  store i64 0, ptr %3, align 8, !tbaa !50
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %4) #22
  store i8 0, ptr %4, align 1
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #22
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #22
  %15 = getelementptr inbounds %struct.hv, ptr %14, i64 0, i32 2
  %16 = load i32, ptr %15, align 4, !tbaa !101
  %17 = and i32 %16, 255
  %18 = icmp eq i32 %17, 12
  br i1 %18, label %23, label %19

19:                                               ; preds = %1
  %20 = getelementptr inbounds %struct.sv, ptr %14, i64 0, i32 1
  %21 = load i32, ptr %20, align 8, !tbaa !100
  %22 = add i32 %21, 1
  store i32 %22, ptr %20, align 8, !tbaa !100
  br label %277

23:                                               ; preds = %1
  %24 = tail call ptr @Perl_hv_common(ptr noundef nonnull %14, ptr noundef null, ptr noundef nonnull @.str.65, i64 noundef 4, i32 noundef 0, i32 noundef 32, ptr noundef null, i32 noundef 0) #20
  %25 = tail call ptr @Perl_hv_common(ptr noundef nonnull %14, ptr noundef null, ptr noundef nonnull @.str.63, i64 noundef 4, i32 noundef 0, i32 noundef 32, ptr noundef null, i32 noundef 0) #20
  %26 = tail call ptr @Perl_hv_common(ptr noundef nonnull %14, ptr noundef null, ptr noundef nonnull @.str.61, i64 noundef 4, i32 noundef 0, i32 noundef 32, ptr noundef null, i32 noundef 0) #20
  %27 = tail call ptr @Perl_hv_common(ptr noundef nonnull %14, ptr noundef null, ptr noundef nonnull @.str.64, i64 noundef 6, i32 noundef 0, i32 noundef 32, ptr noundef null, i32 noundef 0) #20
  %28 = tail call ptr @Perl_hv_common(ptr noundef nonnull %14, ptr noundef null, ptr noundef nonnull @.str.66, i64 noundef 9, i32 noundef 0, i32 noundef 32, ptr noundef null, i32 noundef 0) #20
  %29 = load ptr, ptr %25, align 8, !tbaa !53
  %30 = getelementptr inbounds %struct.sv, ptr %29, i64 0, i32 2
  %31 = load i32, ptr %30, align 4, !tbaa !94
  %32 = and i32 %31, 2098176
  %33 = icmp eq i32 %32, 1024
  br i1 %33, label %34, label %37

34:                                               ; preds = %23
  %35 = getelementptr inbounds %struct.sv, ptr %29, i64 0, i32 3
  %36 = load ptr, ptr %35, align 8, !tbaa !38
  br label %39

37:                                               ; preds = %23
  %38 = tail call ptr @Perl_sv_2pv_flags(ptr noundef nonnull %29, ptr noundef null, i32 noundef 2) #20
  br label %39

39:                                               ; preds = %37, %34
  %40 = phi ptr [ %36, %34 ], [ %38, %37 ]
  %41 = load ptr, ptr %26, align 8, !tbaa !53
  %42 = getelementptr inbounds %struct.sv, ptr %41, i64 0, i32 2
  %43 = load i32, ptr %42, align 4, !tbaa !94
  %44 = and i32 %43, -2145386240
  %45 = icmp eq i32 %44, -2147483392
  br i1 %45, label %46, label %50

46:                                               ; preds = %39
  %47 = load ptr, ptr %41, align 8, !tbaa !96
  %48 = getelementptr inbounds %struct.xpvuv, ptr %47, i64 0, i32 4
  %49 = load i64, ptr %48, align 8, !tbaa !38
  br label %52

50:                                               ; preds = %39
  %51 = tail call i64 @Perl_sv_2uv_flags(ptr noundef nonnull %41, i32 noundef 2) #20
  br label %52

52:                                               ; preds = %50, %46
  %53 = phi i64 [ %49, %46 ], [ %51, %50 ]
  %54 = load ptr, ptr %24, align 8, !tbaa !53
  %55 = getelementptr inbounds %struct.sv, ptr %54, i64 0, i32 2
  %56 = load i32, ptr %55, align 4, !tbaa !94
  %57 = and i32 %56, 1024
  %58 = icmp eq i32 %57, 0
  br i1 %58, label %71, label %59

59:                                               ; preds = %52
  %60 = and i32 %56, 2098176
  %61 = icmp eq i32 %60, 1024
  br i1 %61, label %62, label %68

62:                                               ; preds = %59
  %63 = load ptr, ptr %54, align 8, !tbaa !96
  %64 = getelementptr inbounds %struct.xpv, ptr %63, i64 0, i32 2
  %65 = load i64, ptr %64, align 8, !tbaa !97
  store i64 %65, ptr %2, align 8, !tbaa !50
  %66 = getelementptr inbounds %struct.sv, ptr %54, i64 0, i32 3
  %67 = load ptr, ptr %66, align 8, !tbaa !38
  br label %72

68:                                               ; preds = %59
  %69 = call ptr @Perl_sv_2pv_flags(ptr noundef nonnull %54, ptr noundef nonnull %2, i32 noundef 2) #20
  %70 = load i64, ptr %2, align 8, !tbaa !50
  br label %72

71:                                               ; preds = %52
  store i64 0, ptr %2, align 8, !tbaa !50
  br label %72

72:                                               ; preds = %62, %68, %71
  %73 = phi i64 [ %65, %62 ], [ %70, %68 ], [ 0, %71 ]
  %74 = phi ptr [ %67, %62 ], [ %69, %68 ], [ %4, %71 ]
  %75 = getelementptr inbounds i8, ptr %74, i64 %73
  %76 = load i8, ptr %74, align 1, !tbaa !38
  %77 = icmp eq i8 %76, 86
  br i1 %77, label %82, label %78

78:                                               ; preds = %72
  %79 = load i64, ptr %3, align 8, !tbaa !50
  %80 = call ptr @strchr(ptr noundef nonnull dereferenceable(1) %74, i32 noundef 10) #19
  %81 = icmp eq ptr %80, null
  br i1 %81, label %146, label %139

82:                                               ; preds = %72
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #22
  store ptr %75, ptr %7, align 8, !tbaa !53
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %8) #22
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %9) #22
  %83 = getelementptr inbounds i8, ptr %74, i64 1
  %84 = call zeroext i1 @Perl_grok_atoUV(ptr noundef nonnull %83, ptr noundef nonnull %3, ptr noundef nonnull %7) #20
  br i1 %84, label %86, label %85

85:                                               ; preds = %82
  call void (ptr, ...) @Perl_croak(ptr noundef nonnull @.str.76) #20
  br label %86

86:                                               ; preds = %85, %82
  %87 = load i64, ptr %3, align 8, !tbaa !50
  %88 = icmp eq i64 %87, 0
  br i1 %88, label %91, label %89

89:                                               ; preds = %86
  %90 = load ptr, ptr %7, align 8, !tbaa !53
  br label %93

91:                                               ; preds = %86
  %92 = call ptr @Perl__new_invlist(i64 noundef 0) #20
  store ptr %92, ptr %6, align 8, !tbaa !53
  br label %138

93:                                               ; preds = %93, %89
  %94 = phi ptr [ %90, %89 ], [ %101, %93 ]
  %95 = load i8, ptr %94, align 1, !tbaa !38
  %96 = zext i8 %95 to i64
  %97 = getelementptr inbounds [0 x i32], ptr @PL_charclass, i64 0, i64 %96
  %98 = load i32, ptr %97, align 4, !tbaa !72
  %99 = and i32 %98, 17408
  %100 = icmp eq i32 %99, 17408
  %101 = getelementptr inbounds i8, ptr %94, i64 1
  br i1 %100, label %93, label %102, !llvm.loop !115

102:                                              ; preds = %93
  %103 = call zeroext i1 @Perl_grok_atoUV(ptr noundef nonnull %94, ptr noundef nonnull %8, ptr noundef nonnull %7) #20
  br i1 %103, label %105, label %104

104:                                              ; preds = %102
  call void (ptr, ...) @Perl_croak(ptr noundef nonnull @.str.77) #20
  br label %105

105:                                              ; preds = %104, %102
  %106 = load ptr, ptr %7, align 8, !tbaa !53
  %107 = load i64, ptr %3, align 8, !tbaa !50
  %108 = load i64, ptr %8, align 8, !tbaa !50
  %109 = call ptr @Perl__setup_canned_invlist(i64 noundef %107, i64 noundef %108, ptr noundef nonnull %9) #20
  store ptr %109, ptr %6, align 8, !tbaa !53
  %110 = load i64, ptr %3, align 8, !tbaa !50
  %111 = add i64 %110, -2
  store i64 %111, ptr %3, align 8, !tbaa !50
  %112 = icmp eq i64 %110, 1
  br i1 %112, label %138, label %113

113:                                              ; preds = %105, %133
  %114 = phi i64 [ %136, %133 ], [ %111, %105 ]
  %115 = phi ptr [ %134, %133 ], [ %106, %105 ]
  %116 = icmp ugt ptr %115, %75
  br i1 %116, label %117, label %118

117:                                              ; preds = %113
  call void (ptr, ...) @Perl_croak(ptr noundef nonnull @.str.78, i64 noundef %114) #20
  br label %118

118:                                              ; preds = %117, %113
  br label %119

119:                                              ; preds = %118, %119
  %120 = phi ptr [ %127, %119 ], [ %115, %118 ]
  %121 = load i8, ptr %120, align 1, !tbaa !38
  %122 = zext i8 %121 to i64
  %123 = getelementptr inbounds [0 x i32], ptr @PL_charclass, i64 0, i64 %122
  %124 = load i32, ptr %123, align 4, !tbaa !72
  %125 = and i32 %124, 17408
  %126 = icmp eq i32 %125, 17408
  %127 = getelementptr inbounds i8, ptr %120, i64 1
  br i1 %126, label %119, label %128, !llvm.loop !116

128:                                              ; preds = %119
  %129 = load ptr, ptr %9, align 8, !tbaa !53
  %130 = getelementptr inbounds i64, ptr %129, i64 1
  store ptr %130, ptr %9, align 8, !tbaa !53
  %131 = call zeroext i1 @Perl_grok_atoUV(ptr noundef nonnull %120, ptr noundef %129, ptr noundef nonnull %7) #20
  br i1 %131, label %133, label %132

132:                                              ; preds = %128
  call void (ptr, ...) @Perl_croak(ptr noundef nonnull @.str.79) #20
  br label %133

133:                                              ; preds = %132, %128
  %134 = load ptr, ptr %7, align 8, !tbaa !53
  %135 = load i64, ptr %3, align 8, !tbaa !50
  %136 = add i64 %135, -1
  store i64 %136, ptr %3, align 8, !tbaa !50
  %137 = icmp eq i64 %135, 0
  br i1 %137, label %138, label %113, !llvm.loop !117

138:                                              ; preds = %133, %105, %91
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %9) #22
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %8) #22
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #22
  br label %176

139:                                              ; preds = %78, %139
  %140 = phi ptr [ %144, %139 ], [ %80, %78 ]
  %141 = phi i64 [ %142, %139 ], [ %79, %78 ]
  %142 = add i64 %141, 2
  store i64 %142, ptr %3, align 8, !tbaa !50
  %143 = getelementptr inbounds i8, ptr %140, i64 1
  %144 = call ptr @strchr(ptr noundef nonnull dereferenceable(1) %143, i32 noundef 10) #19
  %145 = icmp eq ptr %144, null
  br i1 %145, label %146, label %139, !llvm.loop !118

146:                                              ; preds = %139, %78
  %147 = phi i64 [ %79, %78 ], [ %142, %139 ]
  %148 = load i8, ptr %75, align 1, !tbaa !38
  switch i8 %148, label %157 [
    i8 10, label %159
    i8 0, label %149
  ]

149:                                              ; preds = %146
  %150 = icmp eq i64 %73, 0
  br i1 %150, label %151, label %153

151:                                              ; preds = %149
  %152 = call ptr @Perl__new_invlist(i64 noundef %147) #20
  store ptr %152, ptr %6, align 8, !tbaa !53
  br label %176

153:                                              ; preds = %149
  %154 = getelementptr inbounds i8, ptr %75, i64 -1
  %155 = load i8, ptr %154, align 1, !tbaa !38
  %156 = icmp eq i8 %155, 10
  br i1 %156, label %159, label %157

157:                                              ; preds = %146, %153
  %158 = add i64 %147, 1
  store i64 %158, ptr %3, align 8, !tbaa !50
  br label %159

159:                                              ; preds = %146, %157, %153
  %160 = phi i64 [ %147, %146 ], [ %158, %157 ], [ %147, %153 ]
  %161 = call ptr @Perl__new_invlist(i64 noundef %160) #20
  store ptr %161, ptr %6, align 8, !tbaa !53
  %162 = icmp sgt i64 %73, 0
  br i1 %162, label %163, label %176

163:                                              ; preds = %159
  %164 = icmp ugt i64 %53, 7
  br label %165

165:                                              ; preds = %163, %170
  %166 = phi ptr [ %74, %163 ], [ %167, %170 ]
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %10) #22
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %11) #22
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %12) #22
  %167 = call fastcc ptr @S_swash_scan_list_line(ptr noundef %166, ptr noundef nonnull %75, ptr noundef nonnull %10, ptr noundef nonnull %11, ptr noundef nonnull %12, i1 noundef zeroext %164, ptr noundef %40) #21
  %168 = icmp ugt ptr %167, %75
  br i1 %168, label %169, label %170

169:                                              ; preds = %165
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %12) #22
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %11) #22
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %10) #22
  br label %176

170:                                              ; preds = %165
  %171 = load ptr, ptr %6, align 8, !tbaa !53
  %172 = load i64, ptr %10, align 8, !tbaa !50
  %173 = load i64, ptr %11, align 8, !tbaa !50
  %174 = call ptr @Perl__add_range_to_invlist(ptr noundef %171, i64 noundef %172, i64 noundef %173) #20
  store ptr %174, ptr %6, align 8, !tbaa !53
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %12) #22
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %11) #22
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %10) #22
  %175 = icmp ult ptr %167, %75
  br i1 %175, label %165, label %176

176:                                              ; preds = %170, %151, %159, %169, %138
  %177 = icmp eq ptr %28, null
  br i1 %177, label %194, label %178

178:                                              ; preds = %176
  %179 = load ptr, ptr %28, align 8, !tbaa !53
  %180 = getelementptr inbounds %struct.sv, ptr %179, i64 0, i32 2
  %181 = load i32, ptr %180, align 4, !tbaa !94
  %182 = and i32 %181, -2145386240
  %183 = icmp eq i32 %182, -2147483392
  br i1 %183, label %184, label %189

184:                                              ; preds = %178
  %185 = load ptr, ptr %179, align 8, !tbaa !96
  %186 = getelementptr inbounds %struct.xpvuv, ptr %185, i64 0, i32 4
  %187 = load i64, ptr %186, align 8, !tbaa !38
  %188 = icmp eq i64 %187, 0
  br i1 %188, label %194, label %192

189:                                              ; preds = %178
  %190 = call i64 @Perl_sv_2uv_flags(ptr noundef nonnull %179, i32 noundef 2) #20
  %191 = icmp eq i64 %190, 0
  br i1 %191, label %194, label %192

192:                                              ; preds = %189, %184
  %193 = load ptr, ptr %6, align 8, !tbaa !53
  call void @Perl__invlist_invert(ptr noundef %193) #20
  br label %194

194:                                              ; preds = %192, %189, %184, %176
  %195 = load ptr, ptr %27, align 8, !tbaa !53
  %196 = getelementptr inbounds %struct.sv, ptr %195, i64 0, i32 2
  %197 = load i32, ptr %196, align 4, !tbaa !94
  %198 = and i32 %197, 2098176
  %199 = icmp eq i32 %198, 1024
  br i1 %199, label %200, label %206

200:                                              ; preds = %194
  %201 = load ptr, ptr %195, align 8, !tbaa !96
  %202 = getelementptr inbounds %struct.xpv, ptr %201, i64 0, i32 2
  %203 = load i64, ptr %202, align 8, !tbaa !97
  store i64 %203, ptr %5, align 8, !tbaa !50
  %204 = getelementptr inbounds %struct.sv, ptr %195, i64 0, i32 3
  %205 = load ptr, ptr %204, align 8, !tbaa !38
  br label %209

206:                                              ; preds = %194
  %207 = call ptr @Perl_sv_2pv_flags(ptr noundef nonnull %195, ptr noundef nonnull %5, i32 noundef 2) #20
  %208 = load i64, ptr %5, align 8, !tbaa !50
  br label %209

209:                                              ; preds = %206, %200
  %210 = phi i64 [ %203, %200 ], [ %208, %206 ]
  %211 = phi ptr [ %205, %200 ], [ %207, %206 ]
  %212 = getelementptr inbounds i8, ptr %211, i64 %210
  %213 = ptrtoint ptr %212 to i64
  %214 = icmp ne i64 %53, 1
  %215 = icmp sgt i64 %210, 0
  br i1 %215, label %216, label %272

216:                                              ; preds = %209, %228
  %217 = phi ptr [ %229, %228 ], [ %211, %209 ]
  %218 = getelementptr inbounds i8, ptr %217, i64 1
  %219 = load i8, ptr %217, align 1, !tbaa !38
  %220 = icmp eq i8 %219, 10
  br i1 %220, label %228, label %221, !llvm.loop !119

221:                                              ; preds = %216
  %222 = ptrtoint ptr %218 to i64
  %223 = sub i64 %213, %222
  %224 = call ptr @memchr(ptr noundef nonnull %218, i32 noundef 10, i64 noundef %223) #19
  switch i8 %219, label %225 [
    i8 45, label %231
    i8 43, label %231
    i8 38, label %231
    i8 33, label %231
  ]

225:                                              ; preds = %221
  %226 = icmp eq ptr %224, null
  %227 = getelementptr inbounds i8, ptr %224, i64 1
  br i1 %226, label %272, label %228

228:                                              ; preds = %216, %225, %271
  %229 = phi ptr [ %237, %271 ], [ %227, %225 ], [ %218, %216 ]
  %230 = icmp ult ptr %229, %212
  br i1 %230, label %216, label %272

231:                                              ; preds = %221, %221, %221, %221
  %232 = icmp eq ptr %224, null
  %233 = ptrtoint ptr %224 to i64
  %234 = sub i64 %233, %222
  %235 = getelementptr inbounds i8, ptr %224, i64 1
  %236 = select i1 %232, i64 %223, i64 %234
  %237 = select i1 %232, ptr %212, ptr %235
  %238 = trunc i64 %236 to i32
  %239 = call ptr @Perl_hv_common_key_len(ptr noundef %14, ptr noundef nonnull %218, i32 noundef %238, i32 noundef 32, ptr noundef null, i32 noundef 0) #20
  %240 = load ptr, ptr %239, align 8, !tbaa !53
  %241 = getelementptr inbounds %struct.sv, ptr %240, i64 0, i32 3
  %242 = load ptr, ptr %241, align 8, !tbaa !38
  %243 = call ptr @Perl_hv_common(ptr noundef %242, ptr noundef null, ptr noundef nonnull @.str.61, i64 noundef 4, i32 noundef 0, i32 noundef 32, ptr noundef null, i32 noundef 0) #20
  %244 = load ptr, ptr %243, align 8, !tbaa !53
  %245 = getelementptr inbounds %struct.sv, ptr %244, i64 0, i32 2
  %246 = load i32, ptr %245, align 4, !tbaa !94
  %247 = and i32 %246, -2145386240
  %248 = icmp eq i32 %247, -2147483392
  br i1 %248, label %249, label %253

249:                                              ; preds = %231
  %250 = load ptr, ptr %244, align 8, !tbaa !96
  %251 = getelementptr inbounds %struct.xpvuv, ptr %250, i64 0, i32 4
  %252 = load i64, ptr %251, align 8, !tbaa !38
  br label %255

253:                                              ; preds = %231
  %254 = call i64 @Perl_sv_2uv_flags(ptr noundef nonnull %244, i32 noundef 2) #20
  br label %255

255:                                              ; preds = %253, %249
  %256 = phi i64 [ %252, %249 ], [ %254, %253 ]
  %257 = icmp ne i64 %256, 1
  %258 = or i1 %214, %257
  br i1 %258, label %259, label %260

259:                                              ; preds = %255
  call void (ptr, ...) @Perl_croak(ptr noundef nonnull @.str.80, i64 noundef %53, i64 noundef %256) #20
  br label %260

260:                                              ; preds = %255, %259
  %261 = load ptr, ptr %239, align 8, !tbaa !53
  %262 = call ptr @Perl__swash_to_invlist(ptr noundef %261) #21
  switch i8 %219, label %271 [
    i8 43, label %263
    i8 33, label %265
    i8 45, label %267
    i8 38, label %269
  ]

263:                                              ; preds = %260
  %264 = load ptr, ptr %6, align 8, !tbaa !53
  call void @Perl__invlist_union_maybe_complement_2nd(ptr noundef %264, ptr noundef %262, i1 noundef zeroext false, ptr noundef nonnull %6) #20
  br label %271

265:                                              ; preds = %260
  %266 = load ptr, ptr %6, align 8, !tbaa !53
  call void @Perl__invlist_union_maybe_complement_2nd(ptr noundef %266, ptr noundef %262, i1 noundef zeroext true, ptr noundef nonnull %6) #20
  br label %271

267:                                              ; preds = %260
  %268 = load ptr, ptr %6, align 8, !tbaa !53
  call void @Perl__invlist_intersection_maybe_complement_2nd(ptr noundef %268, ptr noundef %262, i1 noundef zeroext true, ptr noundef nonnull %6) #20
  br label %271

269:                                              ; preds = %260
  %270 = load ptr, ptr %6, align 8, !tbaa !53
  call void @Perl__invlist_intersection_maybe_complement_2nd(ptr noundef %270, ptr noundef %262, i1 noundef zeroext false, ptr noundef nonnull %6) #20
  br label %271

271:                                              ; preds = %260, %269, %267, %265, %263
  call void @Perl_sv_free(ptr noundef %262) #20
  br label %228

272:                                              ; preds = %228, %225, %209
  %273 = load ptr, ptr %6, align 8, !tbaa !53
  %274 = getelementptr inbounds %struct.sv, ptr %273, i64 0, i32 2
  %275 = load i32, ptr %274, align 4, !tbaa !94
  %276 = or i32 %275, 134283264
  store i32 %276, ptr %274, align 4, !tbaa !94
  br label %277

277:                                              ; preds = %272, %19
  %278 = phi ptr [ %14, %19 ], [ %273, %272 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #22
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #22
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %4) #22
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #22
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #22
  ret ptr %278
}

; Function Attrs: optsize
declare void @Perl__invlist_union_maybe_complement_2nd(ptr noundef, ptr noundef, i1 noundef zeroext, ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc i64 @S__invlist_len(ptr nocapture noundef readonly %0) unnamed_addr #13 !prof !47 !PGOFuncName !120 {
  %2 = load ptr, ptr %0, align 8, !tbaa !96
  %3 = getelementptr inbounds %struct.xpv, ptr %2, i64 0, i32 2
  %4 = load i64, ptr %3, align 8, !tbaa !97
  %5 = icmp eq i64 %4, 0
  br i1 %5, label %12, label %6

6:                                                ; preds = %1
  %7 = lshr i64 %4, 3
  %8 = tail call fastcc ptr @S_get_invlist_offset_addr(ptr noundef nonnull %0) #21
  %9 = load i8, ptr %8, align 1, !tbaa !63, !range !65, !noundef !66
  %10 = zext nneg i8 %9 to i64
  %11 = sub nsw i64 %7, %10
  br label %12

12:                                               ; preds = %1, %6
  %13 = phi i64 [ %11, %6 ], [ 0, %1 ]
  ret i64 %13
}

; Function Attrs: optsize
declare ptr @Perl_newSV_type(i32 noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare ptr @Perl_newRV_noinc(ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare void @Perl_sv_free2(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc nonnull ptr @S_get_invlist_offset_addr(ptr nocapture noundef readonly %0) unnamed_addr #14 !prof !47 !PGOFuncName !121 {
  %2 = load ptr, ptr %0, align 8, !tbaa !96
  %3 = getelementptr inbounds %struct.xpvinvlist, ptr %2, i64 0, i32 6
  ret ptr %3
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc zeroext i1 @S__invlist_contains_cp(ptr noundef %0, i64 noundef %1) unnamed_addr #3 !prof !47 !PGOFuncName !122 {
  %3 = tail call i64 @Perl__invlist_search(ptr noundef %0, i64 noundef %1) #20
  %4 = and i64 %3, -9223372036854775807
  %5 = icmp eq i64 %4, 0
  ret i1 %5
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @S_swatch_get(ptr nocapture noundef readonly %0, i64 noundef %1, i64 noundef %2) unnamed_addr #3 !prof !47 !PGOFuncName !123 {
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #22
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #22
  %11 = getelementptr inbounds %struct.sv, ptr %0, i64 0, i32 3
  %12 = load ptr, ptr %11, align 8, !tbaa !38
  %13 = tail call ptr @Perl_hv_common(ptr noundef %12, ptr noundef null, ptr noundef nonnull @.str.57, i64 noundef 1, i32 noundef 0, i32 noundef 32, ptr noundef null, i32 noundef 0) #20
  %14 = add i64 %2, %1
  %15 = icmp eq ptr %13, null
  br i1 %15, label %16, label %63

16:                                               ; preds = %3
  %17 = tail call ptr @Perl_hv_common(ptr noundef %12, ptr noundef null, ptr noundef nonnull @.str.61, i64 noundef 4, i32 noundef 0, i32 noundef 32, ptr noundef null, i32 noundef 0) #20
  %18 = tail call ptr @Perl_hv_common(ptr noundef %12, ptr noundef null, ptr noundef nonnull @.str.62, i64 noundef 4, i32 noundef 0, i32 noundef 32, ptr noundef null, i32 noundef 0) #20
  %19 = tail call ptr @Perl_hv_common(ptr noundef %12, ptr noundef null, ptr noundef nonnull @.str.63, i64 noundef 4, i32 noundef 0, i32 noundef 32, ptr noundef null, i32 noundef 0) #20
  %20 = tail call ptr @Perl_hv_common(ptr noundef %12, ptr noundef null, ptr noundef nonnull @.str.64, i64 noundef 6, i32 noundef 0, i32 noundef 32, ptr noundef null, i32 noundef 0) #20
  %21 = tail call ptr @Perl_hv_common(ptr noundef %12, ptr noundef null, ptr noundef nonnull @.str.65, i64 noundef 4, i32 noundef 0, i32 noundef 32, ptr noundef null, i32 noundef 0) #20
  %22 = tail call ptr @Perl_hv_common(ptr noundef %12, ptr noundef null, ptr noundef nonnull @.str.66, i64 noundef 9, i32 noundef 0, i32 noundef 32, ptr noundef null, i32 noundef 0) #20
  %23 = load ptr, ptr %17, align 8, !tbaa !53
  %24 = getelementptr inbounds %struct.sv, ptr %23, i64 0, i32 2
  %25 = load i32, ptr %24, align 4, !tbaa !94
  %26 = and i32 %25, -2145386240
  %27 = icmp eq i32 %26, -2147483392
  br i1 %27, label %28, label %32

28:                                               ; preds = %16
  %29 = load ptr, ptr %23, align 8, !tbaa !96
  %30 = getelementptr inbounds %struct.xpvuv, ptr %29, i64 0, i32 4
  %31 = load i64, ptr %30, align 8, !tbaa !38
  br label %34

32:                                               ; preds = %16
  %33 = tail call i64 @Perl_sv_2uv_flags(ptr noundef nonnull %23, i32 noundef 2) #20
  br label %34

34:                                               ; preds = %32, %28
  %35 = phi i64 [ %31, %28 ], [ %33, %32 ]
  %36 = load ptr, ptr %18, align 8, !tbaa !53
  %37 = getelementptr inbounds %struct.sv, ptr %36, i64 0, i32 2
  %38 = load i32, ptr %37, align 4, !tbaa !94
  %39 = and i32 %38, -2145386240
  %40 = icmp eq i32 %39, -2147483392
  br i1 %40, label %41, label %45

41:                                               ; preds = %34
  %42 = load ptr, ptr %36, align 8, !tbaa !96
  %43 = getelementptr inbounds %struct.xpvuv, ptr %42, i64 0, i32 4
  %44 = load i64, ptr %43, align 8, !tbaa !38
  br label %47

45:                                               ; preds = %34
  %46 = tail call i64 @Perl_sv_2uv_flags(ptr noundef nonnull %36, i32 noundef 2) #20
  br label %47

47:                                               ; preds = %45, %41
  %48 = phi i64 [ %44, %41 ], [ %46, %45 ]
  %49 = load ptr, ptr %19, align 8, !tbaa !53
  %50 = getelementptr inbounds %struct.sv, ptr %49, i64 0, i32 2
  %51 = load i32, ptr %50, align 4, !tbaa !94
  %52 = and i32 %51, 2098176
  %53 = icmp eq i32 %52, 1024
  br i1 %53, label %54, label %57

54:                                               ; preds = %47
  %55 = getelementptr inbounds %struct.sv, ptr %49, i64 0, i32 3
  %56 = load ptr, ptr %55, align 8, !tbaa !38
  br label %59

57:                                               ; preds = %47
  %58 = tail call ptr @Perl_sv_2pv_flags(ptr noundef nonnull %49, ptr noundef null, i32 noundef 2) #20
  br label %59

59:                                               ; preds = %54, %57
  %60 = phi ptr [ %56, %54 ], [ %58, %57 ]
  %61 = lshr i64 %35, 3
  switch i64 %35, label %62 [
    i64 32, label %63
    i64 16, label %63
    i64 8, label %63
    i64 1, label %63
  ]

62:                                               ; preds = %59
  tail call void (ptr, ...) @Perl_croak(ptr noundef nonnull @.str.67, i64 noundef %35) #20
  br label %63

63:                                               ; preds = %3, %59, %59, %59, %59, %62
  %64 = phi i64 [ %61, %59 ], [ %61, %59 ], [ %61, %59 ], [ %61, %59 ], [ %61, %62 ], [ 0, %3 ]
  %65 = phi ptr [ %21, %59 ], [ %21, %59 ], [ %21, %59 ], [ %21, %59 ], [ %21, %62 ], [ null, %3 ]
  %66 = phi ptr [ %20, %59 ], [ %20, %59 ], [ %20, %59 ], [ %20, %59 ], [ %20, %62 ], [ null, %3 ]
  %67 = phi ptr [ %22, %59 ], [ %22, %59 ], [ %22, %59 ], [ %22, %59 ], [ %22, %62 ], [ null, %3 ]
  %68 = phi ptr [ %60, %59 ], [ %60, %59 ], [ %60, %59 ], [ %60, %59 ], [ %60, %62 ], [ null, %3 ]
  %69 = phi i64 [ %35, %59 ], [ %35, %59 ], [ %35, %59 ], [ %35, %59 ], [ %35, %62 ], [ 1, %3 ]
  %70 = phi i64 [ %48, %59 ], [ %48, %59 ], [ %48, %59 ], [ %48, %59 ], [ %48, %62 ], [ 0, %3 ]
  %71 = icmp ult i64 %14, %1
  %72 = xor i64 %1, -1
  %73 = select i1 %71, i64 -1, i64 %14
  %74 = select i1 %71, i64 %72, i64 %2
  %75 = icmp ugt i64 %69, 7
  %76 = mul i64 %64, %74
  %77 = add i64 %74, 7
  %78 = lshr i64 %77, 3
  %79 = select i1 %75, i64 %76, i64 %78
  %80 = tail call ptr @Perl_newSV(i64 noundef %79) #20
  %81 = getelementptr inbounds %struct.sv, ptr %80, i64 0, i32 2
  %82 = load i32, ptr %81, align 4, !tbaa !94
  %83 = or i32 %82, 17408
  store i32 %83, ptr %81, align 4, !tbaa !94
  %84 = getelementptr inbounds %struct.sv, ptr %80, i64 0, i32 3
  %85 = load ptr, ptr %84, align 8, !tbaa !38
  %86 = icmp ne i64 %70, 0
  %87 = select i1 %75, i1 %86, i1 false
  br i1 %87, label %88, label %118

88:                                               ; preds = %63
  %89 = getelementptr inbounds i8, ptr %85, i64 %76
  %90 = icmp sgt i64 %76, 0
  br i1 %90, label %91, label %116

91:                                               ; preds = %88
  %92 = lshr i64 %70, 24
  %93 = trunc i64 %92 to i8
  %94 = lshr i64 %70, 16
  %95 = trunc i64 %94 to i8
  %96 = lshr i64 %70, 8
  %97 = trunc i64 %96 to i8
  %98 = trunc i64 %70 to i8
  br label %99

99:                                               ; preds = %91, %113
  %100 = phi ptr [ %85, %91 ], [ %114, %113 ]
  switch i64 %69, label %113 [
    i64 8, label %109
    i64 16, label %104
    i64 32, label %101
  ]

101:                                              ; preds = %99
  %102 = getelementptr inbounds i8, ptr %100, i64 1
  store i8 %93, ptr %100, align 1, !tbaa !38
  %103 = getelementptr inbounds i8, ptr %100, i64 2
  store i8 %95, ptr %102, align 1, !tbaa !38
  br label %104

104:                                              ; preds = %99, %101
  %105 = phi i64 [ 3, %101 ], [ 1, %99 ]
  %106 = phi ptr [ %103, %101 ], [ %100, %99 ]
  %107 = phi i64 [ 4, %101 ], [ 2, %99 ]
  %108 = getelementptr inbounds i8, ptr %100, i64 %105
  store i8 %97, ptr %106, align 1, !tbaa !38
  br label %109

109:                                              ; preds = %104, %99
  %110 = phi i64 [ 1, %99 ], [ %107, %104 ]
  %111 = phi ptr [ %100, %99 ], [ %108, %104 ]
  %112 = getelementptr inbounds i8, ptr %100, i64 %110
  store i8 %98, ptr %111, align 1, !tbaa !38
  br label %113

113:                                              ; preds = %109, %99
  %114 = phi ptr [ %100, %99 ], [ %112, %109 ]
  %115 = icmp ult ptr %114, %89
  br i1 %115, label %99, label %116, !llvm.loop !124

116:                                              ; preds = %113, %88
  %117 = phi ptr [ %85, %88 ], [ %114, %113 ]
  store i8 0, ptr %117, align 1, !tbaa !38
  br label %120

118:                                              ; preds = %63
  %119 = add i64 %79, 1
  tail call void @llvm.memset.p0.i64(ptr align 1 %85, i8 0, i64 %119, i1 false)
  br label %120

120:                                              ; preds = %116, %118
  %121 = load ptr, ptr %80, align 8, !tbaa !96
  %122 = getelementptr inbounds %struct.xpv, ptr %121, i64 0, i32 2
  store i64 %79, ptr %122, align 8, !tbaa !97
  %123 = load ptr, ptr %84, align 8, !tbaa !38
  br i1 %15, label %126, label %124

124:                                              ; preds = %120
  %125 = load ptr, ptr %13, align 8, !tbaa !53
  tail call void @Perl__invlist_populate_swatch(ptr noundef %125, i64 noundef %1, i64 noundef %73, ptr noundef %123) #20
  br label %510

126:                                              ; preds = %120
  %127 = load ptr, ptr %65, align 8, !tbaa !53
  %128 = getelementptr inbounds %struct.sv, ptr %127, i64 0, i32 2
  %129 = load i32, ptr %128, align 4, !tbaa !94
  %130 = and i32 %129, 2098176
  %131 = icmp eq i32 %130, 1024
  br i1 %131, label %132, label %138

132:                                              ; preds = %126
  %133 = load ptr, ptr %127, align 8, !tbaa !96
  %134 = getelementptr inbounds %struct.xpv, ptr %133, i64 0, i32 2
  %135 = load i64, ptr %134, align 8, !tbaa !97
  store i64 %135, ptr %4, align 8, !tbaa !50
  %136 = getelementptr inbounds %struct.sv, ptr %127, i64 0, i32 3
  %137 = load ptr, ptr %136, align 8, !tbaa !38
  br label %141

138:                                              ; preds = %126
  %139 = call ptr @Perl_sv_2pv_flags(ptr noundef nonnull %127, ptr noundef nonnull %4, i32 noundef 2) #20
  %140 = load i64, ptr %4, align 8, !tbaa !50
  br label %141

141:                                              ; preds = %138, %132
  %142 = phi i64 [ %135, %132 ], [ %140, %138 ]
  %143 = phi ptr [ %137, %132 ], [ %139, %138 ]
  %144 = getelementptr inbounds i8, ptr %143, i64 %142
  %145 = icmp sgt i64 %142, 0
  br i1 %145, label %146, label %226

146:                                              ; preds = %141
  %147 = add i64 %70, -1
  br label %148

148:                                              ; preds = %146, %224
  %149 = phi ptr [ %143, %146 ], [ %150, %224 ]
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #22
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #22
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %8) #22
  %150 = call fastcc ptr @S_swash_scan_list_line(ptr noundef %149, ptr noundef nonnull %144, ptr noundef nonnull %6, ptr noundef nonnull %7, ptr noundef nonnull %8, i1 noundef zeroext %75, ptr noundef %68) #21
  %151 = icmp ugt ptr %150, %144
  br i1 %151, label %152, label %153

152:                                              ; preds = %148
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %8) #22
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #22
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #22
  br label %226

153:                                              ; preds = %148
  %154 = load i64, ptr %7, align 8, !tbaa !50
  %155 = icmp ult i64 %154, %1
  br i1 %155, label %224, label %156, !llvm.loop !125

156:                                              ; preds = %153
  %157 = icmp ult i64 %154, %73
  %158 = and i64 %154, %73
  %159 = icmp ne i64 %158, -1
  %160 = sext i1 %159 to i64
  %161 = add i64 %73, %160
  %162 = select i1 %157, i64 %154, i64 %161
  %163 = load i64, ptr %6, align 8, !tbaa !50
  br i1 %75, label %164, label %209

164:                                              ; preds = %156
  %165 = icmp ult i64 %163, %1
  %166 = load i64, ptr %8, align 8
  %167 = freeze i64 %166
  br i1 %165, label %168, label %173

168:                                              ; preds = %164
  %169 = icmp ult i64 %147, %167
  br i1 %169, label %173, label %170

170:                                              ; preds = %168
  %171 = sub i64 %1, %163
  %172 = add i64 %171, %167
  store i64 %172, ptr %8, align 8, !tbaa !50
  br label %173

173:                                              ; preds = %164, %170, %168
  %174 = phi i64 [ %167, %168 ], [ %172, %170 ], [ %167, %164 ]
  %175 = phi i64 [ %1, %168 ], [ %1, %170 ], [ %163, %164 ]
  %176 = icmp ugt i64 %175, %162
  br i1 %176, label %224, label %177

177:                                              ; preds = %173, %203
  %178 = phi i64 [ %207, %203 ], [ %175, %173 ]
  %179 = phi i64 [ %206, %203 ], [ %174, %173 ]
  %180 = freeze i64 %179
  %181 = sub i64 %178, %1
  %182 = mul i64 %181, %64
  switch i64 %69, label %203 [
    i64 8, label %199
    i64 16, label %192
    i64 32, label %183
  ]

183:                                              ; preds = %177
  %184 = lshr i64 %180, 24
  %185 = trunc i64 %184 to i8
  %186 = getelementptr inbounds i8, ptr %123, i64 %182
  store i8 %185, ptr %186, align 1, !tbaa !38
  %187 = lshr i64 %180, 16
  %188 = trunc i64 %187 to i8
  %189 = or disjoint i64 %182, 1
  %190 = getelementptr inbounds i8, ptr %123, i64 %189
  store i8 %188, ptr %190, align 1, !tbaa !38
  %191 = or disjoint i64 %182, 2
  br label %192

192:                                              ; preds = %177, %183
  %193 = phi i64 [ %191, %183 ], [ %182, %177 ]
  %194 = phi i64 [ 3, %183 ], [ 1, %177 ]
  %195 = lshr i64 %180, 8
  %196 = trunc i64 %195 to i8
  %197 = getelementptr inbounds i8, ptr %123, i64 %193
  store i8 %196, ptr %197, align 1, !tbaa !38
  %198 = or disjoint i64 %182, %194
  br label %199

199:                                              ; preds = %192, %177
  %200 = phi i64 [ %182, %177 ], [ %198, %192 ]
  %201 = trunc i64 %180 to i8
  %202 = getelementptr inbounds i8, ptr %123, i64 %200
  store i8 %201, ptr %202, align 1, !tbaa !38
  br label %203

203:                                              ; preds = %199, %177
  %204 = icmp uge i64 %147, %180
  %205 = zext i1 %204 to i64
  %206 = add i64 %180, %205
  %207 = add i64 %178, 1
  %208 = icmp ugt i64 %207, %162
  br i1 %208, label %224, label %177, !llvm.loop !126

209:                                              ; preds = %156
  %210 = call i64 @llvm.umax.i64(i64 %163, i64 %1)
  %211 = icmp ugt i64 %210, %162
  br i1 %211, label %224, label %212

212:                                              ; preds = %209, %212
  %213 = phi i64 [ %222, %212 ], [ %210, %209 ]
  %214 = sub i64 %213, %1
  %215 = trunc i64 %214 to i8
  %216 = and i8 %215, 7
  %217 = shl nuw i8 1, %216
  %218 = lshr i64 %214, 3
  %219 = getelementptr inbounds i8, ptr %123, i64 %218
  %220 = load i8, ptr %219, align 1, !tbaa !38
  %221 = or i8 %220, %217
  store i8 %221, ptr %219, align 1, !tbaa !38
  %222 = add i64 %213, 1
  %223 = icmp ugt i64 %222, %162
  br i1 %223, label %224, label %212, !llvm.loop !127

224:                                              ; preds = %212, %203, %173, %209, %153
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %8) #22
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #22
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #22
  %225 = icmp ult ptr %150, %144
  br i1 %225, label %148, label %226

226:                                              ; preds = %224, %141, %152
  %227 = icmp eq ptr %67, null
  br i1 %227, label %255, label %228

228:                                              ; preds = %226
  %229 = load ptr, ptr %67, align 8, !tbaa !53
  %230 = getelementptr inbounds %struct.sv, ptr %229, i64 0, i32 2
  %231 = load i32, ptr %230, align 4, !tbaa !94
  %232 = and i32 %231, -2145386240
  %233 = icmp eq i32 %232, -2147483392
  br i1 %233, label %234, label %241

234:                                              ; preds = %228
  %235 = load ptr, ptr %229, align 8, !tbaa !96
  %236 = getelementptr inbounds %struct.xpvuv, ptr %235, i64 0, i32 4
  %237 = load i64, ptr %236, align 8, !tbaa !38
  %238 = icmp ne i64 %237, 0
  %239 = icmp ult i64 %1, 1114112
  %240 = and i1 %239, %238
  br i1 %240, label %246, label %255

241:                                              ; preds = %228
  %242 = call i64 @Perl_sv_2uv_flags(ptr noundef nonnull %229, i32 noundef 2) #20
  %243 = icmp ne i64 %242, 0
  %244 = icmp ult i64 %1, 1114112
  %245 = and i1 %244, %243
  br i1 %245, label %246, label %255

246:                                              ; preds = %234, %241
  %247 = getelementptr inbounds i8, ptr %123, i64 %79
  %248 = icmp sgt i64 %79, 0
  br i1 %248, label %249, label %255

249:                                              ; preds = %246, %249
  %250 = phi ptr [ %253, %249 ], [ %123, %246 ]
  %251 = load i8, ptr %250, align 1, !tbaa !38
  %252 = xor i8 %251, -1
  store i8 %252, ptr %250, align 1, !tbaa !38
  %253 = getelementptr inbounds i8, ptr %250, i64 1
  %254 = icmp ult ptr %253, %247
  br i1 %254, label %249, label %255, !llvm.loop !128

255:                                              ; preds = %249, %246, %241, %234, %226
  %256 = load ptr, ptr %66, align 8, !tbaa !53
  %257 = getelementptr inbounds %struct.sv, ptr %256, i64 0, i32 2
  %258 = load i32, ptr %257, align 4, !tbaa !94
  %259 = and i32 %258, 2098176
  %260 = icmp eq i32 %259, 1024
  br i1 %260, label %261, label %267

261:                                              ; preds = %255
  %262 = load ptr, ptr %256, align 8, !tbaa !96
  %263 = getelementptr inbounds %struct.xpv, ptr %262, i64 0, i32 2
  %264 = load i64, ptr %263, align 8, !tbaa !97
  store i64 %264, ptr %5, align 8, !tbaa !50
  %265 = getelementptr inbounds %struct.sv, ptr %256, i64 0, i32 3
  %266 = load ptr, ptr %265, align 8, !tbaa !38
  br label %270

267:                                              ; preds = %255
  %268 = call ptr @Perl_sv_2pv_flags(ptr noundef nonnull %256, ptr noundef nonnull %5, i32 noundef 2) #20
  %269 = load i64, ptr %5, align 8, !tbaa !50
  br label %270

270:                                              ; preds = %267, %261
  %271 = phi i64 [ %264, %261 ], [ %269, %267 ]
  %272 = phi ptr [ %266, %261 ], [ %268, %267 ]
  %273 = getelementptr inbounds i8, ptr %272, i64 %271
  %274 = ptrtoint ptr %273 to i64
  %275 = icmp eq i64 %69, 1
  %276 = icmp sgt i64 %271, 0
  br i1 %276, label %277, label %510

277:                                              ; preds = %270, %291
  %278 = phi ptr [ %292, %291 ], [ %272, %270 ]
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %9) #22
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %10) #22
  %279 = getelementptr inbounds i8, ptr %278, i64 1
  %280 = load i8, ptr %278, align 1, !tbaa !38
  %281 = icmp eq i8 %280, 10
  br i1 %281, label %509, label %282, !llvm.loop !129

282:                                              ; preds = %277
  %283 = ptrtoint ptr %279 to i64
  %284 = sub i64 %274, %283
  %285 = call ptr @memchr(ptr noundef nonnull %279, i32 noundef 10, i64 noundef %284) #19
  %286 = icmp ne i8 %280, 33
  %287 = icmp ne i8 %280, 38
  switch i8 %280, label %288 [
    i8 45, label %294
    i8 43, label %294
    i8 38, label %294
    i8 33, label %294
  ]

288:                                              ; preds = %282
  %289 = icmp eq ptr %285, null
  %290 = getelementptr inbounds i8, ptr %285, i64 1
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %10) #22
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %9) #22
  br i1 %289, label %510, label %291

291:                                              ; preds = %288, %509, %508
  %292 = phi ptr [ %279, %509 ], [ %300, %508 ], [ %290, %288 ]
  %293 = icmp ult ptr %292, %273
  br i1 %293, label %277, label %510

294:                                              ; preds = %282, %282, %282, %282
  %295 = icmp eq ptr %285, null
  %296 = ptrtoint ptr %285 to i64
  %297 = sub i64 %296, %283
  %298 = getelementptr inbounds i8, ptr %285, i64 1
  %299 = select i1 %295, i64 %284, i64 %297
  %300 = select i1 %295, ptr %273, ptr %298
  %301 = trunc i64 %299 to i32
  %302 = call ptr @Perl_hv_common_key_len(ptr noundef %12, ptr noundef nonnull %279, i32 noundef %301, i32 noundef 32, ptr noundef null, i32 noundef 0) #20
  %303 = load ptr, ptr %302, align 8, !tbaa !53
  %304 = getelementptr inbounds %struct.sv, ptr %303, i64 0, i32 3
  %305 = load ptr, ptr %304, align 8, !tbaa !38
  %306 = call ptr @Perl_hv_common(ptr noundef %305, ptr noundef null, ptr noundef nonnull @.str.61, i64 noundef 4, i32 noundef 0, i32 noundef 32, ptr noundef null, i32 noundef 0) #20
  %307 = load ptr, ptr %306, align 8, !tbaa !53
  %308 = getelementptr inbounds %struct.sv, ptr %307, i64 0, i32 2
  %309 = load i32, ptr %308, align 4, !tbaa !94
  %310 = and i32 %309, -2145386240
  %311 = icmp eq i32 %310, -2147483392
  br i1 %311, label %312, label %316

312:                                              ; preds = %294
  %313 = load ptr, ptr %307, align 8, !tbaa !96
  %314 = getelementptr inbounds %struct.xpvuv, ptr %313, i64 0, i32 4
  %315 = load i64, ptr %314, align 8, !tbaa !38
  br label %318

316:                                              ; preds = %294
  %317 = call i64 @Perl_sv_2uv_flags(ptr noundef nonnull %307, i32 noundef 2) #20
  br label %318

318:                                              ; preds = %316, %312
  %319 = phi i64 [ %315, %312 ], [ %317, %316 ]
  %320 = icmp ult i64 %69, %319
  br i1 %320, label %321, label %322

321:                                              ; preds = %318
  call void (ptr, ...) @Perl_croak(ptr noundef nonnull @.str.68, i64 noundef %69, i64 noundef %319) #20
  br label %322

322:                                              ; preds = %321, %318
  %323 = load ptr, ptr %302, align 8, !tbaa !53
  %324 = call fastcc ptr @S_swatch_get(ptr noundef %323, i64 noundef %1, i64 noundef %74) #21
  %325 = getelementptr inbounds %struct.sv, ptr %324, i64 0, i32 2
  %326 = load i32, ptr %325, align 4, !tbaa !94
  %327 = and i32 %326, 2098176
  %328 = icmp eq i32 %327, 1024
  br i1 %328, label %329, label %335

329:                                              ; preds = %322
  %330 = load ptr, ptr %324, align 8, !tbaa !96
  %331 = getelementptr inbounds %struct.xpv, ptr %330, i64 0, i32 2
  %332 = load i64, ptr %331, align 8, !tbaa !97
  store i64 %332, ptr %10, align 8, !tbaa !50
  %333 = getelementptr inbounds %struct.sv, ptr %324, i64 0, i32 3
  %334 = load ptr, ptr %333, align 8, !tbaa !38
  br label %338

335:                                              ; preds = %322
  %336 = call ptr @Perl_sv_2pv_flags(ptr noundef nonnull %324, ptr noundef nonnull %10, i32 noundef 2) #20
  %337 = load i64, ptr %10, align 8, !tbaa !50
  br label %338

338:                                              ; preds = %335, %329
  %339 = phi i64 [ %337, %335 ], [ %332, %329 ]
  %340 = phi ptr [ %336, %335 ], [ %334, %329 ]
  %341 = icmp eq i64 %339, 0
  br i1 %341, label %342, label %343

342:                                              ; preds = %338
  call void (ptr, ...) @Perl_croak(ptr noundef nonnull @.str.69) #20
  br label %343

343:                                              ; preds = %342, %338
  %344 = load i32, ptr %81, align 4, !tbaa !94
  %345 = and i32 %344, 2098176
  %346 = icmp eq i32 %345, 1024
  br i1 %346, label %347, label %352

347:                                              ; preds = %343
  %348 = load ptr, ptr %80, align 8, !tbaa !96
  %349 = getelementptr inbounds %struct.xpv, ptr %348, i64 0, i32 2
  %350 = load i64, ptr %349, align 8, !tbaa !97
  store i64 %350, ptr %9, align 8, !tbaa !50
  %351 = load ptr, ptr %84, align 8, !tbaa !38
  br label %354

352:                                              ; preds = %343
  %353 = call ptr @Perl_sv_2pv_flags(ptr noundef nonnull %80, ptr noundef nonnull %9, i32 noundef 2) #20
  br label %354

354:                                              ; preds = %352, %347
  %355 = phi ptr [ %351, %347 ], [ %353, %352 ]
  %356 = icmp eq i64 %319, 1
  %357 = and i1 %275, %356
  %358 = load i64, ptr %9, align 8, !tbaa !50
  br i1 %357, label %359, label %426

359:                                              ; preds = %354
  %360 = load i64, ptr %10, align 8, !tbaa !50
  %361 = icmp eq i64 %358, %360
  br i1 %361, label %363, label %362

362:                                              ; preds = %359
  call void (ptr, ...) @Perl_croak(ptr noundef nonnull @.str.70, i64 noundef %358, i64 noundef %360) #20
  br label %363

363:                                              ; preds = %362, %359
  switch i8 %280, label %508 [
    i8 43, label %376
    i8 33, label %372
    i8 45, label %368
    i8 38, label %364
  ]

364:                                              ; preds = %363
  %365 = load i64, ptr %9, align 8, !tbaa !50
  %366 = add i64 %365, -1
  store i64 %366, ptr %9, align 8, !tbaa !50
  %367 = icmp eq i64 %365, 0
  br i1 %367, label %508, label %415

368:                                              ; preds = %363
  %369 = load i64, ptr %9, align 8, !tbaa !50
  %370 = add i64 %369, -1
  store i64 %370, ptr %9, align 8, !tbaa !50
  %371 = icmp eq i64 %369, 0
  br i1 %371, label %508, label %403

372:                                              ; preds = %363
  %373 = load i64, ptr %9, align 8, !tbaa !50
  %374 = add i64 %373, -1
  store i64 %374, ptr %9, align 8, !tbaa !50
  %375 = icmp eq i64 %373, 0
  br i1 %375, label %508, label %391

376:                                              ; preds = %363
  %377 = load i64, ptr %9, align 8, !tbaa !50
  %378 = add i64 %377, -1
  store i64 %378, ptr %9, align 8, !tbaa !50
  %379 = icmp eq i64 %377, 0
  br i1 %379, label %508, label %380

380:                                              ; preds = %376, %380
  %381 = phi ptr [ %383, %380 ], [ %340, %376 ]
  %382 = phi ptr [ %385, %380 ], [ %355, %376 ]
  %383 = getelementptr inbounds i8, ptr %381, i64 1
  %384 = load i8, ptr %381, align 1, !tbaa !38
  %385 = getelementptr inbounds i8, ptr %382, i64 1
  %386 = load i8, ptr %382, align 1, !tbaa !38
  %387 = or i8 %386, %384
  store i8 %387, ptr %382, align 1, !tbaa !38
  %388 = load i64, ptr %9, align 8, !tbaa !50
  %389 = add i64 %388, -1
  store i64 %389, ptr %9, align 8, !tbaa !50
  %390 = icmp eq i64 %388, 0
  br i1 %390, label %508, label %380, !llvm.loop !130

391:                                              ; preds = %372, %391
  %392 = phi ptr [ %394, %391 ], [ %340, %372 ]
  %393 = phi ptr [ %397, %391 ], [ %355, %372 ]
  %394 = getelementptr inbounds i8, ptr %392, i64 1
  %395 = load i8, ptr %392, align 1, !tbaa !38
  %396 = xor i8 %395, -1
  %397 = getelementptr inbounds i8, ptr %393, i64 1
  %398 = load i8, ptr %393, align 1, !tbaa !38
  %399 = or i8 %398, %396
  store i8 %399, ptr %393, align 1, !tbaa !38
  %400 = load i64, ptr %9, align 8, !tbaa !50
  %401 = add i64 %400, -1
  store i64 %401, ptr %9, align 8, !tbaa !50
  %402 = icmp eq i64 %400, 0
  br i1 %402, label %508, label %391, !llvm.loop !131

403:                                              ; preds = %368, %403
  %404 = phi ptr [ %406, %403 ], [ %340, %368 ]
  %405 = phi ptr [ %409, %403 ], [ %355, %368 ]
  %406 = getelementptr inbounds i8, ptr %404, i64 1
  %407 = load i8, ptr %404, align 1, !tbaa !38
  %408 = xor i8 %407, -1
  %409 = getelementptr inbounds i8, ptr %405, i64 1
  %410 = load i8, ptr %405, align 1, !tbaa !38
  %411 = and i8 %410, %408
  store i8 %411, ptr %405, align 1, !tbaa !38
  %412 = load i64, ptr %9, align 8, !tbaa !50
  %413 = add i64 %412, -1
  store i64 %413, ptr %9, align 8, !tbaa !50
  %414 = icmp eq i64 %412, 0
  br i1 %414, label %508, label %403, !llvm.loop !132

415:                                              ; preds = %364, %415
  %416 = phi ptr [ %418, %415 ], [ %340, %364 ]
  %417 = phi ptr [ %420, %415 ], [ %355, %364 ]
  %418 = getelementptr inbounds i8, ptr %416, i64 1
  %419 = load i8, ptr %416, align 1, !tbaa !38
  %420 = getelementptr inbounds i8, ptr %417, i64 1
  %421 = load i8, ptr %417, align 1, !tbaa !38
  %422 = and i8 %421, %419
  store i8 %422, ptr %417, align 1, !tbaa !38
  %423 = load i64, ptr %9, align 8, !tbaa !50
  %424 = add i64 %423, -1
  store i64 %424, ptr %9, align 8, !tbaa !50
  %425 = icmp eq i64 %423, 0
  br i1 %425, label %508, label %415, !llvm.loop !133

426:                                              ; preds = %354
  %427 = getelementptr inbounds i8, ptr %355, i64 %358
  %428 = icmp sgt i64 %358, 0
  br i1 %428, label %429, label %508

429:                                              ; preds = %426
  %430 = lshr i64 %319, 3
  %431 = add nsw i64 %430, -1
  %432 = icmp eq i64 %431, 0
  %433 = icmp eq i8 %280, 43
  %434 = icmp eq i8 %280, 45
  br label %435

435:                                              ; preds = %429, %505
  %436 = phi i64 [ 0, %429 ], [ %469, %505 ]
  %437 = phi ptr [ %340, %429 ], [ %468, %505 ]
  %438 = phi ptr [ %355, %429 ], [ %506, %505 ]
  br i1 %356, label %439, label %450

439:                                              ; preds = %435
  %440 = lshr i64 %436, 3
  %441 = getelementptr inbounds i8, ptr %437, i64 %440
  %442 = load i8, ptr %441, align 1, !tbaa !38
  %443 = zext i8 %442 to i32
  %444 = trunc i64 %436 to i32
  %445 = and i32 %444, 7
  %446 = lshr i32 %443, %445
  %447 = and i32 %446, 1
  %448 = zext nneg i32 %447 to i64
  %449 = add i64 %436, 1
  br label %467

450:                                              ; preds = %435
  %451 = load i8, ptr %437, align 1, !tbaa !38
  %452 = zext i8 %451 to i64
  %453 = getelementptr inbounds i8, ptr %437, i64 1
  br i1 %432, label %467, label %454

454:                                              ; preds = %450, %454
  %455 = phi i64 [ %463, %454 ], [ %431, %450 ]
  %456 = phi ptr [ %462, %454 ], [ %453, %450 ]
  %457 = phi i64 [ %461, %454 ], [ %452, %450 ]
  %458 = shl i64 %457, 8
  %459 = load i8, ptr %456, align 1, !tbaa !38
  %460 = zext i8 %459 to i64
  %461 = or disjoint i64 %458, %460
  %462 = getelementptr inbounds i8, ptr %456, i64 1
  %463 = add i64 %455, -1
  %464 = icmp eq i64 %463, 0
  br i1 %464, label %465, label %454, !llvm.loop !134

465:                                              ; preds = %454
  %466 = getelementptr i8, ptr %437, i64 %430
  br label %467

467:                                              ; preds = %465, %450, %439
  %468 = phi ptr [ %437, %439 ], [ %453, %450 ], [ %466, %465 ]
  %469 = phi i64 [ %449, %439 ], [ %436, %450 ], [ %436, %465 ]
  %470 = phi i64 [ %448, %439 ], [ %452, %450 ], [ %461, %465 ]
  %471 = icmp ne i64 %470, 0
  %472 = select i1 %433, i1 %471, i1 false
  br i1 %472, label %482, label %473

473:                                              ; preds = %467
  %474 = select i1 %286, i1 true, i1 %471
  br i1 %474, label %475, label %482

475:                                              ; preds = %473
  %476 = select i1 %434, i1 %471, i1 false
  %477 = xor i1 %476, true
  %478 = select i1 %287, i1 true, i1 %471
  %479 = select i1 %477, i1 %478, i1 false
  br i1 %479, label %480, label %482

480:                                              ; preds = %475
  %481 = getelementptr inbounds i8, ptr %438, i64 %64
  br label %505, !llvm.loop !135

482:                                              ; preds = %475, %473, %467
  %483 = phi i64 [ %470, %467 ], [ 1, %473 ], [ 0, %475 ]
  switch i64 %69, label %505 [
    i64 8, label %484
    i64 16, label %487
    i64 32, label %493
  ]

484:                                              ; preds = %482
  %485 = trunc i64 %483 to i8
  %486 = getelementptr inbounds i8, ptr %438, i64 1
  store i8 %485, ptr %438, align 1, !tbaa !38
  br label %505

487:                                              ; preds = %482
  %488 = lshr i64 %483, 8
  %489 = trunc i64 %488 to i8
  %490 = getelementptr inbounds i8, ptr %438, i64 1
  store i8 %489, ptr %438, align 1, !tbaa !38
  %491 = trunc i64 %483 to i8
  %492 = getelementptr inbounds i8, ptr %438, i64 2
  store i8 %491, ptr %490, align 1, !tbaa !38
  br label %505

493:                                              ; preds = %482
  %494 = lshr i64 %483, 24
  %495 = trunc i64 %494 to i8
  %496 = getelementptr inbounds i8, ptr %438, i64 1
  store i8 %495, ptr %438, align 1, !tbaa !38
  %497 = lshr i64 %483, 16
  %498 = trunc i64 %497 to i8
  %499 = getelementptr inbounds i8, ptr %438, i64 2
  store i8 %498, ptr %496, align 1, !tbaa !38
  %500 = lshr i64 %483, 8
  %501 = trunc i64 %500 to i8
  %502 = getelementptr inbounds i8, ptr %438, i64 3
  store i8 %501, ptr %499, align 1, !tbaa !38
  %503 = trunc i64 %483 to i8
  %504 = getelementptr inbounds i8, ptr %438, i64 4
  store i8 %503, ptr %502, align 1, !tbaa !38
  br label %505

505:                                              ; preds = %484, %493, %487, %482, %480
  %506 = phi ptr [ %481, %480 ], [ %486, %484 ], [ %492, %487 ], [ %504, %493 ], [ %438, %482 ]
  %507 = icmp ult ptr %506, %427
  br i1 %507, label %435, label %508

508:                                              ; preds = %505, %415, %403, %391, %380, %426, %364, %368, %372, %376, %363
  call void @Perl_sv_free(ptr noundef %324) #20
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %10) #22
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %9) #22
  br label %291

509:                                              ; preds = %277
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %10) #22
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %9) #22
  br label %291

510:                                              ; preds = %288, %291, %270, %124
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #22
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #22
  ret ptr %80
}

; Function Attrs: optsize
declare i64 @Perl__invlist_search(ptr noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare ptr @Perl_newSV(i64 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #15

; Function Attrs: optsize
declare void @Perl__invlist_populate_swatch(ptr noundef, i64 noundef, i64 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @S_swash_scan_list_line(ptr noundef %0, ptr noundef %1, ptr nocapture noundef %2, ptr nocapture noundef writeonly %3, ptr nocapture noundef writeonly %4, i1 noundef zeroext %5, ptr noundef %6) unnamed_addr #3 !prof !47 !PGOFuncName !136 {
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = load i8, ptr %6, align 1, !tbaa !38
  %11 = icmp eq i8 %10, 84
  br i1 %11, label %12, label %16

12:                                               ; preds = %7
  %13 = getelementptr inbounds i8, ptr %6, i64 1
  %14 = load i8, ptr %13, align 1, !tbaa !38
  %15 = icmp eq i8 %14, 111
  br label %16

16:                                               ; preds = %12, %7
  %17 = phi i1 [ false, %7 ], [ %15, %12 ]
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %8) #22
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %9) #22
  store i32 14, ptr %9, align 4, !tbaa !72
  %18 = ptrtoint ptr %1 to i64
  %19 = ptrtoint ptr %0 to i64
  %20 = sub i64 %18, %19
  %21 = tail call ptr @memchr(ptr noundef %0, i32 noundef 10, i64 noundef %20) #19
  store i64 %20, ptr %8, align 8, !tbaa !50
  %22 = call i64 @Perl_grok_hex(ptr noundef %0, ptr noundef nonnull %8, ptr noundef nonnull %9, ptr noundef null) #20
  store i64 %22, ptr %2, align 8, !tbaa !50
  store i64 %22, ptr %3, align 8, !tbaa !50
  %23 = load i64, ptr %8, align 8, !tbaa !50
  %24 = icmp eq i64 %23, 0
  br i1 %24, label %33, label %25

25:                                               ; preds = %16
  %26 = getelementptr inbounds i8, ptr %0, i64 %23
  %27 = load i8, ptr %26, align 1, !tbaa !38
  %28 = zext i8 %27 to i64
  %29 = getelementptr inbounds [0 x i32], ptr @PL_charclass, i64 0, i64 %28
  %30 = load i32, ptr %29, align 4, !tbaa !72
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
  store i32 14, ptr %9, align 4, !tbaa !72
  %41 = ptrtoint ptr %40 to i64
  %42 = sub i64 %18, %41
  store i64 %42, ptr %8, align 8, !tbaa !50
  %43 = call i64 @Perl_grok_hex(ptr noundef nonnull %40, ptr noundef nonnull %8, ptr noundef nonnull %9, ptr noundef null) #20
  store i64 %43, ptr %3, align 8, !tbaa !50
  %44 = load i64, ptr %8, align 8, !tbaa !50
  %45 = icmp eq i64 %44, 0
  br i1 %45, label %48, label %46

46:                                               ; preds = %39
  %47 = getelementptr inbounds i8, ptr %40, i64 %44
  br label %50

48:                                               ; preds = %39
  %49 = load i64, ptr %2, align 8, !tbaa !50
  store i64 %49, ptr %3, align 8, !tbaa !50
  br label %50

50:                                               ; preds = %48, %46
  %51 = phi ptr [ %47, %46 ], [ %40, %48 ]
  br i1 %5, label %52, label %69

52:                                               ; preds = %50
  %53 = load i8, ptr %51, align 1, !tbaa !38
  %54 = zext i8 %53 to i64
  %55 = getelementptr inbounds [0 x i32], ptr @PL_charclass, i64 0, i64 %54
  %56 = load i32, ptr %55, align 4, !tbaa !72
  %57 = and i32 %56, 18432
  %58 = icmp eq i32 %57, 18432
  br i1 %58, label %59, label %67

59:                                               ; preds = %52
  %60 = getelementptr inbounds i8, ptr %51, i64 1
  store i32 14, ptr %9, align 4, !tbaa !72
  %61 = ptrtoint ptr %60 to i64
  %62 = sub i64 %18, %61
  store i64 %62, ptr %8, align 8, !tbaa !50
  %63 = call i64 @Perl_grok_hex(ptr noundef nonnull %60, ptr noundef nonnull %8, ptr noundef nonnull %9, ptr noundef null) #20
  %64 = load i64, ptr %8, align 8, !tbaa !50
  %65 = icmp eq i64 %64, 0
  %66 = select i1 %65, i64 0, i64 %63
  store i64 %66, ptr %4, align 8
  br label %73

67:                                               ; preds = %52
  store i64 0, ptr %4, align 8, !tbaa !50
  br i1 %17, label %68, label %73

68:                                               ; preds = %67
  call void (ptr, ...) @Perl_croak(ptr noundef nonnull @.str.71, ptr noundef nonnull %6, ptr noundef nonnull %51) #20
  br label %73

69:                                               ; preds = %50
  store i64 0, ptr %4, align 8, !tbaa !50
  br label %73

70:                                               ; preds = %25
  store i64 0, ptr %4, align 8, !tbaa !50
  %71 = select i1 %5, i1 %17, i1 false
  br i1 %71, label %72, label %73

72:                                               ; preds = %70
  call void (ptr, ...) @Perl_croak(ptr noundef nonnull @.str.71, ptr noundef nonnull %6, ptr noundef nonnull %26) #20
  br label %73

73:                                               ; preds = %70, %59, %72, %69, %67, %68
  %74 = icmp eq ptr %21, null
  %75 = getelementptr inbounds i8, ptr %21, i64 1
  %76 = select i1 %74, ptr %1, ptr %75
  br label %77

77:                                               ; preds = %73, %37, %35
  %78 = phi ptr [ %76, %73 ], [ %36, %35 ], [ %38, %37 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %9) #22
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %8) #22
  ret ptr %78
}

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(argmem: read)
declare ptr @memchr(ptr noundef, i32 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @Perl_sv_free(ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare i64 @Perl_grok_hex(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind optsize uwtable
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
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #22
  %11 = getelementptr inbounds %struct.sv, ptr %0, i64 0, i32 3
  %12 = load ptr, ptr %11, align 8, !tbaa !38
  %13 = tail call ptr @Perl_hv_common(ptr noundef %12, ptr noundef null, ptr noundef nonnull @.str.65, i64 noundef 4, i32 noundef 0, i32 noundef 32, ptr noundef null, i32 noundef 0) #20
  %14 = tail call ptr @Perl_hv_common(ptr noundef %12, ptr noundef null, ptr noundef nonnull @.str.63, i64 noundef 4, i32 noundef 0, i32 noundef 32, ptr noundef null, i32 noundef 0) #20
  %15 = tail call ptr @Perl_hv_common(ptr noundef %12, ptr noundef null, ptr noundef nonnull @.str.61, i64 noundef 4, i32 noundef 0, i32 noundef 32, ptr noundef null, i32 noundef 0) #20
  %16 = tail call ptr @Perl_hv_common(ptr noundef %12, ptr noundef null, ptr noundef nonnull @.str.62, i64 noundef 4, i32 noundef 0, i32 noundef 32, ptr noundef null, i32 noundef 0) #20
  %17 = load ptr, ptr %14, align 8, !tbaa !53
  %18 = getelementptr inbounds %struct.sv, ptr %17, i64 0, i32 2
  %19 = load i32, ptr %18, align 4, !tbaa !94
  %20 = and i32 %19, 2098176
  %21 = icmp eq i32 %20, 1024
  br i1 %21, label %22, label %25

22:                                               ; preds = %1
  %23 = getelementptr inbounds %struct.sv, ptr %17, i64 0, i32 3
  %24 = load ptr, ptr %23, align 8, !tbaa !38
  br label %27

25:                                               ; preds = %1
  %26 = tail call ptr @Perl_sv_2pv_flags(ptr noundef nonnull %17, ptr noundef null, i32 noundef 2) #20
  br label %27

27:                                               ; preds = %25, %22
  %28 = phi ptr [ %24, %22 ], [ %26, %25 ]
  %29 = load ptr, ptr %15, align 8, !tbaa !53
  %30 = getelementptr inbounds %struct.sv, ptr %29, i64 0, i32 2
  %31 = load i32, ptr %30, align 4, !tbaa !94
  %32 = and i32 %31, -2145386240
  %33 = icmp eq i32 %32, -2147483392
  br i1 %33, label %34, label %38

34:                                               ; preds = %27
  %35 = load ptr, ptr %29, align 8, !tbaa !96
  %36 = getelementptr inbounds %struct.xpvuv, ptr %35, i64 0, i32 4
  %37 = load i64, ptr %36, align 8, !tbaa !38
  br label %40

38:                                               ; preds = %27
  %39 = tail call i64 @Perl_sv_2uv_flags(ptr noundef nonnull %29, i32 noundef 2) #20
  br label %40

40:                                               ; preds = %38, %34
  %41 = phi i64 [ %37, %34 ], [ %39, %38 ]
  %42 = load ptr, ptr %16, align 8, !tbaa !53
  %43 = getelementptr inbounds %struct.sv, ptr %42, i64 0, i32 2
  %44 = load i32, ptr %43, align 4, !tbaa !94
  %45 = and i32 %44, -2145386240
  %46 = icmp eq i32 %45, -2147483392
  br i1 %46, label %47, label %51

47:                                               ; preds = %40
  %48 = load ptr, ptr %42, align 8, !tbaa !96
  %49 = getelementptr inbounds %struct.xpvuv, ptr %48, i64 0, i32 4
  %50 = load i64, ptr %49, align 8, !tbaa !38
  br label %53

51:                                               ; preds = %40
  %52 = tail call i64 @Perl_sv_2uv_flags(ptr noundef nonnull %42, i32 noundef 2) #20
  br label %53

53:                                               ; preds = %51, %47
  %54 = phi i64 [ %50, %47 ], [ %52, %51 ]
  %55 = tail call ptr @Perl_hv_common(ptr noundef %12, ptr noundef null, ptr noundef nonnull @.str.47, i64 noundef 8, i32 noundef 0, i32 noundef 32, ptr noundef null, i32 noundef 0) #20
  %56 = tail call ptr @Perl_newSV_type(i32 noundef 12) #20
  switch i64 %41, label %57 [
    i64 32, label %58
    i64 16, label %58
    i64 8, label %58
  ]

57:                                               ; preds = %53
  tail call void (ptr, ...) @Perl_croak(ptr noundef nonnull @.str.72, i64 noundef %41) #20
  br label %58

58:                                               ; preds = %53, %53, %53, %57
  %59 = icmp eq ptr %55, null
  br i1 %59, label %176, label %60

60:                                               ; preds = %58
  %61 = load ptr, ptr %55, align 8, !tbaa !53
  %62 = getelementptr inbounds %struct.sv, ptr %61, i64 0, i32 3
  %63 = load ptr, ptr %62, align 8, !tbaa !38
  %64 = tail call ptr @Perl_newSV_type(i32 noundef 12) #20
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #22
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #22
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #22
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #22
  %65 = tail call i32 @Perl_hv_iterinit(ptr noundef %63) #20
  %66 = call ptr @Perl_hv_iternextsv(ptr noundef %63, ptr noundef nonnull %3, ptr noundef nonnull %4) #20
  %67 = icmp eq ptr %66, null
  br i1 %67, label %68, label %71

68:                                               ; preds = %100, %60
  %69 = call ptr @Perl_hv_iternextsv(ptr noundef %64, ptr noundef nonnull %5, ptr noundef nonnull %6) #20
  %70 = icmp eq ptr %69, null
  br i1 %70, label %175, label %108

71:                                               ; preds = %60, %100
  %72 = phi ptr [ %106, %100 ], [ %66, %60 ]
  %73 = getelementptr inbounds %struct.sv, ptr %72, i64 0, i32 2
  %74 = load i32, ptr %73, align 4, !tbaa !94
  %75 = and i32 %74, 1024
  %76 = icmp eq i32 %75, 0
  br i1 %76, label %77, label %79

77:                                               ; preds = %71
  %78 = zext i32 %74 to i64
  call void (ptr, ...) @Perl_croak(ptr noundef nonnull @.str.73, i64 noundef %78) #20
  br label %79

79:                                               ; preds = %77, %71
  %80 = getelementptr inbounds %struct.sv, ptr %72, i64 0, i32 3
  %81 = load ptr, ptr %80, align 8, !tbaa !38
  %82 = load ptr, ptr %72, align 8, !tbaa !96
  %83 = getelementptr inbounds %struct.xpv, ptr %82, i64 0, i32 2
  %84 = load i64, ptr %83, align 8, !tbaa !97
  %85 = trunc i64 %84 to i32
  %86 = call ptr @Perl_hv_common_key_len(ptr noundef %64, ptr noundef %81, i32 noundef %85, i32 noundef 32, ptr noundef null, i32 noundef 0) #20
  %87 = icmp eq ptr %86, null
  br i1 %87, label %90, label %88

88:                                               ; preds = %79
  %89 = load ptr, ptr %86, align 8, !tbaa !53
  br label %100

90:                                               ; preds = %79
  %91 = call ptr @Perl_newSV_type(i32 noundef 11) #20
  %92 = load ptr, ptr %80, align 8, !tbaa !38
  %93 = load ptr, ptr %72, align 8, !tbaa !96
  %94 = getelementptr inbounds %struct.xpv, ptr %93, i64 0, i32 2
  %95 = load i64, ptr %94, align 8, !tbaa !97
  %96 = trunc i64 %95 to i32
  %97 = call ptr @Perl_hv_common_key_len(ptr noundef %64, ptr noundef %92, i32 noundef %96, i32 noundef 36, ptr noundef %91, i32 noundef 0) #20
  %98 = icmp eq ptr %97, null
  br i1 %98, label %99, label %100

99:                                               ; preds = %90
  call void (ptr, ...) @Perl_croak(ptr noundef nonnull @.str.58) #20
  br label %100

100:                                              ; preds = %90, %99, %88
  %101 = phi ptr [ %89, %88 ], [ %91, %90 ], [ %91, %99 ]
  %102 = load ptr, ptr %3, align 8, !tbaa !53
  %103 = load i32, ptr %4, align 4, !tbaa !72
  %104 = sext i32 %103 to i64
  %105 = call ptr @Perl_newSVpvn_flags(ptr noundef %102, i64 noundef %104, i32 noundef 536870912) #20
  call void @Perl_av_push(ptr noundef %101, ptr noundef %105) #20
  %106 = call ptr @Perl_hv_iternextsv(ptr noundef %63, ptr noundef nonnull %3, ptr noundef nonnull %4) #20
  %107 = icmp eq ptr %106, null
  br i1 %107, label %68, label %71, !llvm.loop !137

108:                                              ; preds = %68, %172
  %109 = phi ptr [ %173, %172 ], [ %69, %68 ]
  %110 = call fastcc i64 @S_av_top_index(ptr noundef nonnull %109) #21
  %111 = icmp sgt i64 %110, 0
  br i1 %111, label %112, label %172

112:                                              ; preds = %108
  %113 = call fastcc i64 @S_av_top_index(ptr noundef nonnull %109) #21
  %114 = icmp slt i64 %113, 0
  br i1 %114, label %172, label %115

115:                                              ; preds = %112, %168
  %116 = phi i64 [ %169, %168 ], [ 0, %112 ]
  %117 = call ptr @Perl_newSV_type(i32 noundef 11) #20
  %118 = call ptr @Perl_av_fetch(ptr noundef nonnull %109, i64 noundef %116, i32 noundef 0) #20
  %119 = icmp eq ptr %118, null
  br i1 %119, label %120, label %121

120:                                              ; preds = %115
  call void (ptr, ...) @Perl_croak(ptr noundef nonnull @.str.74) #20
  br label %121

121:                                              ; preds = %120, %115
  %122 = load ptr, ptr %118, align 8, !tbaa !53
  %123 = getelementptr inbounds %struct.sv, ptr %122, i64 0, i32 3
  %124 = load ptr, ptr %123, align 8, !tbaa !38
  %125 = load ptr, ptr %122, align 8, !tbaa !96
  %126 = getelementptr inbounds %struct.xpv, ptr %125, i64 0, i32 2
  %127 = load i64, ptr %126, align 8, !tbaa !97
  %128 = trunc i64 %127 to i32
  %129 = call ptr @Perl_hv_common_key_len(ptr noundef %56, ptr noundef %124, i32 noundef %128, i32 noundef 32, ptr noundef null, i32 noundef 0) #20
  %130 = icmp eq ptr %129, null
  br i1 %130, label %135, label %131

131:                                              ; preds = %121
  %132 = load ptr, ptr %118, align 8, !tbaa !53
  %133 = getelementptr inbounds %struct.sv, ptr %132, i64 0, i32 3
  %134 = load ptr, ptr %133, align 8, !tbaa !38
  call void (ptr, ...) @Perl_croak(ptr noundef nonnull @.str.75, ptr noundef %134) #20
  br label %135

135:                                              ; preds = %131, %121
  %136 = load ptr, ptr %118, align 8, !tbaa !53
  %137 = getelementptr inbounds %struct.sv, ptr %136, i64 0, i32 3
  %138 = load ptr, ptr %137, align 8, !tbaa !38
  %139 = load ptr, ptr %136, align 8, !tbaa !96
  %140 = getelementptr inbounds %struct.xpv, ptr %139, i64 0, i32 2
  %141 = load i64, ptr %140, align 8, !tbaa !97
  %142 = trunc i64 %141 to i32
  %143 = call ptr @Perl_hv_common_key_len(ptr noundef %56, ptr noundef %138, i32 noundef %142, i32 noundef 36, ptr noundef %117, i32 noundef 0) #20
  %144 = icmp eq ptr %143, null
  br i1 %144, label %145, label %146

145:                                              ; preds = %135
  call void (ptr, ...) @Perl_croak(ptr noundef nonnull @.str.58) #20
  br label %146

146:                                              ; preds = %145, %135
  %147 = call fastcc i64 @S_av_top_index(ptr noundef nonnull %109) #21
  %148 = icmp slt i64 %147, 0
  br i1 %148, label %168, label %149

149:                                              ; preds = %146, %154
  %150 = phi i64 [ %165, %154 ], [ 0, %146 ]
  %151 = call ptr @Perl_av_fetch(ptr noundef nonnull %109, i64 noundef %150, i32 noundef 0) #20
  %152 = icmp eq ptr %151, null
  br i1 %152, label %153, label %154

153:                                              ; preds = %149
  call void (ptr, ...) @Perl_croak(ptr noundef nonnull @.str.74) #20
  br label %154

154:                                              ; preds = %153, %149
  %155 = load ptr, ptr %151, align 8, !tbaa !53
  %156 = getelementptr inbounds %struct.sv, ptr %155, i64 0, i32 3
  %157 = load ptr, ptr %156, align 8, !tbaa !38
  %158 = load ptr, ptr %155, align 8, !tbaa !96
  %159 = getelementptr inbounds %struct.xpv, ptr %158, i64 0, i32 2
  %160 = load i64, ptr %159, align 8, !tbaa !97
  %161 = call zeroext i1 @Perl_ckwarn_d(i32 noundef 44) #20
  %162 = select i1 %161, i32 0, i32 -8161
  %163 = call i64 @Perl_utf8n_to_uvchr(ptr noundef %157, i64 noundef %160, ptr noundef null, i32 noundef %162) #21
  %164 = call ptr @Perl_newSVuv(i64 noundef %163) #20
  call void @Perl_av_push(ptr noundef %117, ptr noundef %164) #20
  %165 = add nuw nsw i64 %150, 1
  %166 = call fastcc i64 @S_av_top_index(ptr noundef nonnull %109) #21
  %167 = icmp slt i64 %150, %166
  br i1 %167, label %149, label %168, !llvm.loop !138

168:                                              ; preds = %154, %146
  %169 = add nuw nsw i64 %116, 1
  %170 = call fastcc i64 @S_av_top_index(ptr noundef nonnull %109) #21
  %171 = icmp slt i64 %116, %170
  br i1 %171, label %115, label %172, !llvm.loop !139

172:                                              ; preds = %168, %112, %108
  %173 = call ptr @Perl_hv_iternextsv(ptr noundef %64, ptr noundef nonnull %5, ptr noundef nonnull %6) #20
  %174 = icmp eq ptr %173, null
  br i1 %174, label %175, label %108, !llvm.loop !140

175:                                              ; preds = %172, %68
  call fastcc void @S_SvREFCNT_dec(ptr noundef %64) #21
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #22
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #22
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #22
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #22
  br label %176

176:                                              ; preds = %175, %58
  %177 = load ptr, ptr %13, align 8, !tbaa !53
  %178 = getelementptr inbounds %struct.sv, ptr %177, i64 0, i32 2
  %179 = load i32, ptr %178, align 4, !tbaa !94
  %180 = and i32 %179, 2098176
  %181 = icmp eq i32 %180, 1024
  br i1 %181, label %182, label %188

182:                                              ; preds = %176
  %183 = load ptr, ptr %177, align 8, !tbaa !96
  %184 = getelementptr inbounds %struct.xpv, ptr %183, i64 0, i32 2
  %185 = load i64, ptr %184, align 8, !tbaa !97
  store i64 %185, ptr %2, align 8, !tbaa !50
  %186 = getelementptr inbounds %struct.sv, ptr %177, i64 0, i32 3
  %187 = load ptr, ptr %186, align 8, !tbaa !38
  br label %191

188:                                              ; preds = %176
  %189 = call ptr @Perl_sv_2pv_flags(ptr noundef nonnull %177, ptr noundef nonnull %2, i32 noundef 2) #20
  %190 = load i64, ptr %2, align 8, !tbaa !50
  br label %191

191:                                              ; preds = %188, %182
  %192 = phi i64 [ %185, %182 ], [ %190, %188 ]
  %193 = phi ptr [ %187, %182 ], [ %189, %188 ]
  %194 = getelementptr inbounds i8, ptr %193, i64 %192
  %195 = icmp sgt i64 %192, 0
  br i1 %195, label %196, label %285

196:                                              ; preds = %191
  %197 = icmp ugt i64 %41, 7
  %198 = ptrtoint ptr %10 to i64
  %199 = add i64 %54, -1
  br label %200

200:                                              ; preds = %196, %283
  %201 = phi ptr [ %193, %196 ], [ %202, %283 ]
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #22
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %8) #22
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %9) #22
  %202 = call fastcc ptr @S_swash_scan_list_line(ptr noundef %201, ptr noundef nonnull %194, ptr noundef nonnull %7, ptr noundef nonnull %8, ptr noundef nonnull %9, i1 noundef zeroext %197, ptr noundef %28) #21
  %203 = icmp ugt ptr %202, %194
  br i1 %203, label %204, label %205

204:                                              ; preds = %200
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %9) #22
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %8) #22
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #22
  br label %285

205:                                              ; preds = %200
  %206 = load i64, ptr %7, align 8, !tbaa !50
  %207 = load i64, ptr %8, align 8, !tbaa !50
  %208 = icmp ugt i64 %206, %207
  br i1 %208, label %283, label %209

209:                                              ; preds = %205
  %210 = load i64, ptr %9, align 8
  br label %211

211:                                              ; preds = %209, %277
  %212 = phi i64 [ %281, %277 ], [ %206, %209 ]
  %213 = phi i64 [ %280, %277 ], [ %210, %209 ]
  call void @llvm.lifetime.start.p0(i64 14, ptr nonnull %10) #22
  %214 = call ptr @Perl_uvoffuni_to_utf8_flags(ptr noundef nonnull %10, i64 noundef %213, i64 noundef 0) #21
  %215 = ptrtoint ptr %214 to i64
  %216 = sub i64 %215, %198
  %217 = trunc i64 %216 to i32
  %218 = call ptr @Perl_hv_common_key_len(ptr noundef %56, ptr noundef nonnull %10, i32 noundef %217, i32 noundef 32, ptr noundef null, i32 noundef 0) #20
  %219 = icmp eq ptr %218, null
  br i1 %219, label %222, label %220

220:                                              ; preds = %211
  %221 = load ptr, ptr %218, align 8, !tbaa !53
  br label %227

222:                                              ; preds = %211
  %223 = call ptr @Perl_newSV_type(i32 noundef 11) #20
  %224 = call ptr @Perl_hv_common_key_len(ptr noundef %56, ptr noundef nonnull %10, i32 noundef %217, i32 noundef 36, ptr noundef %223, i32 noundef 0) #20
  %225 = icmp eq ptr %224, null
  br i1 %225, label %226, label %227

226:                                              ; preds = %222
  call void (ptr, ...) @Perl_croak(ptr noundef nonnull @.str.58) #20
  br label %227

227:                                              ; preds = %222, %226, %220
  %228 = phi ptr [ %221, %220 ], [ %223, %222 ], [ %223, %226 ]
  %229 = call fastcc i64 @S_av_top_index(ptr noundef %228) #21
  %230 = icmp slt i64 %229, 0
  br i1 %230, label %268, label %235

231:                                              ; preds = %254
  %232 = add nuw nsw i64 %238, 1
  %233 = call fastcc i64 @S_av_top_index(ptr noundef %228) #21
  %234 = icmp slt i64 %238, %233
  br i1 %234, label %235, label %265, !llvm.loop !141

235:                                              ; preds = %227, %231
  %236 = phi i8 [ %259, %231 ], [ 0, %227 ]
  %237 = phi i8 [ %257, %231 ], [ 0, %227 ]
  %238 = phi i64 [ %232, %231 ], [ 0, %227 ]
  %239 = call ptr @Perl_av_fetch(ptr noundef %228, i64 noundef %238, i32 noundef 0) #20
  %240 = icmp eq ptr %239, null
  br i1 %240, label %241, label %242

241:                                              ; preds = %235
  call void (ptr, ...) @Perl_croak(ptr noundef nonnull @.str.74) #20
  br label %242

242:                                              ; preds = %241, %235
  %243 = load ptr, ptr %239, align 8, !tbaa !53
  %244 = getelementptr inbounds %struct.sv, ptr %243, i64 0, i32 2
  %245 = load i32, ptr %244, align 4, !tbaa !94
  %246 = and i32 %245, -2145386240
  %247 = icmp eq i32 %246, -2147483392
  br i1 %247, label %248, label %252

248:                                              ; preds = %242
  %249 = load ptr, ptr %243, align 8, !tbaa !96
  %250 = getelementptr inbounds %struct.xpvuv, ptr %249, i64 0, i32 4
  %251 = load i64, ptr %250, align 8, !tbaa !38
  br label %254

252:                                              ; preds = %242
  %253 = call i64 @Perl_sv_2uv_flags(ptr noundef nonnull %243, i32 noundef 2) #20
  br label %254

254:                                              ; preds = %252, %248
  %255 = phi i64 [ %251, %248 ], [ %253, %252 ]
  %256 = icmp eq i64 %255, %213
  %257 = select i1 %256, i8 1, i8 %237
  %258 = icmp eq i64 %255, %212
  %259 = select i1 %258, i8 1, i8 %236
  %260 = and i8 %257, 1
  %261 = icmp eq i8 %260, 0
  %262 = and i8 %259, 1
  %263 = icmp eq i8 %262, 0
  %264 = select i1 %261, i1 true, i1 %263
  br i1 %264, label %231, label %265

265:                                              ; preds = %231, %254
  %266 = and i8 %257, 1
  %267 = icmp eq i8 %266, 0
  br i1 %267, label %268, label %271

268:                                              ; preds = %227, %265
  %269 = phi i8 [ %259, %265 ], [ 0, %227 ]
  %270 = call ptr @Perl_newSVuv(i64 noundef %213) #20
  call void @Perl_av_push(ptr noundef %228, ptr noundef %270) #20
  br label %271

271:                                              ; preds = %268, %265
  %272 = phi i8 [ %269, %268 ], [ %259, %265 ]
  %273 = and i8 %272, 1
  %274 = icmp eq i8 %273, 0
  br i1 %274, label %275, label %277

275:                                              ; preds = %271
  %276 = call ptr @Perl_newSVuv(i64 noundef %212) #20
  call void @Perl_av_push(ptr noundef %228, ptr noundef %276) #20
  br label %277

277:                                              ; preds = %275, %271
  %278 = icmp uge i64 %199, %213
  %279 = zext i1 %278 to i64
  %280 = add i64 %213, %279
  call void @llvm.lifetime.end.p0(i64 14, ptr nonnull %10) #22
  %281 = add i64 %212, 1
  %282 = icmp ugt i64 %281, %207
  br i1 %282, label %283, label %211, !llvm.loop !142

283:                                              ; preds = %277, %205
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %9) #22
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %8) #22
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #22
  %284 = icmp ult ptr %202, %194
  br i1 %284, label %200, label %285

285:                                              ; preds = %283, %191, %204
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #22
  ret ptr %56
}

; Function Attrs: optsize
declare i32 @Perl_hv_iterinit(ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare ptr @Perl_hv_iternextsv(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare void @Perl_av_push(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i64 @S_av_top_index(ptr noundef %0) unnamed_addr #3 !prof !47 !PGOFuncName !143 {
  %2 = getelementptr inbounds %struct.sv, ptr %0, i64 0, i32 2
  %3 = load i32, ptr %2, align 4, !tbaa !94
  %4 = and i32 %3, 8388608
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %9, label %6

6:                                                ; preds = %1
  %7 = tail call i32 @Perl_mg_size(ptr noundef nonnull %0) #20
  %8 = sext i32 %7 to i64
  br label %13

9:                                                ; preds = %1
  %10 = load ptr, ptr %0, align 8, !tbaa !83
  %11 = getelementptr inbounds %struct.xpvav, ptr %10, i64 0, i32 2
  %12 = load i64, ptr %11, align 8, !tbaa !85
  br label %13

13:                                               ; preds = %9, %6
  %14 = phi i64 [ %8, %6 ], [ %12, %9 ]
  ret i64 %14
}

; Function Attrs: optsize
declare ptr @Perl_av_fetch(ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare ptr @Perl_newSVuv(i64 noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare i32 @Perl_mg_size(ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare zeroext i1 @Perl_grok_atoUV(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare ptr @Perl__new_invlist(i64 noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare ptr @Perl__setup_canned_invlist(i64 noundef, i64 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(argmem: read)
declare ptr @strchr(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @Perl__add_range_to_invlist(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare void @Perl__invlist_invert(ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare void @Perl__invlist_intersection_maybe_complement_2nd(ptr noundef, ptr noundef, i1 noundef zeroext, ptr noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @Perl__get_swash_invlist(ptr nocapture noundef readonly %0) local_unnamed_addr #3 !prof !47 {
  %2 = getelementptr inbounds %struct.sv, ptr %0, i64 0, i32 2
  %3 = load i32, ptr %2, align 4, !tbaa !94
  %4 = and i32 %3, 2048
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %18, label %6

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.sv, ptr %0, i64 0, i32 3
  %8 = load ptr, ptr %7, align 8, !tbaa !38
  %9 = getelementptr inbounds %struct.sv, ptr %8, i64 0, i32 2
  %10 = load i32, ptr %9, align 4, !tbaa !94
  %11 = and i32 %10, 255
  %12 = icmp eq i32 %11, 12
  br i1 %12, label %13, label %18

13:                                               ; preds = %6
  %14 = tail call ptr @Perl_hv_common(ptr noundef nonnull %8, ptr noundef null, ptr noundef nonnull @.str.57, i64 noundef 1, i32 noundef 0, i32 noundef 32, ptr noundef null, i32 noundef 0) #20
  %15 = icmp eq ptr %14, null
  br i1 %15, label %18, label %16

16:                                               ; preds = %13
  %17 = load ptr, ptr %14, align 8, !tbaa !53
  br label %18

18:                                               ; preds = %13, %6, %1, %16
  %19 = phi ptr [ %17, %16 ], [ null, %1 ], [ %8, %6 ], [ null, %13 ]
  ret ptr %19
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local zeroext i1 @Perl_check_utf8_print(ptr noundef %0, i64 noundef %1) local_unnamed_addr #3 !prof !47 {
  %3 = alloca i64, align 8
  %4 = getelementptr inbounds i8, ptr %0, i64 %1
  %5 = icmp sgt i64 %1, 0
  br i1 %5, label %6, label %135

6:                                                ; preds = %2
  %7 = ptrtoint ptr %4 to i64
  br label %8

8:                                                ; preds = %6, %127
  %9 = phi ptr [ %0, %6 ], [ %130, %127 ]
  %10 = phi i8 [ 1, %6 ], [ %129, %127 ]
  %11 = load i8, ptr %9, align 1, !tbaa !38
  %12 = zext i8 %11 to i64
  %13 = getelementptr inbounds [0 x i8], ptr @PL_utf8skip, i64 0, i64 %12
  %14 = load i8, ptr %13, align 1, !tbaa !38
  %15 = zext i8 %14 to i64
  %16 = icmp ugt i64 %15, %1
  br i1 %16, label %17, label %33

17:                                               ; preds = %8
  %18 = load ptr, ptr @PL_op, align 8, !tbaa !53
  %19 = icmp eq ptr %18, null
  br i1 %19, label %31, label %20

20:                                               ; preds = %17
  %21 = getelementptr inbounds %struct.op, ptr %18, i64 0, i32 4
  %22 = load i16, ptr %21, align 8
  %23 = and i16 %22, 511
  %24 = icmp eq i16 %23, 380
  br i1 %24, label %25, label %27

25:                                               ; preds = %20
  %26 = call ptr @Perl_custom_op_get_field(ptr noundef nonnull %18, i32 noundef 2) #20
  br label %31

27:                                               ; preds = %20
  %28 = zext nneg i16 %23 to i64
  %29 = getelementptr inbounds [0 x ptr], ptr @PL_op_desc, i64 0, i64 %28
  %30 = load ptr, ptr %29, align 8, !tbaa !53
  br label %31

31:                                               ; preds = %17, %25, %27
  %32 = phi ptr [ %26, %25 ], [ %30, %27 ], [ @.str.81, %17 ]
  call void (i32, ptr, ...) @Perl_ck_warner_d(i32 noundef 44, ptr noundef nonnull @.str.13, ptr noundef nonnull @unees, ptr noundef %32) #20
  br label %135

33:                                               ; preds = %8
  %34 = icmp ugt i8 %11, -20
  br i1 %34, label %35, label %127

35:                                               ; preds = %33
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #22
  %36 = icmp ugt i8 %11, -13
  br i1 %36, label %37, label %51

37:                                               ; preds = %35
  %38 = icmp eq i8 %11, -12
  br i1 %38, label %39, label %43

39:                                               ; preds = %37
  %40 = getelementptr inbounds i8, ptr %9, i64 1
  %41 = load i8, ptr %40, align 1, !tbaa !38
  %42 = icmp ugt i8 %41, -113
  br i1 %42, label %43, label %102

43:                                               ; preds = %39, %37
  %44 = call zeroext i1 @Perl_ckwarn_d(i32 noundef 48) #20
  br i1 %44, label %45, label %120

45:                                               ; preds = %43
  %46 = ptrtoint ptr %9 to i64
  %47 = sub i64 %7, %46
  %48 = call zeroext i1 @Perl_ckwarn_d(i32 noundef 44) #20
  %49 = select i1 %48, i32 0, i32 -8161
  %50 = call i64 @Perl_utf8n_to_uvchr(ptr noundef nonnull %9, i64 noundef %47, ptr noundef nonnull %3, i32 noundef %49) #21
  call void (i32, ptr, ...) @Perl_warner(i32 noundef 48, ptr noundef nonnull @.str.1, i64 noundef %50) #20
  br label %120

51:                                               ; preds = %35
  switch i8 %11, label %87 [
    i8 -19, label %52
    i8 -17, label %64
    i8 -16, label %76
  ]

52:                                               ; preds = %51
  %53 = getelementptr inbounds i8, ptr %9, i64 1
  %54 = load i8, ptr %53, align 1, !tbaa !38
  %55 = icmp ugt i8 %54, -97
  br i1 %55, label %56, label %120

56:                                               ; preds = %52
  %57 = call zeroext i1 @Perl_ckwarn_d(i32 noundef 50) #20
  br i1 %57, label %58, label %120

58:                                               ; preds = %56
  %59 = ptrtoint ptr %9 to i64
  %60 = sub i64 %7, %59
  %61 = call zeroext i1 @Perl_ckwarn_d(i32 noundef 44) #20
  %62 = select i1 %61, i32 0, i32 -8161
  %63 = call i64 @Perl_utf8n_to_uvchr(ptr noundef nonnull %9, i64 noundef %60, ptr noundef nonnull %3, i32 noundef %62) #21
  call void (i32, ptr, ...) @Perl_warner(i32 noundef 50, ptr noundef nonnull @.str.82, i64 noundef %63) #20
  br label %120

64:                                               ; preds = %51
  %65 = getelementptr inbounds i8, ptr %9, i64 1
  %66 = load i8, ptr %65, align 1, !tbaa !38
  switch i8 %66, label %120 [
    i8 -73, label %67
    i8 -65, label %72
  ]

67:                                               ; preds = %64
  %68 = getelementptr inbounds i8, ptr %9, i64 2
  %69 = load i8, ptr %68, align 1, !tbaa !38
  %70 = add i8 %69, 112
  %71 = icmp ult i8 %70, 32
  br i1 %71, label %112, label %120

72:                                               ; preds = %64
  %73 = getelementptr inbounds i8, ptr %9, i64 2
  %74 = load i8, ptr %73, align 1, !tbaa !38
  %75 = icmp ugt i8 %74, -67
  br i1 %75, label %112, label %120

76:                                               ; preds = %51
  %77 = getelementptr inbounds i8, ptr %9, i64 1
  %78 = load i8, ptr %77, align 1, !tbaa !38
  switch i8 %78, label %120 [
    i8 -65, label %79
    i8 -81, label %79
    i8 -97, label %79
  ]

79:                                               ; preds = %76, %76, %76
  %80 = getelementptr inbounds i8, ptr %9, i64 2
  %81 = load i8, ptr %80, align 1, !tbaa !38
  %82 = icmp eq i8 %81, -65
  br i1 %82, label %83, label %120

83:                                               ; preds = %79
  %84 = getelementptr inbounds i8, ptr %9, i64 3
  %85 = load i8, ptr %84, align 1, !tbaa !38
  %86 = icmp ugt i8 %85, -67
  br i1 %86, label %112, label %120

87:                                               ; preds = %51
  %88 = icmp ugt i8 %11, -16
  br i1 %88, label %89, label %120

89:                                               ; preds = %87
  %90 = getelementptr inbounds i8, ptr %9, i64 1
  %91 = load i8, ptr %90, align 1, !tbaa !38
  %92 = and i8 %91, -49
  %93 = icmp eq i8 %92, -113
  br i1 %93, label %94, label %120

94:                                               ; preds = %89
  %95 = getelementptr inbounds i8, ptr %9, i64 2
  %96 = load i8, ptr %95, align 1, !tbaa !38
  %97 = icmp eq i8 %96, -65
  br i1 %97, label %98, label %120

98:                                               ; preds = %94
  %99 = getelementptr inbounds i8, ptr %9, i64 3
  %100 = load i8, ptr %99, align 1, !tbaa !38
  %101 = icmp ugt i8 %100, -67
  br i1 %101, label %112, label %120

102:                                              ; preds = %39
  %103 = icmp eq i8 %41, -113
  br i1 %103, label %104, label %120

104:                                              ; preds = %102
  %105 = getelementptr inbounds i8, ptr %9, i64 2
  %106 = load i8, ptr %105, align 1, !tbaa !38
  %107 = icmp eq i8 %106, -65
  br i1 %107, label %108, label %120

108:                                              ; preds = %104
  %109 = getelementptr inbounds i8, ptr %9, i64 3
  %110 = load i8, ptr %109, align 1, !tbaa !38
  %111 = icmp ugt i8 %110, -67
  br i1 %111, label %112, label %120

112:                                              ; preds = %67, %72, %83, %98, %108
  %113 = call zeroext i1 @Perl_ckwarn_d(i32 noundef 49) #20
  br i1 %113, label %114, label %120

114:                                              ; preds = %112
  %115 = ptrtoint ptr %9 to i64
  %116 = sub i64 %7, %115
  %117 = call zeroext i1 @Perl_ckwarn_d(i32 noundef 44) #20
  %118 = select i1 %117, i32 0, i32 -8161
  %119 = call i64 @Perl_utf8n_to_uvchr(ptr noundef nonnull %9, i64 noundef %116, ptr noundef nonnull %3, i32 noundef %118) #21
  call void (i32, ptr, ...) @Perl_warner(i32 noundef 49, ptr noundef nonnull @.str.2, i64 noundef %119) #20
  br label %120

120:                                              ; preds = %87, %52, %76, %64, %58, %56, %67, %72, %83, %79, %98, %94, %89, %108, %104, %102, %114, %112, %43, %45
  %121 = phi i8 [ 0, %45 ], [ %10, %43 ], [ 0, %58 ], [ %10, %56 ], [ 0, %114 ], [ %10, %112 ], [ %10, %67 ], [ %10, %72 ], [ %10, %83 ], [ %10, %79 ], [ %10, %98 ], [ %10, %94 ], [ %10, %89 ], [ %10, %108 ], [ %10, %104 ], [ %10, %102 ], [ %10, %64 ], [ %10, %76 ], [ %10, %52 ], [ %10, %87 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #22
  %122 = load i8, ptr %9, align 1, !tbaa !38
  %123 = zext i8 %122 to i64
  %124 = getelementptr inbounds [0 x i8], ptr @PL_utf8skip, i64 0, i64 %123
  %125 = load i8, ptr %124, align 1, !tbaa !38
  %126 = zext i8 %125 to i64
  br label %127

127:                                              ; preds = %33, %120
  %128 = phi i64 [ %15, %33 ], [ %126, %120 ]
  %129 = phi i8 [ %10, %33 ], [ %121, %120 ]
  %130 = getelementptr inbounds i8, ptr %9, i64 %128
  %131 = icmp ult ptr %130, %4
  br i1 %131, label %8, label %132, !llvm.loop !144

132:                                              ; preds = %127
  %133 = and i8 %129, 1
  %134 = icmp ne i8 %133, 0
  br label %135

135:                                              ; preds = %2, %132, %31
  %136 = phi i1 [ false, %31 ], [ true, %2 ], [ %134, %132 ]
  ret i1 %136
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @Perl_pv_uni_display(ptr noundef %0, ptr noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4) local_unnamed_addr #3 !prof !47 {
  %6 = alloca i8, align 1
  %7 = alloca i8, align 1
  tail call void @Perl_sv_setpvn(ptr noundef %0, ptr noundef nonnull @.str.9, i64 noundef 0) #20
  %8 = getelementptr inbounds %struct.sv, ptr %0, i64 0, i32 2
  %9 = load i32, ptr %8, align 4, !tbaa !94
  %10 = and i32 %9, -536870913
  store i32 %10, ptr %8, align 4, !tbaa !94
  %11 = getelementptr inbounds i8, ptr %1, i64 %2
  %12 = icmp sgt i64 %2, 0
  br i1 %12, label %13, label %61

13:                                               ; preds = %5
  %14 = icmp eq i64 %3, 0
  %15 = ptrtoint ptr %11 to i64
  %16 = and i64 %4, 2
  %17 = icmp eq i64 %16, 0
  %18 = and i64 %4, 1
  %19 = icmp eq i64 %18, 0
  br label %20

20:                                               ; preds = %13, %52
  %21 = phi ptr [ %1, %13 ], [ %58, %52 ]
  br i1 %14, label %27, label %22

22:                                               ; preds = %20
  %23 = load ptr, ptr %0, align 8, !tbaa !96
  %24 = getelementptr inbounds %struct.xpv, ptr %23, i64 0, i32 2
  %25 = load i64, ptr %24, align 8, !tbaa !97
  %26 = icmp ult i64 %25, %3
  br i1 %26, label %27, label %60

27:                                               ; preds = %22, %20
  %28 = ptrtoint ptr %21 to i64
  %29 = sub i64 %15, %28
  %30 = call zeroext i1 @Perl_ckwarn_d(i32 noundef 44) #20
  %31 = select i1 %30, i32 0, i32 -8161
  %32 = call i64 @Perl_utf8n_to_uvchr(ptr noundef %21, i64 noundef %29, ptr noundef null, i32 noundef %31) #21
  %33 = icmp ult i64 %32, 256
  br i1 %33, label %34, label %51

34:                                               ; preds = %27
  %35 = trunc i64 %32 to i8
  br i1 %17, label %44, label %36

36:                                               ; preds = %34
  switch i8 %35, label %44 [
    i8 10, label %42
    i8 13, label %37
    i8 9, label %38
    i8 12, label %39
    i8 7, label %40
    i8 92, label %41
  ]

37:                                               ; preds = %36
  br label %42

38:                                               ; preds = %36
  br label %42

39:                                               ; preds = %36
  br label %42

40:                                               ; preds = %36
  br label %42

41:                                               ; preds = %36
  br label %42

42:                                               ; preds = %36, %37, %38, %39, %40, %41
  %43 = phi i8 [ 114, %37 ], [ 116, %38 ], [ 102, %39 ], [ 97, %40 ], [ 92, %41 ], [ 110, %36 ]
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %6) #22
  store i8 %43, ptr %6, align 1, !tbaa !38
  call void @Perl_sv_catpvn_flags(ptr noundef %0, ptr noundef nonnull @.str.83, i64 noundef 1, i32 noundef 2) #20
  call void @Perl_sv_catpvn_flags(ptr noundef %0, ptr noundef nonnull %6, i64 noundef 1, i32 noundef 2) #20
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %6) #22
  br label %52

44:                                               ; preds = %34, %36
  br i1 %19, label %51, label %45

45:                                               ; preds = %44
  %46 = getelementptr inbounds [0 x i32], ptr @PL_charclass, i64 0, i64 %32
  %47 = load i32, ptr %46, align 4, !tbaa !72
  %48 = and i32 %47, 16448
  %49 = icmp eq i32 %48, 16448
  br i1 %49, label %50, label %51

50:                                               ; preds = %45
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %7) #22
  store i8 %35, ptr %7, align 1, !tbaa !38
  call void @Perl_sv_catpvn_flags(ptr noundef %0, ptr noundef nonnull %7, i64 noundef 1, i32 noundef 2) #20
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %7) #22
  br label %52

51:                                               ; preds = %27, %45, %44
  call void (ptr, ptr, ...) @Perl_sv_catpvf(ptr noundef %0, ptr noundef nonnull @.str.84, i64 noundef %32) #20
  br label %52

52:                                               ; preds = %51, %42, %50
  %53 = load i8, ptr %21, align 1, !tbaa !38
  %54 = zext i8 %53 to i64
  %55 = getelementptr inbounds [0 x i8], ptr @PL_utf8skip, i64 0, i64 %54
  %56 = load i8, ptr %55, align 1, !tbaa !38
  %57 = zext i8 %56 to i64
  %58 = getelementptr inbounds i8, ptr %21, i64 %57
  %59 = icmp ult ptr %58, %11
  br i1 %59, label %20, label %61, !llvm.loop !145

60:                                               ; preds = %22
  call void @Perl_sv_catpvn_flags(ptr noundef nonnull %0, ptr noundef nonnull @.str.85, i64 noundef 3, i32 noundef 2) #20
  br label %61

61:                                               ; preds = %52, %5, %60
  %62 = getelementptr inbounds %struct.sv, ptr %0, i64 0, i32 3
  %63 = load ptr, ptr %62, align 8, !tbaa !38
  ret ptr %63
}

; Function Attrs: optsize
declare void @Perl_sv_setpvn(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare void @Perl_sv_catpvn_flags(ptr noundef, ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare void @Perl_sv_catpvf(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @Perl_sv_uni_display(ptr noundef %0, ptr nocapture noundef readonly %1, i64 noundef %2, i64 noundef %3) local_unnamed_addr #3 !prof !47 {
  %5 = getelementptr inbounds %struct.sv, ptr %1, i64 0, i32 2
  %6 = load i32, ptr %5, align 4, !tbaa !94
  %7 = and i32 %6, 255
  %8 = icmp eq i32 %7, 8
  %9 = and i32 %6, 16826623
  %10 = icmp eq i32 %9, 16777226
  %11 = or i1 %8, %10
  br i1 %11, label %12, label %15

12:                                               ; preds = %4
  %13 = tail call fastcc ptr @S_ReANY(ptr noundef nonnull %1) #21
  %14 = getelementptr inbounds %struct.regexp, ptr %13, i64 0, i32 3
  br label %17

15:                                               ; preds = %4
  %16 = getelementptr inbounds %struct.sv, ptr %1, i64 0, i32 3
  br label %17

17:                                               ; preds = %15, %12
  %18 = phi ptr [ %14, %12 ], [ %16, %15 ]
  %19 = load ptr, ptr %18, align 8, !tbaa !38
  %20 = load ptr, ptr %1, align 8, !tbaa !96
  %21 = getelementptr inbounds %struct.xpv, ptr %20, i64 0, i32 2
  %22 = load i64, ptr %21, align 8, !tbaa !97
  %23 = tail call ptr @Perl_pv_uni_display(ptr noundef %0, ptr noundef %19, i64 noundef %22, i64 noundef %2, i64 noundef %3) #21
  ret ptr %23
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @S_ReANY(ptr nocapture noundef readonly %0) unnamed_addr #14 !prof !47 !PGOFuncName !146 {
  %2 = getelementptr inbounds %struct.p5rx, ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !38
  ret ptr %3
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef i32 @Perl_foldEQ_utf8_flags(ptr noundef %0, ptr noundef %1, i64 noundef %2, i1 noundef zeroext %3, ptr noundef %4, ptr noundef %5, i64 noundef %6, i1 noundef zeroext %7, i32 noundef %8) local_unnamed_addr #3 !prof !47 {
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca [14 x i8], align 1
  %13 = alloca [14 x i8], align 1
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %10) #22
  store i64 0, ptr %10, align 8, !tbaa !50
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %11) #22
  store i64 0, ptr %11, align 8, !tbaa !50
  call void @llvm.lifetime.start.p0(i64 14, ptr nonnull %12) #22
  call void @llvm.lifetime.start.p0(i64 14, ptr nonnull %13) #22
  %14 = and i32 %8, 2
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %22, label %16

16:                                               ; preds = %9
  %17 = load i8, ptr @PL_in_utf8_CTYPE_locale, align 1, !tbaa !63, !range !65, !noundef !66
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
  %27 = load ptr, ptr %1, align 8, !tbaa !53
  br label %28

28:                                               ; preds = %26, %22
  %29 = phi ptr [ %27, %26 ], [ null, %22 ]
  %30 = icmp eq i64 %2, 0
  %31 = getelementptr inbounds i8, ptr %0, i64 %2
  %32 = select i1 %30, ptr null, ptr %31
  %33 = icmp eq ptr %5, null
  br i1 %33, label %36, label %34

34:                                               ; preds = %28
  %35 = load ptr, ptr %5, align 8, !tbaa !53
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
  br i1 %47, label %48, label %202

48:                                               ; preds = %36
  %49 = and i32 %23, 2
  %50 = icmp eq i32 %49, 0
  br label %51

51:                                               ; preds = %48, %194
  %52 = phi i64 [ 0, %48 ], [ %166, %194 ]
  %53 = phi ptr [ null, %48 ], [ %169, %194 ]
  %54 = phi ptr [ null, %48 ], [ %168, %194 ]
  %55 = phi ptr [ %4, %48 ], [ %195, %194 ]
  %56 = phi ptr [ %0, %48 ], [ %182, %194 ]
  %57 = icmp eq i64 %52, 0
  br i1 %57, label %58, label %91

58:                                               ; preds = %51
  %59 = and i32 %23, 4
  %60 = icmp eq i32 %59, 0
  %61 = load i8, ptr %56, align 1, !tbaa !38
  br i1 %60, label %67, label %62

62:                                               ; preds = %58
  %63 = zext i8 %61 to i64
  %64 = getelementptr inbounds [0 x i8], ptr @PL_utf8skip, i64 0, i64 %63
  %65 = load i8, ptr %64, align 1, !tbaa !38
  %66 = zext i8 %65 to i64
  store i64 %66, ptr %10, align 8, !tbaa !50
  br label %91

67:                                               ; preds = %58
  %68 = icmp sgt i8 %61, -1
  %69 = and i1 %50, %68
  br i1 %69, label %70, label %85

70:                                               ; preds = %67
  %71 = and i32 %23, 1
  %72 = icmp eq i32 %71, 0
  br i1 %72, label %76, label %73

73:                                               ; preds = %70
  %74 = load i8, ptr %55, align 1, !tbaa !38
  %75 = icmp sgt i8 %74, -1
  br i1 %75, label %76, label %220

76:                                               ; preds = %73, %70
  store i64 1, ptr %10, align 8, !tbaa !50
  %77 = load i8, ptr %56, align 1, !tbaa !38
  %78 = zext i8 %77 to i64
  %79 = getelementptr inbounds [0 x i32], ptr @PL_charclass, i64 0, i64 %78
  %80 = load i32, ptr %79, align 4, !tbaa !72
  %81 = and i32 %80, 16400
  %82 = icmp eq i32 %81, 16400
  %83 = add i8 %77, 32
  %84 = select i1 %82, i8 %83, i8 %77
  store i8 %84, ptr %12, align 1, !tbaa !38
  br label %91

85:                                               ; preds = %67
  br i1 %3, label %86, label %88

86:                                               ; preds = %85
  %87 = call i64 @Perl__to_utf8_fold_flags(ptr noundef nonnull %56, ptr noundef nonnull %12, ptr noundef nonnull %10, i8 noundef zeroext %24) #21
  br label %91

88:                                               ; preds = %85
  %89 = zext i8 %61 to i64
  %90 = call i64 @Perl__to_uni_fold_flags(i64 noundef %89, ptr noundef nonnull %12, ptr noundef nonnull %10, i8 noundef zeroext %24) #21
  br label %91

91:                                               ; preds = %76, %88, %86, %62, %51
  %92 = phi ptr [ %56, %62 ], [ %54, %51 ], [ %12, %86 ], [ %12, %88 ], [ %12, %76 ]
  %93 = load i64, ptr %11, align 8, !tbaa !50
  %94 = icmp eq i64 %93, 0
  br i1 %94, label %95, label %128

95:                                               ; preds = %91
  %96 = and i32 %23, 8
  %97 = icmp eq i32 %96, 0
  %98 = load i8, ptr %55, align 1, !tbaa !38
  br i1 %97, label %104, label %99

99:                                               ; preds = %95
  %100 = zext i8 %98 to i64
  %101 = getelementptr inbounds [0 x i8], ptr @PL_utf8skip, i64 0, i64 %100
  %102 = load i8, ptr %101, align 1, !tbaa !38
  %103 = zext i8 %102 to i64
  store i64 %103, ptr %11, align 8, !tbaa !50
  br label %128

104:                                              ; preds = %95
  %105 = icmp sgt i8 %98, -1
  %106 = and i1 %50, %105
  br i1 %106, label %107, label %122

107:                                              ; preds = %104
  %108 = and i32 %23, 1
  %109 = icmp eq i32 %108, 0
  br i1 %109, label %113, label %110

110:                                              ; preds = %107
  %111 = load i8, ptr %56, align 1, !tbaa !38
  %112 = icmp sgt i8 %111, -1
  br i1 %112, label %113, label %220

113:                                              ; preds = %110, %107
  store i64 1, ptr %11, align 8, !tbaa !50
  %114 = load i8, ptr %55, align 1, !tbaa !38
  %115 = zext i8 %114 to i64
  %116 = getelementptr inbounds [0 x i32], ptr @PL_charclass, i64 0, i64 %115
  %117 = load i32, ptr %116, align 4, !tbaa !72
  %118 = and i32 %117, 16400
  %119 = icmp eq i32 %118, 16400
  %120 = add i8 %114, 32
  %121 = select i1 %119, i8 %120, i8 %114
  store i8 %121, ptr %13, align 1, !tbaa !38
  br label %128

122:                                              ; preds = %104
  br i1 %7, label %123, label %125

123:                                              ; preds = %122
  %124 = call i64 @Perl__to_utf8_fold_flags(ptr noundef nonnull %55, ptr noundef nonnull %13, ptr noundef nonnull %11, i8 noundef zeroext %24) #21
  br label %128

125:                                              ; preds = %122
  %126 = zext i8 %98 to i64
  %127 = call i64 @Perl__to_uni_fold_flags(i64 noundef %126, ptr noundef nonnull %13, ptr noundef nonnull %11, i8 noundef zeroext %24) #21
  br label %128

128:                                              ; preds = %113, %125, %123, %99, %91
  %129 = phi ptr [ %55, %99 ], [ %53, %91 ], [ %13, %123 ], [ %13, %125 ], [ %13, %113 ]
  %130 = load i64, ptr %10, align 8
  %131 = load i64, ptr %11, align 8
  %132 = icmp ne i64 %130, 0
  %133 = icmp ne i64 %131, 0
  %134 = select i1 %132, i1 %133, i1 false
  br i1 %134, label %135, label %165

135:                                              ; preds = %128, %157
  %136 = phi ptr [ %161, %157 ], [ %129, %128 ]
  %137 = phi ptr [ %159, %157 ], [ %92, %128 ]
  %138 = phi i64 [ %158, %157 ], [ %130, %128 ]
  %139 = phi i64 [ %160, %157 ], [ %131, %128 ]
  %140 = load i8, ptr %137, align 1, !tbaa !38
  %141 = zext i8 %140 to i64
  %142 = getelementptr inbounds [0 x i8], ptr @PL_utf8skip, i64 0, i64 %141
  %143 = load i8, ptr %142, align 1, !tbaa !38
  %144 = load i8, ptr %136, align 1, !tbaa !38
  %145 = zext i8 %144 to i64
  %146 = getelementptr inbounds [0 x i8], ptr @PL_utf8skip, i64 0, i64 %145
  %147 = load i8, ptr %146, align 1, !tbaa !38
  %148 = icmp eq i8 %143, %147
  br i1 %148, label %149, label %220

149:                                              ; preds = %135
  %150 = icmp ne i8 %143, 1
  %151 = icmp eq i8 %140, %144
  %152 = or i1 %150, %151
  br i1 %152, label %153, label %220

153:                                              ; preds = %149
  %154 = zext i8 %143 to i64
  %155 = call i32 @bcmp(ptr nonnull %137, ptr nonnull %136, i64 %154)
  %156 = icmp eq i32 %155, 0
  br i1 %156, label %157, label %220

157:                                              ; preds = %153
  %158 = sub i64 %138, %154
  store i64 %158, ptr %10, align 8, !tbaa !50
  %159 = getelementptr inbounds i8, ptr %137, i64 %154
  %160 = sub i64 %139, %154
  store i64 %160, ptr %11, align 8, !tbaa !50
  %161 = getelementptr inbounds i8, ptr %136, i64 %154
  %162 = icmp ne i64 %158, 0
  %163 = icmp ne i64 %160, 0
  %164 = select i1 %162, i1 %163, i1 false
  br i1 %164, label %135, label %165, !llvm.loop !147

165:                                              ; preds = %157, %128
  %166 = phi i64 [ %130, %128 ], [ %158, %157 ]
  %167 = phi i64 [ %131, %128 ], [ %160, %157 ]
  %168 = phi ptr [ %92, %128 ], [ %159, %157 ]
  %169 = phi ptr [ %129, %128 ], [ %161, %157 ]
  %170 = icmp eq i64 %166, 0
  br i1 %170, label %171, label %181

171:                                              ; preds = %165
  br i1 %3, label %172, label %178

172:                                              ; preds = %171
  %173 = load i8, ptr %56, align 1, !tbaa !38
  %174 = zext i8 %173 to i64
  %175 = getelementptr inbounds [0 x i8], ptr @PL_utf8skip, i64 0, i64 %174
  %176 = load i8, ptr %175, align 1, !tbaa !38
  %177 = zext i8 %176 to i64
  br label %178

178:                                              ; preds = %171, %172
  %179 = phi i64 [ %177, %172 ], [ 1, %171 ]
  %180 = getelementptr inbounds i8, ptr %56, i64 %179
  br label %181

181:                                              ; preds = %178, %165
  %182 = phi ptr [ %180, %178 ], [ %56, %165 ]
  %183 = icmp eq i64 %167, 0
  br i1 %183, label %184, label %194

184:                                              ; preds = %181
  br i1 %7, label %185, label %191

185:                                              ; preds = %184
  %186 = load i8, ptr %55, align 1, !tbaa !38
  %187 = zext i8 %186 to i64
  %188 = getelementptr inbounds [0 x i8], ptr @PL_utf8skip, i64 0, i64 %187
  %189 = load i8, ptr %188, align 1, !tbaa !38
  %190 = zext i8 %189 to i64
  br label %191

191:                                              ; preds = %184, %185
  %192 = phi i64 [ %190, %185 ], [ 1, %184 ]
  %193 = getelementptr inbounds i8, ptr %55, i64 %192
  br label %194

194:                                              ; preds = %191, %181
  %195 = phi ptr [ %193, %191 ], [ %55, %181 ]
  %196 = icmp ult ptr %182, %42
  %197 = icmp ult ptr %195, %44
  %198 = select i1 %196, i1 %197, i1 false
  br i1 %198, label %51, label %199, !llvm.loop !148

199:                                              ; preds = %194
  %200 = icmp ne i64 %167, 0
  %201 = icmp ne i64 %166, 0
  br label %202

202:                                              ; preds = %199, %36
  %203 = phi i1 [ false, %36 ], [ %200, %199 ]
  %204 = phi i1 [ false, %36 ], [ %201, %199 ]
  %205 = phi ptr [ %0, %36 ], [ %182, %199 ]
  %206 = phi ptr [ %4, %36 ], [ %195, %199 ]
  %207 = icmp eq ptr %205, %32
  %208 = or i1 %41, %207
  br i1 %208, label %209, label %220

209:                                              ; preds = %202
  br i1 %43, label %214, label %210

210:                                              ; preds = %209
  %211 = icmp ne ptr %206, %40
  %212 = or i1 %211, %204
  %213 = select i1 %212, i1 true, i1 %203
  br i1 %213, label %220, label %216

214:                                              ; preds = %209
  %215 = select i1 %204, i1 true, i1 %203
  br i1 %215, label %220, label %216

216:                                              ; preds = %214, %210
  br i1 %25, label %218, label %217

217:                                              ; preds = %216
  store ptr %205, ptr %1, align 8, !tbaa !53
  br label %218

218:                                              ; preds = %217, %216
  br i1 %33, label %220, label %219

219:                                              ; preds = %218
  store ptr %206, ptr %5, align 8, !tbaa !53
  br label %220

220:                                              ; preds = %110, %73, %135, %153, %149, %214, %210, %218, %219, %202
  %221 = phi i32 [ 0, %202 ], [ 0, %214 ], [ 0, %210 ], [ 1, %219 ], [ 1, %218 ], [ 0, %149 ], [ 0, %153 ], [ 0, %135 ], [ 0, %73 ], [ 0, %110 ]
  call void @llvm.lifetime.end.p0(i64 14, ptr nonnull %13) #22
  call void @llvm.lifetime.end.p0(i64 14, ptr nonnull %12) #22
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %11) #22
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %10) #22
  ret i32 %221
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @Perl_uvuni_to_utf8(ptr noundef %0, i64 noundef %1) local_unnamed_addr #3 !prof !47 {
  %3 = tail call ptr @Perl_uvoffuni_to_utf8_flags(ptr noundef %0, i64 noundef %1, i64 noundef 0) #21
  ret ptr %3
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i64 @Perl_utf8n_to_uvuni(ptr noundef %0, i64 noundef %1, ptr noundef %2, i32 noundef %3) local_unnamed_addr #3 !prof !47 {
  %5 = tail call i64 @Perl_utf8n_to_uvchr(ptr noundef %0, i64 noundef %1, ptr noundef %2, i32 noundef %3) #21
  ret i64 %5
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @Perl_uvuni_to_utf8_flags(ptr noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #3 !prof !47 {
  %4 = tail call ptr @Perl_uvoffuni_to_utf8_flags(ptr noundef %0, i64 noundef %1, i64 noundef %2) #21
  ret ptr %4
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #16

; Function Attrs: nofree nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr nocapture, ptr nocapture, i64) local_unnamed_addr #17

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #16

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare ptr @llvm.load.relative.i64(ptr, i64) #18

attributes #0 = { nofree noinline nounwind optsize memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nofree nounwind optsize willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nofree noinline norecurse nosync nounwind optsize memory(read, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nofree noinline norecurse nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #11 = { mustprogress nofree nosync nounwind optsize willreturn memory(none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #16 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #17 = { nofree nounwind willreturn memory(argmem: read) }
attributes #18 = { nocallback nofree nosync nounwind willreturn memory(argmem: read) }
attributes #19 = { nounwind optsize willreturn memory(read) }
attributes #20 = { nounwind optsize }
attributes #21 = { optsize }
attributes #22 = { nounwind }
attributes #23 = { nounwind optsize willreturn memory(none) }

!llvm.module.flags = !{!0, !29, !30, !31, !32, !33}
!llvm.ident = !{!34}

!0 = !{i32 1, !"ProfileSummary", !1}
!1 = !{!2, !3, !4, !5, !6, !7, !8, !9, !10, !11}
!2 = !{!"ProfileFormat", !"InstrProf"}
!3 = !{!"TotalCount", i64 43491972207}
!4 = !{!"MaxCount", i64 4342352624}
!5 = !{!"MaxInternalCount", i64 4342352624}
!6 = !{!"MaxFunctionCount", i64 3033009960}
!7 = !{!"NumCounts", i64 40262}
!8 = !{!"NumFunctions", i64 2170}
!9 = !{!"IsPartialProfile", i64 0}
!10 = !{!"PartialProfileRatio", double 0.000000e+00}
!11 = !{!"DetailedSummary", !12}
!12 = !{!13, !14, !15, !16, !17, !18, !19, !20, !21, !22, !23, !24, !25, !26, !27, !28}
!13 = !{i32 10000, i64 4342352624, i32 1}
!14 = !{i32 100000, i64 3033009960, i32 2}
!15 = !{i32 200000, i64 2317897115, i32 3}
!16 = !{i32 300000, i64 528717179, i32 7}
!17 = !{i32 400000, i64 462639867, i32 16}
!18 = !{i32 500000, i64 457545339, i32 26}
!19 = !{i32 600000, i64 423510107, i32 35}
!20 = !{i32 700000, i64 420555191, i32 45}
!21 = !{i32 800000, i64 220071415, i32 59}
!22 = !{i32 900000, i64 40456743, i32 99}
!23 = !{i32 950000, i64 21523500, i32 170}
!24 = !{i32 990000, i64 1957094, i32 384}
!25 = !{i32 999000, i64 104162, i32 1106}
!26 = !{i32 999900, i64 11423, i32 2014}
!27 = !{i32 999990, i64 757, i32 3020}
!28 = !{i32 999999, i64 64, i32 4611}
!29 = !{i32 1, !"wchar_size", i32 4}
!30 = !{i32 7, !"openmp", i32 51}
!31 = !{i32 8, !"PIC Level", i32 2}
!32 = !{i32 7, !"PIE Level", i32 2}
!33 = !{i32 7, !"uwtable", i32 2}
!34 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!35 = !{!"function_entry_count", i64 1}
!36 = !{!"branch_weights", i32 1, i32 2}
!37 = !{!"branch_weights", i32 127, i32 1}
!38 = !{!39, !39, i64 0}
!39 = !{!"omnipotent char", !40, i64 0}
!40 = !{!"Simple C/C++ TBAA"}
!41 = !{!"branch_weights", i32 17, i32 1}
!42 = !{!"branch_weights", i32 961, i32 127}
!43 = distinct !{!43, !44}
!44 = !{!"llvm.loop.mustprogress"}
!45 = !{!"function_entry_count", i64 3}
!46 = !{!"branch_weights", i32 4, i32 1}
!47 = !{!"function_entry_count", i64 0}
!48 = distinct !{!48, !44}
!49 = !{!"utf8.c:S__is_utf8_char_slow"}
!50 = !{!51, !51, i64 0}
!51 = !{!"long", !39, i64 0}
!52 = distinct !{!52, !44}
!53 = !{!54, !54, i64 0}
!54 = !{!"any pointer", !39, i64 0}
!55 = distinct !{!55, !44}
!56 = distinct !{!56, !44}
!57 = distinct !{!57, !44}
!58 = distinct !{!58, !44}
!59 = distinct !{!59, !44}
!60 = distinct !{!60, !44}
!61 = distinct !{!61, !44}
!62 = distinct !{!62, !44}
!63 = !{!64, !64, i64 0}
!64 = !{!"_Bool", !39, i64 0}
!65 = !{i8 0, i8 2}
!66 = !{}
!67 = distinct !{!67, !44}
!68 = distinct !{!68, !44}
!69 = distinct !{!69, !44}
!70 = !{!"utf8.c:S_append_utf8_from_native_byte"}
!71 = distinct !{!71, !44}
!72 = !{!73, !73, i64 0}
!73 = !{!"int", !39, i64 0}
!74 = distinct !{!74, !44}
!75 = !{!"utf8.c:S_is_utf8_common"}
!76 = !{i64 0, i64 4294967296}
!77 = !{!78, !54, i64 24}
!78 = !{!"stackinfo", !54, i64 0, !54, i64 8, !54, i64 16, !54, i64 24, !73, i64 32, !73, i64 36, !73, i64 40, !73, i64 44}
!79 = !{!78, !54, i64 16}
!80 = !{!78, !73, i64 40}
!81 = !{!78, !73, i64 32}
!82 = !{!78, !54, i64 0}
!83 = !{!84, !54, i64 0}
!84 = !{!"av", !54, i64 0, !73, i64 8, !73, i64 12, !39, i64 16}
!85 = !{!86, !51, i64 16}
!86 = !{!"xpvav", !54, i64 0, !39, i64 8, !51, i64 16, !51, i64 24, !54, i64 32}
!87 = !{!86, !51, i64 24}
!88 = !{!89, !39, i64 239}
!89 = !{!"yy_parser", !54, i64 0, !39, i64 8, !73, i64 16, !73, i64 20, !73, i64 24, !73, i64 28, !54, i64 32, !54, i64 40, !73, i64 48, !73, i64 52, !54, i64 56, !54, i64 64, !39, i64 72, !39, i64 73, !39, i64 74, !39, i64 75, !73, i64 76, !54, i64 80, !54, i64 88, !54, i64 96, !90, i64 104, !90, i64 106, !73, i64 108, !54, i64 112, !73, i64 120, !73, i64 124, !39, i64 128, !39, i64 129, !64, i64 130, !64, i64 131, !73, i64 132, !91, i64 136, !54, i64 160, !54, i64 168, !54, i64 176, !54, i64 184, !54, i64 192, !54, i64 200, !54, i64 208, !54, i64 216, !54, i64 224, !73, i64 232, !90, i64 236, !39, i64 238, !39, i64 239, !54, i64 240, !54, i64 248, !54, i64 256, !39, i64 264, !39, i64 272, !39, i64 312, !73, i64 332, !54, i64 336, !39, i64 344, !73, i64 600, !73, i64 604, !39, i64 608, !39, i64 609, !73, i64 610, !73, i64 610, !73, i64 610, !73, i64 610}
!90 = !{!"short", !39, i64 0}
!91 = !{!"_sublex_info", !39, i64 0, !90, i64 2, !54, i64 8, !54, i64 16}
!92 = !{!93, !54, i64 0}
!93 = !{!"gp", !54, i64 0, !54, i64 8, !54, i64 16, !73, i64 24, !73, i64 28, !54, i64 32, !54, i64 40, !54, i64 48, !54, i64 56, !73, i64 64, !73, i64 67, !54, i64 72}
!94 = !{!95, !73, i64 12}
!95 = !{!"sv", !54, i64 0, !73, i64 8, !73, i64 12, !39, i64 16}
!96 = !{!95, !54, i64 0}
!97 = !{!98, !51, i64 16}
!98 = !{!"xpv", !54, i64 0, !39, i64 8, !51, i64 16, !39, i64 24}
!99 = !{i64 -1, i64 2305843009213693952}
!100 = !{!95, !73, i64 8}
!101 = !{!102, !73, i64 12}
!102 = !{!"hv", !54, i64 0, !73, i64 8, !73, i64 12, !39, i64 16}
!103 = !{i64 0, i64 925}
!104 = !{!"utf8.c:S_to_lower_latin1"}
!105 = !{!"function_entry_count", i64 372172}
!106 = !{!"branch_weights", i32 1, i32 372173}
!107 = !{!"branch_weights", i32 5815, i32 -2130699889}
!108 = !{!"branch_weights", i32 -2147483648, i32 0}
!109 = !{i64 0, i64 957}
!110 = distinct !{!110, !44}
!111 = !{!"utf8.c:S_check_locale_boundary_crossing"}
!112 = distinct !{!112, !44}
!113 = !{!"utf8.c:S_SvREFCNT_inc"}
!114 = !{!"utf8.c:S_SvREFCNT_dec"}
!115 = distinct !{!115, !44}
!116 = distinct !{!116, !44}
!117 = distinct !{!117, !44}
!118 = distinct !{!118, !44}
!119 = distinct !{!119, !44}
!120 = !{!"utf8.c:S__invlist_len"}
!121 = !{!"utf8.c:S_get_invlist_offset_addr"}
!122 = !{!"utf8.c:S__invlist_contains_cp"}
!123 = !{!"utf8.c:S_swatch_get"}
!124 = distinct !{!124, !44}
!125 = distinct !{!125, !44}
!126 = distinct !{!126, !44}
!127 = distinct !{!127, !44}
!128 = distinct !{!128, !44}
!129 = distinct !{!129, !44}
!130 = distinct !{!130, !44}
!131 = distinct !{!131, !44}
!132 = distinct !{!132, !44}
!133 = distinct !{!133, !44}
!134 = distinct !{!134, !44}
!135 = distinct !{!135, !44}
!136 = !{!"utf8.c:S_swash_scan_list_line"}
!137 = distinct !{!137, !44}
!138 = distinct !{!138, !44}
!139 = distinct !{!139, !44}
!140 = distinct !{!140, !44}
!141 = distinct !{!141, !44}
!142 = distinct !{!142, !44}
!143 = !{!"utf8.c:S_av_top_index"}
!144 = distinct !{!144, !44}
!145 = distinct !{!145, !44}
!146 = !{!"utf8.c:S_ReANY"}
!147 = distinct !{!147, !44}
!148 = distinct !{!148, !44}
