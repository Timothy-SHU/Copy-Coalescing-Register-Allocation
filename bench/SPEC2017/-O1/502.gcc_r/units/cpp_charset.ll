; ModuleID = 'cpp_charset.c'
source_filename = "cpp_charset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.conversion = type { ptr, ptr, ptr }
%struct.anon.3 = type { i8, i8, i16 }
%struct.cset_converter = type { ptr, ptr, i32 }
%struct.cpp_reader = type { ptr, ptr, %struct.lexer_state, ptr, i32, ptr, ptr, ptr, %struct.cpp_context, ptr, ptr, %struct.cpp_token, i32, i8, ptr, ptr, %struct.cpp_dir, ptr, ptr, ptr, ptr, ptr, ptr, %struct.obstack, i8, i8, ptr, ptr, i8, ptr, %struct.tokenrun, ptr, i32, i32, ptr, i32, %struct.cset_converter, %struct.cset_converter, %struct.cset_converter, %struct.cset_converter, %struct.cset_converter, ptr, ptr, %struct.cpp_token, %struct.cpp_token, ptr, %struct.obstack, %struct.obstack, ptr, %struct.cpp_callbacks, ptr, ptr, ptr, %struct.cpp_options, %struct.spec_nodes, i8, %struct.anon.2, ptr, ptr, ptr, ptr, i32, %struct.cpp_comment_table, ptr }
%struct.lexer_state = type { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, i8, i8 }
%struct.cpp_context = type { ptr, ptr, %union.anon, ptr, ptr, i8 }
%union.anon = type { %struct.anon }
%struct.anon = type { %union.utoken, %union.utoken }
%union.utoken = type { ptr }
%struct.cpp_dir = type { ptr, ptr, i32, i8, i8, ptr, ptr, ptr, i64, i64 }
%struct.tokenrun = type { ptr, ptr, ptr, ptr }
%struct.cpp_token = type { i32, i8, i16, %union.cpp_token_u }
%union.cpp_token_u = type { %struct.cpp_string }
%struct.cpp_string = type { i32, ptr }
%struct.obstack = type { i64, ptr, ptr, ptr, ptr, i64, i32, ptr, ptr, ptr, i8 }
%struct.cpp_callbacks = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.cpp_options = type { i32, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, ptr, ptr, ptr, i32, i8, i8, %struct.anon.1, i64, i64, i64, i64, i8, i8, i8, i8, i8 }
%struct.anon.1 = type { i32, i8, i8, i8, i8 }
%struct.spec_nodes = type { ptr, ptr, ptr, ptr }
%struct.anon.2 = type { ptr, ptr, ptr, i32 }
%struct.cpp_comment_table = type { ptr, i32, i32 }
%struct._cpp_strbuf = type { ptr, i64, i64 }
%struct.normalize_state = type { i32, i8, i32 }

@.str = private unnamed_addr constant [9 x i8] c"UTF-32BE\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"UTF-32LE\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"UTF-16BE\00", align 1
@.str.3 = private unnamed_addr constant [9 x i8] c"UTF-16LE\00", align 1
@.str.4 = private unnamed_addr constant [6 x i8] c"UTF-8\00", align 1
@.str.5 = private unnamed_addr constant [58 x i8] c"character 0x%lx is not in the basic source character set\0A\00", align 1
@.str.6 = private unnamed_addr constant [38 x i8] c"converting to execution character set\00", align 1
@.str.7 = private unnamed_addr constant [58 x i8] c"character 0x%lx is not unibyte in execution character set\00", align 1
@.str.8 = private unnamed_addr constant [56 x i8] c"universal character names are only valid in C++ and C99\00", align 1
@.str.9 = private unnamed_addr constant [51 x i8] c"the meaning of '\\%c' is different in traditional C\00", align 1
@.str.10 = private unnamed_addr constant [32 x i8] c"In _cpp_valid_ucn but not a UCN\00", align 1
@_sch_istable = external local_unnamed_addr constant [256 x i16], align 16
@_hex_value = external local_unnamed_addr constant [256 x i8], align 16
@.str.11 = private unnamed_addr constant [41 x i8] c"incomplete universal character name %.*s\00", align 1
@.str.12 = private unnamed_addr constant [40 x i8] c"%.*s is not a valid universal character\00", align 1
@.str.13 = private unnamed_addr constant [28 x i8] c"'$' in identifier or number\00", align 1
@.str.14 = private unnamed_addr constant [55 x i8] c"universal character %.*s is not valid in an identifier\00", align 1
@.str.15 = private unnamed_addr constant [68 x i8] c"universal character %.*s is not valid at the start of an identifier\00", align 1
@.str.16 = private unnamed_addr constant [25 x i8] c"empty character constant\00", align 1
@.str.17 = private unnamed_addr constant [39 x i8] c"converting UCN to source character set\00", align 1
@.str.18 = private unnamed_addr constant [28 x i8] c"failure to convert %s to %s\00", align 1
@conversion_tab = internal unnamed_addr constant [8 x %struct.conversion] [%struct.conversion { ptr @.str.22, ptr @convert_utf8_utf32, ptr null }, %struct.conversion { ptr @.str.23, ptr @convert_utf8_utf32, ptr inttoptr (i64 1 to ptr) }, %struct.conversion { ptr @.str.24, ptr @convert_utf8_utf16, ptr null }, %struct.conversion { ptr @.str.25, ptr @convert_utf8_utf16, ptr inttoptr (i64 1 to ptr) }, %struct.conversion { ptr @.str.26, ptr @convert_utf32_utf8, ptr null }, %struct.conversion { ptr @.str.27, ptr @convert_utf32_utf8, ptr inttoptr (i64 1 to ptr) }, %struct.conversion { ptr @.str.28, ptr @convert_utf16_utf8, ptr null }, %struct.conversion { ptr @.str.29, ptr @convert_utf16_utf8, ptr inttoptr (i64 1 to ptr) }], align 16
@.str.20 = private unnamed_addr constant [48 x i8] c"conversion from %s to %s not supported by iconv\00", align 1
@.str.22 = private unnamed_addr constant [15 x i8] c"UTF-8/UTF-32LE\00", align 1
@.str.23 = private unnamed_addr constant [15 x i8] c"UTF-8/UTF-32BE\00", align 1
@.str.24 = private unnamed_addr constant [15 x i8] c"UTF-8/UTF-16LE\00", align 1
@.str.25 = private unnamed_addr constant [15 x i8] c"UTF-8/UTF-16BE\00", align 1
@.str.26 = private unnamed_addr constant [15 x i8] c"UTF-32LE/UTF-8\00", align 1
@.str.27 = private unnamed_addr constant [15 x i8] c"UTF-32BE/UTF-8\00", align 1
@.str.28 = private unnamed_addr constant [15 x i8] c"UTF-16LE/UTF-8\00", align 1
@.str.29 = private unnamed_addr constant [15 x i8] c"UTF-16BE/UTF-8\00", align 1
@one_utf8_to_cppchar.masks = internal unnamed_addr constant [6 x i8] c"\7F\1F\0F\07\03\01", align 1
@ucnranges = internal unnamed_addr constant [747 x %struct.anon.3] [%struct.anon.3 { i8 56, i8 0, i16 169 }, %struct.anon.3 { i8 25, i8 0, i16 170 }, %struct.anon.3 { i8 56, i8 0, i16 180 }, %struct.anon.3 { i8 25, i8 0, i16 181 }, %struct.anon.3 { i8 56, i8 0, i16 182 }, %struct.anon.3 { i8 57, i8 0, i16 183 }, %struct.anon.3 { i8 24, i8 0, i16 185 }, %struct.anon.3 { i8 25, i8 0, i16 186 }, %struct.anon.3 { i8 56, i8 0, i16 191 }, %struct.anon.3 { i8 61, i8 0, i16 214 }, %struct.anon.3 { i8 56, i8 0, i16 215 }, %struct.anon.3 { i8 61, i8 0, i16 246 }, %struct.anon.3 { i8 56, i8 0, i16 247 }, %struct.anon.3 { i8 61, i8 0, i16 305 }, %struct.anon.3 { i8 29, i8 0, i16 307 }, %struct.anon.3 { i8 61, i8 0, i16 318 }, %struct.anon.3 { i8 29, i8 0, i16 320 }, %struct.anon.3 { i8 61, i8 0, i16 328 }, %struct.anon.3 { i8 29, i8 0, i16 329 }, %struct.anon.3 { i8 61, i8 0, i16 382 }, %struct.anon.3 { i8 29, i8 0, i16 383 }, %struct.anon.3 { i8 61, i8 0, i16 451 }, %struct.anon.3 { i8 29, i8 0, i16 460 }, %struct.anon.3 { i8 61, i8 0, i16 496 }, %struct.anon.3 { i8 29, i8 0, i16 499 }, %struct.anon.3 { i8 61, i8 0, i16 501 }, %struct.anon.3 { i8 56, i8 0, i16 505 }, %struct.anon.3 { i8 61, i8 0, i16 535 }, %struct.anon.3 { i8 56, i8 0, i16 591 }, %struct.anon.3 { i8 61, i8 0, i16 680 }, %struct.anon.3 { i8 56, i8 0, i16 687 }, %struct.anon.3 { i8 25, i8 0, i16 696 }, %struct.anon.3 { i8 56, i8 0, i16 698 }, %struct.anon.3 { i8 57, i8 0, i16 699 }, %struct.anon.3 { i8 56, i8 0, i16 700 }, %struct.anon.3 { i8 57, i8 0, i16 705 }, %struct.anon.3 { i8 56, i8 0, i16 719 }, %struct.anon.3 { i8 57, i8 0, i16 721 }, %struct.anon.3 { i8 56, i8 0, i16 735 }, %struct.anon.3 { i8 25, i8 0, i16 740 }, %struct.anon.3 { i8 56, i8 0, i16 889 }, %struct.anon.3 { i8 25, i8 0, i16 890 }, %struct.anon.3 { i8 56, i8 0, i16 899 }, %struct.anon.3 { i8 28, i8 0, i16 900 }, %struct.anon.3 { i8 24, i8 0, i16 901 }, %struct.anon.3 { i8 57, i8 0, i16 902 }, %struct.anon.3 { i8 8, i8 0, i16 903 }, %struct.anon.3 { i8 61, i8 0, i16 906 }, %struct.anon.3 { i8 56, i8 0, i16 907 }, %struct.anon.3 { i8 61, i8 0, i16 908 }, %struct.anon.3 { i8 56, i8 0, i16 909 }, %struct.anon.3 { i8 61, i8 0, i16 929 }, %struct.anon.3 { i8 56, i8 0, i16 930 }, %struct.anon.3 { i8 61, i8 0, i16 974 }, %struct.anon.3 { i8 56, i8 0, i16 975 }, %struct.anon.3 { i8 29, i8 0, i16 982 }, %struct.anon.3 { i8 56, i8 0, i16 985 }, %struct.anon.3 { i8 61, i8 0, i16 986 }, %struct.anon.3 { i8 56, i8 0, i16 987 }, %struct.anon.3 { i8 61, i8 0, i16 988 }, %struct.anon.3 { i8 56, i8 0, i16 989 }, %struct.anon.3 { i8 61, i8 0, i16 990 }, %struct.anon.3 { i8 56, i8 0, i16 991 }, %struct.anon.3 { i8 61, i8 0, i16 992 }, %struct.anon.3 { i8 56, i8 0, i16 993 }, %struct.anon.3 { i8 61, i8 0, i16 1007 }, %struct.anon.3 { i8 29, i8 0, i16 1010 }, %struct.anon.3 { i8 61, i8 0, i16 1011 }, %struct.anon.3 { i8 24, i8 0, i16 1024 }, %struct.anon.3 { i8 61, i8 0, i16 1036 }, %struct.anon.3 { i8 60, i8 0, i16 1037 }, %struct.anon.3 { i8 57, i8 0, i16 1038 }, %struct.anon.3 { i8 61, i8 0, i16 1103 }, %struct.anon.3 { i8 56, i8 0, i16 1104 }, %struct.anon.3 { i8 61, i8 0, i16 1116 }, %struct.anon.3 { i8 56, i8 0, i16 1117 }, %struct.anon.3 { i8 61, i8 0, i16 1153 }, %struct.anon.3 { i8 56, i8 0, i16 1167 }, %struct.anon.3 { i8 61, i8 0, i16 1220 }, %struct.anon.3 { i8 56, i8 0, i16 1222 }, %struct.anon.3 { i8 61, i8 0, i16 1224 }, %struct.anon.3 { i8 56, i8 0, i16 1226 }, %struct.anon.3 { i8 61, i8 0, i16 1228 }, %struct.anon.3 { i8 56, i8 0, i16 1231 }, %struct.anon.3 { i8 61, i8 0, i16 1259 }, %struct.anon.3 { i8 56, i8 0, i16 1261 }, %struct.anon.3 { i8 61, i8 0, i16 1269 }, %struct.anon.3 { i8 56, i8 0, i16 1271 }, %struct.anon.3 { i8 61, i8 0, i16 1273 }, %struct.anon.3 { i8 56, i8 0, i16 1328 }, %struct.anon.3 { i8 61, i8 0, i16 1366 }, %struct.anon.3 { i8 56, i8 0, i16 1368 }, %struct.anon.3 { i8 57, i8 0, i16 1369 }, %struct.anon.3 { i8 56, i8 0, i16 1376 }, %struct.anon.3 { i8 61, i8 0, i16 1414 }, %struct.anon.3 { i8 29, i8 0, i16 1415 }, %struct.anon.3 { i8 56, i8 0, i16 1455 }, %struct.anon.3 { i8 57, i8 10, i16 1456 }, %struct.anon.3 { i8 57, i8 11, i16 1457 }, %struct.anon.3 { i8 57, i8 12, i16 1458 }, %struct.anon.3 { i8 57, i8 13, i16 1459 }, %struct.anon.3 { i8 57, i8 14, i16 1460 }, %struct.anon.3 { i8 57, i8 15, i16 1461 }, %struct.anon.3 { i8 57, i8 16, i16 1462 }, %struct.anon.3 { i8 57, i8 17, i16 1463 }, %struct.anon.3 { i8 57, i8 18, i16 1464 }, %struct.anon.3 { i8 57, i8 19, i16 1465 }, %struct.anon.3 { i8 56, i8 0, i16 1466 }, %struct.anon.3 { i8 57, i8 20, i16 1467 }, %struct.anon.3 { i8 57, i8 21, i16 1468 }, %struct.anon.3 { i8 57, i8 22, i16 1469 }, %struct.anon.3 { i8 56, i8 0, i16 1470 }, %struct.anon.3 { i8 57, i8 23, i16 1471 }, %struct.anon.3 { i8 56, i8 0, i16 1472 }, %struct.anon.3 { i8 57, i8 24, i16 1473 }, %struct.anon.3 { i8 57, i8 25, i16 1474 }, %struct.anon.3 { i8 56, i8 0, i16 1487 }, %struct.anon.3 { i8 61, i8 0, i16 1514 }, %struct.anon.3 { i8 56, i8 0, i16 1519 }, %struct.anon.3 { i8 61, i8 0, i16 1522 }, %struct.anon.3 { i8 60, i8 0, i16 1524 }, %struct.anon.3 { i8 56, i8 0, i16 1568 }, %struct.anon.3 { i8 61, i8 0, i16 1594 }, %struct.anon.3 { i8 56, i8 0, i16 1599 }, %struct.anon.3 { i8 61, i8 0, i16 1610 }, %struct.anon.3 { i8 61, i8 27, i16 1611 }, %struct.anon.3 { i8 61, i8 28, i16 1612 }, %struct.anon.3 { i8 61, i8 29, i16 1613 }, %struct.anon.3 { i8 61, i8 30, i16 1614 }, %struct.anon.3 { i8 61, i8 31, i16 1615 }, %struct.anon.3 { i8 61, i8 32, i16 1616 }, %struct.anon.3 { i8 61, i8 33, i16 1617 }, %struct.anon.3 { i8 61, i8 34, i16 1618 }, %struct.anon.3 { i8 120, i8 0, i16 1631 }, %struct.anon.3 { i8 59, i8 0, i16 1641 }, %struct.anon.3 { i8 56, i8 0, i16 1647 }, %struct.anon.3 { i8 61, i8 0, i16 1652 }, %struct.anon.3 { i8 29, i8 0, i16 1656 }, %struct.anon.3 { i8 61, i8 0, i16 1719 }, %struct.anon.3 { i8 56, i8 0, i16 1721 }, %struct.anon.3 { i8 61, i8 0, i16 1726 }, %struct.anon.3 { i8 56, i8 0, i16 1727 }, %struct.anon.3 { i8 61, i8 0, i16 1742 }, %struct.anon.3 { i8 56, i8 0, i16 1743 }, %struct.anon.3 { i8 57, i8 0, i16 1749 }, %struct.anon.3 { i8 57, i8 -26, i16 1750 }, %struct.anon.3 { i8 57, i8 -26, i16 1751 }, %struct.anon.3 { i8 57, i8 -26, i16 1752 }, %struct.anon.3 { i8 57, i8 -26, i16 1753 }, %struct.anon.3 { i8 57, i8 -26, i16 1754 }, %struct.anon.3 { i8 57, i8 -26, i16 1755 }, %struct.anon.3 { i8 57, i8 -26, i16 1756 }, %struct.anon.3 { i8 56, i8 0, i16 1764 }, %struct.anon.3 { i8 61, i8 0, i16 1766 }, %struct.anon.3 { i8 61, i8 -26, i16 1767 }, %struct.anon.3 { i8 57, i8 -26, i16 1768 }, %struct.anon.3 { i8 56, i8 0, i16 1769 }, %struct.anon.3 { i8 57, i8 -36, i16 1770 }, %struct.anon.3 { i8 57, i8 -26, i16 1771 }, %struct.anon.3 { i8 57, i8 -26, i16 1772 }, %struct.anon.3 { i8 57, i8 -36, i16 1773 }, %struct.anon.3 { i8 56, i8 0, i16 1775 }, %struct.anon.3 { i8 59, i8 0, i16 1785 }, %struct.anon.3 { i8 56, i8 0, i16 2304 }, %struct.anon.3 { i8 57, i8 0, i16 2307 }, %struct.anon.3 { i8 56, i8 0, i16 2308 }, %struct.anon.3 { i8 61, i8 0, i16 2361 }, %struct.anon.3 { i8 56, i8 0, i16 2364 }, %struct.anon.3 { i8 57, i8 0, i16 2380 }, %struct.anon.3 { i8 57, i8 9, i16 2381 }, %struct.anon.3 { i8 56, i8 0, i16 2383 }, %struct.anon.3 { i8 57, i8 0, i16 2384 }, %struct.anon.3 { i8 57, i8 -26, i16 2385 }, %struct.anon.3 { i8 57, i8 -36, i16 2386 }, %struct.anon.3 { i8 56, i8 0, i16 2391 }, %struct.anon.3 { i8 13, i8 0, i16 2399 }, %struct.anon.3 { i8 61, i8 0, i16 2402 }, %struct.anon.3 { i8 57, i8 0, i16 2403 }, %struct.anon.3 { i8 56, i8 0, i16 2405 }, %struct.anon.3 { i8 59, i8 0, i16 2415 }, %struct.anon.3 { i8 56, i8 0, i16 2432 }, %struct.anon.3 { i8 57, i8 0, i16 2435 }, %struct.anon.3 { i8 56, i8 0, i16 2436 }, %struct.anon.3 { i8 61, i8 0, i16 2444 }, %struct.anon.3 { i8 56, i8 0, i16 2446 }, %struct.anon.3 { i8 61, i8 0, i16 2448 }, %struct.anon.3 { i8 56, i8 0, i16 2450 }, %struct.anon.3 { i8 61, i8 0, i16 2472 }, %struct.anon.3 { i8 56, i8 0, i16 2473 }, %struct.anon.3 { i8 61, i8 0, i16 2480 }, %struct.anon.3 { i8 56, i8 0, i16 2481 }, %struct.anon.3 { i8 61, i8 0, i16 2482 }, %struct.anon.3 { i8 56, i8 0, i16 2485 }, %struct.anon.3 { i8 61, i8 0, i16 2489 }, %struct.anon.3 { i8 56, i8 0, i16 2493 }, %struct.anon.3 { i8 121, i8 0, i16 2494 }, %struct.anon.3 { i8 57, i8 0, i16 2500 }, %struct.anon.3 { i8 56, i8 0, i16 2502 }, %struct.anon.3 { i8 57, i8 0, i16 2504 }, %struct.anon.3 { i8 56, i8 0, i16 2506 }, %struct.anon.3 { i8 49, i8 0, i16 2507 }, %struct.anon.3 { i8 57, i8 0, i16 2508 }, %struct.anon.3 { i8 57, i8 9, i16 2509 }, %struct.anon.3 { i8 56, i8 0, i16 2523 }, %struct.anon.3 { i8 13, i8 0, i16 2525 }, %struct.anon.3 { i8 56, i8 0, i16 2526 }, %struct.anon.3 { i8 13, i8 0, i16 2527 }, %struct.anon.3 { i8 61, i8 0, i16 2529 }, %struct.anon.3 { i8 57, i8 0, i16 2531 }, %struct.anon.3 { i8 56, i8 0, i16 2533 }, %struct.anon.3 { i8 59, i8 0, i16 2543 }, %struct.anon.3 { i8 61, i8 0, i16 2545 }, %struct.anon.3 { i8 56, i8 0, i16 2561 }, %struct.anon.3 { i8 57, i8 0, i16 2562 }, %struct.anon.3 { i8 56, i8 0, i16 2564 }, %struct.anon.3 { i8 61, i8 0, i16 2570 }, %struct.anon.3 { i8 56, i8 0, i16 2574 }, %struct.anon.3 { i8 61, i8 0, i16 2576 }, %struct.anon.3 { i8 56, i8 0, i16 2578 }, %struct.anon.3 { i8 61, i8 0, i16 2600 }, %struct.anon.3 { i8 56, i8 0, i16 2601 }, %struct.anon.3 { i8 61, i8 0, i16 2608 }, %struct.anon.3 { i8 56, i8 0, i16 2609 }, %struct.anon.3 { i8 61, i8 0, i16 2610 }, %struct.anon.3 { i8 13, i8 0, i16 2611 }, %struct.anon.3 { i8 56, i8 0, i16 2612 }, %struct.anon.3 { i8 61, i8 0, i16 2613 }, %struct.anon.3 { i8 13, i8 0, i16 2614 }, %struct.anon.3 { i8 56, i8 0, i16 2615 }, %struct.anon.3 { i8 61, i8 0, i16 2617 }, %struct.anon.3 { i8 56, i8 0, i16 2621 }, %struct.anon.3 { i8 57, i8 0, i16 2626 }, %struct.anon.3 { i8 56, i8 0, i16 2630 }, %struct.anon.3 { i8 57, i8 0, i16 2632 }, %struct.anon.3 { i8 56, i8 0, i16 2634 }, %struct.anon.3 { i8 57, i8 0, i16 2636 }, %struct.anon.3 { i8 57, i8 9, i16 2637 }, %struct.anon.3 { i8 56, i8 0, i16 2648 }, %struct.anon.3 { i8 13, i8 0, i16 2651 }, %struct.anon.3 { i8 61, i8 0, i16 2652 }, %struct.anon.3 { i8 56, i8 0, i16 2653 }, %struct.anon.3 { i8 13, i8 0, i16 2654 }, %struct.anon.3 { i8 56, i8 0, i16 2661 }, %struct.anon.3 { i8 59, i8 0, i16 2671 }, %struct.anon.3 { i8 56, i8 0, i16 2675 }, %struct.anon.3 { i8 57, i8 0, i16 2676 }, %struct.anon.3 { i8 56, i8 0, i16 2688 }, %struct.anon.3 { i8 57, i8 0, i16 2691 }, %struct.anon.3 { i8 56, i8 0, i16 2692 }, %struct.anon.3 { i8 61, i8 0, i16 2699 }, %struct.anon.3 { i8 56, i8 0, i16 2700 }, %struct.anon.3 { i8 61, i8 0, i16 2701 }, %struct.anon.3 { i8 56, i8 0, i16 2702 }, %struct.anon.3 { i8 61, i8 0, i16 2705 }, %struct.anon.3 { i8 56, i8 0, i16 2706 }, %struct.anon.3 { i8 61, i8 0, i16 2728 }, %struct.anon.3 { i8 56, i8 0, i16 2729 }, %struct.anon.3 { i8 61, i8 0, i16 2736 }, %struct.anon.3 { i8 56, i8 0, i16 2737 }, %struct.anon.3 { i8 61, i8 0, i16 2739 }, %struct.anon.3 { i8 56, i8 0, i16 2740 }, %struct.anon.3 { i8 61, i8 0, i16 2745 }, %struct.anon.3 { i8 56, i8 0, i16 2748 }, %struct.anon.3 { i8 57, i8 0, i16 2757 }, %struct.anon.3 { i8 56, i8 0, i16 2758 }, %struct.anon.3 { i8 57, i8 0, i16 2761 }, %struct.anon.3 { i8 56, i8 0, i16 2762 }, %struct.anon.3 { i8 57, i8 0, i16 2764 }, %struct.anon.3 { i8 57, i8 9, i16 2765 }, %struct.anon.3 { i8 56, i8 0, i16 2767 }, %struct.anon.3 { i8 57, i8 0, i16 2768 }, %struct.anon.3 { i8 56, i8 0, i16 2783 }, %struct.anon.3 { i8 61, i8 0, i16 2784 }, %struct.anon.3 { i8 56, i8 0, i16 2789 }, %struct.anon.3 { i8 59, i8 0, i16 2799 }, %struct.anon.3 { i8 56, i8 0, i16 2816 }, %struct.anon.3 { i8 57, i8 0, i16 2819 }, %struct.anon.3 { i8 56, i8 0, i16 2820 }, %struct.anon.3 { i8 61, i8 0, i16 2828 }, %struct.anon.3 { i8 56, i8 0, i16 2830 }, %struct.anon.3 { i8 61, i8 0, i16 2832 }, %struct.anon.3 { i8 56, i8 0, i16 2834 }, %struct.anon.3 { i8 61, i8 0, i16 2856 }, %struct.anon.3 { i8 56, i8 0, i16 2857 }, %struct.anon.3 { i8 61, i8 0, i16 2864 }, %struct.anon.3 { i8 56, i8 0, i16 2865 }, %struct.anon.3 { i8 61, i8 0, i16 2867 }, %struct.anon.3 { i8 56, i8 0, i16 2869 }, %struct.anon.3 { i8 61, i8 0, i16 2873 }, %struct.anon.3 { i8 56, i8 0, i16 2876 }, %struct.anon.3 { i8 57, i8 0, i16 2877 }, %struct.anon.3 { i8 121, i8 0, i16 2878 }, %struct.anon.3 { i8 57, i8 0, i16 2883 }, %struct.anon.3 { i8 56, i8 0, i16 2886 }, %struct.anon.3 { i8 57, i8 0, i16 2888 }, %struct.anon.3 { i8 56, i8 0, i16 2890 }, %struct.anon.3 { i8 49, i8 0, i16 2891 }, %struct.anon.3 { i8 57, i8 0, i16 2892 }, %struct.anon.3 { i8 57, i8 9, i16 2893 }, %struct.anon.3 { i8 56, i8 0, i16 2907 }, %struct.anon.3 { i8 13, i8 0, i16 2909 }, %struct.anon.3 { i8 56, i8 0, i16 2910 }, %struct.anon.3 { i8 61, i8 0, i16 2913 }, %struct.anon.3 { i8 56, i8 0, i16 2917 }, %struct.anon.3 { i8 59, i8 0, i16 2927 }, %struct.anon.3 { i8 56, i8 0, i16 2945 }, %struct.anon.3 { i8 57, i8 0, i16 2947 }, %struct.anon.3 { i8 56, i8 0, i16 2948 }, %struct.anon.3 { i8 61, i8 0, i16 2954 }, %struct.anon.3 { i8 56, i8 0, i16 2957 }, %struct.anon.3 { i8 61, i8 0, i16 2960 }, %struct.anon.3 { i8 56, i8 0, i16 2961 }, %struct.anon.3 { i8 61, i8 0, i16 2965 }, %struct.anon.3 { i8 56, i8 0, i16 2968 }, %struct.anon.3 { i8 61, i8 0, i16 2970 }, %struct.anon.3 { i8 56, i8 0, i16 2971 }, %struct.anon.3 { i8 61, i8 0, i16 2972 }, %struct.anon.3 { i8 56, i8 0, i16 2973 }, %struct.anon.3 { i8 61, i8 0, i16 2975 }, %struct.anon.3 { i8 56, i8 0, i16 2978 }, %struct.anon.3 { i8 61, i8 0, i16 2980 }, %struct.anon.3 { i8 56, i8 0, i16 2983 }, %struct.anon.3 { i8 61, i8 0, i16 2986 }, %struct.anon.3 { i8 56, i8 0, i16 2989 }, %struct.anon.3 { i8 61, i8 0, i16 2997 }, %struct.anon.3 { i8 56, i8 0, i16 2998 }, %struct.anon.3 { i8 61, i8 0, i16 3001 }, %struct.anon.3 { i8 56, i8 0, i16 3005 }, %struct.anon.3 { i8 121, i8 0, i16 3006 }, %struct.anon.3 { i8 57, i8 0, i16 3010 }, %struct.anon.3 { i8 56, i8 0, i16 3013 }, %struct.anon.3 { i8 57, i8 0, i16 3016 }, %struct.anon.3 { i8 56, i8 0, i16 3017 }, %struct.anon.3 { i8 49, i8 0, i16 3019 }, %struct.anon.3 { i8 57, i8 0, i16 3020 }, %struct.anon.3 { i8 57, i8 9, i16 3021 }, %struct.anon.3 { i8 56, i8 0, i16 3046 }, %struct.anon.3 { i8 59, i8 0, i16 3055 }, %struct.anon.3 { i8 56, i8 0, i16 3072 }, %struct.anon.3 { i8 57, i8 0, i16 3075 }, %struct.anon.3 { i8 56, i8 0, i16 3076 }, %struct.anon.3 { i8 61, i8 0, i16 3084 }, %struct.anon.3 { i8 56, i8 0, i16 3085 }, %struct.anon.3 { i8 61, i8 0, i16 3088 }, %struct.anon.3 { i8 56, i8 0, i16 3089 }, %struct.anon.3 { i8 61, i8 0, i16 3112 }, %struct.anon.3 { i8 56, i8 0, i16 3113 }, %struct.anon.3 { i8 61, i8 0, i16 3123 }, %struct.anon.3 { i8 56, i8 0, i16 3124 }, %struct.anon.3 { i8 61, i8 0, i16 3129 }, %struct.anon.3 { i8 56, i8 0, i16 3133 }, %struct.anon.3 { i8 57, i8 0, i16 3140 }, %struct.anon.3 { i8 56, i8 0, i16 3141 }, %struct.anon.3 { i8 57, i8 0, i16 3144 }, %struct.anon.3 { i8 56, i8 0, i16 3145 }, %struct.anon.3 { i8 57, i8 0, i16 3148 }, %struct.anon.3 { i8 57, i8 9, i16 3149 }, %struct.anon.3 { i8 56, i8 0, i16 3167 }, %struct.anon.3 { i8 61, i8 0, i16 3169 }, %struct.anon.3 { i8 56, i8 0, i16 3173 }, %struct.anon.3 { i8 59, i8 0, i16 3183 }, %struct.anon.3 { i8 56, i8 0, i16 3201 }, %struct.anon.3 { i8 57, i8 0, i16 3203 }, %struct.anon.3 { i8 56, i8 0, i16 3204 }, %struct.anon.3 { i8 61, i8 0, i16 3212 }, %struct.anon.3 { i8 56, i8 0, i16 3213 }, %struct.anon.3 { i8 61, i8 0, i16 3216 }, %struct.anon.3 { i8 56, i8 0, i16 3217 }, %struct.anon.3 { i8 61, i8 0, i16 3240 }, %struct.anon.3 { i8 56, i8 0, i16 3241 }, %struct.anon.3 { i8 61, i8 0, i16 3251 }, %struct.anon.3 { i8 56, i8 0, i16 3252 }, %struct.anon.3 { i8 61, i8 0, i16 3257 }, %struct.anon.3 { i8 56, i8 0, i16 3261 }, %struct.anon.3 { i8 57, i8 0, i16 3265 }, %struct.anon.3 { i8 121, i8 0, i16 3266 }, %struct.anon.3 { i8 57, i8 0, i16 3268 }, %struct.anon.3 { i8 56, i8 0, i16 3269 }, %struct.anon.3 { i8 57, i8 0, i16 3272 }, %struct.anon.3 { i8 56, i8 0, i16 3273 }, %struct.anon.3 { i8 49, i8 0, i16 3274 }, %struct.anon.3 { i8 57, i8 0, i16 3276 }, %struct.anon.3 { i8 57, i8 9, i16 3277 }, %struct.anon.3 { i8 56, i8 0, i16 3293 }, %struct.anon.3 { i8 57, i8 0, i16 3294 }, %struct.anon.3 { i8 56, i8 0, i16 3295 }, %struct.anon.3 { i8 61, i8 0, i16 3297 }, %struct.anon.3 { i8 56, i8 0, i16 3301 }, %struct.anon.3 { i8 59, i8 0, i16 3311 }, %struct.anon.3 { i8 56, i8 0, i16 3329 }, %struct.anon.3 { i8 57, i8 0, i16 3331 }, %struct.anon.3 { i8 56, i8 0, i16 3332 }, %struct.anon.3 { i8 61, i8 0, i16 3340 }, %struct.anon.3 { i8 56, i8 0, i16 3341 }, %struct.anon.3 { i8 61, i8 0, i16 3344 }, %struct.anon.3 { i8 56, i8 0, i16 3345 }, %struct.anon.3 { i8 61, i8 0, i16 3368 }, %struct.anon.3 { i8 56, i8 0, i16 3369 }, %struct.anon.3 { i8 61, i8 0, i16 3385 }, %struct.anon.3 { i8 56, i8 0, i16 3389 }, %struct.anon.3 { i8 121, i8 0, i16 3390 }, %struct.anon.3 { i8 57, i8 0, i16 3395 }, %struct.anon.3 { i8 56, i8 0, i16 3397 }, %struct.anon.3 { i8 57, i8 0, i16 3400 }, %struct.anon.3 { i8 56, i8 0, i16 3401 }, %struct.anon.3 { i8 49, i8 0, i16 3403 }, %struct.anon.3 { i8 57, i8 0, i16 3404 }, %struct.anon.3 { i8 57, i8 9, i16 3405 }, %struct.anon.3 { i8 56, i8 0, i16 3423 }, %struct.anon.3 { i8 61, i8 0, i16 3425 }, %struct.anon.3 { i8 56, i8 0, i16 3429 }, %struct.anon.3 { i8 59, i8 0, i16 3439 }, %struct.anon.3 { i8 56, i8 0, i16 3584 }, %struct.anon.3 { i8 61, i8 0, i16 3632 }, %struct.anon.3 { i8 57, i8 0, i16 3633 }, %struct.anon.3 { i8 61, i8 0, i16 3634 }, %struct.anon.3 { i8 29, i8 0, i16 3635 }, %struct.anon.3 { i8 57, i8 0, i16 3639 }, %struct.anon.3 { i8 57, i8 103, i16 3640 }, %struct.anon.3 { i8 57, i8 103, i16 3641 }, %struct.anon.3 { i8 57, i8 9, i16 3642 }, %struct.anon.3 { i8 56, i8 0, i16 3647 }, %struct.anon.3 { i8 61, i8 0, i16 3654 }, %struct.anon.3 { i8 57, i8 0, i16 3655 }, %struct.anon.3 { i8 57, i8 107, i16 3656 }, %struct.anon.3 { i8 57, i8 107, i16 3657 }, %struct.anon.3 { i8 56, i8 0, i16 3662 }, %struct.anon.3 { i8 60, i8 0, i16 3663 }, %struct.anon.3 { i8 63, i8 0, i16 3673 }, %struct.anon.3 { i8 61, i8 0, i16 3675 }, %struct.anon.3 { i8 56, i8 0, i16 3712 }, %struct.anon.3 { i8 61, i8 0, i16 3714 }, %struct.anon.3 { i8 56, i8 0, i16 3715 }, %struct.anon.3 { i8 61, i8 0, i16 3716 }, %struct.anon.3 { i8 56, i8 0, i16 3718 }, %struct.anon.3 { i8 61, i8 0, i16 3720 }, %struct.anon.3 { i8 56, i8 0, i16 3721 }, %struct.anon.3 { i8 61, i8 0, i16 3722 }, %struct.anon.3 { i8 56, i8 0, i16 3724 }, %struct.anon.3 { i8 61, i8 0, i16 3725 }, %struct.anon.3 { i8 56, i8 0, i16 3731 }, %struct.anon.3 { i8 61, i8 0, i16 3735 }, %struct.anon.3 { i8 56, i8 0, i16 3736 }, %struct.anon.3 { i8 61, i8 0, i16 3743 }, %struct.anon.3 { i8 56, i8 0, i16 3744 }, %struct.anon.3 { i8 61, i8 0, i16 3747 }, %struct.anon.3 { i8 56, i8 0, i16 3748 }, %struct.anon.3 { i8 61, i8 0, i16 3749 }, %struct.anon.3 { i8 56, i8 0, i16 3750 }, %struct.anon.3 { i8 61, i8 0, i16 3751 }, %struct.anon.3 { i8 56, i8 0, i16 3753 }, %struct.anon.3 { i8 61, i8 0, i16 3755 }, %struct.anon.3 { i8 56, i8 0, i16 3756 }, %struct.anon.3 { i8 61, i8 0, i16 3758 }, %struct.anon.3 { i8 60, i8 0, i16 3759 }, %struct.anon.3 { i8 61, i8 0, i16 3760 }, %struct.anon.3 { i8 57, i8 0, i16 3761 }, %struct.anon.3 { i8 61, i8 0, i16 3762 }, %struct.anon.3 { i8 29, i8 0, i16 3763 }, %struct.anon.3 { i8 57, i8 0, i16 3767 }, %struct.anon.3 { i8 57, i8 118, i16 3768 }, %struct.anon.3 { i8 57, i8 118, i16 3769 }, %struct.anon.3 { i8 56, i8 0, i16 3770 }, %struct.anon.3 { i8 57, i8 0, i16 3772 }, %struct.anon.3 { i8 61, i8 0, i16 3773 }, %struct.anon.3 { i8 56, i8 0, i16 3775 }, %struct.anon.3 { i8 61, i8 0, i16 3780 }, %struct.anon.3 { i8 56, i8 0, i16 3781 }, %struct.anon.3 { i8 61, i8 0, i16 3782 }, %struct.anon.3 { i8 56, i8 0, i16 3783 }, %struct.anon.3 { i8 57, i8 122, i16 3784 }, %struct.anon.3 { i8 57, i8 122, i16 3785 }, %struct.anon.3 { i8 57, i8 122, i16 3786 }, %struct.anon.3 { i8 57, i8 0, i16 3789 }, %struct.anon.3 { i8 56, i8 0, i16 3791 }, %struct.anon.3 { i8 59, i8 0, i16 3801 }, %struct.anon.3 { i8 56, i8 0, i16 3803 }, %struct.anon.3 { i8 25, i8 0, i16 3805 }, %struct.anon.3 { i8 56, i8 0, i16 3839 }, %struct.anon.3 { i8 57, i8 0, i16 3840 }, %struct.anon.3 { i8 56, i8 0, i16 3863 }, %struct.anon.3 { i8 57, i8 -36, i16 3864 }, %struct.anon.3 { i8 57, i8 -36, i16 3865 }, %struct.anon.3 { i8 56, i8 0, i16 3871 }, %struct.anon.3 { i8 59, i8 0, i16 3891 }, %struct.anon.3 { i8 56, i8 0, i16 3892 }, %struct.anon.3 { i8 57, i8 -36, i16 3893 }, %struct.anon.3 { i8 56, i8 0, i16 3894 }, %struct.anon.3 { i8 57, i8 -36, i16 3895 }, %struct.anon.3 { i8 56, i8 0, i16 3896 }, %struct.anon.3 { i8 57, i8 -40, i16 3897 }, %struct.anon.3 { i8 56, i8 0, i16 3901 }, %struct.anon.3 { i8 57, i8 0, i16 3906 }, %struct.anon.3 { i8 1, i8 0, i16 3907 }, %struct.anon.3 { i8 57, i8 0, i16 3911 }, %struct.anon.3 { i8 56, i8 0, i16 3912 }, %struct.anon.3 { i8 57, i8 0, i16 3916 }, %struct.anon.3 { i8 1, i8 0, i16 3917 }, %struct.anon.3 { i8 57, i8 0, i16 3921 }, %struct.anon.3 { i8 1, i8 0, i16 3922 }, %struct.anon.3 { i8 57, i8 0, i16 3926 }, %struct.anon.3 { i8 1, i8 0, i16 3927 }, %struct.anon.3 { i8 57, i8 0, i16 3931 }, %struct.anon.3 { i8 1, i8 0, i16 3932 }, %struct.anon.3 { i8 57, i8 0, i16 3944 }, %struct.anon.3 { i8 1, i8 0, i16 3945 }, %struct.anon.3 { i8 56, i8 0, i16 3952 }, %struct.anon.3 { i8 57, i8 -127, i16 3953 }, %struct.anon.3 { i8 57, i8 -126, i16 3954 }, %struct.anon.3 { i8 1, i8 0, i16 3955 }, %struct.anon.3 { i8 57, i8 -124, i16 3956 }, %struct.anon.3 { i8 1, i8 0, i16 3958 }, %struct.anon.3 { i8 25, i8 0, i16 3959 }, %struct.anon.3 { i8 1, i8 0, i16 3960 }, %struct.anon.3 { i8 25, i8 0, i16 3961 }, %struct.anon.3 { i8 57, i8 -126, i16 3962 }, %struct.anon.3 { i8 57, i8 -126, i16 3963 }, %struct.anon.3 { i8 57, i8 -126, i16 3964 }, %struct.anon.3 { i8 57, i8 0, i16 3967 }, %struct.anon.3 { i8 57, i8 -126, i16 3968 }, %struct.anon.3 { i8 1, i8 0, i16 3969 }, %struct.anon.3 { i8 57, i8 -26, i16 3970 }, %struct.anon.3 { i8 57, i8 -26, i16 3971 }, %struct.anon.3 { i8 57, i8 9, i16 3972 }, %struct.anon.3 { i8 56, i8 0, i16 3973 }, %struct.anon.3 { i8 57, i8 -26, i16 3974 }, %struct.anon.3 { i8 57, i8 0, i16 3979 }, %struct.anon.3 { i8 56, i8 0, i16 3983 }, %struct.anon.3 { i8 57, i8 0, i16 3986 }, %struct.anon.3 { i8 1, i8 0, i16 3987 }, %struct.anon.3 { i8 57, i8 0, i16 3989 }, %struct.anon.3 { i8 56, i8 0, i16 3990 }, %struct.anon.3 { i8 57, i8 0, i16 3991 }, %struct.anon.3 { i8 56, i8 0, i16 3992 }, %struct.anon.3 { i8 57, i8 0, i16 3996 }, %struct.anon.3 { i8 1, i8 0, i16 3997 }, %struct.anon.3 { i8 57, i8 0, i16 4001 }, %struct.anon.3 { i8 1, i8 0, i16 4002 }, %struct.anon.3 { i8 57, i8 0, i16 4006 }, %struct.anon.3 { i8 1, i8 0, i16 4007 }, %struct.anon.3 { i8 57, i8 0, i16 4011 }, %struct.anon.3 { i8 1, i8 0, i16 4012 }, %struct.anon.3 { i8 57, i8 0, i16 4013 }, %struct.anon.3 { i8 56, i8 0, i16 4016 }, %struct.anon.3 { i8 57, i8 0, i16 4023 }, %struct.anon.3 { i8 56, i8 0, i16 4024 }, %struct.anon.3 { i8 1, i8 0, i16 4025 }, %struct.anon.3 { i8 56, i8 0, i16 4255 }, %struct.anon.3 { i8 61, i8 0, i16 4293 }, %struct.anon.3 { i8 56, i8 0, i16 4303 }, %struct.anon.3 { i8 61, i8 0, i16 4342 }, %struct.anon.3 { i8 56, i8 0, i16 4351 }, %struct.anon.3 { i8 60, i8 0, i16 4441 }, %struct.anon.3 { i8 56, i8 0, i16 4448 }, %struct.anon.3 { i8 124, i8 0, i16 4469 }, %struct.anon.3 { i8 60, i8 0, i16 4514 }, %struct.anon.3 { i8 56, i8 0, i16 4519 }, %struct.anon.3 { i8 124, i8 0, i16 4546 }, %struct.anon.3 { i8 60, i8 0, i16 4601 }, %struct.anon.3 { i8 56, i8 0, i16 7679 }, %struct.anon.3 { i8 61, i8 0, i16 7833 }, %struct.anon.3 { i8 29, i8 0, i16 7834 }, %struct.anon.3 { i8 25, i8 0, i16 7835 }, %struct.anon.3 { i8 56, i8 0, i16 7839 }, %struct.anon.3 { i8 61, i8 0, i16 7929 }, %struct.anon.3 { i8 56, i8 0, i16 7935 }, %struct.anon.3 { i8 61, i8 0, i16 7957 }, %struct.anon.3 { i8 56, i8 0, i16 7959 }, %struct.anon.3 { i8 61, i8 0, i16 7965 }, %struct.anon.3 { i8 56, i8 0, i16 7967 }, %struct.anon.3 { i8 61, i8 0, i16 8005 }, %struct.anon.3 { i8 56, i8 0, i16 8007 }, %struct.anon.3 { i8 61, i8 0, i16 8013 }, %struct.anon.3 { i8 56, i8 0, i16 8015 }, %struct.anon.3 { i8 61, i8 0, i16 8023 }, %struct.anon.3 { i8 56, i8 0, i16 8024 }, %struct.anon.3 { i8 61, i8 0, i16 8025 }, %struct.anon.3 { i8 56, i8 0, i16 8026 }, %struct.anon.3 { i8 61, i8 0, i16 8027 }, %struct.anon.3 { i8 56, i8 0, i16 8028 }, %struct.anon.3 { i8 61, i8 0, i16 8029 }, %struct.anon.3 { i8 56, i8 0, i16 8030 }, %struct.anon.3 { i8 61, i8 0, i16 8048 }, %struct.anon.3 { i8 5, i8 0, i16 8049 }, %struct.anon.3 { i8 61, i8 0, i16 8050 }, %struct.anon.3 { i8 5, i8 0, i16 8051 }, %struct.anon.3 { i8 61, i8 0, i16 8052 }, %struct.anon.3 { i8 5, i8 0, i16 8053 }, %struct.anon.3 { i8 61, i8 0, i16 8054 }, %struct.anon.3 { i8 5, i8 0, i16 8055 }, %struct.anon.3 { i8 61, i8 0, i16 8056 }, %struct.anon.3 { i8 5, i8 0, i16 8057 }, %struct.anon.3 { i8 61, i8 0, i16 8058 }, %struct.anon.3 { i8 5, i8 0, i16 8059 }, %struct.anon.3 { i8 61, i8 0, i16 8060 }, %struct.anon.3 { i8 5, i8 0, i16 8061 }, %struct.anon.3 { i8 56, i8 0, i16 8063 }, %struct.anon.3 { i8 61, i8 0, i16 8116 }, %struct.anon.3 { i8 56, i8 0, i16 8117 }, %struct.anon.3 { i8 61, i8 0, i16 8122 }, %struct.anon.3 { i8 5, i8 0, i16 8123 }, %struct.anon.3 { i8 61, i8 0, i16 8124 }, %struct.anon.3 { i8 24, i8 0, i16 8125 }, %struct.anon.3 { i8 1, i8 0, i16 8126 }, %struct.anon.3 { i8 24, i8 0, i16 8129 }, %struct.anon.3 { i8 61, i8 0, i16 8132 }, %struct.anon.3 { i8 56, i8 0, i16 8133 }, %struct.anon.3 { i8 61, i8 0, i16 8136 }, %struct.anon.3 { i8 5, i8 0, i16 8137 }, %struct.anon.3 { i8 61, i8 0, i16 8138 }, %struct.anon.3 { i8 5, i8 0, i16 8139 }, %struct.anon.3 { i8 61, i8 0, i16 8140 }, %struct.anon.3 { i8 24, i8 0, i16 8143 }, %struct.anon.3 { i8 61, i8 0, i16 8146 }, %struct.anon.3 { i8 5, i8 0, i16 8147 }, %struct.anon.3 { i8 56, i8 0, i16 8149 }, %struct.anon.3 { i8 61, i8 0, i16 8154 }, %struct.anon.3 { i8 5, i8 0, i16 8155 }, %struct.anon.3 { i8 56, i8 0, i16 8159 }, %struct.anon.3 { i8 61, i8 0, i16 8162 }, %struct.anon.3 { i8 5, i8 0, i16 8163 }, %struct.anon.3 { i8 61, i8 0, i16 8170 }, %struct.anon.3 { i8 5, i8 0, i16 8171 }, %struct.anon.3 { i8 61, i8 0, i16 8172 }, %struct.anon.3 { i8 24, i8 0, i16 8177 }, %struct.anon.3 { i8 61, i8 0, i16 8180 }, %struct.anon.3 { i8 56, i8 0, i16 8181 }, %struct.anon.3 { i8 61, i8 0, i16 8184 }, %struct.anon.3 { i8 5, i8 0, i16 8185 }, %struct.anon.3 { i8 61, i8 0, i16 8186 }, %struct.anon.3 { i8 5, i8 0, i16 8187 }, %struct.anon.3 { i8 61, i8 0, i16 8188 }, %struct.anon.3 { i8 8, i8 0, i16 8254 }, %struct.anon.3 { i8 57, i8 0, i16 8256 }, %struct.anon.3 { i8 56, i8 0, i16 8318 }, %struct.anon.3 { i8 25, i8 0, i16 8319 }, %struct.anon.3 { i8 24, i8 0, i16 8449 }, %struct.anon.3 { i8 25, i8 0, i16 8450 }, %struct.anon.3 { i8 24, i8 0, i16 8454 }, %struct.anon.3 { i8 25, i8 0, i16 8455 }, %struct.anon.3 { i8 56, i8 0, i16 8457 }, %struct.anon.3 { i8 25, i8 0, i16 8467 }, %struct.anon.3 { i8 56, i8 0, i16 8468 }, %struct.anon.3 { i8 25, i8 0, i16 8469 }, %struct.anon.3 { i8 24, i8 0, i16 8471 }, %struct.anon.3 { i8 57, i8 0, i16 8472 }, %struct.anon.3 { i8 25, i8 0, i16 8477 }, %struct.anon.3 { i8 56, i8 0, i16 8483 }, %struct.anon.3 { i8 25, i8 0, i16 8484 }, %struct.anon.3 { i8 56, i8 0, i16 8485 }, %struct.anon.3 { i8 1, i8 0, i16 8486 }, %struct.anon.3 { i8 56, i8 0, i16 8487 }, %struct.anon.3 { i8 25, i8 0, i16 8488 }, %struct.anon.3 { i8 56, i8 0, i16 8489 }, %struct.anon.3 { i8 9, i8 0, i16 8490 }, %struct.anon.3 { i8 1, i8 0, i16 8491 }, %struct.anon.3 { i8 25, i8 0, i16 8493 }, %struct.anon.3 { i8 57, i8 0, i16 8494 }, %struct.anon.3 { i8 25, i8 0, i16 8497 }, %struct.anon.3 { i8 56, i8 0, i16 8498 }, %struct.anon.3 { i8 25, i8 0, i16 8504 }, %struct.anon.3 { i8 24, i8 0, i16 8543 }, %struct.anon.3 { i8 27, i8 0, i16 8575 }, %struct.anon.3 { i8 59, i8 0, i16 8578 }, %struct.anon.3 { i8 56, i8 0, i16 12292 }, %struct.anon.3 { i8 57, i8 0, i16 12294 }, %struct.anon.3 { i8 59, i8 0, i16 12295 }, %struct.anon.3 { i8 56, i8 0, i16 12320 }, %struct.anon.3 { i8 59, i8 0, i16 12329 }, %struct.anon.3 { i8 56, i8 0, i16 12352 }, %struct.anon.3 { i8 61, i8 0, i16 12435 }, %struct.anon.3 { i8 60, i8 0, i16 12436 }, %struct.anon.3 { i8 56, i8 0, i16 12442 }, %struct.anon.3 { i8 29, i8 0, i16 12444 }, %struct.anon.3 { i8 60, i8 0, i16 12446 }, %struct.anon.3 { i8 24, i8 0, i16 12448 }, %struct.anon.3 { i8 61, i8 0, i16 12534 }, %struct.anon.3 { i8 60, i8 0, i16 12538 }, %struct.anon.3 { i8 61, i8 0, i16 12540 }, %struct.anon.3 { i8 60, i8 0, i16 12542 }, %struct.anon.3 { i8 24, i8 0, i16 12548 }, %struct.anon.3 { i8 61, i8 0, i16 12588 }, %struct.anon.3 { i8 56, i8 0, i16 19967 }, %struct.anon.3 { i8 61, i8 0, i16 -24667 }, %struct.anon.3 { i8 56, i8 0, i16 -21505 }, %struct.anon.3 { i8 57, i8 0, i16 -10333 }, %struct.anon.3 { i8 56, i8 0, i16 -1793 }, %struct.anon.3 { i8 4, i8 0, i16 -1523 }, %struct.anon.3 { i8 60, i8 0, i16 -1521 }, %struct.anon.3 { i8 4, i8 0, i16 -1520 }, %struct.anon.3 { i8 60, i8 0, i16 -1519 }, %struct.anon.3 { i8 4, i8 0, i16 -1518 }, %struct.anon.3 { i8 60, i8 0, i16 -1516 }, %struct.anon.3 { i8 4, i8 0, i16 -1506 }, %struct.anon.3 { i8 60, i8 0, i16 -1505 }, %struct.anon.3 { i8 4, i8 0, i16 -1504 }, %struct.anon.3 { i8 60, i8 0, i16 -1503 }, %struct.anon.3 { i8 4, i8 0, i16 -1502 }, %struct.anon.3 { i8 60, i8 0, i16 -1500 }, %struct.anon.3 { i8 4, i8 0, i16 -1498 }, %struct.anon.3 { i8 60, i8 0, i16 -1495 }, %struct.anon.3 { i8 4, i8 0, i16 -1491 }, %struct.anon.3 { i8 56, i8 0, i16 -1250 }, %struct.anon.3 { i8 12, i8 0, i16 -1249 }, %struct.anon.3 { i8 28, i8 0, i16 -1239 }, %struct.anon.3 { i8 12, i8 0, i16 -1226 }, %struct.anon.3 { i8 56, i8 0, i16 -1225 }, %struct.anon.3 { i8 12, i8 0, i16 -1220 }, %struct.anon.3 { i8 56, i8 0, i16 -1219 }, %struct.anon.3 { i8 12, i8 0, i16 -1218 }, %struct.anon.3 { i8 56, i8 0, i16 -1217 }, %struct.anon.3 { i8 12, i8 0, i16 -1215 }, %struct.anon.3 { i8 60, i8 0, i16 -1214 }, %struct.anon.3 { i8 12, i8 0, i16 -1212 }, %struct.anon.3 { i8 56, i8 0, i16 -1211 }, %struct.anon.3 { i8 12, i8 0, i16 -1202 }, %struct.anon.3 { i8 28, i8 0, i16 -1103 }, %struct.anon.3 { i8 56, i8 0, i16 -1070 }, %struct.anon.3 { i8 28, i8 0, i16 -707 }, %struct.anon.3 { i8 60, i8 0, i16 -705 }, %struct.anon.3 { i8 56, i8 0, i16 -689 }, %struct.anon.3 { i8 28, i8 0, i16 -625 }, %struct.anon.3 { i8 56, i8 0, i16 -623 }, %struct.anon.3 { i8 28, i8 0, i16 -569 }, %struct.anon.3 { i8 56, i8 0, i16 -529 }, %struct.anon.3 { i8 28, i8 0, i16 -517 }, %struct.anon.3 { i8 24, i8 0, i16 -401 }, %struct.anon.3 { i8 28, i8 0, i16 -398 }, %struct.anon.3 { i8 56, i8 0, i16 -397 }, %struct.anon.3 { i8 28, i8 0, i16 -396 }, %struct.anon.3 { i8 56, i8 0, i16 -395 }, %struct.anon.3 { i8 28, i8 0, i16 -260 }, %struct.anon.3 { i8 56, i8 0, i16 -224 }, %struct.anon.3 { i8 28, i8 0, i16 -198 }, %struct.anon.3 { i8 24, i8 0, i16 -192 }, %struct.anon.3 { i8 28, i8 0, i16 -166 }, %struct.anon.3 { i8 24, i8 0, i16 -155 }, %struct.anon.3 { i8 28, i8 0, i16 -66 }, %struct.anon.3 { i8 56, i8 0, i16 -63 }, %struct.anon.3 { i8 28, i8 0, i16 -57 }, %struct.anon.3 { i8 56, i8 0, i16 -55 }, %struct.anon.3 { i8 28, i8 0, i16 -49 }, %struct.anon.3 { i8 56, i8 0, i16 -47 }, %struct.anon.3 { i8 28, i8 0, i16 -41 }, %struct.anon.3 { i8 56, i8 0, i16 -39 }, %struct.anon.3 { i8 28, i8 0, i16 -36 }, %struct.anon.3 { i8 56, i8 0, i16 -1 }], align 16
@.str.30 = private unnamed_addr constant [31 x i8] c"Character %x might not be NFKC\00", align 1
@.str.31 = private unnamed_addr constant [50 x i8] c"the meaning of '\\a' is different in traditional C\00", align 1
@.str.32 = private unnamed_addr constant [40 x i8] c"non-ISO-standard escape sequence, '\\%c'\00", align 1
@.str.33 = private unnamed_addr constant [31 x i8] c"unknown escape sequence: '\\%c'\00", align 1
@.str.34 = private unnamed_addr constant [5 x i8] c"%03o\00", align 1
@.str.35 = private unnamed_addr constant [31 x i8] c"unknown escape sequence: '\\%s'\00", align 1
@.str.36 = private unnamed_addr constant [54 x i8] c"converting escape sequence to execution character set\00", align 1
@.str.37 = private unnamed_addr constant [42 x i8] c"converting UCN to execution character set\00", align 1
@.str.38 = private unnamed_addr constant [50 x i8] c"the meaning of '\\x' is different in traditional C\00", align 1
@.str.39 = private unnamed_addr constant [37 x i8] c"\\x used with no following hex digits\00", align 1
@.str.40 = private unnamed_addr constant [33 x i8] c"hex escape sequence out of range\00", align 1
@.str.41 = private unnamed_addr constant [35 x i8] c"octal escape sequence out of range\00", align 1
@.str.42 = private unnamed_addr constant [41 x i8] c"character constant too long for its type\00", align 1
@.str.43 = private unnamed_addr constant [35 x i8] c"multi-character character constant\00", align 1
@one_cppchar_to_utf8.masks = internal unnamed_addr constant [6 x i8] c"\00\C0\E0\F0\F8\FC", align 1
@one_cppchar_to_utf8.limits = internal unnamed_addr constant [6 x i8] c"\80\E0\F0\F8\FC\FE", align 1

; Function Attrs: cold inlinehint mustprogress nofree nounwind willreturn memory(read) uwtable
define dso_local i32 @tolower(i32 noundef %0) local_unnamed_addr #0 !prof !50 {
  %2 = add i32 %0, 128
  %3 = icmp ult i32 %2, 384
  br i1 %3, label %4, label %10

4:                                                ; preds = %1
  %5 = tail call ptr @__ctype_tolower_loc() #16
  %6 = load ptr, ptr %5, align 8, !tbaa !51
  %7 = sext i32 %0 to i64
  %8 = getelementptr inbounds i32, ptr %6, i64 %7
  %9 = load i32, ptr %8, align 4, !tbaa !55
  br label %10

10:                                               ; preds = %1, %4
  %11 = phi i32 [ %9, %4 ], [ %0, %1 ]
  ret i32 %11
}

declare ptr @__ctype_tolower_loc() local_unnamed_addr #1

; Function Attrs: cold inlinehint mustprogress nofree nounwind willreturn memory(read) uwtable
define dso_local i32 @toupper(i32 noundef %0) local_unnamed_addr #0 !prof !50 {
  %2 = add i32 %0, 128
  %3 = icmp ult i32 %2, 384
  br i1 %3, label %4, label %10

4:                                                ; preds = %1
  %5 = tail call ptr @__ctype_toupper_loc() #16
  %6 = load ptr, ptr %5, align 8, !tbaa !51
  %7 = sext i32 %0 to i64
  %8 = getelementptr inbounds i32, ptr %6, i64 %7
  %9 = load i32, ptr %8, align 4, !tbaa !55
  br label %10

10:                                               ; preds = %1, %4
  %11 = phi i32 [ %9, %4 ], [ %0, %1 ]
  ret i32 %11
}

declare ptr @__ctype_toupper_loc() local_unnamed_addr #1

; Function Attrs: cold nounwind uwtable
define dso_local void @cpp_init_iconv(ptr noundef %0) local_unnamed_addr #2 !prof !57 {
  %2 = alloca %struct.cset_converter, align 8
  %3 = alloca %struct.cset_converter, align 8
  %4 = alloca %struct.cset_converter, align 8
  %5 = alloca %struct.cset_converter, align 8
  %6 = alloca %struct.cset_converter, align 8
  %7 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 53, i32 37
  %8 = load ptr, ptr %7, align 8, !tbaa !58
  %9 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 53, i32 38
  %10 = load ptr, ptr %9, align 8, !tbaa !75
  %11 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 53, i32 50
  %12 = load i8, ptr %11, align 2, !tbaa !76
  %13 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 53, i32 47
  %14 = load i64, ptr %13, align 8, !tbaa !77
  %15 = icmp ugt i64 %14, 31
  br i1 %15, label %16, label %19, !prof !78

16:                                               ; preds = %1
  %17 = icmp eq i8 %12, 0
  %18 = select i1 %17, ptr @.str.1, ptr @.str, !prof !78
  br label %24

19:                                               ; preds = %1
  %20 = icmp ugt i64 %14, 15
  br i1 %20, label %21, label %24

21:                                               ; preds = %19
  %22 = icmp eq i8 %12, 0
  %23 = select i1 %22, ptr @.str.3, ptr @.str.2
  br label %24

24:                                               ; preds = %19, %21, %16
  %25 = phi ptr [ %18, %16 ], [ %23, %21 ], [ @.str.4, %19 ]
  %26 = icmp eq ptr %10, null
  %27 = select i1 %26, ptr %25, ptr %10, !prof !78
  %28 = icmp eq ptr %8, null
  %29 = select i1 %28, ptr @.str.4, ptr %8, !prof !79
  %30 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 36
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %2) #16
  call fastcc void @init_iconv_desc(ptr dead_on_unwind nonnull writable sret(%struct.cset_converter) align 8 %2, ptr noundef %0, ptr noundef nonnull %29, ptr noundef nonnull @.str.4)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %30, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false), !tbaa.struct !80
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %2) #16
  %31 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 53, i32 45
  %32 = load i64, ptr %31, align 8, !tbaa !81
  %33 = trunc i64 %32 to i32
  %34 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 36, i32 2
  store i32 %33, ptr %34, align 8, !tbaa !82
  %35 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 37
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #16
  call fastcc void @init_iconv_desc(ptr dead_on_unwind nonnull writable sret(%struct.cset_converter) align 8 %3, ptr noundef %0, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.4)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %35, ptr noundef nonnull align 8 dereferenceable(24) %3, i64 24, i1 false), !tbaa.struct !80
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #16
  %36 = load i64, ptr %31, align 8, !tbaa !81
  %37 = trunc i64 %36 to i32
  %38 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 37, i32 2
  store i32 %37, ptr %38, align 8, !tbaa !83
  %39 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 38
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #16
  %40 = icmp eq i8 %12, 0
  %41 = select i1 %40, ptr @.str.3, ptr @.str.2, !prof !78
  call fastcc void @init_iconv_desc(ptr dead_on_unwind nonnull writable sret(%struct.cset_converter) align 8 %4, ptr noundef %0, ptr noundef nonnull %41, ptr noundef nonnull @.str.4)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %39, ptr noundef nonnull align 8 dereferenceable(24) %4, i64 24, i1 false), !tbaa.struct !80
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #16
  %42 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 38, i32 2
  store i32 16, ptr %42, align 8, !tbaa !84
  %43 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 39
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %5) #16
  %44 = select i1 %40, ptr @.str.1, ptr @.str, !prof !78
  call fastcc void @init_iconv_desc(ptr dead_on_unwind nonnull writable sret(%struct.cset_converter) align 8 %5, ptr noundef %0, ptr noundef nonnull %44, ptr noundef nonnull @.str.4)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %43, ptr noundef nonnull align 8 dereferenceable(24) %5, i64 24, i1 false), !tbaa.struct !80
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #16
  %45 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 39, i32 2
  store i32 32, ptr %45, align 8, !tbaa !85
  %46 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 40
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %6) #16
  call fastcc void @init_iconv_desc(ptr dead_on_unwind nonnull writable sret(%struct.cset_converter) align 8 %6, ptr noundef %0, ptr noundef nonnull %27, ptr noundef nonnull @.str.4)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %46, ptr noundef nonnull align 8 dereferenceable(24) %6, i64 24, i1 false), !tbaa.struct !80
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %6) #16
  %47 = load i64, ptr %13, align 8, !tbaa !77
  %48 = trunc i64 %47 to i32
  %49 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 40, i32 2
  store i32 %48, ptr %49, align 8, !tbaa !86
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: cold nounwind uwtable
define internal fastcc void @init_iconv_desc(ptr dead_on_unwind noalias nocapture writable writeonly sret(%struct.cset_converter) align 8 %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) unnamed_addr #2 !prof !87 !PGOFuncName !88 {
  %5 = tail call i32 @strcasecmp(ptr noundef %2, ptr noundef %3) #17
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %10, !prof !89

7:                                                ; preds = %4
  store ptr @convert_no_conversion, ptr %0, align 8, !tbaa !90
  %8 = getelementptr inbounds %struct.cset_converter, ptr %0, i64 0, i32 1
  store ptr inttoptr (i64 -1 to ptr), ptr %8, align 8, !tbaa !91
  %9 = getelementptr inbounds %struct.cset_converter, ptr %0, i64 0, i32 2
  store i32 -1, ptr %9, align 8, !tbaa !92
  br label %41

10:                                               ; preds = %4
  %11 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %2) #17
  %12 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %3) #17
  %13 = add i64 %11, 2
  %14 = add i64 %13, %12
  %15 = alloca i8, i64 %14, align 16
  %16 = call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %15, ptr noundef nonnull dereferenceable(1) %3) #16
  %17 = call i64 @strlen(ptr nonnull dereferenceable(1) %15)
  %18 = getelementptr inbounds i8, ptr %15, i64 %17
  store i16 47, ptr %18, align 1
  %19 = call ptr @strcat(ptr noundef nonnull dereferenceable(1) %15, ptr noundef nonnull dereferenceable(1) %2) #16
  br label %20

20:                                               ; preds = %10, %33
  %21 = phi i64 [ 0, %10 ], [ %34, %33 ]
  %22 = getelementptr inbounds [8 x %struct.conversion], ptr @conversion_tab, i64 0, i64 %21
  %23 = load ptr, ptr %22, align 8, !tbaa !93
  %24 = call i32 @strcasecmp(ptr noundef nonnull %15, ptr noundef %23) #17
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %26, label %33, !prof !95

26:                                               ; preds = %20
  %27 = getelementptr inbounds [8 x %struct.conversion], ptr @conversion_tab, i64 0, i64 %21, i32 1
  %28 = load ptr, ptr %27, align 8, !tbaa !96
  store ptr %28, ptr %0, align 8, !tbaa !90
  %29 = getelementptr inbounds [8 x %struct.conversion], ptr @conversion_tab, i64 0, i64 %21, i32 2
  %30 = load ptr, ptr %29, align 8, !tbaa !97
  %31 = getelementptr inbounds %struct.cset_converter, ptr %0, i64 0, i32 1
  store ptr %30, ptr %31, align 8, !tbaa !91
  %32 = getelementptr inbounds %struct.cset_converter, ptr %0, i64 0, i32 2
  store i32 -1, ptr %32, align 8, !tbaa !92
  br label %41

33:                                               ; preds = %20
  %34 = add nuw nsw i64 %21, 1
  %35 = icmp eq i64 %34, 8
  br i1 %35, label %36, label %20, !prof !98, !llvm.loop !99

36:                                               ; preds = %33
  store ptr @convert_using_iconv, ptr %0, align 8, !tbaa !90
  %37 = tail call ptr @__errno_location() #18
  store i32 22, ptr %37, align 4, !tbaa !55
  %38 = getelementptr inbounds %struct.cset_converter, ptr %0, i64 0, i32 1
  store ptr inttoptr (i64 -1 to ptr), ptr %38, align 8, !tbaa !91
  %39 = getelementptr inbounds %struct.cset_converter, ptr %0, i64 0, i32 2
  store i32 -1, ptr %39, align 8, !tbaa !92
  %40 = call zeroext i8 (ptr, i32, ptr, ...) @cpp_error(ptr noundef %1, i32 noundef 3, ptr noundef nonnull @.str.20, ptr noundef %3, ptr noundef %2) #16
  store ptr @convert_no_conversion, ptr %0, align 8, !tbaa !90
  br label %41

41:                                               ; preds = %36, %26, %7
  ret void
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #4

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local void @_cpp_destroy_iconv(ptr nocapture noundef readnone %0) local_unnamed_addr #5 !prof !50 {
  ret void
}

; Function Attrs: cold mustprogress nofree nosync nounwind willreturn memory(write, inaccessiblemem: none) uwtable
define internal noundef zeroext i8 @convert_using_iconv(ptr nocapture readnone %0, ptr nocapture readnone %1, i64 %2, ptr nocapture readnone %3) #6 !prof !50 {
  %5 = tail call ptr @__errno_location() #18
  store i32 22, ptr %5, align 4, !tbaa !55
  ret i8 0
}

; Function Attrs: cold nounwind uwtable
define dso_local i32 @cpp_host_to_exec_charset(ptr noundef %0, i32 noundef %1) local_unnamed_addr #2 !prof !50 {
  %3 = alloca [1 x i8], align 1
  %4 = alloca %struct._cpp_strbuf, align 8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %3) #16
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #16
  %5 = icmp ugt i32 %1, 126
  br i1 %5, label %6, label %9

6:                                                ; preds = %2
  %7 = zext i32 %1 to i64
  %8 = tail call zeroext i8 (ptr, i32, ptr, ...) @cpp_error(ptr noundef %0, i32 noundef 4, ptr noundef nonnull @.str.5, i64 noundef %7) #16
  br label %32

9:                                                ; preds = %2
  %10 = trunc i32 %1 to i8
  store i8 %10, ptr %3, align 1, !tbaa !102
  %11 = getelementptr inbounds %struct._cpp_strbuf, ptr %4, i64 0, i32 1
  store i64 1, ptr %11, align 8, !tbaa !103
  %12 = tail call ptr @xmalloc(i64 noundef 1) #16
  store ptr %12, ptr %4, align 8, !tbaa !105
  %13 = getelementptr inbounds %struct._cpp_strbuf, ptr %4, i64 0, i32 2
  store i64 0, ptr %13, align 8, !tbaa !106
  %14 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 36
  %15 = load ptr, ptr %14, align 8, !tbaa !107
  %16 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 36, i32 1
  %17 = load ptr, ptr %16, align 8, !tbaa !108
  %18 = call zeroext i8 %15(ptr noundef %17, ptr noundef nonnull %3, i64 noundef 1, ptr noundef nonnull %4) #16
  %19 = icmp eq i8 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %9
  %21 = call zeroext i8 @cpp_errno(ptr noundef %0, i32 noundef 4, ptr noundef nonnull @.str.6) #16
  br label %32

22:                                               ; preds = %9
  %23 = load i64, ptr %13, align 8, !tbaa !106
  %24 = icmp eq i64 %23, 1
  br i1 %24, label %28, label %25

25:                                               ; preds = %22
  %26 = zext nneg i32 %1 to i64
  %27 = call zeroext i8 (ptr, i32, ptr, ...) @cpp_error(ptr noundef %0, i32 noundef 4, ptr noundef nonnull @.str.7, i64 noundef %26) #16
  br label %32

28:                                               ; preds = %22
  %29 = load ptr, ptr %4, align 8, !tbaa !105
  %30 = load i8, ptr %29, align 1, !tbaa !102
  %31 = zext i8 %30 to i32
  call void @free(ptr noundef %29) #16
  br label %32

32:                                               ; preds = %28, %25, %20, %6
  %33 = phi i32 [ 0, %6 ], [ 0, %25 ], [ %31, %28 ], [ 0, %20 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #16
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %3) #16
  ret i32 %33
}

declare zeroext i8 @cpp_error(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

declare ptr @xmalloc(i64 noundef) local_unnamed_addr #1

declare zeroext i8 @cpp_errno(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr nocapture noundef) local_unnamed_addr #7

; Function Attrs: cold nounwind uwtable
define dso_local i32 @_cpp_valid_ucn(ptr noundef %0, ptr nocapture noundef %1, ptr noundef readnone %2, i32 noundef %3, ptr nocapture noundef %4) local_unnamed_addr #2 !prof !50 {
  %6 = load ptr, ptr %1, align 8, !tbaa !51
  %7 = getelementptr inbounds i8, ptr %6, i64 -2
  %8 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 53, i32 2
  %9 = load i8, ptr %8, align 8, !tbaa !109
  %10 = icmp eq i8 %9, 0
  br i1 %10, label %11, label %17

11:                                               ; preds = %5
  %12 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 53, i32 29
  %13 = load i8, ptr %12, align 1, !tbaa !110
  %14 = icmp eq i8 %13, 0
  br i1 %14, label %15, label %17

15:                                               ; preds = %11
  %16 = tail call zeroext i8 (ptr, i32, ptr, ...) @cpp_error(ptr noundef %0, i32 noundef 0, ptr noundef nonnull @.str.8) #16
  br label %28

17:                                               ; preds = %11, %5
  %18 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 53, i32 17
  %19 = load i8, ptr %18, align 1, !tbaa !111
  %20 = icmp ne i8 %19, 0
  %21 = icmp eq i32 %3, 0
  %22 = and i1 %21, %20
  br i1 %22, label %23, label %28

23:                                               ; preds = %17
  %24 = getelementptr inbounds i8, ptr %6, i64 -1
  %25 = load i8, ptr %24, align 1, !tbaa !102
  %26 = zext i8 %25 to i32
  %27 = tail call zeroext i8 (ptr, i32, ptr, ...) @cpp_error(ptr noundef %0, i32 noundef 0, ptr noundef nonnull @.str.9, i32 noundef %26) #16
  br label %28

28:                                               ; preds = %17, %23, %15
  %29 = getelementptr inbounds i8, ptr %6, i64 -1
  %30 = load i8, ptr %29, align 1, !tbaa !102
  switch i8 %30, label %32 [
    i8 117, label %34
    i8 85, label %31
  ]

31:                                               ; preds = %28
  br label %34

32:                                               ; preds = %28
  %33 = tail call zeroext i8 (ptr, i32, ptr, ...) @cpp_error(ptr noundef %0, i32 noundef 4, ptr noundef nonnull @.str.10) #16
  br label %34

34:                                               ; preds = %28, %31, %32
  %35 = phi i32 [ 4, %28 ], [ 4, %32 ], [ 8, %31 ]
  br label %36

36:                                               ; preds = %34, %46
  %37 = phi i32 [ %53, %46 ], [ %35, %34 ]
  %38 = phi ptr [ %47, %46 ], [ %6, %34 ]
  %39 = phi i32 [ %52, %46 ], [ 0, %34 ]
  %40 = load i8, ptr %38, align 1, !tbaa !102
  %41 = zext i8 %40 to i64
  %42 = getelementptr inbounds [256 x i16], ptr @_sch_istable, i64 0, i64 %41
  %43 = load i16, ptr %42, align 2, !tbaa !112
  %44 = and i16 %43, 256
  %45 = icmp eq i16 %44, 0
  br i1 %45, label %57, label %46

46:                                               ; preds = %36
  %47 = getelementptr inbounds i8, ptr %38, i64 1
  %48 = shl i32 %39, 4
  %49 = getelementptr inbounds [256 x i8], ptr @_hex_value, i64 0, i64 %41
  %50 = load i8, ptr %49, align 1, !tbaa !102
  %51 = zext i8 %50 to i32
  %52 = add i32 %48, %51
  %53 = add nsw i32 %37, -1
  %54 = icmp ne i32 %53, 0
  %55 = icmp ult ptr %47, %2
  %56 = select i1 %54, i1 %55, i1 false
  br i1 %56, label %36, label %57, !llvm.loop !113

57:                                               ; preds = %46, %36
  %58 = phi i32 [ %37, %36 ], [ %53, %46 ]
  %59 = phi ptr [ %38, %36 ], [ %47, %46 ]
  %60 = phi i32 [ %39, %36 ], [ %52, %46 ]
  %61 = icmp ne i32 %58, 0
  %62 = icmp ne i32 %3, 0
  %63 = and i1 %62, %61
  br i1 %63, label %254, label %64

64:                                               ; preds = %57
  store ptr %59, ptr %1, align 8, !tbaa !51
  br i1 %61, label %65, label %71

65:                                               ; preds = %64
  %66 = ptrtoint ptr %59 to i64
  %67 = ptrtoint ptr %7 to i64
  %68 = sub i64 %66, %67
  %69 = trunc i64 %68 to i32
  %70 = tail call zeroext i8 (ptr, i32, ptr, ...) @cpp_error(ptr noundef %0, i32 noundef 3, ptr noundef nonnull @.str.11, i32 noundef %69, ptr noundef nonnull %7) #16
  br label %251

71:                                               ; preds = %64
  %72 = icmp ult i32 %60, 160
  br i1 %72, label %73, label %79

73:                                               ; preds = %71
  %74 = load i8, ptr %8, align 8, !tbaa !109
  %75 = freeze i8 %74
  %76 = icmp eq i8 %75, 0
  br i1 %76, label %77, label %79

77:                                               ; preds = %73
  %78 = trunc i32 %60 to i8
  switch i8 %78, label %84 [
    i8 96, label %79
    i8 64, label %79
    i8 36, label %79
  ]

79:                                               ; preds = %77, %77, %77, %73, %71
  %80 = icmp slt i32 %60, 0
  %81 = and i32 %60, 2147481600
  %82 = icmp eq i32 %81, 55296
  %83 = or i1 %80, %82
  br i1 %83, label %84, label %90

84:                                               ; preds = %77, %79
  %85 = ptrtoint ptr %59 to i64
  %86 = ptrtoint ptr %7 to i64
  %87 = sub i64 %85, %86
  %88 = trunc i64 %87 to i32
  %89 = tail call zeroext i8 (ptr, i32, ptr, ...) @cpp_error(ptr noundef %0, i32 noundef 3, ptr noundef nonnull @.str.12, i32 noundef %88, ptr noundef nonnull %7) #16
  br label %251

90:                                               ; preds = %79
  %91 = icmp eq i32 %60, 36
  %92 = select i1 %62, i1 %91, i1 false
  br i1 %92, label %93, label %109

93:                                               ; preds = %90
  %94 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 53, i32 24
  %95 = load i8, ptr %94, align 2, !tbaa !114
  %96 = icmp eq i8 %95, 0
  br i1 %96, label %109, label %97

97:                                               ; preds = %93
  %98 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 53, i32 26
  %99 = load i8, ptr %98, align 8, !tbaa !115
  %100 = icmp eq i8 %99, 0
  br i1 %100, label %107, label %101

101:                                              ; preds = %97
  %102 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 2, i32 2
  %103 = load i8, ptr %102, align 2, !tbaa !116
  %104 = icmp eq i8 %103, 0
  br i1 %104, label %105, label %107

105:                                              ; preds = %101
  store i8 0, ptr %98, align 8, !tbaa !115
  %106 = tail call zeroext i8 (ptr, i32, ptr, ...) @cpp_error(ptr noundef %0, i32 noundef 2, ptr noundef nonnull @.str.13) #16
  br label %107

107:                                              ; preds = %105, %101, %97
  store i32 0, ptr %4, align 4, !tbaa !117
  %108 = getelementptr inbounds %struct.normalize_state, ptr %4, i64 0, i32 1
  store i8 0, ptr %108, align 4, !tbaa !119
  br label %251

109:                                              ; preds = %93, %90
  br i1 %62, label %110, label %251

110:                                              ; preds = %109
  %111 = icmp ugt i32 %60, 65535
  br i1 %111, label %233, label %112

112:                                              ; preds = %110, %112
  %113 = phi i32 [ %124, %112 ], [ 0, %110 ]
  %114 = phi i32 [ %123, %112 ], [ 746, %110 ]
  %115 = add nsw i32 %113, %114
  %116 = sdiv i32 %115, 2
  %117 = sext i32 %116 to i64
  %118 = getelementptr inbounds [747 x %struct.anon.3], ptr @ucnranges, i64 0, i64 %117, i32 2
  %119 = load i16, ptr %118, align 2, !tbaa !120
  %120 = zext i16 %119 to i32
  %121 = icmp ugt i32 %60, %120
  %122 = add nsw i32 %116, 1
  %123 = select i1 %121, i32 %114, i32 %116
  %124 = select i1 %121, i32 %122, i32 %113
  %125 = icmp eq i32 %123, %124
  br i1 %125, label %126, label %112, !llvm.loop !122

126:                                              ; preds = %112
  %127 = sext i32 %124 to i64
  %128 = getelementptr inbounds [747 x %struct.anon.3], ptr @ucnranges, i64 0, i64 %127
  %129 = load i8, ptr %128, align 4, !tbaa !123
  %130 = zext i8 %129 to i32
  %131 = and i32 %130, 5
  %132 = icmp eq i32 %131, 0
  br i1 %132, label %233, label %133

133:                                              ; preds = %126
  %134 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 53, i32 31
  %135 = load i8, ptr %134, align 1, !tbaa !124
  %136 = icmp eq i8 %135, 0
  br i1 %136, label %150, label %137

137:                                              ; preds = %133
  %138 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 53, i32 29
  %139 = load i8, ptr %138, align 1, !tbaa !110
  %140 = icmp ne i8 %139, 0
  %141 = and i32 %130, 1
  %142 = icmp eq i32 %141, 0
  %143 = and i1 %142, %140
  br i1 %143, label %233, label %144

144:                                              ; preds = %137
  %145 = load i8, ptr %8, align 8, !tbaa !109
  %146 = icmp ne i8 %145, 0
  %147 = and i8 %129, 4
  %148 = icmp eq i8 %147, 0
  %149 = and i1 %148, %146
  br i1 %149, label %233, label %150

150:                                              ; preds = %144, %133
  %151 = getelementptr inbounds [747 x %struct.anon.3], ptr @ucnranges, i64 0, i64 %127, i32 1
  %152 = load i8, ptr %151, align 1, !tbaa !125
  %153 = icmp eq i8 %152, 0
  br i1 %153, label %160, label %154

154:                                              ; preds = %150
  %155 = getelementptr inbounds %struct.normalize_state, ptr %4, i64 0, i32 1
  %156 = load i8, ptr %155, align 4, !tbaa !119
  %157 = icmp ult i8 %152, %156
  br i1 %157, label %158, label %160

158:                                              ; preds = %154
  %159 = getelementptr inbounds %struct.normalize_state, ptr %4, i64 0, i32 2
  store i32 3, ptr %159, align 4, !tbaa !126
  br label %225

160:                                              ; preds = %154, %150
  %161 = and i32 %130, 64
  %162 = icmp eq i32 %161, 0
  br i1 %162, label %207, label %163

163:                                              ; preds = %160
  %164 = load i32, ptr %4, align 4, !tbaa !117
  %165 = trunc i32 %60 to i16
  switch i16 %165, label %178 [
    i16 2494, label %166
    i16 2878, label %168
    i16 3006, label %170
    i16 3266, label %173
    i16 3390, label %175
  ]

166:                                              ; preds = %163
  %167 = icmp ne i32 %164, 2503
  br label %196

168:                                              ; preds = %163
  %169 = icmp ne i32 %164, 2887
  br label %196

170:                                              ; preds = %163
  %171 = add i32 %164, -3016
  %172 = icmp ult i32 %171, -2
  br label %196

173:                                              ; preds = %163
  %174 = icmp ne i32 %164, 3270
  br label %196

175:                                              ; preds = %163
  %176 = add i32 %164, -3400
  %177 = icmp ult i32 %176, -2
  br label %196

178:                                              ; preds = %163
  %179 = add nsw i32 %60, -4449
  %180 = icmp ult i32 %179, 21
  br i1 %180, label %181, label %184

181:                                              ; preds = %178
  %182 = add i32 %164, -4371
  %183 = icmp ult i32 %182, -19
  br label %196

184:                                              ; preds = %178
  %185 = add nsw i32 %60, -4520
  %186 = icmp ult i32 %185, 27
  br i1 %186, label %187, label %194

187:                                              ; preds = %184
  %188 = add i32 %164, -55204
  %189 = icmp ult i32 %188, -11172
  br i1 %189, label %196, label %190

190:                                              ; preds = %187
  %191 = add nsw i32 %164, -44032
  %192 = urem i32 %191, 28
  %193 = icmp ne i32 %192, 0
  br label %196

194:                                              ; preds = %184
  %195 = tail call zeroext i8 (ptr, i32, ptr, ...) @cpp_error(ptr noundef %0, i32 noundef 4, ptr noundef nonnull @.str.30, i32 noundef %60) #16
  br label %196

196:                                              ; preds = %194, %190, %187, %181, %175, %173, %170, %168, %166
  %197 = phi i1 [ %167, %166 ], [ %169, %168 ], [ %172, %170 ], [ %174, %173 ], [ %177, %175 ], [ %183, %181 ], [ true, %194 ], [ true, %187 ], [ %193, %190 ]
  %198 = icmp ugt i32 %60, 4448
  %199 = or i1 %198, %197
  br i1 %199, label %202, label %200

200:                                              ; preds = %196
  %201 = getelementptr inbounds %struct.normalize_state, ptr %4, i64 0, i32 2
  store i32 3, ptr %201, align 4, !tbaa !126
  br label %225

202:                                              ; preds = %196
  br i1 %197, label %225, label %203

203:                                              ; preds = %202
  %204 = getelementptr inbounds %struct.normalize_state, ptr %4, i64 0, i32 2
  %205 = load i32, ptr %204, align 4, !tbaa !126
  %206 = tail call i32 @llvm.umax.i32(i32 %205, i32 2)
  store i32 %206, ptr %204, align 4, !tbaa !126
  br label %225

207:                                              ; preds = %160
  %208 = and i32 %130, 32
  %209 = icmp eq i32 %208, 0
  br i1 %209, label %210, label %225

210:                                              ; preds = %207
  %211 = and i32 %130, 16
  %212 = icmp eq i32 %211, 0
  br i1 %212, label %217, label %213

213:                                              ; preds = %210
  %214 = getelementptr inbounds %struct.normalize_state, ptr %4, i64 0, i32 2
  %215 = load i32, ptr %214, align 4, !tbaa !126
  %216 = tail call i32 @llvm.umax.i32(i32 %215, i32 1)
  store i32 %216, ptr %214, align 4, !tbaa !126
  br label %225

217:                                              ; preds = %210
  %218 = and i32 %130, 8
  %219 = icmp eq i32 %218, 0
  %220 = getelementptr inbounds %struct.normalize_state, ptr %4, i64 0, i32 2
  br i1 %219, label %224, label %221

221:                                              ; preds = %217
  %222 = load i32, ptr %220, align 4, !tbaa !126
  %223 = tail call i32 @llvm.umax.i32(i32 %222, i32 2)
  store i32 %223, ptr %220, align 4, !tbaa !126
  br label %225

224:                                              ; preds = %217
  store i32 3, ptr %220, align 4, !tbaa !126
  br label %225

225:                                              ; preds = %224, %221, %213, %207, %203, %202, %200, %158
  store i32 %60, ptr %4, align 4, !tbaa !117
  %226 = getelementptr inbounds %struct.normalize_state, ptr %4, i64 0, i32 1
  store i8 %152, ptr %226, align 4, !tbaa !119
  %227 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 53, i32 29
  %228 = load i8, ptr %227, align 1, !tbaa !110
  %229 = icmp ne i8 %228, 0
  %230 = and i8 %129, 2
  %231 = icmp ne i8 %230, 0
  %232 = and i1 %231, %229
  br label %233

233:                                              ; preds = %225, %110, %126, %137, %144
  %234 = phi i1 [ true, %110 ], [ true, %126 ], [ true, %137 ], [ true, %144 ], [ false, %225 ]
  %235 = phi i1 [ false, %110 ], [ false, %126 ], [ false, %137 ], [ false, %144 ], [ %232, %225 ]
  br i1 %234, label %236, label %242

236:                                              ; preds = %233
  %237 = ptrtoint ptr %59 to i64
  %238 = ptrtoint ptr %7 to i64
  %239 = sub i64 %237, %238
  %240 = trunc i64 %239 to i32
  %241 = tail call zeroext i8 (ptr, i32, ptr, ...) @cpp_error(ptr noundef %0, i32 noundef 3, ptr noundef nonnull @.str.14, i32 noundef %240, ptr noundef nonnull %7) #16
  br label %251

242:                                              ; preds = %233
  %243 = icmp eq i32 %3, 1
  %244 = and i1 %243, %235
  br i1 %244, label %245, label %251

245:                                              ; preds = %242
  %246 = ptrtoint ptr %59 to i64
  %247 = ptrtoint ptr %7 to i64
  %248 = sub i64 %246, %247
  %249 = trunc i64 %248 to i32
  %250 = tail call zeroext i8 (ptr, i32, ptr, ...) @cpp_error(ptr noundef %0, i32 noundef 3, ptr noundef nonnull @.str.15, i32 noundef %249, ptr noundef nonnull %7) #16
  br label %251

251:                                              ; preds = %236, %245, %242, %84, %109, %107, %65
  %252 = phi i32 [ 1, %65 ], [ 1, %84 ], [ 36, %107 ], [ %60, %109 ], [ %60, %242 ], [ %60, %245 ], [ %60, %236 ]
  %253 = tail call i32 @llvm.umax.i32(i32 %252, i32 1)
  br label %254

254:                                              ; preds = %57, %251
  %255 = phi i32 [ %253, %251 ], [ 0, %57 ]
  ret i32 %255
}

; Function Attrs: nounwind uwtable
define dso_local noundef zeroext i8 @cpp_interpret_string(ptr noundef %0, ptr nocapture noundef readonly %1, i64 noundef %2, ptr nocapture noundef writeonly %3, i32 noundef %4) local_unnamed_addr #8 !prof !127 {
  %6 = alloca %struct.cset_converter, align 8
  %7 = alloca %struct.cset_converter, align 8
  %8 = alloca [6 x i8], align 1
  %9 = alloca ptr, align 8
  %10 = alloca [6 x i8], align 1
  %11 = alloca %struct.normalize_state, align 4
  %12 = alloca i8, align 1
  %13 = alloca [32 x i8], align 16
  %14 = alloca %struct._cpp_strbuf, align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %14) #16
  switch i32 %4, label %15 [
    i32 65, label %19
    i32 58, label %23
    i32 63, label %23
    i32 59, label %27
    i32 64, label %27
    i32 57, label %31
    i32 62, label %31
  ], !prof !128

15:                                               ; preds = %5
  %16 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 36
  %17 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 36, i32 1
  %18 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 36, i32 2
  br label %35

19:                                               ; preds = %5
  %20 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 37
  %21 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 37, i32 1
  %22 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 37, i32 2
  br label %35

23:                                               ; preds = %5, %5
  %24 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 38
  %25 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 38, i32 1
  %26 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 38, i32 2
  br label %35

27:                                               ; preds = %5, %5
  %28 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 39
  %29 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 39, i32 1
  %30 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 39, i32 2
  br label %35

31:                                               ; preds = %5, %5
  %32 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 40
  %33 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 40, i32 1
  %34 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 40, i32 2
  br label %35

35:                                               ; preds = %15, %19, %23, %27, %31
  %36 = phi ptr [ %18, %15 ], [ %34, %31 ], [ %30, %27 ], [ %26, %23 ], [ %22, %19 ]
  %37 = phi ptr [ %17, %15 ], [ %33, %31 ], [ %29, %27 ], [ %25, %23 ], [ %21, %19 ]
  %38 = phi ptr [ %16, %15 ], [ %32, %31 ], [ %28, %27 ], [ %24, %23 ], [ %20, %19 ]
  %39 = load ptr, ptr %38, align 8
  %40 = load ptr, ptr %37, align 8
  %41 = load i64, ptr %36, align 8
  %42 = load i32, ptr %1, align 8, !tbaa !129
  %43 = tail call i32 @llvm.umax.i32(i32 %42, i32 256)
  %44 = zext i32 %43 to i64
  %45 = getelementptr inbounds %struct._cpp_strbuf, ptr %14, i64 0, i32 1
  store i64 %44, ptr %45, align 8, !tbaa !103
  %46 = tail call ptr @xmalloc(i64 noundef %44) #16
  store ptr %46, ptr %14, align 8, !tbaa !105
  %47 = getelementptr inbounds %struct._cpp_strbuf, ptr %14, i64 0, i32 2
  store i64 0, ptr %47, align 8, !tbaa !106
  %48 = icmp eq i64 %2, 0
  br i1 %48, label %326, label %49, !prof !131

49:                                               ; preds = %35, %323
  %50 = phi i64 [ %324, %323 ], [ 0, %35 ]
  %51 = getelementptr inbounds %struct.cpp_string, ptr %1, i64 %50
  %52 = getelementptr inbounds %struct.cpp_string, ptr %1, i64 %50, i32 1
  %53 = load ptr, ptr %52, align 8, !tbaa !132
  %54 = load i8, ptr %53, align 1, !tbaa !102
  switch i8 %54, label %63 [
    i8 117, label %55
    i8 76, label %61
    i8 85, label %61
  ], !prof !133

55:                                               ; preds = %49
  %56 = getelementptr inbounds i8, ptr %53, i64 1
  %57 = load i8, ptr %56, align 1, !tbaa !102
  %58 = icmp eq i8 %57, 56
  %59 = getelementptr inbounds i8, ptr %53, i64 2
  %60 = select i1 %58, ptr %59, ptr %56
  br label %63

61:                                               ; preds = %49, %49
  %62 = getelementptr inbounds i8, ptr %53, i64 1
  br label %63

63:                                               ; preds = %55, %49, %61
  %64 = phi ptr [ %62, %61 ], [ %60, %55 ], [ %53, %49 ]
  %65 = load i8, ptr %64, align 1, !tbaa !102
  %66 = icmp eq i8 %65, 82
  br i1 %66, label %67, label %92, !prof !134

67:                                               ; preds = %63
  %68 = getelementptr inbounds i8, ptr %64, i64 2
  br label %69

69:                                               ; preds = %69, %67
  %70 = phi ptr [ %68, %67 ], [ %73, %69 ]
  %71 = load i8, ptr %70, align 1, !tbaa !102
  %72 = icmp eq i8 %71, 40
  %73 = getelementptr inbounds i8, ptr %70, i64 1
  br i1 %72, label %74, label %69, !llvm.loop !135

74:                                               ; preds = %69
  %75 = getelementptr inbounds i8, ptr %70, i64 1
  %76 = load i32, ptr %51, align 8, !tbaa !129
  %77 = zext i32 %76 to i64
  %78 = getelementptr inbounds i8, ptr %53, i64 %77
  %79 = ptrtoint ptr %75 to i64
  %80 = ptrtoint ptr %68 to i64
  %81 = sub i64 %79, %80
  %82 = getelementptr inbounds i8, ptr %75, i64 %81
  %83 = getelementptr inbounds i8, ptr %82, i64 1
  %84 = icmp ult ptr %78, %83
  %85 = xor i64 %81, -1
  %86 = select i1 %84, i64 0, i64 %85
  %87 = getelementptr inbounds i8, ptr %78, i64 %86
  %88 = ptrtoint ptr %87 to i64
  %89 = sub i64 %88, %79
  %90 = call zeroext i8 %39(ptr noundef %40, ptr noundef nonnull %75, i64 noundef %89, ptr noundef nonnull %14) #16
  %91 = icmp eq i8 %90, 0
  br i1 %91, label %382, label %323

92:                                               ; preds = %63
  %93 = getelementptr inbounds i8, ptr %64, i64 1
  %94 = load i32, ptr %51, align 8, !tbaa !129
  %95 = zext i32 %94 to i64
  %96 = getelementptr inbounds i8, ptr %53, i64 %95
  %97 = getelementptr inbounds i8, ptr %96, i64 -1
  br label %98

98:                                               ; preds = %321, %92
  %99 = phi ptr [ %93, %92 ], [ %322, %321 ]
  %100 = icmp ult ptr %99, %97
  br i1 %100, label %101, label %108, !prof !136

101:                                              ; preds = %98, %105
  %102 = phi ptr [ %106, %105 ], [ %99, %98 ]
  %103 = load i8, ptr %102, align 1, !tbaa !102
  %104 = icmp eq i8 %103, 92
  br i1 %104, label %108, label %105, !prof !137

105:                                              ; preds = %101
  %106 = getelementptr inbounds i8, ptr %102, i64 1
  %107 = icmp ult ptr %106, %97
  br i1 %107, label %101, label %108, !prof !138, !llvm.loop !139

108:                                              ; preds = %101, %105, %98
  %109 = phi ptr [ %99, %98 ], [ %102, %101 ], [ %106, %105 ]
  %110 = icmp ugt ptr %109, %99
  br i1 %110, label %111, label %117, !prof !140

111:                                              ; preds = %108
  %112 = ptrtoint ptr %109 to i64
  %113 = ptrtoint ptr %99 to i64
  %114 = sub i64 %112, %113
  %115 = call zeroext i8 %39(ptr noundef %40, ptr noundef %99, i64 noundef %114, ptr noundef nonnull %14) #16, !prof !141
  %116 = icmp eq i8 %115, 0
  br i1 %116, label %382, label %117, !prof !142

117:                                              ; preds = %111, %108
  %118 = icmp eq ptr %109, %97
  br i1 %118, label %323, label %119, !prof !143

119:                                              ; preds = %117
  %120 = getelementptr inbounds i8, ptr %109, i64 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %12) #16
  %121 = load i8, ptr %120, align 1, !tbaa !102
  store i8 %121, ptr %12, align 1, !tbaa !102
  switch i8 %121, label %301 [
    i8 117, label %122
    i8 85, label %122
    i8 120, label %177
    i8 48, label %237
    i8 49, label %237
    i8 50, label %237
    i8 51, label %237
    i8 52, label %237
    i8 53, label %237
    i8 54, label %237
    i8 55, label %237
    i8 92, label %314
    i8 39, label %314
    i8 34, label %314
    i8 63, label %314
    i8 40, label %276
    i8 123, label %276
    i8 91, label %276
    i8 37, label %276
    i8 98, label %280
    i8 102, label %281
    i8 110, label %282
    i8 114, label %283
    i8 116, label %284
    i8 118, label %285
    i8 97, label %286
    i8 101, label %293
    i8 69, label %293
  ], !prof !144

122:                                              ; preds = %119, %119
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %9)
  store ptr %120, ptr %9, align 8, !tbaa !51
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %10) #16
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %11) #16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %11, i8 0, i64 12, i1 false)
  %123 = getelementptr inbounds i8, ptr %109, i64 2
  store ptr %123, ptr %9, align 8, !tbaa !51
  %124 = call i32 @_cpp_valid_ucn(ptr noundef %0, ptr noundef nonnull %9, ptr noundef nonnull %97, i32 noundef 0, ptr noundef nonnull %11)
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %8) #16
  %125 = icmp ult i32 %124, 128
  br i1 %125, label %126, label %129

126:                                              ; preds = %122
  %127 = getelementptr inbounds i8, ptr %8, i64 5
  %128 = trunc i32 %124 to i8
  store i8 %128, ptr %127, align 1, !tbaa !102
  br label %155

129:                                              ; preds = %122, %147
  %130 = phi i32 [ %138, %147 ], [ %124, %122 ]
  %131 = phi i64 [ %139, %147 ], [ 1, %122 ]
  %132 = phi i64 [ %136, %147 ], [ 6, %122 ]
  %133 = trunc i32 %130 to i8
  %134 = and i8 %133, 63
  %135 = or disjoint i8 %134, -128
  %136 = add nsw i64 %132, -1
  %137 = getelementptr inbounds i8, ptr %8, i64 %136
  store i8 %135, ptr %137, align 1, !tbaa !102
  %138 = lshr i32 %130, 6
  %139 = add i64 %131, 1
  %140 = icmp ugt i32 %130, 4031
  br i1 %140, label %147, label %141

141:                                              ; preds = %129
  %142 = getelementptr inbounds [6 x i8], ptr @one_cppchar_to_utf8.limits, i64 0, i64 %131
  %143 = load i8, ptr %142, align 1, !tbaa !102
  %144 = zext i8 %143 to i32
  %145 = and i32 %138, %144
  %146 = icmp eq i32 %145, 0
  br i1 %146, label %148, label %147

147:                                              ; preds = %141, %129
  br label %129, !llvm.loop !145

148:                                              ; preds = %141
  %149 = getelementptr inbounds [6 x i8], ptr @one_cppchar_to_utf8.masks, i64 0, i64 %131
  %150 = load i8, ptr %149, align 1, !tbaa !102
  %151 = trunc i32 %138 to i8
  %152 = or i8 %150, %151
  %153 = add nsw i64 %132, -2
  %154 = getelementptr inbounds i8, ptr %8, i64 %153
  store i8 %152, ptr %154, align 1, !tbaa !102
  br label %155

155:                                              ; preds = %148, %126
  %156 = phi i64 [ 1, %126 ], [ %139, %148 ]
  %157 = phi i64 [ 5, %126 ], [ %153, %148 ]
  %158 = icmp ult i64 %156, 7
  br i1 %158, label %159, label %164

159:                                              ; preds = %155
  %160 = icmp slt i64 %157, 6
  br i1 %160, label %161, label %164

161:                                              ; preds = %159
  %162 = getelementptr i8, ptr %8, i64 %157
  %163 = sub i64 6, %157
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %10, ptr align 1 %162, i64 %163, i1 false), !tbaa !102
  br label %164

164:                                              ; preds = %161, %159, %155
  %165 = phi i64 [ 0, %155 ], [ %156, %159 ], [ %156, %161 ]
  %166 = phi i32 [ 7, %155 ], [ 0, %159 ], [ 0, %161 ]
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %8) #16
  br i1 %158, label %169, label %167

167:                                              ; preds = %164
  %168 = tail call ptr @__errno_location() #18
  store i32 %166, ptr %168, align 4, !tbaa !55
  br label %172

169:                                              ; preds = %164
  %170 = call zeroext i8 %39(ptr noundef %40, ptr noundef nonnull %10, i64 noundef %165, ptr noundef nonnull %14) #16
  %171 = icmp eq i8 %170, 0
  br i1 %171, label %172, label %175

172:                                              ; preds = %169, %167
  %173 = phi ptr [ @.str.17, %167 ], [ @.str.37, %169 ]
  %174 = call zeroext i8 @cpp_errno(ptr noundef %0, i32 noundef 3, ptr noundef nonnull %173) #16
  br label %175

175:                                              ; preds = %172, %169
  %176 = load ptr, ptr %9, align 8, !tbaa !51
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %11) #16
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %10) #16
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %9)
  br label %321

177:                                              ; preds = %119
  %178 = getelementptr inbounds i8, ptr %7, i64 8
  %179 = getelementptr inbounds i8, ptr %7, i64 16
  %180 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 53, i32 17
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %7)
  store ptr %39, ptr %7, align 8
  store ptr %40, ptr %178, align 8
  store i64 %41, ptr %179, align 8
  %181 = load i32, ptr %179, align 8, !tbaa !92
  %182 = call i32 @llvm.umin.i32(i32 %181, i32 32)
  %183 = zext nneg i32 %182 to i64
  %184 = shl nsw i64 -1, %183
  %185 = xor i64 %184, -1
  %186 = load i8, ptr %180, align 1, !tbaa !111
  %187 = icmp eq i8 %186, 0
  br i1 %187, label %190, label %188

188:                                              ; preds = %177
  %189 = call zeroext i8 (ptr, i32, ptr, ...) @cpp_error(ptr noundef %0, i32 noundef 0, ptr noundef nonnull @.str.38) #16
  br label %190

190:                                              ; preds = %188, %177
  %191 = getelementptr inbounds i8, ptr %109, i64 2
  %192 = icmp ult ptr %191, %97
  br i1 %192, label %193, label %217

193:                                              ; preds = %190
  %194 = load i8, ptr %191, align 1, !tbaa !102
  %195 = zext i8 %194 to i64
  %196 = getelementptr inbounds [256 x i8], ptr @_hex_value, i64 0, i64 %195
  %197 = load i8, ptr %196, align 1, !tbaa !102
  %198 = icmp eq i8 %197, 99
  br i1 %198, label %217, label %205

199:                                              ; preds = %205
  %200 = load i8, ptr %215, align 1, !tbaa !102
  %201 = zext i8 %200 to i64
  %202 = getelementptr inbounds [256 x i8], ptr @_hex_value, i64 0, i64 %201
  %203 = load i8, ptr %202, align 1, !tbaa !102
  %204 = icmp eq i8 %203, 99
  br i1 %204, label %217, label %205, !llvm.loop !146

205:                                              ; preds = %193, %199
  %206 = phi i8 [ %203, %199 ], [ %197, %193 ]
  %207 = phi i32 [ %214, %199 ], [ 0, %193 ]
  %208 = phi i32 [ %213, %199 ], [ 0, %193 ]
  %209 = phi ptr [ %215, %199 ], [ %191, %193 ]
  %210 = zext i8 %206 to i32
  %211 = shl i32 %207, 4
  %212 = and i32 %207, -268435456
  %213 = or i32 %208, %212
  %214 = add i32 %211, %210
  %215 = getelementptr inbounds i8, ptr %209, i64 1
  %216 = icmp ult ptr %215, %97
  br i1 %216, label %199, label %217, !llvm.loop !146

217:                                              ; preds = %199, %205, %193, %190
  %218 = phi i32 [ 0, %190 ], [ 0, %193 ], [ %214, %205 ], [ %214, %199 ]
  %219 = phi i32 [ 0, %190 ], [ 0, %193 ], [ %213, %205 ], [ %213, %199 ]
  %220 = phi i1 [ true, %190 ], [ %198, %193 ], [ %198, %205 ], [ %198, %199 ]
  %221 = phi ptr [ %191, %190 ], [ %191, %193 ], [ %215, %205 ], [ %215, %199 ]
  br i1 %220, label %222, label %224

222:                                              ; preds = %217
  %223 = call zeroext i8 (ptr, i32, ptr, ...) @cpp_error(ptr noundef %0, i32 noundef 3, ptr noundef nonnull @.str.39) #16
  br label %236

224:                                              ; preds = %217
  %225 = zext i32 %218 to i64
  %226 = icmp ugt i64 %225, %185
  %227 = zext i1 %226 to i32
  %228 = or disjoint i32 %219, %227
  %229 = icmp eq i32 %228, 0
  br i1 %229, label %234, label %230

230:                                              ; preds = %224
  %231 = call zeroext i8 (ptr, i32, ptr, ...) @cpp_error(ptr noundef %0, i32 noundef 2, ptr noundef nonnull @.str.40) #16
  %232 = trunc i64 %185 to i32
  %233 = and i32 %218, %232
  br label %234

234:                                              ; preds = %230, %224
  %235 = phi i32 [ %233, %230 ], [ %218, %224 ]
  call fastcc void @emit_numeric_escape(ptr noundef %0, i32 noundef %235, ptr noundef nonnull %14, ptr noundef nonnull byval(%struct.cset_converter) align 8 %7)
  br label %236

236:                                              ; preds = %234, %222
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %7)
  br label %321

237:                                              ; preds = %119, %119, %119, %119, %119, %119, %119, %119
  %238 = getelementptr inbounds i8, ptr %6, i64 8
  %239 = getelementptr inbounds i8, ptr %6, i64 16
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %6)
  store ptr %39, ptr %6, align 8
  store ptr %40, ptr %238, align 8
  store i64 %41, ptr %239, align 8
  %240 = load i32, ptr %239, align 8, !tbaa !92
  %241 = call i32 @llvm.umin.i32(i32 %240, i32 32)
  %242 = zext nneg i32 %241 to i64
  %243 = shl nsw i64 -1, %242
  %244 = xor i64 %243, -1
  %245 = icmp ult ptr %120, %97
  br i1 %245, label %246, label %265, !prof !147

246:                                              ; preds = %237
  %247 = getelementptr i8, ptr %109, i64 4
  br label %248

248:                                              ; preds = %246, %258
  %249 = phi ptr [ %260, %258 ], [ %120, %246 ]
  %250 = phi i64 [ %252, %258 ], [ 0, %246 ]
  %251 = phi i32 [ %263, %258 ], [ 0, %246 ]
  %252 = add nuw nsw i64 %250, 1
  %253 = icmp eq i64 %250, 3
  br i1 %253, label %265, label %254, !prof !79

254:                                              ; preds = %248
  %255 = load i8, ptr %249, align 1, !tbaa !102
  %256 = add i8 %255, -56
  %257 = icmp ult i8 %256, -8
  br i1 %257, label %265, label %258, !prof !79

258:                                              ; preds = %254
  %259 = zext nneg i8 %255 to i32
  %260 = getelementptr inbounds i8, ptr %249, i64 1
  %261 = shl i32 %251, 3
  %262 = add i32 %261, -48
  %263 = add i32 %262, %259
  %264 = icmp ult ptr %260, %97
  br i1 %264, label %248, label %265, !prof !148, !llvm.loop !149

265:                                              ; preds = %258, %248, %254, %237
  %266 = phi i32 [ 0, %237 ], [ %263, %258 ], [ %251, %248 ], [ %251, %254 ]
  %267 = phi ptr [ %120, %237 ], [ %260, %258 ], [ %247, %248 ], [ %249, %254 ]
  %268 = zext i32 %266 to i64
  %269 = icmp ugt i64 %268, %244
  br i1 %269, label %270, label %274, !prof !79

270:                                              ; preds = %265
  %271 = call zeroext i8 (ptr, i32, ptr, ...) @cpp_error(ptr noundef %0, i32 noundef 2, ptr noundef nonnull @.str.41) #16
  %272 = trunc i64 %244 to i32
  %273 = and i32 %266, %272
  br label %274

274:                                              ; preds = %270, %265
  %275 = phi i32 [ %273, %270 ], [ %266, %265 ]
  call fastcc void @emit_numeric_escape(ptr noundef %0, i32 noundef %275, ptr noundef nonnull %14, ptr noundef nonnull byval(%struct.cset_converter) align 8 %6)
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %6)
  br label %321

276:                                              ; preds = %119, %119, %119, %119
  %277 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 53, i32 31
  %278 = load i8, ptr %277, align 1, !tbaa !124
  %279 = icmp eq i8 %278, 0
  br i1 %279, label %314, label %301

280:                                              ; preds = %119
  store i8 8, ptr %12, align 1, !tbaa !102
  br label %314

281:                                              ; preds = %119
  store i8 12, ptr %12, align 1, !tbaa !102
  br label %314

282:                                              ; preds = %119
  store i8 10, ptr %12, align 1, !tbaa !102
  br label %314

283:                                              ; preds = %119
  store i8 13, ptr %12, align 1, !tbaa !102
  br label %314

284:                                              ; preds = %119
  store i8 9, ptr %12, align 1, !tbaa !102
  br label %314

285:                                              ; preds = %119
  store i8 11, ptr %12, align 1, !tbaa !102
  br label %314

286:                                              ; preds = %119
  %287 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 53, i32 17
  %288 = load i8, ptr %287, align 1, !tbaa !111
  %289 = icmp eq i8 %288, 0
  br i1 %289, label %292, label %290

290:                                              ; preds = %286
  %291 = call zeroext i8 (ptr, i32, ptr, ...) @cpp_error(ptr noundef %0, i32 noundef 0, ptr noundef nonnull @.str.31) #16
  br label %292

292:                                              ; preds = %290, %286
  store i8 7, ptr %12, align 1, !tbaa !102
  br label %314

293:                                              ; preds = %119, %119
  %294 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 53, i32 31
  %295 = load i8, ptr %294, align 1, !tbaa !124
  %296 = icmp eq i8 %295, 0
  br i1 %296, label %300, label %297

297:                                              ; preds = %293
  %298 = zext i8 %121 to i32
  %299 = call zeroext i8 (ptr, i32, ptr, ...) @cpp_error(ptr noundef %0, i32 noundef 2, ptr noundef nonnull @.str.32, i32 noundef %298) #16
  br label %300

300:                                              ; preds = %297, %293
  store i8 27, ptr %12, align 1, !tbaa !102
  br label %314

301:                                              ; preds = %119, %276
  %302 = zext i8 %121 to i64
  %303 = getelementptr inbounds [256 x i16], ptr @_sch_istable, i64 0, i64 %302
  %304 = load i16, ptr %303, align 2, !tbaa !112
  %305 = and i16 %304, 172
  %306 = icmp eq i16 %305, 0
  br i1 %306, label %310, label %307

307:                                              ; preds = %301
  %308 = zext i8 %121 to i32
  %309 = call zeroext i8 (ptr, i32, ptr, ...) @cpp_error(ptr noundef %0, i32 noundef 2, ptr noundef nonnull @.str.33, i32 noundef %308) #16
  br label %314

310:                                              ; preds = %301
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %13) #16
  %311 = zext i8 %121 to i32
  %312 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %13, ptr noundef nonnull dereferenceable(1) @.str.34, i32 noundef %311) #16
  %313 = call zeroext i8 (ptr, i32, ptr, ...) @cpp_error(ptr noundef %0, i32 noundef 2, ptr noundef nonnull @.str.35, ptr noundef nonnull %13) #16
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %13) #16
  br label %314

314:                                              ; preds = %276, %119, %119, %119, %310, %307, %300, %292, %285, %284, %283, %282, %281, %280, %119
  %315 = call zeroext i8 %39(ptr noundef %40, ptr noundef nonnull %12, i64 noundef 1, ptr noundef nonnull %14) #16, !prof !150
  %316 = icmp eq i8 %315, 0
  br i1 %316, label %317, label %319, !prof !79

317:                                              ; preds = %314
  %318 = call zeroext i8 @cpp_errno(ptr noundef %0, i32 noundef 3, ptr noundef nonnull @.str.36) #16
  br label %319

319:                                              ; preds = %317, %314
  %320 = getelementptr inbounds i8, ptr %109, i64 2
  br label %321

321:                                              ; preds = %175, %236, %274, %319
  %322 = phi ptr [ %320, %319 ], [ %267, %274 ], [ %221, %236 ], [ %176, %175 ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %12) #16
  br label %98, !llvm.loop !151

323:                                              ; preds = %117, %74
  %324 = add nuw i64 %50, 1
  %325 = icmp eq i64 %324, %2
  br i1 %325, label %326, label %49, !prof !136, !llvm.loop !152

326:                                              ; preds = %323, %35
  %327 = shl i64 %41, 32
  %328 = ashr exact i64 %327, 32
  %329 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 53, i32 45
  %330 = load i64, ptr %329, align 8, !tbaa !81
  %331 = icmp eq i64 %330, %328
  br i1 %331, label %361, label %332, !prof !153

332:                                              ; preds = %326
  %333 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 53, i32 50
  %334 = load i8, ptr %333, align 2, !tbaa !76
  %335 = udiv i64 %328, %330
  %336 = load i64, ptr %47, align 8, !tbaa !106
  %337 = add i64 %336, %335
  %338 = load i64, ptr %45, align 8, !tbaa !103
  %339 = icmp ugt i64 %337, %338
  br i1 %339, label %340, label %344

340:                                              ; preds = %332
  %341 = add i64 %338, 256
  store i64 %341, ptr %45, align 8, !tbaa !103
  %342 = load ptr, ptr %14, align 8, !tbaa !105
  %343 = call ptr @xrealloc(ptr noundef %342, i64 noundef %341) #16
  store ptr %343, ptr %14, align 8, !tbaa !105
  br label %344

344:                                              ; preds = %340, %332
  %345 = icmp ugt i64 %330, %328
  br i1 %345, label %358, label %346

346:                                              ; preds = %344
  %347 = icmp eq i8 %334, 0
  br label %348

348:                                              ; preds = %348, %346
  %349 = phi i64 [ 0, %346 ], [ %356, %348 ]
  %350 = load ptr, ptr %14, align 8, !tbaa !105
  %351 = xor i64 %349, -1
  %352 = add i64 %335, %351
  %353 = select i1 %347, i64 %349, i64 %352
  %354 = getelementptr i8, ptr %350, i64 %336
  %355 = getelementptr i8, ptr %354, i64 %353
  store i8 0, ptr %355, align 1, !tbaa !102
  %356 = add nuw i64 %349, 1
  %357 = icmp ult i64 %356, %335
  br i1 %357, label %348, label %358, !llvm.loop !154

358:                                              ; preds = %348, %344
  %359 = load i64, ptr %47, align 8, !tbaa !106
  %360 = add i64 %359, %335
  store i64 %360, ptr %47, align 8, !tbaa !106
  br label %375

361:                                              ; preds = %326
  %362 = load i64, ptr %47, align 8, !tbaa !106
  %363 = add i64 %362, 1
  %364 = load i64, ptr %45, align 8, !tbaa !103
  %365 = icmp ugt i64 %363, %364
  br i1 %365, label %366, label %370, !prof !155

366:                                              ; preds = %361
  %367 = add i64 %364, 256
  store i64 %367, ptr %45, align 8, !tbaa !103
  %368 = load ptr, ptr %14, align 8, !tbaa !105
  %369 = call ptr @xrealloc(ptr noundef %368, i64 noundef %367) #16
  store ptr %369, ptr %14, align 8, !tbaa !105
  br label %370

370:                                              ; preds = %366, %361
  %371 = load ptr, ptr %14, align 8, !tbaa !105
  %372 = load i64, ptr %47, align 8, !tbaa !106
  %373 = add i64 %372, 1
  store i64 %373, ptr %47, align 8, !tbaa !106
  %374 = getelementptr inbounds i8, ptr %371, i64 %372
  store i8 0, ptr %374, align 1, !tbaa !102
  br label %375

375:                                              ; preds = %358, %370
  %376 = load ptr, ptr %14, align 8, !tbaa !105
  %377 = load i64, ptr %47, align 8, !tbaa !106
  %378 = call ptr @xrealloc(ptr noundef %376, i64 noundef %377) #16
  store ptr %378, ptr %14, align 8, !tbaa !105
  %379 = getelementptr inbounds %struct.cpp_string, ptr %3, i64 0, i32 1
  store ptr %378, ptr %379, align 8, !tbaa !132
  %380 = load i64, ptr %47, align 8, !tbaa !106
  %381 = trunc i64 %380 to i32
  store i32 %381, ptr %3, align 8, !tbaa !129
  br label %385

382:                                              ; preds = %74, %111
  %383 = call zeroext i8 @cpp_errno(ptr noundef %0, i32 noundef 3, ptr noundef nonnull @.str.6) #16
  %384 = load ptr, ptr %14, align 8, !tbaa !105
  call void @free(ptr noundef %384) #16
  br label %385

385:                                              ; preds = %382, %375
  %386 = phi i8 [ 0, %382 ], [ 1, %375 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %14) #16
  ret i8 %386
}

; Function Attrs: nounwind uwtable
define internal fastcc void @emit_numeric_escape(ptr nocapture noundef readonly %0, i32 noundef %1, ptr nocapture noundef %2, ptr nocapture noundef readonly byval(%struct.cset_converter) align 8 %3) unnamed_addr #8 !prof !57 !PGOFuncName !156 {
  %5 = getelementptr inbounds %struct.cset_converter, ptr %3, i64 0, i32 2
  %6 = load i32, ptr %5, align 8, !tbaa !92
  %7 = sext i32 %6 to i64
  %8 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 53, i32 45
  %9 = load i64, ptr %8, align 8, !tbaa !81
  %10 = icmp eq i64 %9, %7
  br i1 %10, label %51, label %11, !prof !153

11:                                               ; preds = %4
  %12 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 53, i32 50
  %13 = load i8, ptr %12, align 2, !tbaa !76
  %14 = tail call i64 @llvm.umin.i64(i64 %9, i64 32)
  %15 = shl nsw i64 -1, %14
  %16 = udiv i64 %7, %9
  %17 = getelementptr inbounds %struct._cpp_strbuf, ptr %2, i64 0, i32 2
  %18 = load i64, ptr %17, align 8, !tbaa !106
  %19 = add i64 %18, %16
  %20 = getelementptr inbounds %struct._cpp_strbuf, ptr %2, i64 0, i32 1
  %21 = load i64, ptr %20, align 8, !tbaa !103
  %22 = icmp ugt i64 %19, %21
  br i1 %22, label %23, label %27

23:                                               ; preds = %11
  %24 = add i64 %21, 256
  store i64 %24, ptr %20, align 8, !tbaa !103
  %25 = load ptr, ptr %2, align 8, !tbaa !105
  %26 = tail call ptr @xrealloc(ptr noundef %25, i64 noundef %24) #16
  store ptr %26, ptr %2, align 8, !tbaa !105
  br label %27

27:                                               ; preds = %23, %11
  %28 = icmp ugt i64 %9, %7
  br i1 %28, label %48, label %29

29:                                               ; preds = %27
  %30 = trunc i64 %15 to i32
  %31 = xor i32 %30, -1
  %32 = trunc i64 %9 to i32
  %33 = icmp eq i8 %13, 0
  br label %34

34:                                               ; preds = %29, %34
  %35 = phi i32 [ %1, %29 ], [ %38, %34 ]
  %36 = phi i64 [ 0, %29 ], [ %46, %34 ]
  %37 = and i32 %35, %31
  %38 = lshr i32 %35, %32
  %39 = trunc i32 %37 to i8
  %40 = load ptr, ptr %2, align 8, !tbaa !105
  %41 = xor i64 %36, -1
  %42 = add i64 %16, %41
  %43 = select i1 %33, i64 %36, i64 %42
  %44 = getelementptr i8, ptr %40, i64 %18
  %45 = getelementptr i8, ptr %44, i64 %43
  store i8 %39, ptr %45, align 1, !tbaa !102
  %46 = add nuw i64 %36, 1
  %47 = icmp ult i64 %46, %16
  br i1 %47, label %34, label %48, !llvm.loop !154

48:                                               ; preds = %34, %27
  %49 = load i64, ptr %17, align 8, !tbaa !106
  %50 = add i64 %49, %16
  store i64 %50, ptr %17, align 8, !tbaa !106
  br label %68

51:                                               ; preds = %4
  %52 = getelementptr inbounds %struct._cpp_strbuf, ptr %2, i64 0, i32 2
  %53 = load i64, ptr %52, align 8, !tbaa !106
  %54 = add i64 %53, 1
  %55 = getelementptr inbounds %struct._cpp_strbuf, ptr %2, i64 0, i32 1
  %56 = load i64, ptr %55, align 8, !tbaa !103
  %57 = icmp ugt i64 %54, %56
  br i1 %57, label %58, label %62, !prof !155

58:                                               ; preds = %51
  %59 = add i64 %56, 256
  store i64 %59, ptr %55, align 8, !tbaa !103
  %60 = load ptr, ptr %2, align 8, !tbaa !105
  %61 = tail call ptr @xrealloc(ptr noundef %60, i64 noundef %59) #16
  store ptr %61, ptr %2, align 8, !tbaa !105
  br label %62

62:                                               ; preds = %58, %51
  %63 = trunc i32 %1 to i8
  %64 = load ptr, ptr %2, align 8, !tbaa !105
  %65 = load i64, ptr %52, align 8, !tbaa !106
  %66 = add i64 %65, 1
  store i64 %66, ptr %52, align 8, !tbaa !106
  %67 = getelementptr inbounds i8, ptr %64, i64 %65
  store i8 %63, ptr %67, align 1, !tbaa !102
  br label %68

68:                                               ; preds = %62, %48
  ret void
}

declare ptr @xrealloc(ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind uwtable
define dso_local noundef zeroext i8 @cpp_interpret_string_notranslate(ptr noundef %0, ptr nocapture noundef readonly %1, i64 noundef %2, ptr nocapture noundef writeonly %3, i32 noundef %4) local_unnamed_addr #2 !prof !57 {
  %6 = alloca %struct.cset_converter, align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %6)
  %7 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 36
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %6, ptr noundef nonnull align 8 dereferenceable(24) %7, i64 24, i1 false), !tbaa.struct !80
  store ptr @convert_no_conversion, ptr %7, align 8, !tbaa !107
  %8 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 36, i32 1
  store ptr inttoptr (i64 -1 to ptr), ptr %8, align 8, !tbaa !108
  %9 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 53, i32 45
  %10 = load i64, ptr %9, align 8, !tbaa !81
  %11 = trunc i64 %10 to i32
  %12 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 36, i32 2
  store i32 %11, ptr %12, align 8, !tbaa !82
  %13 = tail call zeroext i8 @cpp_interpret_string(ptr noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef %3, i32 noundef 61)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %7, ptr noundef nonnull align 8 dereferenceable(24) %6, i64 24, i1 false), !tbaa.struct !80
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %6)
  ret i8 %13
}

; Function Attrs: nounwind uwtable
define internal noundef zeroext i8 @convert_no_conversion(ptr nocapture readnone %0, ptr nocapture noundef readonly %1, i64 noundef %2, ptr nocapture noundef %3) #8 !prof !157 !PGOFuncName !158 {
  %5 = getelementptr inbounds %struct._cpp_strbuf, ptr %3, i64 0, i32 2
  %6 = load i64, ptr %5, align 8, !tbaa !106
  %7 = add i64 %6, %2
  %8 = getelementptr inbounds %struct._cpp_strbuf, ptr %3, i64 0, i32 1
  %9 = load i64, ptr %8, align 8, !tbaa !103
  %10 = icmp ugt i64 %7, %9
  br i1 %10, label %11, label %14, !prof !159

11:                                               ; preds = %4
  store i64 %7, ptr %8, align 8, !tbaa !103
  %12 = load ptr, ptr %3, align 8, !tbaa !105
  %13 = tail call ptr @xrealloc(ptr noundef %12, i64 noundef %7) #16
  store ptr %13, ptr %3, align 8, !tbaa !105
  br label %14

14:                                               ; preds = %11, %4
  %15 = load ptr, ptr %3, align 8, !tbaa !105
  %16 = load i64, ptr %5, align 8, !tbaa !106
  %17 = getelementptr inbounds i8, ptr %15, i64 %16
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %17, ptr align 1 %1, i64 %2, i1 false), !prof !160
  %18 = load i64, ptr %5, align 8, !tbaa !106
  %19 = add i64 %18, %2
  store i64 %19, ptr %5, align 8, !tbaa !106
  ret i8 1
}

; Function Attrs: cold nounwind uwtable
define dso_local i32 @cpp_interpret_charconst(ptr noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef writeonly %2, ptr nocapture noundef writeonly %3) local_unnamed_addr #2 !prof !161 {
  %5 = alloca %struct.cpp_string, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %5, i8 0, i64 16, i1 false)
  %6 = getelementptr inbounds %struct.cpp_token, ptr %1, i64 0, i32 1
  %7 = load i8, ptr %6, align 4
  %8 = icmp eq i8 %7, 56
  %9 = getelementptr inbounds %struct.cpp_token, ptr %1, i64 0, i32 3
  %10 = load i32, ptr %9, align 8, !tbaa !102
  %11 = zext i32 %10 to i64
  %12 = select i1 %8, i64 2, i64 3, !prof !162
  %13 = icmp eq i64 %12, %11
  br i1 %13, label %14, label %16, !prof !98

14:                                               ; preds = %4
  %15 = tail call zeroext i8 (ptr, i32, ptr, ...) @cpp_error(ptr noundef %0, i32 noundef 3, ptr noundef nonnull @.str.16) #16
  br label %197

16:                                               ; preds = %4
  %17 = zext i8 %7 to i32
  %18 = call zeroext i8 @cpp_interpret_string(ptr noundef %0, ptr noundef nonnull %9, i64 noundef 1, ptr noundef nonnull %5, i32 noundef %17)
  %19 = icmp eq i8 %18, 0
  br i1 %19, label %197, label %20, !prof !98

20:                                               ; preds = %16
  br i1 %8, label %113, label %21, !prof !162

21:                                               ; preds = %20
  %22 = load i8, ptr %6, align 4
  %23 = zext i8 %22 to i32
  %24 = load i32, ptr %5, align 8
  %25 = getelementptr inbounds { i32, ptr }, ptr %5, i64 0, i32 1
  %26 = load ptr, ptr %25, align 8
  %27 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 53, i32 50
  %28 = load i8, ptr %27, align 2, !tbaa !76
  switch i8 %22, label %29 [
    i8 65, label %31
    i8 58, label %33
    i8 63, label %33
    i8 59, label %35
    i8 64, label %35
    i8 57, label %37
    i8 62, label %37
  ]

29:                                               ; preds = %21
  %30 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 36, i32 2
  br label %39

31:                                               ; preds = %21
  %32 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 37, i32 2
  br label %39

33:                                               ; preds = %21, %21
  %34 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 38, i32 2
  br label %39

35:                                               ; preds = %21, %21
  %36 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 39, i32 2
  br label %39

37:                                               ; preds = %21, %21
  %38 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 40, i32 2
  br label %39

39:                                               ; preds = %37, %35, %33, %31, %29
  %40 = phi ptr [ %30, %29 ], [ %38, %37 ], [ %36, %35 ], [ %34, %33 ], [ %32, %31 ]
  %41 = load i32, ptr %40, align 8
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 53, i32 45
  %44 = load i64, ptr %43, align 8, !tbaa !81
  %45 = tail call i64 @llvm.umin.i64(i64 %42, i64 32)
  %46 = shl nsw i64 -1, %45
  %47 = xor i64 %46, -1
  %48 = tail call i64 @llvm.umin.i64(i64 %44, i64 32)
  %49 = shl nsw i64 -1, %48
  %50 = xor i64 %49, -1
  %51 = udiv i64 %42, %44
  %52 = zext i32 %24 to i64
  %53 = shl i64 %51, 1
  %54 = icmp ugt i64 %44, %42
  br i1 %54, label %76, label %55

55:                                               ; preds = %39
  %56 = sub i64 %52, %53
  %57 = icmp eq i8 %28, 0
  %58 = getelementptr i8, ptr %26, i64 %56
  %59 = getelementptr i8, ptr %58, i64 %51
  %60 = trunc i64 %44 to i32
  br label %61

61:                                               ; preds = %55, %61
  %62 = phi i64 [ 0, %55 ], [ %74, %61 ]
  %63 = phi i32 [ 0, %55 ], [ %73, %61 ]
  %64 = getelementptr i8, ptr %58, i64 %62
  %65 = xor i64 %62, -1
  %66 = getelementptr i8, ptr %59, i64 %65
  %67 = select i1 %57, ptr %66, ptr %64
  %68 = load i8, ptr %67, align 1, !tbaa !102
  %69 = shl i32 %63, %60
  %70 = zext i8 %68 to i64
  %71 = and i64 %70, %50
  %72 = trunc i64 %71 to i32
  %73 = or i32 %69, %72
  %74 = add nuw i64 %62, 1
  %75 = icmp ult i64 %74, %51
  br i1 %75, label %61, label %76, !llvm.loop !163

76:                                               ; preds = %61, %39
  %77 = phi i32 [ 0, %39 ], [ %73, %61 ]
  %78 = icmp ult i64 %53, %52
  br i1 %78, label %79, label %81

79:                                               ; preds = %76
  %80 = tail call zeroext i8 (ptr, i32, ptr, ...) @cpp_error(ptr noundef %0, i32 noundef 0, ptr noundef nonnull @.str.42) #16
  br label %81

81:                                               ; preds = %79, %76
  %82 = icmp ult i32 %41, 32
  br i1 %82, label %83, label %102

83:                                               ; preds = %81
  %84 = and i32 %23, 254
  %85 = icmp eq i32 %84, 58
  br i1 %85, label %95, label %86

86:                                               ; preds = %83
  %87 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 53, i32 49
  %88 = load i8, ptr %87, align 1, !tbaa !164
  %89 = icmp eq i8 %88, 0
  br i1 %89, label %90, label %95

90:                                               ; preds = %86
  %91 = add nsw i32 %41, -1
  %92 = shl nuw nsw i32 1, %91
  %93 = and i32 %77, %92
  %94 = icmp eq i32 %93, 0
  br i1 %94, label %95, label %98

95:                                               ; preds = %90, %86, %83
  %96 = trunc i64 %47 to i32
  %97 = and i32 %77, %96
  br label %102

98:                                               ; preds = %90
  %99 = trunc i64 %47 to i32
  %100 = xor i32 %99, -1
  %101 = or i32 %77, %100
  br label %102

102:                                              ; preds = %98, %95, %81
  %103 = phi i32 [ %97, %95 ], [ %101, %98 ], [ %77, %81 ]
  %104 = and i32 %23, 254
  %105 = icmp eq i32 %104, 58
  br i1 %105, label %111, label %106

106:                                              ; preds = %102
  %107 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 53, i32 49
  %108 = load i8, ptr %107, align 1, !tbaa !164
  %109 = icmp ne i8 %108, 0
  %110 = zext i1 %109 to i32
  br label %111

111:                                              ; preds = %102, %106
  %112 = phi i32 [ 1, %102 ], [ %110, %106 ]
  store i32 %112, ptr %3, align 4, !tbaa !55
  store i32 1, ptr %2, align 4, !tbaa !55
  br label %189

113:                                              ; preds = %20
  %114 = load i32, ptr %5, align 8
  %115 = getelementptr inbounds { i32, ptr }, ptr %5, i64 0, i32 1
  %116 = load ptr, ptr %115, align 8
  %117 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 53, i32 45
  %118 = load i64, ptr %117, align 8, !tbaa !81
  %119 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 53, i32 46
  %120 = load i64, ptr %119, align 8, !tbaa !165
  %121 = udiv i64 %120, %118
  %122 = tail call i64 @llvm.umin.i64(i64 %118, i64 32)
  %123 = shl nsw i64 -1, %122
  %124 = xor i64 %123, -1
  %125 = add i32 %114, -1
  %126 = zext i32 %125 to i64
  %127 = icmp eq i32 %125, 0
  br i1 %127, label %144, label %128, !prof !166

128:                                              ; preds = %113
  %129 = icmp ult i64 %118, 32
  %130 = trunc i64 %118 to i32
  br label %131

131:                                              ; preds = %128, %131
  %132 = phi i32 [ 0, %128 ], [ %141, %131 ]
  %133 = phi i64 [ 0, %128 ], [ %142, %131 ]
  %134 = getelementptr inbounds i8, ptr %116, i64 %133
  %135 = load i8, ptr %134, align 1, !tbaa !102
  %136 = zext i8 %135 to i64
  %137 = and i64 %136, %124
  %138 = trunc i64 %137 to i32
  %139 = shl i32 %132, %130
  %140 = select i1 %129, i32 %139, i32 0, !prof !162
  %141 = or i32 %140, %138
  %142 = add nuw nsw i64 %133, 1
  %143 = icmp eq i64 %142, %126
  br i1 %143, label %144, label %131, !prof !167, !llvm.loop !168

144:                                              ; preds = %131, %113
  %145 = phi i64 [ 0, %113 ], [ %126, %131 ]
  %146 = phi i32 [ 0, %113 ], [ %141, %131 ]
  %147 = icmp ugt i64 %145, %121
  br i1 %147, label %154, label %148, !prof !98

148:                                              ; preds = %144
  %149 = icmp ugt i64 %145, 1
  br i1 %149, label %150, label %158, !prof !98

150:                                              ; preds = %148
  %151 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 53, i32 16
  %152 = load i8, ptr %151, align 2, !tbaa !169
  %153 = icmp eq i8 %152, 0
  br i1 %153, label %158, label %154

154:                                              ; preds = %150, %144
  %155 = phi ptr [ @.str.42, %144 ], [ @.str.43, %150 ]
  %156 = phi i64 [ %121, %144 ], [ %145, %150 ]
  %157 = tail call zeroext i8 (ptr, i32, ptr, ...) @cpp_error(ptr noundef %0, i32 noundef 0, ptr noundef nonnull %155) #16
  br label %158

158:                                              ; preds = %154, %150, %148
  %159 = phi i64 [ %145, %150 ], [ %145, %148 ], [ %156, %154 ]
  %160 = icmp ugt i64 %159, 1
  br i1 %160, label %165, label %161, !prof !98

161:                                              ; preds = %158
  %162 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 53, i32 48
  %163 = load i8, ptr %162, align 8, !tbaa !170
  %164 = zext i8 %163 to i32
  br label %165

165:                                              ; preds = %161, %158
  %166 = phi i32 [ %164, %161 ], [ 0, %158 ]
  br i1 %160, label %167, label %169, !prof !98

167:                                              ; preds = %165
  %168 = load i64, ptr %119, align 8, !tbaa !165
  br label %169

169:                                              ; preds = %167, %165
  %170 = phi i64 [ %168, %167 ], [ %118, %165 ]
  %171 = icmp ult i64 %170, 32
  br i1 %171, label %172, label %186, !prof !162

172:                                              ; preds = %169
  %173 = trunc i64 %170 to i32
  %174 = shl nsw i32 -1, %173
  %175 = xor i32 %174, -1
  %176 = icmp eq i32 %166, 0
  br i1 %176, label %177, label %182, !prof !162

177:                                              ; preds = %172
  %178 = add nsw i32 %173, -1
  %179 = shl nuw nsw i32 1, %178
  %180 = and i32 %179, %146
  %181 = icmp eq i32 %180, 0
  br i1 %181, label %182, label %184, !prof !162

182:                                              ; preds = %177, %172
  %183 = and i32 %146, %175
  br label %186

184:                                              ; preds = %177
  %185 = or i32 %174, %146
  br label %186

186:                                              ; preds = %169, %182, %184
  %187 = phi i32 [ %183, %182 ], [ %185, %184 ], [ %146, %169 ]
  %188 = trunc i64 %159 to i32
  store i32 %188, ptr %2, align 4, !tbaa !55
  store i32 %166, ptr %3, align 4, !tbaa !55
  br label %189

189:                                              ; preds = %186, %111
  %190 = phi i32 [ %103, %111 ], [ %187, %186 ]
  %191 = getelementptr inbounds %struct.cpp_string, ptr %5, i64 0, i32 1
  %192 = load ptr, ptr %191, align 8, !tbaa !132
  %193 = getelementptr inbounds %struct.cpp_token, ptr %1, i64 0, i32 3, i32 0, i32 1
  %194 = load ptr, ptr %193, align 8, !tbaa !102
  %195 = icmp eq ptr %192, %194
  br i1 %195, label %197, label %196, !prof !98

196:                                              ; preds = %189
  tail call void @free(ptr noundef %192) #16
  br label %197

197:                                              ; preds = %189, %196, %16, %14
  %198 = phi i32 [ 0, %14 ], [ 0, %16 ], [ %190, %196 ], [ %190, %189 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #16
  ret i32 %198
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #9

; Function Attrs: cold nounwind uwtable
define dso_local ptr @_cpp_interpret_identifier(ptr noundef %0, ptr nocapture noundef readonly %1, i64 noundef %2) local_unnamed_addr #2 !prof !50 {
  %4 = alloca [6 x i8], align 1
  %5 = add i64 %2, 1
  %6 = alloca i8, i64 %5, align 16
  %7 = icmp eq i64 %2, 0
  br i1 %7, label %117, label %8

8:                                                ; preds = %3
  %9 = ptrtoint ptr %6 to i64
  %10 = add i64 %9, %2
  %11 = getelementptr inbounds i8, ptr %4, i64 5
  br label %12

12:                                               ; preds = %8, %112
  %13 = phi i64 [ 0, %8 ], [ %115, %112 ]
  %14 = phi ptr [ %6, %8 ], [ %113, %112 ]
  %15 = getelementptr inbounds i8, ptr %1, i64 %13
  %16 = load i8, ptr %15, align 1, !tbaa !102
  %17 = icmp eq i8 %16, 92
  br i1 %17, label %20, label %18

18:                                               ; preds = %12
  %19 = getelementptr inbounds i8, ptr %14, i64 1
  store i8 %16, ptr %14, align 1, !tbaa !102
  br label %112

20:                                               ; preds = %12
  %21 = ptrtoint ptr %14 to i64
  %22 = sub i64 %10, %21
  %23 = add i64 %13, 2
  %24 = icmp ult i64 %23, %2
  br i1 %24, label %25, label %52

25:                                               ; preds = %20
  %26 = getelementptr i8, ptr %15, i64 1
  %27 = load i8, ptr %26, align 1, !tbaa !102
  %28 = icmp eq i8 %27, 117
  %29 = select i1 %28, i32 4, i32 8
  br label %30

30:                                               ; preds = %25, %41
  %31 = phi i64 [ %47, %41 ], [ %23, %25 ]
  %32 = phi i32 [ %46, %41 ], [ 0, %25 ]
  %33 = phi i32 [ %48, %41 ], [ %29, %25 ]
  %34 = getelementptr inbounds i8, ptr %1, i64 %31
  %35 = load i8, ptr %34, align 1, !tbaa !102
  %36 = zext i8 %35 to i64
  %37 = getelementptr inbounds [256 x i16], ptr @_sch_istable, i64 0, i64 %36
  %38 = load i16, ptr %37, align 2, !tbaa !112
  %39 = and i16 %38, 256
  %40 = icmp eq i16 %39, 0
  br i1 %40, label %52, label %41

41:                                               ; preds = %30
  %42 = shl i32 %32, 4
  %43 = getelementptr inbounds [256 x i8], ptr @_hex_value, i64 0, i64 %36
  %44 = load i8, ptr %43, align 1, !tbaa !102
  %45 = zext i8 %44 to i32
  %46 = add i32 %42, %45
  %47 = add nuw i64 %31, 1
  %48 = add i32 %33, -1
  %49 = icmp ne i32 %48, 0
  %50 = icmp ult i64 %47, %2
  %51 = and i1 %49, %50
  br i1 %51, label %30, label %52, !llvm.loop !171

52:                                               ; preds = %30, %41, %20
  %53 = phi i32 [ 0, %20 ], [ %32, %30 ], [ %46, %41 ]
  %54 = phi i64 [ %23, %20 ], [ %31, %30 ], [ %47, %41 ]
  %55 = add i64 %54, -1
  %56 = icmp eq i32 %53, 36
  br i1 %56, label %57, label %59

57:                                               ; preds = %52
  %58 = getelementptr inbounds i8, ptr %14, i64 1
  store i8 36, ptr %14, align 1, !tbaa !102
  br label %109

59:                                               ; preds = %52
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %4) #16
  %60 = icmp ult i32 %53, 128
  br i1 %60, label %61, label %63

61:                                               ; preds = %59
  %62 = trunc i32 %53 to i8
  store i8 %62, ptr %11, align 1, !tbaa !102
  br label %89

63:                                               ; preds = %59, %81
  %64 = phi i32 [ %72, %81 ], [ %53, %59 ]
  %65 = phi i64 [ %73, %81 ], [ 1, %59 ]
  %66 = phi i64 [ %70, %81 ], [ 6, %59 ]
  %67 = trunc i32 %64 to i8
  %68 = and i8 %67, 63
  %69 = or disjoint i8 %68, -128
  %70 = add nsw i64 %66, -1
  %71 = getelementptr inbounds i8, ptr %4, i64 %70
  store i8 %69, ptr %71, align 1, !tbaa !102
  %72 = lshr i32 %64, 6
  %73 = add i64 %65, 1
  %74 = icmp ugt i32 %64, 4031
  br i1 %74, label %81, label %75

75:                                               ; preds = %63
  %76 = getelementptr inbounds [6 x i8], ptr @one_cppchar_to_utf8.limits, i64 0, i64 %65
  %77 = load i8, ptr %76, align 1, !tbaa !102
  %78 = zext i8 %77 to i32
  %79 = and i32 %72, %78
  %80 = icmp eq i32 %79, 0
  br i1 %80, label %82, label %81

81:                                               ; preds = %75, %63
  br label %63, !llvm.loop !145

82:                                               ; preds = %75
  %83 = getelementptr inbounds [6 x i8], ptr @one_cppchar_to_utf8.masks, i64 0, i64 %65
  %84 = load i8, ptr %83, align 1, !tbaa !102
  %85 = trunc i32 %72 to i8
  %86 = or i8 %84, %85
  %87 = add nsw i64 %66, -2
  %88 = getelementptr inbounds i8, ptr %4, i64 %87
  store i8 %86, ptr %88, align 1, !tbaa !102
  br label %89

89:                                               ; preds = %82, %61
  %90 = phi i64 [ 1, %61 ], [ %73, %82 ]
  %91 = phi i64 [ 5, %61 ], [ %87, %82 ]
  %92 = icmp ult i64 %22, %90
  br i1 %92, label %103, label %93

93:                                               ; preds = %89
  %94 = icmp slt i64 %91, 6
  br i1 %94, label %95, label %103

95:                                               ; preds = %93, %95
  %96 = phi ptr [ %101, %95 ], [ %14, %93 ]
  %97 = phi i64 [ %99, %95 ], [ %91, %93 ]
  %98 = getelementptr inbounds i8, ptr %4, i64 %97
  %99 = add i64 %97, 1
  %100 = load i8, ptr %98, align 1, !tbaa !102
  %101 = getelementptr inbounds i8, ptr %96, i64 1
  store i8 %100, ptr %96, align 1, !tbaa !102
  %102 = icmp eq i64 %99, 6
  br i1 %102, label %103, label %95, !llvm.loop !172

103:                                              ; preds = %95, %93, %89
  %104 = phi ptr [ %14, %89 ], [ %14, %93 ], [ %101, %95 ]
  %105 = phi i32 [ 7, %89 ], [ 0, %93 ], [ 0, %95 ]
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %4) #16
  br i1 %92, label %106, label %109

106:                                              ; preds = %103
  %107 = tail call ptr @__errno_location() #18
  store i32 %105, ptr %107, align 4, !tbaa !55
  %108 = call zeroext i8 @cpp_errno(ptr noundef %0, i32 noundef 3, ptr noundef nonnull @.str.17) #16
  br label %109

109:                                              ; preds = %103, %106, %57
  %110 = phi ptr [ %58, %57 ], [ %104, %103 ], [ %104, %106 ]
  %111 = phi i1 [ false, %57 ], [ false, %103 ], [ true, %106 ]
  br i1 %111, label %117, label %112

112:                                              ; preds = %109, %18
  %113 = phi ptr [ %110, %109 ], [ %19, %18 ]
  %114 = phi i64 [ %55, %109 ], [ %13, %18 ]
  %115 = add i64 %114, 1
  %116 = icmp ult i64 %115, %2
  br i1 %116, label %12, label %117, !llvm.loop !173

117:                                              ; preds = %112, %109, %3
  %118 = phi ptr [ %6, %3 ], [ %113, %112 ], [ %110, %109 ]
  %119 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 50
  %120 = load ptr, ptr %119, align 8, !tbaa !174
  %121 = ptrtoint ptr %118 to i64
  %122 = ptrtoint ptr %6 to i64
  %123 = sub i64 %121, %122
  %124 = call ptr @ht_lookup(ptr noundef %120, ptr noundef nonnull %6, i64 noundef %123, i32 noundef 1) #16
  ret ptr %124
}

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare ptr @__errno_location() local_unnamed_addr #10

declare ptr @ht_lookup(ptr noundef, ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind uwtable
define dso_local ptr @_cpp_convert_input(ptr noundef %0, ptr noundef %1, ptr noundef %2, i64 noundef %3, i64 noundef %4, ptr nocapture noundef writeonly %5, ptr nocapture noundef writeonly %6) local_unnamed_addr #2 !prof !57 {
  %8 = alloca %struct._cpp_strbuf, align 8
  %9 = alloca %struct.cset_converter, align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %8) #16
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %9) #16
  call fastcc void @init_iconv_desc(ptr dead_on_unwind nonnull writable sret(%struct.cset_converter) align 8 %9, ptr noundef %0, ptr noundef nonnull @.str.4, ptr noundef %1)
  %10 = load ptr, ptr %9, align 8, !tbaa.struct !80
  %11 = getelementptr inbounds i8, ptr %9, i64 8
  %12 = load ptr, ptr %11, align 8, !tbaa.struct !175
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %9) #16
  %13 = icmp eq ptr %10, @convert_no_conversion
  %14 = getelementptr inbounds %struct._cpp_strbuf, ptr %8, i64 0, i32 1
  br i1 %13, label %15, label %17, !prof !78

15:                                               ; preds = %7
  store ptr %2, ptr %8, align 8, !tbaa !105
  store i64 %3, ptr %14, align 8, !tbaa !103
  %16 = getelementptr inbounds %struct._cpp_strbuf, ptr %8, i64 0, i32 2
  store i64 %4, ptr %16, align 8, !tbaa !106
  br label %28

17:                                               ; preds = %7
  %18 = tail call i64 @llvm.umax.i64(i64 %4, i64 65536)
  store i64 %18, ptr %14, align 8, !tbaa !103
  %19 = tail call ptr @xmalloc(i64 noundef %18) #16
  store ptr %19, ptr %8, align 8, !tbaa !105
  %20 = getelementptr inbounds %struct._cpp_strbuf, ptr %8, i64 0, i32 2
  store i64 0, ptr %20, align 8, !tbaa !106
  %21 = call zeroext i8 %10(ptr noundef %12, ptr noundef %2, i64 noundef %4, ptr noundef nonnull %8) #16
  %22 = icmp eq i8 %21, 0
  br i1 %22, label %23, label %27

23:                                               ; preds = %17
  %24 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 53, i32 39
  %25 = load ptr, ptr %24, align 8, !tbaa !176
  %26 = call zeroext i8 (ptr, i32, ptr, ...) @cpp_error(ptr noundef %0, i32 noundef 3, ptr noundef nonnull @.str.18, ptr noundef %25, ptr noundef nonnull @.str.4) #16
  br label %27

27:                                               ; preds = %23, %17
  call void @free(ptr noundef %2) #16
  br label %28

28:                                               ; preds = %27, %15
  %29 = getelementptr inbounds %struct._cpp_strbuf, ptr %8, i64 0, i32 2
  %30 = load i64, ptr %29, align 8, !tbaa !106
  %31 = add i64 %30, 4096
  %32 = getelementptr inbounds %struct._cpp_strbuf, ptr %8, i64 0, i32 1
  %33 = load i64, ptr %32, align 8, !tbaa !103
  %34 = icmp uge i64 %31, %33
  %35 = icmp ult i64 %30, %33
  %36 = and i1 %34, %35
  br i1 %36, label %41, label %37, !prof !79

37:                                               ; preds = %28
  %38 = load ptr, ptr %8, align 8, !tbaa !105
  %39 = add i64 %30, 1
  %40 = call ptr @xrealloc(ptr noundef %38, i64 noundef %39) #16
  store ptr %40, ptr %8, align 8, !tbaa !105
  br label %41

41:                                               ; preds = %28, %37
  %42 = load i64, ptr %29, align 8, !tbaa !106
  %43 = icmp eq i64 %42, 0
  br i1 %43, label %51, label %44, !prof !79

44:                                               ; preds = %41
  %45 = load ptr, ptr %8, align 8, !tbaa !105
  %46 = getelementptr i8, ptr %45, i64 %42
  %47 = getelementptr i8, ptr %46, i64 -1
  %48 = load i8, ptr %47, align 1, !tbaa !102
  %49 = icmp eq i8 %48, 13
  br i1 %49, label %50, label %51, !prof !79

50:                                               ; preds = %44
  store i8 13, ptr %46, align 1, !tbaa !102
  br label %54

51:                                               ; preds = %44, %41
  %52 = load ptr, ptr %8, align 8, !tbaa !105
  %53 = getelementptr inbounds i8, ptr %52, i64 %42
  store i8 10, ptr %53, align 1, !tbaa !102
  br label %54

54:                                               ; preds = %51, %50
  %55 = load ptr, ptr %8, align 8, !tbaa !105
  %56 = load i64, ptr %29, align 8, !tbaa !106
  store i64 %56, ptr %6, align 8, !tbaa !177
  %57 = icmp ugt i64 %56, 2
  br i1 %57, label %58, label %72, !prof !78

58:                                               ; preds = %54
  %59 = load i8, ptr %55, align 1, !tbaa !102
  %60 = icmp eq i8 %59, -17
  br i1 %60, label %61, label %72, !prof !79

61:                                               ; preds = %58
  %62 = getelementptr inbounds i8, ptr %55, i64 1
  %63 = load i8, ptr %62, align 1, !tbaa !102
  %64 = icmp eq i8 %63, -69
  br i1 %64, label %65, label %72

65:                                               ; preds = %61
  %66 = getelementptr inbounds i8, ptr %55, i64 2
  %67 = load i8, ptr %66, align 1, !tbaa !102
  %68 = icmp eq i8 %67, -65
  br i1 %68, label %69, label %72

69:                                               ; preds = %65
  %70 = add nsw i64 %56, -3
  store i64 %70, ptr %6, align 8, !tbaa !177
  %71 = getelementptr inbounds i8, ptr %55, i64 3
  br label %72

72:                                               ; preds = %69, %65, %61, %58, %54
  %73 = phi ptr [ %71, %69 ], [ %55, %65 ], [ %55, %61 ], [ %55, %58 ], [ %55, %54 ]
  store ptr %55, ptr %5, align 8, !tbaa !51
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %8) #16
  ret ptr %73
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef nonnull ptr @_cpp_default_encoding() local_unnamed_addr #5 !prof !178 {
  ret ptr @.str.4
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare i32 @strcasecmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #11

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr nocapture noundef) local_unnamed_addr #12

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: readwrite)
declare ptr @strcpy(ptr noalias noundef returned writeonly, ptr noalias nocapture noundef readonly) local_unnamed_addr #13

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: readwrite)
declare ptr @strcat(ptr noalias noundef returned, ptr noalias nocapture noundef readonly) local_unnamed_addr #13

; Function Attrs: cold nounwind uwtable
define internal noundef zeroext i8 @convert_utf8_utf32(ptr noundef readnone %0, ptr nocapture noundef readonly %1, i64 noundef %2, ptr nocapture noundef %3) #2 !prof !50 {
  %5 = load ptr, ptr %3, align 8, !tbaa !105
  %6 = getelementptr inbounds %struct._cpp_strbuf, ptr %3, i64 0, i32 2
  %7 = load i64, ptr %6, align 8, !tbaa !106
  %8 = getelementptr inbounds i8, ptr %5, i64 %7
  %9 = getelementptr inbounds %struct._cpp_strbuf, ptr %3, i64 0, i32 1
  %10 = load i64, ptr %9, align 8, !tbaa !103
  %11 = sub i64 %10, %7
  %12 = icmp eq ptr %0, null
  %13 = select i1 %12, i64 0, i64 3
  %14 = select i1 %12, i64 1, i64 2
  %15 = select i1 %12, i64 2, i64 1
  %16 = select i1 %12, i64 3, i64 0
  br label %17

17:                                               ; preds = %124, %4
  %18 = phi ptr [ %1, %4 ], [ %116, %124 ]
  %19 = phi ptr [ %8, %4 ], [ %125, %124 ]
  %20 = phi i64 [ %2, %4 ], [ %118, %124 ]
  %21 = phi i64 [ %11, %4 ], [ %126, %124 ]
  %22 = icmp ult i64 %21, 4
  br i1 %22, label %115, label %23

23:                                               ; preds = %17
  %24 = icmp eq i64 %20, 0
  br i1 %24, label %95, label %25

25:                                               ; preds = %23
  %26 = load i8, ptr %18, align 1, !tbaa !102
  %27 = zext i8 %26 to i32
  %28 = icmp sgt i8 %26, -1
  br i1 %28, label %31, label %29

29:                                               ; preds = %25
  %30 = getelementptr i8, ptr %18, i64 2
  br label %34

31:                                               ; preds = %25
  %32 = add i64 %20, -1
  %33 = getelementptr inbounds i8, ptr %18, i64 1
  br label %95

34:                                               ; preds = %29, %47
  %35 = phi ptr [ %30, %29 ], [ %50, %47 ]
  %36 = phi i64 [ 2, %29 ], [ %48, %47 ]
  %37 = add nsw i64 %36, -1
  %38 = getelementptr inbounds [6 x i8], ptr @one_utf8_to_cppchar.masks, i64 0, i64 %37
  %39 = load i8, ptr %38, align 1, !tbaa !102
  %40 = zext i8 %39 to i32
  %41 = xor i32 %40, -1
  %42 = and i32 %41, %27
  %43 = getelementptr inbounds [6 x i8], ptr @one_cppchar_to_utf8.masks, i64 0, i64 %37
  %44 = load i8, ptr %43, align 1, !tbaa !102
  %45 = zext i8 %44 to i32
  %46 = icmp eq i32 %42, %45
  br i1 %46, label %51, label %47

47:                                               ; preds = %34
  %48 = add nuw nsw i64 %36, 1
  %49 = icmp eq i64 %48, 7
  %50 = getelementptr i8, ptr %35, i64 1
  br i1 %49, label %95, label %34, !llvm.loop !179

51:                                               ; preds = %34
  %52 = icmp ult i64 %20, %36
  br i1 %52, label %95, label %53

53:                                               ; preds = %51
  %54 = and i32 %40, %27
  br label %55

55:                                               ; preds = %53, %64
  %56 = phi ptr [ %18, %53 ], [ %59, %64 ]
  %57 = phi i64 [ 1, %53 ], [ %68, %64 ]
  %58 = phi i32 [ %54, %53 ], [ %67, %64 ]
  %59 = getelementptr inbounds i8, ptr %56, i64 1
  %60 = load i8, ptr %59, align 1, !tbaa !102
  %61 = zext i8 %60 to i32
  %62 = and i32 %61, 192
  %63 = icmp eq i32 %62, 128
  br i1 %63, label %64, label %95

64:                                               ; preds = %55
  %65 = shl i32 %58, 6
  %66 = and i32 %61, 63
  %67 = or disjoint i32 %66, %65
  %68 = add nuw nsw i64 %57, 1
  %69 = icmp eq i64 %68, %36
  br i1 %69, label %70, label %55, !llvm.loop !180

70:                                               ; preds = %64
  %71 = icmp ult i32 %67, 128
  br i1 %71, label %95, label %72

72:                                               ; preds = %70
  %73 = icmp ult i32 %67, 2048
  %74 = icmp ugt i64 %36, 2
  %75 = and i1 %74, %73
  br i1 %75, label %95, label %76

76:                                               ; preds = %72
  %77 = icmp ult i32 %67, 65536
  %78 = icmp ugt i64 %36, 3
  %79 = and i1 %78, %77
  br i1 %79, label %95, label %80

80:                                               ; preds = %76
  %81 = icmp ult i32 %67, 2097152
  %82 = icmp ugt i64 %36, 4
  %83 = and i1 %82, %81
  br i1 %83, label %95, label %84

84:                                               ; preds = %80
  %85 = icmp ult i32 %67, 67108864
  %86 = icmp eq i64 %36, 6
  %87 = and i1 %86, %85
  br i1 %87, label %95, label %88

88:                                               ; preds = %84
  %89 = icmp slt i32 %67, 0
  %90 = and i32 %58, 33554400
  %91 = icmp eq i32 %90, 864
  %92 = or i1 %89, %91
  br i1 %92, label %95, label %93

93:                                               ; preds = %88
  %94 = sub i64 %20, %36
  br label %95

95:                                               ; preds = %47, %55, %93, %88, %84, %80, %76, %72, %70, %51, %31, %23
  %96 = phi ptr [ %18, %23 ], [ %33, %31 ], [ %18, %51 ], [ %18, %70 ], [ %18, %72 ], [ %18, %76 ], [ %18, %80 ], [ %18, %84 ], [ %18, %88 ], [ %35, %93 ], [ %18, %55 ], [ %18, %47 ]
  %97 = phi i64 [ %20, %23 ], [ %32, %31 ], [ %20, %51 ], [ %20, %70 ], [ %20, %72 ], [ %20, %76 ], [ %20, %80 ], [ %20, %84 ], [ %20, %88 ], [ %94, %93 ], [ %20, %55 ], [ %20, %47 ]
  %98 = phi i32 [ 0, %23 ], [ %27, %31 ], [ 0, %51 ], [ 0, %70 ], [ 0, %72 ], [ 0, %76 ], [ 0, %80 ], [ 0, %84 ], [ 0, %88 ], [ %67, %93 ], [ 0, %55 ], [ 0, %47 ]
  %99 = phi i1 [ false, %23 ], [ true, %31 ], [ false, %51 ], [ false, %70 ], [ false, %72 ], [ false, %76 ], [ false, %80 ], [ false, %84 ], [ false, %88 ], [ true, %93 ], [ false, %55 ], [ false, %47 ]
  %100 = phi i32 [ 22, %23 ], [ 0, %31 ], [ 22, %51 ], [ 84, %70 ], [ 84, %72 ], [ 84, %76 ], [ 84, %80 ], [ 84, %84 ], [ 84, %88 ], [ 0, %93 ], [ 84, %55 ], [ 84, %47 ]
  br i1 %99, label %101, label %115

101:                                              ; preds = %95
  %102 = trunc i32 %98 to i8
  %103 = getelementptr inbounds i8, ptr %19, i64 %13
  store i8 %102, ptr %103, align 1, !tbaa !102
  %104 = lshr i32 %98, 8
  %105 = trunc i32 %104 to i8
  %106 = getelementptr inbounds i8, ptr %19, i64 %14
  store i8 %105, ptr %106, align 1, !tbaa !102
  %107 = lshr i32 %98, 16
  %108 = trunc i32 %107 to i8
  %109 = getelementptr inbounds i8, ptr %19, i64 %15
  store i8 %108, ptr %109, align 1, !tbaa !102
  %110 = lshr i32 %98, 24
  %111 = trunc i32 %110 to i8
  %112 = getelementptr inbounds i8, ptr %19, i64 %16
  store i8 %111, ptr %112, align 1, !tbaa !102
  %113 = getelementptr inbounds i8, ptr %19, i64 4
  %114 = add i64 %21, -4
  br label %115

115:                                              ; preds = %17, %95, %101
  %116 = phi ptr [ %96, %101 ], [ %96, %95 ], [ %18, %17 ]
  %117 = phi ptr [ %113, %101 ], [ %19, %95 ], [ %19, %17 ]
  %118 = phi i64 [ %97, %101 ], [ %97, %95 ], [ %20, %17 ]
  %119 = phi i64 [ %114, %101 ], [ %21, %95 ], [ %21, %17 ]
  %120 = phi i32 [ 0, %101 ], [ %100, %95 ], [ 7, %17 ]
  %121 = icmp ne i64 %118, 0
  %122 = icmp eq i32 %120, 0
  %123 = and i1 %121, %122
  br i1 %123, label %124, label %127

124:                                              ; preds = %115, %136
  %125 = phi ptr [ %117, %115 ], [ %145, %136 ]
  %126 = phi i64 [ %119, %115 ], [ %137, %136 ]
  br label %17, !llvm.loop !181

127:                                              ; preds = %115
  %128 = icmp eq i64 %118, 0
  br i1 %128, label %129, label %132

129:                                              ; preds = %127
  %130 = load i64, ptr %9, align 8, !tbaa !103
  %131 = sub i64 %130, %119
  store i64 %131, ptr %6, align 8, !tbaa !106
  br label %146

132:                                              ; preds = %127
  %133 = icmp eq i32 %120, 7
  br i1 %133, label %136, label %134

134:                                              ; preds = %132
  %135 = tail call ptr @__errno_location() #18
  store i32 %120, ptr %135, align 4, !tbaa !55
  br label %146

136:                                              ; preds = %132
  %137 = add i64 %119, 256
  %138 = load i64, ptr %9, align 8, !tbaa !103
  %139 = add i64 %138, 256
  store i64 %139, ptr %9, align 8, !tbaa !103
  %140 = load ptr, ptr %3, align 8, !tbaa !105
  %141 = tail call ptr @xrealloc(ptr noundef %140, i64 noundef %139) #16
  store ptr %141, ptr %3, align 8, !tbaa !105
  %142 = load i64, ptr %9, align 8, !tbaa !103
  %143 = getelementptr inbounds i8, ptr %141, i64 %142
  %144 = sub i64 -256, %119
  %145 = getelementptr inbounds i8, ptr %143, i64 %144
  br label %124

146:                                              ; preds = %129, %134
  %147 = phi i8 [ 1, %129 ], [ 0, %134 ]
  ret i8 %147
}

; Function Attrs: cold nounwind uwtable
define internal noundef zeroext i8 @convert_utf8_utf16(ptr noundef readnone %0, ptr nocapture noundef readonly %1, i64 noundef %2, ptr nocapture noundef %3) #2 !prof !50 {
  %5 = load ptr, ptr %3, align 8, !tbaa !105
  %6 = getelementptr inbounds %struct._cpp_strbuf, ptr %3, i64 0, i32 2
  %7 = load i64, ptr %6, align 8, !tbaa !106
  %8 = getelementptr inbounds i8, ptr %5, i64 %7
  %9 = getelementptr inbounds %struct._cpp_strbuf, ptr %3, i64 0, i32 1
  %10 = load i64, ptr %9, align 8, !tbaa !103
  %11 = sub i64 %10, %7
  %12 = icmp ne ptr %0, null
  %13 = zext i1 %12 to i64
  %14 = xor i1 %12, true
  %15 = zext i1 %14 to i64
  %16 = select i1 %12, i64 3, i64 2
  %17 = select i1 %12, i64 2, i64 3
  %18 = icmp ne ptr %0, null
  %19 = zext i1 %18 to i64
  %20 = xor i1 %18, true
  %21 = zext i1 %20 to i64
  br label %22

22:                                               ; preds = %149, %4
  %23 = phi ptr [ %1, %4 ], [ %141, %149 ]
  %24 = phi ptr [ %8, %4 ], [ %150, %149 ]
  %25 = phi i64 [ %2, %4 ], [ %143, %149 ]
  %26 = phi i64 [ %11, %4 ], [ %151, %149 ]
  %27 = icmp eq i64 %25, 0
  br i1 %27, label %98, label %28

28:                                               ; preds = %22
  %29 = load i8, ptr %23, align 1, !tbaa !102
  %30 = zext i8 %29 to i32
  %31 = icmp sgt i8 %29, -1
  br i1 %31, label %34, label %32

32:                                               ; preds = %28
  %33 = getelementptr i8, ptr %23, i64 2
  br label %37

34:                                               ; preds = %28
  %35 = add i64 %25, -1
  %36 = getelementptr inbounds i8, ptr %23, i64 1
  br label %98

37:                                               ; preds = %32, %50
  %38 = phi ptr [ %33, %32 ], [ %53, %50 ]
  %39 = phi i64 [ 2, %32 ], [ %51, %50 ]
  %40 = add nsw i64 %39, -1
  %41 = getelementptr inbounds [6 x i8], ptr @one_utf8_to_cppchar.masks, i64 0, i64 %40
  %42 = load i8, ptr %41, align 1, !tbaa !102
  %43 = zext i8 %42 to i32
  %44 = xor i32 %43, -1
  %45 = and i32 %44, %30
  %46 = getelementptr inbounds [6 x i8], ptr @one_cppchar_to_utf8.masks, i64 0, i64 %40
  %47 = load i8, ptr %46, align 1, !tbaa !102
  %48 = zext i8 %47 to i32
  %49 = icmp eq i32 %45, %48
  br i1 %49, label %54, label %50

50:                                               ; preds = %37
  %51 = add nuw nsw i64 %39, 1
  %52 = icmp eq i64 %51, 7
  %53 = getelementptr i8, ptr %38, i64 1
  br i1 %52, label %98, label %37, !llvm.loop !179

54:                                               ; preds = %37
  %55 = icmp ult i64 %25, %39
  br i1 %55, label %98, label %56

56:                                               ; preds = %54
  %57 = and i32 %43, %30
  br label %58

58:                                               ; preds = %56, %67
  %59 = phi ptr [ %23, %56 ], [ %62, %67 ]
  %60 = phi i64 [ 1, %56 ], [ %71, %67 ]
  %61 = phi i32 [ %57, %56 ], [ %70, %67 ]
  %62 = getelementptr inbounds i8, ptr %59, i64 1
  %63 = load i8, ptr %62, align 1, !tbaa !102
  %64 = zext i8 %63 to i32
  %65 = and i32 %64, 192
  %66 = icmp eq i32 %65, 128
  br i1 %66, label %67, label %98

67:                                               ; preds = %58
  %68 = shl i32 %61, 6
  %69 = and i32 %64, 63
  %70 = or disjoint i32 %69, %68
  %71 = add nuw nsw i64 %60, 1
  %72 = icmp eq i64 %71, %39
  br i1 %72, label %73, label %58, !llvm.loop !180

73:                                               ; preds = %67
  %74 = icmp ult i32 %70, 128
  br i1 %74, label %98, label %75

75:                                               ; preds = %73
  %76 = icmp ult i32 %70, 2048
  %77 = icmp ugt i64 %39, 2
  %78 = and i1 %77, %76
  br i1 %78, label %98, label %79

79:                                               ; preds = %75
  %80 = icmp ult i32 %70, 65536
  %81 = icmp ugt i64 %39, 3
  %82 = and i1 %81, %80
  br i1 %82, label %98, label %83

83:                                               ; preds = %79
  %84 = icmp ult i32 %70, 2097152
  %85 = icmp ugt i64 %39, 4
  %86 = and i1 %85, %84
  br i1 %86, label %98, label %87

87:                                               ; preds = %83
  %88 = icmp ult i32 %70, 67108864
  %89 = icmp eq i64 %39, 6
  %90 = and i1 %89, %88
  br i1 %90, label %98, label %91

91:                                               ; preds = %87
  %92 = icmp slt i32 %70, 0
  %93 = and i32 %61, 33554400
  %94 = icmp eq i32 %93, 864
  %95 = or i1 %92, %94
  br i1 %95, label %98, label %96

96:                                               ; preds = %91
  %97 = sub i64 %25, %39
  br label %98

98:                                               ; preds = %50, %58, %22, %96, %91, %87, %83, %79, %75, %73, %54, %34
  %99 = phi ptr [ %36, %34 ], [ %23, %54 ], [ %23, %73 ], [ %23, %75 ], [ %23, %79 ], [ %23, %83 ], [ %23, %87 ], [ %23, %91 ], [ %38, %96 ], [ %23, %22 ], [ %23, %58 ], [ %23, %50 ]
  %100 = phi i64 [ %35, %34 ], [ %25, %54 ], [ %25, %73 ], [ %25, %75 ], [ %25, %79 ], [ %25, %83 ], [ %25, %87 ], [ %25, %91 ], [ %97, %96 ], [ %25, %22 ], [ %25, %58 ], [ %25, %50 ]
  %101 = phi i32 [ %30, %34 ], [ 0, %54 ], [ 0, %73 ], [ 0, %75 ], [ 0, %79 ], [ 0, %83 ], [ 0, %87 ], [ 0, %91 ], [ %70, %96 ], [ 0, %22 ], [ 0, %58 ], [ 0, %50 ]
  %102 = phi i1 [ true, %34 ], [ false, %54 ], [ false, %73 ], [ false, %75 ], [ false, %79 ], [ false, %83 ], [ false, %87 ], [ false, %91 ], [ true, %96 ], [ false, %22 ], [ false, %58 ], [ false, %50 ]
  %103 = phi i32 [ 0, %34 ], [ 22, %54 ], [ 84, %73 ], [ 84, %75 ], [ 84, %79 ], [ 84, %83 ], [ 84, %87 ], [ 84, %91 ], [ 0, %96 ], [ 22, %22 ], [ 84, %58 ], [ 84, %50 ]
  br i1 %102, label %104, label %140

104:                                              ; preds = %98
  %105 = icmp ugt i32 %101, 1114111
  br i1 %105, label %140, label %106

106:                                              ; preds = %104
  %107 = icmp ult i32 %101, 65535
  br i1 %107, label %108, label %115

108:                                              ; preds = %106
  %109 = icmp ult i64 %26, 2
  br i1 %109, label %140, label %110

110:                                              ; preds = %108
  %111 = trunc i32 %101 to i8
  %112 = getelementptr inbounds i8, ptr %24, i64 %19
  store i8 %111, ptr %112, align 1, !tbaa !102
  %113 = lshr i32 %101, 8
  %114 = trunc i32 %113 to i8
  br label %132

115:                                              ; preds = %106
  %116 = icmp ult i64 %26, 4
  br i1 %116, label %140, label %117

117:                                              ; preds = %115
  %118 = add nsw i32 %101, -65536
  %119 = lshr i32 %118, 10
  %120 = add nuw nsw i32 %119, 55296
  %121 = trunc i32 %119 to i8
  %122 = getelementptr inbounds i8, ptr %24, i64 %13
  store i8 %121, ptr %122, align 1, !tbaa !102
  %123 = lshr i32 %120, 8
  %124 = trunc i32 %123 to i8
  %125 = getelementptr inbounds i8, ptr %24, i64 %15
  store i8 %124, ptr %125, align 1, !tbaa !102
  %126 = trunc i32 %101 to i8
  %127 = getelementptr inbounds i8, ptr %24, i64 %16
  store i8 %126, ptr %127, align 1, !tbaa !102
  %128 = lshr i32 %101, 8
  %129 = trunc i32 %128 to i8
  %130 = and i8 %129, 3
  %131 = or disjoint i8 %130, -36
  br label %132

132:                                              ; preds = %117, %110
  %133 = phi i64 [ %21, %110 ], [ %17, %117 ]
  %134 = phi i8 [ %114, %110 ], [ %131, %117 ]
  %135 = phi i64 [ 2, %110 ], [ 4, %117 ]
  %136 = phi i64 [ -2, %110 ], [ -4, %117 ]
  %137 = getelementptr inbounds i8, ptr %24, i64 %133
  store i8 %134, ptr %137, align 1, !tbaa !102
  %138 = getelementptr inbounds i8, ptr %24, i64 %135
  %139 = add i64 %26, %136
  br label %140

140:                                              ; preds = %132, %115, %108, %104, %98
  %141 = phi ptr [ %99, %98 ], [ %23, %104 ], [ %23, %108 ], [ %23, %115 ], [ %99, %132 ]
  %142 = phi ptr [ %24, %98 ], [ %24, %104 ], [ %24, %108 ], [ %24, %115 ], [ %138, %132 ]
  %143 = phi i64 [ %100, %98 ], [ %25, %104 ], [ %25, %108 ], [ %25, %115 ], [ %100, %132 ]
  %144 = phi i64 [ %26, %98 ], [ %26, %104 ], [ %26, %108 ], [ %26, %115 ], [ %139, %132 ]
  %145 = phi i32 [ %103, %98 ], [ 84, %104 ], [ 7, %108 ], [ 7, %115 ], [ 0, %132 ]
  %146 = icmp ne i64 %143, 0
  %147 = icmp eq i32 %145, 0
  %148 = and i1 %146, %147
  br i1 %148, label %149, label %152

149:                                              ; preds = %140, %161
  %150 = phi ptr [ %142, %140 ], [ %170, %161 ]
  %151 = phi i64 [ %144, %140 ], [ %162, %161 ]
  br label %22, !llvm.loop !181

152:                                              ; preds = %140
  %153 = icmp eq i64 %143, 0
  br i1 %153, label %154, label %157

154:                                              ; preds = %152
  %155 = load i64, ptr %9, align 8, !tbaa !103
  %156 = sub i64 %155, %144
  store i64 %156, ptr %6, align 8, !tbaa !106
  br label %171

157:                                              ; preds = %152
  %158 = icmp eq i32 %145, 7
  br i1 %158, label %161, label %159

159:                                              ; preds = %157
  %160 = tail call ptr @__errno_location() #18
  store i32 %145, ptr %160, align 4, !tbaa !55
  br label %171

161:                                              ; preds = %157
  %162 = add i64 %144, 256
  %163 = load i64, ptr %9, align 8, !tbaa !103
  %164 = add i64 %163, 256
  store i64 %164, ptr %9, align 8, !tbaa !103
  %165 = load ptr, ptr %3, align 8, !tbaa !105
  %166 = tail call ptr @xrealloc(ptr noundef %165, i64 noundef %164) #16
  store ptr %166, ptr %3, align 8, !tbaa !105
  %167 = load i64, ptr %9, align 8, !tbaa !103
  %168 = getelementptr inbounds i8, ptr %166, i64 %167
  %169 = sub i64 -256, %144
  %170 = getelementptr inbounds i8, ptr %168, i64 %169
  br label %149

171:                                              ; preds = %154, %159
  %172 = phi i8 [ 1, %154 ], [ 0, %159 ]
  ret i8 %172
}

; Function Attrs: cold nounwind uwtable
define internal noundef zeroext i8 @convert_utf32_utf8(ptr noundef readnone %0, ptr nocapture noundef readonly %1, i64 noundef %2, ptr nocapture noundef %3) #2 !prof !50 {
  %5 = alloca [6 x i8], align 1
  %6 = load ptr, ptr %3, align 8, !tbaa !105
  %7 = getelementptr inbounds %struct._cpp_strbuf, ptr %3, i64 0, i32 2
  %8 = load i64, ptr %7, align 8, !tbaa !106
  %9 = getelementptr inbounds i8, ptr %6, i64 %8
  %10 = getelementptr inbounds %struct._cpp_strbuf, ptr %3, i64 0, i32 1
  %11 = load i64, ptr %10, align 8, !tbaa !103
  %12 = sub i64 %11, %8
  %13 = icmp eq ptr %0, null
  %14 = select i1 %13, i64 3, i64 0
  %15 = select i1 %13, i64 2, i64 1
  %16 = select i1 %13, i64 1, i64 2
  %17 = select i1 %13, i64 0, i64 3
  %18 = getelementptr inbounds i8, ptr %5, i64 5
  br label %19

19:                                               ; preds = %110, %4
  %20 = phi ptr [ %1, %4 ], [ %102, %110 ]
  %21 = phi ptr [ %9, %4 ], [ %111, %110 ]
  %22 = phi i64 [ %2, %4 ], [ %104, %110 ]
  %23 = phi i64 [ %12, %4 ], [ %112, %110 ]
  %24 = icmp ult i64 %22, 4
  br i1 %24, label %101, label %25

25:                                               ; preds = %19
  %26 = getelementptr inbounds i8, ptr %20, i64 %14
  %27 = load i8, ptr %26, align 1, !tbaa !102
  %28 = zext i8 %27 to i32
  %29 = shl nuw i32 %28, 24
  %30 = getelementptr inbounds i8, ptr %20, i64 %15
  %31 = load i8, ptr %30, align 1, !tbaa !102
  %32 = zext i8 %31 to i32
  %33 = shl nuw nsw i32 %32, 16
  %34 = or disjoint i32 %33, %29
  %35 = getelementptr inbounds i8, ptr %20, i64 %16
  %36 = load i8, ptr %35, align 1, !tbaa !102
  %37 = zext i8 %36 to i32
  %38 = shl nuw nsw i32 %37, 8
  %39 = or disjoint i32 %34, %38
  %40 = getelementptr inbounds i8, ptr %20, i64 %17
  %41 = load i8, ptr %40, align 1, !tbaa !102
  %42 = zext i8 %41 to i32
  %43 = or disjoint i32 %39, %42
  %44 = icmp ugt i32 %43, 2147483646
  %45 = and i32 %39, -2048
  %46 = icmp eq i32 %45, 55296
  %47 = or i1 %44, %46
  br i1 %47, label %101, label %48

48:                                               ; preds = %25
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %5) #16
  %49 = icmp ult i32 %43, 128
  br i1 %49, label %50, label %51

50:                                               ; preds = %48
  store i8 %41, ptr %18, align 1, !tbaa !102
  br label %77

51:                                               ; preds = %48, %69
  %52 = phi i32 [ %60, %69 ], [ %43, %48 ]
  %53 = phi i64 [ %61, %69 ], [ 1, %48 ]
  %54 = phi i64 [ %58, %69 ], [ 6, %48 ]
  %55 = trunc i32 %52 to i8
  %56 = and i8 %55, 63
  %57 = or disjoint i8 %56, -128
  %58 = add nsw i64 %54, -1
  %59 = getelementptr inbounds i8, ptr %5, i64 %58
  store i8 %57, ptr %59, align 1, !tbaa !102
  %60 = lshr i32 %52, 6
  %61 = add i64 %53, 1
  %62 = icmp ugt i32 %52, 4031
  br i1 %62, label %69, label %63

63:                                               ; preds = %51
  %64 = getelementptr inbounds [6 x i8], ptr @one_cppchar_to_utf8.limits, i64 0, i64 %53
  %65 = load i8, ptr %64, align 1, !tbaa !102
  %66 = zext i8 %65 to i32
  %67 = and i32 %60, %66
  %68 = icmp eq i32 %67, 0
  br i1 %68, label %70, label %69

69:                                               ; preds = %63, %51
  br label %51, !llvm.loop !145

70:                                               ; preds = %63
  %71 = getelementptr inbounds [6 x i8], ptr @one_cppchar_to_utf8.masks, i64 0, i64 %53
  %72 = load i8, ptr %71, align 1, !tbaa !102
  %73 = trunc i32 %60 to i8
  %74 = or i8 %72, %73
  %75 = add nsw i64 %54, -2
  %76 = getelementptr inbounds i8, ptr %5, i64 %75
  store i8 %74, ptr %76, align 1, !tbaa !102
  br label %77

77:                                               ; preds = %70, %50
  %78 = phi i64 [ 1, %50 ], [ %61, %70 ]
  %79 = phi i64 [ 5, %50 ], [ %75, %70 ]
  %80 = icmp ult i64 %23, %78
  br i1 %80, label %94, label %81

81:                                               ; preds = %77
  %82 = icmp slt i64 %79, 6
  br i1 %82, label %83, label %91

83:                                               ; preds = %81, %83
  %84 = phi ptr [ %89, %83 ], [ %21, %81 ]
  %85 = phi i64 [ %87, %83 ], [ %79, %81 ]
  %86 = getelementptr inbounds i8, ptr %5, i64 %85
  %87 = add i64 %85, 1
  %88 = load i8, ptr %86, align 1, !tbaa !102
  %89 = getelementptr inbounds i8, ptr %84, i64 1
  store i8 %88, ptr %84, align 1, !tbaa !102
  %90 = icmp eq i64 %87, 6
  br i1 %90, label %91, label %83, !llvm.loop !172

91:                                               ; preds = %83, %81
  %92 = phi ptr [ %21, %81 ], [ %89, %83 ]
  %93 = sub i64 %23, %78
  br label %94

94:                                               ; preds = %91, %77
  %95 = phi ptr [ %21, %77 ], [ %92, %91 ]
  %96 = phi i64 [ %23, %77 ], [ %93, %91 ]
  %97 = phi i32 [ 7, %77 ], [ 0, %91 ]
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %5) #16
  br i1 %80, label %101, label %98

98:                                               ; preds = %94
  %99 = getelementptr inbounds i8, ptr %20, i64 4
  %100 = add i64 %22, -4
  br label %101

101:                                              ; preds = %19, %25, %94, %98
  %102 = phi ptr [ %20, %25 ], [ %20, %94 ], [ %99, %98 ], [ %20, %19 ]
  %103 = phi ptr [ %21, %25 ], [ %95, %94 ], [ %95, %98 ], [ %21, %19 ]
  %104 = phi i64 [ %22, %25 ], [ %22, %94 ], [ %100, %98 ], [ %22, %19 ]
  %105 = phi i64 [ %23, %25 ], [ %96, %94 ], [ %96, %98 ], [ %23, %19 ]
  %106 = phi i32 [ 84, %25 ], [ %97, %94 ], [ 0, %98 ], [ 22, %19 ]
  %107 = icmp ne i64 %104, 0
  %108 = icmp eq i32 %106, 0
  %109 = and i1 %107, %108
  br i1 %109, label %110, label %113

110:                                              ; preds = %101, %122
  %111 = phi ptr [ %103, %101 ], [ %131, %122 ]
  %112 = phi i64 [ %105, %101 ], [ %123, %122 ]
  br label %19, !llvm.loop !181

113:                                              ; preds = %101
  %114 = icmp eq i64 %104, 0
  br i1 %114, label %115, label %118

115:                                              ; preds = %113
  %116 = load i64, ptr %10, align 8, !tbaa !103
  %117 = sub i64 %116, %105
  store i64 %117, ptr %7, align 8, !tbaa !106
  br label %132

118:                                              ; preds = %113
  %119 = icmp eq i32 %106, 7
  br i1 %119, label %122, label %120

120:                                              ; preds = %118
  %121 = tail call ptr @__errno_location() #18
  store i32 %106, ptr %121, align 4, !tbaa !55
  br label %132

122:                                              ; preds = %118
  %123 = add i64 %105, 256
  %124 = load i64, ptr %10, align 8, !tbaa !103
  %125 = add i64 %124, 256
  store i64 %125, ptr %10, align 8, !tbaa !103
  %126 = load ptr, ptr %3, align 8, !tbaa !105
  %127 = tail call ptr @xrealloc(ptr noundef %126, i64 noundef %125) #16
  store ptr %127, ptr %3, align 8, !tbaa !105
  %128 = load i64, ptr %10, align 8, !tbaa !103
  %129 = getelementptr inbounds i8, ptr %127, i64 %128
  %130 = sub i64 -256, %105
  %131 = getelementptr inbounds i8, ptr %129, i64 %130
  br label %110

132:                                              ; preds = %115, %120
  %133 = phi i8 [ 1, %115 ], [ 0, %120 ]
  ret i8 %133
}

; Function Attrs: cold nounwind uwtable
define internal noundef zeroext i8 @convert_utf16_utf8(ptr noundef readnone %0, ptr nocapture noundef readonly %1, i64 noundef %2, ptr nocapture noundef %3) #2 !prof !50 {
  %5 = alloca [6 x i8], align 1
  %6 = load ptr, ptr %3, align 8, !tbaa !105
  %7 = getelementptr inbounds %struct._cpp_strbuf, ptr %3, i64 0, i32 2
  %8 = load i64, ptr %7, align 8, !tbaa !106
  %9 = getelementptr inbounds i8, ptr %6, i64 %8
  %10 = getelementptr inbounds %struct._cpp_strbuf, ptr %3, i64 0, i32 1
  %11 = load i64, ptr %10, align 8, !tbaa !103
  %12 = sub i64 %11, %8
  %13 = icmp eq ptr %0, null
  %14 = zext i1 %13 to i64
  %15 = xor i1 %13, true
  %16 = zext i1 %15 to i64
  %17 = select i1 %13, i64 3, i64 2
  %18 = select i1 %13, i64 2, i64 3
  %19 = getelementptr inbounds i8, ptr %5, i64 5
  br label %20

20:                                               ; preds = %124, %4
  %21 = phi ptr [ %1, %4 ], [ %116, %124 ]
  %22 = phi ptr [ %9, %4 ], [ %125, %124 ]
  %23 = phi i64 [ %2, %4 ], [ %118, %124 ]
  %24 = phi i64 [ %12, %4 ], [ %126, %124 ]
  %25 = icmp ult i64 %23, 2
  br i1 %25, label %115, label %26

26:                                               ; preds = %20
  %27 = getelementptr inbounds i8, ptr %21, i64 %14
  %28 = load i8, ptr %27, align 1, !tbaa !102
  %29 = zext i8 %28 to i32
  %30 = shl nuw nsw i32 %29, 8
  %31 = getelementptr inbounds i8, ptr %21, i64 %16
  %32 = load i8, ptr %31, align 1, !tbaa !102
  %33 = zext i8 %32 to i32
  %34 = or disjoint i32 %30, %33
  %35 = and i8 %28, -4
  switch i8 %35, label %57 [
    i8 -36, label %115
    i8 -40, label %36
  ]

36:                                               ; preds = %26
  %37 = icmp ult i64 %23, 4
  br i1 %37, label %53, label %38

38:                                               ; preds = %36
  %39 = getelementptr inbounds i8, ptr %21, i64 %17
  %40 = load i8, ptr %39, align 1, !tbaa !102
  %41 = zext i8 %40 to i32
  %42 = shl nuw nsw i32 %41, 8
  %43 = add nsw i32 %42, -57344
  %44 = icmp ult i32 %43, -1024
  br i1 %44, label %53, label %45

45:                                               ; preds = %38
  %46 = getelementptr inbounds i8, ptr %21, i64 %18
  %47 = load i8, ptr %46, align 1, !tbaa !102
  %48 = zext i8 %47 to i32
  %49 = or disjoint i32 %42, %48
  %50 = shl nuw nsw i32 %34, 10
  %51 = add nsw i32 %50, -56613888
  %52 = add nsw i32 %51, %49
  br label %53

53:                                               ; preds = %45, %38, %36
  %54 = phi i32 [ %52, %45 ], [ %34, %36 ], [ %34, %38 ]
  %55 = phi i1 [ true, %45 ], [ false, %36 ], [ false, %38 ]
  %56 = phi i32 [ undef, %45 ], [ 22, %36 ], [ 84, %38 ]
  br i1 %55, label %57, label %115

57:                                               ; preds = %53, %26
  %58 = phi i32 [ %54, %53 ], [ %34, %26 ]
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %5) #16
  %59 = icmp ult i32 %58, 128
  br i1 %59, label %60, label %62

60:                                               ; preds = %57
  %61 = trunc i32 %58 to i8
  store i8 %61, ptr %19, align 1, !tbaa !102
  br label %88

62:                                               ; preds = %57, %80
  %63 = phi i32 [ %71, %80 ], [ %58, %57 ]
  %64 = phi i64 [ %72, %80 ], [ 1, %57 ]
  %65 = phi i64 [ %69, %80 ], [ 6, %57 ]
  %66 = trunc i32 %63 to i8
  %67 = and i8 %66, 63
  %68 = or disjoint i8 %67, -128
  %69 = add nsw i64 %65, -1
  %70 = getelementptr inbounds i8, ptr %5, i64 %69
  store i8 %68, ptr %70, align 1, !tbaa !102
  %71 = lshr i32 %63, 6
  %72 = add i64 %64, 1
  %73 = icmp ugt i32 %63, 4031
  br i1 %73, label %80, label %74

74:                                               ; preds = %62
  %75 = getelementptr inbounds [6 x i8], ptr @one_cppchar_to_utf8.limits, i64 0, i64 %64
  %76 = load i8, ptr %75, align 1, !tbaa !102
  %77 = zext i8 %76 to i32
  %78 = and i32 %71, %77
  %79 = icmp eq i32 %78, 0
  br i1 %79, label %81, label %80

80:                                               ; preds = %74, %62
  br label %62, !llvm.loop !145

81:                                               ; preds = %74
  %82 = getelementptr inbounds [6 x i8], ptr @one_cppchar_to_utf8.masks, i64 0, i64 %64
  %83 = load i8, ptr %82, align 1, !tbaa !102
  %84 = trunc i32 %71 to i8
  %85 = or i8 %83, %84
  %86 = add nsw i64 %65, -2
  %87 = getelementptr inbounds i8, ptr %5, i64 %86
  store i8 %85, ptr %87, align 1, !tbaa !102
  br label %88

88:                                               ; preds = %81, %60
  %89 = phi i64 [ 1, %60 ], [ %72, %81 ]
  %90 = phi i64 [ 5, %60 ], [ %86, %81 ]
  %91 = icmp ult i64 %24, %89
  br i1 %91, label %105, label %92

92:                                               ; preds = %88
  %93 = icmp slt i64 %90, 6
  br i1 %93, label %94, label %102

94:                                               ; preds = %92, %94
  %95 = phi ptr [ %100, %94 ], [ %22, %92 ]
  %96 = phi i64 [ %98, %94 ], [ %90, %92 ]
  %97 = getelementptr inbounds i8, ptr %5, i64 %96
  %98 = add i64 %96, 1
  %99 = load i8, ptr %97, align 1, !tbaa !102
  %100 = getelementptr inbounds i8, ptr %95, i64 1
  store i8 %99, ptr %95, align 1, !tbaa !102
  %101 = icmp eq i64 %98, 6
  br i1 %101, label %102, label %94, !llvm.loop !172

102:                                              ; preds = %94, %92
  %103 = phi ptr [ %22, %92 ], [ %100, %94 ]
  %104 = sub i64 %24, %89
  br label %105

105:                                              ; preds = %102, %88
  %106 = phi ptr [ %22, %88 ], [ %103, %102 ]
  %107 = phi i64 [ %24, %88 ], [ %104, %102 ]
  %108 = phi i32 [ 7, %88 ], [ 0, %102 ]
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %5) #16
  br i1 %91, label %115, label %109

109:                                              ; preds = %105
  %110 = icmp ult i32 %58, 65536
  %111 = select i1 %110, i64 2, i64 4
  %112 = getelementptr inbounds i8, ptr %21, i64 %111
  %113 = select i1 %110, i64 -2, i64 -4
  %114 = add i64 %113, %23
  br label %115

115:                                              ; preds = %53, %20, %26, %105, %109
  %116 = phi ptr [ %21, %105 ], [ %112, %109 ], [ %21, %26 ], [ %21, %20 ], [ %21, %53 ]
  %117 = phi ptr [ %106, %105 ], [ %106, %109 ], [ %22, %26 ], [ %22, %20 ], [ %22, %53 ]
  %118 = phi i64 [ %23, %105 ], [ %114, %109 ], [ %23, %26 ], [ %23, %20 ], [ %23, %53 ]
  %119 = phi i64 [ %107, %105 ], [ %107, %109 ], [ %24, %26 ], [ %24, %20 ], [ %24, %53 ]
  %120 = phi i32 [ %108, %105 ], [ 0, %109 ], [ 84, %26 ], [ 22, %20 ], [ %56, %53 ]
  %121 = icmp ne i64 %118, 0
  %122 = icmp eq i32 %120, 0
  %123 = and i1 %121, %122
  br i1 %123, label %124, label %127

124:                                              ; preds = %115, %136
  %125 = phi ptr [ %117, %115 ], [ %145, %136 ]
  %126 = phi i64 [ %119, %115 ], [ %137, %136 ]
  br label %20, !llvm.loop !181

127:                                              ; preds = %115
  %128 = icmp eq i64 %118, 0
  br i1 %128, label %129, label %132

129:                                              ; preds = %127
  %130 = load i64, ptr %10, align 8, !tbaa !103
  %131 = sub i64 %130, %119
  store i64 %131, ptr %7, align 8, !tbaa !106
  br label %146

132:                                              ; preds = %127
  %133 = icmp eq i32 %120, 7
  br i1 %133, label %136, label %134

134:                                              ; preds = %132
  %135 = tail call ptr @__errno_location() #18
  store i32 %120, ptr %135, align 4, !tbaa !55
  br label %146

136:                                              ; preds = %132
  %137 = add i64 %119, 256
  %138 = load i64, ptr %10, align 8, !tbaa !103
  %139 = add i64 %138, 256
  store i64 %139, ptr %10, align 8, !tbaa !103
  %140 = load ptr, ptr %3, align 8, !tbaa !105
  %141 = tail call ptr @xrealloc(ptr noundef %140, i64 noundef %139) #16
  store ptr %141, ptr %3, align 8, !tbaa !105
  %142 = load i64, ptr %10, align 8, !tbaa !103
  %143 = getelementptr inbounds i8, ptr %141, i64 %142
  %144 = sub i64 -256, %119
  %145 = getelementptr inbounds i8, ptr %143, i64 %144
  br label %124

146:                                              ; preds = %129, %134
  %147 = phi i8 [ 1, %129 ], [ 0, %134 ]
  ret i8 %147
}

; Function Attrs: nofree nounwind
declare noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #14

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #15

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #15

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #15

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #15

attributes #0 = { cold inlinehint mustprogress nofree nounwind willreturn memory(read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { cold nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #5 = { cold mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { cold mustprogress nofree nosync nounwind willreturn memory(write, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #10 = { mustprogress nofree nosync nounwind willreturn memory(none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nofree nounwind willreturn memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { mustprogress nofree nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { mustprogress nofree nounwind willreturn memory(argmem: readwrite) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #16 = { nounwind }
attributes #17 = { nounwind willreturn memory(read) }
attributes #18 = { nounwind willreturn memory(none) }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !33}
!llvm.ident = !{!49}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 1, !"ProfileSummary", !5}
!5 = !{!6, !7, !8, !9, !10, !11, !12, !13, !14, !15}
!6 = !{!"ProfileFormat", !"InstrProf"}
!7 = !{!"TotalCount", i64 25970300442}
!8 = !{!"MaxCount", i64 499227316}
!9 = !{!"MaxInternalCount", i64 499227316}
!10 = !{!"MaxFunctionCount", i64 269079181}
!11 = !{!"NumCounts", i64 219814}
!12 = !{!"NumFunctions", i64 12846}
!13 = !{!"IsPartialProfile", i64 0}
!14 = !{!"PartialProfileRatio", double 0.000000e+00}
!15 = !{!"DetailedSummary", !16}
!16 = !{!17, !18, !19, !20, !21, !22, !23, !24, !25, !26, !27, !28, !29, !30, !31, !32}
!17 = !{i32 10000, i64 499227316, i32 1}
!18 = !{i32 100000, i64 183919233, i32 10}
!19 = !{i32 200000, i64 63966136, i32 32}
!20 = !{i32 300000, i64 31763078, i32 90}
!21 = !{i32 400000, i64 20117281, i32 196}
!22 = !{i32 500000, i64 11046006, i32 375}
!23 = !{i32 600000, i64 6386181, i32 684}
!24 = !{i32 700000, i64 3816210, i32 1202}
!25 = !{i32 800000, i64 1875647, i32 2153}
!26 = !{i32 900000, i64 635998, i32 4611}
!27 = !{i32 950000, i64 320174, i32 7413}
!28 = !{i32 990000, i64 82126, i32 13176}
!29 = !{i32 999000, i64 12347, i32 18728}
!30 = !{i32 999900, i64 1133, i32 23724}
!31 = !{i32 999990, i64 83, i32 29864}
!32 = !{i32 999999, i64 20, i32 34832}
!33 = !{i32 5, !"CG Profile", !34}
!34 = distinct !{!35, !36, !37, !38, !39, !40, !41, !42, !43, !44, !45, !46, !47, !48}
!35 = !{ptr @cpp_init_iconv, ptr @init_iconv_desc, i64 5}
!36 = !{ptr @init_iconv_desc, ptr @strcasecmp, i64 11}
!37 = !{ptr @init_iconv_desc, ptr @strlen, i64 9}
!38 = !{ptr @init_iconv_desc, ptr @strcpy, i64 3}
!39 = !{ptr @init_iconv_desc, ptr @strcat, i64 3}
!40 = !{ptr @cpp_interpret_string, ptr @xmalloc, i64 117}
!41 = !{ptr @cpp_interpret_string, ptr @convert_no_conversion, i64 116}
!42 = !{ptr @cpp_interpret_string, ptr @emit_numeric_escape, i64 1}
!43 = !{ptr @cpp_interpret_string, ptr @xrealloc, i64 117}
!44 = !{ptr @cpp_interpret_string_notranslate, ptr @cpp_interpret_string, i64 1}
!45 = !{ptr @cpp_interpret_charconst, ptr @cpp_interpret_string, i64 5}
!46 = !{ptr @cpp_interpret_charconst, ptr @free, i64 5}
!47 = !{ptr @_cpp_convert_input, ptr @init_iconv_desc, i64 1}
!48 = !{ptr @_cpp_convert_input, ptr @xrealloc, i64 1}
!49 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!50 = !{!"function_entry_count", i64 0}
!51 = !{!52, !52, i64 0}
!52 = !{!"any pointer", !53, i64 0}
!53 = !{!"omnipotent char", !54, i64 0}
!54 = !{!"Simple C/C++ TBAA"}
!55 = !{!56, !56, i64 0}
!56 = !{!"int", !53, i64 0}
!57 = !{!"function_entry_count", i64 1}
!58 = !{!59, !52, i64 1088}
!59 = !{!"cpp_reader", !52, i64 0, !52, i64 8, !60, i64 16, !52, i64 40, !56, i64 48, !52, i64 56, !52, i64 64, !52, i64 72, !61, i64 80, !52, i64 136, !52, i64 144, !62, i64 152, !56, i64 176, !53, i64 180, !52, i64 184, !52, i64 192, !64, i64 200, !52, i64 264, !52, i64 272, !52, i64 280, !52, i64 288, !52, i64 296, !52, i64 304, !66, i64 312, !53, i64 400, !53, i64 401, !52, i64 408, !52, i64 416, !53, i64 424, !52, i64 432, !67, i64 440, !52, i64 472, !56, i64 480, !56, i64 484, !52, i64 488, !56, i64 496, !68, i64 504, !68, i64 528, !68, i64 552, !68, i64 576, !68, i64 600, !52, i64 624, !52, i64 632, !62, i64 640, !62, i64 664, !52, i64 688, !66, i64 696, !66, i64 784, !52, i64 872, !69, i64 880, !52, i64 1016, !52, i64 1024, !52, i64 1032, !70, i64 1040, !72, i64 1168, !53, i64 1200, !73, i64 1208, !52, i64 1240, !52, i64 1248, !52, i64 1256, !52, i64 1264, !56, i64 1272, !74, i64 1280, !52, i64 1296}
!60 = !{!"lexer_state", !53, i64 0, !53, i64 1, !53, i64 2, !53, i64 3, !53, i64 4, !53, i64 5, !53, i64 6, !53, i64 7, !53, i64 8, !53, i64 9, !53, i64 10, !56, i64 12, !53, i64 16, !53, i64 17}
!61 = !{!"cpp_context", !52, i64 0, !52, i64 8, !53, i64 16, !52, i64 32, !52, i64 40, !53, i64 48}
!62 = !{!"cpp_token", !56, i64 0, !56, i64 4, !63, i64 6, !53, i64 8}
!63 = !{!"short", !53, i64 0}
!64 = !{!"cpp_dir", !52, i64 0, !52, i64 8, !56, i64 16, !53, i64 20, !53, i64 21, !52, i64 24, !52, i64 32, !52, i64 40, !65, i64 48, !65, i64 56}
!65 = !{!"long", !53, i64 0}
!66 = !{!"obstack", !65, i64 0, !52, i64 8, !52, i64 16, !52, i64 24, !52, i64 32, !65, i64 40, !56, i64 48, !52, i64 56, !52, i64 64, !52, i64 72, !56, i64 80, !56, i64 80, !56, i64 80}
!67 = !{!"tokenrun", !52, i64 0, !52, i64 8, !52, i64 16, !52, i64 24}
!68 = !{!"cset_converter", !52, i64 0, !52, i64 8, !56, i64 16}
!69 = !{!"cpp_callbacks", !52, i64 0, !52, i64 8, !52, i64 16, !52, i64 24, !52, i64 32, !52, i64 40, !52, i64 48, !52, i64 56, !52, i64 64, !52, i64 72, !52, i64 80, !52, i64 88, !52, i64 96, !52, i64 104, !52, i64 112, !52, i64 120, !52, i64 128}
!70 = !{!"cpp_options", !56, i64 0, !56, i64 4, !53, i64 8, !53, i64 9, !53, i64 10, !53, i64 11, !53, i64 12, !53, i64 13, !53, i64 14, !53, i64 15, !53, i64 16, !53, i64 17, !53, i64 18, !53, i64 19, !53, i64 20, !53, i64 21, !53, i64 22, !53, i64 23, !53, i64 24, !53, i64 25, !53, i64 26, !53, i64 27, !53, i64 28, !53, i64 29, !53, i64 30, !53, i64 31, !53, i64 32, !53, i64 33, !53, i64 34, !53, i64 35, !53, i64 36, !53, i64 37, !53, i64 38, !53, i64 39, !53, i64 40, !53, i64 41, !53, i64 42, !52, i64 48, !52, i64 56, !52, i64 64, !56, i64 72, !53, i64 76, !53, i64 77, !71, i64 80, !65, i64 88, !65, i64 96, !65, i64 104, !65, i64 112, !53, i64 120, !53, i64 121, !53, i64 122, !53, i64 123, !53, i64 124}
!71 = !{!"", !56, i64 0, !53, i64 4, !53, i64 5, !53, i64 6, !53, i64 7}
!72 = !{!"spec_nodes", !52, i64 0, !52, i64 8, !52, i64 16, !52, i64 24}
!73 = !{!"", !52, i64 0, !52, i64 8, !52, i64 16, !56, i64 24}
!74 = !{!"", !52, i64 0, !56, i64 8, !56, i64 12}
!75 = !{!59, !52, i64 1096}
!76 = !{!59, !53, i64 1162}
!77 = !{!59, !65, i64 1152}
!78 = !{!"branch_weights", i32 1, i32 0}
!79 = !{!"branch_weights", i32 0, i32 1}
!80 = !{i64 0, i64 8, !51, i64 8, i64 8, !51, i64 16, i64 4, !55}
!81 = !{!59, !65, i64 1136}
!82 = !{!59, !56, i64 520}
!83 = !{!59, !56, i64 544}
!84 = !{!59, !56, i64 568}
!85 = !{!59, !56, i64 592}
!86 = !{!59, !56, i64 616}
!87 = !{!"function_entry_count", i64 6}
!88 = !{!"cpp_charset.c;init_iconv_desc"}
!89 = !{!"branch_weights", i32 3, i32 3}
!90 = !{!68, !52, i64 0}
!91 = !{!68, !52, i64 8}
!92 = !{!68, !56, i64 16}
!93 = !{!94, !52, i64 0}
!94 = !{!"conversion", !52, i64 0, !52, i64 8, !52, i64 16}
!95 = !{!"branch_weights", i32 3, i32 2}
!96 = !{!94, !52, i64 8}
!97 = !{!94, !52, i64 16}
!98 = !{!"branch_weights", i32 0, i32 5}
!99 = distinct !{!99, !100, !101}
!100 = !{!"llvm.loop.mustprogress"}
!101 = !{!"llvm.loop.unroll.disable"}
!102 = !{!53, !53, i64 0}
!103 = !{!104, !65, i64 8}
!104 = !{!"_cpp_strbuf", !52, i64 0, !65, i64 8, !65, i64 16}
!105 = !{!104, !52, i64 0}
!106 = !{!104, !65, i64 16}
!107 = !{!59, !52, i64 504}
!108 = !{!59, !52, i64 512}
!109 = !{!59, !53, i64 1048}
!110 = !{!59, !53, i64 1075}
!111 = !{!59, !53, i64 1063}
!112 = !{!63, !63, i64 0}
!113 = distinct !{!113, !100, !101}
!114 = !{!59, !53, i64 1070}
!115 = !{!59, !53, i64 1072}
!116 = !{!59, !53, i64 18}
!117 = !{!118, !56, i64 0}
!118 = !{!"normalize_state", !56, i64 0, !53, i64 4, !56, i64 8}
!119 = !{!118, !53, i64 4}
!120 = !{!121, !63, i64 2}
!121 = !{!"", !53, i64 0, !53, i64 1, !63, i64 2}
!122 = distinct !{!122, !100, !101}
!123 = !{!121, !53, i64 0}
!124 = !{!59, !53, i64 1077}
!125 = !{!121, !53, i64 1}
!126 = !{!118, !56, i64 8}
!127 = !{!"function_entry_count", i64 117}
!128 = !{!"branch_weights", i32 117, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0}
!129 = !{!130, !56, i64 0}
!130 = !{!"cpp_string", !56, i64 0, !52, i64 8}
!131 = !{!"branch_weights", i32 1, i32 233}
!132 = !{!130, !52, i64 8}
!133 = !{!"branch_weights", i32 117, i32 0, i32 0, i32 0}
!134 = !{!"branch_weights", i32 0, i32 117}
!135 = distinct !{!135, !100, !101}
!136 = !{!"branch_weights", i32 233, i32 1}
!137 = !{!"branch_weights", i32 2, i32 2625}
!138 = !{!"branch_weights", i32 5021, i32 233}
!139 = distinct !{!139, !100, !101}
!140 = !{!"branch_weights", i32 115, i32 4}
!141 = !{!"VP", i32 0, i64 115, i64 2815605625225615724, i64 115}
!142 = !{!"branch_weights", i32 0, i32 115}
!143 = !{!"branch_weights", i32 117, i32 2}
!144 = !{!"branch_weights", i32 0, i32 0, i32 0, i32 0, i32 1, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 1, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0}
!145 = distinct !{!145, !100, !101}
!146 = distinct !{!146, !100, !101}
!147 = !{!"branch_weights", i32 127, i32 1}
!148 = !{!"branch_weights", i32 1, i32 127}
!149 = distinct !{!149, !100, !101}
!150 = !{!"VP", i32 0, i64 1, i64 2815605625225615724, i64 1}
!151 = distinct !{!151, !101}
!152 = distinct !{!152, !100, !101}
!153 = !{!"branch_weights", i32 118, i32 0}
!154 = distinct !{!154, !100, !101}
!155 = !{!"branch_weights", i32 0, i32 118}
!156 = !{!"cpp_charset.c;emit_numeric_escape"}
!157 = !{!"function_entry_count", i64 116}
!158 = !{!"cpp_charset.c;convert_no_conversion"}
!159 = !{!"branch_weights", i32 0, i32 116}
!160 = !{!"VP", i32 1, i64 116, i64 17, i64 88, i64 9, i64 15, i64 1, i64 4, i64 16, i64 3}
!161 = !{!"function_entry_count", i64 5}
!162 = !{!"branch_weights", i32 5, i32 0}
!163 = distinct !{!163, !100, !101}
!164 = !{!59, !53, i64 1161}
!165 = !{!59, !65, i64 1144}
!166 = !{!"branch_weights", i32 1, i32 159}
!167 = !{!"branch_weights", i32 159, i32 1}
!168 = distinct !{!168, !100, !101}
!169 = !{!59, !53, i64 1062}
!170 = !{!59, !53, i64 1160}
!171 = distinct !{!171, !100, !101}
!172 = distinct !{!172, !100, !101}
!173 = distinct !{!173, !100, !101}
!174 = !{!59, !52, i64 1016}
!175 = !{i64 0, i64 8, !51, i64 8, i64 4, !55}
!176 = !{!59, !52, i64 1104}
!177 = !{!65, !65, i64 0}
!178 = !{!"function_entry_count", i64 2}
!179 = distinct !{!179, !100, !101}
!180 = distinct !{!180, !100, !101}
!181 = distinct !{!181, !101}
