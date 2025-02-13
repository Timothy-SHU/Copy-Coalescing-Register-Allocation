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

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @cpp_init_iconv(ptr noundef %0) local_unnamed_addr #0 {
  %2 = alloca %struct.cset_converter, align 8
  %3 = alloca %struct.cset_converter, align 8
  %4 = alloca %struct.cset_converter, align 8
  %5 = alloca %struct.cset_converter, align 8
  %6 = alloca %struct.cset_converter, align 8
  %7 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 53, i32 37
  %8 = load ptr, ptr %7, align 8, !tbaa !5
  %9 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 53, i32 38
  %10 = load ptr, ptr %9, align 8, !tbaa !26
  %11 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 53, i32 50
  %12 = load i8, ptr %11, align 2, !tbaa !27
  %13 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 53, i32 47
  %14 = load i64, ptr %13, align 8, !tbaa !28
  %15 = icmp ugt i64 %14, 31
  br i1 %15, label %16, label %19

16:                                               ; preds = %1
  %17 = icmp eq i8 %12, 0
  %18 = select i1 %17, ptr @.str.1, ptr @.str
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
  %27 = select i1 %26, ptr %25, ptr %10
  %28 = icmp eq ptr %8, null
  %29 = select i1 %28, ptr @.str.4, ptr %8
  %30 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 36
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %2) #16
  call fastcc void @init_iconv_desc(ptr dead_on_unwind nonnull writable sret(%struct.cset_converter) align 8 %2, ptr noundef nonnull %0, ptr noundef nonnull %29, ptr noundef nonnull @.str.4) #17
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %30, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false), !tbaa.struct !29
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %2) #16
  %31 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 53, i32 45
  %32 = load i64, ptr %31, align 8, !tbaa !32
  %33 = trunc i64 %32 to i32
  %34 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 36, i32 2
  store i32 %33, ptr %34, align 8, !tbaa !33
  %35 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 37
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #16
  call fastcc void @init_iconv_desc(ptr dead_on_unwind nonnull writable sret(%struct.cset_converter) align 8 %3, ptr noundef nonnull %0, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.4) #17
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %35, ptr noundef nonnull align 8 dereferenceable(24) %3, i64 24, i1 false), !tbaa.struct !29
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #16
  %36 = load i64, ptr %31, align 8, !tbaa !32
  %37 = trunc i64 %36 to i32
  %38 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 37, i32 2
  store i32 %37, ptr %38, align 8, !tbaa !34
  %39 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 38
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #16
  %40 = icmp eq i8 %12, 0
  %41 = select i1 %40, ptr @.str.3, ptr @.str.2
  call fastcc void @init_iconv_desc(ptr dead_on_unwind nonnull writable sret(%struct.cset_converter) align 8 %4, ptr noundef nonnull %0, ptr noundef nonnull %41, ptr noundef nonnull @.str.4) #17
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %39, ptr noundef nonnull align 8 dereferenceable(24) %4, i64 24, i1 false), !tbaa.struct !29
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #16
  %42 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 38, i32 2
  store i32 16, ptr %42, align 8, !tbaa !35
  %43 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 39
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %5) #16
  %44 = select i1 %40, ptr @.str.1, ptr @.str
  call fastcc void @init_iconv_desc(ptr dead_on_unwind nonnull writable sret(%struct.cset_converter) align 8 %5, ptr noundef nonnull %0, ptr noundef nonnull %44, ptr noundef nonnull @.str.4) #17
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %43, ptr noundef nonnull align 8 dereferenceable(24) %5, i64 24, i1 false), !tbaa.struct !29
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #16
  %45 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 39, i32 2
  store i32 32, ptr %45, align 8, !tbaa !36
  %46 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 40
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %6) #16
  call fastcc void @init_iconv_desc(ptr dead_on_unwind nonnull writable sret(%struct.cset_converter) align 8 %6, ptr noundef nonnull %0, ptr noundef nonnull %27, ptr noundef nonnull @.str.4) #17
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %46, ptr noundef nonnull align 8 dereferenceable(24) %6, i64 24, i1 false), !tbaa.struct !29
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %6) #16
  %47 = load i64, ptr %13, align 8, !tbaa !28
  %48 = trunc i64 %47 to i32
  %49 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 40, i32 2
  store i32 %48, ptr %49, align 8, !tbaa !37
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @init_iconv_desc(ptr dead_on_unwind noalias nocapture writable writeonly sret(%struct.cset_converter) align 8 %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) unnamed_addr #0 {
  %5 = tail call i32 @strcasecmp(ptr noundef %2, ptr noundef %3) #18
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %10

7:                                                ; preds = %4
  store ptr @convert_no_conversion, ptr %0, align 8, !tbaa !38
  %8 = getelementptr inbounds %struct.cset_converter, ptr %0, i64 0, i32 1
  store ptr inttoptr (i64 -1 to ptr), ptr %8, align 8, !tbaa !39
  %9 = getelementptr inbounds %struct.cset_converter, ptr %0, i64 0, i32 2
  store i32 -1, ptr %9, align 8, !tbaa !40
  br label %38

10:                                               ; preds = %4
  %11 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %2) #18
  %12 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %3) #18
  %13 = add i64 %11, 2
  %14 = add i64 %13, %12
  %15 = alloca i8, i64 %14, align 16
  %16 = call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %15, ptr noundef nonnull dereferenceable(1) %3) #19
  %17 = call i64 @strlen(ptr nonnull dereferenceable(1) %15)
  %18 = getelementptr inbounds i8, ptr %15, i64 %17
  store i16 47, ptr %18, align 1
  %19 = call ptr @strcat(ptr noundef nonnull dereferenceable(1) %15, ptr noundef nonnull dereferenceable(1) %2) #19
  br label %20

20:                                               ; preds = %10, %30
  %21 = phi i64 [ 0, %10 ], [ %31, %30 ]
  %22 = getelementptr inbounds [8 x %struct.conversion], ptr @conversion_tab, i64 0, i64 %21
  %23 = load ptr, ptr %22, align 8, !tbaa !41
  %24 = call i32 @strcasecmp(ptr noundef nonnull %15, ptr noundef %23) #18
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %26, label %30

26:                                               ; preds = %20
  %27 = getelementptr inbounds [8 x %struct.conversion], ptr @conversion_tab, i64 0, i64 %21, i32 1
  %28 = load <2 x ptr>, ptr %27, align 8, !tbaa !30
  store <2 x ptr> %28, ptr %0, align 8, !tbaa !30
  %29 = getelementptr inbounds %struct.cset_converter, ptr %0, i64 0, i32 2
  store i32 -1, ptr %29, align 8, !tbaa !40
  br label %38

30:                                               ; preds = %20
  %31 = add nuw nsw i64 %21, 1
  %32 = icmp eq i64 %31, 8
  br i1 %32, label %33, label %20, !llvm.loop !43

33:                                               ; preds = %30
  %34 = tail call ptr @__errno_location() #20
  store i32 22, ptr %34, align 4, !tbaa !31
  %35 = getelementptr inbounds %struct.cset_converter, ptr %0, i64 0, i32 1
  store ptr inttoptr (i64 -1 to ptr), ptr %35, align 8, !tbaa !39
  %36 = getelementptr inbounds %struct.cset_converter, ptr %0, i64 0, i32 2
  store i32 -1, ptr %36, align 8, !tbaa !40
  %37 = call zeroext i8 (ptr, i32, ptr, ...) @cpp_error(ptr noundef %1, i32 noundef 3, ptr noundef nonnull @.str.20, ptr noundef %3, ptr noundef %2) #19
  store ptr @convert_no_conversion, ptr %0, align 8, !tbaa !38
  br label %38

38:                                               ; preds = %33, %26, %7
  ret void
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local void @_cpp_destroy_iconv(ptr nocapture noundef readnone %0) local_unnamed_addr #3 {
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @cpp_host_to_exec_charset(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = alloca [1 x i8], align 1
  %4 = alloca %struct._cpp_strbuf, align 8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %3) #16
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #16
  %5 = icmp ugt i32 %1, 126
  br i1 %5, label %6, label %9

6:                                                ; preds = %2
  %7 = zext i32 %1 to i64
  %8 = tail call zeroext i8 (ptr, i32, ptr, ...) @cpp_error(ptr noundef %0, i32 noundef 4, ptr noundef nonnull @.str.5, i64 noundef %7) #19
  br label %32

9:                                                ; preds = %2
  %10 = trunc i32 %1 to i8
  store i8 %10, ptr %3, align 1, !tbaa !45
  %11 = getelementptr inbounds %struct._cpp_strbuf, ptr %4, i64 0, i32 1
  store i64 1, ptr %11, align 8, !tbaa !46
  %12 = tail call ptr @xmalloc(i64 noundef 1) #19
  store ptr %12, ptr %4, align 8, !tbaa !48
  %13 = getelementptr inbounds %struct._cpp_strbuf, ptr %4, i64 0, i32 2
  store i64 0, ptr %13, align 8, !tbaa !49
  %14 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 36
  %15 = load ptr, ptr %14, align 8, !tbaa !50
  %16 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 36, i32 1
  %17 = load ptr, ptr %16, align 8, !tbaa !51
  %18 = call zeroext i8 %15(ptr noundef %17, ptr noundef nonnull %3, i64 noundef 1, ptr noundef nonnull %4) #19
  %19 = icmp eq i8 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %9
  %21 = call zeroext i8 @cpp_errno(ptr noundef nonnull %0, i32 noundef 4, ptr noundef nonnull @.str.6) #19
  br label %32

22:                                               ; preds = %9
  %23 = load i64, ptr %13, align 8, !tbaa !49
  %24 = icmp eq i64 %23, 1
  br i1 %24, label %28, label %25

25:                                               ; preds = %22
  %26 = zext nneg i32 %1 to i64
  %27 = call zeroext i8 (ptr, i32, ptr, ...) @cpp_error(ptr noundef nonnull %0, i32 noundef 4, ptr noundef nonnull @.str.7, i64 noundef %26) #19
  br label %32

28:                                               ; preds = %22
  %29 = load ptr, ptr %4, align 8, !tbaa !48
  %30 = load i8, ptr %29, align 1, !tbaa !45
  %31 = zext i8 %30 to i32
  call void @free(ptr noundef %29) #19
  br label %32

32:                                               ; preds = %28, %25, %20, %6
  %33 = phi i32 [ 0, %6 ], [ 0, %25 ], [ %31, %28 ], [ 0, %20 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #16
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %3) #16
  ret i32 %33
}

; Function Attrs: optsize
declare zeroext i8 @cpp_error(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: optsize
declare ptr @xmalloc(i64 noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare zeroext i8 @cpp_errno(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nounwind optsize willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr nocapture noundef) local_unnamed_addr #5

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @_cpp_valid_ucn(ptr noundef %0, ptr nocapture noundef %1, ptr noundef readnone %2, i32 noundef %3, ptr nocapture noundef %4) local_unnamed_addr #0 {
  %6 = load ptr, ptr %1, align 8, !tbaa !30
  %7 = getelementptr inbounds i8, ptr %6, i64 -2
  %8 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 53, i32 2
  %9 = load i8, ptr %8, align 8, !tbaa !52
  %10 = icmp eq i8 %9, 0
  br i1 %10, label %11, label %17

11:                                               ; preds = %5
  %12 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 53, i32 29
  %13 = load i8, ptr %12, align 1, !tbaa !53
  %14 = icmp eq i8 %13, 0
  br i1 %14, label %15, label %17

15:                                               ; preds = %11
  %16 = tail call zeroext i8 (ptr, i32, ptr, ...) @cpp_error(ptr noundef nonnull %0, i32 noundef 0, ptr noundef nonnull @.str.8) #19
  br label %28

17:                                               ; preds = %11, %5
  %18 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 53, i32 17
  %19 = load i8, ptr %18, align 1, !tbaa !54
  %20 = icmp ne i8 %19, 0
  %21 = icmp eq i32 %3, 0
  %22 = and i1 %21, %20
  br i1 %22, label %23, label %28

23:                                               ; preds = %17
  %24 = getelementptr inbounds i8, ptr %6, i64 -1
  %25 = load i8, ptr %24, align 1, !tbaa !45
  %26 = zext i8 %25 to i32
  %27 = tail call zeroext i8 (ptr, i32, ptr, ...) @cpp_error(ptr noundef nonnull %0, i32 noundef 0, ptr noundef nonnull @.str.9, i32 noundef %26) #19
  br label %28

28:                                               ; preds = %17, %23, %15
  %29 = getelementptr inbounds i8, ptr %6, i64 -1
  %30 = load i8, ptr %29, align 1, !tbaa !45
  switch i8 %30, label %32 [
    i8 117, label %34
    i8 85, label %31
  ]

31:                                               ; preds = %28
  br label %34

32:                                               ; preds = %28
  %33 = tail call zeroext i8 (ptr, i32, ptr, ...) @cpp_error(ptr noundef nonnull %0, i32 noundef 4, ptr noundef nonnull @.str.10) #19
  br label %34

34:                                               ; preds = %28, %31, %32
  %35 = phi i32 [ 4, %28 ], [ 4, %32 ], [ 8, %31 ]
  br label %36

36:                                               ; preds = %34, %46
  %37 = phi i32 [ %53, %46 ], [ %35, %34 ]
  %38 = phi ptr [ %47, %46 ], [ %6, %34 ]
  %39 = phi i32 [ %52, %46 ], [ 0, %34 ]
  %40 = load i8, ptr %38, align 1, !tbaa !45
  %41 = zext i8 %40 to i64
  %42 = getelementptr inbounds [256 x i16], ptr @_sch_istable, i64 0, i64 %41
  %43 = load i16, ptr %42, align 2, !tbaa !55
  %44 = and i16 %43, 256
  %45 = icmp eq i16 %44, 0
  br i1 %45, label %57, label %46

46:                                               ; preds = %36
  %47 = getelementptr inbounds i8, ptr %38, i64 1
  %48 = shl i32 %39, 4
  %49 = getelementptr inbounds [256 x i8], ptr @_hex_value, i64 0, i64 %41
  %50 = load i8, ptr %49, align 1, !tbaa !45
  %51 = zext i8 %50 to i32
  %52 = add i32 %48, %51
  %53 = add nsw i32 %37, -1
  %54 = icmp ne i32 %53, 0
  %55 = icmp ult ptr %47, %2
  %56 = select i1 %54, i1 %55, i1 false
  br i1 %56, label %36, label %57, !llvm.loop !56

57:                                               ; preds = %36, %46
  %58 = phi i32 [ %53, %46 ], [ %37, %36 ]
  %59 = phi ptr [ %47, %46 ], [ %38, %36 ]
  %60 = phi i32 [ %52, %46 ], [ %39, %36 ]
  %61 = icmp ne i32 %58, 0
  %62 = icmp ne i32 %3, 0
  %63 = and i1 %62, %61
  br i1 %63, label %132, label %64

64:                                               ; preds = %57
  store ptr %59, ptr %1, align 8, !tbaa !30
  br i1 %61, label %65, label %71

65:                                               ; preds = %64
  %66 = ptrtoint ptr %59 to i64
  %67 = ptrtoint ptr %7 to i64
  %68 = sub i64 %66, %67
  %69 = trunc i64 %68 to i32
  %70 = tail call zeroext i8 (ptr, i32, ptr, ...) @cpp_error(ptr noundef %0, i32 noundef 3, ptr noundef nonnull @.str.11, i32 noundef %69, ptr noundef nonnull %7) #19
  br label %129

71:                                               ; preds = %64
  %72 = icmp ult i32 %60, 160
  br i1 %72, label %73, label %79

73:                                               ; preds = %71
  %74 = load i8, ptr %8, align 8, !tbaa !52
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
  %89 = tail call zeroext i8 (ptr, i32, ptr, ...) @cpp_error(ptr noundef %0, i32 noundef 3, ptr noundef nonnull @.str.12, i32 noundef %88, ptr noundef nonnull %7) #19
  br label %129

90:                                               ; preds = %79
  %91 = icmp eq i32 %60, 36
  %92 = select i1 %62, i1 %91, i1 false
  br i1 %92, label %93, label %109

93:                                               ; preds = %90
  %94 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 53, i32 24
  %95 = load i8, ptr %94, align 2, !tbaa !57
  %96 = icmp eq i8 %95, 0
  br i1 %96, label %110, label %97

97:                                               ; preds = %93
  %98 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 53, i32 26
  %99 = load i8, ptr %98, align 8, !tbaa !58
  %100 = icmp eq i8 %99, 0
  br i1 %100, label %107, label %101

101:                                              ; preds = %97
  %102 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 2, i32 2
  %103 = load i8, ptr %102, align 2, !tbaa !59
  %104 = icmp eq i8 %103, 0
  br i1 %104, label %105, label %107

105:                                              ; preds = %101
  store i8 0, ptr %98, align 8, !tbaa !58
  %106 = tail call zeroext i8 (ptr, i32, ptr, ...) @cpp_error(ptr noundef nonnull %0, i32 noundef 2, ptr noundef nonnull @.str.13) #19
  br label %107

107:                                              ; preds = %105, %101, %97
  store i32 0, ptr %4, align 4, !tbaa !60
  %108 = getelementptr inbounds %struct.normalize_state, ptr %4, i64 0, i32 1
  store i8 0, ptr %108, align 4, !tbaa !62
  br label %129

109:                                              ; preds = %90
  br i1 %62, label %110, label %129

110:                                              ; preds = %93, %109
  %111 = tail call fastcc i32 @ucn_valid_in_identifier(ptr noundef %0, i32 noundef %60, ptr noundef %4) #17, !range !63
  %112 = icmp eq i32 %111, 0
  br i1 %112, label %113, label %119

113:                                              ; preds = %110
  %114 = ptrtoint ptr %59 to i64
  %115 = ptrtoint ptr %7 to i64
  %116 = sub i64 %114, %115
  %117 = trunc i64 %116 to i32
  %118 = tail call zeroext i8 (ptr, i32, ptr, ...) @cpp_error(ptr noundef %0, i32 noundef 3, ptr noundef nonnull @.str.14, i32 noundef %117, ptr noundef nonnull %7) #19
  br label %129

119:                                              ; preds = %110
  %120 = icmp eq i32 %111, 2
  %121 = icmp eq i32 %3, 1
  %122 = and i1 %121, %120
  br i1 %122, label %123, label %129

123:                                              ; preds = %119
  %124 = ptrtoint ptr %59 to i64
  %125 = ptrtoint ptr %7 to i64
  %126 = sub i64 %124, %125
  %127 = trunc i64 %126 to i32
  %128 = tail call zeroext i8 (ptr, i32, ptr, ...) @cpp_error(ptr noundef %0, i32 noundef 3, ptr noundef nonnull @.str.15, i32 noundef %127, ptr noundef nonnull %7) #19
  br label %129

129:                                              ; preds = %113, %123, %119, %84, %109, %107, %65
  %130 = phi i32 [ 1, %65 ], [ 1, %84 ], [ 36, %107 ], [ %60, %109 ], [ %60, %119 ], [ %60, %123 ], [ %60, %113 ]
  %131 = tail call i32 @llvm.umax.i32(i32 %130, i32 1)
  br label %132

132:                                              ; preds = %57, %129
  %133 = phi i32 [ %131, %129 ], [ 0, %57 ]
  ret i32 %133
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @ucn_valid_in_identifier(ptr noundef %0, i32 noundef %1, ptr nocapture noundef %2) unnamed_addr #0 {
  %4 = icmp ugt i32 %1, 65535
  br i1 %4, label %124, label %5

5:                                                ; preds = %3, %5
  %6 = phi i32 [ %17, %5 ], [ 0, %3 ]
  %7 = phi i32 [ %16, %5 ], [ 746, %3 ]
  %8 = add nsw i32 %6, %7
  %9 = sdiv i32 %8, 2
  %10 = sext i32 %9 to i64
  %11 = getelementptr inbounds [747 x %struct.anon.3], ptr @ucnranges, i64 0, i64 %10, i32 2
  %12 = load i16, ptr %11, align 2, !tbaa !64
  %13 = zext i16 %12 to i32
  %14 = icmp ult i32 %13, %1
  %15 = add nsw i32 %9, 1
  %16 = select i1 %14, i32 %7, i32 %9
  %17 = select i1 %14, i32 %15, i32 %6
  %18 = icmp eq i32 %16, %17
  br i1 %18, label %19, label %5, !llvm.loop !66

19:                                               ; preds = %5
  %20 = sext i32 %16 to i64
  %21 = getelementptr inbounds [747 x %struct.anon.3], ptr @ucnranges, i64 0, i64 %20
  %22 = load i8, ptr %21, align 4, !tbaa !67
  %23 = zext i8 %22 to i32
  %24 = and i32 %23, 5
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %124, label %26

26:                                               ; preds = %19
  %27 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 53, i32 31
  %28 = load i8, ptr %27, align 1, !tbaa !68
  %29 = icmp eq i8 %28, 0
  br i1 %29, label %44, label %30

30:                                               ; preds = %26
  %31 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 53, i32 29
  %32 = load i8, ptr %31, align 1, !tbaa !53
  %33 = icmp ne i8 %32, 0
  %34 = and i32 %23, 1
  %35 = icmp eq i32 %34, 0
  %36 = and i1 %35, %33
  br i1 %36, label %124, label %37

37:                                               ; preds = %30
  %38 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 53, i32 2
  %39 = load i8, ptr %38, align 8, !tbaa !52
  %40 = icmp ne i8 %39, 0
  %41 = and i8 %22, 4
  %42 = icmp eq i8 %41, 0
  %43 = and i1 %42, %40
  br i1 %43, label %124, label %44

44:                                               ; preds = %37, %26
  %45 = getelementptr inbounds [747 x %struct.anon.3], ptr @ucnranges, i64 0, i64 %20, i32 1
  %46 = load i8, ptr %45, align 1, !tbaa !69
  %47 = icmp eq i8 %46, 0
  br i1 %47, label %54, label %48

48:                                               ; preds = %44
  %49 = getelementptr inbounds %struct.normalize_state, ptr %2, i64 0, i32 1
  %50 = load i8, ptr %49, align 4, !tbaa !62
  %51 = icmp ult i8 %46, %50
  br i1 %51, label %52, label %54

52:                                               ; preds = %48
  %53 = getelementptr inbounds %struct.normalize_state, ptr %2, i64 0, i32 2
  store i32 3, ptr %53, align 4, !tbaa !70
  br label %115

54:                                               ; preds = %48, %44
  %55 = and i32 %23, 64
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %97, label %57

57:                                               ; preds = %54
  %58 = load i32, ptr %2, align 4, !tbaa !60
  %59 = trunc i32 %1 to i16
  switch i16 %59, label %69 [
    i16 2494, label %60
    i16 2878, label %62
    i16 3006, label %64
    i16 3266, label %67
    i16 3390, label %88
  ]

60:                                               ; preds = %57
  %61 = icmp eq i32 %58, 2503
  br i1 %61, label %91, label %115

62:                                               ; preds = %57
  %63 = icmp eq i32 %58, 2887
  br i1 %63, label %91, label %115

64:                                               ; preds = %57
  %65 = add i32 %58, -3016
  %66 = icmp ult i32 %65, -2
  br i1 %66, label %115, label %91

67:                                               ; preds = %57
  %68 = icmp eq i32 %58, 3270
  br i1 %68, label %91, label %115

69:                                               ; preds = %57
  %70 = add nsw i32 %1, -4449
  %71 = icmp ult i32 %70, 21
  br i1 %71, label %85, label %72

72:                                               ; preds = %69
  %73 = add nsw i32 %1, -4520
  %74 = icmp ult i32 %73, 27
  br i1 %74, label %75, label %83

75:                                               ; preds = %72
  %76 = add i32 %58, -55204
  %77 = icmp ult i32 %76, -11172
  br i1 %77, label %115, label %78

78:                                               ; preds = %75
  %79 = trunc i32 %58 to i16
  %80 = add nsw i16 %79, 21504
  %81 = urem i16 %80, 28
  %82 = icmp eq i16 %81, 0
  br i1 %82, label %93, label %115

83:                                               ; preds = %72
  %84 = tail call zeroext i8 (ptr, i32, ptr, ...) @cpp_error(ptr noundef nonnull %0, i32 noundef 4, ptr noundef nonnull @.str.30, i32 noundef %1) #19
  br label %115

85:                                               ; preds = %69
  %86 = add i32 %58, -4371
  %87 = icmp ult i32 %86, -19
  br i1 %87, label %115, label %93

88:                                               ; preds = %57
  %89 = add i32 %58, -3400
  %90 = icmp ult i32 %89, -2
  br i1 %90, label %115, label %91

91:                                               ; preds = %67, %64, %62, %60, %88
  %92 = getelementptr inbounds %struct.normalize_state, ptr %2, i64 0, i32 2
  store i32 3, ptr %92, align 4, !tbaa !70
  br label %115

93:                                               ; preds = %78, %85
  %94 = getelementptr inbounds %struct.normalize_state, ptr %2, i64 0, i32 2
  %95 = load i32, ptr %94, align 4, !tbaa !70
  %96 = tail call i32 @llvm.umax.i32(i32 %95, i32 2)
  store i32 %96, ptr %94, align 4, !tbaa !70
  br label %115

97:                                               ; preds = %54
  %98 = and i32 %23, 32
  %99 = icmp eq i32 %98, 0
  br i1 %99, label %100, label %115

100:                                              ; preds = %97
  %101 = and i32 %23, 16
  %102 = icmp eq i32 %101, 0
  br i1 %102, label %107, label %103

103:                                              ; preds = %100
  %104 = getelementptr inbounds %struct.normalize_state, ptr %2, i64 0, i32 2
  %105 = load i32, ptr %104, align 4, !tbaa !70
  %106 = tail call i32 @llvm.umax.i32(i32 %105, i32 1)
  store i32 %106, ptr %104, align 4, !tbaa !70
  br label %115

107:                                              ; preds = %100
  %108 = and i32 %23, 8
  %109 = icmp eq i32 %108, 0
  %110 = getelementptr inbounds %struct.normalize_state, ptr %2, i64 0, i32 2
  br i1 %109, label %114, label %111

111:                                              ; preds = %107
  %112 = load i32, ptr %110, align 4, !tbaa !70
  %113 = tail call i32 @llvm.umax.i32(i32 %112, i32 2)
  store i32 %113, ptr %110, align 4, !tbaa !70
  br label %115

114:                                              ; preds = %107
  store i32 3, ptr %110, align 4, !tbaa !70
  br label %115

115:                                              ; preds = %67, %64, %62, %60, %78, %88, %83, %75, %85, %91, %93, %103, %114, %111, %97, %52
  store i32 %1, ptr %2, align 4, !tbaa !60
  %116 = getelementptr inbounds %struct.normalize_state, ptr %2, i64 0, i32 1
  store i8 %46, ptr %116, align 4, !tbaa !62
  %117 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 53, i32 29
  %118 = load i8, ptr %117, align 1, !tbaa !53
  %119 = icmp eq i8 %118, 0
  %120 = and i8 %22, 2
  %121 = icmp eq i8 %120, 0
  %122 = or i1 %121, %119
  %123 = select i1 %122, i32 1, i32 2
  br label %124

124:                                              ; preds = %115, %37, %30, %19, %3
  %125 = phi i32 [ 0, %3 ], [ 0, %19 ], [ 0, %30 ], [ 0, %37 ], [ %123, %115 ]
  ret i32 %125
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef zeroext i8 @cpp_interpret_string(ptr noundef %0, ptr nocapture noundef readonly %1, i64 noundef %2, ptr nocapture noundef writeonly %3, i32 noundef %4) local_unnamed_addr #0 {
  %6 = alloca %struct._cpp_strbuf, align 8
  %7 = alloca %struct.cset_converter, align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %6) #16
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %7) #16
  call fastcc void @converter_for_type(ptr dead_on_unwind nonnull writable sret(%struct.cset_converter) align 8 %7, ptr noundef %0, i32 noundef %4) #17
  %8 = load i32, ptr %1, align 8, !tbaa !71
  %9 = tail call i32 @llvm.umax.i32(i32 %8, i32 256)
  %10 = zext i32 %9 to i64
  %11 = getelementptr inbounds %struct._cpp_strbuf, ptr %6, i64 0, i32 1
  store i64 %10, ptr %11, align 8, !tbaa !46
  %12 = tail call ptr @xmalloc(i64 noundef %10) #19
  store ptr %12, ptr %6, align 8, !tbaa !48
  %13 = getelementptr inbounds %struct._cpp_strbuf, ptr %6, i64 0, i32 2
  store i64 0, ptr %13, align 8, !tbaa !49
  %14 = icmp eq i64 %2, 0
  br i1 %14, label %100, label %15

15:                                               ; preds = %5
  %16 = getelementptr inbounds %struct.cset_converter, ptr %7, i64 0, i32 1
  br label %17

17:                                               ; preds = %15, %97
  %18 = phi i64 [ 0, %15 ], [ %98, %97 ]
  %19 = getelementptr inbounds %struct.cpp_string, ptr %1, i64 %18
  %20 = getelementptr inbounds %struct.cpp_string, ptr %1, i64 %18, i32 1
  %21 = load ptr, ptr %20, align 8, !tbaa !73
  %22 = load i8, ptr %21, align 1, !tbaa !45
  switch i8 %22, label %34 [
    i8 117, label %23
    i8 76, label %29
    i8 85, label %29
  ]

23:                                               ; preds = %17
  %24 = getelementptr inbounds i8, ptr %21, i64 1
  %25 = load i8, ptr %24, align 1, !tbaa !45
  %26 = icmp eq i8 %25, 56
  %27 = getelementptr inbounds i8, ptr %21, i64 2
  %28 = select i1 %26, ptr %27, ptr %24
  br label %31

29:                                               ; preds = %17, %17
  %30 = getelementptr inbounds i8, ptr %21, i64 1
  br label %31

31:                                               ; preds = %29, %23
  %32 = phi ptr [ %28, %23 ], [ %30, %29 ]
  %33 = load i8, ptr %32, align 1, !tbaa !45
  br label %34

34:                                               ; preds = %31, %17
  %35 = phi i8 [ %33, %31 ], [ %22, %17 ]
  %36 = phi ptr [ %32, %31 ], [ %21, %17 ]
  %37 = icmp eq i8 %35, 82
  br i1 %37, label %38, label %64

38:                                               ; preds = %34
  %39 = getelementptr inbounds i8, ptr %36, i64 2
  br label %40

40:                                               ; preds = %40, %38
  %41 = phi ptr [ %39, %38 ], [ %44, %40 ]
  %42 = load i8, ptr %41, align 1, !tbaa !45
  %43 = icmp eq i8 %42, 40
  %44 = getelementptr inbounds i8, ptr %41, i64 1
  br i1 %43, label %45, label %40, !llvm.loop !74

45:                                               ; preds = %40
  %46 = load i32, ptr %19, align 8, !tbaa !71
  %47 = zext i32 %46 to i64
  %48 = getelementptr inbounds i8, ptr %21, i64 %47
  %49 = ptrtoint ptr %44 to i64
  %50 = ptrtoint ptr %39 to i64
  %51 = sub i64 %49, %50
  %52 = getelementptr inbounds i8, ptr %44, i64 %51
  %53 = getelementptr inbounds i8, ptr %52, i64 1
  %54 = icmp ult ptr %48, %53
  %55 = xor i64 %51, -1
  %56 = select i1 %54, i64 0, i64 %55
  %57 = getelementptr inbounds i8, ptr %48, i64 %56
  %58 = load ptr, ptr %7, align 8, !tbaa !38
  %59 = load ptr, ptr %16, align 8, !tbaa !39
  %60 = ptrtoint ptr %57 to i64
  %61 = sub i64 %60, %49
  %62 = call zeroext i8 %58(ptr noundef %59, ptr noundef nonnull %44, i64 noundef %61, ptr noundef nonnull %6) #19
  %63 = icmp eq i8 %62, 0
  br i1 %63, label %107, label %97

64:                                               ; preds = %34
  %65 = getelementptr inbounds i8, ptr %36, i64 1
  %66 = load i32, ptr %19, align 8, !tbaa !71
  %67 = zext i32 %66 to i64
  %68 = getelementptr inbounds i8, ptr %21, i64 %67
  %69 = getelementptr inbounds i8, ptr %68, i64 -1
  br label %70

70:                                               ; preds = %94, %64
  %71 = phi ptr [ %65, %64 ], [ %96, %94 ]
  %72 = icmp ult ptr %71, %69
  br i1 %72, label %73, label %91

73:                                               ; preds = %70, %77
  %74 = phi ptr [ %78, %77 ], [ %71, %70 ]
  %75 = load i8, ptr %74, align 1, !tbaa !45
  %76 = icmp eq i8 %75, 92
  br i1 %76, label %80, label %77

77:                                               ; preds = %73
  %78 = getelementptr inbounds i8, ptr %74, i64 1
  %79 = icmp ult ptr %78, %69
  br i1 %79, label %73, label %80, !llvm.loop !75

80:                                               ; preds = %73, %77
  %81 = phi ptr [ %74, %73 ], [ %78, %77 ]
  %82 = icmp ugt ptr %81, %71
  br i1 %82, label %83, label %91

83:                                               ; preds = %80
  %84 = load ptr, ptr %7, align 8, !tbaa !38
  %85 = load ptr, ptr %16, align 8, !tbaa !39
  %86 = ptrtoint ptr %81 to i64
  %87 = ptrtoint ptr %71 to i64
  %88 = sub i64 %86, %87
  %89 = call zeroext i8 %84(ptr noundef %85, ptr noundef %71, i64 noundef %88, ptr noundef nonnull %6) #19
  %90 = icmp eq i8 %89, 0
  br i1 %90, label %107, label %91

91:                                               ; preds = %70, %83, %80
  %92 = phi ptr [ %81, %83 ], [ %81, %80 ], [ %71, %70 ]
  %93 = icmp eq ptr %92, %69
  br i1 %93, label %97, label %94

94:                                               ; preds = %91
  %95 = getelementptr inbounds i8, ptr %92, i64 1
  %96 = call fastcc ptr @convert_escape(ptr noundef %0, ptr noundef nonnull %95, ptr noundef nonnull %69, ptr noundef nonnull %6, ptr noundef nonnull byval(%struct.cset_converter) align 8 %7) #17
  br label %70

97:                                               ; preds = %91, %45
  %98 = add nuw i64 %18, 1
  %99 = icmp eq i64 %98, %2
  br i1 %99, label %100, label %17, !llvm.loop !76

100:                                              ; preds = %97, %5
  call fastcc void @emit_numeric_escape(ptr noundef %0, i32 noundef 0, ptr noundef nonnull %6, ptr noundef nonnull byval(%struct.cset_converter) align 8 %7) #17
  %101 = load ptr, ptr %6, align 8, !tbaa !48
  %102 = load i64, ptr %13, align 8, !tbaa !49
  %103 = call ptr @xrealloc(ptr noundef %101, i64 noundef %102) #19
  %104 = getelementptr inbounds %struct.cpp_string, ptr %3, i64 0, i32 1
  store ptr %103, ptr %104, align 8, !tbaa !73
  %105 = load i64, ptr %13, align 8, !tbaa !49
  %106 = trunc i64 %105 to i32
  store i32 %106, ptr %3, align 8, !tbaa !71
  br label %110

107:                                              ; preds = %45, %83
  %108 = call zeroext i8 @cpp_errno(ptr noundef %0, i32 noundef 3, ptr noundef nonnull @.str.6) #19
  %109 = load ptr, ptr %6, align 8, !tbaa !48
  call void @free(ptr noundef %109) #19
  br label %110

110:                                              ; preds = %107, %100
  %111 = phi i8 [ 0, %107 ], [ 1, %100 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %7) #16
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %6) #16
  ret i8 %111
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @converter_for_type(ptr dead_on_unwind noalias nocapture writable writeonly sret(%struct.cset_converter) align 8 %0, ptr nocapture noundef readonly %1, i32 noundef %2) unnamed_addr #6 {
  switch i32 %2, label %4 [
    i32 65, label %6
    i32 58, label %8
    i32 63, label %8
    i32 59, label %10
    i32 64, label %10
    i32 57, label %12
    i32 62, label %12
  ]

4:                                                ; preds = %3
  %5 = getelementptr inbounds %struct.cpp_reader, ptr %1, i64 0, i32 36
  br label %14

6:                                                ; preds = %3
  %7 = getelementptr inbounds %struct.cpp_reader, ptr %1, i64 0, i32 37
  br label %14

8:                                                ; preds = %3, %3
  %9 = getelementptr inbounds %struct.cpp_reader, ptr %1, i64 0, i32 38
  br label %14

10:                                               ; preds = %3, %3
  %11 = getelementptr inbounds %struct.cpp_reader, ptr %1, i64 0, i32 39
  br label %14

12:                                               ; preds = %3, %3
  %13 = getelementptr inbounds %struct.cpp_reader, ptr %1, i64 0, i32 40
  br label %14

14:                                               ; preds = %12, %10, %8, %6, %4
  %15 = phi ptr [ %13, %12 ], [ %11, %10 ], [ %9, %8 ], [ %7, %6 ], [ %5, %4 ]
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %15, i64 24, i1 false)
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @convert_escape(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr nocapture noundef readonly byval(%struct.cset_converter) align 8 %4) unnamed_addr #0 {
  %6 = alloca i8, align 1
  %7 = alloca [32 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %6) #16
  %8 = load i8, ptr %1, align 1, !tbaa !45
  store i8 %8, ptr %6, align 1, !tbaa !45
  switch i8 %8, label %40 [
    i8 117, label %9
    i8 85, label %9
    i8 120, label %11
    i8 48, label %13
    i8 49, label %13
    i8 50, label %13
    i8 51, label %13
    i8 52, label %13
    i8 53, label %13
    i8 54, label %13
    i8 55, label %13
    i8 92, label %53
    i8 39, label %53
    i8 34, label %53
    i8 63, label %53
    i8 40, label %15
    i8 123, label %15
    i8 91, label %15
    i8 37, label %15
    i8 98, label %19
    i8 102, label %20
    i8 110, label %21
    i8 114, label %22
    i8 116, label %23
    i8 118, label %24
    i8 97, label %25
    i8 101, label %32
    i8 69, label %32
  ]

9:                                                ; preds = %5, %5
  %10 = tail call fastcc ptr @convert_ucn(ptr noundef %0, ptr noundef nonnull %1, ptr noundef %2, ptr noundef %3, ptr noundef nonnull byval(%struct.cset_converter) align 8 %4) #17
  br label %63

11:                                               ; preds = %5
  %12 = tail call fastcc ptr @convert_hex(ptr noundef %0, ptr noundef nonnull %1, ptr noundef %2, ptr noundef %3, ptr noundef nonnull byval(%struct.cset_converter) align 8 %4) #17
  br label %63

13:                                               ; preds = %5, %5, %5, %5, %5, %5, %5, %5
  %14 = tail call fastcc ptr @convert_oct(ptr noundef %0, ptr noundef nonnull %1, ptr noundef %2, ptr noundef %3, ptr noundef nonnull byval(%struct.cset_converter) align 8 %4) #17
  br label %63

15:                                               ; preds = %5, %5, %5, %5
  %16 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 53, i32 31
  %17 = load i8, ptr %16, align 1, !tbaa !68
  %18 = icmp eq i8 %17, 0
  br i1 %18, label %53, label %40

19:                                               ; preds = %5
  store i8 8, ptr %6, align 1, !tbaa !45
  br label %53

20:                                               ; preds = %5
  store i8 12, ptr %6, align 1, !tbaa !45
  br label %53

21:                                               ; preds = %5
  store i8 10, ptr %6, align 1, !tbaa !45
  br label %53

22:                                               ; preds = %5
  store i8 13, ptr %6, align 1, !tbaa !45
  br label %53

23:                                               ; preds = %5
  store i8 9, ptr %6, align 1, !tbaa !45
  br label %53

24:                                               ; preds = %5
  store i8 11, ptr %6, align 1, !tbaa !45
  br label %53

25:                                               ; preds = %5
  %26 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 53, i32 17
  %27 = load i8, ptr %26, align 1, !tbaa !54
  %28 = icmp eq i8 %27, 0
  br i1 %28, label %31, label %29

29:                                               ; preds = %25
  %30 = tail call zeroext i8 (ptr, i32, ptr, ...) @cpp_error(ptr noundef nonnull %0, i32 noundef 0, ptr noundef nonnull @.str.31) #19
  br label %31

31:                                               ; preds = %29, %25
  store i8 7, ptr %6, align 1, !tbaa !45
  br label %53

32:                                               ; preds = %5, %5
  %33 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 53, i32 31
  %34 = load i8, ptr %33, align 1, !tbaa !68
  %35 = icmp eq i8 %34, 0
  br i1 %35, label %39, label %36

36:                                               ; preds = %32
  %37 = zext nneg i8 %8 to i32
  %38 = tail call zeroext i8 (ptr, i32, ptr, ...) @cpp_error(ptr noundef nonnull %0, i32 noundef 2, ptr noundef nonnull @.str.32, i32 noundef %37) #19
  br label %39

39:                                               ; preds = %36, %32
  store i8 27, ptr %6, align 1, !tbaa !45
  br label %53

40:                                               ; preds = %5, %15
  %41 = zext i8 %8 to i64
  %42 = getelementptr inbounds [256 x i16], ptr @_sch_istable, i64 0, i64 %41
  %43 = load i16, ptr %42, align 2, !tbaa !55
  %44 = and i16 %43, 172
  %45 = icmp eq i16 %44, 0
  br i1 %45, label %49, label %46

46:                                               ; preds = %40
  %47 = zext i8 %8 to i32
  %48 = tail call zeroext i8 (ptr, i32, ptr, ...) @cpp_error(ptr noundef %0, i32 noundef 2, ptr noundef nonnull @.str.33, i32 noundef %47) #19
  br label %53

49:                                               ; preds = %40
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %7) #16
  %50 = zext i8 %8 to i32
  %51 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %7, ptr noundef nonnull dereferenceable(1) @.str.34, i32 noundef %50) #19
  %52 = call zeroext i8 (ptr, i32, ptr, ...) @cpp_error(ptr noundef %0, i32 noundef 2, ptr noundef nonnull @.str.35, ptr noundef nonnull %7) #19
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %7) #16
  br label %53

53:                                               ; preds = %46, %49, %15, %5, %5, %5, %5, %39, %31, %24, %23, %22, %21, %20, %19
  %54 = load ptr, ptr %4, align 8, !tbaa !38
  %55 = getelementptr inbounds %struct.cset_converter, ptr %4, i64 0, i32 1
  %56 = load ptr, ptr %55, align 8, !tbaa !39
  %57 = call zeroext i8 %54(ptr noundef %56, ptr noundef nonnull %6, i64 noundef 1, ptr noundef %3) #19
  %58 = icmp eq i8 %57, 0
  br i1 %58, label %59, label %61

59:                                               ; preds = %53
  %60 = call zeroext i8 @cpp_errno(ptr noundef %0, i32 noundef 3, ptr noundef nonnull @.str.36) #19
  br label %61

61:                                               ; preds = %59, %53
  %62 = getelementptr inbounds i8, ptr %1, i64 1
  br label %63

63:                                               ; preds = %61, %13, %11, %9
  %64 = phi ptr [ %62, %61 ], [ %14, %13 ], [ %12, %11 ], [ %10, %9 ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %6) #16
  ret ptr %64
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @emit_numeric_escape(ptr nocapture noundef readonly %0, i32 noundef %1, ptr nocapture noundef %2, ptr nocapture noundef readonly byval(%struct.cset_converter) align 8 %3) unnamed_addr #0 {
  %5 = getelementptr inbounds %struct.cset_converter, ptr %3, i64 0, i32 2
  %6 = load i32, ptr %5, align 8, !tbaa !40
  %7 = sext i32 %6 to i64
  %8 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 53, i32 45
  %9 = load i64, ptr %8, align 8, !tbaa !32
  %10 = icmp eq i64 %9, %7
  br i1 %10, label %49, label %11

11:                                               ; preds = %4
  %12 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 53, i32 50
  %13 = load i8, ptr %12, align 2, !tbaa !27
  %14 = tail call fastcc i64 @width_to_mask(i64 noundef %9) #17
  %15 = udiv i64 %7, %9
  %16 = getelementptr inbounds %struct._cpp_strbuf, ptr %2, i64 0, i32 2
  %17 = load i64, ptr %16, align 8, !tbaa !49
  %18 = add i64 %17, %15
  %19 = getelementptr inbounds %struct._cpp_strbuf, ptr %2, i64 0, i32 1
  %20 = load i64, ptr %19, align 8, !tbaa !46
  %21 = icmp ugt i64 %18, %20
  br i1 %21, label %22, label %26

22:                                               ; preds = %11
  %23 = add i64 %20, 256
  store i64 %23, ptr %19, align 8, !tbaa !46
  %24 = load ptr, ptr %2, align 8, !tbaa !48
  %25 = tail call ptr @xrealloc(ptr noundef %24, i64 noundef %23) #19
  store ptr %25, ptr %2, align 8, !tbaa !48
  br label %26

26:                                               ; preds = %22, %11
  %27 = icmp ugt i64 %9, %7
  br i1 %27, label %46, label %28

28:                                               ; preds = %26
  %29 = trunc i64 %14 to i32
  %30 = trunc i64 %9 to i32
  %31 = icmp eq i8 %13, 0
  br label %32

32:                                               ; preds = %28, %32
  %33 = phi i32 [ %1, %28 ], [ %36, %32 ]
  %34 = phi i64 [ 0, %28 ], [ %44, %32 ]
  %35 = and i32 %33, %29
  %36 = lshr i32 %33, %30
  %37 = trunc i32 %35 to i8
  %38 = load ptr, ptr %2, align 8, !tbaa !48
  %39 = xor i64 %34, -1
  %40 = add i64 %15, %39
  %41 = select i1 %31, i64 %34, i64 %40
  %42 = getelementptr i8, ptr %38, i64 %17
  %43 = getelementptr i8, ptr %42, i64 %41
  store i8 %37, ptr %43, align 1, !tbaa !45
  %44 = add nuw i64 %34, 1
  %45 = icmp ult i64 %44, %15
  br i1 %45, label %32, label %46, !llvm.loop !77

46:                                               ; preds = %32, %26
  %47 = load i64, ptr %16, align 8, !tbaa !49
  %48 = add i64 %47, %15
  store i64 %48, ptr %16, align 8, !tbaa !49
  br label %68

49:                                               ; preds = %4
  %50 = getelementptr inbounds %struct._cpp_strbuf, ptr %2, i64 0, i32 2
  %51 = load i64, ptr %50, align 8, !tbaa !49
  %52 = add i64 %51, 1
  %53 = getelementptr inbounds %struct._cpp_strbuf, ptr %2, i64 0, i32 1
  %54 = load i64, ptr %53, align 8, !tbaa !46
  %55 = icmp ugt i64 %52, %54
  %56 = load ptr, ptr %2, align 8, !tbaa !48
  br i1 %55, label %57, label %62

57:                                               ; preds = %49
  %58 = add i64 %54, 256
  store i64 %58, ptr %53, align 8, !tbaa !46
  %59 = tail call ptr @xrealloc(ptr noundef %56, i64 noundef %58) #19
  store ptr %59, ptr %2, align 8, !tbaa !48
  %60 = load i64, ptr %50, align 8, !tbaa !49
  %61 = add i64 %60, 1
  br label %62

62:                                               ; preds = %57, %49
  %63 = phi i64 [ %61, %57 ], [ %52, %49 ]
  %64 = phi i64 [ %60, %57 ], [ %51, %49 ]
  %65 = phi ptr [ %59, %57 ], [ %56, %49 ]
  %66 = trunc i32 %1 to i8
  store i64 %63, ptr %50, align 8, !tbaa !49
  %67 = getelementptr inbounds i8, ptr %65, i64 %64
  store i8 %66, ptr %67, align 1, !tbaa !45
  br label %68

68:                                               ; preds = %62, %46
  ret void
}

; Function Attrs: optsize
declare ptr @xrealloc(ptr noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef zeroext i8 @cpp_interpret_string_notranslate(ptr noundef %0, ptr nocapture noundef readonly %1, i64 noundef %2, ptr nocapture noundef writeonly %3, i32 noundef %4) local_unnamed_addr #0 {
  %6 = alloca %struct.cset_converter, align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %6)
  %7 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 36
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %6, ptr noundef nonnull align 8 dereferenceable(24) %7, i64 24, i1 false), !tbaa.struct !29
  store ptr @convert_no_conversion, ptr %7, align 8, !tbaa !50
  %8 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 36, i32 1
  store ptr inttoptr (i64 -1 to ptr), ptr %8, align 8, !tbaa !51
  %9 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 53, i32 45
  %10 = load i64, ptr %9, align 8, !tbaa !32
  %11 = trunc i64 %10 to i32
  %12 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 36, i32 2
  store i32 %11, ptr %12, align 8, !tbaa !33
  %13 = tail call zeroext i8 @cpp_interpret_string(ptr noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef %3, i32 noundef 61) #17
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %7, ptr noundef nonnull align 8 dereferenceable(24) %6, i64 24, i1 false), !tbaa.struct !29
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %6)
  ret i8 %13
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef zeroext i8 @convert_no_conversion(ptr nocapture readnone %0, ptr nocapture noundef readonly %1, i64 noundef %2, ptr nocapture noundef %3) #0 {
  %5 = getelementptr inbounds %struct._cpp_strbuf, ptr %3, i64 0, i32 2
  %6 = load i64, ptr %5, align 8, !tbaa !49
  %7 = add i64 %6, %2
  %8 = getelementptr inbounds %struct._cpp_strbuf, ptr %3, i64 0, i32 1
  %9 = load i64, ptr %8, align 8, !tbaa !46
  %10 = icmp ugt i64 %7, %9
  %11 = load ptr, ptr %3, align 8, !tbaa !48
  br i1 %10, label %12, label %15

12:                                               ; preds = %4
  store i64 %7, ptr %8, align 8, !tbaa !46
  %13 = tail call ptr @xrealloc(ptr noundef %11, i64 noundef %7) #19
  store ptr %13, ptr %3, align 8, !tbaa !48
  %14 = load i64, ptr %5, align 8, !tbaa !49
  br label %15

15:                                               ; preds = %12, %4
  %16 = phi i64 [ %14, %12 ], [ %6, %4 ]
  %17 = phi ptr [ %13, %12 ], [ %11, %4 ]
  %18 = getelementptr inbounds i8, ptr %17, i64 %16
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %18, ptr align 1 %1, i64 %2, i1 false)
  %19 = load i64, ptr %5, align 8, !tbaa !49
  %20 = add i64 %19, %2
  store i64 %20, ptr %5, align 8, !tbaa !49
  ret i8 1
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @cpp_interpret_charconst(ptr noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef writeonly %2, ptr nocapture noundef writeonly %3) local_unnamed_addr #0 {
  %5 = alloca %struct.cpp_string, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %5, i8 0, i64 16, i1 false)
  %6 = getelementptr inbounds %struct.cpp_token, ptr %1, i64 0, i32 1
  %7 = load i8, ptr %6, align 4
  %8 = icmp eq i8 %7, 56
  %9 = getelementptr inbounds %struct.cpp_token, ptr %1, i64 0, i32 3
  %10 = load i32, ptr %9, align 8, !tbaa !45
  %11 = zext i32 %10 to i64
  %12 = select i1 %8, i64 2, i64 3
  %13 = icmp eq i64 %12, %11
  br i1 %13, label %14, label %16

14:                                               ; preds = %4
  %15 = tail call zeroext i8 (ptr, i32, ptr, ...) @cpp_error(ptr noundef %0, i32 noundef 3, ptr noundef nonnull @.str.16) #19
  br label %40

16:                                               ; preds = %4
  %17 = zext i8 %7 to i32
  %18 = call zeroext i8 @cpp_interpret_string(ptr noundef %0, ptr noundef nonnull %9, i64 noundef 1, ptr noundef nonnull %5, i32 noundef %17) #17
  %19 = icmp eq i8 %18, 0
  br i1 %19, label %40, label %20

20:                                               ; preds = %16
  br i1 %8, label %28, label %21

21:                                               ; preds = %20
  %22 = load i8, ptr %6, align 4
  %23 = zext i8 %22 to i32
  %24 = load i32, ptr %5, align 8
  %25 = getelementptr inbounds { i32, ptr }, ptr %5, i64 0, i32 1
  %26 = load ptr, ptr %25, align 8
  %27 = tail call fastcc i32 @wide_str_to_charconst(ptr noundef %0, i32 %24, ptr %26, ptr noundef %2, ptr noundef %3, i32 noundef %23) #17
  br label %33

28:                                               ; preds = %20
  %29 = load i32, ptr %5, align 8
  %30 = getelementptr inbounds { i32, ptr }, ptr %5, i64 0, i32 1
  %31 = load ptr, ptr %30, align 8
  %32 = tail call fastcc i32 @narrow_str_to_charconst(ptr noundef %0, i32 %29, ptr %31, ptr noundef %2, ptr noundef %3) #17
  br label %33

33:                                               ; preds = %28, %21
  %34 = phi ptr [ %26, %21 ], [ %31, %28 ]
  %35 = phi i32 [ %27, %21 ], [ %32, %28 ]
  %36 = getelementptr inbounds %struct.cpp_token, ptr %1, i64 0, i32 3, i32 0, i32 1
  %37 = load ptr, ptr %36, align 8, !tbaa !45
  %38 = icmp eq ptr %34, %37
  br i1 %38, label %40, label %39

39:                                               ; preds = %33
  tail call void @free(ptr noundef %34) #19
  br label %40

40:                                               ; preds = %33, %39, %16, %14
  %41 = phi i32 [ 0, %14 ], [ 0, %16 ], [ %35, %39 ], [ %35, %33 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #16
  ret i32 %41
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #7

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @wide_str_to_charconst(ptr noundef %0, i32 %1, ptr nocapture readonly %2, ptr nocapture noundef writeonly %3, ptr nocapture noundef writeonly %4, i32 noundef %5) unnamed_addr #0 {
  %7 = alloca %struct.cset_converter, align 8
  %8 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 53, i32 50
  %9 = load i8, ptr %8, align 2, !tbaa !27
  call fastcc void @converter_for_type(ptr dead_on_unwind nonnull writable sret(%struct.cset_converter) align 8 %7, ptr noundef %0, i32 noundef %5) #17
  %10 = getelementptr inbounds %struct.cset_converter, ptr %7, i64 0, i32 2
  %11 = load i32, ptr %10, align 8, !tbaa !40
  %12 = sext i32 %11 to i64
  %13 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 53, i32 45
  %14 = load i64, ptr %13, align 8, !tbaa !32
  %15 = tail call fastcc i64 @width_to_mask(i64 noundef %12) #17
  %16 = tail call fastcc i64 @width_to_mask(i64 noundef %14) #17
  %17 = udiv i64 %12, %14
  %18 = zext i32 %1 to i64
  %19 = shl i64 %17, 1
  %20 = icmp ugt i64 %14, %12
  br i1 %20, label %42, label %21

21:                                               ; preds = %6
  %22 = sub i64 %18, %19
  %23 = icmp eq i8 %9, 0
  %24 = getelementptr i8, ptr %2, i64 %22
  %25 = getelementptr i8, ptr %24, i64 %17
  %26 = trunc i64 %14 to i32
  br label %27

27:                                               ; preds = %21, %27
  %28 = phi i64 [ 0, %21 ], [ %40, %27 ]
  %29 = phi i32 [ 0, %21 ], [ %39, %27 ]
  %30 = getelementptr i8, ptr %24, i64 %28
  %31 = xor i64 %28, -1
  %32 = getelementptr i8, ptr %25, i64 %31
  %33 = select i1 %23, ptr %32, ptr %30
  %34 = load i8, ptr %33, align 1, !tbaa !45
  %35 = shl i32 %29, %26
  %36 = zext i8 %34 to i64
  %37 = and i64 %16, %36
  %38 = trunc i64 %37 to i32
  %39 = or i32 %35, %38
  %40 = add nuw i64 %28, 1
  %41 = icmp ult i64 %40, %17
  br i1 %41, label %27, label %42, !llvm.loop !78

42:                                               ; preds = %27, %6
  %43 = phi i32 [ 0, %6 ], [ %39, %27 ]
  %44 = icmp ult i64 %19, %18
  br i1 %44, label %45, label %47

45:                                               ; preds = %42
  %46 = tail call zeroext i8 (ptr, i32, ptr, ...) @cpp_error(ptr noundef %0, i32 noundef 0, ptr noundef nonnull @.str.42) #19
  br label %47

47:                                               ; preds = %45, %42
  %48 = icmp ult i32 %11, 32
  %49 = and i32 %5, -2
  br i1 %48, label %50, label %68

50:                                               ; preds = %47
  %51 = icmp eq i32 %49, 58
  br i1 %51, label %61, label %52

52:                                               ; preds = %50
  %53 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 53, i32 49
  %54 = load i8, ptr %53, align 1, !tbaa !79
  %55 = icmp eq i8 %54, 0
  br i1 %55, label %56, label %61

56:                                               ; preds = %52
  %57 = add nsw i32 %11, -1
  %58 = shl nuw nsw i32 1, %57
  %59 = and i32 %43, %58
  %60 = icmp eq i32 %59, 0
  br i1 %60, label %61, label %64

61:                                               ; preds = %56, %52, %50
  %62 = trunc i64 %15 to i32
  %63 = and i32 %43, %62
  br label %68

64:                                               ; preds = %56
  %65 = trunc i64 %15 to i32
  %66 = xor i32 %65, -1
  %67 = or i32 %43, %66
  br label %68

68:                                               ; preds = %47, %61, %64
  %69 = phi i32 [ %63, %61 ], [ %67, %64 ], [ %43, %47 ]
  %70 = icmp eq i32 %49, 58
  br i1 %70, label %76, label %71

71:                                               ; preds = %68
  %72 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 53, i32 49
  %73 = load i8, ptr %72, align 1, !tbaa !79
  %74 = icmp ne i8 %73, 0
  %75 = zext i1 %74 to i32
  br label %76

76:                                               ; preds = %71, %68
  %77 = phi i32 [ 1, %68 ], [ %75, %71 ]
  store i32 %77, ptr %4, align 4, !tbaa !31
  store i32 1, ptr %3, align 4, !tbaa !31
  ret i32 %69
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @narrow_str_to_charconst(ptr noundef %0, i32 %1, ptr nocapture readonly %2, ptr nocapture noundef writeonly %3, ptr nocapture noundef writeonly %4) unnamed_addr #0 {
  %6 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 53, i32 45
  %7 = load i64, ptr %6, align 8, !tbaa !32
  %8 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 53, i32 46
  %9 = load i64, ptr %8, align 8, !tbaa !80
  %10 = udiv i64 %9, %7
  %11 = tail call fastcc i64 @width_to_mask(i64 noundef %7) #17
  %12 = add i32 %1, -1
  %13 = zext i32 %12 to i64
  %14 = icmp eq i32 %12, 0
  br i1 %14, label %44, label %15

15:                                               ; preds = %5
  %16 = icmp ult i64 %7, 32
  %17 = trunc i64 %7 to i32
  br label %18

18:                                               ; preds = %15, %18
  %19 = phi i32 [ 0, %15 ], [ %28, %18 ]
  %20 = phi i64 [ 0, %15 ], [ %29, %18 ]
  %21 = getelementptr inbounds i8, ptr %2, i64 %20
  %22 = load i8, ptr %21, align 1, !tbaa !45
  %23 = zext i8 %22 to i64
  %24 = and i64 %11, %23
  %25 = trunc i64 %24 to i32
  %26 = shl i32 %19, %17
  %27 = select i1 %16, i32 %26, i32 0
  %28 = or i32 %27, %25
  %29 = add nuw nsw i64 %20, 1
  %30 = icmp eq i64 %29, %13
  br i1 %30, label %31, label %18, !llvm.loop !81

31:                                               ; preds = %18
  %32 = icmp ult i64 %10, %13
  br i1 %32, label %41, label %33

33:                                               ; preds = %31
  %34 = icmp eq i32 %12, 1
  br i1 %34, label %44, label %35

35:                                               ; preds = %33
  %36 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 53, i32 16
  %37 = load i8, ptr %36, align 2, !tbaa !82
  %38 = icmp eq i8 %37, 0
  br i1 %38, label %51, label %39

39:                                               ; preds = %35
  %40 = tail call zeroext i8 (ptr, i32, ptr, ...) @cpp_error(ptr noundef nonnull %0, i32 noundef 0, ptr noundef nonnull @.str.43) #19
  br label %51

41:                                               ; preds = %31
  %42 = tail call zeroext i8 (ptr, i32, ptr, ...) @cpp_error(ptr noundef %0, i32 noundef 0, ptr noundef nonnull @.str.42) #19
  %43 = icmp ugt i64 %10, 1
  br i1 %43, label %51, label %44

44:                                               ; preds = %33, %41, %5
  %45 = phi i32 [ %28, %41 ], [ %28, %33 ], [ 0, %5 ]
  %46 = phi i64 [ %10, %41 ], [ 1, %33 ], [ 0, %5 ]
  %47 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 53, i32 48
  %48 = load i8, ptr %47, align 8, !tbaa !83
  %49 = zext i8 %48 to i32
  %50 = icmp ult i64 %7, 32
  br i1 %50, label %59, label %82

51:                                               ; preds = %39, %35, %41
  %52 = phi i64 [ %13, %39 ], [ %13, %35 ], [ %10, %41 ]
  %53 = load i64, ptr %8, align 8, !tbaa !80
  %54 = icmp ult i64 %53, 32
  br i1 %54, label %55, label %82

55:                                               ; preds = %51
  %56 = trunc i64 %53 to i32
  %57 = shl nsw i32 -1, %56
  %58 = xor i32 %57, -1
  br label %64

59:                                               ; preds = %44
  %60 = trunc i64 %7 to i32
  %61 = shl nsw i32 -1, %60
  %62 = xor i32 %61, -1
  %63 = icmp eq i8 %48, 0
  br i1 %63, label %64, label %74

64:                                               ; preds = %55, %59
  %65 = phi i32 [ %58, %55 ], [ %62, %59 ]
  %66 = phi i32 [ %57, %55 ], [ %61, %59 ]
  %67 = phi i32 [ %56, %55 ], [ %60, %59 ]
  %68 = phi i32 [ %28, %55 ], [ %45, %59 ]
  %69 = phi i64 [ %52, %55 ], [ %46, %59 ]
  %70 = add nsw i32 %67, -1
  %71 = shl nuw nsw i32 1, %70
  %72 = and i32 %71, %68
  %73 = icmp eq i32 %72, 0
  br i1 %73, label %74, label %80

74:                                               ; preds = %64, %59
  %75 = phi i32 [ %65, %64 ], [ %62, %59 ]
  %76 = phi i32 [ %68, %64 ], [ %45, %59 ]
  %77 = phi i32 [ 0, %64 ], [ %49, %59 ]
  %78 = phi i64 [ %69, %64 ], [ %46, %59 ]
  %79 = and i32 %76, %75
  br label %82

80:                                               ; preds = %64
  %81 = or i32 %66, %68
  br label %82

82:                                               ; preds = %51, %74, %80, %44
  %83 = phi i64 [ %78, %74 ], [ %69, %80 ], [ %46, %44 ], [ %52, %51 ]
  %84 = phi i32 [ %77, %74 ], [ 0, %80 ], [ %49, %44 ], [ 0, %51 ]
  %85 = phi i32 [ %79, %74 ], [ %81, %80 ], [ %45, %44 ], [ %28, %51 ]
  %86 = trunc i64 %83 to i32
  store i32 %86, ptr %3, align 4, !tbaa !31
  store i32 %84, ptr %4, align 4, !tbaa !31
  ret i32 %85
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @_cpp_interpret_identifier(ptr noundef %0, ptr nocapture noundef readonly %1, i64 noundef %2) local_unnamed_addr #0 {
  %4 = alloca ptr, align 8
  %5 = alloca i64, align 8
  %6 = add i64 %2, 1
  %7 = alloca i8, i64 %6, align 16
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #16
  store ptr %7, ptr %4, align 8, !tbaa !30
  %8 = icmp eq i64 %2, 0
  %9 = ptrtoint ptr %7 to i64
  br i1 %8, label %76, label %10

10:                                               ; preds = %3
  %11 = add i64 %9, %2
  br label %12

12:                                               ; preds = %10, %72
  %13 = phi i64 [ 0, %10 ], [ %74, %72 ]
  %14 = getelementptr inbounds i8, ptr %1, i64 %13
  %15 = load i8, ptr %14, align 1, !tbaa !45
  %16 = icmp eq i8 %15, 92
  br i1 %16, label %20, label %17

17:                                               ; preds = %12
  %18 = load ptr, ptr %4, align 8, !tbaa !30
  %19 = getelementptr inbounds i8, ptr %18, i64 1
  store ptr %19, ptr %4, align 8, !tbaa !30
  store i8 %15, ptr %18, align 1, !tbaa !45
  br label %72

20:                                               ; preds = %12
  %21 = getelementptr i8, ptr %14, i64 1
  %22 = load i8, ptr %21, align 1, !tbaa !45
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #16
  %23 = load ptr, ptr %4, align 8, !tbaa !30
  %24 = ptrtoint ptr %23 to i64
  %25 = sub i64 %11, %24
  store i64 %25, ptr %5, align 8, !tbaa !84
  %26 = add i64 %13, 2
  %27 = icmp ult i64 %26, %2
  br i1 %27, label %30, label %28

28:                                               ; preds = %20
  %29 = add i64 %13, 1
  br label %62

30:                                               ; preds = %20
  %31 = icmp eq i8 %22, 117
  %32 = select i1 %31, i32 4, i32 8
  br label %33

33:                                               ; preds = %30, %44
  %34 = phi i64 [ %50, %44 ], [ %26, %30 ]
  %35 = phi i32 [ %49, %44 ], [ 0, %30 ]
  %36 = phi i32 [ %51, %44 ], [ %32, %30 ]
  %37 = getelementptr inbounds i8, ptr %1, i64 %34
  %38 = load i8, ptr %37, align 1, !tbaa !45
  %39 = zext i8 %38 to i64
  %40 = getelementptr inbounds [256 x i16], ptr @_sch_istable, i64 0, i64 %39
  %41 = load i16, ptr %40, align 2, !tbaa !55
  %42 = and i16 %41, 256
  %43 = icmp eq i16 %42, 0
  br i1 %43, label %55, label %44

44:                                               ; preds = %33
  %45 = shl i32 %35, 4
  %46 = getelementptr inbounds [256 x i8], ptr @_hex_value, i64 0, i64 %39
  %47 = load i8, ptr %46, align 1, !tbaa !45
  %48 = zext i8 %47 to i32
  %49 = add i32 %45, %48
  %50 = add nuw i64 %34, 1
  %51 = add i32 %36, -1
  %52 = icmp ne i32 %51, 0
  %53 = icmp ult i64 %50, %2
  %54 = select i1 %52, i1 %53, i1 false
  br i1 %54, label %33, label %55, !llvm.loop !85

55:                                               ; preds = %33, %44
  %56 = phi i32 [ %35, %33 ], [ %49, %44 ]
  %57 = phi i64 [ %34, %33 ], [ %50, %44 ]
  %58 = add i64 %57, -1
  %59 = icmp eq i32 %56, 36
  br i1 %59, label %60, label %62

60:                                               ; preds = %55
  %61 = getelementptr inbounds i8, ptr %23, i64 1
  store ptr %61, ptr %4, align 8, !tbaa !30
  store i8 36, ptr %23, align 1, !tbaa !45
  br label %67

62:                                               ; preds = %28, %55
  %63 = phi i64 [ %29, %28 ], [ %58, %55 ]
  %64 = phi i32 [ 0, %28 ], [ %56, %55 ]
  %65 = call fastcc i32 @one_cppchar_to_utf8(i32 noundef %64, ptr noundef nonnull %4, ptr noundef nonnull %5) #17, !range !86
  %66 = icmp eq i32 %65, 0
  br i1 %66, label %67, label %69

67:                                               ; preds = %60, %62
  %68 = phi i64 [ %58, %60 ], [ %63, %62 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #16
  br label %72

69:                                               ; preds = %62
  %70 = tail call ptr @__errno_location() #20
  store i32 %65, ptr %70, align 4, !tbaa !31
  %71 = call zeroext i8 @cpp_errno(ptr noundef %0, i32 noundef 3, ptr noundef nonnull @.str.17) #19
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #16
  br label %76

72:                                               ; preds = %67, %17
  %73 = phi i64 [ %13, %17 ], [ %68, %67 ]
  %74 = add i64 %73, 1
  %75 = icmp ult i64 %74, %2
  br i1 %75, label %12, label %76, !llvm.loop !87

76:                                               ; preds = %72, %3, %69
  %77 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 50
  %78 = load ptr, ptr %77, align 8, !tbaa !88
  %79 = load ptr, ptr %4, align 8, !tbaa !30
  %80 = ptrtoint ptr %79 to i64
  %81 = sub i64 %80, %9
  %82 = call ptr @ht_lookup(ptr noundef %78, ptr noundef nonnull %7, i64 noundef %81, i32 noundef 1) #19
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #16
  ret ptr %82
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc noundef i32 @one_cppchar_to_utf8(i32 noundef %0, ptr nocapture noundef %1, ptr nocapture noundef %2) unnamed_addr #8 {
  %4 = alloca [6 x i8], align 1
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %4) #16
  %5 = load ptr, ptr %1, align 8, !tbaa !30
  %6 = icmp ult i32 %0, 128
  br i1 %6, label %35, label %7

7:                                                ; preds = %3, %25
  %8 = phi i32 [ %16, %25 ], [ %0, %3 ]
  %9 = phi i64 [ %17, %25 ], [ 1, %3 ]
  %10 = phi i64 [ %14, %25 ], [ 6, %3 ]
  %11 = trunc i32 %8 to i8
  %12 = and i8 %11, 63
  %13 = or disjoint i8 %12, -128
  %14 = add nsw i64 %10, -1
  %15 = getelementptr inbounds i8, ptr %4, i64 %14
  store i8 %13, ptr %15, align 1, !tbaa !45
  %16 = lshr i32 %8, 6
  %17 = add i64 %9, 1
  %18 = icmp ugt i32 %8, 4031
  br i1 %18, label %25, label %19

19:                                               ; preds = %7
  %20 = getelementptr inbounds [6 x i8], ptr @one_cppchar_to_utf8.limits, i64 0, i64 %9
  %21 = load i8, ptr %20, align 1, !tbaa !45
  %22 = zext i8 %21 to i32
  %23 = and i32 %16, %22
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %26, label %25

25:                                               ; preds = %19, %7
  br label %7, !llvm.loop !89

26:                                               ; preds = %19
  %27 = getelementptr inbounds [6 x i8], ptr @one_cppchar_to_utf8.masks, i64 0, i64 %9
  %28 = load i8, ptr %27, align 1, !tbaa !45
  %29 = trunc i32 %16 to i8
  %30 = or i8 %28, %29
  %31 = add nsw i64 %10, -2
  %32 = getelementptr inbounds i8, ptr %4, i64 %31
  store i8 %30, ptr %32, align 1, !tbaa !45
  %33 = load i64, ptr %2, align 8, !tbaa !84
  %34 = icmp ult i64 %33, %17
  br i1 %34, label %54, label %40

35:                                               ; preds = %3
  %36 = trunc i32 %0 to i8
  %37 = getelementptr inbounds i8, ptr %4, i64 5
  store i8 %36, ptr %37, align 1, !tbaa !45
  %38 = load i64, ptr %2, align 8, !tbaa !84
  %39 = icmp eq i64 %38, 0
  br i1 %39, label %54, label %42

40:                                               ; preds = %26
  %41 = icmp slt i64 %10, 8
  br i1 %41, label %42, label %49

42:                                               ; preds = %35, %40
  %43 = phi i64 [ %17, %40 ], [ 1, %35 ]
  %44 = phi i64 [ %31, %40 ], [ 5, %35 ]
  %45 = getelementptr i8, ptr %4, i64 %44
  %46 = sub i64 6, %44
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %5, ptr align 1 %45, i64 %46, i1 false), !tbaa !45
  %47 = getelementptr i8, ptr %5, i64 %46
  %48 = load i64, ptr %2, align 8, !tbaa !84
  br label %49

49:                                               ; preds = %42, %40
  %50 = phi i64 [ %17, %40 ], [ %43, %42 ]
  %51 = phi i64 [ %33, %40 ], [ %48, %42 ]
  %52 = phi ptr [ %5, %40 ], [ %47, %42 ]
  %53 = sub i64 %51, %50
  store i64 %53, ptr %2, align 8, !tbaa !84
  store ptr %52, ptr %1, align 8, !tbaa !30
  br label %54

54:                                               ; preds = %35, %26, %49
  %55 = phi i32 [ 0, %49 ], [ 7, %26 ], [ 7, %35 ]
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %4) #16
  ret i32 %55
}

; Function Attrs: mustprogress nofree nosync nounwind optsize willreturn memory(none)
declare ptr @__errno_location() local_unnamed_addr #9

; Function Attrs: optsize
declare ptr @ht_lookup(ptr noundef, ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @_cpp_convert_input(ptr noundef %0, ptr noundef %1, ptr noundef %2, i64 noundef %3, i64 noundef %4, ptr nocapture noundef writeonly %5, ptr nocapture noundef writeonly %6) local_unnamed_addr #0 {
  %8 = alloca %struct._cpp_strbuf, align 8
  %9 = alloca %struct.cset_converter, align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %8) #16
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %9) #16
  call fastcc void @init_iconv_desc(ptr dead_on_unwind nonnull writable sret(%struct.cset_converter) align 8 %9, ptr noundef %0, ptr noundef nonnull @.str.4, ptr noundef %1) #17
  %10 = load ptr, ptr %9, align 8, !tbaa.struct !29
  %11 = getelementptr inbounds i8, ptr %9, i64 8
  %12 = load ptr, ptr %11, align 8, !tbaa.struct !90
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %9) #16
  %13 = icmp eq ptr %10, @convert_no_conversion
  %14 = getelementptr inbounds %struct._cpp_strbuf, ptr %8, i64 0, i32 1
  br i1 %13, label %15, label %17

15:                                               ; preds = %7
  store ptr %2, ptr %8, align 8, !tbaa !48
  store i64 %3, ptr %14, align 8, !tbaa !46
  %16 = getelementptr inbounds %struct._cpp_strbuf, ptr %8, i64 0, i32 2
  store i64 %4, ptr %16, align 8, !tbaa !49
  br label %31

17:                                               ; preds = %7
  %18 = tail call i64 @llvm.umax.i64(i64 %4, i64 65536)
  store i64 %18, ptr %14, align 8, !tbaa !46
  %19 = tail call ptr @xmalloc(i64 noundef %18) #19
  store ptr %19, ptr %8, align 8, !tbaa !48
  %20 = getelementptr inbounds %struct._cpp_strbuf, ptr %8, i64 0, i32 2
  store i64 0, ptr %20, align 8, !tbaa !49
  %21 = call zeroext i8 %10(ptr noundef %12, ptr noundef %2, i64 noundef %4, ptr noundef nonnull %8) #19
  %22 = icmp eq i8 %21, 0
  br i1 %22, label %23, label %27

23:                                               ; preds = %17
  %24 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 53, i32 39
  %25 = load ptr, ptr %24, align 8, !tbaa !91
  %26 = call zeroext i8 (ptr, i32, ptr, ...) @cpp_error(ptr noundef %0, i32 noundef 3, ptr noundef nonnull @.str.18, ptr noundef %25, ptr noundef nonnull @.str.4) #19
  br label %27

27:                                               ; preds = %23, %17
  call void @free(ptr noundef %2) #19
  %28 = load i64, ptr %20, align 8, !tbaa !49
  %29 = load i64, ptr %14, align 8, !tbaa !46
  %30 = load ptr, ptr %8, align 8, !tbaa !48
  br label %31

31:                                               ; preds = %27, %15
  %32 = phi ptr [ %30, %27 ], [ %2, %15 ]
  %33 = phi i64 [ %29, %27 ], [ %3, %15 ]
  %34 = phi i64 [ %28, %27 ], [ %4, %15 ]
  %35 = getelementptr inbounds %struct._cpp_strbuf, ptr %8, i64 0, i32 2
  %36 = add i64 %34, 4096
  %37 = icmp uge i64 %36, %33
  %38 = icmp ult i64 %34, %33
  %39 = and i1 %37, %38
  br i1 %39, label %43, label %40

40:                                               ; preds = %31
  %41 = add i64 %34, 1
  %42 = call ptr @xrealloc(ptr noundef %32, i64 noundef %41) #19
  store ptr %42, ptr %8, align 8, !tbaa !48
  br label %43

43:                                               ; preds = %31, %40
  %44 = phi ptr [ %32, %31 ], [ %42, %40 ]
  %45 = load i64, ptr %35, align 8, !tbaa !49
  %46 = icmp eq i64 %45, 0
  br i1 %46, label %53, label %47

47:                                               ; preds = %43
  %48 = getelementptr i8, ptr %44, i64 %45
  %49 = getelementptr i8, ptr %48, i64 -1
  %50 = load i8, ptr %49, align 1, !tbaa !45
  %51 = icmp eq i8 %50, 13
  br i1 %51, label %52, label %53

52:                                               ; preds = %47
  store i8 13, ptr %48, align 1, !tbaa !45
  br label %55

53:                                               ; preds = %47, %43
  %54 = getelementptr inbounds i8, ptr %44, i64 %45
  store i8 10, ptr %54, align 1, !tbaa !45
  br label %55

55:                                               ; preds = %53, %52
  %56 = load ptr, ptr %8, align 8, !tbaa !48
  %57 = load i64, ptr %35, align 8, !tbaa !49
  store i64 %57, ptr %6, align 8, !tbaa !84
  %58 = icmp ugt i64 %57, 2
  br i1 %58, label %59, label %73

59:                                               ; preds = %55
  %60 = load i8, ptr %56, align 1, !tbaa !45
  %61 = icmp eq i8 %60, -17
  br i1 %61, label %62, label %73

62:                                               ; preds = %59
  %63 = getelementptr inbounds i8, ptr %56, i64 1
  %64 = load i8, ptr %63, align 1, !tbaa !45
  %65 = icmp eq i8 %64, -69
  br i1 %65, label %66, label %73

66:                                               ; preds = %62
  %67 = getelementptr inbounds i8, ptr %56, i64 2
  %68 = load i8, ptr %67, align 1, !tbaa !45
  %69 = icmp eq i8 %68, -65
  br i1 %69, label %70, label %73

70:                                               ; preds = %66
  %71 = add nsw i64 %57, -3
  store i64 %71, ptr %6, align 8, !tbaa !84
  %72 = getelementptr inbounds i8, ptr %56, i64 3
  br label %73

73:                                               ; preds = %70, %66, %62, %59, %55
  %74 = phi ptr [ %72, %70 ], [ %56, %66 ], [ %56, %62 ], [ %56, %59 ], [ %56, %55 ]
  store ptr %56, ptr %5, align 8, !tbaa !30
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %8) #16
  ret ptr %74
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local noundef nonnull ptr @_cpp_default_encoding() local_unnamed_addr #3 {
  ret ptr @.str.4
}

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(read)
declare i32 @strcasecmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #10

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(argmem: read)
declare i64 @strlen(ptr nocapture noundef) local_unnamed_addr #11

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(argmem: readwrite)
declare ptr @strcpy(ptr noalias noundef returned writeonly, ptr noalias nocapture noundef readonly) local_unnamed_addr #12

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(argmem: readwrite)
declare ptr @strcat(ptr noalias noundef returned, ptr noalias nocapture noundef readonly) local_unnamed_addr #12

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef zeroext i8 @convert_utf8_utf32(ptr noundef %0, ptr noundef %1, i64 noundef %2, ptr nocapture noundef %3) #0 {
  %5 = tail call fastcc zeroext i8 @conversion_loop(ptr noundef nonnull @one_utf8_to_utf32, ptr noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef %3) #17, !range !92
  ret i8 %5
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef zeroext i8 @convert_utf8_utf16(ptr noundef %0, ptr noundef %1, i64 noundef %2, ptr nocapture noundef %3) #0 {
  %5 = tail call fastcc zeroext i8 @conversion_loop(ptr noundef nonnull @one_utf8_to_utf16, ptr noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef %3) #17, !range !92
  ret i8 %5
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef zeroext i8 @convert_utf32_utf8(ptr noundef %0, ptr noundef %1, i64 noundef %2, ptr nocapture noundef %3) #0 {
  %5 = tail call fastcc zeroext i8 @conversion_loop(ptr noundef nonnull @one_utf32_to_utf8, ptr noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef %3) #17, !range !92
  ret i8 %5
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef zeroext i8 @convert_utf16_utf8(ptr noundef %0, ptr noundef %1, i64 noundef %2, ptr nocapture noundef %3) #0 {
  %5 = tail call fastcc zeroext i8 @conversion_loop(ptr noundef nonnull @one_utf16_to_utf8, ptr noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef %3) #17, !range !92
  ret i8 %5
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef zeroext i8 @conversion_loop(ptr nocapture noundef readonly %0, ptr noundef %1, ptr noundef %2, i64 noundef %3, ptr nocapture noundef %4) unnamed_addr #0 {
  %6 = alloca ptr, align 8
  %7 = alloca ptr, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #16
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #16
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %8) #16
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %9) #16
  store ptr %2, ptr %6, align 8, !tbaa !30
  store i64 %3, ptr %8, align 8, !tbaa !84
  %10 = load ptr, ptr %4, align 8, !tbaa !48
  %11 = getelementptr inbounds %struct._cpp_strbuf, ptr %4, i64 0, i32 2
  %12 = load i64, ptr %11, align 8, !tbaa !49
  %13 = getelementptr inbounds i8, ptr %10, i64 %12
  store ptr %13, ptr %7, align 8, !tbaa !30
  %14 = getelementptr inbounds %struct._cpp_strbuf, ptr %4, i64 0, i32 1
  %15 = load i64, ptr %14, align 8, !tbaa !46
  %16 = sub i64 %15, %12
  store i64 %16, ptr %9, align 8, !tbaa !84
  br label %17

17:                                               ; preds = %23, %5
  %18 = call i32 %0(ptr noundef %1, ptr noundef nonnull %6, ptr noundef nonnull %8, ptr noundef nonnull %7, ptr noundef nonnull %9) #19, !callees !93
  %19 = load i64, ptr %8, align 8, !tbaa !84
  %20 = icmp ne i64 %19, 0
  %21 = icmp eq i32 %18, 0
  %22 = select i1 %20, i1 %21, i1 false
  br i1 %22, label %23, label %24

23:                                               ; preds = %17, %34
  br label %17, !llvm.loop !94

24:                                               ; preds = %17
  %25 = icmp eq i64 %19, 0
  br i1 %25, label %26, label %30

26:                                               ; preds = %24
  %27 = load i64, ptr %14, align 8, !tbaa !46
  %28 = load i64, ptr %9, align 8, !tbaa !84
  %29 = sub i64 %27, %28
  store i64 %29, ptr %11, align 8, !tbaa !49
  br label %46

30:                                               ; preds = %24
  %31 = icmp eq i32 %18, 7
  br i1 %31, label %34, label %32

32:                                               ; preds = %30
  %33 = tail call ptr @__errno_location() #20
  store i32 %18, ptr %33, align 4, !tbaa !31
  br label %46

34:                                               ; preds = %30
  %35 = load i64, ptr %9, align 8, !tbaa !84
  %36 = add i64 %35, 256
  store i64 %36, ptr %9, align 8, !tbaa !84
  %37 = load i64, ptr %14, align 8, !tbaa !46
  %38 = add i64 %37, 256
  store i64 %38, ptr %14, align 8, !tbaa !46
  %39 = load ptr, ptr %4, align 8, !tbaa !48
  %40 = call ptr @xrealloc(ptr noundef %39, i64 noundef %38) #19
  store ptr %40, ptr %4, align 8, !tbaa !48
  %41 = load i64, ptr %14, align 8, !tbaa !46
  %42 = getelementptr inbounds i8, ptr %40, i64 %41
  %43 = load i64, ptr %9, align 8, !tbaa !84
  %44 = sub i64 0, %43
  %45 = getelementptr inbounds i8, ptr %42, i64 %44
  store ptr %45, ptr %7, align 8, !tbaa !30
  br label %23

46:                                               ; preds = %32, %26
  %47 = phi i8 [ 1, %26 ], [ 0, %32 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %9) #16
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %8) #16
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #16
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #16
  ret i8 %47
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define internal noundef i32 @one_utf8_to_utf32(ptr noundef readnone %0, ptr nocapture noundef %1, ptr nocapture noundef %2, ptr nocapture noundef %3, ptr nocapture noundef %4) #8 {
  %6 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #16
  store i32 0, ptr %6, align 4, !tbaa !31
  %7 = load i64, ptr %4, align 8, !tbaa !84
  %8 = icmp ult i64 %7, 4
  br i1 %8, label %35, label %9

9:                                                ; preds = %5
  %10 = call fastcc i32 @one_utf8_to_cppchar(ptr noundef %1, ptr noundef %2, ptr noundef nonnull %6) #17
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %35

12:                                               ; preds = %9
  %13 = load ptr, ptr %3, align 8, !tbaa !30
  %14 = load i32, ptr %6, align 4, !tbaa !31
  %15 = trunc i32 %14 to i8
  %16 = icmp eq ptr %0, null
  %17 = select i1 %16, i64 0, i64 3
  %18 = getelementptr inbounds i8, ptr %13, i64 %17
  store i8 %15, ptr %18, align 1, !tbaa !45
  %19 = lshr i32 %14, 8
  %20 = trunc i32 %19 to i8
  %21 = select i1 %16, i64 1, i64 2
  %22 = getelementptr inbounds i8, ptr %13, i64 %21
  store i8 %20, ptr %22, align 1, !tbaa !45
  %23 = lshr i32 %14, 16
  %24 = trunc i32 %23 to i8
  %25 = select i1 %16, i64 2, i64 1
  %26 = getelementptr inbounds i8, ptr %13, i64 %25
  store i8 %24, ptr %26, align 1, !tbaa !45
  %27 = lshr i32 %14, 24
  %28 = trunc i32 %27 to i8
  %29 = select i1 %16, i64 3, i64 0
  %30 = getelementptr inbounds i8, ptr %13, i64 %29
  store i8 %28, ptr %30, align 1, !tbaa !45
  %31 = load ptr, ptr %3, align 8, !tbaa !30
  %32 = getelementptr inbounds i8, ptr %31, i64 4
  store ptr %32, ptr %3, align 8, !tbaa !30
  %33 = load i64, ptr %4, align 8, !tbaa !84
  %34 = add i64 %33, -4
  store i64 %34, ptr %4, align 8, !tbaa !84
  br label %35

35:                                               ; preds = %9, %5, %12
  %36 = phi i32 [ 0, %12 ], [ 7, %5 ], [ %10, %9 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #16
  ret i32 %36
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc noundef i32 @one_utf8_to_cppchar(ptr nocapture noundef %0, ptr nocapture noundef %1, ptr nocapture noundef writeonly %2) unnamed_addr #13 {
  %4 = load ptr, ptr %0, align 8, !tbaa !30
  %5 = load i64, ptr %1, align 8, !tbaa !84
  %6 = icmp eq i64 %5, 0
  br i1 %6, label %77, label %7

7:                                                ; preds = %3
  %8 = load i8, ptr %4, align 1, !tbaa !45
  %9 = zext i8 %8 to i32
  %10 = icmp sgt i8 %8, -1
  br i1 %10, label %13, label %11

11:                                               ; preds = %7
  %12 = getelementptr i8, ptr %4, i64 2
  br label %16

13:                                               ; preds = %7
  store i32 %9, ptr %2, align 4, !tbaa !31
  %14 = add i64 %5, -1
  store i64 %14, ptr %1, align 8, !tbaa !84
  %15 = getelementptr inbounds i8, ptr %4, i64 1
  store ptr %15, ptr %0, align 8, !tbaa !30
  br label %77

16:                                               ; preds = %11, %29
  %17 = phi ptr [ %12, %11 ], [ %32, %29 ]
  %18 = phi i64 [ 2, %11 ], [ %30, %29 ]
  %19 = add nsw i64 %18, -1
  %20 = getelementptr inbounds [6 x i8], ptr @one_utf8_to_cppchar.masks, i64 0, i64 %19
  %21 = load i8, ptr %20, align 1, !tbaa !45
  %22 = zext i8 %21 to i32
  %23 = xor i32 %22, -1
  %24 = and i32 %23, %9
  %25 = getelementptr inbounds [6 x i8], ptr @one_cppchar_to_utf8.masks, i64 0, i64 %19
  %26 = load i8, ptr %25, align 1, !tbaa !45
  %27 = zext i8 %26 to i32
  %28 = icmp eq i32 %24, %27
  br i1 %28, label %33, label %29

29:                                               ; preds = %16
  %30 = add nuw nsw i64 %18, 1
  %31 = icmp eq i64 %30, 7
  %32 = getelementptr i8, ptr %17, i64 1
  br i1 %31, label %77, label %16, !llvm.loop !95

33:                                               ; preds = %16
  %34 = icmp ult i64 %5, %18
  br i1 %34, label %77, label %35

35:                                               ; preds = %33
  %36 = and i32 %22, %9
  br label %37

37:                                               ; preds = %35, %46
  %38 = phi ptr [ %4, %35 ], [ %41, %46 ]
  %39 = phi i64 [ 1, %35 ], [ %50, %46 ]
  %40 = phi i32 [ %36, %35 ], [ %49, %46 ]
  %41 = getelementptr inbounds i8, ptr %38, i64 1
  %42 = load i8, ptr %41, align 1, !tbaa !45
  %43 = zext i8 %42 to i32
  %44 = and i32 %43, 192
  %45 = icmp eq i32 %44, 128
  br i1 %45, label %46, label %77

46:                                               ; preds = %37
  %47 = shl i32 %40, 6
  %48 = and i32 %43, 63
  %49 = or disjoint i32 %48, %47
  %50 = add nuw nsw i64 %39, 1
  %51 = icmp eq i64 %50, %18
  br i1 %51, label %52, label %37, !llvm.loop !96

52:                                               ; preds = %46
  %53 = icmp ult i32 %49, 128
  br i1 %53, label %77, label %54

54:                                               ; preds = %52
  %55 = icmp ult i32 %49, 2048
  %56 = icmp ugt i64 %18, 2
  %57 = and i1 %56, %55
  br i1 %57, label %77, label %58

58:                                               ; preds = %54
  %59 = icmp ult i32 %49, 65536
  %60 = icmp ugt i64 %18, 3
  %61 = and i1 %60, %59
  br i1 %61, label %77, label %62

62:                                               ; preds = %58
  %63 = icmp ult i32 %49, 2097152
  %64 = icmp ugt i64 %18, 4
  %65 = and i1 %64, %63
  br i1 %65, label %77, label %66

66:                                               ; preds = %62
  %67 = icmp ult i32 %49, 67108864
  %68 = icmp eq i64 %18, 6
  %69 = and i1 %68, %67
  br i1 %69, label %77, label %70

70:                                               ; preds = %66
  %71 = icmp slt i32 %49, 0
  %72 = and i32 %40, 33554400
  %73 = icmp eq i32 %72, 864
  %74 = or i1 %71, %73
  br i1 %74, label %77, label %75

75:                                               ; preds = %70
  store i32 %49, ptr %2, align 4, !tbaa !31
  store ptr %17, ptr %0, align 8, !tbaa !30
  %76 = sub i64 %5, %18
  store i64 %76, ptr %1, align 8, !tbaa !84
  br label %77

77:                                               ; preds = %29, %37, %70, %66, %62, %58, %54, %52, %33, %3, %75, %13
  %78 = phi i32 [ 0, %13 ], [ 0, %75 ], [ 22, %3 ], [ 22, %33 ], [ 84, %52 ], [ 84, %54 ], [ 84, %58 ], [ 84, %62 ], [ 84, %66 ], [ 84, %70 ], [ 84, %37 ], [ 84, %29 ]
  ret i32 %78
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define internal noundef i32 @one_utf8_to_utf16(ptr noundef readnone %0, ptr nocapture noundef %1, ptr nocapture noundef %2, ptr nocapture noundef %3, ptr nocapture noundef %4) #8 {
  %6 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #16
  store i32 0, ptr %6, align 4, !tbaa !31
  %7 = load ptr, ptr %1, align 8, !tbaa !30
  %8 = load i64, ptr %2, align 8, !tbaa !84
  %9 = load ptr, ptr %3, align 8, !tbaa !30
  %10 = call fastcc i32 @one_utf8_to_cppchar(ptr noundef nonnull %1, ptr noundef nonnull %2, ptr noundef nonnull %6) #17
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %65

12:                                               ; preds = %5
  %13 = load i32, ptr %6, align 4, !tbaa !31
  %14 = icmp ugt i32 %13, 1114111
  br i1 %14, label %15, label %16

15:                                               ; preds = %12
  store ptr %7, ptr %1, align 8, !tbaa !30
  store i64 %8, ptr %2, align 8, !tbaa !84
  br label %65

16:                                               ; preds = %12
  %17 = icmp ult i32 %13, 65535
  %18 = load i64, ptr %4, align 8, !tbaa !84
  br i1 %17, label %19, label %36

19:                                               ; preds = %16
  %20 = icmp ult i64 %18, 2
  br i1 %20, label %21, label %22

21:                                               ; preds = %19
  store ptr %7, ptr %1, align 8, !tbaa !30
  store i64 %8, ptr %2, align 8, !tbaa !84
  br label %65

22:                                               ; preds = %19
  %23 = trunc i32 %13 to i8
  %24 = icmp ne ptr %0, null
  %25 = zext i1 %24 to i64
  %26 = getelementptr inbounds i8, ptr %9, i64 %25
  store i8 %23, ptr %26, align 1, !tbaa !45
  %27 = lshr i32 %13, 8
  %28 = trunc i32 %27 to i8
  %29 = xor i1 %24, true
  %30 = zext i1 %29 to i64
  %31 = getelementptr inbounds i8, ptr %9, i64 %30
  store i8 %28, ptr %31, align 1, !tbaa !45
  %32 = load ptr, ptr %3, align 8, !tbaa !30
  %33 = getelementptr inbounds i8, ptr %32, i64 2
  store ptr %33, ptr %3, align 8, !tbaa !30
  %34 = load i64, ptr %4, align 8, !tbaa !84
  %35 = add i64 %34, -2
  store i64 %35, ptr %4, align 8, !tbaa !84
  br label %65

36:                                               ; preds = %16
  %37 = icmp ult i64 %18, 4
  br i1 %37, label %38, label %39

38:                                               ; preds = %36
  store ptr %7, ptr %1, align 8, !tbaa !30
  store i64 %8, ptr %2, align 8, !tbaa !84
  br label %65

39:                                               ; preds = %36
  %40 = add nsw i32 %13, -65536
  %41 = lshr i32 %40, 10
  %42 = add nuw nsw i32 %41, 55296
  %43 = trunc i32 %41 to i8
  %44 = icmp ne ptr %0, null
  %45 = zext i1 %44 to i64
  %46 = getelementptr inbounds i8, ptr %9, i64 %45
  store i8 %43, ptr %46, align 1, !tbaa !45
  %47 = lshr i32 %42, 8
  %48 = trunc i32 %47 to i8
  %49 = xor i1 %44, true
  %50 = zext i1 %49 to i64
  %51 = getelementptr inbounds i8, ptr %9, i64 %50
  store i8 %48, ptr %51, align 1, !tbaa !45
  %52 = trunc i32 %13 to i8
  %53 = select i1 %44, i64 3, i64 2
  %54 = getelementptr inbounds i8, ptr %9, i64 %53
  store i8 %52, ptr %54, align 1, !tbaa !45
  %55 = lshr i32 %13, 8
  %56 = trunc i32 %55 to i8
  %57 = and i8 %56, 3
  %58 = or disjoint i8 %57, -36
  %59 = select i1 %44, i64 2, i64 3
  %60 = getelementptr inbounds i8, ptr %9, i64 %59
  store i8 %58, ptr %60, align 1, !tbaa !45
  %61 = load ptr, ptr %3, align 8, !tbaa !30
  %62 = getelementptr inbounds i8, ptr %61, i64 4
  store ptr %62, ptr %3, align 8, !tbaa !30
  %63 = load i64, ptr %4, align 8, !tbaa !84
  %64 = add i64 %63, -4
  store i64 %64, ptr %4, align 8, !tbaa !84
  br label %65

65:                                               ; preds = %38, %39, %5, %22, %21, %15
  %66 = phi i32 [ 84, %15 ], [ 7, %21 ], [ 0, %22 ], [ %10, %5 ], [ 7, %38 ], [ 0, %39 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #16
  ret i32 %66
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define internal noundef i32 @one_utf32_to_utf8(ptr noundef readnone %0, ptr nocapture noundef %1, ptr nocapture noundef %2, ptr nocapture noundef %3, ptr nocapture noundef %4) #8 {
  %6 = load i64, ptr %2, align 8, !tbaa !84
  %7 = icmp ult i64 %6, 4
  br i1 %7, label %45, label %8

8:                                                ; preds = %5
  %9 = load ptr, ptr %1, align 8, !tbaa !30
  %10 = icmp eq ptr %0, null
  %11 = select i1 %10, i64 3, i64 0
  %12 = getelementptr inbounds i8, ptr %9, i64 %11
  %13 = load i8, ptr %12, align 1, !tbaa !45
  %14 = zext i8 %13 to i32
  %15 = shl nuw i32 %14, 24
  %16 = select i1 %10, i64 2, i64 1
  %17 = getelementptr inbounds i8, ptr %9, i64 %16
  %18 = load i8, ptr %17, align 1, !tbaa !45
  %19 = zext i8 %18 to i32
  %20 = shl nuw nsw i32 %19, 16
  %21 = or disjoint i32 %20, %15
  %22 = select i1 %10, i64 1, i64 2
  %23 = getelementptr inbounds i8, ptr %9, i64 %22
  %24 = load i8, ptr %23, align 1, !tbaa !45
  %25 = zext i8 %24 to i32
  %26 = shl nuw nsw i32 %25, 8
  %27 = or disjoint i32 %21, %26
  %28 = select i1 %10, i64 0, i64 3
  %29 = getelementptr inbounds i8, ptr %9, i64 %28
  %30 = load i8, ptr %29, align 1, !tbaa !45
  %31 = zext i8 %30 to i32
  %32 = or disjoint i32 %27, %31
  %33 = icmp ugt i32 %32, 2147483646
  %34 = and i32 %27, -2048
  %35 = icmp eq i32 %34, 55296
  %36 = or i1 %33, %35
  br i1 %36, label %45, label %37

37:                                               ; preds = %8
  %38 = tail call fastcc i32 @one_cppchar_to_utf8(i32 noundef %32, ptr noundef %3, ptr noundef %4) #17, !range !86
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %40, label %45

40:                                               ; preds = %37
  %41 = load ptr, ptr %1, align 8, !tbaa !30
  %42 = getelementptr inbounds i8, ptr %41, i64 4
  store ptr %42, ptr %1, align 8, !tbaa !30
  %43 = load i64, ptr %2, align 8, !tbaa !84
  %44 = add i64 %43, -4
  store i64 %44, ptr %2, align 8, !tbaa !84
  br label %45

45:                                               ; preds = %37, %8, %5, %40
  %46 = phi i32 [ 0, %40 ], [ 22, %5 ], [ 84, %8 ], [ %38, %37 ]
  ret i32 %46
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define internal noundef i32 @one_utf16_to_utf8(ptr noundef readnone %0, ptr nocapture noundef %1, ptr nocapture noundef %2, ptr nocapture noundef %3, ptr nocapture noundef %4) #8 {
  %6 = load ptr, ptr %1, align 8, !tbaa !30
  %7 = load i64, ptr %2, align 8, !tbaa !84
  %8 = icmp ult i64 %7, 2
  br i1 %8, label %54, label %9

9:                                                ; preds = %5
  %10 = icmp eq ptr %0, null
  %11 = zext i1 %10 to i64
  %12 = getelementptr inbounds i8, ptr %6, i64 %11
  %13 = load i8, ptr %12, align 1, !tbaa !45
  %14 = zext i8 %13 to i32
  %15 = shl nuw nsw i32 %14, 8
  %16 = xor i1 %10, true
  %17 = zext i1 %16 to i64
  %18 = getelementptr inbounds i8, ptr %6, i64 %17
  %19 = load i8, ptr %18, align 1, !tbaa !45
  %20 = zext i8 %19 to i32
  %21 = or disjoint i32 %15, %20
  %22 = and i8 %13, -4
  switch i8 %22, label %42 [
    i8 -36, label %54
    i8 -40, label %23
  ]

23:                                               ; preds = %9
  %24 = icmp ult i64 %7, 4
  br i1 %24, label %54, label %25

25:                                               ; preds = %23
  %26 = select i1 %10, i64 3, i64 2
  %27 = getelementptr inbounds i8, ptr %6, i64 %26
  %28 = load i8, ptr %27, align 1, !tbaa !45
  %29 = zext i8 %28 to i32
  %30 = shl nuw nsw i32 %29, 8
  %31 = add nsw i32 %30, -57344
  %32 = icmp ult i32 %31, -1024
  br i1 %32, label %54, label %33

33:                                               ; preds = %25
  %34 = select i1 %10, i64 2, i64 3
  %35 = getelementptr inbounds i8, ptr %6, i64 %34
  %36 = load i8, ptr %35, align 1, !tbaa !45
  %37 = zext i8 %36 to i32
  %38 = or disjoint i32 %30, %37
  %39 = shl nuw nsw i32 %21, 10
  %40 = add nsw i32 %39, -56613888
  %41 = add nsw i32 %40, %38
  br label %42

42:                                               ; preds = %9, %33
  %43 = phi i32 [ %41, %33 ], [ %21, %9 ]
  %44 = tail call fastcc i32 @one_cppchar_to_utf8(i32 noundef %43, ptr noundef %3, ptr noundef %4) #17, !range !86
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %46, label %54

46:                                               ; preds = %42
  %47 = icmp ult i32 %43, 65536
  %48 = load ptr, ptr %1, align 8, !tbaa !30
  %49 = load i64, ptr %2, align 8, !tbaa !84
  %50 = select i1 %47, i64 2, i64 4
  %51 = select i1 %47, i64 -2, i64 -4
  %52 = getelementptr inbounds i8, ptr %48, i64 %50
  %53 = add i64 %49, %51
  store ptr %52, ptr %1, align 8
  store i64 %53, ptr %2, align 8, !tbaa !84
  br label %54

54:                                               ; preds = %9, %25, %23, %42, %5, %46
  %55 = phi i32 [ 0, %46 ], [ 22, %5 ], [ 84, %9 ], [ %44, %42 ], [ 84, %25 ], [ 22, %23 ]
  ret i32 %55
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @convert_ucn(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr nocapture noundef readonly byval(%struct.cset_converter) align 8 %4) unnamed_addr #0 {
  %6 = alloca ptr, align 8
  %7 = alloca [6 x i8], align 1
  %8 = alloca ptr, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.normalize_state, align 4
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %7) #16
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %8) #16
  store ptr %7, ptr %8, align 8, !tbaa !30
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %9) #16
  store i64 6, ptr %9, align 8, !tbaa !84
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %10) #16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %10, i8 0, i64 12, i1 false)
  %11 = getelementptr inbounds i8, ptr %1, i64 1
  store ptr %11, ptr %6, align 8, !tbaa !30
  %12 = call i32 @_cpp_valid_ucn(ptr noundef %0, ptr noundef nonnull %6, ptr noundef %2, i32 noundef 0, ptr noundef nonnull %10) #17
  %13 = call fastcc i32 @one_cppchar_to_utf8(i32 noundef %12, ptr noundef nonnull %8, ptr noundef nonnull %9) #17, !range !86
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %17, label %15

15:                                               ; preds = %5
  %16 = tail call ptr @__errno_location() #20
  store i32 %13, ptr %16, align 4, !tbaa !31
  br label %25

17:                                               ; preds = %5
  %18 = load ptr, ptr %4, align 8, !tbaa !38
  %19 = getelementptr inbounds %struct.cset_converter, ptr %4, i64 0, i32 1
  %20 = load ptr, ptr %19, align 8, !tbaa !39
  %21 = load i64, ptr %9, align 8, !tbaa !84
  %22 = sub i64 6, %21
  %23 = call zeroext i8 %18(ptr noundef %20, ptr noundef nonnull %7, i64 noundef %22, ptr noundef %3) #19
  %24 = icmp eq i8 %23, 0
  br i1 %24, label %25, label %28

25:                                               ; preds = %17, %15
  %26 = phi ptr [ @.str.17, %15 ], [ @.str.37, %17 ]
  %27 = call zeroext i8 @cpp_errno(ptr noundef %0, i32 noundef 3, ptr noundef nonnull %26) #19
  br label %28

28:                                               ; preds = %25, %17
  %29 = load ptr, ptr %6, align 8, !tbaa !30
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %10) #16
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %9) #16
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %8) #16
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %7) #16
  ret ptr %29
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @convert_hex(ptr noundef %0, ptr noundef readonly %1, ptr noundef readnone %2, ptr nocapture noundef %3, ptr nocapture noundef readonly byval(%struct.cset_converter) align 8 %4) unnamed_addr #0 {
  %6 = ptrtoint ptr %1 to i64
  %7 = ptrtoint ptr %2 to i64
  %8 = getelementptr inbounds %struct.cset_converter, ptr %4, i64 0, i32 2
  %9 = load i32, ptr %8, align 8, !tbaa !40
  %10 = sext i32 %9 to i64
  %11 = tail call fastcc i64 @width_to_mask(i64 noundef %10) #17
  %12 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 53, i32 17
  %13 = load i8, ptr %12, align 1, !tbaa !54
  %14 = icmp eq i8 %13, 0
  br i1 %14, label %17, label %15

15:                                               ; preds = %5
  %16 = tail call zeroext i8 (ptr, i32, ptr, ...) @cpp_error(ptr noundef nonnull %0, i32 noundef 0, ptr noundef nonnull @.str.38) #19
  br label %17

17:                                               ; preds = %15, %5
  %18 = getelementptr inbounds i8, ptr %1, i64 1
  %19 = icmp ult ptr %18, %2
  br i1 %19, label %20, label %50

20:                                               ; preds = %17
  %21 = sub i64 %7, %6
  %22 = getelementptr i8, ptr %1, i64 %21
  %23 = load i8, ptr %18, align 1, !tbaa !45
  %24 = zext i8 %23 to i64
  %25 = getelementptr inbounds [256 x i8], ptr @_hex_value, i64 0, i64 %24
  %26 = load i8, ptr %25, align 1, !tbaa !45
  %27 = icmp eq i8 %26, 99
  br i1 %27, label %46, label %34

28:                                               ; preds = %34
  %29 = load i8, ptr %44, align 1, !tbaa !45
  %30 = zext i8 %29 to i64
  %31 = getelementptr inbounds [256 x i8], ptr @_hex_value, i64 0, i64 %30
  %32 = load i8, ptr %31, align 1, !tbaa !45
  %33 = icmp eq i8 %32, 99
  br i1 %33, label %46, label %34, !llvm.loop !97

34:                                               ; preds = %20, %28
  %35 = phi i8 [ %32, %28 ], [ %26, %20 ]
  %36 = phi i32 [ %43, %28 ], [ 0, %20 ]
  %37 = phi i32 [ %42, %28 ], [ 0, %20 ]
  %38 = phi ptr [ %44, %28 ], [ %18, %20 ]
  %39 = zext i8 %35 to i32
  %40 = shl i32 %36, 4
  %41 = and i32 %36, -268435456
  %42 = or i32 %37, %41
  %43 = add i32 %40, %39
  %44 = getelementptr inbounds i8, ptr %38, i64 1
  %45 = icmp eq ptr %44, %2
  br i1 %45, label %53, label %28, !llvm.loop !97

46:                                               ; preds = %28, %20
  %47 = phi ptr [ %18, %20 ], [ %44, %28 ]
  %48 = phi i32 [ 0, %20 ], [ %42, %28 ]
  %49 = phi i32 [ 0, %20 ], [ %43, %28 ]
  br i1 %27, label %50, label %53

50:                                               ; preds = %17, %46
  %51 = phi ptr [ %47, %46 ], [ %18, %17 ]
  %52 = tail call zeroext i8 (ptr, i32, ptr, ...) @cpp_error(ptr noundef %0, i32 noundef 3, ptr noundef nonnull @.str.39) #19
  br label %68

53:                                               ; preds = %34, %46
  %54 = phi ptr [ %47, %46 ], [ %22, %34 ]
  %55 = phi i32 [ %48, %46 ], [ %42, %34 ]
  %56 = phi i32 [ %49, %46 ], [ %43, %34 ]
  %57 = zext i32 %56 to i64
  %58 = and i64 %11, %57
  %59 = icmp ne i64 %58, %57
  %60 = zext i1 %59 to i32
  %61 = or disjoint i32 %55, %60
  %62 = icmp eq i32 %61, 0
  br i1 %62, label %66, label %63

63:                                               ; preds = %53
  %64 = tail call zeroext i8 (ptr, i32, ptr, ...) @cpp_error(ptr noundef %0, i32 noundef 2, ptr noundef nonnull @.str.40) #19
  %65 = trunc i64 %58 to i32
  br label %66

66:                                               ; preds = %63, %53
  %67 = phi i32 [ %65, %63 ], [ %56, %53 ]
  tail call fastcc void @emit_numeric_escape(ptr noundef %0, i32 noundef %67, ptr noundef %3, ptr noundef nonnull byval(%struct.cset_converter) align 8 %4) #17
  br label %68

68:                                               ; preds = %66, %50
  %69 = phi ptr [ %54, %66 ], [ %51, %50 ]
  ret ptr %69
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @convert_oct(ptr noundef %0, ptr noundef readonly %1, ptr noundef readnone %2, ptr nocapture noundef %3, ptr nocapture noundef readonly byval(%struct.cset_converter) align 8 %4) unnamed_addr #0 {
  %6 = getelementptr inbounds %struct.cset_converter, ptr %4, i64 0, i32 2
  %7 = load i32, ptr %6, align 8, !tbaa !40
  %8 = sext i32 %7 to i64
  %9 = tail call fastcc i64 @width_to_mask(i64 noundef %8) #17
  %10 = icmp ult ptr %1, %2
  br i1 %10, label %11, label %34

11:                                               ; preds = %5
  %12 = ptrtoint ptr %2 to i64
  %13 = ptrtoint ptr %1 to i64
  %14 = getelementptr i8, ptr %1, i64 3
  %15 = sub i64 %12, %13
  %16 = getelementptr i8, ptr %1, i64 %15
  br label %17

17:                                               ; preds = %11, %27
  %18 = phi ptr [ %29, %27 ], [ %1, %11 ]
  %19 = phi i64 [ %21, %27 ], [ 0, %11 ]
  %20 = phi i32 [ %32, %27 ], [ 0, %11 ]
  %21 = add nuw nsw i64 %19, 1
  %22 = icmp eq i64 %19, 3
  br i1 %22, label %34, label %23

23:                                               ; preds = %17
  %24 = load i8, ptr %18, align 1, !tbaa !45
  %25 = add i8 %24, -56
  %26 = icmp ult i8 %25, -8
  br i1 %26, label %34, label %27

27:                                               ; preds = %23
  %28 = zext nneg i8 %24 to i32
  %29 = getelementptr inbounds i8, ptr %18, i64 1
  %30 = shl i32 %20, 3
  %31 = add i32 %30, -48
  %32 = add i32 %31, %28
  %33 = icmp eq i64 %21, %15
  br i1 %33, label %34, label %17, !llvm.loop !98

34:                                               ; preds = %17, %23, %27, %5
  %35 = phi i32 [ 0, %5 ], [ %32, %27 ], [ %20, %23 ], [ %20, %17 ]
  %36 = phi ptr [ %1, %5 ], [ %16, %27 ], [ %18, %23 ], [ %14, %17 ]
  %37 = zext i32 %35 to i64
  %38 = and i64 %9, %37
  %39 = icmp eq i64 %38, %37
  br i1 %39, label %43, label %40

40:                                               ; preds = %34
  %41 = tail call zeroext i8 (ptr, i32, ptr, ...) @cpp_error(ptr noundef %0, i32 noundef 2, ptr noundef nonnull @.str.41) #19
  %42 = trunc i64 %38 to i32
  br label %43

43:                                               ; preds = %40, %34
  %44 = phi i32 [ %42, %40 ], [ %35, %34 ]
  tail call fastcc void @emit_numeric_escape(ptr noundef %0, i32 noundef %44, ptr noundef %3, ptr noundef nonnull byval(%struct.cset_converter) align 8 %4) #17
  ret ptr %36
}

; Function Attrs: nofree nounwind optsize
declare noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #14

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc i64 @width_to_mask(i64 noundef %0) unnamed_addr #3 {
  %2 = tail call i64 @llvm.umin.i64(i64 %0, i64 32)
  %3 = shl nsw i64 -1, %2
  %4 = xor i64 %3, -1
  ret i64 %4
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #15

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #15

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #15

attributes #0 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nounwind optsize willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #8 = { nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nofree nosync nounwind optsize willreturn memory(none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nofree nounwind optsize willreturn memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nofree nounwind optsize willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { mustprogress nofree nounwind optsize willreturn memory(argmem: readwrite) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { nofree noinline norecurse nosync nounwind optsize memory(read, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { nofree nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #16 = { nounwind }
attributes #17 = { optsize }
attributes #18 = { nounwind optsize willreturn memory(read) }
attributes #19 = { nounwind optsize }
attributes #20 = { nounwind optsize willreturn memory(none) }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!5 = !{!6, !7, i64 1088}
!6 = !{!"cpp_reader", !7, i64 0, !7, i64 8, !10, i64 16, !7, i64 40, !11, i64 48, !7, i64 56, !7, i64 64, !7, i64 72, !12, i64 80, !7, i64 136, !7, i64 144, !13, i64 152, !11, i64 176, !8, i64 180, !7, i64 184, !7, i64 192, !15, i64 200, !7, i64 264, !7, i64 272, !7, i64 280, !7, i64 288, !7, i64 296, !7, i64 304, !17, i64 312, !8, i64 400, !8, i64 401, !7, i64 408, !7, i64 416, !8, i64 424, !7, i64 432, !18, i64 440, !7, i64 472, !11, i64 480, !11, i64 484, !7, i64 488, !11, i64 496, !19, i64 504, !19, i64 528, !19, i64 552, !19, i64 576, !19, i64 600, !7, i64 624, !7, i64 632, !13, i64 640, !13, i64 664, !7, i64 688, !17, i64 696, !17, i64 784, !7, i64 872, !20, i64 880, !7, i64 1016, !7, i64 1024, !7, i64 1032, !21, i64 1040, !23, i64 1168, !8, i64 1200, !24, i64 1208, !7, i64 1240, !7, i64 1248, !7, i64 1256, !7, i64 1264, !11, i64 1272, !25, i64 1280, !7, i64 1296}
!7 = !{!"any pointer", !8, i64 0}
!8 = !{!"omnipotent char", !9, i64 0}
!9 = !{!"Simple C/C++ TBAA"}
!10 = !{!"lexer_state", !8, i64 0, !8, i64 1, !8, i64 2, !8, i64 3, !8, i64 4, !8, i64 5, !8, i64 6, !8, i64 7, !8, i64 8, !8, i64 9, !8, i64 10, !11, i64 12, !8, i64 16, !8, i64 17}
!11 = !{!"int", !8, i64 0}
!12 = !{!"cpp_context", !7, i64 0, !7, i64 8, !8, i64 16, !7, i64 32, !7, i64 40, !8, i64 48}
!13 = !{!"cpp_token", !11, i64 0, !11, i64 4, !14, i64 6, !8, i64 8}
!14 = !{!"short", !8, i64 0}
!15 = !{!"cpp_dir", !7, i64 0, !7, i64 8, !11, i64 16, !8, i64 20, !8, i64 21, !7, i64 24, !7, i64 32, !7, i64 40, !16, i64 48, !16, i64 56}
!16 = !{!"long", !8, i64 0}
!17 = !{!"obstack", !16, i64 0, !7, i64 8, !7, i64 16, !7, i64 24, !7, i64 32, !16, i64 40, !11, i64 48, !7, i64 56, !7, i64 64, !7, i64 72, !11, i64 80, !11, i64 80, !11, i64 80}
!18 = !{!"tokenrun", !7, i64 0, !7, i64 8, !7, i64 16, !7, i64 24}
!19 = !{!"cset_converter", !7, i64 0, !7, i64 8, !11, i64 16}
!20 = !{!"cpp_callbacks", !7, i64 0, !7, i64 8, !7, i64 16, !7, i64 24, !7, i64 32, !7, i64 40, !7, i64 48, !7, i64 56, !7, i64 64, !7, i64 72, !7, i64 80, !7, i64 88, !7, i64 96, !7, i64 104, !7, i64 112, !7, i64 120, !7, i64 128}
!21 = !{!"cpp_options", !11, i64 0, !11, i64 4, !8, i64 8, !8, i64 9, !8, i64 10, !8, i64 11, !8, i64 12, !8, i64 13, !8, i64 14, !8, i64 15, !8, i64 16, !8, i64 17, !8, i64 18, !8, i64 19, !8, i64 20, !8, i64 21, !8, i64 22, !8, i64 23, !8, i64 24, !8, i64 25, !8, i64 26, !8, i64 27, !8, i64 28, !8, i64 29, !8, i64 30, !8, i64 31, !8, i64 32, !8, i64 33, !8, i64 34, !8, i64 35, !8, i64 36, !8, i64 37, !8, i64 38, !8, i64 39, !8, i64 40, !8, i64 41, !8, i64 42, !7, i64 48, !7, i64 56, !7, i64 64, !11, i64 72, !8, i64 76, !8, i64 77, !22, i64 80, !16, i64 88, !16, i64 96, !16, i64 104, !16, i64 112, !8, i64 120, !8, i64 121, !8, i64 122, !8, i64 123, !8, i64 124}
!22 = !{!"", !11, i64 0, !8, i64 4, !8, i64 5, !8, i64 6, !8, i64 7}
!23 = !{!"spec_nodes", !7, i64 0, !7, i64 8, !7, i64 16, !7, i64 24}
!24 = !{!"", !7, i64 0, !7, i64 8, !7, i64 16, !11, i64 24}
!25 = !{!"", !7, i64 0, !11, i64 8, !11, i64 12}
!26 = !{!6, !7, i64 1096}
!27 = !{!6, !8, i64 1162}
!28 = !{!6, !16, i64 1152}
!29 = !{i64 0, i64 8, !30, i64 8, i64 8, !30, i64 16, i64 4, !31}
!30 = !{!7, !7, i64 0}
!31 = !{!11, !11, i64 0}
!32 = !{!6, !16, i64 1136}
!33 = !{!6, !11, i64 520}
!34 = !{!6, !11, i64 544}
!35 = !{!6, !11, i64 568}
!36 = !{!6, !11, i64 592}
!37 = !{!6, !11, i64 616}
!38 = !{!19, !7, i64 0}
!39 = !{!19, !7, i64 8}
!40 = !{!19, !11, i64 16}
!41 = !{!42, !7, i64 0}
!42 = !{!"conversion", !7, i64 0, !7, i64 8, !7, i64 16}
!43 = distinct !{!43, !44}
!44 = !{!"llvm.loop.mustprogress"}
!45 = !{!8, !8, i64 0}
!46 = !{!47, !16, i64 8}
!47 = !{!"_cpp_strbuf", !7, i64 0, !16, i64 8, !16, i64 16}
!48 = !{!47, !7, i64 0}
!49 = !{!47, !16, i64 16}
!50 = !{!6, !7, i64 504}
!51 = !{!6, !7, i64 512}
!52 = !{!6, !8, i64 1048}
!53 = !{!6, !8, i64 1075}
!54 = !{!6, !8, i64 1063}
!55 = !{!14, !14, i64 0}
!56 = distinct !{!56, !44}
!57 = !{!6, !8, i64 1070}
!58 = !{!6, !8, i64 1072}
!59 = !{!6, !8, i64 18}
!60 = !{!61, !11, i64 0}
!61 = !{!"normalize_state", !11, i64 0, !8, i64 4, !11, i64 8}
!62 = !{!61, !8, i64 4}
!63 = !{i32 0, i32 3}
!64 = !{!65, !14, i64 2}
!65 = !{!"", !8, i64 0, !8, i64 1, !14, i64 2}
!66 = distinct !{!66, !44}
!67 = !{!65, !8, i64 0}
!68 = !{!6, !8, i64 1077}
!69 = !{!65, !8, i64 1}
!70 = !{!61, !11, i64 8}
!71 = !{!72, !11, i64 0}
!72 = !{!"cpp_string", !11, i64 0, !7, i64 8}
!73 = !{!72, !7, i64 8}
!74 = distinct !{!74, !44}
!75 = distinct !{!75, !44}
!76 = distinct !{!76, !44}
!77 = distinct !{!77, !44}
!78 = distinct !{!78, !44}
!79 = !{!6, !8, i64 1161}
!80 = !{!6, !16, i64 1144}
!81 = distinct !{!81, !44}
!82 = !{!6, !8, i64 1062}
!83 = !{!6, !8, i64 1160}
!84 = !{!16, !16, i64 0}
!85 = distinct !{!85, !44}
!86 = !{i32 0, i32 8}
!87 = distinct !{!87, !44}
!88 = !{!6, !7, i64 1016}
!89 = distinct !{!89, !44}
!90 = !{i64 0, i64 8, !30, i64 8, i64 4, !31}
!91 = !{!6, !7, i64 1104}
!92 = !{i8 0, i8 2}
!93 = !{ptr @one_utf16_to_utf8, ptr @one_utf32_to_utf8, ptr @one_utf8_to_utf16, ptr @one_utf8_to_utf32}
!94 = distinct !{!94, !44}
!95 = distinct !{!95, !44}
!96 = distinct !{!96, !44}
!97 = distinct !{!97, !44}
!98 = distinct !{!98, !44}
