; ModuleID = 'llvm-link'
source_filename = "llvm-link"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.klatt_frame_t = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.Elm_s = type { ptr, i8, i8, i8, i8, ptr, ptr, i64, [19 x %struct.interp_t] }
%struct.interp_t = type { float, float, i8, i8, i8 }
%struct.klatt_global_t = type { i32, i32, i32, i32, i64, i64, i64, i64 }
%struct.darray_t = type { ptr, i32, i32, i16, i16 }
%struct.__va_list_tag = type { i32, i32, ptr, ptr }
%struct.filter_t = type { float, float, float }
%struct.slope_t = type { float, i32 }
%struct.trie_s = type { ptr, ptr, ptr, i8 }

@.str = private unnamed_addr constant [62 x i8] c"$Id: ASCII.c,v 1.13 1994/11/08 13:30:50 a904209 Exp a904209 $\00", align 1
@ASCII_id = dso_local local_unnamed_addr global ptr @.str, align 8
@.str.1 = private unnamed_addr constant [5 x i8] c"null\00", align 1
@.str.2 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"space\00", align 1
@.str.4 = private unnamed_addr constant [17 x i8] c"exclamation mark\00", align 1
@.str.5 = private unnamed_addr constant [13 x i8] c"double quote\00", align 1
@.str.6 = private unnamed_addr constant [5 x i8] c"hash\00", align 1
@.str.7 = private unnamed_addr constant [7 x i8] c"dollar\00", align 1
@.str.8 = private unnamed_addr constant [8 x i8] c"percent\00", align 1
@.str.9 = private unnamed_addr constant [10 x i8] c"ampersand\00", align 1
@.str.10 = private unnamed_addr constant [6 x i8] c"quote\00", align 1
@.str.11 = private unnamed_addr constant [17 x i8] c"open parenthesis\00", align 1
@.str.12 = private unnamed_addr constant [18 x i8] c"close parenthesis\00", align 1
@.str.13 = private unnamed_addr constant [9 x i8] c"asterisk\00", align 1
@.str.14 = private unnamed_addr constant [5 x i8] c"plus\00", align 1
@.str.15 = private unnamed_addr constant [6 x i8] c"comma\00", align 1
@.str.16 = private unnamed_addr constant [6 x i8] c"minus\00", align 1
@.str.17 = private unnamed_addr constant [10 x i8] c"full stop\00", align 1
@.str.18 = private unnamed_addr constant [6 x i8] c"slash\00", align 1
@.str.19 = private unnamed_addr constant [5 x i8] c"zero\00", align 1
@.str.20 = private unnamed_addr constant [4 x i8] c"one\00", align 1
@.str.21 = private unnamed_addr constant [4 x i8] c"two\00", align 1
@.str.22 = private unnamed_addr constant [6 x i8] c"three\00", align 1
@.str.23 = private unnamed_addr constant [5 x i8] c"four\00", align 1
@.str.24 = private unnamed_addr constant [5 x i8] c"five\00", align 1
@.str.25 = private unnamed_addr constant [4 x i8] c"six\00", align 1
@.str.26 = private unnamed_addr constant [6 x i8] c"seven\00", align 1
@.str.27 = private unnamed_addr constant [6 x i8] c"eight\00", align 1
@.str.28 = private unnamed_addr constant [5 x i8] c"nine\00", align 1
@.str.29 = private unnamed_addr constant [6 x i8] c"colon\00", align 1
@.str.30 = private unnamed_addr constant [11 x i8] c"semi colon\00", align 1
@.str.31 = private unnamed_addr constant [10 x i8] c"less than\00", align 1
@.str.32 = private unnamed_addr constant [7 x i8] c"equals\00", align 1
@.str.33 = private unnamed_addr constant [13 x i8] c"greater than\00", align 1
@.str.34 = private unnamed_addr constant [14 x i8] c"question mark\00", align 1
@.str.35 = private unnamed_addr constant [3 x i8] c"at\00", align 1
@.str.36 = private unnamed_addr constant [3 x i8] c"ay\00", align 1
@.str.37 = private unnamed_addr constant [4 x i8] c"bee\00", align 1
@.str.38 = private unnamed_addr constant [4 x i8] c"see\00", align 1
@.str.39 = private unnamed_addr constant [4 x i8] c"dee\00", align 1
@.str.40 = private unnamed_addr constant [2 x i8] c"e\00", align 1
@.str.41 = private unnamed_addr constant [4 x i8] c"eff\00", align 1
@.str.42 = private unnamed_addr constant [4 x i8] c"gee\00", align 1
@.str.43 = private unnamed_addr constant [5 x i8] c"aych\00", align 1
@.str.44 = private unnamed_addr constant [2 x i8] c"i\00", align 1
@.str.45 = private unnamed_addr constant [4 x i8] c"jay\00", align 1
@.str.46 = private unnamed_addr constant [4 x i8] c"kay\00", align 1
@.str.47 = private unnamed_addr constant [4 x i8] c"ell\00", align 1
@.str.48 = private unnamed_addr constant [3 x i8] c"em\00", align 1
@.str.49 = private unnamed_addr constant [3 x i8] c"en\00", align 1
@.str.50 = private unnamed_addr constant [4 x i8] c"ohe\00", align 1
@.str.51 = private unnamed_addr constant [4 x i8] c"pee\00", align 1
@.str.52 = private unnamed_addr constant [4 x i8] c"kju\00", align 1
@.str.53 = private unnamed_addr constant [4 x i8] c"are\00", align 1
@.str.54 = private unnamed_addr constant [3 x i8] c"es\00", align 1
@.str.55 = private unnamed_addr constant [4 x i8] c"tee\00", align 1
@.str.56 = private unnamed_addr constant [4 x i8] c"you\00", align 1
@.str.57 = private unnamed_addr constant [4 x i8] c"vee\00", align 1
@.str.58 = private unnamed_addr constant [11 x i8] c"double you\00", align 1
@.str.59 = private unnamed_addr constant [4 x i8] c"eks\00", align 1
@.str.60 = private unnamed_addr constant [4 x i8] c"why\00", align 1
@.str.61 = private unnamed_addr constant [4 x i8] c"zed\00", align 1
@.str.62 = private unnamed_addr constant [13 x i8] c"open bracket\00", align 1
@.str.63 = private unnamed_addr constant [11 x i8] c"back slash\00", align 1
@.str.64 = private unnamed_addr constant [14 x i8] c"close bracket\00", align 1
@.str.65 = private unnamed_addr constant [11 x i8] c"circumflex\00", align 1
@.str.66 = private unnamed_addr constant [11 x i8] c"underscore\00", align 1
@.str.67 = private unnamed_addr constant [11 x i8] c"back quote\00", align 1
@.str.68 = private unnamed_addr constant [11 x i8] c"open brace\00", align 1
@.str.69 = private unnamed_addr constant [13 x i8] c"vertical bar\00", align 1
@.str.70 = private unnamed_addr constant [12 x i8] c"close brace\00", align 1
@.str.71 = private unnamed_addr constant [6 x i8] c"tilde\00", align 1
@.str.72 = private unnamed_addr constant [7 x i8] c"delete\00", align 1
@.str.73 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.1.74 = private unnamed_addr constant [12 x i8] c"File output\00", align 1
@.str.2.75 = private unnamed_addr constant [2 x i8] c"l\00", align 1
@linear_file = internal global ptr null, align 8
@.str.3.76 = private unnamed_addr constant [27 x i8] c"Raw 16-bit linear pathname\00", align 1
@.str.4.77 = private unnamed_addr constant [2 x i8] c"o\00", align 1
@au_file = internal global ptr null, align 8
@.str.5.78 = private unnamed_addr constant [25 x i8] c"Sun/Next audio file name\00", align 1
@.str.6.79 = private unnamed_addr constant [2 x i8] c"-\00", align 1
@au_fd = internal unnamed_addr global i32 -1, align 4
@au_encoding = internal unnamed_addr global i1 false, align 4
@au_size = internal unnamed_addr global i32 0, align 4
@linear_fd = internal unnamed_addr global i32 -1, align 4
@.str.7.80 = private unnamed_addr constant [6 x i8] c"write\00", align 1
@.str.8.81 = private unnamed_addr constant [30 x i8] c"%s : No memory for ulaw data\0A\00", align 1
@.str.82 = private unnamed_addr constant [63 x i8] c"$Id: darray.c,v 1.13 1994/11/08 13:30:50 a904209 Exp a904209 $\00", align 1
@darray_id = dso_local local_unnamed_addr global ptr @.str.82, align 8
@.str.83 = private unnamed_addr constant [65 x i8] c"$Id: def_pars.c,v 1.13 1994/11/08 13:30:50 a904209 Exp a904209 $\00", align 1
@def_pars_id = dso_local local_unnamed_addr global ptr @.str.83, align 8
@.str.1.84 = private unnamed_addr constant [16 x i8] c"Synth paramters\00", align 1
@.str.2.85 = private unnamed_addr constant [2 x i8] c"q\00", align 1
@.str.3.86 = private unnamed_addr constant [25 x i8] c"Quiet - minimal messages\00", align 1
@.str.4.87 = private unnamed_addr constant [2 x i8] c"I\00", align 1
@.str.5.88 = private unnamed_addr constant [23 x i8] c"Impulse glottal source\00", align 1
@.str.6.89 = private unnamed_addr constant [2 x i8] c"c\00", align 1
@.str.7.90 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.8.91 = private unnamed_addr constant [24 x i8] c"Number cascade formants\00", align 1
@.str.9.92 = private unnamed_addr constant [2 x i8] c"F\00", align 1
@.str.10.93 = private unnamed_addr constant [11 x i8] c"F0 flutter\00", align 1
@.str.11.94 = private unnamed_addr constant [2 x i8] c"f\00", align 1
@.str.12.95 = private unnamed_addr constant [4 x i8] c"%lg\00", align 1
@.str.13.96 = private unnamed_addr constant [15 x i8] c"mSec per frame\00", align 1
@.str.14.97 = private unnamed_addr constant [2 x i8] c"t\00", align 1
@.str.15.98 = private unnamed_addr constant [8 x i8] c"Tilt dB\00", align 1
@.str.16.99 = private unnamed_addr constant [2 x i8] c"x\00", align 1
@.str.17.100 = private unnamed_addr constant [17 x i8] c"Base F0 in 0.1Hz\00", align 1
@.str.101 = private unnamed_addr constant [65 x i8] c"$Id: elements.c,v 1.13 1994/11/08 13:30:50 a904209 Exp a904209 $\00", align 1
@elements_id = dso_local local_unnamed_addr global ptr @.str.101, align 8
@.str.1.102 = private unnamed_addr constant [4 x i8] c"END\00", align 1
@.str.2.103 = private unnamed_addr constant [2 x i8] c"Q\00", align 1
@.str.3.104 = private unnamed_addr constant [2 x i8] c"P\00", align 1
@.str.4.105 = private unnamed_addr constant [2 x i8] c"p\00", align 1
@.str.5.106 = private unnamed_addr constant [3 x i8] c"PY\00", align 1
@.str.6.107 = private unnamed_addr constant [3 x i8] c"PZ\00", align 1
@.str.7.108 = private unnamed_addr constant [2 x i8] c"T\00", align 1
@.str.8.109 = private unnamed_addr constant [2 x i8] c"t\00", align 1
@.str.9.110 = private unnamed_addr constant [3 x i8] c"TY\00", align 1
@.str.10.111 = private unnamed_addr constant [3 x i8] c"TZ\00", align 1
@.str.11.112 = private unnamed_addr constant [2 x i8] c"K\00", align 1
@.str.12.113 = private unnamed_addr constant [2 x i8] c"k\00", align 1
@.str.13.114 = private unnamed_addr constant [3 x i8] c"KY\00", align 1
@.str.14.115 = private unnamed_addr constant [3 x i8] c"KZ\00", align 1
@.str.15.116 = private unnamed_addr constant [2 x i8] c"B\00", align 1
@.str.16.117 = private unnamed_addr constant [2 x i8] c"b\00", align 1
@.str.17.118 = private unnamed_addr constant [3 x i8] c"BY\00", align 1
@.str.18.119 = private unnamed_addr constant [3 x i8] c"BZ\00", align 1
@.str.19.120 = private unnamed_addr constant [2 x i8] c"D\00", align 1
@.str.20.121 = private unnamed_addr constant [2 x i8] c"d\00", align 1
@.str.21.122 = private unnamed_addr constant [3 x i8] c"DY\00", align 1
@.str.22.123 = private unnamed_addr constant [3 x i8] c"DZ\00", align 1
@.str.23.124 = private unnamed_addr constant [2 x i8] c"G\00", align 1
@.str.24.125 = private unnamed_addr constant [2 x i8] c"g\00", align 1
@.str.25.126 = private unnamed_addr constant [3 x i8] c"GY\00", align 1
@.str.26.127 = private unnamed_addr constant [3 x i8] c"GZ\00", align 1
@.str.27.128 = private unnamed_addr constant [2 x i8] c"M\00", align 1
@.str.28.129 = private unnamed_addr constant [2 x i8] c"m\00", align 1
@.str.29.130 = private unnamed_addr constant [2 x i8] c"N\00", align 1
@.str.30.131 = private unnamed_addr constant [2 x i8] c"n\00", align 1
@.str.31.132 = private unnamed_addr constant [3 x i8] c"NG\00", align 1
@.str.32.133 = private unnamed_addr constant [2 x i8] c"F\00", align 1
@.str.33.134 = private unnamed_addr constant [2 x i8] c"f\00", align 1
@.str.34.135 = private unnamed_addr constant [3 x i8] c"TH\00", align 1
@.str.35.136 = private unnamed_addr constant [2 x i8] c"S\00", align 1
@.str.36.137 = private unnamed_addr constant [2 x i8] c"s\00", align 1
@.str.37.138 = private unnamed_addr constant [3 x i8] c"SH\00", align 1
@.str.38.139 = private unnamed_addr constant [2 x i8] c"X\00", align 1
@.str.39.140 = private unnamed_addr constant [2 x i8] c"x\00", align 1
@.str.40.141 = private unnamed_addr constant [2 x i8] c"H\00", align 1
@.str.41.142 = private unnamed_addr constant [2 x i8] c"h\00", align 1
@.str.42.143 = private unnamed_addr constant [2 x i8] c"V\00", align 1
@.str.43.144 = private unnamed_addr constant [2 x i8] c"v\00", align 1
@.str.44.145 = private unnamed_addr constant [3 x i8] c"QQ\00", align 1
@.str.45.146 = private unnamed_addr constant [2 x i8] c"Z\00", align 1
@.str.46.147 = private unnamed_addr constant [3 x i8] c"DH\00", align 1
@.str.47.148 = private unnamed_addr constant [3 x i8] c"DI\00", align 1
@.str.48.149 = private unnamed_addr constant [2 x i8] c"z\00", align 1
@.str.49.150 = private unnamed_addr constant [3 x i8] c"ZZ\00", align 1
@.str.50.151 = private unnamed_addr constant [3 x i8] c"ZH\00", align 1
@.str.51.152 = private unnamed_addr constant [3 x i8] c"CH\00", align 1
@.str.52.153 = private unnamed_addr constant [3 x i8] c"CI\00", align 1
@.str.53.154 = private unnamed_addr constant [2 x i8] c"J\00", align 1
@.str.54.155 = private unnamed_addr constant [3 x i8] c"JY\00", align 1
@.str.55.156 = private unnamed_addr constant [2 x i8] c"L\00", align 1
@.str.56.157 = private unnamed_addr constant [2 x i8] c"l\00", align 1
@.str.57.158 = private unnamed_addr constant [3 x i8] c"LL\00", align 1
@.str.58.159 = private unnamed_addr constant [3 x i8] c"RX\00", align 1
@.str.59.160 = private unnamed_addr constant [2 x i8] c"R\00", align 1
@.str.60.161 = private unnamed_addr constant [6 x i8] c"<rzd>\00", align 1
@.str.61.162 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.62.163 = private unnamed_addr constant [2 x i8] c"W\00", align 1
@.str.63.164 = private unnamed_addr constant [2 x i8] c"w\00", align 1
@.str.64.165 = private unnamed_addr constant [2 x i8] c"Y\00", align 1
@.str.65.166 = private unnamed_addr constant [2 x i8] c"j\00", align 1
@.str.66.167 = private unnamed_addr constant [2 x i8] c"I\00", align 1
@.str.67.168 = private unnamed_addr constant [2 x i8] c"E\00", align 1
@.str.68.169 = private unnamed_addr constant [2 x i8] c"e\00", align 1
@.str.69.170 = private unnamed_addr constant [3 x i8] c"AA\00", align 1
@.str.70.171 = private unnamed_addr constant [2 x i8] c"&\00", align 1
@.str.71.172 = private unnamed_addr constant [2 x i8] c"U\00", align 1
@.str.72.173 = private unnamed_addr constant [2 x i8] c"O\00", align 1
@.str.73.174 = private unnamed_addr constant [2 x i8] c"0\00", align 1
@.str.74 = private unnamed_addr constant [3 x i8] c"A.\00", align 1
@.str.75 = private unnamed_addr constant [3 x i8] c"OO\00", align 1
@.str.76 = private unnamed_addr constant [2 x i8] c"A\00", align 1
@.str.77 = private unnamed_addr constant [2 x i8] c"@\00", align 1
@.str.78 = private unnamed_addr constant [3 x i8] c"EE\00", align 1
@.str.79 = private unnamed_addr constant [2 x i8] c"i\00", align 1
@.str.80 = private unnamed_addr constant [3 x i8] c"ER\00", align 1
@.str.81 = private unnamed_addr constant [2 x i8] c"3\00", align 1
@.str.82.175 = private unnamed_addr constant [3 x i8] c"V\22\00", align 1
@.str.83.176 = private unnamed_addr constant [3 x i8] c"AR\00", align 1
@.str.84 = private unnamed_addr constant [3 x i8] c"AW\00", align 1
@.str.85 = private unnamed_addr constant [3 x i8] c"UU\00", align 1
@.str.86 = private unnamed_addr constant [2 x i8] c"u\00", align 1
@.str.87 = private unnamed_addr constant [3 x i8] c"AI\00", align 1
@.str.88 = private unnamed_addr constant [3 x i8] c"IE\00", align 1
@.str.89 = private unnamed_addr constant [2 x i8] c"a\00", align 1
@.str.90 = private unnamed_addr constant [3 x i8] c"OI\00", align 1
@.str.91 = private unnamed_addr constant [2 x i8] c"o\00", align 1
@.str.92 = private unnamed_addr constant [3 x i8] c"OU\00", align 1
@.str.93 = private unnamed_addr constant [3 x i8] c"OV\00", align 1
@.str.94 = private unnamed_addr constant [3 x i8] c"OA\00", align 1
@.str.95 = private unnamed_addr constant [3 x i8] c"IA\00", align 1
@.str.96 = private unnamed_addr constant [3 x i8] c"IB\00", align 1
@.str.97 = private unnamed_addr constant [4 x i8] c"AIR\00", align 1
@.str.98 = private unnamed_addr constant [4 x i8] c"OOR\00", align 1
@.str.99 = private unnamed_addr constant [3 x i8] c"OR\00", align 1
@.str.100 = private unnamed_addr constant [3 x i8] c"fn\00", align 1
@.str.101.177 = private unnamed_addr constant [3 x i8] c"f1\00", align 1
@.str.102 = private unnamed_addr constant [3 x i8] c"f2\00", align 1
@.str.103 = private unnamed_addr constant [3 x i8] c"f3\00", align 1
@.str.104 = private unnamed_addr constant [3 x i8] c"b1\00", align 1
@.str.105 = private unnamed_addr constant [3 x i8] c"b2\00", align 1
@.str.106 = private unnamed_addr constant [3 x i8] c"b3\00", align 1
@.str.107 = private unnamed_addr constant [3 x i8] c"an\00", align 1
@.str.108 = private unnamed_addr constant [3 x i8] c"a1\00", align 1
@.str.109 = private unnamed_addr constant [3 x i8] c"a2\00", align 1
@.str.110 = private unnamed_addr constant [3 x i8] c"a3\00", align 1
@.str.111 = private unnamed_addr constant [3 x i8] c"a4\00", align 1
@.str.112 = private unnamed_addr constant [3 x i8] c"a5\00", align 1
@.str.113 = private unnamed_addr constant [3 x i8] c"a6\00", align 1
@.str.114 = private unnamed_addr constant [3 x i8] c"ab\00", align 1
@.str.115 = private unnamed_addr constant [3 x i8] c"av\00", align 1
@.str.116 = private unnamed_addr constant [4 x i8] c"avc\00", align 1
@.str.117 = private unnamed_addr constant [4 x i8] c"asp\00", align 1
@.str.118 = private unnamed_addr constant [3 x i8] c"af\00", align 1
@.str.178 = private unnamed_addr constant [64 x i8] c"$Id: english.c,v 1.13 1994/11/08 13:30:50 a904209 Exp a904209 $\00", align 1
@english_id = dso_local local_unnamed_addr global ptr @.str.178, align 8
@punct_rules = internal global [11 x [4 x ptr]] [[4 x ptr] [ptr @Anything, ptr @.str.1.292, ptr @Anything, ptr @.str.1.292], [4 x ptr] [ptr @Anything, ptr @.str.2.293, ptr @Anything, ptr @.str.3.191], [4 x ptr] [ptr @.str.4.198, ptr @.str.5.294, ptr @Anything, ptr @.str.6.179], [4 x ptr] [ptr @.str.7.199, ptr @.str.5.294, ptr @Anything, ptr @.str.6.179], [4 x ptr] [ptr @.str.8.182, ptr @.str.5.294, ptr @Anything, ptr @.str.6.179], [4 x ptr] [ptr @Anything, ptr @.str.9.201, ptr @Anything, ptr @.str.3.191], [4 x ptr] [ptr @Anything, ptr @.str.10.295, ptr @Anything, ptr @.str.1.292], [4 x ptr] [ptr @Anything, ptr @.str.4.198, ptr @Anything, ptr @.str.1.292], [4 x ptr] [ptr @Anything, ptr @.str.11.296, ptr @Anything, ptr @.str.1.292], [4 x ptr] [ptr @Anything, ptr @.str.12.297, ptr @Anything, ptr @.str.1.292], [4 x ptr] [ptr @Anything, ptr null, ptr @Anything, ptr @Silent]], align 16
@A_rules = internal global [35 x [4 x ptr]] [[4 x ptr] [ptr @Anything, ptr @.str.13.196, ptr @Nothing, ptr @.str.14.256], [4 x ptr] [ptr @Nothing, ptr @.str.15.257, ptr @Nothing, ptr @.str.16.258], [4 x ptr] [ptr @Nothing, ptr @.str.17.259, ptr @.str.18.195, ptr @.str.19.260], [4 x ptr] [ptr @Anything, ptr @.str.17.259, ptr @.str.8.182, ptr @.str.20.218], [4 x ptr] [ptr @.str.21.187, ptr @.str.22.261, ptr @.str.8.182, ptr @.str.23.262], [4 x ptr] [ptr @Anything, ptr @.str.13.196, ptr @.str.24.185, ptr @.str.14.256], [4 x ptr] [ptr @Anything, ptr @.str.25.263, ptr @Anything, ptr @.str.18.195], [4 x ptr] [ptr @.str.26.181, ptr @.str.27.264, ptr @Anything, ptr @.str.28.265], [4 x ptr] [ptr @Anything, ptr @.str.13.196, ptr @.str.29.266, ptr @.str.30.219], [4 x ptr] [ptr @.str.31.193, ptr @.str.32.267, ptr @Anything, ptr @.str.33.268], [4 x ptr] [ptr @Nothing, ptr @.str.34.269, ptr @.str.8.182, ptr @.str.35.207], [4 x ptr] [ptr @Anything, ptr @.str.36.270, ptr @Anything, ptr @.str.37.271], [4 x ptr] [ptr @.str.31.193, ptr @.str.38.272, ptr @.str.39.204, ptr @.str.40.273], [4 x ptr] [ptr @Anything, ptr @.str.13.196, ptr @.str.41.183, ptr @.str.42.274], [4 x ptr] [ptr @.str.26.181, ptr @.str.13.196, ptr @.str.43.275, ptr @.str.30.219], [4 x ptr] [ptr @Anything, ptr @.str.13.196, ptr @.str.44.203, ptr @.str.30.219], [4 x ptr] [ptr @Nothing, ptr @.str.45.276, ptr @Anything, ptr @.str.19.260], [4 x ptr] [ptr @Anything, ptr @.str.45.276, ptr @Anything, ptr @.str.46.277], [4 x ptr] [ptr @.str.26.181, ptr @.str.17.259, ptr @Nothing, ptr @.str.16.258], [4 x ptr] [ptr @Anything, ptr @.str.17.259, ptr @Nothing, ptr @.str.47.190], [4 x ptr] [ptr @Anything, ptr @.str.17.259, ptr @Anything, ptr @.str.16.258], [4 x ptr] [ptr @Anything, ptr @.str.48.278, ptr @Anything, ptr @.str.20.218], [4 x ptr] [ptr @Anything, ptr @.str.49.279, ptr @Anything, ptr @.str.30.219], [4 x ptr] [ptr @Anything, ptr @.str.50.280, ptr @Anything, ptr @.str.30.219], [4 x ptr] [ptr @Anything, ptr @.str.51.281, ptr @Anything, ptr @.str.18.195], [4 x ptr] [ptr @.str.31.193, ptr @.str.34.269, ptr @Nothing, ptr @.str.35.207], [4 x ptr] [ptr @.str.31.193, ptr @.str.52.282, ptr @Nothing, ptr @.str.53.283], [4 x ptr] [ptr @Anything, ptr @.str.54.284, ptr @Anything, ptr @.str.55.285], [4 x ptr] [ptr @Anything, ptr @.str.34.269, ptr @.str.21.187, ptr @.str.56.286], [4 x ptr] [ptr @.str.26.181, ptr @.str.57.287, ptr @Anything, ptr @.str.58.288], [4 x ptr] [ptr @Anything, ptr @.str.57.287, ptr @Anything, ptr @.str.59.289], [4 x ptr] [ptr @Anything, ptr @.str.60.290, ptr @.str.61.206, ptr @.str.62.291], [4 x ptr] [ptr @.str.21.187, ptr @.str.13.196, ptr @.str.63.184, ptr @.str.30.219], [4 x ptr] [ptr @Anything, ptr @.str.13.196, ptr @Anything, ptr @.str.42.274], [4 x ptr] [ptr @Anything, ptr null, ptr @Anything, ptr @Silent]], align 16
@B_rules = internal global [7 x [4 x ptr]] [[4 x ptr] [ptr @Nothing, ptr @.str.64.244, ptr @.str.63.184, ptr @.str.65.245], [4 x ptr] [ptr @Anything, ptr @.str.66.246, ptr @Anything, ptr @.str.67.247], [4 x ptr] [ptr @Nothing, ptr @.str.68.248, ptr @Nothing, ptr @.str.69.249], [4 x ptr] [ptr @Nothing, ptr @.str.70.250, ptr @.str.8.182, ptr @.str.71.251], [4 x ptr] [ptr @Anything, ptr @.str.72.252, ptr @Anything, ptr @.str.73.253], [4 x ptr] [ptr @Anything, ptr @.str.74.254, ptr @Anything, ptr @.str.75.255], [4 x ptr] [ptr @Anything, ptr null, ptr @Anything, ptr @Silent]], align 16
@C_rules = internal global [12 x [4 x ptr]] [[4 x ptr] [ptr @Nothing, ptr @.str.76.189, ptr @.str.21.187, ptr @.str.77.202], [4 x ptr] [ptr @.str.78.236, ptr @.str.76.189, ptr @Anything, ptr @.str.77.202], [4 x ptr] [ptr @Anything, ptr @.str.76.189, ptr @Anything, ptr @.str.79.194], [4 x ptr] [ptr @.str.80.237, ptr @.str.81.238, ptr @.str.8.182, ptr @.str.82.239], [4 x ptr] [ptr @Anything, ptr @.str.81.238, ptr @.str.13.196, ptr @.str.83.186], [4 x ptr] [ptr @Anything, ptr @.str.81.238, ptr @.str.18.195, ptr @.str.83.186], [4 x ptr] [ptr @Anything, ptr @.str.81.238, ptr @.str.84.240, ptr @.str.83.186], [4 x ptr] [ptr @Anything, ptr @.str.85.205, ptr @.str.61.206, ptr @.str.86.200], [4 x ptr] [ptr @Anything, ptr @.str.87.241, ptr @Anything, ptr @.str.77.202], [4 x ptr] [ptr @Anything, ptr @.str.88.242, ptr @.str.89.192, ptr @.str.90.243], [4 x ptr] [ptr @Anything, ptr @.str.85.205, ptr @Anything, ptr @.str.77.202], [4 x ptr] [ptr @Anything, ptr null, ptr @Anything, ptr @Silent]], align 16
@D_rules = internal global [11 x [4 x ptr]] [[4 x ptr] [ptr @.str.31.193, ptr @.str.91.220, ptr @Nothing, ptr @.str.92.221], [4 x ptr] [ptr @.str.93.222, ptr @.str.94.188, ptr @Nothing, ptr @.str.95.211], [4 x ptr] [ptr @.str.96.223, ptr @.str.94.188, ptr @Nothing, ptr @.str.97.197], [4 x ptr] [ptr @Nothing, ptr @.str.98.224, ptr @.str.63.184, ptr @.str.99.225], [4 x ptr] [ptr @Nothing, ptr @.str.100.226, ptr @Nothing, ptr @.str.101.227], [4 x ptr] [ptr @Nothing, ptr @.str.102.228, ptr @Anything, ptr @.str.103.229], [4 x ptr] [ptr @Nothing, ptr @.str.104.230, ptr @Anything, ptr @.str.105.231], [4 x ptr] [ptr @Nothing, ptr @.str.106.232, ptr @Anything, ptr @.str.107.233], [4 x ptr] [ptr @Anything, ptr @.str.108.234, ptr @.str.13.196, ptr @.str.109.235], [4 x ptr] [ptr @Anything, ptr @.str.94.188, ptr @Anything, ptr @.str.95.211], [4 x ptr] [ptr @Anything, ptr null, ptr @Anything, ptr @Silent]], align 16
@E_rules = internal global [53 x [4 x ptr]] [[4 x ptr] [ptr @.str.31.193, ptr @.str.39.204, ptr @Nothing, ptr @.str.3.191], [4 x ptr] [ptr @.str.110.209, ptr @.str.39.204, ptr @Nothing, ptr @.str.3.191], [4 x ptr] [ptr @.str.26.181, ptr @.str.39.204, ptr @Nothing, ptr @.str.111.180], [4 x ptr] [ptr @.str.8.182, ptr @.str.112.210, ptr @Nothing, ptr @.str.95.211], [4 x ptr] [ptr @.str.31.193, ptr @.str.39.204, ptr @.str.113.212, ptr @.str.3.191], [4 x ptr] [ptr @Anything, ptr @.str.114.213, ptr @.str.115.214, ptr @.str.116.215], [4 x ptr] [ptr @Anything, ptr @.str.39.204, ptr @.str.44.203, ptr @.str.111.180], [4 x ptr] [ptr @Anything, ptr @.str.117.216, ptr @.str.8.182, ptr @.str.118.217], [4 x ptr] [ptr @Anything, ptr @.str.117.216, ptr @Anything, ptr @.str.119], [4 x ptr] [ptr @.str.31.193, ptr @.str.115.214, ptr @.str.8.182, ptr @.str.47.190], [4 x ptr] [ptr @Anything, ptr @.str.115.214, ptr @.str.8.182, ptr @.str.20.218], [4 x ptr] [ptr @Anything, ptr @.str.115.214, ptr @Anything, ptr @.str.47.190], [4 x ptr] [ptr @Nothing, ptr @.str.120, ptr @Anything, ptr @.str.121], [4 x ptr] [ptr @.str.31.193, ptr @.str.39.204, ptr @.str.122, ptr @.str.3.191], [4 x ptr] [ptr @.str.123, ptr @.str.124, ptr @Anything, ptr @.str.125], [4 x ptr] [ptr @.str.83.186, ptr @.str.124, ptr @Anything, ptr @.str.125], [4 x ptr] [ptr @.str.126, ptr @.str.124, ptr @Anything, ptr @.str.125], [4 x ptr] [ptr @.str.94.188, ptr @.str.124, ptr @Anything, ptr @.str.125], [4 x ptr] [ptr @.str.127, ptr @.str.124, ptr @Anything, ptr @.str.125], [4 x ptr] [ptr @.str.128, ptr @.str.124, ptr @Anything, ptr @.str.125], [4 x ptr] [ptr @.str.129, ptr @.str.124, ptr @Anything, ptr @.str.125], [4 x ptr] [ptr @.str.130, ptr @.str.124, ptr @Anything, ptr @.str.125], [4 x ptr] [ptr @.str.131, ptr @.str.124, ptr @Anything, ptr @.str.125], [4 x ptr] [ptr @.str.76.189, ptr @.str.124, ptr @Anything, ptr @.str.125], [4 x ptr] [ptr @.str.132, ptr @.str.124, ptr @Anything, ptr @.str.125], [4 x ptr] [ptr @Anything, ptr @.str.124, ptr @Anything, ptr @.str.133], [4 x ptr] [ptr @Anything, ptr @.str.39.204, ptr @.str.18.195, ptr @.str.111.180], [4 x ptr] [ptr @.str.134, ptr @.str.135, ptr @Nothing, ptr @.str.136], [4 x ptr] [ptr @.str.137, ptr @.str.135, ptr @Nothing, ptr @.str.136], [4 x ptr] [ptr @.str.138, ptr @.str.135, ptr @Nothing, ptr @.str.136], [4 x ptr] [ptr @.str.139, ptr @.str.135, ptr @Nothing, ptr @.str.136], [4 x ptr] [ptr @.str.140, ptr @.str.135, ptr @Nothing, ptr @.str.136], [4 x ptr] [ptr @.str.141, ptr @.str.135, ptr @Nothing, ptr @.str.136], [4 x ptr] [ptr @.str.142, ptr @.str.135, ptr @Nothing, ptr @.str.136], [4 x ptr] [ptr @.str.143, ptr @.str.135, ptr @Nothing, ptr @.str.136], [4 x ptr] [ptr @.str.31.193, ptr @.str.39.204, ptr @.str.144, ptr @.str.3.191], [4 x ptr] [ptr @.str.31.193, ptr @.str.145, ptr @Nothing, ptr @.str.146], [4 x ptr] [ptr @.str.31.193, ptr @.str.147, ptr @Anything, ptr @.str.148], [4 x ptr] [ptr @Anything, ptr @.str.149, ptr @Anything, ptr @.str.150], [4 x ptr] [ptr @Anything, ptr @.str.151, ptr @Anything, ptr @.str.111.180], [4 x ptr] [ptr @Anything, ptr @.str.152, ptr @Anything, ptr @.str.153], [4 x ptr] [ptr @Nothing, ptr @.str.154, ptr @.str.21.187, ptr @.str.47.190], [4 x ptr] [ptr @Anything, ptr @.str.155, ptr @Anything, ptr @.str.156], [4 x ptr] [ptr @.str.31.193, ptr @.str.157, ptr @Nothing, ptr @.str.158], [4 x ptr] [ptr @Anything, ptr @.str.157, ptr @.str.159, ptr @.str.160], [4 x ptr] [ptr @Anything, ptr @.str.157, ptr @Anything, ptr @.str.111.180], [4 x ptr] [ptr @Anything, ptr @.str.161, ptr @Anything, ptr @.str.30.219], [4 x ptr] [ptr @Anything, ptr @.str.162, ptr @Anything, ptr @.str.111.180], [4 x ptr] [ptr @Nothing, ptr @.str.163, ptr @Anything, ptr @.str.164], [4 x ptr] [ptr @Anything, ptr @.str.165, ptr @Anything, ptr @.str.111.180], [4 x ptr] [ptr @Anything, ptr @.str.166, ptr @Anything, ptr @.str.133], [4 x ptr] [ptr @Anything, ptr @.str.39.204, ptr @Anything, ptr @.str.160], [4 x ptr] [ptr @Anything, ptr null, ptr @Anything, ptr @Silent]], align 16
@F_rules = internal global [3 x [4 x ptr]] [[4 x ptr] [ptr @Anything, ptr @.str.167, ptr @Anything, ptr @.str.150], [4 x ptr] [ptr @Anything, ptr @.str.168, ptr @Anything, ptr @.str.169], [4 x ptr] [ptr @Anything, ptr null, ptr @Anything, ptr @Silent]], align 16
@G_rules = internal global [11 x [4 x ptr]] [[4 x ptr] [ptr @Anything, ptr @.str.170, ptr @Anything, ptr @.str.171], [4 x ptr] [ptr @Nothing, ptr @.str.172, ptr @.str.173, ptr @.str.174], [4 x ptr] [ptr @Anything, ptr @.str.175, ptr @.str.123, ptr @.str.176], [4 x ptr] [ptr @.str.159, ptr @.str.177, ptr @Anything, ptr @.str.178.208], [4 x ptr] [ptr @Anything, ptr @.str.179, ptr @Anything, ptr @.str.174], [4 x ptr] [ptr @.str.180, ptr @.str.172, ptr @Anything, ptr @.str.174], [4 x ptr] [ptr @Anything, ptr @.str.172, ptr @.str.61.206, ptr @.str.181], [4 x ptr] [ptr @Anything, ptr @.str.182, ptr @Anything, ptr @.str.183], [4 x ptr] [ptr @.str.8.182, ptr @.str.184, ptr @Anything, ptr @.str.3.191], [4 x ptr] [ptr @Anything, ptr @.str.172, ptr @Anything, ptr @.str.174], [4 x ptr] [ptr @Anything, ptr null, ptr @Anything, ptr @Silent]], align 16
@H_rules = internal global [7 x [4 x ptr]] [[4 x ptr] [ptr @Nothing, ptr @.str.185, ptr @Anything, ptr @.str.186], [4 x ptr] [ptr @Nothing, ptr @.str.187, ptr @Anything, ptr @.str.188], [4 x ptr] [ptr @Nothing, ptr @.str.189, ptr @Anything, ptr @.str.190], [4 x ptr] [ptr @Anything, ptr @.str.191, ptr @Anything, ptr @.str.192], [4 x ptr] [ptr @Anything, ptr @.str.193, ptr @.str.8.182, ptr @.str.194], [4 x ptr] [ptr @Anything, ptr @.str.193, ptr @Anything, ptr @.str.3.191], [4 x ptr] [ptr @Anything, ptr null, ptr @Anything, ptr @Silent]], align 16
@I_rules = internal global [32 x [4 x ptr]] [[4 x ptr] [ptr @Nothing, ptr @.str.195, ptr @Nothing, ptr @.str.196], [4 x ptr] [ptr @Nothing, ptr @.str.197, ptr @Nothing, ptr @.str.198], [4 x ptr] [ptr @Nothing, ptr @.str.198, ptr @Anything, ptr @.str.199], [4 x ptr] [ptr @Nothing, ptr @.str.200, ptr @Nothing, ptr @.str.164], [4 x ptr] [ptr @Anything, ptr @.str.198, ptr @.str.94.188, ptr @.str.201], [4 x ptr] [ptr @Anything, ptr @.str.202, ptr @Anything, ptr @.str.203], [4 x ptr] [ptr @.str.204, ptr @.str.205, ptr @Anything, ptr @.str.206], [4 x ptr] [ptr @Anything, ptr @.str.205, ptr @Nothing, ptr @.str.207], [4 x ptr] [ptr @Anything, ptr @.str.208, ptr @Anything, ptr @.str.209], [4 x ptr] [ptr @Anything, ptr @.str.210, ptr @.str.123, ptr @.str.211], [4 x ptr] [ptr @.str.26.181, ptr @.str.200, ptr @.str.89.192, ptr @.str.164], [4 x ptr] [ptr @Anything, ptr @.str.200, ptr @.str.89.192, ptr @.str.111.180], [4 x ptr] [ptr @Anything, ptr @.str.210, ptr @Anything, ptr @.str.111.180], [4 x ptr] [ptr @Anything, ptr @.str.200, ptr @.str.41.183, ptr @.str.200], [4 x ptr] [ptr @Anything, ptr @.str.212, ptr @.str.8.182, ptr @.str.213], [4 x ptr] [ptr @Anything, ptr @.str.214, ptr @.str.89.192, ptr @.str.215], [4 x ptr] [ptr @Anything, ptr @.str.216, ptr @.str.89.192, ptr @.str.215], [4 x ptr] [ptr @Anything, ptr @.str.200, ptr @.str.217, ptr @.str.164], [4 x ptr] [ptr @.str.218, ptr @.str.200, ptr @.str.219, ptr @.str.200], [4 x ptr] [ptr @Anything, ptr @.str.200, ptr @.str.220, ptr @.str.164], [4 x ptr] [ptr @.str.221, ptr @.str.200, ptr @.str.219, ptr @.str.200], [4 x ptr] [ptr @Anything, ptr @.str.200, ptr @.str.219, ptr @.str.164], [4 x ptr] [ptr @Anything, ptr @.str.212, ptr @Anything, ptr @.str.47.190], [4 x ptr] [ptr @Anything, ptr @.str.222, ptr @Anything, ptr @.str.164], [4 x ptr] [ptr @Anything, ptr @.str.223, ptr @Anything, ptr @.str.224], [4 x ptr] [ptr @Anything, ptr @.str.225, ptr @Nothing, ptr @.str.201], [4 x ptr] [ptr @Anything, ptr @.str.225, ptr @.str.21.187, ptr @.str.201], [4 x ptr] [ptr @Anything, ptr @.str.225, ptr @.str.89.192, ptr @.str.201], [4 x ptr] [ptr @Anything, ptr @.str.226, ptr @Anything, ptr @.str.227], [4 x ptr] [ptr @.str.21.187, ptr @.str.200, ptr @.str.63.184, ptr @.str.164], [4 x ptr] [ptr @Anything, ptr @.str.200, ptr @Anything, ptr @.str.200], [4 x ptr] [ptr @Anything, ptr null, ptr @Anything, ptr @Silent]], align 16
@J_rules = internal global [2 x [4 x ptr]] [[4 x ptr] [ptr @Anything, ptr @.str.130, ptr @Anything, ptr @.str.181], [4 x ptr] [ptr @Anything, ptr null, ptr @Anything, ptr @Silent]], align 16
@K_rules = internal global [3 x [4 x ptr]] [[4 x ptr] [ptr @Nothing, ptr @.str.228, ptr @.str.129, ptr @.str.3.191], [4 x ptr] [ptr @Anything, ptr @.str.228, ptr @Anything, ptr @.str.77.202], [4 x ptr] [ptr @Anything, ptr null, ptr @Anything, ptr @Silent]], align 16
@L_rules = internal global [6 x [4 x ptr]] [[4 x ptr] [ptr @Anything, ptr @.str.229, ptr @.str.230, ptr @.str.231], [4 x ptr] [ptr @.str.127, ptr @.str.127, ptr @Anything, ptr @.str.3.191], [4 x ptr] [ptr @.str.221, ptr @.str.127, ptr @.str.89.192, ptr @.str.35.207], [4 x ptr] [ptr @Anything, ptr @.str.232, ptr @Anything, ptr @.str.233], [4 x ptr] [ptr @Anything, ptr @.str.127, ptr @Anything, ptr @.str.234], [4 x ptr] [ptr @Anything, ptr null, ptr @Anything, ptr @Silent]], align 16
@M_rules = internal global [4 x [4 x ptr]] [[4 x ptr] [ptr @Anything, ptr @.str.235, ptr @Anything, ptr @.str.236], [4 x ptr] [ptr @.str.8.182, ptr @.str.237, ptr @.str.8.182, ptr @.str.238], [4 x ptr] [ptr @Anything, ptr @.str.239, ptr @Anything, ptr @.str.238], [4 x ptr] [ptr @Anything, ptr null, ptr @Anything, ptr @Silent]], align 16
@N_rules = internal global [10 x [4 x ptr]] [[4 x ptr] [ptr @.str.39.204, ptr @.str.240, ptr @.str.61.206, ptr @.str.241], [4 x ptr] [ptr @Anything, ptr @.str.240, ptr @.str.126, ptr @.str.242], [4 x ptr] [ptr @Anything, ptr @.str.240, ptr @.str.8.182, ptr @.str.242], [4 x ptr] [ptr @Anything, ptr @.str.243, ptr @.str.89.192, ptr @.str.244], [4 x ptr] [ptr @Anything, ptr @.str.240, ptr @Anything, ptr @.str.129], [4 x ptr] [ptr @Anything, ptr @.str.245, ptr @Anything, ptr @.str.246], [4 x ptr] [ptr @Nothing, ptr @.str.247, ptr @Nothing, ptr @.str.248], [4 x ptr] [ptr @.str.8.182, ptr @.str.240, ptr @Nothing, ptr @.str.242], [4 x ptr] [ptr @Anything, ptr @.str.129, ptr @Anything, ptr @.str.249], [4 x ptr] [ptr @Anything, ptr null, ptr @Anything, ptr @Silent]], align 16
@O_rules = internal global [49 x [4 x ptr]] [[4 x ptr] [ptr @Anything, ptr @.str.250, ptr @Nothing, ptr @.str.251], [4 x ptr] [ptr @Anything, ptr @.str.252, ptr @Anything, ptr @.str.253], [4 x ptr] [ptr @.str.31.193, ptr @.str.254, ptr @Nothing, ptr @.str.47.190], [4 x ptr] [ptr @.str.31.193, ptr @.str.255, ptr @Nothing, ptr @.str.256], [4 x ptr] [ptr @Anything, ptr @.str.254, ptr @Anything, ptr @.str.257], [4 x ptr] [ptr @Nothing, ptr @.str.258, ptr @Anything, ptr @.str.259], [4 x ptr] [ptr @Anything, ptr @.str.260, ptr @Anything, ptr @.str.261], [4 x ptr] [ptr @Nothing, ptr @.str.262, ptr @Anything, ptr @.str.263], [4 x ptr] [ptr @Anything, ptr @.str.264, ptr @Anything, ptr @.str.265], [4 x ptr] [ptr @Anything, ptr @.str.18.195, ptr @.str.44.203, ptr @.str.261], [4 x ptr] [ptr @Anything, ptr @.str.18.195, ptr @.str.266, ptr @.str.261], [4 x ptr] [ptr @Anything, ptr @.str.18.195, ptr @.str.267, ptr @.str.261], [4 x ptr] [ptr @Anything, ptr @.str.268, ptr @.str.94.188, ptr @.str.269], [4 x ptr] [ptr @Anything, ptr @.str.270, ptr @Anything, ptr @.str.271], [4 x ptr] [ptr @Anything, ptr @.str.272, ptr @Anything, ptr @.str.273], [4 x ptr] [ptr @Nothing, ptr @.str.274, ptr @Anything, ptr @.str.275], [4 x ptr] [ptr @.str.193, ptr @.str.274, ptr @.str.276, ptr @.str.275], [4 x ptr] [ptr @Anything, ptr @.str.277, ptr @Anything, ptr @.str.278], [4 x ptr] [ptr @Anything, ptr @.str.279, ptr @Anything, ptr @.str.257], [4 x ptr] [ptr @Anything, ptr @.str.280, ptr @Anything, ptr @.str.281], [4 x ptr] [ptr @.str.21.187, ptr @.str.274, ptr @.str.282, ptr @.str.283], [4 x ptr] [ptr @Anything, ptr @.str.284, ptr @Anything, ptr @.str.285], [4 x ptr] [ptr @Anything, ptr @.str.274, ptr @Anything, ptr @.str.275], [4 x ptr] [ptr @Anything, ptr @.str.286, ptr @Anything, ptr @.str.287], [4 x ptr] [ptr @Anything, ptr @.str.288, ptr @Anything, ptr @.str.289], [4 x ptr] [ptr @Anything, ptr @.str.290, ptr @Anything, ptr @.str.287], [4 x ptr] [ptr @Anything, ptr @.str.291, ptr @Anything, ptr @.str.257], [4 x ptr] [ptr @Anything, ptr @.str.292, ptr @Anything, ptr @.str.293], [4 x ptr] [ptr @Anything, ptr @.str.294, ptr @Anything, ptr @.str.281], [4 x ptr] [ptr @Anything, ptr @.str.295, ptr @Anything, ptr @.str.125], [4 x ptr] [ptr @Anything, ptr @.str.18.195, ptr @.str.39.204, ptr @.str.261], [4 x ptr] [ptr @Anything, ptr @.str.18.195, ptr @Nothing, ptr @.str.261], [4 x ptr] [ptr @Anything, ptr @.str.296, ptr @Anything, ptr @.str.261], [4 x ptr] [ptr @Nothing, ptr @.str.297, ptr @Anything, ptr @.str.298], [4 x ptr] [ptr @Nothing, ptr @.str.299, ptr @Anything, ptr @.str.300], [4 x ptr] [ptr @Anything, ptr @.str.301, ptr @Anything, ptr @.str.302], [4 x ptr] [ptr @.str.85.205, ptr @.str.18.195, ptr @.str.129, ptr @.str.303], [4 x ptr] [ptr @Anything, ptr @.str.18.195, ptr @.str.240, ptr @.str.18.195], [4 x ptr] [ptr @.str.304, ptr @.str.18.195, ptr @.str.129, ptr @.str.283], [4 x ptr] [ptr @.str.200, ptr @.str.305, ptr @Anything, ptr @.str.306], [4 x ptr] [ptr @.str.31.193, ptr @.str.305, ptr @Nothing, ptr @.str.306], [4 x ptr] [ptr @.str.307, ptr @.str.305, ptr @Anything, ptr @.str.306], [4 x ptr] [ptr @Anything, ptr @.str.18.195, ptr @.str.308, ptr @.str.261], [4 x ptr] [ptr @Anything, ptr @.str.250, ptr @.str.21.187, ptr @.str.309], [4 x ptr] [ptr @Anything, ptr @.str.310, ptr @Anything, ptr @.str.311], [4 x ptr] [ptr @Anything, ptr @.str.312, ptr @Nothing, ptr @.str.313], [4 x ptr] [ptr @.str.221, ptr @.str.314, ptr @Anything, ptr @.str.315], [4 x ptr] [ptr @Anything, ptr @.str.18.195, ptr @Anything, ptr @.str.303], [4 x ptr] [ptr @Anything, ptr null, ptr @Anything, ptr @Silent]], align 16
@P_rules = internal global [6 x [4 x ptr]] [[4 x ptr] [ptr @Anything, ptr @.str.316, ptr @Anything, ptr @.str.169], [4 x ptr] [ptr @Anything, ptr @.str.317, ptr @Anything, ptr @.str.318], [4 x ptr] [ptr @Anything, ptr @.str.319, ptr @Anything, ptr @.str.320], [4 x ptr] [ptr @Anything, ptr @.str.321, ptr @Nothing, ptr @.str.322], [4 x ptr] [ptr @Anything, ptr @.str.323, ptr @Anything, ptr @.str.324], [4 x ptr] [ptr @Anything, ptr null, ptr @Anything, ptr @Silent]], align 16
@Q_rules = internal global [4 x [4 x ptr]] [[4 x ptr] [ptr @Anything, ptr @.str.325, ptr @Anything, ptr @.str.326], [4 x ptr] [ptr @Anything, ptr @.str.327, ptr @Anything, ptr @.str.328], [4 x ptr] [ptr @Anything, ptr @.str.329, ptr @Anything, ptr @.str.77.202], [4 x ptr] [ptr @Anything, ptr null, ptr @Anything, ptr @Silent]], align 16
@R_rules = internal global [3 x [4 x ptr]] [[4 x ptr] [ptr @Nothing, ptr @.str.330, ptr @.str.63.184, ptr @.str.331], [4 x ptr] [ptr @Anything, ptr @.str.126, ptr @Anything, ptr @.str.332], [4 x ptr] [ptr @Anything, ptr null, ptr @Anything, ptr @Silent]], align 16
@S_rules = internal global [24 x [4 x ptr]] [[4 x ptr] [ptr @Anything, ptr @.str.132, ptr @Anything, ptr @.str.83.186], [4 x ptr] [ptr @.str.8.182, ptr @.str.333, ptr @Anything, ptr @.str.334], [4 x ptr] [ptr @Anything, ptr @.str.335, ptr @Anything, ptr @.str.336], [4 x ptr] [ptr @.str.8.182, ptr @.str.337, ptr @.str.8.182, ptr @.str.338], [4 x ptr] [ptr @Anything, ptr @.str.337, ptr @.str.8.182, ptr @.str.339], [4 x ptr] [ptr @.str.8.182, ptr @.str.159, ptr @.str.8.182, ptr @.str.340], [4 x ptr] [ptr @.str.8.182, ptr @.str.341, ptr @.str.8.182, ptr @.str.342], [4 x ptr] [ptr @.str.8.182, ptr @.str.343, ptr @Nothing, ptr @.str.344], [4 x ptr] [ptr @.str.8.182, ptr @.str.83.186, ptr @.str.8.182, ptr @.str.6.179], [4 x ptr] [ptr @Anything, ptr @.str.345, ptr @Anything, ptr @.str.346], [4 x ptr] [ptr @.str.21.187, ptr @.str.333, ptr @Anything, ptr @.str.347], [4 x ptr] [ptr @Anything, ptr @.str.83.186, ptr @.str.83.186, ptr @.str.3.191], [4 x ptr] [ptr @.str.4.198, ptr @.str.83.186, ptr @Nothing, ptr @.str.6.179], [4 x ptr] [ptr @.str.7.199, ptr @.str.83.186, ptr @Nothing, ptr @.str.6.179], [4 x ptr] [ptr @.str.348, ptr @.str.83.186, ptr @Nothing, ptr @.str.6.179], [4 x ptr] [ptr @.str.349, ptr @.str.83.186, ptr @Nothing, ptr @.str.86.200], [4 x ptr] [ptr @.str.350, ptr @.str.83.186, ptr @Nothing, ptr @.str.86.200], [4 x ptr] [ptr @.str.351, ptr @.str.83.186, ptr @Nothing, ptr @.str.6.179], [4 x ptr] [ptr @Nothing, ptr @.str.352, ptr @Anything, ptr @.str.353], [4 x ptr] [ptr @Anything, ptr @.str.83.186, ptr @.str.354, ptr @.str.3.191], [4 x ptr] [ptr @.str.8.182, ptr @.str.355, ptr @Anything, ptr @.str.356], [4 x ptr] [ptr @.str.8.182, ptr @.str.357, ptr @.str.9.201, ptr @.str.358], [4 x ptr] [ptr @Anything, ptr @.str.83.186, ptr @Anything, ptr @.str.86.200], [4 x ptr] [ptr @Anything, ptr null, ptr @Anything, ptr @Silent]], align 16
@T_rules = internal global [27 x [4 x ptr]] [[4 x ptr] [ptr @Nothing, ptr @.str.359, ptr @Nothing, ptr @.str.360], [4 x ptr] [ptr @Anything, ptr @.str.361, ptr @Nothing, ptr @.str.362], [4 x ptr] [ptr @Anything, ptr @.str.363, ptr @Nothing, ptr @.str.364], [4 x ptr] [ptr @Nothing, ptr @.str.365, ptr @Nothing, ptr @.str.366], [4 x ptr] [ptr @Nothing, ptr @.str.367, ptr @Anything, ptr @.str.368], [4 x ptr] [ptr @Nothing, ptr @.str.369, ptr @Anything, ptr @.str.370], [4 x ptr] [ptr @Anything, ptr @.str.371, ptr @Anything, ptr @.str.372], [4 x ptr] [ptr @Anything, ptr @.str.373, ptr @Anything, ptr @.str.370], [4 x ptr] [ptr @Nothing, ptr @.str.374, ptr @Nothing, ptr @.str.375], [4 x ptr] [ptr @Nothing, ptr @.str.376, ptr @Nothing, ptr @.str.377], [4 x ptr] [ptr @Anything, ptr @.str.378, ptr @Nothing, ptr @.str.379], [4 x ptr] [ptr @Nothing, ptr @.str.380, ptr @Anything, ptr @.str.381], [4 x ptr] [ptr @Anything, ptr @.str.382, ptr @Anything, ptr @.str.383], [4 x ptr] [ptr @Anything, ptr @.str.384, ptr @Anything, ptr @.str.385], [4 x ptr] [ptr @Anything, ptr @.str.386, ptr @Nothing, ptr @.str.387], [4 x ptr] [ptr @Nothing, ptr @.str.388, ptr @Anything, ptr @.str.389], [4 x ptr] [ptr @Anything, ptr @.str.131, ptr @Anything, ptr @.str.123], [4 x ptr] [ptr @.str.31.193, ptr @.str.390, ptr @Nothing, ptr @.str.391], [4 x ptr] [ptr @.str.83.186, ptr @.str.392, ptr @.str.393, ptr @.str.79.194], [4 x ptr] [ptr @Anything, ptr @.str.392, ptr @.str.18.195, ptr @.str.83.186], [4 x ptr] [ptr @Anything, ptr @.str.392, ptr @.str.13.196, ptr @.str.83.186], [4 x ptr] [ptr @Anything, ptr @.str.394, ptr @Anything, ptr @.str.347], [4 x ptr] [ptr @Anything, ptr @.str.395, ptr @.str.8.182, ptr @.str.396], [4 x ptr] [ptr @Anything, ptr @.str.397, ptr @.str.13.196, ptr @.str.398], [4 x ptr] [ptr @Nothing, ptr @.str.399, ptr @Anything, ptr @.str.362], [4 x ptr] [ptr @Anything, ptr @.str.123, ptr @Anything, ptr @.str.97.197], [4 x ptr] [ptr @Anything, ptr null, ptr @Anything, ptr @Silent]], align 16
@U_rules = internal global [36 x [4 x ptr]] [[4 x ptr] [ptr @Nothing, ptr @.str.400, ptr @.str.200, ptr @.str.401], [4 x ptr] [ptr @Nothing, ptr @.str.400, ptr @Anything, ptr @.str.402], [4 x ptr] [ptr @Nothing, ptr @.str.403, ptr @Anything, ptr @.str.404], [4 x ptr] [ptr @.str.123, ptr @.str.405, ptr @.str.8.182, ptr @.str.406], [4 x ptr] [ptr @.str.83.186, ptr @.str.405, ptr @.str.8.182, ptr @.str.406], [4 x ptr] [ptr @.str.126, ptr @.str.405, ptr @.str.8.182, ptr @.str.406], [4 x ptr] [ptr @.str.94.188, ptr @.str.405, ptr @.str.8.182, ptr @.str.406], [4 x ptr] [ptr @.str.127, ptr @.str.405, ptr @.str.8.182, ptr @.str.406], [4 x ptr] [ptr @.str.128, ptr @.str.405, ptr @.str.8.182, ptr @.str.406], [4 x ptr] [ptr @.str.129, ptr @.str.405, ptr @.str.8.182, ptr @.str.406], [4 x ptr] [ptr @.str.130, ptr @.str.405, ptr @.str.8.182, ptr @.str.406], [4 x ptr] [ptr @.str.131, ptr @.str.405, ptr @.str.8.182, ptr @.str.406], [4 x ptr] [ptr @.str.76.189, ptr @.str.405, ptr @.str.8.182, ptr @.str.406], [4 x ptr] [ptr @.str.132, ptr @.str.405, ptr @.str.8.182, ptr @.str.406], [4 x ptr] [ptr @Anything, ptr @.str.405, ptr @.str.8.182, ptr @.str.407], [4 x ptr] [ptr @Anything, ptr @.str.405, ptr @Anything, ptr @.str.47.190], [4 x ptr] [ptr @Anything, ptr @.str.350, ptr @.str.408, ptr @.str.283], [4 x ptr] [ptr @Anything, ptr @.str.350, ptr @.str.409, ptr @.str.283], [4 x ptr] [ptr @Anything, ptr @.str.410, ptr @Anything, ptr @.str.164], [4 x ptr] [ptr @.str.411, ptr @.str.350, ptr @.str.8.182, ptr @.str.3.191], [4 x ptr] [ptr @.str.172, ptr @.str.350, ptr @.str.89.192, ptr @.str.3.191], [4 x ptr] [ptr @.str.172, ptr @.str.350, ptr @.str.8.182, ptr @.str.412], [4 x ptr] [ptr @.str.393, ptr @.str.350, ptr @Anything, ptr @.str.133], [4 x ptr] [ptr @.str.123, ptr @.str.350, ptr @Anything, ptr @.str.125], [4 x ptr] [ptr @.str.83.186, ptr @.str.350, ptr @Anything, ptr @.str.125], [4 x ptr] [ptr @.str.126, ptr @.str.350, ptr @Anything, ptr @.str.125], [4 x ptr] [ptr @.str.94.188, ptr @.str.350, ptr @Anything, ptr @.str.125], [4 x ptr] [ptr @.str.127, ptr @.str.350, ptr @Anything, ptr @.str.125], [4 x ptr] [ptr @.str.128, ptr @.str.350, ptr @Anything, ptr @.str.125], [4 x ptr] [ptr @.str.129, ptr @.str.350, ptr @Anything, ptr @.str.125], [4 x ptr] [ptr @.str.130, ptr @.str.350, ptr @Anything, ptr @.str.125], [4 x ptr] [ptr @.str.131, ptr @.str.350, ptr @Anything, ptr @.str.125], [4 x ptr] [ptr @.str.76.189, ptr @.str.350, ptr @Anything, ptr @.str.125], [4 x ptr] [ptr @.str.132, ptr @.str.350, ptr @Anything, ptr @.str.125], [4 x ptr] [ptr @Anything, ptr @.str.350, ptr @Anything, ptr @.str.133], [4 x ptr] [ptr @Anything, ptr null, ptr @Anything, ptr @Silent]], align 16
@V_rules = internal global [3 x [4 x ptr]] [[4 x ptr] [ptr @Anything, ptr @.str.413, ptr @Anything, ptr @.str.414], [4 x ptr] [ptr @Anything, ptr @.str.283, ptr @Anything, ptr @.str.415], [4 x ptr] [ptr @Anything, ptr null, ptr @Anything, ptr @Silent]], align 16
@W_rules = internal global [13 x [4 x ptr]] [[4 x ptr] [ptr @Nothing, ptr @.str.416, ptr @Anything, ptr @.str.417], [4 x ptr] [ptr @Anything, ptr @.str.24.185, ptr @.str.83.186, ptr @.str.418], [4 x ptr] [ptr @Anything, ptr @.str.24.185, ptr @.str.123, ptr @.str.418], [4 x ptr] [ptr @Anything, ptr @.str.419, ptr @Anything, ptr @.str.420], [4 x ptr] [ptr @Anything, ptr @.str.421, ptr @Anything, ptr @.str.422], [4 x ptr] [ptr @Anything, ptr @.str.423, ptr @Anything, ptr @.str.424], [4 x ptr] [ptr @Anything, ptr @.str.425, ptr @Anything, ptr @.str.426], [4 x ptr] [ptr @Anything, ptr @.str.427, ptr @Anything, ptr @.str.428], [4 x ptr] [ptr @Anything, ptr @.str.429, ptr @Anything, ptr @.str.430], [4 x ptr] [ptr @Anything, ptr @.str.431, ptr @.str.21.187, ptr @.str.417], [4 x ptr] [ptr @Anything, ptr @.str.432, ptr @Anything, ptr @.str.332], [4 x ptr] [ptr @Anything, ptr @.str.122, ptr @Anything, ptr @.str.412], [4 x ptr] [ptr @Anything, ptr null, ptr @Anything, ptr @Silent]], align 16
@X_rules = internal global [2 x [4 x ptr]] [[4 x ptr] [ptr @Anything, ptr @.str.433, ptr @Anything, ptr @.str.434], [4 x ptr] [ptr @Anything, ptr null, ptr @Anything, ptr @Silent]], align 16
@Y_rules = internal global [12 x [4 x ptr]] [[4 x ptr] [ptr @Anything, ptr @.str.435, ptr @Anything, ptr @.str.436], [4 x ptr] [ptr @Nothing, ptr @.str.437, ptr @Anything, ptr @.str.133], [4 x ptr] [ptr @Nothing, ptr @.str.438, ptr @Anything, ptr @.str.439], [4 x ptr] [ptr @Nothing, ptr @.str.440, ptr @Anything, ptr @.str.441], [4 x ptr] [ptr @.str.221, ptr @.str.440, ptr @Nothing, ptr @.str.111.180], [4 x ptr] [ptr @.str.221, ptr @.str.440, ptr @.str.200, ptr @.str.111.180], [4 x ptr] [ptr @.str.26.181, ptr @.str.440, ptr @Nothing, ptr @.str.164], [4 x ptr] [ptr @.str.26.181, ptr @.str.440, ptr @.str.8.182, ptr @.str.164], [4 x ptr] [ptr @.str.26.181, ptr @.str.440, ptr @.str.41.183, ptr @.str.200], [4 x ptr] [ptr @.str.26.181, ptr @.str.440, ptr @.str.63.184, ptr @.str.164], [4 x ptr] [ptr @Anything, ptr @.str.440, ptr @Anything, ptr @.str.200], [4 x ptr] [ptr @Anything, ptr null, ptr @Anything, ptr @Silent]], align 16
@Z_rules = internal global [2 x [4 x ptr]] [[4 x ptr] [ptr @Anything, ptr @.str.128, ptr @Anything, ptr @.str.6.179], [4 x ptr] [ptr @Anything, ptr null, ptr @Anything, ptr @Silent]], align 16
@Anything = internal global [1 x i8] zeroinitializer, align 1
@.str.1.292 = private unnamed_addr constant [2 x i8] c" \00", align 1
@.str.2.293 = private unnamed_addr constant [2 x i8] c"-\00", align 1
@.str.3.191 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.4.198 = private unnamed_addr constant [2 x i8] c".\00", align 1
@.str.5.294 = private unnamed_addr constant [3 x i8] c"'S\00", align 1
@.str.6.179 = private unnamed_addr constant [2 x i8] c"z\00", align 1
@.str.7.199 = private unnamed_addr constant [5 x i8] c"#:.E\00", align 1
@.str.8.182 = private unnamed_addr constant [2 x i8] c"#\00", align 1
@.str.9.201 = private unnamed_addr constant [2 x i8] c"'\00", align 1
@.str.10.295 = private unnamed_addr constant [2 x i8] c",\00", align 1
@.str.11.296 = private unnamed_addr constant [2 x i8] c"?\00", align 1
@.str.12.297 = private unnamed_addr constant [2 x i8] c"!\00", align 1
@Silent = internal global [1 x i8] zeroinitializer, align 1
@.str.13.196 = private unnamed_addr constant [2 x i8] c"A\00", align 1
@Nothing = internal global [2 x i8] c" \00", align 1
@.str.14.256 = private unnamed_addr constant [2 x i8] c"@\00", align 1
@.str.15.257 = private unnamed_addr constant [4 x i8] c"ARE\00", align 1
@.str.16.258 = private unnamed_addr constant [3 x i8] c"0r\00", align 1
@.str.17.259 = private unnamed_addr constant [3 x i8] c"AR\00", align 1
@.str.18.195 = private unnamed_addr constant [2 x i8] c"O\00", align 1
@.str.19.260 = private unnamed_addr constant [3 x i8] c"@r\00", align 1
@.str.20.218 = private unnamed_addr constant [3 x i8] c"er\00", align 1
@.str.21.187 = private unnamed_addr constant [2 x i8] c"^\00", align 1
@.str.22.261 = private unnamed_addr constant [3 x i8] c"AS\00", align 1
@.str.23.262 = private unnamed_addr constant [4 x i8] c"eIs\00", align 1
@.str.24.185 = private unnamed_addr constant [3 x i8] c"WA\00", align 1
@.str.25.263 = private unnamed_addr constant [3 x i8] c"AW\00", align 1
@.str.26.181 = private unnamed_addr constant [3 x i8] c" :\00", align 1
@.str.27.264 = private unnamed_addr constant [4 x i8] c"ANY\00", align 1
@.str.28.265 = private unnamed_addr constant [4 x i8] c"eni\00", align 1
@.str.29.266 = private unnamed_addr constant [4 x i8] c"^+#\00", align 1
@.str.30.219 = private unnamed_addr constant [3 x i8] c"eI\00", align 1
@.str.31.193 = private unnamed_addr constant [3 x i8] c"#:\00", align 1
@.str.32.267 = private unnamed_addr constant [5 x i8] c"ALLY\00", align 1
@.str.33.268 = private unnamed_addr constant [4 x i8] c"@li\00", align 1
@.str.34.269 = private unnamed_addr constant [3 x i8] c"AL\00", align 1
@.str.35.207 = private unnamed_addr constant [3 x i8] c"@l\00", align 1
@.str.36.270 = private unnamed_addr constant [6 x i8] c"AGAIN\00", align 1
@.str.37.271 = private unnamed_addr constant [5 x i8] c"@gen\00", align 1
@.str.38.272 = private unnamed_addr constant [3 x i8] c"AG\00", align 1
@.str.39.204 = private unnamed_addr constant [2 x i8] c"E\00", align 1
@.str.40.273 = private unnamed_addr constant [4 x i8] c"IdZ\00", align 1
@.str.41.183 = private unnamed_addr constant [5 x i8] c"^+:#\00", align 1
@.str.42.274 = private unnamed_addr constant [2 x i8] c"&\00", align 1
@.str.43.275 = private unnamed_addr constant [4 x i8] c"^+ \00", align 1
@.str.44.203 = private unnamed_addr constant [3 x i8] c"^%\00", align 1
@.str.45.276 = private unnamed_addr constant [4 x i8] c"ARR\00", align 1
@.str.46.277 = private unnamed_addr constant [3 x i8] c"&r\00", align 1
@.str.47.190 = private unnamed_addr constant [2 x i8] c"3\00", align 1
@.str.48.278 = private unnamed_addr constant [4 x i8] c"AIR\00", align 1
@.str.49.279 = private unnamed_addr constant [3 x i8] c"AI\00", align 1
@.str.50.280 = private unnamed_addr constant [3 x i8] c"AY\00", align 1
@.str.51.281 = private unnamed_addr constant [3 x i8] c"AU\00", align 1
@.str.52.282 = private unnamed_addr constant [4 x i8] c"ALS\00", align 1
@.str.53.283 = private unnamed_addr constant [4 x i8] c"@lz\00", align 1
@.str.54.284 = private unnamed_addr constant [4 x i8] c"ALK\00", align 1
@.str.55.285 = private unnamed_addr constant [3 x i8] c"Ok\00", align 1
@.str.56.286 = private unnamed_addr constant [3 x i8] c"Ol\00", align 1
@.str.57.287 = private unnamed_addr constant [5 x i8] c"ABLE\00", align 1
@.str.58.288 = private unnamed_addr constant [6 x i8] c"eIb@l\00", align 1
@.str.59.289 = private unnamed_addr constant [5 x i8] c"@b@l\00", align 1
@.str.60.290 = private unnamed_addr constant [4 x i8] c"ANG\00", align 1
@.str.61.206 = private unnamed_addr constant [2 x i8] c"+\00", align 1
@.str.62.291 = private unnamed_addr constant [6 x i8] c"eIndZ\00", align 1
@.str.63.184 = private unnamed_addr constant [3 x i8] c"^#\00", align 1
@.str.64.244 = private unnamed_addr constant [3 x i8] c"BE\00", align 1
@.str.65.245 = private unnamed_addr constant [3 x i8] c"bI\00", align 1
@.str.66.246 = private unnamed_addr constant [6 x i8] c"BEING\00", align 1
@.str.67.247 = private unnamed_addr constant [5 x i8] c"biIN\00", align 1
@.str.68.248 = private unnamed_addr constant [5 x i8] c"BOTH\00", align 1
@.str.69.249 = private unnamed_addr constant [5 x i8] c"b@UT\00", align 1
@.str.70.250 = private unnamed_addr constant [4 x i8] c"BUS\00", align 1
@.str.71.251 = private unnamed_addr constant [4 x i8] c"bIz\00", align 1
@.str.72.252 = private unnamed_addr constant [5 x i8] c"BUIL\00", align 1
@.str.73.253 = private unnamed_addr constant [4 x i8] c"bIl\00", align 1
@.str.74.254 = private unnamed_addr constant [2 x i8] c"B\00", align 1
@.str.75.255 = private unnamed_addr constant [2 x i8] c"b\00", align 1
@.str.76.189 = private unnamed_addr constant [3 x i8] c"CH\00", align 1
@.str.77.202 = private unnamed_addr constant [2 x i8] c"k\00", align 1
@.str.78.236 = private unnamed_addr constant [3 x i8] c"^E\00", align 1
@.str.79.194 = private unnamed_addr constant [3 x i8] c"tS\00", align 1
@.str.80.237 = private unnamed_addr constant [3 x i8] c" S\00", align 1
@.str.81.238 = private unnamed_addr constant [3 x i8] c"CI\00", align 1
@.str.82.239 = private unnamed_addr constant [4 x i8] c"saI\00", align 1
@.str.83.186 = private unnamed_addr constant [2 x i8] c"S\00", align 1
@.str.84.240 = private unnamed_addr constant [3 x i8] c"EN\00", align 1
@.str.85.205 = private unnamed_addr constant [2 x i8] c"C\00", align 1
@.str.86.200 = private unnamed_addr constant [2 x i8] c"s\00", align 1
@.str.87.241 = private unnamed_addr constant [3 x i8] c"CK\00", align 1
@.str.88.242 = private unnamed_addr constant [4 x i8] c"COM\00", align 1
@.str.89.192 = private unnamed_addr constant [2 x i8] c"%\00", align 1
@.str.90.243 = private unnamed_addr constant [4 x i8] c"kVm\00", align 1
@.str.91.220 = private unnamed_addr constant [4 x i8] c"DED\00", align 1
@.str.92.221 = private unnamed_addr constant [4 x i8] c"dId\00", align 1
@.str.93.222 = private unnamed_addr constant [3 x i8] c".E\00", align 1
@.str.94.188 = private unnamed_addr constant [2 x i8] c"D\00", align 1
@.str.95.211 = private unnamed_addr constant [2 x i8] c"d\00", align 1
@.str.96.223 = private unnamed_addr constant [5 x i8] c"#:^E\00", align 1
@.str.97.197 = private unnamed_addr constant [2 x i8] c"t\00", align 1
@.str.98.224 = private unnamed_addr constant [3 x i8] c"DE\00", align 1
@.str.99.225 = private unnamed_addr constant [3 x i8] c"dI\00", align 1
@.str.100.226 = private unnamed_addr constant [3 x i8] c"DO\00", align 1
@.str.101.227 = private unnamed_addr constant [3 x i8] c"du\00", align 1
@.str.102.228 = private unnamed_addr constant [5 x i8] c"DOES\00", align 1
@.str.103.229 = private unnamed_addr constant [4 x i8] c"dVz\00", align 1
@.str.104.230 = private unnamed_addr constant [6 x i8] c"DOING\00", align 1
@.str.105.231 = private unnamed_addr constant [5 x i8] c"duIN\00", align 1
@.str.106.232 = private unnamed_addr constant [4 x i8] c"DOW\00", align 1
@.str.107.233 = private unnamed_addr constant [4 x i8] c"daU\00", align 1
@.str.108.234 = private unnamed_addr constant [3 x i8] c"DU\00", align 1
@.str.109.235 = private unnamed_addr constant [4 x i8] c"dZu\00", align 1
@.str.110.209 = private unnamed_addr constant [4 x i8] c"':^\00", align 1
@.str.111.180 = private unnamed_addr constant [2 x i8] c"i\00", align 1
@.str.112.210 = private unnamed_addr constant [3 x i8] c"ED\00", align 1
@.str.113.212 = private unnamed_addr constant [3 x i8] c"D \00", align 1
@.str.114.213 = private unnamed_addr constant [3 x i8] c"EV\00", align 1
@.str.115.214 = private unnamed_addr constant [3 x i8] c"ER\00", align 1
@.str.116.215 = private unnamed_addr constant [3 x i8] c"ev\00", align 1
@.str.117.216 = private unnamed_addr constant [4 x i8] c"ERI\00", align 1
@.str.118.217 = private unnamed_addr constant [4 x i8] c"iri\00", align 1
@.str.119 = private unnamed_addr constant [4 x i8] c"erI\00", align 1
@.str.120 = private unnamed_addr constant [5 x i8] c"EVEN\00", align 1
@.str.121 = private unnamed_addr constant [5 x i8] c"iven\00", align 1
@.str.122 = private unnamed_addr constant [2 x i8] c"W\00", align 1
@.str.123 = private unnamed_addr constant [2 x i8] c"T\00", align 1
@.str.124 = private unnamed_addr constant [3 x i8] c"EW\00", align 1
@.str.125 = private unnamed_addr constant [2 x i8] c"u\00", align 1
@.str.126 = private unnamed_addr constant [2 x i8] c"R\00", align 1
@.str.127 = private unnamed_addr constant [2 x i8] c"L\00", align 1
@.str.128 = private unnamed_addr constant [2 x i8] c"Z\00", align 1
@.str.129 = private unnamed_addr constant [2 x i8] c"N\00", align 1
@.str.130 = private unnamed_addr constant [2 x i8] c"J\00", align 1
@.str.131 = private unnamed_addr constant [3 x i8] c"TH\00", align 1
@.str.132 = private unnamed_addr constant [3 x i8] c"SH\00", align 1
@.str.133 = private unnamed_addr constant [3 x i8] c"ju\00", align 1
@.str.134 = private unnamed_addr constant [4 x i8] c"#:S\00", align 1
@.str.135 = private unnamed_addr constant [3 x i8] c"ES\00", align 1
@.str.136 = private unnamed_addr constant [3 x i8] c"Iz\00", align 1
@.str.137 = private unnamed_addr constant [4 x i8] c"#:C\00", align 1
@.str.138 = private unnamed_addr constant [4 x i8] c"#:G\00", align 1
@.str.139 = private unnamed_addr constant [4 x i8] c"#:Z\00", align 1
@.str.140 = private unnamed_addr constant [4 x i8] c"#:X\00", align 1
@.str.141 = private unnamed_addr constant [4 x i8] c"#:J\00", align 1
@.str.142 = private unnamed_addr constant [5 x i8] c"#:CH\00", align 1
@.str.143 = private unnamed_addr constant [5 x i8] c"#:SH\00", align 1
@.str.144 = private unnamed_addr constant [3 x i8] c"S \00", align 1
@.str.145 = private unnamed_addr constant [4 x i8] c"ELY\00", align 1
@.str.146 = private unnamed_addr constant [3 x i8] c"li\00", align 1
@.str.147 = private unnamed_addr constant [6 x i8] c"EMENT\00", align 1
@.str.148 = private unnamed_addr constant [5 x i8] c"ment\00", align 1
@.str.149 = private unnamed_addr constant [5 x i8] c"EFUL\00", align 1
@.str.150 = private unnamed_addr constant [4 x i8] c"fUl\00", align 1
@.str.151 = private unnamed_addr constant [3 x i8] c"EE\00", align 1
@.str.152 = private unnamed_addr constant [5 x i8] c"EARN\00", align 1
@.str.153 = private unnamed_addr constant [3 x i8] c"3n\00", align 1
@.str.154 = private unnamed_addr constant [4 x i8] c"EAR\00", align 1
@.str.155 = private unnamed_addr constant [4 x i8] c"EAD\00", align 1
@.str.156 = private unnamed_addr constant [3 x i8] c"ed\00", align 1
@.str.157 = private unnamed_addr constant [3 x i8] c"EA\00", align 1
@.str.158 = private unnamed_addr constant [3 x i8] c"i@\00", align 1
@.str.159 = private unnamed_addr constant [3 x i8] c"SU\00", align 1
@.str.160 = private unnamed_addr constant [2 x i8] c"e\00", align 1
@.str.161 = private unnamed_addr constant [5 x i8] c"EIGH\00", align 1
@.str.162 = private unnamed_addr constant [3 x i8] c"EI\00", align 1
@.str.163 = private unnamed_addr constant [4 x i8] c"EYE\00", align 1
@.str.164 = private unnamed_addr constant [3 x i8] c"aI\00", align 1
@.str.165 = private unnamed_addr constant [3 x i8] c"EY\00", align 1
@.str.166 = private unnamed_addr constant [3 x i8] c"EU\00", align 1
@.str.167 = private unnamed_addr constant [4 x i8] c"FUL\00", align 1
@.str.168 = private unnamed_addr constant [2 x i8] c"F\00", align 1
@.str.169 = private unnamed_addr constant [2 x i8] c"f\00", align 1
@.str.170 = private unnamed_addr constant [4 x i8] c"GIV\00", align 1
@.str.171 = private unnamed_addr constant [4 x i8] c"gIv\00", align 1
@.str.172 = private unnamed_addr constant [2 x i8] c"G\00", align 1
@.str.173 = private unnamed_addr constant [3 x i8] c"I^\00", align 1
@.str.174 = private unnamed_addr constant [2 x i8] c"g\00", align 1
@.str.175 = private unnamed_addr constant [3 x i8] c"GE\00", align 1
@.str.176 = private unnamed_addr constant [3 x i8] c"ge\00", align 1
@.str.177 = private unnamed_addr constant [5 x i8] c"GGES\00", align 1
@.str.178.208 = private unnamed_addr constant [6 x i8] c"gdZes\00", align 1
@.str.179 = private unnamed_addr constant [3 x i8] c"GG\00", align 1
@.str.180 = private unnamed_addr constant [4 x i8] c" B#\00", align 1
@.str.181 = private unnamed_addr constant [3 x i8] c"dZ\00", align 1
@.str.182 = private unnamed_addr constant [6 x i8] c"GREAT\00", align 1
@.str.183 = private unnamed_addr constant [6 x i8] c"greIt\00", align 1
@.str.184 = private unnamed_addr constant [3 x i8] c"GH\00", align 1
@.str.185 = private unnamed_addr constant [4 x i8] c"HAV\00", align 1
@.str.186 = private unnamed_addr constant [4 x i8] c"h&v\00", align 1
@.str.187 = private unnamed_addr constant [5 x i8] c"HERE\00", align 1
@.str.188 = private unnamed_addr constant [4 x i8] c"hir\00", align 1
@.str.189 = private unnamed_addr constant [5 x i8] c"HOUR\00", align 1
@.str.190 = private unnamed_addr constant [4 x i8] c"aU3\00", align 1
@.str.191 = private unnamed_addr constant [4 x i8] c"HOW\00", align 1
@.str.192 = private unnamed_addr constant [4 x i8] c"haU\00", align 1
@.str.193 = private unnamed_addr constant [2 x i8] c"H\00", align 1
@.str.194 = private unnamed_addr constant [2 x i8] c"h\00", align 1
@.str.195 = private unnamed_addr constant [5 x i8] c"IAIN\00", align 1
@.str.196 = private unnamed_addr constant [4 x i8] c"I@n\00", align 1
@.str.197 = private unnamed_addr constant [4 x i8] c"ING\00", align 1
@.str.198 = private unnamed_addr constant [3 x i8] c"IN\00", align 1
@.str.199 = private unnamed_addr constant [3 x i8] c"In\00", align 1
@.str.200 = private unnamed_addr constant [2 x i8] c"I\00", align 1
@.str.201 = private unnamed_addr constant [4 x i8] c"aIn\00", align 1
@.str.202 = private unnamed_addr constant [4 x i8] c"IER\00", align 1
@.str.203 = private unnamed_addr constant [3 x i8] c"i3\00", align 1
@.str.204 = private unnamed_addr constant [4 x i8] c"#:R\00", align 1
@.str.205 = private unnamed_addr constant [4 x i8] c"IED\00", align 1
@.str.206 = private unnamed_addr constant [3 x i8] c"id\00", align 1
@.str.207 = private unnamed_addr constant [4 x i8] c"aId\00", align 1
@.str.208 = private unnamed_addr constant [4 x i8] c"IEN\00", align 1
@.str.209 = private unnamed_addr constant [4 x i8] c"ien\00", align 1
@.str.210 = private unnamed_addr constant [3 x i8] c"IE\00", align 1
@.str.211 = private unnamed_addr constant [4 x i8] c"aIe\00", align 1
@.str.212 = private unnamed_addr constant [3 x i8] c"IR\00", align 1
@.str.213 = private unnamed_addr constant [4 x i8] c"aIr\00", align 1
@.str.214 = private unnamed_addr constant [3 x i8] c"IZ\00", align 1
@.str.215 = private unnamed_addr constant [4 x i8] c"aIz\00", align 1
@.str.216 = private unnamed_addr constant [3 x i8] c"IS\00", align 1
@.str.217 = private unnamed_addr constant [3 x i8] c"D%\00", align 1
@.str.218 = private unnamed_addr constant [3 x i8] c"+^\00", align 1
@.str.219 = private unnamed_addr constant [3 x i8] c"^+\00", align 1
@.str.220 = private unnamed_addr constant [3 x i8] c"T%\00", align 1
@.str.221 = private unnamed_addr constant [4 x i8] c"#:^\00", align 1
@.str.222 = private unnamed_addr constant [4 x i8] c"IGH\00", align 1
@.str.223 = private unnamed_addr constant [4 x i8] c"ILD\00", align 1
@.str.224 = private unnamed_addr constant [5 x i8] c"aIld\00", align 1
@.str.225 = private unnamed_addr constant [4 x i8] c"IGN\00", align 1
@.str.226 = private unnamed_addr constant [5 x i8] c"IQUE\00", align 1
@.str.227 = private unnamed_addr constant [3 x i8] c"ik\00", align 1
@.str.228 = private unnamed_addr constant [2 x i8] c"K\00", align 1
@.str.229 = private unnamed_addr constant [3 x i8] c"LO\00", align 1
@.str.230 = private unnamed_addr constant [3 x i8] c"C#\00", align 1
@.str.231 = private unnamed_addr constant [4 x i8] c"l@U\00", align 1
@.str.232 = private unnamed_addr constant [5 x i8] c"LEAD\00", align 1
@.str.233 = private unnamed_addr constant [4 x i8] c"lid\00", align 1
@.str.234 = private unnamed_addr constant [2 x i8] c"l\00", align 1
@.str.235 = private unnamed_addr constant [4 x i8] c"MOV\00", align 1
@.str.236 = private unnamed_addr constant [4 x i8] c"muv\00", align 1
@.str.237 = private unnamed_addr constant [3 x i8] c"MM\00", align 1
@.str.238 = private unnamed_addr constant [2 x i8] c"m\00", align 1
@.str.239 = private unnamed_addr constant [2 x i8] c"M\00", align 1
@.str.240 = private unnamed_addr constant [3 x i8] c"NG\00", align 1
@.str.241 = private unnamed_addr constant [4 x i8] c"ndZ\00", align 1
@.str.242 = private unnamed_addr constant [3 x i8] c"Ng\00", align 1
@.str.243 = private unnamed_addr constant [4 x i8] c"NGL\00", align 1
@.str.244 = private unnamed_addr constant [5 x i8] c"Ng@l\00", align 1
@.str.245 = private unnamed_addr constant [3 x i8] c"NK\00", align 1
@.str.246 = private unnamed_addr constant [3 x i8] c"Nk\00", align 1
@.str.247 = private unnamed_addr constant [4 x i8] c"NOW\00", align 1
@.str.248 = private unnamed_addr constant [4 x i8] c"naU\00", align 1
@.str.249 = private unnamed_addr constant [2 x i8] c"n\00", align 1
@.str.250 = private unnamed_addr constant [3 x i8] c"OF\00", align 1
@.str.251 = private unnamed_addr constant [3 x i8] c"@v\00", align 1
@.str.252 = private unnamed_addr constant [7 x i8] c"OROUGH\00", align 1
@.str.253 = private unnamed_addr constant [4 x i8] c"3@U\00", align 1
@.str.254 = private unnamed_addr constant [3 x i8] c"OR\00", align 1
@.str.255 = private unnamed_addr constant [4 x i8] c"ORS\00", align 1
@.str.256 = private unnamed_addr constant [3 x i8] c"3z\00", align 1
@.str.257 = private unnamed_addr constant [3 x i8] c"Or\00", align 1
@.str.258 = private unnamed_addr constant [4 x i8] c"ONE\00", align 1
@.str.259 = private unnamed_addr constant [4 x i8] c"wVn\00", align 1
@.str.260 = private unnamed_addr constant [3 x i8] c"OW\00", align 1
@.str.261 = private unnamed_addr constant [3 x i8] c"@U\00", align 1
@.str.262 = private unnamed_addr constant [5 x i8] c"OVER\00", align 1
@.str.263 = private unnamed_addr constant [5 x i8] c"@Uv3\00", align 1
@.str.264 = private unnamed_addr constant [3 x i8] c"OV\00", align 1
@.str.265 = private unnamed_addr constant [3 x i8] c"Vv\00", align 1
@.str.266 = private unnamed_addr constant [4 x i8] c"^EN\00", align 1
@.str.267 = private unnamed_addr constant [4 x i8] c"^I#\00", align 1
@.str.268 = private unnamed_addr constant [3 x i8] c"OL\00", align 1
@.str.269 = private unnamed_addr constant [4 x i8] c"@Ul\00", align 1
@.str.270 = private unnamed_addr constant [6 x i8] c"OUGHT\00", align 1
@.str.271 = private unnamed_addr constant [3 x i8] c"Ot\00", align 1
@.str.272 = private unnamed_addr constant [5 x i8] c"OUGH\00", align 1
@.str.273 = private unnamed_addr constant [3 x i8] c"Vf\00", align 1
@.str.274 = private unnamed_addr constant [3 x i8] c"OU\00", align 1
@.str.275 = private unnamed_addr constant [3 x i8] c"aU\00", align 1
@.str.276 = private unnamed_addr constant [3 x i8] c"S#\00", align 1
@.str.277 = private unnamed_addr constant [4 x i8] c"OUS\00", align 1
@.str.278 = private unnamed_addr constant [3 x i8] c"@s\00", align 1
@.str.279 = private unnamed_addr constant [4 x i8] c"OUR\00", align 1
@.str.280 = private unnamed_addr constant [5 x i8] c"OULD\00", align 1
@.str.281 = private unnamed_addr constant [3 x i8] c"Ud\00", align 1
@.str.282 = private unnamed_addr constant [3 x i8] c"^L\00", align 1
@.str.283 = private unnamed_addr constant [2 x i8] c"V\00", align 1
@.str.284 = private unnamed_addr constant [4 x i8] c"OUP\00", align 1
@.str.285 = private unnamed_addr constant [3 x i8] c"up\00", align 1
@.str.286 = private unnamed_addr constant [3 x i8] c"OY\00", align 1
@.str.287 = private unnamed_addr constant [3 x i8] c"oI\00", align 1
@.str.288 = private unnamed_addr constant [5 x i8] c"OING\00", align 1
@.str.289 = private unnamed_addr constant [5 x i8] c"@UIN\00", align 1
@.str.290 = private unnamed_addr constant [3 x i8] c"OI\00", align 1
@.str.291 = private unnamed_addr constant [4 x i8] c"OOR\00", align 1
@.str.292 = private unnamed_addr constant [4 x i8] c"OOK\00", align 1
@.str.293 = private unnamed_addr constant [3 x i8] c"Uk\00", align 1
@.str.294 = private unnamed_addr constant [4 x i8] c"OOD\00", align 1
@.str.295 = private unnamed_addr constant [3 x i8] c"OO\00", align 1
@.str.296 = private unnamed_addr constant [3 x i8] c"OA\00", align 1
@.str.297 = private unnamed_addr constant [5 x i8] c"ONLY\00", align 1
@.str.298 = private unnamed_addr constant [6 x i8] c"@Unli\00", align 1
@.str.299 = private unnamed_addr constant [5 x i8] c"ONCE\00", align 1
@.str.300 = private unnamed_addr constant [5 x i8] c"wVns\00", align 1
@.str.301 = private unnamed_addr constant [5 x i8] c"ON'T\00", align 1
@.str.302 = private unnamed_addr constant [5 x i8] c"@Unt\00", align 1
@.str.303 = private unnamed_addr constant [2 x i8] c"0\00", align 1
@.str.304 = private unnamed_addr constant [4 x i8] c" :^\00", align 1
@.str.305 = private unnamed_addr constant [3 x i8] c"ON\00", align 1
@.str.306 = private unnamed_addr constant [3 x i8] c"@n\00", align 1
@.str.307 = private unnamed_addr constant [3 x i8] c"#^\00", align 1
@.str.308 = private unnamed_addr constant [4 x i8] c"ST \00", align 1
@.str.309 = private unnamed_addr constant [3 x i8] c"Of\00", align 1
@.str.310 = private unnamed_addr constant [6 x i8] c"OTHER\00", align 1
@.str.311 = private unnamed_addr constant [4 x i8] c"VD3\00", align 1
@.str.312 = private unnamed_addr constant [4 x i8] c"OSS\00", align 1
@.str.313 = private unnamed_addr constant [3 x i8] c"Os\00", align 1
@.str.314 = private unnamed_addr constant [3 x i8] c"OM\00", align 1
@.str.315 = private unnamed_addr constant [3 x i8] c"Vm\00", align 1
@.str.316 = private unnamed_addr constant [3 x i8] c"PH\00", align 1
@.str.317 = private unnamed_addr constant [5 x i8] c"PEOP\00", align 1
@.str.318 = private unnamed_addr constant [4 x i8] c"pip\00", align 1
@.str.319 = private unnamed_addr constant [4 x i8] c"POW\00", align 1
@.str.320 = private unnamed_addr constant [4 x i8] c"paU\00", align 1
@.str.321 = private unnamed_addr constant [4 x i8] c"PUT\00", align 1
@.str.322 = private unnamed_addr constant [4 x i8] c"pUt\00", align 1
@.str.323 = private unnamed_addr constant [2 x i8] c"P\00", align 1
@.str.324 = private unnamed_addr constant [2 x i8] c"p\00", align 1
@.str.325 = private unnamed_addr constant [5 x i8] c"QUAR\00", align 1
@.str.326 = private unnamed_addr constant [5 x i8] c"kwOr\00", align 1
@.str.327 = private unnamed_addr constant [3 x i8] c"QU\00", align 1
@.str.328 = private unnamed_addr constant [3 x i8] c"kw\00", align 1
@.str.329 = private unnamed_addr constant [2 x i8] c"Q\00", align 1
@.str.330 = private unnamed_addr constant [3 x i8] c"RE\00", align 1
@.str.331 = private unnamed_addr constant [3 x i8] c"ri\00", align 1
@.str.332 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.333 = private unnamed_addr constant [5 x i8] c"SION\00", align 1
@.str.334 = private unnamed_addr constant [4 x i8] c"Z@n\00", align 1
@.str.335 = private unnamed_addr constant [5 x i8] c"SOME\00", align 1
@.str.336 = private unnamed_addr constant [4 x i8] c"sVm\00", align 1
@.str.337 = private unnamed_addr constant [4 x i8] c"SUR\00", align 1
@.str.338 = private unnamed_addr constant [3 x i8] c"Z3\00", align 1
@.str.339 = private unnamed_addr constant [3 x i8] c"S3\00", align 1
@.str.340 = private unnamed_addr constant [3 x i8] c"Zu\00", align 1
@.str.341 = private unnamed_addr constant [4 x i8] c"SSU\00", align 1
@.str.342 = private unnamed_addr constant [3 x i8] c"Su\00", align 1
@.str.343 = private unnamed_addr constant [4 x i8] c"SED\00", align 1
@.str.344 = private unnamed_addr constant [3 x i8] c"zd\00", align 1
@.str.345 = private unnamed_addr constant [5 x i8] c"SAID\00", align 1
@.str.346 = private unnamed_addr constant [4 x i8] c"sed\00", align 1
@.str.347 = private unnamed_addr constant [4 x i8] c"S@n\00", align 1
@.str.348 = private unnamed_addr constant [6 x i8] c"#:^##\00", align 1
@.str.349 = private unnamed_addr constant [5 x i8] c"#:^#\00", align 1
@.str.350 = private unnamed_addr constant [2 x i8] c"U\00", align 1
@.str.351 = private unnamed_addr constant [4 x i8] c" :#\00", align 1
@.str.352 = private unnamed_addr constant [4 x i8] c"SCH\00", align 1
@.str.353 = private unnamed_addr constant [3 x i8] c"sk\00", align 1
@.str.354 = private unnamed_addr constant [3 x i8] c"C+\00", align 1
@.str.355 = private unnamed_addr constant [3 x i8] c"SM\00", align 1
@.str.356 = private unnamed_addr constant [3 x i8] c"zm\00", align 1
@.str.357 = private unnamed_addr constant [3 x i8] c"SN\00", align 1
@.str.358 = private unnamed_addr constant [4 x i8] c"z@n\00", align 1
@.str.359 = private unnamed_addr constant [4 x i8] c"THE\00", align 1
@.str.360 = private unnamed_addr constant [3 x i8] c"D@\00", align 1
@.str.361 = private unnamed_addr constant [3 x i8] c"TO\00", align 1
@.str.362 = private unnamed_addr constant [3 x i8] c"tu\00", align 1
@.str.363 = private unnamed_addr constant [5 x i8] c"THAT\00", align 1
@.str.364 = private unnamed_addr constant [4 x i8] c"D&t\00", align 1
@.str.365 = private unnamed_addr constant [5 x i8] c"THIS\00", align 1
@.str.366 = private unnamed_addr constant [4 x i8] c"DIs\00", align 1
@.str.367 = private unnamed_addr constant [5 x i8] c"THEY\00", align 1
@.str.368 = private unnamed_addr constant [4 x i8] c"DeI\00", align 1
@.str.369 = private unnamed_addr constant [6 x i8] c"THERE\00", align 1
@.str.370 = private unnamed_addr constant [4 x i8] c"Der\00", align 1
@.str.371 = private unnamed_addr constant [5 x i8] c"THER\00", align 1
@.str.372 = private unnamed_addr constant [3 x i8] c"D3\00", align 1
@.str.373 = private unnamed_addr constant [6 x i8] c"THEIR\00", align 1
@.str.374 = private unnamed_addr constant [5 x i8] c"THAN\00", align 1
@.str.375 = private unnamed_addr constant [4 x i8] c"D&n\00", align 1
@.str.376 = private unnamed_addr constant [5 x i8] c"THEM\00", align 1
@.str.377 = private unnamed_addr constant [4 x i8] c"Dem\00", align 1
@.str.378 = private unnamed_addr constant [6 x i8] c"THESE\00", align 1
@.str.379 = private unnamed_addr constant [4 x i8] c"Diz\00", align 1
@.str.380 = private unnamed_addr constant [5 x i8] c"THEN\00", align 1
@.str.381 = private unnamed_addr constant [4 x i8] c"Den\00", align 1
@.str.382 = private unnamed_addr constant [8 x i8] c"THROUGH\00", align 1
@.str.383 = private unnamed_addr constant [4 x i8] c"Tru\00", align 1
@.str.384 = private unnamed_addr constant [6 x i8] c"THOSE\00", align 1
@.str.385 = private unnamed_addr constant [5 x i8] c"D@Uz\00", align 1
@.str.386 = private unnamed_addr constant [7 x i8] c"THOUGH\00", align 1
@.str.387 = private unnamed_addr constant [4 x i8] c"D@U\00", align 1
@.str.388 = private unnamed_addr constant [5 x i8] c"THUS\00", align 1
@.str.389 = private unnamed_addr constant [4 x i8] c"DVs\00", align 1
@.str.390 = private unnamed_addr constant [4 x i8] c"TED\00", align 1
@.str.391 = private unnamed_addr constant [4 x i8] c"tId\00", align 1
@.str.392 = private unnamed_addr constant [3 x i8] c"TI\00", align 1
@.str.393 = private unnamed_addr constant [3 x i8] c"#N\00", align 1
@.str.394 = private unnamed_addr constant [5 x i8] c"TIEN\00", align 1
@.str.395 = private unnamed_addr constant [4 x i8] c"TUR\00", align 1
@.str.396 = private unnamed_addr constant [4 x i8] c"tS3\00", align 1
@.str.397 = private unnamed_addr constant [3 x i8] c"TU\00", align 1
@.str.398 = private unnamed_addr constant [4 x i8] c"tSu\00", align 1
@.str.399 = private unnamed_addr constant [4 x i8] c"TWO\00", align 1
@.str.400 = private unnamed_addr constant [3 x i8] c"UN\00", align 1
@.str.401 = private unnamed_addr constant [4 x i8] c"jun\00", align 1
@.str.402 = private unnamed_addr constant [3 x i8] c"Vn\00", align 1
@.str.403 = private unnamed_addr constant [5 x i8] c"UPON\00", align 1
@.str.404 = private unnamed_addr constant [5 x i8] c"@pOn\00", align 1
@.str.405 = private unnamed_addr constant [3 x i8] c"UR\00", align 1
@.str.406 = private unnamed_addr constant [3 x i8] c"Ur\00", align 1
@.str.407 = private unnamed_addr constant [4 x i8] c"jUr\00", align 1
@.str.408 = private unnamed_addr constant [3 x i8] c"^ \00", align 1
@.str.409 = private unnamed_addr constant [3 x i8] c"^^\00", align 1
@.str.410 = private unnamed_addr constant [3 x i8] c"UY\00", align 1
@.str.411 = private unnamed_addr constant [3 x i8] c" G\00", align 1
@.str.412 = private unnamed_addr constant [2 x i8] c"w\00", align 1
@.str.413 = private unnamed_addr constant [5 x i8] c"VIEW\00", align 1
@.str.414 = private unnamed_addr constant [4 x i8] c"vju\00", align 1
@.str.415 = private unnamed_addr constant [2 x i8] c"v\00", align 1
@.str.416 = private unnamed_addr constant [5 x i8] c"WERE\00", align 1
@.str.417 = private unnamed_addr constant [3 x i8] c"w3\00", align 1
@.str.418 = private unnamed_addr constant [3 x i8] c"w0\00", align 1
@.str.419 = private unnamed_addr constant [6 x i8] c"WHERE\00", align 1
@.str.420 = private unnamed_addr constant [5 x i8] c"hwer\00", align 1
@.str.421 = private unnamed_addr constant [5 x i8] c"WHAT\00", align 1
@.str.422 = private unnamed_addr constant [5 x i8] c"hw0t\00", align 1
@.str.423 = private unnamed_addr constant [5 x i8] c"WHOL\00", align 1
@.str.424 = private unnamed_addr constant [5 x i8] c"h@Ul\00", align 1
@.str.425 = private unnamed_addr constant [4 x i8] c"WHO\00", align 1
@.str.426 = private unnamed_addr constant [3 x i8] c"hu\00", align 1
@.str.427 = private unnamed_addr constant [3 x i8] c"WH\00", align 1
@.str.428 = private unnamed_addr constant [3 x i8] c"hw\00", align 1
@.str.429 = private unnamed_addr constant [4 x i8] c"WAR\00", align 1
@.str.430 = private unnamed_addr constant [4 x i8] c"wOr\00", align 1
@.str.431 = private unnamed_addr constant [4 x i8] c"WOR\00", align 1
@.str.432 = private unnamed_addr constant [3 x i8] c"WR\00", align 1
@.str.433 = private unnamed_addr constant [2 x i8] c"X\00", align 1
@.str.434 = private unnamed_addr constant [3 x i8] c"ks\00", align 1
@.str.435 = private unnamed_addr constant [6 x i8] c"YOUNG\00", align 1
@.str.436 = private unnamed_addr constant [4 x i8] c"jVN\00", align 1
@.str.437 = private unnamed_addr constant [4 x i8] c"YOU\00", align 1
@.str.438 = private unnamed_addr constant [4 x i8] c"YES\00", align 1
@.str.439 = private unnamed_addr constant [4 x i8] c"jes\00", align 1
@.str.440 = private unnamed_addr constant [2 x i8] c"Y\00", align 1
@.str.441 = private unnamed_addr constant [2 x i8] c"j\00", align 1
@.str.442 = private unnamed_addr constant [63 x i8] c"$Id: getarg.c,v 1.13 1994/11/08 13:30:50 a904209 Exp a904209 $\00", align 1
@getarg_id = dso_local local_unnamed_addr global ptr @.str.442, align 8
@.str.1.447 = private unnamed_addr constant [6 x i8] c"-help\00", align 1
@.str.2.448 = private unnamed_addr constant [5 x i8] c"%s:\0A\00", align 1
@.str.3.449 = private unnamed_addr constant [12 x i8] c" -%s <%s> [\00", align 1
@.str.4.450 = private unnamed_addr constant [6 x i8] c"]\09%s\0A\00", align 1
@.str.5.452 = private unnamed_addr constant [23 x i8] c" -%s <string> [%s]\09%s\0A\00", align 1
@.str.6.451 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.7.455 = private unnamed_addr constant [18 x i8] c" [+|-]%s [%s]\09%s\0A\00", align 1
@.str.8.454 = private unnamed_addr constant [4 x i8] c"yes\00", align 1
@.str.9.453 = private unnamed_addr constant [3 x i8] c"no\00", align 1
@.str.10.456 = private unnamed_addr constant [27 x i8] c"%s : %s invalid after -%s\0A\00", align 1
@.str.11.457 = private unnamed_addr constant [28 x i8] c"%s : no argument after -%s\0A\00", align 1
@.str.458 = private unnamed_addr constant [63 x i8] c"$Id: holmes.c,v 1.13 1994/11/08 13:30:50 a904209 Exp a904209 $\00", align 1
@holmes_id = dso_local local_unnamed_addr global ptr @.str.458, align 8
@frac = dso_local global double 1.000000e+00, align 8
@def_pars = dso_local global %struct.klatt_frame_t { i64 1330, i64 60, i64 500, i64 60, i64 1500, i64 90, i64 2800, i64 150, i64 3250, i64 200, i64 3700, i64 200, i64 4990, i64 500, i64 270, i64 100, i64 270, i64 100, i64 0, i64 30, i64 0, i64 10, i64 0, i64 0, i64 0, i64 80, i64 0, i64 200, i64 0, i64 350, i64 0, i64 500, i64 0, i64 600, i64 0, i64 800, i64 0, i64 0, i64 0, i64 62 }, align 8
@par_file = dso_local local_unnamed_addr global ptr null, align 8
@.str.1.459 = private unnamed_addr constant [11 x i8] c"# %s < %s\0A\00", align 1
@.str.2.460 = private unnamed_addr constant [12 x i8] c"# %s >= %s\0A\00", align 1
@.str.3.461 = private unnamed_addr constant [6 x i8] c"# %s\0A\00", align 1
@.str.4.462 = private unnamed_addr constant [6 x i8] c"%c%6s\00", align 1
@Ep_name = dso_local local_unnamed_addr global [19 x ptr] [ptr @.str.100, ptr @.str.101.177, ptr @.str.102, ptr @.str.103, ptr @.str.104, ptr @.str.105, ptr @.str.106, ptr @.str.107, ptr @.str.108, ptr @.str.109, ptr @.str.110, ptr @.str.111, ptr @.str.112, ptr @.str.113, ptr @.str.114, ptr @.str.115, ptr @.str.116, ptr @.str.117, ptr @.str.118], align 16
@.str.6.463 = private unnamed_addr constant [8 x i8] c"%c%6.4g\00", align 1
@.str.7.464 = private unnamed_addr constant [6 x i8] c"%c%6d\00", align 1
@.str.8.468 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.10.465 = private unnamed_addr constant [7 x i8] c" %6.4g\00", align 1
@jsru_file = dso_local local_unnamed_addr global ptr null, align 8
@.str.11.466 = private unnamed_addr constant [7 x i8] c"Holmes\00", align 1
@.str.12.467 = private unnamed_addr constant [2 x i8] c"p\00", align 1
@.str.13.469 = private unnamed_addr constant [24 x i8] c"Parameter file for plot\00", align 1
@.str.14.470 = private unnamed_addr constant [2 x i8] c"j\00", align 1
@.str.15.471 = private unnamed_addr constant [32 x i8] c"Data for alternate synth (JSRU)\00", align 1
@.str.16.472 = private unnamed_addr constant [2 x i8] c"S\00", align 1
@.str.17.473 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.18.474 = private unnamed_addr constant [24 x i8] c"Speed (1.0 is 'normal')\00", align 1
@.str.19.475 = private unnamed_addr constant [2 x i8] c"K\00", align 1
@.str.20.476 = private unnamed_addr constant [4 x i8] c"%lg\00", align 1
@.str.21.477 = private unnamed_addr constant [28 x i8] c"Parameter filter 'fraction'\00", align 1
@.str.22.478 = private unnamed_addr constant [2 x i8] c"w\00", align 1
@_u2l = dso_local local_unnamed_addr global [256 x i16] [i16 -32256, i16 -31228, i16 -30200, i16 -29172, i16 -28143, i16 -27115, i16 -26087, i16 -25059, i16 -24031, i16 -23002, i16 -21974, i16 -20946, i16 -19918, i16 -18889, i16 -17861, i16 -16833, i16 -16062, i16 -15548, i16 -15033, i16 -14519, i16 -14005, i16 -13491, i16 -12977, i16 -12463, i16 -11949, i16 -11435, i16 -10920, i16 -10406, i16 -9892, i16 -9378, i16 -8864, i16 -8350, i16 -7964, i16 -7707, i16 -7450, i16 -7193, i16 -6936, i16 -6679, i16 -6422, i16 -6165, i16 -5908, i16 -5651, i16 -5394, i16 -5137, i16 -4880, i16 -4623, i16 -4365, i16 -4108, i16 -3916, i16 -3787, i16 -3659, i16 -3530, i16 -3402, i16 -3273, i16 -3144, i16 -3016, i16 -2887, i16 -2759, i16 -2630, i16 -2502, i16 -2373, i16 -2245, i16 -2116, i16 -1988, i16 -1891, i16 -1827, i16 -1763, i16 -1698, i16 -1634, i16 -1570, i16 -1506, i16 -1441, i16 -1377, i16 -1313, i16 -1249, i16 -1184, i16 -1120, i16 -1056, i16 -992, i16 -927, i16 -879, i16 -847, i16 -815, i16 -783, i16 -751, i16 -718, i16 -686, i16 -654, i16 -622, i16 -590, i16 -558, i16 -526, i16 -494, i16 -461, i16 -429, i16 -397, i16 -373, i16 -357, i16 -341, i16 -325, i16 -309, i16 -293, i16 -277, i16 -261, i16 -245, i16 -228, i16 -212, i16 -196, i16 -180, i16 -164, i16 -148, i16 -132, i16 -120, i16 -112, i16 -104, i16 -96, i16 -88, i16 -80, i16 -72, i16 -64, i16 -56, i16 -48, i16 -40, i16 -32, i16 -24, i16 -16, i16 -8, i16 0, i16 32256, i16 31228, i16 30200, i16 29172, i16 28143, i16 27115, i16 26087, i16 25059, i16 24031, i16 23002, i16 21974, i16 20946, i16 19918, i16 18889, i16 17861, i16 16833, i16 16062, i16 15548, i16 15033, i16 14519, i16 14005, i16 13491, i16 12977, i16 12463, i16 11949, i16 11435, i16 10920, i16 10406, i16 9892, i16 9378, i16 8864, i16 8350, i16 7964, i16 7707, i16 7450, i16 7193, i16 6936, i16 6679, i16 6422, i16 6165, i16 5908, i16 5651, i16 5394, i16 5137, i16 4880, i16 4623, i16 4365, i16 4108, i16 3916, i16 3787, i16 3659, i16 3530, i16 3402, i16 3273, i16 3144, i16 3016, i16 2887, i16 2759, i16 2630, i16 2502, i16 2373, i16 2245, i16 2116, i16 1988, i16 1891, i16 1827, i16 1763, i16 1698, i16 1634, i16 1570, i16 1506, i16 1441, i16 1377, i16 1313, i16 1249, i16 1184, i16 1120, i16 1056, i16 992, i16 927, i16 879, i16 847, i16 815, i16 783, i16 751, i16 718, i16 686, i16 654, i16 622, i16 590, i16 558, i16 526, i16 494, i16 461, i16 429, i16 397, i16 373, i16 357, i16 341, i16 325, i16 309, i16 293, i16 277, i16 261, i16 245, i16 228, i16 212, i16 196, i16 180, i16 164, i16 148, i16 132, i16 120, i16 112, i16 104, i16 96, i16 88, i16 80, i16 72, i16 64, i16 56, i16 48, i16 40, i16 32, i16 24, i16 16, i16 8, i16 0], align 16
@_l2u_ = internal global [8192 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\11\11\11\11\11\11\11\11\11\11\11\11\11\11\11\11\11\11\11\11\11\11\11\11\11\11\11\11\11\11\11\11\11\11\11\11\11\11\11\11\11\11\11\11\11\11\11\11\11\11\11\11\11\11\11\11\11\11\11\11\11\11\11\11\11\12\12\12\12\12\12\12\12\12\12\12\12\12\12\12\12\12\12\12\12\12\12\12\12\12\12\12\12\12\12\12\12\12\12\12\12\12\12\12\12\12\12\12\12\12\12\12\12\12\12\12\12\12\12\12\12\12\12\12\12\12\12\12\12\13\13\13\13\13\13\13\13\13\13\13\13\13\13\13\13\13\13\13\13\13\13\13\13\13\13\13\13\13\13\13\13\13\13\13\13\13\13\13\13\13\13\13\13\13\13\13\13\13\13\13\13\13\13\13\13\13\13\13\13\13\13\13\13\14\14\14\14\14\14\14\14\14\14\14\14\14\14\14\14\14\14\14\14\14\14\14\14\14\14\14\14\14\14\14\14\14\14\14\14\14\14\14\14\14\14\14\14\14\14\14\14\14\14\14\14\14\14\14\14\14\14\14\14\14\14\14\14\14\15\15\15\15\15\15\15\15\15\15\15\15\15\15\15\15\15\15\15\15\15\15\15\15\15\15\15\15\15\15\15\15\15\15\15\15\15\15\15\15\15\15\15\15\15\15\15\15\15\15\15\15\15\15\15\15\15\15\15\15\15\15\15\15\16\16\16\16\16\16\16\16\16\16\16\16\16\16\16\16\16\16\16\16\16\16\16\16\16\16\16\16\16\16\16\16\16\16\16\16\16\16\16\16\16\16\16\16\16\16\16\16\16\16\16\16\16\16\16\16\16\16\16\16\16\16\16\16\17\17\17\17\17\17\17\17\17\17\17\17\17\17\17\17\17\17\17\17\17\17\17\17\17\17\17\17\17\17\17\17\17\17\17\17\17\17\17\17\17\17\17\17\17\17\17\17\17\17\17\17\17\17\17\17\17\17\17\17\17\17\17\17\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\19\19\19\19\19\19\19\19\19\19\19\19\19\19\19\19\19\19\19\19\19\19\19\19\19\19\19\19\19\19\19\19\19\19\19\19\19\19\19\19\19\19\19\19\19\19\19\19\19\19\19\19\19\19\19\19\19\19\19\19\19\19\19\19\1A\1A\1A\1A\1A\1A\1A\1A\1A\1A\1A\1A\1A\1A\1A\1A\1A\1A\1A\1A\1A\1A\1A\1A\1A\1A\1A\1A\1A\1A\1A\1A\1A\1A\1A\1A\1A\1A\1A\1A\1A\1A\1A\1A\1A\1A\1A\1A\1A\1A\1A\1A\1A\1A\1A\1A\1A\1A\1A\1A\1A\1A\1A\1A\1B\1B\1B\1B\1B\1B\1B\1B\1B\1B\1B\1B\1B\1B\1B\1B\1B\1B\1B\1B\1B\1B\1B\1B\1B\1B\1B\1B\1B\1B\1B\1B\1B\1B\1B\1B\1B\1B\1B\1B\1B\1B\1B\1B\1B\1B\1B\1B\1B\1B\1B\1B\1B\1B\1B\1B\1B\1B\1B\1B\1B\1B\1B\1B\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1D\1D\1D\1D\1D\1D\1D\1D\1D\1D\1D\1D\1D\1D\1D\1D\1D\1D\1D\1D\1D\1D\1D\1D\1D\1D\1D\1D\1D\1D\1D\1D\1D\1D\1D\1D\1D\1D\1D\1D\1D\1D\1D\1D\1D\1D\1D\1D\1D\1D\1D\1D\1D\1D\1D\1D\1D\1D\1D\1D\1D\1D\1D\1D\1E\1E\1E\1E\1E\1E\1E\1E\1E\1E\1E\1E\1E\1E\1E\1E\1E\1E\1E\1E\1E\1E\1E\1E\1E\1E\1E\1E\1E\1E\1E\1E\1E\1E\1E\1E\1E\1E\1E\1E\1E\1E\1E\1E\1E\1E\1E\1E\1E\1E\1E\1E\1E\1E\1E\1E\1E\1E\1E\1E\1E\1E\1E\1E\1F\1F\1F\1F\1F\1F\1F\1F\1F\1F\1F\1F\1F\1F\1F\1F\1F\1F\1F\1F\1F\1F\1F\1F\1F\1F\1F\1F\1F\1F\1F\1F\1F\1F\1F\1F\1F\1F\1F\1F\1F\1F\1F\1F\1F\1F\1F\1F\1F\1F\1F\1F\1F\1F\1F\1F\1F\1F\1F\1F\1F\1F\1F\1F                                 !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!\22\22\22\22\22\22\22\22\22\22\22\22\22\22\22\22\22\22\22\22\22\22\22\22\22\22\22\22\22\22\22\22################################$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&'''''''''''''''''''''''''''''''''(((((((((((((((((((((((((((((((())))))))))))))))))))))))))))))))********************************++++++++++++++++++++++++++++++++,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,--------------------------------................................/////////////////////////////////0000000000000000111111111111111122222222222222223333333333333333444444444444444455555555555555556666666666666666777777777777777788888888888888889999999999999999::::::::::::::::;;;;;;;;;;;;;;;;<<<<<<<<<<<<<<<<=================>>>>>>>>>>>>>>>>????????????????@@@@@@@@AAAAAAAABBBBBBBBCCCCCCCCDDDDDDDDEEEEEEEEFFFFFFFFGGGGGGGGHHHHHHHHIIIIIIIIJJJJJJJJKKKKKKKKLLLLLLLLMMMMMMMMNNNNNNNNOOOOOOOOPPPPQQQQRRRRSSSSTTTTUUUUVVVVWWWWXXXXYYYYZZZZ[[[[\\\\\\\\]]]]^^^^____``aabbccddeeffgghhhiijjkkllmmnnoopqrstuvwxyz{|}~\FF\FE\FD\FC\FB\FA\F9\F8\F7\F6\F5\F4\F3\F2\F1\F0\EF\EF\EE\EE\ED\ED\EC\EC\EB\EB\EA\EA\E9\E9\E8\E8\E7\E7\E6\E6\E5\E5\E4\E4\E3\E3\E2\E2\E1\E1\E0\E0\DF\DF\DF\DF\DE\DE\DE\DE\DD\DD\DD\DD\DC\DC\DC\DC\DB\DB\DB\DB\DA\DA\DA\DA\D9\D9\D9\D9\D8\D8\D8\D8\D7\D7\D7\D7\D6\D6\D6\D6\D5\D5\D5\D5\D4\D4\D4\D4\D3\D3\D3\D3\D2\D2\D2\D2\D1\D1\D1\D1\D0\D0\D0\D0\CF\CF\CF\CF\CF\CF\CF\CF\CE\CE\CE\CE\CE\CE\CE\CE\CD\CD\CD\CD\CD\CD\CD\CD\CC\CC\CC\CC\CC\CC\CC\CC\CB\CB\CB\CB\CB\CB\CB\CB\CA\CA\CA\CA\CA\CA\CA\CA\C9\C9\C9\C9\C9\C9\C9\C9\C8\C8\C8\C8\C8\C8\C8\C8\C7\C7\C7\C7\C7\C7\C7\C7\C6\C6\C6\C6\C6\C6\C6\C6\C5\C5\C5\C5\C5\C5\C5\C5\C4\C4\C4\C4\C4\C4\C4\C4\C3\C3\C3\C3\C3\C3\C3\C3\C3\C2\C2\C2\C2\C2\C2\C2\C2\C1\C1\C1\C1\C1\C1\C1\C1\C0\C0\C0\C0\C0\C0\C0\C0\BF\BF\BF\BF\BF\BF\BF\BF\BF\BF\BF\BF\BF\BF\BF\BF\BE\BE\BE\BE\BE\BE\BE\BE\BE\BE\BE\BE\BE\BE\BE\BE\BD\BD\BD\BD\BD\BD\BD\BD\BD\BD\BD\BD\BD\BD\BD\BD\BC\BC\BC\BC\BC\BC\BC\BC\BC\BC\BC\BC\BC\BC\BC\BC\BB\BB\BB\BB\BB\BB\BB\BB\BB\BB\BB\BB\BB\BB\BB\BB\BA\BA\BA\BA\BA\BA\BA\BA\BA\BA\BA\BA\BA\BA\BA\BA\B9\B9\B9\B9\B9\B9\B9\B9\B9\B9\B9\B9\B9\B9\B9\B9\B8\B8\B8\B8\B8\B8\B8\B8\B8\B8\B8\B8\B8\B8\B8\B8\B7\B7\B7\B7\B7\B7\B7\B7\B7\B7\B7\B7\B7\B7\B7\B7\B6\B6\B6\B6\B6\B6\B6\B6\B6\B6\B6\B6\B6\B6\B6\B6\B5\B5\B5\B5\B5\B5\B5\B5\B5\B5\B5\B5\B5\B5\B5\B5\B4\B4\B4\B4\B4\B4\B4\B4\B4\B4\B4\B4\B4\B4\B4\B4\B3\B3\B3\B3\B3\B3\B3\B3\B3\B3\B3\B3\B3\B3\B3\B3\B2\B2\B2\B2\B2\B2\B2\B2\B2\B2\B2\B2\B2\B2\B2\B2\B2\B1\B1\B1\B1\B1\B1\B1\B1\B1\B1\B1\B1\B1\B1\B1\B1\B0\B0\B0\B0\B0\B0\B0\B0\B0\B0\B0\B0\B0\B0\B0\B0\AF\AF\AF\AF\AF\AF\AF\AF\AF\AF\AF\AF\AF\AF\AF\AF\AF\AF\AF\AF\AF\AF\AF\AF\AF\AF\AF\AF\AF\AF\AF\AF\AE\AE\AE\AE\AE\AE\AE\AE\AE\AE\AE\AE\AE\AE\AE\AE\AE\AE\AE\AE\AE\AE\AE\AE\AE\AE\AE\AE\AE\AE\AE\AE\AD\AD\AD\AD\AD\AD\AD\AD\AD\AD\AD\AD\AD\AD\AD\AD\AD\AD\AD\AD\AD\AD\AD\AD\AD\AD\AD\AD\AD\AD\AD\AD\AC\AC\AC\AC\AC\AC\AC\AC\AC\AC\AC\AC\AC\AC\AC\AC\AC\AC\AC\AC\AC\AC\AC\AC\AC\AC\AC\AC\AC\AC\AC\AC\AB\AB\AB\AB\AB\AB\AB\AB\AB\AB\AB\AB\AB\AB\AB\AB\AB\AB\AB\AB\AB\AB\AB\AB\AB\AB\AB\AB\AB\AB\AB\AB\AA\AA\AA\AA\AA\AA\AA\AA\AA\AA\AA\AA\AA\AA\AA\AA\AA\AA\AA\AA\AA\AA\AA\AA\AA\AA\AA\AA\AA\AA\AA\AA\A9\A9\A9\A9\A9\A9\A9\A9\A9\A9\A9\A9\A9\A9\A9\A9\A9\A9\A9\A9\A9\A9\A9\A9\A9\A9\A9\A9\A9\A9\A9\A9\A9\A8\A8\A8\A8\A8\A8\A8\A8\A8\A8\A8\A8\A8\A8\A8\A8\A8\A8\A8\A8\A8\A8\A8\A8\A8\A8\A8\A8\A8\A8\A8\A8\A7\A7\A7\A7\A7\A7\A7\A7\A7\A7\A7\A7\A7\A7\A7\A7\A7\A7\A7\A7\A7\A7\A7\A7\A7\A7\A7\A7\A7\A7\A7\A7\A6\A6\A6\A6\A6\A6\A6\A6\A6\A6\A6\A6\A6\A6\A6\A6\A6\A6\A6\A6\A6\A6\A6\A6\A6\A6\A6\A6\A6\A6\A6\A6\A5\A5\A5\A5\A5\A5\A5\A5\A5\A5\A5\A5\A5\A5\A5\A5\A5\A5\A5\A5\A5\A5\A5\A5\A5\A5\A5\A5\A5\A5\A5\A5\A4\A4\A4\A4\A4\A4\A4\A4\A4\A4\A4\A4\A4\A4\A4\A4\A4\A4\A4\A4\A4\A4\A4\A4\A4\A4\A4\A4\A4\A4\A4\A4\A3\A3\A3\A3\A3\A3\A3\A3\A3\A3\A3\A3\A3\A3\A3\A3\A3\A3\A3\A3\A3\A3\A3\A3\A3\A3\A3\A3\A3\A3\A3\A3\A2\A2\A2\A2\A2\A2\A2\A2\A2\A2\A2\A2\A2\A2\A2\A2\A2\A2\A2\A2\A2\A2\A2\A2\A2\A2\A2\A2\A2\A2\A2\A2\A2\A1\A1\A1\A1\A1\A1\A1\A1\A1\A1\A1\A1\A1\A1\A1\A1\A1\A1\A1\A1\A1\A1\A1\A1\A1\A1\A1\A1\A1\A1\A1\A1\A0\A0\A0\A0\A0\A0\A0\A0\A0\A0\A0\A0\A0\A0\A0\A0\A0\A0\A0\A0\A0\A0\A0\A0\A0\A0\A0\A0\A0\A0\A0\A0\9F\9F\9F\9F\9F\9F\9F\9F\9F\9F\9F\9F\9F\9F\9F\9F\9F\9F\9F\9F\9F\9F\9F\9F\9F\9F\9F\9F\9F\9F\9F\9F\9F\9F\9F\9F\9F\9F\9F\9F\9F\9F\9F\9F\9F\9F\9F\9F\9F\9F\9F\9F\9F\9F\9F\9F\9F\9F\9F\9F\9F\9F\9F\9F\9E\9E\9E\9E\9E\9E\9E\9E\9E\9E\9E\9E\9E\9E\9E\9E\9E\9E\9E\9E\9E\9E\9E\9E\9E\9E\9E\9E\9E\9E\9E\9E\9E\9E\9E\9E\9E\9E\9E\9E\9E\9E\9E\9E\9E\9E\9E\9E\9E\9E\9E\9E\9E\9E\9E\9E\9E\9E\9E\9E\9E\9E\9E\9E\9D\9D\9D\9D\9D\9D\9D\9D\9D\9D\9D\9D\9D\9D\9D\9D\9D\9D\9D\9D\9D\9D\9D\9D\9D\9D\9D\9D\9D\9D\9D\9D\9D\9D\9D\9D\9D\9D\9D\9D\9D\9D\9D\9D\9D\9D\9D\9D\9D\9D\9D\9D\9D\9D\9D\9D\9D\9D\9D\9D\9D\9D\9D\9D\9D\9C\9C\9C\9C\9C\9C\9C\9C\9C\9C\9C\9C\9C\9C\9C\9C\9C\9C\9C\9C\9C\9C\9C\9C\9C\9C\9C\9C\9C\9C\9C\9C\9C\9C\9C\9C\9C\9C\9C\9C\9C\9C\9C\9C\9C\9C\9C\9C\9C\9C\9C\9C\9C\9C\9C\9C\9C\9C\9C\9C\9C\9C\9C\9C\9B\9B\9B\9B\9B\9B\9B\9B\9B\9B\9B\9B\9B\9B\9B\9B\9B\9B\9B\9B\9B\9B\9B\9B\9B\9B\9B\9B\9B\9B\9B\9B\9B\9B\9B\9B\9B\9B\9B\9B\9B\9B\9B\9B\9B\9B\9B\9B\9B\9B\9B\9B\9B\9B\9B\9B\9B\9B\9B\9B\9B\9B\9B\9B\9A\9A\9A\9A\9A\9A\9A\9A\9A\9A\9A\9A\9A\9A\9A\9A\9A\9A\9A\9A\9A\9A\9A\9A\9A\9A\9A\9A\9A\9A\9A\9A\9A\9A\9A\9A\9A\9A\9A\9A\9A\9A\9A\9A\9A\9A\9A\9A\9A\9A\9A\9A\9A\9A\9A\9A\9A\9A\9A\9A\9A\9A\9A\9A\99\99\99\99\99\99\99\99\99\99\99\99\99\99\99\99\99\99\99\99\99\99\99\99\99\99\99\99\99\99\99\99\99\99\99\99\99\99\99\99\99\99\99\99\99\99\99\99\99\99\99\99\99\99\99\99\99\99\99\99\99\99\99\99\99\98\98\98\98\98\98\98\98\98\98\98\98\98\98\98\98\98\98\98\98\98\98\98\98\98\98\98\98\98\98\98\98\98\98\98\98\98\98\98\98\98\98\98\98\98\98\98\98\98\98\98\98\98\98\98\98\98\98\98\98\98\98\98\98\97\97\97\97\97\97\97\97\97\97\97\97\97\97\97\97\97\97\97\97\97\97\97\97\97\97\97\97\97\97\97\97\97\97\97\97\97\97\97\97\97\97\97\97\97\97\97\97\97\97\97\97\97\97\97\97\97\97\97\97\97\97\97\97\96\96\96\96\96\96\96\96\96\96\96\96\96\96\96\96\96\96\96\96\96\96\96\96\96\96\96\96\96\96\96\96\96\96\96\96\96\96\96\96\96\96\96\96\96\96\96\96\96\96\96\96\96\96\96\96\96\96\96\96\96\96\96\96\95\95\95\95\95\95\95\95\95\95\95\95\95\95\95\95\95\95\95\95\95\95\95\95\95\95\95\95\95\95\95\95\95\95\95\95\95\95\95\95\95\95\95\95\95\95\95\95\95\95\95\95\95\95\95\95\95\95\95\95\95\95\95\95\95\94\94\94\94\94\94\94\94\94\94\94\94\94\94\94\94\94\94\94\94\94\94\94\94\94\94\94\94\94\94\94\94\94\94\94\94\94\94\94\94\94\94\94\94\94\94\94\94\94\94\94\94\94\94\94\94\94\94\94\94\94\94\94\94\93\93\93\93\93\93\93\93\93\93\93\93\93\93\93\93\93\93\93\93\93\93\93\93\93\93\93\93\93\93\93\93\93\93\93\93\93\93\93\93\93\93\93\93\93\93\93\93\93\93\93\93\93\93\93\93\93\93\93\93\93\93\93\93\92\92\92\92\92\92\92\92\92\92\92\92\92\92\92\92\92\92\92\92\92\92\92\92\92\92\92\92\92\92\92\92\92\92\92\92\92\92\92\92\92\92\92\92\92\92\92\92\92\92\92\92\92\92\92\92\92\92\92\92\92\92\92\92\91\91\91\91\91\91\91\91\91\91\91\91\91\91\91\91\91\91\91\91\91\91\91\91\91\91\91\91\91\91\91\91\91\91\91\91\91\91\91\91\91\91\91\91\91\91\91\91\91\91\91\91\91\91\91\91\91\91\91\91\91\91\91\91\91\90\90\90\90\90\90\90\90\90\90\90\90\90\90\90\90\90\90\90\90\90\90\90\90\90\90\90\90\90\90\90\90\90\90\90\90\90\90\90\90\90\90\90\90\90\90\90\90\90\90\90\90\90\90\90\90\90\90\90\90\90\90\90\90\8F\8F\8F\8F\8F\8F\8F\8F\8F\8F\8F\8F\8F\8F\8F\8F\8F\8F\8F\8F\8F\8F\8F\8F\8F\8F\8F\8F\8F\8F\8F\8F\8F\8F\8F\8F\8F\8F\8F\8F\8F\8F\8F\8F\8F\8F\8F\8F\8F\8F\8F\8F\8F\8F\8F\8F\8F\8F\8F\8F\8F\8F\8F\8F\8F\8F\8F\8F\8F\8F\8F\8F\8F\8F\8F\8F\8F\8F\8F\8F\8F\8F\8F\8F\8F\8F\8F\8F\8F\8F\8F\8F\8F\8F\8F\8F\8F\8F\8F\8F\8F\8F\8F\8F\8F\8F\8F\8F\8F\8F\8F\8F\8F\8F\8F\8F\8F\8F\8F\8F\8F\8F\8F\8F\8F\8F\8F\8F\8F\8E\8E\8E\8E\8E\8E\8E\8E\8E\8E\8E\8E\8E\8E\8E\8E\8E\8E\8E\8E\8E\8E\8E\8E\8E\8E\8E\8E\8E\8E\8E\8E\8E\8E\8E\8E\8E\8E\8E\8E\8E\8E\8E\8E\8E\8E\8E\8E\8E\8E\8E\8E\8E\8E\8E\8E\8E\8E\8E\8E\8E\8E\8E\8E\8E\8E\8E\8E\8E\8E\8E\8E\8E\8E\8E\8E\8E\8E\8E\8E\8E\8E\8E\8E\8E\8E\8E\8E\8E\8E\8E\8E\8E\8E\8E\8E\8E\8E\8E\8E\8E\8E\8E\8E\8E\8E\8E\8E\8E\8E\8E\8E\8E\8E\8E\8E\8E\8E\8E\8E\8E\8E\8E\8E\8E\8E\8E\8E\8D\8D\8D\8D\8D\8D\8D\8D\8D\8D\8D\8D\8D\8D\8D\8D\8D\8D\8D\8D\8D\8D\8D\8D\8D\8D\8D\8D\8D\8D\8D\8D\8D\8D\8D\8D\8D\8D\8D\8D\8D\8D\8D\8D\8D\8D\8D\8D\8D\8D\8D\8D\8D\8D\8D\8D\8D\8D\8D\8D\8D\8D\8D\8D\8D\8D\8D\8D\8D\8D\8D\8D\8D\8D\8D\8D\8D\8D\8D\8D\8D\8D\8D\8D\8D\8D\8D\8D\8D\8D\8D\8D\8D\8D\8D\8D\8D\8D\8D\8D\8D\8D\8D\8D\8D\8D\8D\8D\8D\8D\8D\8D\8D\8D\8D\8D\8D\8D\8D\8D\8D\8D\8D\8D\8D\8D\8D\8D\8D\8C\8C\8C\8C\8C\8C\8C\8C\8C\8C\8C\8C\8C\8C\8C\8C\8C\8C\8C\8C\8C\8C\8C\8C\8C\8C\8C\8C\8C\8C\8C\8C\8C\8C\8C\8C\8C\8C\8C\8C\8C\8C\8C\8C\8C\8C\8C\8C\8C\8C\8C\8C\8C\8C\8C\8C\8C\8C\8C\8C\8C\8C\8C\8C\8C\8C\8C\8C\8C\8C\8C\8C\8C\8C\8C\8C\8C\8C\8C\8C\8C\8C\8C\8C\8C\8C\8C\8C\8C\8C\8C\8C\8C\8C\8C\8C\8C\8C\8C\8C\8C\8C\8C\8C\8C\8C\8C\8C\8C\8C\8C\8C\8C\8C\8C\8C\8C\8C\8C\8C\8C\8C\8C\8C\8C\8C\8C\8C\8B\8B\8B\8B\8B\8B\8B\8B\8B\8B\8B\8B\8B\8B\8B\8B\8B\8B\8B\8B\8B\8B\8B\8B\8B\8B\8B\8B\8B\8B\8B\8B\8B\8B\8B\8B\8B\8B\8B\8B\8B\8B\8B\8B\8B\8B\8B\8B\8B\8B\8B\8B\8B\8B\8B\8B\8B\8B\8B\8B\8B\8B\8B\8B\8B\8B\8B\8B\8B\8B\8B\8B\8B\8B\8B\8B\8B\8B\8B\8B\8B\8B\8B\8B\8B\8B\8B\8B\8B\8B\8B\8B\8B\8B\8B\8B\8B\8B\8B\8B\8B\8B\8B\8B\8B\8B\8B\8B\8B\8B\8B\8B\8B\8B\8B\8B\8B\8B\8B\8B\8B\8B\8B\8B\8B\8B\8B\8B\8B\8A\8A\8A\8A\8A\8A\8A\8A\8A\8A\8A\8A\8A\8A\8A\8A\8A\8A\8A\8A\8A\8A\8A\8A\8A\8A\8A\8A\8A\8A\8A\8A\8A\8A\8A\8A\8A\8A\8A\8A\8A\8A\8A\8A\8A\8A\8A\8A\8A\8A\8A\8A\8A\8A\8A\8A\8A\8A\8A\8A\8A\8A\8A\8A\8A\8A\8A\8A\8A\8A\8A\8A\8A\8A\8A\8A\8A\8A\8A\8A\8A\8A\8A\8A\8A\8A\8A\8A\8A\8A\8A\8A\8A\8A\8A\8A\8A\8A\8A\8A\8A\8A\8A\8A\8A\8A\8A\8A\8A\8A\8A\8A\8A\8A\8A\8A\8A\8A\8A\8A\8A\8A\8A\8A\8A\8A\8A\8A\89\89\89\89\89\89\89\89\89\89\89\89\89\89\89\89\89\89\89\89\89\89\89\89\89\89\89\89\89\89\89\89\89\89\89\89\89\89\89\89\89\89\89\89\89\89\89\89\89\89\89\89\89\89\89\89\89\89\89\89\89\89\89\89\89\89\89\89\89\89\89\89\89\89\89\89\89\89\89\89\89\89\89\89\89\89\89\89\89\89\89\89\89\89\89\89\89\89\89\89\89\89\89\89\89\89\89\89\89\89\89\89\89\89\89\89\89\89\89\89\89\89\89\89\89\89\89\89\89\88\88\88\88\88\88\88\88\88\88\88\88\88\88\88\88\88\88\88\88\88\88\88\88\88\88\88\88\88\88\88\88\88\88\88\88\88\88\88\88\88\88\88\88\88\88\88\88\88\88\88\88\88\88\88\88\88\88\88\88\88\88\88\88\88\88\88\88\88\88\88\88\88\88\88\88\88\88\88\88\88\88\88\88\88\88\88\88\88\88\88\88\88\88\88\88\88\88\88\88\88\88\88\88\88\88\88\88\88\88\88\88\88\88\88\88\88\88\88\88\88\88\88\88\88\88\88\88\87\87\87\87\87\87\87\87\87\87\87\87\87\87\87\87\87\87\87\87\87\87\87\87\87\87\87\87\87\87\87\87\87\87\87\87\87\87\87\87\87\87\87\87\87\87\87\87\87\87\87\87\87\87\87\87\87\87\87\87\87\87\87\87\87\87\87\87\87\87\87\87\87\87\87\87\87\87\87\87\87\87\87\87\87\87\87\87\87\87\87\87\87\87\87\87\87\87\87\87\87\87\87\87\87\87\87\87\87\87\87\87\87\87\87\87\87\87\87\87\87\87\87\87\87\87\87\87\87\86\86\86\86\86\86\86\86\86\86\86\86\86\86\86\86\86\86\86\86\86\86\86\86\86\86\86\86\86\86\86\86\86\86\86\86\86\86\86\86\86\86\86\86\86\86\86\86\86\86\86\86\86\86\86\86\86\86\86\86\86\86\86\86\86\86\86\86\86\86\86\86\86\86\86\86\86\86\86\86\86\86\86\86\86\86\86\86\86\86\86\86\86\86\86\86\86\86\86\86\86\86\86\86\86\86\86\86\86\86\86\86\86\86\86\86\86\86\86\86\86\86\86\86\86\86\86\86\85\85\85\85\85\85\85\85\85\85\85\85\85\85\85\85\85\85\85\85\85\85\85\85\85\85\85\85\85\85\85\85\85\85\85\85\85\85\85\85\85\85\85\85\85\85\85\85\85\85\85\85\85\85\85\85\85\85\85\85\85\85\85\85\85\85\85\85\85\85\85\85\85\85\85\85\85\85\85\85\85\85\85\85\85\85\85\85\85\85\85\85\85\85\85\85\85\85\85\85\85\85\85\85\85\85\85\85\85\85\85\85\85\85\85\85\85\85\85\85\85\85\85\85\85\85\85\85\85\84\84\84\84\84\84\84\84\84\84\84\84\84\84\84\84\84\84\84\84\84\84\84\84\84\84\84\84\84\84\84\84\84\84\84\84\84\84\84\84\84\84\84\84\84\84\84\84\84\84\84\84\84\84\84\84\84\84\84\84\84\84\84\84\84\84\84\84\84\84\84\84\84\84\84\84\84\84\84\84\84\84\84\84\84\84\84\84\84\84\84\84\84\84\84\84\84\84\84\84\84\84\84\84\84\84\84\84\84\84\84\84\84\84\84\84\84\84\84\84\84\84\84\84\84\84\84\84\83\83\83\83\83\83\83\83\83\83\83\83\83\83\83\83\83\83\83\83\83\83\83\83\83\83\83\83\83\83\83\83\83\83\83\83\83\83\83\83\83\83\83\83\83\83\83\83\83\83\83\83\83\83\83\83\83\83\83\83\83\83\83\83\83\83\83\83\83\83\83\83\83\83\83\83\83\83\83\83\83\83\83\83\83\83\83\83\83\83\83\83\83\83\83\83\83\83\83\83\83\83\83\83\83\83\83\83\83\83\83\83\83\83\83\83\83\83\83\83\83\83\83\83\83\83\83\83\83\82\82\82\82\82\82\82\82\82\82\82\82\82\82\82\82\82\82\82\82\82\82\82\82\82\82\82\82\82\82\82\82\82\82\82\82\82\82\82\82\82\82\82\82\82\82\82\82\82\82\82\82\82\82\82\82\82\82\82\82\82\82\82\82\82\82\82\82\82\82\82\82\82\82\82\82\82\82\82\82\82\82\82\82\82\82\82\82\82\82\82\82\82\82\82\82\82\82\82\82\82\82\82\82\82\82\82\82\82\82\82\82\82\82\82\82\82\82\82\82\82\82\82\82\82\82\82\82\81\81\81\81\81\81\81\81\81\81\81\81\81\81\81\81\81\81\81\81\81\81\81\81\81\81\81\81\81\81\81\81\81\81\81\81\81\81\81\81\81\81\81\81\81\81\81\81\81\81\81\81\81\81\81\81\81\81\81\81\81\81\81\81\81\81\81\81\81\81\81\81\81\81\81\81\81\81\81\81\81\81\81\81\81\81\81\81\81\81\81\81\81\81\81\81\81\81\81\81\81\81\81\81\81\81\81\81\81\81\81\81\81\81\81\81\81\81\81\81\81\81\81\81\81\81\81\81\81\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80", align 16
@_l2u = dso_local local_unnamed_addr global ptr getelementptr inbounds ([8192 x i8], ptr @_l2u_, i64 0, i64 4096), align 8
@samp_rate = dso_local global i64 8000, align 8
@.str.483 = private unnamed_addr constant [11 x i8] c"/dev/sbdsp\00", align 1
@dev_file = dso_local local_unnamed_addr global ptr @.str.483, align 8
@.str.1.484 = private unnamed_addr constant [6 x i8] c"hplay\00", align 1
@prog = dso_local local_unnamed_addr global ptr @.str.1.484, align 8
@.str.2.485 = private unnamed_addr constant [12 x i8] c"linux Audio\00", align 1
@.str.3.486 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.4.487 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.5.488 = private unnamed_addr constant [12 x i8] c"Sample rate\00", align 1
@.str.6.489 = private unnamed_addr constant [2 x i8] c"a\00", align 1
@.str.7.490 = private unnamed_addr constant [13 x i8] c"Audio enable\00", align 1
@dev_fd = internal unnamed_addr global i32 -1, align 4
@.str.8.491 = private unnamed_addr constant [24 x i8] c"Actual sound rate: %ld\0A\00", align 1
@.str.9.492 = private unnamed_addr constant [42 x i8] c"Could not allocate memory for conversion\0A\00", align 1
@.str.10.493 = private unnamed_addr constant [6 x i8] c"write\00", align 1
@.str.494 = private unnamed_addr constant [63 x i8] c"$Id: nsynth.c,v 1.13 1994/11/08 13:30:50 a904209 Exp a904209 $\00", align 1
@nsynth_id = dso_local local_unnamed_addr global ptr @.str.494, align 8
@time_count = dso_local local_unnamed_addr global i32 0, align 4
@.str.1.495 = private unnamed_addr constant [7 x i8] c"F0hz10\00", align 1
@.str.2.496 = private unnamed_addr constant [5 x i8] c"AVdb\00", align 1
@.str.3.497 = private unnamed_addr constant [5 x i8] c"F1hz\00", align 1
@.str.4.498 = private unnamed_addr constant [5 x i8] c"B1hz\00", align 1
@.str.5.499 = private unnamed_addr constant [5 x i8] c"F2hz\00", align 1
@.str.6.500 = private unnamed_addr constant [5 x i8] c"B2hz\00", align 1
@.str.7.501 = private unnamed_addr constant [5 x i8] c"F3hz\00", align 1
@.str.8.502 = private unnamed_addr constant [5 x i8] c"B3hz\00", align 1
@.str.9.503 = private unnamed_addr constant [5 x i8] c"F4hz\00", align 1
@.str.10.504 = private unnamed_addr constant [5 x i8] c"B4hz\00", align 1
@.str.11.505 = private unnamed_addr constant [5 x i8] c"F5hz\00", align 1
@.str.12.506 = private unnamed_addr constant [5 x i8] c"B5hz\00", align 1
@.str.13.507 = private unnamed_addr constant [5 x i8] c"F6hz\00", align 1
@.str.14.508 = private unnamed_addr constant [5 x i8] c"B6hz\00", align 1
@.str.15.509 = private unnamed_addr constant [6 x i8] c"FNZhz\00", align 1
@.str.16.510 = private unnamed_addr constant [6 x i8] c"BNZhz\00", align 1
@.str.17.511 = private unnamed_addr constant [6 x i8] c"FNPhz\00", align 1
@.str.18.512 = private unnamed_addr constant [6 x i8] c"BNPhz\00", align 1
@.str.19.513 = private unnamed_addr constant [3 x i8] c"AP\00", align 1
@.str.20.514 = private unnamed_addr constant [6 x i8] c"Kopen\00", align 1
@.str.21.515 = private unnamed_addr constant [6 x i8] c"Aturb\00", align 1
@.str.22.516 = private unnamed_addr constant [6 x i8] c"TLTdb\00", align 1
@.str.23.517 = private unnamed_addr constant [3 x i8] c"AF\00", align 1
@.str.24.518 = private unnamed_addr constant [6 x i8] c"Kskew\00", align 1
@.str.25.519 = private unnamed_addr constant [3 x i8] c"A1\00", align 1
@.str.26.520 = private unnamed_addr constant [6 x i8] c"B1phz\00", align 1
@.str.27.521 = private unnamed_addr constant [3 x i8] c"A2\00", align 1
@.str.28.522 = private unnamed_addr constant [6 x i8] c"B2phz\00", align 1
@.str.29.523 = private unnamed_addr constant [3 x i8] c"A3\00", align 1
@.str.30.524 = private unnamed_addr constant [6 x i8] c"B3phz\00", align 1
@.str.31.525 = private unnamed_addr constant [3 x i8] c"A4\00", align 1
@.str.32.526 = private unnamed_addr constant [6 x i8] c"B4phz\00", align 1
@.str.33.527 = private unnamed_addr constant [3 x i8] c"A5\00", align 1
@.str.34.528 = private unnamed_addr constant [6 x i8] c"B5phz\00", align 1
@.str.35.529 = private unnamed_addr constant [3 x i8] c"A6\00", align 1
@.str.36.530 = private unnamed_addr constant [6 x i8] c"B6phz\00", align 1
@.str.37.531 = private unnamed_addr constant [4 x i8] c"ANP\00", align 1
@.str.38.532 = private unnamed_addr constant [3 x i8] c"AB\00", align 1
@.str.39.533 = private unnamed_addr constant [6 x i8] c"AVpdb\00", align 1
@.str.40.534 = private unnamed_addr constant [6 x i8] c"Gain0\00", align 1
@par_name = dso_local local_unnamed_addr global [40 x ptr] [ptr @.str.1.495, ptr @.str.2.496, ptr @.str.3.497, ptr @.str.4.498, ptr @.str.5.499, ptr @.str.6.500, ptr @.str.7.501, ptr @.str.8.502, ptr @.str.9.503, ptr @.str.10.504, ptr @.str.11.505, ptr @.str.12.506, ptr @.str.13.507, ptr @.str.14.508, ptr @.str.15.509, ptr @.str.16.510, ptr @.str.17.511, ptr @.str.18.512, ptr @.str.19.513, ptr @.str.20.514, ptr @.str.21.515, ptr @.str.22.516, ptr @.str.23.517, ptr @.str.24.518, ptr @.str.25.519, ptr @.str.26.520, ptr @.str.27.521, ptr @.str.28.522, ptr @.str.29.523, ptr @.str.30.524, ptr @.str.31.525, ptr @.str.32.526, ptr @.str.33.527, ptr @.str.34.528, ptr @.str.35.529, ptr @.str.36.530, ptr @.str.37.531, ptr @.str.38.532, ptr @.str.39.533, ptr @.str.40.534], align 16
@show_parms.names = internal unnamed_addr global i32 0, align 4
@.str.41.535 = private unnamed_addr constant [4 x i8] c"%s \00", align 1
@.str.43.536 = private unnamed_addr constant [5 x i8] c"%*d \00", align 1
@parwave.seed = internal unnamed_addr global i64 5, align 8
@nlast = internal unnamed_addr global float 0.000000e+00, align 4
@nper = internal unnamed_addr global i64 0, align 8
@nmod = internal unnamed_addr global i64 0, align 8
@amp_frica = internal unnamed_addr global float 0.000000e+00, align 4
@T0 = internal unnamed_addr global i64 0, align 8
@rlp.0 = internal unnamed_addr global float 0.000000e+00, align 8
@rlp.1 = internal unnamed_addr global float 0.000000e+00, align 8
@rlp.2 = internal unnamed_addr global float 0.000000e+00, align 8
@rlp.3 = internal unnamed_addr global float 0.000000e+00, align 8
@rlp.4 = internal unnamed_addr global float 0.000000e+00, align 8
@onemd = internal unnamed_addr global float 0.000000e+00, align 4
@vlast = internal unnamed_addr global float 0.000000e+00, align 4
@decay = internal unnamed_addr global float 0.000000e+00, align 4
@nopen = internal unnamed_addr global i64 0, align 8
@amp_breth = internal unnamed_addr global float 0.000000e+00, align 4
@amp_voice = internal unnamed_addr global float 0.000000e+00, align 4
@amp_aspir = internal unnamed_addr global float 0.000000e+00, align 4
@rnz.0 = internal unnamed_addr global float 0.000000e+00, align 8
@rnz.1 = internal unnamed_addr global float 0.000000e+00, align 8
@rnz.2 = internal unnamed_addr global float 0.000000e+00, align 8
@rnz.3 = internal unnamed_addr global float 0.000000e+00, align 8
@rnz.4 = internal unnamed_addr global float 0.000000e+00, align 8
@rnpc.0 = internal unnamed_addr global float 0.000000e+00, align 8
@rnpc.1 = internal unnamed_addr global float 0.000000e+00, align 8
@rnpc.2 = internal unnamed_addr global float 0.000000e+00, align 8
@rnpc.3 = internal unnamed_addr global float 0.000000e+00, align 8
@rnpc.4 = internal unnamed_addr global float 0.000000e+00, align 8
@r8c.0 = internal unnamed_addr global float 0.000000e+00, align 8
@r8c.1 = internal unnamed_addr global float 0.000000e+00, align 8
@r8c.2 = internal unnamed_addr global float 0.000000e+00, align 8
@r8c.3 = internal unnamed_addr global float 0.000000e+00, align 8
@r8c.4 = internal unnamed_addr global float 0.000000e+00, align 8
@r7c.0 = internal unnamed_addr global float 0.000000e+00, align 8
@r7c.1 = internal unnamed_addr global float 0.000000e+00, align 8
@r7c.2 = internal unnamed_addr global float 0.000000e+00, align 8
@r7c.3 = internal unnamed_addr global float 0.000000e+00, align 8
@r7c.4 = internal unnamed_addr global float 0.000000e+00, align 8
@r6c.0 = internal unnamed_addr global float 0.000000e+00, align 8
@r6c.1 = internal unnamed_addr global float 0.000000e+00, align 8
@r6c.2 = internal unnamed_addr global float 0.000000e+00, align 8
@r6c.3 = internal unnamed_addr global float 0.000000e+00, align 8
@r6c.4 = internal unnamed_addr global float 0.000000e+00, align 8
@r5c.0 = internal unnamed_addr global float 0.000000e+00, align 8
@r5c.1 = internal unnamed_addr global float 0.000000e+00, align 8
@r5c.2 = internal unnamed_addr global float 0.000000e+00, align 8
@r5c.3 = internal unnamed_addr global float 0.000000e+00, align 8
@r5c.4 = internal unnamed_addr global float 0.000000e+00, align 8
@r4c.0 = internal unnamed_addr global float 0.000000e+00, align 8
@r4c.1 = internal unnamed_addr global float 0.000000e+00, align 8
@r4c.2 = internal unnamed_addr global float 0.000000e+00, align 8
@r4c.3 = internal unnamed_addr global float 0.000000e+00, align 8
@r4c.4 = internal unnamed_addr global float 0.000000e+00, align 8
@r3c.0 = internal unnamed_addr global float 0.000000e+00, align 8
@r3c.1 = internal unnamed_addr global float 0.000000e+00, align 8
@r3c.2 = internal unnamed_addr global float 0.000000e+00, align 8
@r3c.3 = internal unnamed_addr global float 0.000000e+00, align 8
@r3c.4 = internal unnamed_addr global float 0.000000e+00, align 8
@r2c.0 = internal unnamed_addr global float 0.000000e+00, align 8
@r2c.1 = internal unnamed_addr global float 0.000000e+00, align 8
@r2c.2 = internal unnamed_addr global float 0.000000e+00, align 8
@r2c.3 = internal unnamed_addr global float 0.000000e+00, align 8
@r2c.4 = internal unnamed_addr global float 0.000000e+00, align 8
@r1c.0 = internal unnamed_addr global float 0.000000e+00, align 8
@r1c.1 = internal unnamed_addr global float 0.000000e+00, align 8
@r1c.2 = internal unnamed_addr global float 0.000000e+00, align 8
@r1c.3 = internal unnamed_addr global float 0.000000e+00, align 8
@r1c.4 = internal unnamed_addr global float 0.000000e+00, align 8
@r1p.0 = internal unnamed_addr global float 0.000000e+00, align 8
@r1p.1 = internal unnamed_addr global float 0.000000e+00, align 8
@r1p.2 = internal unnamed_addr global float 0.000000e+00, align 8
@r1p.3 = internal unnamed_addr global float 0.000000e+00, align 8
@r1p.4 = internal unnamed_addr global float 0.000000e+00, align 8
@glotlast = internal unnamed_addr global float 0.000000e+00, align 4
@r6p.0 = internal unnamed_addr global float 0.000000e+00, align 8
@r6p.1 = internal unnamed_addr global float 0.000000e+00, align 8
@r6p.2 = internal unnamed_addr global float 0.000000e+00, align 8
@r6p.3 = internal unnamed_addr global float 0.000000e+00, align 8
@r6p.4 = internal unnamed_addr global float 0.000000e+00, align 8
@r5p.0 = internal unnamed_addr global float 0.000000e+00, align 8
@r5p.1 = internal unnamed_addr global float 0.000000e+00, align 8
@r5p.2 = internal unnamed_addr global float 0.000000e+00, align 8
@r5p.3 = internal unnamed_addr global float 0.000000e+00, align 8
@r5p.4 = internal unnamed_addr global float 0.000000e+00, align 8
@r4p.0 = internal unnamed_addr global float 0.000000e+00, align 8
@r4p.1 = internal unnamed_addr global float 0.000000e+00, align 8
@r4p.2 = internal unnamed_addr global float 0.000000e+00, align 8
@r4p.3 = internal unnamed_addr global float 0.000000e+00, align 8
@r4p.4 = internal unnamed_addr global float 0.000000e+00, align 8
@r3p.0 = internal unnamed_addr global float 0.000000e+00, align 8
@r3p.1 = internal unnamed_addr global float 0.000000e+00, align 8
@r3p.2 = internal unnamed_addr global float 0.000000e+00, align 8
@r3p.3 = internal unnamed_addr global float 0.000000e+00, align 8
@r3p.4 = internal unnamed_addr global float 0.000000e+00, align 8
@r2p.0 = internal unnamed_addr global float 0.000000e+00, align 8
@r2p.1 = internal unnamed_addr global float 0.000000e+00, align 8
@r2p.2 = internal unnamed_addr global float 0.000000e+00, align 8
@r2p.3 = internal unnamed_addr global float 0.000000e+00, align 8
@r2p.4 = internal unnamed_addr global float 0.000000e+00, align 8
@amp_bypas = internal unnamed_addr global float 0.000000e+00, align 4
@rout.0 = internal unnamed_addr global float 0.000000e+00, align 8
@rout.1 = internal unnamed_addr global float 0.000000e+00, align 8
@rout.2 = internal unnamed_addr global float 0.000000e+00, align 8
@rout.3 = internal unnamed_addr global float 0.000000e+00, align 8
@rout.4 = internal unnamed_addr global float 0.000000e+00, align 8
@minus_pi_t = internal unnamed_addr global float 0.000000e+00, align 4
@two_pi_t = internal unnamed_addr global float 0.000000e+00, align 4
@rgl.0 = internal unnamed_addr global float 0.000000e+00, align 8
@rgl.1 = internal unnamed_addr global float 0.000000e+00, align 8
@rgl.2 = internal unnamed_addr global float 0.000000e+00, align 8
@rgl.3 = internal unnamed_addr global float 0.000000e+00, align 8
@rgl.4 = internal unnamed_addr global float 0.000000e+00, align 8
@warnsw = internal unnamed_addr global i1 false, align 4
@F0hz10 = internal unnamed_addr global i64 0, align 8
@AVdb = internal unnamed_addr global i64 0, align 8
@Kskew = internal unnamed_addr global i64 0, align 8
@.str.44.539 = private unnamed_addr constant [30 x i8] c"Try to compute amptable[%ld]\0A\00", align 1
@amptable = internal unnamed_addr constant [88 x float] [float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 6.000000e+00, float 7.000000e+00, float 8.000000e+00, float 9.000000e+00, float 1.000000e+01, float 1.100000e+01, float 1.300000e+01, float 1.400000e+01, float 1.600000e+01, float 1.800000e+01, float 2.000000e+01, float 2.200000e+01, float 2.500000e+01, float 2.800000e+01, float 3.200000e+01, float 3.500000e+01, float 4.000000e+01, float 4.500000e+01, float 5.100000e+01, float 5.700000e+01, float 6.400000e+01, float 7.100000e+01, float 8.000000e+01, float 9.000000e+01, float 1.010000e+02, float 1.140000e+02, float 1.280000e+02, float 1.420000e+02, float 1.590000e+02, float 1.790000e+02, float 2.020000e+02, float 2.270000e+02, float 2.560000e+02, float 2.840000e+02, float 3.180000e+02, float 3.590000e+02, float 4.050000e+02, float 4.550000e+02, float 5.120000e+02, float 5.680000e+02, float 6.380000e+02, float 7.190000e+02, float 8.110000e+02, float 9.110000e+02, float 1.024000e+03, float 1.137000e+03, float 1.276000e+03, float 1.438000e+03, float 1.622000e+03, float 1.823000e+03, float 2.048000e+03, float 2.273000e+03, float 2.552000e+03, float 2.875000e+03, float 3.244000e+03, float 3.645000e+03, float 4.096000e+03, float 4.547000e+03, float 5.104000e+03, float 5.751000e+03, float 6.488000e+03, float 7.291000e+03, float 8.192000e+03, float 9.093000e+03, float 1.020700e+04, float 1.150200e+04, float 1.297600e+04, float 1.458200e+04, float 1.638400e+04, float 1.835000e+04, float 2.064400e+04, float 2.342900e+04, float 2.621400e+04, float 2.949100e+04, float 3.276700e+04], align 16
@impulsive_source.doublet = internal unnamed_addr constant [3 x float] [float 0.000000e+00, float 1.300000e+07, float -1.300000e+07], align 4
@vwave = internal unnamed_addr global float 0.000000e+00, align 4
@natglot_b = internal unnamed_addr global float 0.000000e+00, align 4
@natglot_a = internal unnamed_addr global float 0.000000e+00, align 4
@.str.47.540 = private unnamed_addr constant [24 x i8] c"truncated, nopen = %ld\0A\00", align 1
@natglot = internal unnamed_addr constant [224 x i16] [i16 1200, i16 1142, i16 1088, i16 1038, i16 991, i16 948, i16 907, i16 869, i16 833, i16 799, i16 768, i16 738, i16 710, i16 683, i16 658, i16 634, i16 612, i16 590, i16 570, i16 551, i16 533, i16 515, i16 499, i16 483, i16 468, i16 454, i16 440, i16 427, i16 415, i16 403, i16 391, i16 380, i16 370, i16 360, i16 350, i16 341, i16 332, i16 323, i16 315, i16 307, i16 300, i16 292, i16 285, i16 278, i16 272, i16 265, i16 259, i16 253, i16 247, i16 242, i16 237, i16 231, i16 226, i16 221, i16 217, i16 212, i16 208, i16 204, i16 199, i16 195, i16 192, i16 188, i16 184, i16 180, i16 177, i16 174, i16 170, i16 167, i16 164, i16 161, i16 158, i16 155, i16 153, i16 150, i16 147, i16 145, i16 142, i16 140, i16 137, i16 135, i16 133, i16 131, i16 128, i16 126, i16 124, i16 122, i16 120, i16 119, i16 117, i16 115, i16 113, i16 111, i16 110, i16 108, i16 106, i16 105, i16 103, i16 102, i16 100, i16 99, i16 97, i16 96, i16 95, i16 93, i16 92, i16 91, i16 90, i16 88, i16 87, i16 86, i16 85, i16 84, i16 83, i16 82, i16 80, i16 79, i16 78, i16 77, i16 76, i16 75, i16 75, i16 74, i16 73, i16 72, i16 71, i16 70, i16 69, i16 68, i16 68, i16 67, i16 66, i16 65, i16 64, i16 64, i16 63, i16 62, i16 61, i16 61, i16 60, i16 59, i16 59, i16 58, i16 57, i16 57, i16 56, i16 56, i16 55, i16 55, i16 54, i16 54, i16 53, i16 53, i16 52, i16 52, i16 51, i16 51, i16 50, i16 50, i16 49, i16 49, i16 48, i16 48, i16 47, i16 47, i16 46, i16 46, i16 45, i16 45, i16 44, i16 44, i16 43, i16 43, i16 42, i16 42, i16 41, i16 41, i16 41, i16 41, i16 40, i16 40, i16 39, i16 39, i16 38, i16 38, i16 38, i16 38, i16 37, i16 37, i16 36, i16 36, i16 36, i16 36, i16 35, i16 35, i16 35, i16 35, i16 34, i16 34, i16 33, i16 33, i16 33, i16 33, i16 32, i16 32, i16 32, i16 32, i16 31, i16 31, i16 31, i16 31, i16 30, i16 30, i16 30, i16 30, i16 29, i16 29, i16 29, i16 29, i16 28, i16 28, i16 28, i16 28, i16 27, i16 27], align 16
@.str.48.541 = private unnamed_addr constant [58 x i8] c"Kskew duration=%ld > glottal closed period=%ld, truncate\0A\00", align 1
@skew = internal unnamed_addr global i64 0, align 8
@.str.67.542 = private unnamed_addr constant [17 x i8] c"\0A* * * WARNING: \00", align 1
@.str.68.543 = private unnamed_addr constant [59 x i8] c" Signal at output of synthesizer (+%3.1f dB) exceeds 0 dB\0A\00", align 1
@str = private unnamed_addr constant [57 x i8] c"Warning: glottal open period cannot exceed T0, truncated\00", align 1
@str.71 = private unnamed_addr constant [52 x i8] c"Warning: minimum glottal open period is 10 samples.\00", align 1
@.str.546 = private unnamed_addr constant [2 x i8] c" \00", align 1
@.str.1.547 = private unnamed_addr constant [2 x i8] c"B\00", align 1
@.str.2.548 = private unnamed_addr constant [3 x i8] c"CH\00", align 1
@.str.3.549 = private unnamed_addr constant [2 x i8] c"D\00", align 1
@.str.4.550 = private unnamed_addr constant [3 x i8] c"DH\00", align 1
@.str.5.551 = private unnamed_addr constant [2 x i8] c"F\00", align 1
@.str.6.552 = private unnamed_addr constant [2 x i8] c"G\00", align 1
@.str.7.553 = private unnamed_addr constant [3 x i8] c"HH\00", align 1
@.str.8.554 = private unnamed_addr constant [3 x i8] c"JH\00", align 1
@.str.9.555 = private unnamed_addr constant [2 x i8] c"K\00", align 1
@.str.10.556 = private unnamed_addr constant [2 x i8] c"L\00", align 1
@.str.11.557 = private unnamed_addr constant [2 x i8] c"M\00", align 1
@.str.12.558 = private unnamed_addr constant [2 x i8] c"N\00", align 1
@.str.13.559 = private unnamed_addr constant [3 x i8] c"NG\00", align 1
@.str.14.560 = private unnamed_addr constant [2 x i8] c"P\00", align 1
@.str.15.561 = private unnamed_addr constant [2 x i8] c"R\00", align 1
@.str.16.562 = private unnamed_addr constant [2 x i8] c"S\00", align 1
@.str.17.563 = private unnamed_addr constant [3 x i8] c"SH\00", align 1
@.str.18.564 = private unnamed_addr constant [2 x i8] c"T\00", align 1
@.str.19.565 = private unnamed_addr constant [3 x i8] c"TH\00", align 1
@.str.20.566 = private unnamed_addr constant [3 x i8] c"TS\00", align 1
@.str.21.567 = private unnamed_addr constant [2 x i8] c"V\00", align 1
@.str.22.568 = private unnamed_addr constant [2 x i8] c"W\00", align 1
@.str.23.569 = private unnamed_addr constant [2 x i8] c"Y\00", align 1
@.str.24.570 = private unnamed_addr constant [2 x i8] c"Z\00", align 1
@.str.25.571 = private unnamed_addr constant [3 x i8] c"ZH\00", align 1
@.str.26.572 = private unnamed_addr constant [3 x i8] c"AX\00", align 1
@.str.27.573 = private unnamed_addr constant [3 x i8] c"AA\00", align 1
@.str.28.574 = private unnamed_addr constant [4 x i8] c"AA1\00", align 1
@.str.29.575 = private unnamed_addr constant [4 x i8] c"AA2\00", align 1
@.str.30.576 = private unnamed_addr constant [3 x i8] c"AE\00", align 1
@.str.31.577 = private unnamed_addr constant [4 x i8] c"AE1\00", align 1
@.str.32.578 = private unnamed_addr constant [4 x i8] c"AE2\00", align 1
@.str.33.579 = private unnamed_addr constant [3 x i8] c"AH\00", align 1
@.str.34.580 = private unnamed_addr constant [4 x i8] c"AH1\00", align 1
@.str.35.581 = private unnamed_addr constant [4 x i8] c"AH2\00", align 1
@.str.36.582 = private unnamed_addr constant [3 x i8] c"AO\00", align 1
@.str.37.583 = private unnamed_addr constant [4 x i8] c"AO1\00", align 1
@.str.38.584 = private unnamed_addr constant [4 x i8] c"AO2\00", align 1
@.str.39.585 = private unnamed_addr constant [3 x i8] c"AW\00", align 1
@.str.40.586 = private unnamed_addr constant [4 x i8] c"AW1\00", align 1
@.str.41.587 = private unnamed_addr constant [4 x i8] c"AW2\00", align 1
@.str.42.588 = private unnamed_addr constant [3 x i8] c"AY\00", align 1
@.str.43.589 = private unnamed_addr constant [4 x i8] c"AY1\00", align 1
@.str.44.590 = private unnamed_addr constant [4 x i8] c"AY2\00", align 1
@.str.45.591 = private unnamed_addr constant [3 x i8] c"EA\00", align 1
@.str.46.592 = private unnamed_addr constant [4 x i8] c"EA1\00", align 1
@.str.47.593 = private unnamed_addr constant [4 x i8] c"EA2\00", align 1
@.str.48.594 = private unnamed_addr constant [3 x i8] c"EH\00", align 1
@.str.49.595 = private unnamed_addr constant [4 x i8] c"EH1\00", align 1
@.str.50.596 = private unnamed_addr constant [4 x i8] c"EH2\00", align 1
@.str.51.597 = private unnamed_addr constant [3 x i8] c"ER\00", align 1
@.str.52.598 = private unnamed_addr constant [4 x i8] c"ER1\00", align 1
@.str.53.599 = private unnamed_addr constant [4 x i8] c"ER2\00", align 1
@.str.54.600 = private unnamed_addr constant [3 x i8] c"EY\00", align 1
@.str.55.601 = private unnamed_addr constant [4 x i8] c"EY1\00", align 1
@.str.56.602 = private unnamed_addr constant [4 x i8] c"EY2\00", align 1
@.str.57.603 = private unnamed_addr constant [3 x i8] c"IA\00", align 1
@.str.58.604 = private unnamed_addr constant [4 x i8] c"IA1\00", align 1
@.str.59.605 = private unnamed_addr constant [4 x i8] c"IA2\00", align 1
@.str.60.606 = private unnamed_addr constant [3 x i8] c"IH\00", align 1
@.str.61.607 = private unnamed_addr constant [4 x i8] c"IH1\00", align 1
@.str.62.608 = private unnamed_addr constant [4 x i8] c"IH2\00", align 1
@.str.63.609 = private unnamed_addr constant [3 x i8] c"IY\00", align 1
@.str.64.610 = private unnamed_addr constant [4 x i8] c"IY1\00", align 1
@.str.65.611 = private unnamed_addr constant [4 x i8] c"IY2\00", align 1
@.str.66.612 = private unnamed_addr constant [3 x i8] c"OH\00", align 1
@.str.67.613 = private unnamed_addr constant [4 x i8] c"OH1\00", align 1
@.str.68.614 = private unnamed_addr constant [4 x i8] c"OH2\00", align 1
@.str.69.615 = private unnamed_addr constant [3 x i8] c"OW\00", align 1
@.str.70.616 = private unnamed_addr constant [4 x i8] c"OW1\00", align 1
@.str.71.617 = private unnamed_addr constant [4 x i8] c"OW2\00", align 1
@.str.72.618 = private unnamed_addr constant [3 x i8] c"OY\00", align 1
@.str.73.619 = private unnamed_addr constant [4 x i8] c"OY1\00", align 1
@.str.74.620 = private unnamed_addr constant [4 x i8] c"OY2\00", align 1
@.str.75.621 = private unnamed_addr constant [3 x i8] c"UA\00", align 1
@.str.76.622 = private unnamed_addr constant [4 x i8] c"UA1\00", align 1
@.str.77.623 = private unnamed_addr constant [4 x i8] c"UA2\00", align 1
@.str.78.624 = private unnamed_addr constant [3 x i8] c"UH\00", align 1
@.str.79.625 = private unnamed_addr constant [4 x i8] c"UH1\00", align 1
@.str.80.626 = private unnamed_addr constant [4 x i8] c"UH2\00", align 1
@.str.81.627 = private unnamed_addr constant [3 x i8] c"UW\00", align 1
@.str.82.628 = private unnamed_addr constant [4 x i8] c"UW1\00", align 1
@.str.83.629 = private unnamed_addr constant [4 x i8] c"UW2\00", align 1
@ph_name = dso_local local_unnamed_addr global [85 x ptr] [ptr @.str.546, ptr @.str.1.547, ptr @.str.2.548, ptr @.str.3.549, ptr @.str.4.550, ptr @.str.5.551, ptr @.str.6.552, ptr @.str.7.553, ptr @.str.8.554, ptr @.str.9.555, ptr @.str.10.556, ptr @.str.11.557, ptr @.str.12.558, ptr @.str.13.559, ptr @.str.14.560, ptr @.str.15.561, ptr @.str.16.562, ptr @.str.17.563, ptr @.str.18.564, ptr @.str.19.565, ptr @.str.20.566, ptr @.str.21.567, ptr @.str.22.568, ptr @.str.23.569, ptr @.str.24.570, ptr @.str.25.571, ptr @.str.26.572, ptr @.str.27.573, ptr @.str.28.574, ptr @.str.29.575, ptr @.str.30.576, ptr @.str.31.577, ptr @.str.32.578, ptr @.str.33.579, ptr @.str.34.580, ptr @.str.35.581, ptr @.str.36.582, ptr @.str.37.583, ptr @.str.38.584, ptr @.str.39.585, ptr @.str.40.586, ptr @.str.41.587, ptr @.str.42.588, ptr @.str.43.589, ptr @.str.44.590, ptr @.str.45.591, ptr @.str.46.592, ptr @.str.47.593, ptr @.str.48.594, ptr @.str.49.595, ptr @.str.50.596, ptr @.str.51.597, ptr @.str.52.598, ptr @.str.53.599, ptr @.str.54.600, ptr @.str.55.601, ptr @.str.56.602, ptr @.str.57.603, ptr @.str.58.604, ptr @.str.59.605, ptr @.str.60.606, ptr @.str.61.607, ptr @.str.62.608, ptr @.str.63.609, ptr @.str.64.610, ptr @.str.65.611, ptr @.str.66.612, ptr @.str.67.613, ptr @.str.68.614, ptr @.str.69.615, ptr @.str.70.616, ptr @.str.71.617, ptr @.str.72.618, ptr @.str.73.619, ptr @.str.74.620, ptr @.str.75.621, ptr @.str.76.622, ptr @.str.77.623, ptr @.str.78.624, ptr @.str.79.625, ptr @.str.80.626, ptr @.str.81.627, ptr @.str.82.628, ptr @.str.83.629, ptr null], align 16
@.str.84.630 = private unnamed_addr constant [2 x i8] c"b\00", align 1
@.str.85.631 = private unnamed_addr constant [3 x i8] c"tS\00", align 1
@.str.86.632 = private unnamed_addr constant [2 x i8] c"d\00", align 1
@.str.87.633 = private unnamed_addr constant [2 x i8] c"f\00", align 1
@.str.88.634 = private unnamed_addr constant [2 x i8] c"g\00", align 1
@.str.89.635 = private unnamed_addr constant [2 x i8] c"h\00", align 1
@.str.90.636 = private unnamed_addr constant [3 x i8] c"dZ\00", align 1
@.str.91.637 = private unnamed_addr constant [2 x i8] c"k\00", align 1
@.str.92.638 = private unnamed_addr constant [2 x i8] c"l\00", align 1
@.str.93.639 = private unnamed_addr constant [2 x i8] c"m\00", align 1
@.str.94.640 = private unnamed_addr constant [2 x i8] c"n\00", align 1
@.str.95.641 = private unnamed_addr constant [2 x i8] c"p\00", align 1
@.str.96.642 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.97.643 = private unnamed_addr constant [2 x i8] c"s\00", align 1
@.str.98.644 = private unnamed_addr constant [2 x i8] c"t\00", align 1
@.str.99.645 = private unnamed_addr constant [3 x i8] c"ts\00", align 1
@.str.100.646 = private unnamed_addr constant [2 x i8] c"v\00", align 1
@.str.101.647 = private unnamed_addr constant [2 x i8] c"w\00", align 1
@.str.102.648 = private unnamed_addr constant [2 x i8] c"j\00", align 1
@.str.103.649 = private unnamed_addr constant [2 x i8] c"z\00", align 1
@.str.104.650 = private unnamed_addr constant [2 x i8] c"@\00", align 1
@.str.105.651 = private unnamed_addr constant [2 x i8] c"A\00", align 1
@.str.106.652 = private unnamed_addr constant [2 x i8] c"&\00", align 1
@.str.107.653 = private unnamed_addr constant [3 x i8] c"'&\00", align 1
@.str.108.654 = private unnamed_addr constant [3 x i8] c",&\00", align 1
@.str.109.655 = private unnamed_addr constant [3 x i8] c"'V\00", align 1
@.str.110.656 = private unnamed_addr constant [3 x i8] c",V\00", align 1
@.str.111.657 = private unnamed_addr constant [2 x i8] c"O\00", align 1
@.str.112.658 = private unnamed_addr constant [3 x i8] c"'O\00", align 1
@.str.113.659 = private unnamed_addr constant [3 x i8] c",O\00", align 1
@.str.114.660 = private unnamed_addr constant [3 x i8] c"aU\00", align 1
@.str.115.661 = private unnamed_addr constant [4 x i8] c"'aU\00", align 1
@.str.116.662 = private unnamed_addr constant [4 x i8] c",aU\00", align 1
@.str.117.663 = private unnamed_addr constant [3 x i8] c"aI\00", align 1
@.str.118.664 = private unnamed_addr constant [4 x i8] c"'aI\00", align 1
@.str.119.665 = private unnamed_addr constant [4 x i8] c",aI\00", align 1
@.str.120.666 = private unnamed_addr constant [3 x i8] c"e@\00", align 1
@.str.121.667 = private unnamed_addr constant [4 x i8] c"'e@\00", align 1
@.str.122.668 = private unnamed_addr constant [4 x i8] c",e@\00", align 1
@.str.123.669 = private unnamed_addr constant [2 x i8] c"e\00", align 1
@.str.124.670 = private unnamed_addr constant [3 x i8] c"'e\00", align 1
@.str.125.671 = private unnamed_addr constant [3 x i8] c",e\00", align 1
@.str.126.672 = private unnamed_addr constant [2 x i8] c"3\00", align 1
@.str.127.673 = private unnamed_addr constant [3 x i8] c"'3\00", align 1
@.str.128.674 = private unnamed_addr constant [3 x i8] c",3\00", align 1
@.str.129.675 = private unnamed_addr constant [3 x i8] c"eI\00", align 1
@.str.130.676 = private unnamed_addr constant [4 x i8] c"'eI\00", align 1
@.str.131.677 = private unnamed_addr constant [4 x i8] c",eI\00", align 1
@.str.132.678 = private unnamed_addr constant [3 x i8] c"I@\00", align 1
@.str.133.679 = private unnamed_addr constant [4 x i8] c"'I@\00", align 1
@.str.134.680 = private unnamed_addr constant [4 x i8] c",I@\00", align 1
@.str.135.681 = private unnamed_addr constant [2 x i8] c"I\00", align 1
@.str.136.682 = private unnamed_addr constant [3 x i8] c"'I\00", align 1
@.str.137.683 = private unnamed_addr constant [3 x i8] c",I\00", align 1
@.str.138.684 = private unnamed_addr constant [2 x i8] c"i\00", align 1
@.str.139.685 = private unnamed_addr constant [3 x i8] c"'i\00", align 1
@.str.140.686 = private unnamed_addr constant [3 x i8] c",i\00", align 1
@.str.141.687 = private unnamed_addr constant [2 x i8] c"0\00", align 1
@.str.142.688 = private unnamed_addr constant [3 x i8] c"'0\00", align 1
@.str.143.689 = private unnamed_addr constant [3 x i8] c",0\00", align 1
@.str.144.690 = private unnamed_addr constant [3 x i8] c"@U\00", align 1
@.str.145.691 = private unnamed_addr constant [4 x i8] c"'@U\00", align 1
@.str.146.692 = private unnamed_addr constant [4 x i8] c",@U\00", align 1
@.str.147.693 = private unnamed_addr constant [3 x i8] c"oI\00", align 1
@.str.148.694 = private unnamed_addr constant [4 x i8] c"'oI\00", align 1
@.str.149.695 = private unnamed_addr constant [4 x i8] c",oI\00", align 1
@.str.150.696 = private unnamed_addr constant [3 x i8] c"U@\00", align 1
@.str.151.697 = private unnamed_addr constant [4 x i8] c"'U@\00", align 1
@.str.152.698 = private unnamed_addr constant [4 x i8] c",U@\00", align 1
@.str.153.699 = private unnamed_addr constant [2 x i8] c"U\00", align 1
@.str.154.700 = private unnamed_addr constant [3 x i8] c"'U\00", align 1
@.str.155.701 = private unnamed_addr constant [3 x i8] c",U\00", align 1
@.str.156.702 = private unnamed_addr constant [2 x i8] c"u\00", align 1
@.str.157.703 = private unnamed_addr constant [3 x i8] c"'u\00", align 1
@.str.158.704 = private unnamed_addr constant [3 x i8] c",u\00", align 1
@ph_br = dso_local local_unnamed_addr global [85 x ptr] [ptr @.str.546, ptr @.str.84.630, ptr @.str.85.631, ptr @.str.86.632, ptr @.str.3.549, ptr @.str.87.633, ptr @.str.88.634, ptr @.str.89.635, ptr @.str.90.636, ptr @.str.91.637, ptr @.str.92.638, ptr @.str.93.639, ptr @.str.94.640, ptr @.str.12.558, ptr @.str.95.641, ptr @.str.96.642, ptr @.str.97.643, ptr @.str.16.562, ptr @.str.98.644, ptr @.str.18.564, ptr @.str.99.645, ptr @.str.100.646, ptr @.str.101.647, ptr @.str.102.648, ptr @.str.103.649, ptr @.str.24.570, ptr @.str.104.650, ptr @.str.105.651, ptr @.str.105.651, ptr @.str.105.651, ptr @.str.106.652, ptr @.str.107.653, ptr @.str.108.654, ptr @.str.21.567, ptr @.str.109.655, ptr @.str.110.656, ptr @.str.111.657, ptr @.str.112.658, ptr @.str.113.659, ptr @.str.114.660, ptr @.str.115.661, ptr @.str.116.662, ptr @.str.117.663, ptr @.str.118.664, ptr @.str.119.665, ptr @.str.120.666, ptr @.str.121.667, ptr @.str.122.668, ptr @.str.123.669, ptr @.str.124.670, ptr @.str.125.671, ptr @.str.126.672, ptr @.str.127.673, ptr @.str.128.674, ptr @.str.129.675, ptr @.str.130.676, ptr @.str.131.677, ptr @.str.132.678, ptr @.str.133.679, ptr @.str.134.680, ptr @.str.135.681, ptr @.str.136.682, ptr @.str.137.683, ptr @.str.138.684, ptr @.str.139.685, ptr @.str.140.686, ptr @.str.141.687, ptr @.str.142.688, ptr @.str.143.689, ptr @.str.144.690, ptr @.str.145.691, ptr @.str.146.692, ptr @.str.147.693, ptr @.str.148.694, ptr @.str.149.695, ptr @.str.150.696, ptr @.str.151.697, ptr @.str.152.698, ptr @.str.153.699, ptr @.str.154.700, ptr @.str.155.701, ptr @.str.156.702, ptr @.str.157.703, ptr @.str.158.704, ptr null], align 16
@.str.159.707 = private unnamed_addr constant [3 x i8] c"3R\00", align 1
@.str.160.708 = private unnamed_addr constant [4 x i8] c"'3R\00", align 1
@.str.161.709 = private unnamed_addr constant [4 x i8] c",3R\00", align 1
@.str.162.710 = private unnamed_addr constant [3 x i8] c"oU\00", align 1
@.str.163.711 = private unnamed_addr constant [4 x i8] c"'oU\00", align 1
@.str.164.712 = private unnamed_addr constant [4 x i8] c",oU\00", align 1
@ph_am = dso_local global [85 x ptr] [ptr @.str.546, ptr @.str.84.630, ptr @.str.85.631, ptr @.str.86.632, ptr @.str.3.549, ptr @.str.87.633, ptr @.str.88.634, ptr @.str.89.635, ptr @.str.90.636, ptr @.str.91.637, ptr @.str.92.638, ptr @.str.93.639, ptr @.str.94.640, ptr @.str.12.558, ptr @.str.95.641, ptr @.str.96.642, ptr @.str.97.643, ptr @.str.16.562, ptr @.str.98.644, ptr @.str.18.564, ptr @.str.99.645, ptr @.str.100.646, ptr @.str.101.647, ptr @.str.102.648, ptr @.str.103.649, ptr @.str.24.570, ptr @.str.104.650, ptr @.str.105.651, ptr @.str.105.651, ptr @.str.105.651, ptr @.str.106.652, ptr @.str.107.653, ptr @.str.108.654, ptr @.str.21.567, ptr @.str.109.655, ptr @.str.110.656, ptr @.str.111.657, ptr @.str.112.658, ptr @.str.113.659, ptr @.str.114.660, ptr @.str.115.661, ptr @.str.116.662, ptr @.str.117.663, ptr @.str.118.664, ptr @.str.119.665, ptr @.str.120.666, ptr @.str.121.667, ptr @.str.122.668, ptr @.str.123.669, ptr @.str.124.670, ptr @.str.125.671, ptr @.str.159.707, ptr @.str.160.708, ptr @.str.161.709, ptr @.str.129.675, ptr @.str.130.676, ptr @.str.131.677, ptr @.str.132.678, ptr @.str.133.679, ptr @.str.134.680, ptr @.str.135.681, ptr @.str.136.682, ptr @.str.137.683, ptr @.str.138.684, ptr @.str.139.685, ptr @.str.140.686, ptr @.str.141.687, ptr @.str.142.688, ptr @.str.143.689, ptr @.str.162.710, ptr @.str.163.711, ptr @.str.164.712, ptr @.str.147.693, ptr @.str.148.694, ptr @.str.149.695, ptr @.str.156.702, ptr @.str.157.703, ptr @.str.158.704, ptr @.str.153.699, ptr @.str.154.700, ptr @.str.155.701, ptr @.str.156.702, ptr @.str.157.703, ptr @.str.158.704, ptr null], align 16
@.str.713 = private unnamed_addr constant [64 x i8] c"$Id: phtoelm.c,v 1.13 1994/11/08 13:30:50 a904209 Exp a904209 $\00", align 1
@phtoelm_id = dso_local local_unnamed_addr global ptr @.str.713, align 8
@phtoelm = dso_local global ptr null, align 8
@Elements = dso_local global [69 x %struct.Elm_s] [%struct.Elm_s { ptr @.str.1.102, i8 31, i8 5, i8 5, i8 0, ptr null, ptr null, i64 0, [19 x %struct.interp_t] [%struct.interp_t { float 2.700000e+02, float 1.350000e+02, i8 50, i8 3, i8 3 }, %struct.interp_t { float 4.900000e+02, float 0.000000e+00, i8 100, i8 0, i8 0 }, %struct.interp_t { float 1.480000e+03, float 0.000000e+00, i8 100, i8 0, i8 0 }, %struct.interp_t { float 2.500000e+03, float 0.000000e+00, i8 100, i8 0, i8 0 }, %struct.interp_t { float 6.000000e+01, float 0.000000e+00, i8 100, i8 0, i8 0 }, %struct.interp_t { float 9.000000e+01, float 0.000000e+00, i8 100, i8 0, i8 0 }, %struct.interp_t { float 1.500000e+02, float 0.000000e+00, i8 100, i8 0, i8 0 }, %struct.interp_t { float -3.000000e+01, float -1.050000e+01, i8 100, i8 3, i8 0 }, %struct.interp_t { float -3.000000e+01, float -1.050000e+01, i8 100, i8 3, i8 0 }, %struct.interp_t { float -3.000000e+01, float -1.050000e+01, i8 100, i8 3, i8 0 }, %struct.interp_t { float -3.000000e+01, float -1.050000e+01, i8 100, i8 3, i8 0 }, %struct.interp_t { float -3.000000e+01, float -1.050000e+01, i8 100, i8 3, i8 0 }, %struct.interp_t { float -3.000000e+01, float 0.000000e+00, i8 100, i8 3, i8 0 }, %struct.interp_t { float -3.000000e+01, float 0.000000e+00, i8 100, i8 3, i8 0 }, %struct.interp_t { float -3.000000e+01, float 0.000000e+00, i8 100, i8 3, i8 0 }, %struct.interp_t { float 0.000000e+00, float 0.000000e+00, i8 50, i8 0, i8 0 }, %struct.interp_t { float 0.000000e+00, float 0.000000e+00, i8 50, i8 0, i8 0 }, %struct.interp_t { float 0.000000e+00, float 0.000000e+00, i8 50, i8 0, i8 0 }, %struct.interp_t { float 0.000000e+00, float 0.000000e+00, i8 50, i8 0, i8 0 }] }, %struct.Elm_s { ptr @.str.2.103, i8 29, i8 6, i8 6, i8 0, ptr null, ptr null, i64 0, [19 x %struct.interp_t] [%struct.interp_t { float 2.700000e+02, float 1.350000e+02, i8 50, i8 3, i8 3 }, %struct.interp_t { float 4.900000e+02, float 0.000000e+00, i8 100, i8 3, i8 3 }, %struct.interp_t { float 1.480000e+03, float 0.000000e+00, i8 100, i8 3, i8 3 }, %struct.interp_t { float 2.500000e+03, float 0.000000e+00, i8 100, i8 3, i8 3 }, %struct.interp_t { float 6.000000e+01, float 0.000000e+00, i8 100, i8 3, i8 3 }, %struct.interp_t { float 9.000000e+01, float 0.000000e+00, i8 100, i8 3, i8 3 }, %struct.interp_t { float 1.500000e+02, float 0.000000e+00, i8 100, i8 3, i8 3 }, %struct.interp_t { float -3.000000e+01, float -1.050000e+01, i8 100, i8 3, i8 0 }, %struct.interp_t { float -3.000000e+01, float -1.050000e+01, i8 100, i8 3, i8 0 }, %struct.interp_t { float -3.000000e+01, float -1.050000e+01, i8 100, i8 3, i8 0 }, %struct.interp_t { float -3.000000e+01, float -1.050000e+01, i8 100, i8 3, i8 0 }, %struct.interp_t { float -3.000000e+01, float -1.050000e+01, i8 100, i8 3, i8 0 }, %struct.interp_t { float -3.000000e+01, float 0.000000e+00, i8 100, i8 3, i8 0 }, %struct.interp_t { float -3.000000e+01, float 0.000000e+00, i8 100, i8 3, i8 0 }, %struct.interp_t { float -3.000000e+01, float 0.000000e+00, i8 100, i8 3, i8 0 }, %struct.interp_t { float 0.000000e+00, float 0.000000e+00, i8 50, i8 0, i8 0 }, %struct.interp_t { float 0.000000e+00, float 0.000000e+00, i8 50, i8 0, i8 0 }, %struct.interp_t { float 0.000000e+00, float 0.000000e+00, i8 50, i8 0, i8 0 }, %struct.interp_t { float 0.000000e+00, float 0.000000e+00, i8 50, i8 0, i8 0 }] }, %struct.Elm_s { ptr @.str.3.104, i8 23, i8 8, i8 8, i8 112, ptr @.str.4.105, ptr @.str.4.105, i64 138412040, [19 x %struct.interp_t] [%struct.interp_t { float 2.700000e+02, float 1.350000e+02, i8 50, i8 0, i8 0 }, %struct.interp_t { float 1.900000e+02, float 1.100000e+02, i8 50, i8 2, i8 2 }, %struct.interp_t { float 7.600000e+02, float 3.500000e+02, i8 50, i8 2, i8 2 }, %struct.interp_t { float 2.500000e+03, float 0.000000e+00, i8 100, i8 0, i8 2 }, %struct.interp_t { float 6.000000e+01, float 3.000000e+01, i8 50, i8 2, i8 2 }, %struct.interp_t { float 9.000000e+01, float 4.500000e+01, i8 50, i8 2, i8 2 }, %struct.interp_t { float 1.500000e+02, float 0.000000e+00, i8 100, i8 0, i8 2 }, %struct.interp_t { float -3.000000e+01, float 0.000000e+00, i8 100, i8 0, i8 0 }, %struct.interp_t { float -3.000000e+01, float 0.000000e+00, i8 100, i8 0, i8 0 }, %struct.interp_t { float -3.000000e+01, float 0.000000e+00, i8 100, i8 0, i8 0 }, %struct.interp_t { float -3.000000e+01, float 0.000000e+00, i8 100, i8 0, i8 0 }, %struct.interp_t { float -3.000000e+01, float 0.000000e+00, i8 100, i8 0, i8 0 }, %struct.interp_t { float -3.000000e+01, float 0.000000e+00, i8 100, i8 0, i8 0 }, %struct.interp_t { float -3.000000e+01, float 0.000000e+00, i8 100, i8 0, i8 0 }, %struct.interp_t { float -3.000000e+01, float 0.000000e+00, i8 100, i8 0, i8 0 }, %struct.interp_t { float 0.000000e+00, float 0.000000e+00, i8 50, i8 0, i8 0 }, %struct.interp_t { float 0.000000e+00, float 0.000000e+00, i8 50, i8 0, i8 0 }, %struct.interp_t { float 6.000000e+01, float 3.000000e+01, i8 50, i8 0, i8 0 }, %struct.interp_t { float 6.000000e+01, float 3.000000e+01, i8 50, i8 0, i8 0 }] }, %struct.Elm_s { ptr @.str.5.106, i8 29, i8 1, i8 1, i8 112, ptr @.str.4.105, ptr @.str.4.105, i64 138412040, [19 x %struct.interp_t] [%struct.interp_t { float 2.700000e+02, float 1.350000e+02, i8 50, i8 0, i8 0 }, %struct.interp_t { float 1.900000e+02, float 0.000000e+00, i8 100, i8 0, i8 0 }, %struct.interp_t { float 7.600000e+02, float 0.000000e+00, i8 100, i8 0, i8 0 }, %struct.interp_t { float 2.500000e+03, float 0.000000e+00, i8 100, i8 0, i8 0 }, %struct.interp_t { float 6.000000e+01, float 0.000000e+00, i8 100, i8 0, i8 0 }, %struct.interp_t { float 9.000000e+01, float 0.000000e+00, i8 100, i8 0, i8 0 }, %struct.interp_t { float 1.500000e+02, float 0.000000e+00, i8 100, i8 0, i8 0 }, %struct.interp_t { float -3.000000e+01, float 0.000000e+00, i8 100, i8 0, i8 0 }, %struct.interp_t { float 2.450000e+01, float 0.000000e+00, i8 100, i8 0, i8 0 }, %struct.interp_t { float 4.900000e+01, float 0.000000e+00, i8 100, i8 0, i8 0 }, %struct.interp_t { float 4.375000e+01, float 0.000000e+00, i8 100, i8 0, i8 0 }, %struct.interp_t { float 3.850000e+01, float 0.000000e+00, i8 100, i8 0, i8 0 }, %struct.interp_t { float -3.000000e+01, float 0.000000e+00, i8 100, i8 0, i8 0 }, %struct.interp_t { float -3.000000e+01, float 0.000000e+00, i8 100, i8 0, i8 0 }, %struct.interp_t { float -3.000000e+01, float 0.000000e+00, i8 100, i8 0, i8 0 }, %struct.interp_t { float 0.000000e+00, float 0.000000e+00, i8 50, i8 0, i8 0 }, %struct.interp_t { float 0.000000e+00, float 0.000000e+00, i8 50, i8 0, i8 0 }, %struct.interp_t { float 6.000000e+01, float 3.000000e+01, i8 50, i8 0, i8 0 }, %struct.interp_t { float 6.000000e+01, float 3.000000e+01, i8 50, i8 0, i8 0 }] }, %struct.Elm_s { ptr @.str.6.107, i8 23, i8 2, i8 2, i8 112, ptr @.str.4.105, ptr @.str.4.105, i64 138412040, [19 x %struct.interp_t] [%struct.interp_t { float 2.700000e+02, float 1.350000e+02, i8 50, i8 0, i8 0 }, %struct.interp_t { float 1.900000e+02, float 1.100000e+02, i8 50, i8 2, i8 2 }, %struct.interp_t { float 7.600000e+02, float 3.500000e+02, i8 50, i8 2, i8 2 }, %struct.interp_t { float 2.500000e+03, float 0.000000e+00, i8 100, i8 2, i8 2 }, %struct.interp_t { float 6.000000e+01, float 3.000000e+01, i8 50, i8 2, i8 2 }, %struct.interp_t { float 9.000000e+01, float 4.500000e+01, i8 50, i8 2, i8 2 }, %struct.interp_t { float 1.500000e+02, float 0.000000e+00, i8 100, i8 2, i8 2 }, %struct.interp_t { float -3.000000e+01, float 0.000000e+00, i8 100, i8 0, i8 0 }, %struct.interp_t { float 2.450000e+01, float 0.000000e+00, i8 100, i8 0, i8 0 }, %struct.interp_t { float 3.850000e+01, float 0.000000e+00, i8 100, i8 0, i8 0 }, %struct.interp_t { float 3.325000e+01, float 0.000000e+00, i8 100, i8 0, i8 0 }, %struct.interp_t { float 2.800000e+01, float 0.000000e+00, i8 100, i8 0, i8 0 }, %struct.interp_t { float -3.000000e+01, float 0.000000e+00, i8 100, i8 0, i8 0 }, %struct.interp_t { float -3.000000e+01, float 0.000000e+00, i8 100, i8 0, i8 0 }, %struct.interp_t { float -3.000000e+01, float 0.000000e+00, i8 100, i8 0, i8 0 }, %struct.interp_t { float 0.000000e+00, float 0.000000e+00, i8 50, i8 0, i8 0 }, %struct.interp_t { float 0.000000e+00, float 0.000000e+00, i8 50, i8 0, i8 0 }, %struct.interp_t { float 6.000000e+01, float 3.000000e+01, i8 50, i8 0, i8 0 }, %struct.interp_t { float 6.000000e+01, float 3.000000e+01, i8 50, i8 0, i8 0 }] }, %struct.Elm_s { ptr @.str.7.108, i8 23, i8 6, i8 6, i8 116, ptr @.str.8.109, ptr @.str.8.109, i64 138412033, [19 x %struct.interp_t] [%struct.interp_t { float 2.700000e+02, float 1.350000e+02, i8 50, i8 0, i8 0 }, %struct.interp_t { float 1.900000e+02, float 1.100000e+02, i8 50, i8 2, i8 2 }, %struct.interp_t { float 1.780000e+03, float 9.500000e+02, i8 50, i8 2, i8 2 }, %struct.interp_t { float 2.680000e+03, float 2.680000e+03, i8 0, i8 0, i8 2 }, %struct.interp_t { float 6.000000e+01, float 3.000000e+01, i8 50, i8 2, i8 2 }, %struct.interp_t { float 9.000000e+01, float 4.500000e+01, i8 50, i8 2, i8 2 }, %struct.interp_t { float 1.500000e+02, float 1.500000e+02, i8 0, i8 0, i8 2 }, %struct.interp_t { float -3.000000e+01, float 0.000000e+00, i8 100, i8 0, i8 0 }, %struct.interp_t { float -3.000000e+01, float 0.000000e+00, i8 100, i8 0, i8 0 }, %struct.interp_t { float -3.000000e+01, float 0.000000e+00, i8 100, i8 0, i8 0 }, %struct.interp_t { float -3.000000e+01, float 0.000000e+00, i8 100, i8 0, i8 0 }, %struct.interp_t { float -3.000000e+01, float 0.000000e+00, i8 100, i8 0, i8 0 }, %struct.interp_t { float -3.000000e+01, float 0.000000e+00, i8 100, i8 0, i8 0 }, %struct.interp_t { float -3.000000e+01, float 0.000000e+00, i8 100, i8 0, i8 0 }, %struct.interp_t { float -3.000000e+01, float 0.000000e+00, i8 100, i8 0, i8 0 }, %struct.interp_t { float 0.000000e+00, float 0.000000e+00, i8 50, i8 0, i8 0 }, %struct.interp_t { float 0.000000e+00, float 0.000000e+00, i8 50, i8 0, i8 0 }, %struct.interp_t { float 6.000000e+01, float 3.000000e+01, i8 50, i8 0, i8 0 }, %struct.interp_t { float 6.000000e+01, float 3.000000e+01, i8 50, i8 0, i8 0 }] }, %struct.Elm_s { ptr @.str.9.110, i8 29, i8 1, i8 1, i8 116, ptr @.str.8.109, ptr @.str.8.109, i64 138412033, [19 x %struct.interp_t] [%struct.interp_t { float 2.700000e+02, float 1.350000e+02, i8 50, i8 0, i8 0 }, %struct.interp_t { float 1.900000e+02, float 0.000000e+00, i8 100, i8 0, i8 0 }, %struct.interp_t { float 1.780000e+03, float 0.000000e+00, i8 100, i8 0, i8 0 }, %struct.interp_t { float 2.680000e+03, float 0.000000e+00, i8 100, i8 0, i8 0 }, %struct.interp_t { float 6.000000e+01, float 0.000000e+00, i8 100, i8 0, i8 0 }, %struct.interp_t { float 9.000000e+01, float 0.000000e+00, i8 100, i8 0, i8 0 }, %struct.interp_t { float 1.500000e+02, float 0.000000e+00, i8 100, i8 0, i8 0 }, %struct.interp_t { float -3.000000e+01, float 0.000000e+00, i8 100, i8 0, i8 0 }, %struct.interp_t { float -3.000000e+01, float 0.000000e+00, i8 100, i8 0, i8 0 }, %struct.interp_t { float -3.000000e+01, float 0.000000e+00, i8 100, i8 0, i8 0 }, %struct.interp_t { float 3.850000e+01, float 0.000000e+00, i8 100, i8 0, i8 0 }, %struct.interp_t { float 5.075000e+01, float 0.000000e+00, i8 100, i8 0, i8 0 }, %struct.interp_t { float -3.000000e+01, float 0.000000e+00, i8 100, i8 0, i8 0 }, %struct.interp_t { float -3.000000e+01, float 0.000000e+00, i8 100, i8 0, i8 0 }, %struct.interp_t { float -3.000000e+01, float 0.000000e+00, i8 100, i8 0, i8 0 }, %struct.interp_t { float 0.000000e+00, float 0.000000e+00, i8 50, i8 0, i8 0 }, %struct.interp_t { float 0.000000e+00, float 0.000000e+00, i8 50, i8 0, i8 0 }, %struct.interp_t { float 6.000000e+01, float 3.000000e+01, i8 50, i8 0, i8 0 }, %struct.interp_t { float 6.000000e+01, float 3.000000e+01, i8 50, i8 0, i8 0 }] }, %struct.Elm_s { ptr @.str.10.111, i8 23, i8 2, i8 2, i8 116, ptr @.str.8.109, ptr @.str.8.109, i64 138412033, [19 x %struct.interp_t] [%struct.interp_t { float 2.700000e+02, float 1.350000e+02, i8 50, i8 0, i8 0 }, %struct.interp_t { float 1.900000e+02, float 1.100000e+02, i8 50, i8 2, i8 1 }, %struct.interp_t { float 1.780000e+03, float 9.500000e+02, i8 50, i8 2, i8 1 }, %struct.interp_t { float 2.680000e+03, float 2.680000e+03, i8 0, i8 2, i8 0 }, %struct.interp_t { float 6.000000e+01, float 3.000000e+01, i8 50, i8 2, i8 1 }, %struct.interp_t { float 9.000000e+01, float 4.500000e+01, i8 50, i8 2, i8 1 }, %struct.interp_t { float 1.500000e+02, float 1.500000e+02, i8 0, i8 2, i8 0 }, %struct.interp_t { float -3.000000e+01, float 0.000000e+00, i8 100, i8 0, i8 0 }, %struct.interp_t { float -3.000000e+01, float 0.000000e+00, i8 100, i8 0, i8 0 }, %struct.interp_t { float -3.000000e+01, float 0.000000e+00, i8 100, i8 0, i8 0 }, %struct.interp_t { float 2.800000e+01, float 0.000000e+00, i8 100, i8 0, i8 0 }, %struct.interp_t { float 4.025000e+01, float 0.000000e+00, i8 100, i8 0, i8 0 }, %struct.interp_t { float -3.000000e+01, float 0.000000e+00, i8 100, i8 0, i8 0 }, %struct.interp_t { float -3.000000e+01, float 0.000000e+00, i8 100, i8 0, i8 0 }, %struct.interp_t { float -3.000000e+01, float 0.000000e+00, i8 100, i8 0, i8 0 }, %struct.interp_t { float 0.000000e+00, float 0.000000e+00, i8 50, i8 0, i8 0 }, %struct.interp_t { float 0.000000e+00, float 0.000000e+00, i8 50, i8 0, i8 0 }, %struct.interp_t { float 6.000000e+01, float 3.000000e+01, i8 50, i8 0, i8 0 }, %struct.interp_t { float 6.000000e+01, float 3.000000e+01, i8 50, i8 0, i8 0 }] }, %struct.Elm_s { ptr @.str.11.112, i8 23, i8 8, i8 8, i8 107, ptr @.str.12.113, ptr @.str.12.113, i64 205520896, [19 x %struct.interp_t] [%struct.interp_t { float 2.700000e+02, float 1.350000e+02, i8 50, i8 0, i8 0 }, %struct.interp_t { float 1.900000e+02, float 1.100000e+02, i8 50, i8 3, i8 3 }, %struct.interp_t { float 1.480000e+03, float 1.550000e+03, i8 50, i8 3, i8 3 }, %struct.interp_t { float 2.620000e+03, float 1.580000e+03, i8 50, i8 3, i8 3 }, %struct.interp_t { float 6.000000e+01, float 3.000000e+01, i8 50, i8 3, i8 3 }, %struct.interp_t { float 9.000000e+01, float 4.500000e+01, i8 50, i8 3, i8 3 }, %struct.interp_t { float 1.500000e+02, float 7.500000e+01, i8 50, i8 3, i8 3 }, %struct.interp_t { float -3.000000e+01, float 0.000000e+00, i8 100, i8 0, i8 0 }, %struct.interp_t { float -3.000000e+01, float 0.000000e+00, i8 100, i8 0, i8 0 }, %struct.interp_t { float -3.000000e+01, float 0.000000e+00, i8 100, i8 0, i8 0 }, %struct.interp_t { float -3.000000e+01, float 0.000000e+00, i8 100, i8 0, i8 0 }, %struct.interp_t { float -3.000000e+01, float 0.000000e+00, i8 100, i8 0, i8 0 }, %struct.interp_t { float -3.000000e+01, float 0.000000e+00, i8 100, i8 0, i8 0 }, %struct.interp_t { float -3.000000e+01, float 0.000000e+00, i8 100, i8 0, i8 0 }, %struct.interp_t { float -3.000000e+01, float 0.000000e+00, i8 100, i8 0, i8 0 }, %struct.interp_t { float 0.000000e+00, float 0.000000e+00, i8 50, i8 0, i8 0 }, %struct.interp_t { float 0.000000e+00, float 0.000000e+00, i8 50, i8 0, i8 0 }, %struct.interp_t { float 6.000000e+01, float 3.000000e+01, i8 50, i8 0, i8 0 }, %struct.interp_t { float 6.000000e+01, float 3.000000e+01, i8 50, i8 0, i8 0 }] }, %struct.Elm_s { ptr @.str.13.114, i8 29, i8 1, i8 1, i8 107, ptr @.str.12.113, ptr @.str.12.113, i64 205520896, [19 x %struct.interp_t] [%struct.interp_t { float 2.700000e+02, float 1.350000e+02, i8 50, i8 0, i8 0 }, %struct.interp_t { float 1.900000e+02, float 0.000000e+00, i8 100, i8 0, i8 0 }, %struct.interp_t { float 1.480000e+03, float 0.000000e+00, i8 100, i8 0, i8 0 }, %struct.interp_t { float 2.620000e+03, float 0.000000e+00, i8 100, i8 0, i8 0 }, %struct.interp_t { float 6.000000e+01, float 0.000000e+00, i8 100, i8 0, i8 0 }, %struct.interp_t { float 9.000000e+01, float 0.000000e+00, i8 100, i8 0, i8 0 }, %struct.interp_t { float 1.500000e+02, float 0.000000e+00, i8 100, i8 0, i8 0 }, %struct.interp_t { float -3.000000e+01, float 0.000000e+00, i8 100, i8 0, i8 0 }, %struct.interp_t { float -3.000000e+01, float 0.000000e+00, i8 100, i8 0, i8 0 }, %struct.interp_t { float 5.075000e+01, float 0.000000e+00, i8 100, i8 0, i8 0 }, %struct.interp_t { float 5.075000e+01, float 0.000000e+00, i8 100, i8 0, i8 0 }, %struct.interp_t { float 2.975000e+01, float 0.000000e+00, i8 100, i8 0, i8 0 }, %struct.interp_t { float -3.000000e+01, float 0.000000e+00, i8 100, i8 0, i8 0 }, %struct.interp_t { float -3.000000e+01, float 0.000000e+00, i8 100, i8 0, i8 0 }, %struct.interp_t { float -3.000000e+01, float 0.000000e+00, i8 100, i8 0, i8 0 }, %struct.interp_t { float 0.000000e+00, float 0.000000e+00, i8 50, i8 0, i8 0 }, %struct.interp_t { float 0.000000e+00, float 0.000000e+00, i8 50, i8 0, i8 0 }, %struct.interp_t { float 6.000000e+01, float 3.000000e+01, i8 50, i8 0, i8 0 }, %struct.interp_t { float 6.000000e+01, float 3.000000e+01, i8 50, i8 0, i8 0 }] }, %struct.Elm_s { ptr @.str.14.115, i8 23, i8 4, i8 4, i8 107, ptr @.str.12.113, ptr @.str.12.113, i64 205520896, [19 x %struct.interp_t] [%struct.interp_t { float 2.700000e+02, float 1.350000e+02, i8 50, i8 0, i8 0 }, %struct.interp_t { float 1.900000e+02, float 1.100000e+02, i8 50, i8 3, i8 3 }, %struct.interp_t { float 1.480000e+03, float 1.550000e+03, i8 50, i8 3, i8 3 }, %struct.interp_t { float 2.620000e+03, float 1.580000e+03, i8 50, i8 3, i8 3 }, %struct.interp_t { float 6.000000e+01, float 3.000000e+01, i8 50, i8 3, i8 3 }, %struct.interp_t { float 9.000000e+01, float 4.500000e+01, i8 50, i8 3, i8 3 }, %struct.interp_t { float 1.500000e+02, float 7.500000e+01, i8 50, i8 3, i8 3 }, %struct.interp_t { float -3.000000e+01, float 0.000000e+00, i8 100, i8 0, i8 0 }, %struct.interp_t { float -3.000000e+01, float 0.000000e+00, i8 100, i8 0, i8 0 }, %struct.interp_t { float 4.025000e+01, float 0.000000e+00, i8 100, i8 0, i8 0 }, %struct.interp_t { float 4.025000e+01, float 0.000000e+00, i8 100, i8 0, i8 0 }, %struct.interp_t { float 1.925000e+01, float 0.000000e+00, i8 100, i8 0, i8 0 }, %struct.interp_t { float -3.000000e+01, float 0.000000e+00, i8 100, i8 0, i8 0 }, %struct.interp_t { float -3.000000e+01, float 0.000000e+00, i8 100, i8 0, i8 0 }, %struct.interp_t { float -3.000000e+01, float 0.000000e+00, i8 100, i8 0, i8 0 }, %struct.interp_t { float 0.000000e+00, float 0.000000e+00, i8 50, i8 0, i8 0 }, %struct.interp_t { float 0.000000e+00, float 0.000000e+00, i8 50, i8 0, i8 0 }, %struct.interp_t { float 6.000000e+01, float 3.000000e+01, i8 50, i8 0, i8 0 }, %struct.interp_t { float 6.000000e+01, float 3.000000e+01, i8 50, i8 0, i8 0 }] }, %struct.Elm_s { ptr @.str.15.116, i8 26, i8 12, i8 12, i8 98, ptr @.str.16.117, ptr @.str.16.117, i64 37748744, [19 x %struct.interp_t] [%struct.interp_t { float 2.700000e+02, float 1.350000e+02, i8 50, i8 0, i8 0 }, %struct.interp_t { float 1.900000e+02, float 1.100000e+02, i8 50, i8 2, i8 2 }, %struct.interp_t { float 7.600000e+02, float 3.500000e+02, i8 50, i8 2, i8 2 }, %struct.interp_t { float 2.500000e+03, float 0.000000e+00, i8 100, i8 0, i8 2 }, %struct.interp_t { float 6.000000e+01, float 3.000000e+01, i8 50, i8 2, i8 2 }, %struct.interp_t { float 9.000000e+01, float 4.500000e+01, i8 50, i8 2, i8 2 }, %struct.interp_t { float 1.500000e+02, float 0.000000e+00, i8 100, i8 0, i8 2 }, %struct.interp_t { float -3.000000e+01, float 0.000000e+00, i8 100, i8 0, i8 0 }, %struct.interp_t { float 2.450000e+01, float 0.000000e+00, i8 100, i8 0, i8 0 }, %struct.interp_t { float -3.000000e+01, float 0.000000e+00, i8 100, i8 0, i8 0 }, %struct.interp_t { float -3.000000e+01, float 0.000000e+00, i8 100, i8 0, i8 0 }, %struct.interp_t { float -3.000000e+01, float 0.000000e+00, i8 100, i8 0, i8 0 }, %struct.interp_t { float -3.000000e+01, float 0.000000e+00, i8 100, i8 0, i8 0 }, %struct.interp_t { float -3.000000e+01, float 0.000000e+00, i8 100, i8 0, i8 0 }, %struct.interp_t { float -3.000000e+01, float 0.000000e+00, i8 100, i8 0, i8 0 }, %struct.interp_t { float 6.200000e+01, float 3.100000e+01, i8 50, i8 0, i8 0 }, %struct.interp_t { float 6.200000e+01, float 3.100000e+01, i8 50, i8 0, i8 0 }, %struct.interp_t { float 0.000000e+00, float 0.000000e+00, i8 50, i8 0, i8 0 }, %struct.interp_t { float 0.000000e+00, float 0.000000e+00, i8 50, i8 0, i8 0 }] }, %struct.Elm_s { ptr @.str.17.118, i8 29, i8 1, i8 1, i8 98, ptr @.str.16.117, ptr @.str.16.117, i64 37748744, [19 x %struct.interp_t] [%struct.interp_t { float 2.700000e+02, float 1.350000e+02, i8 50, i8 0, i8 0 }, %struct.interp_t { float 1.900000e+02, float 0.000000e+00, i8 100, i8 0, i8 0 }, %struct.interp_t { float 7.600000e+02, float 0.000000e+00, i8 100, i8 0, i8 0 }, %struct.interp_t { float 2.500000e+03, float 0.000000e+00, i8 100, i8 0, i8 0 }, %struct.interp_t { float 6.000000e+01, float 0.000000e+00, i8 100, i8 0, i8 0 }, %struct.interp_t { float 9.000000e+01, float 0.000000e+00, i8 100, i8 0, i8 0 }, %struct.interp_t { float 1.500000e+02, float 0.000000e+00, i8 100, i8 0, i8 0 }, %struct.interp_t { float -3.000000e+01, float 0.000000e+00, i8 100, i8 0, i8 0 }, %struct.interp_t { float 2.450000e+01, float 0.000000e+00, i8 100, i8 0, i8 0 }, %struct.interp_t { float 4.900000e+01, float 0.000000e+00, i8 100, i8 0, i8 0 }, %struct.interp_t { float 4.325000e+01, float 0.000000e+00, i8 100, i8 0, i8 0 }, %struct.interp_t { float 3.850000e+01, float 0.000000e+00, i8 100, i8 0, i8 0 }, %struct.interp_t { float -3.000000e+01, float 0.000000e+00, i8 100, i8 0, i8 0 }, %struct.interp_t { float -3.000000e+01, float 0.000000e+00, i8 100, i8 0, i8 0 }, %struct.interp_t { float -3.000000e+01, float 0.000000e+00, i8 100, i8 0, i8 0 }, %struct.interp_t { float 6.200000e+01, float 3.100000e+01, i8 50, i8 0, i8 0 }, %struct.interp_t { float 6.200000e+01, float 3.100000e+01, i8 50, i8 0, i8 0 }, %struct.interp_t { float 0.000000e+00, float 0.000000e+00, i8 50, i8 0, i8 0 }, %struct.interp_t { float 0.000000e+00, float 0.000000e+00, i8 50, i8 0, i8 0 }] }, %struct.Elm_s { ptr @.str.18.119, i8 26, i8 0, i8 0, i8 98, ptr @.str.16.117, ptr @.str.16.117, i64 37748744, [19 x %struct.interp_t] [%struct.interp_t { float 2.700000e+02, float 1.350000e+02, i8 50, i8 0, i8 0 }, %struct.interp_t { float 1.900000e+02, float 1.100000e+02, i8 50, i8 2, i8 0 }, %struct.interp_t { float 7.600000e+02, float 3.500000e+02, i8 50, i8 2, i8 0 }, %struct.interp_t { float 2.500000e+03, float 0.000000e+00, i8 100, i8 0, i8 0 }, %struct.interp_t { float 6.000000e+01, float 3.000000e+01, i8 50, i8 2, i8 0 }, %struct.interp_t { float 9.000000e+01, float 4.500000e+01, i8 50, i8 2, i8 0 }, %struct.interp_t { float 1.500000e+02, float 0.000000e+00, i8 100, i8 0, i8 0 }, %struct.interp_t { float -3.000000e+01, float 0.000000e+00, i8 100, i8 0, i8 0 }, %struct.interp_t { float -3.000000e+01, float 0.000000e+00, i8 100, i8 0, i8 0 }, %struct.interp_t { float -3.000000e+01, float 0.000000e+00, i8 100, i8 0, i8 0 }, %struct.interp_t { float -3.000000e+01, float 0.000000e+00, i8 100, i8 0, i8 0 }, %struct.interp_t { float -3.000000e+01, float 0.000000e+00, i8 100, i8 0, i8 0 }, %struct.interp_t { float -3.000000e+01, float 0.000000e+00, i8 100, i8 0, i8 0 }, %struct.interp_t { float -3.000000e+01, float 0.000000e+00, i8 100, i8 0, i8 0 }, %struct.interp_t { float -3.000000e+01, float 0.000000e+00, i8 100, i8 0, i8 0 }, %struct.interp_t { float 6.200000e+01, float 3.100000e+01, i8 50, i8 0, i8 0 }, %struct.interp_t { float 6.200000e+01, float 3.100000e+01, i8 50, i8 0, i8 0 }, %struct.interp_t { float 0.000000e+00, float 0.000000e+00, i8 50, i8 0, i8 0 }, %struct.interp_t { float 0.000000e+00, float 0.000000e+00, i8 50, i8 0, i8 0 }] }, %struct.Elm_s { ptr @.str.19.120, i8 26, i8 8, i8 8, i8 100, ptr @.str.20.121, ptr @.str.20.121, i64 37748737, [19 x %struct.interp_t] [%struct.interp_t { float 2.700000e+02, float 1.350000e+02, i8 50, i8 0, i8 0 }, %struct.interp_t { float 1.900000e+02, float 1.100000e+02, i8 50, i8 2, i8 2 }, %struct.interp_t { float 1.780000e+03, float 9.500000e+02, i8 50, i8 2, i8 2 }, %struct.interp_t { float 2.680000e+03, float 2.680000e+03, i8 0, i8 2, i8 2 }, %struct.interp_t { float 6.000000e+01, float 3.000000e+01, i8 50, i8 2, i8 2 }, %struct.interp_t { float 9.000000e+01, float 4.500000e+01, i8 50, i8 2, i8 2 }, %struct.interp_t { float 1.500000e+02, float 1.500000e+02, i8 0, i8 2, i8 2 }, %struct.interp_t { float -3.000000e+01, float 0.000000e+00, i8 100, i8 0, i8 0 }, %struct.interp_t { float 3.150000e+01, float 0.000000e+00, i8 100, i8 0, i8 0 }, %struct.interp_t { float -3.000000e+01, float 0.000000e+00, i8 100, i8 0, i8 0 }, %struct.interp_t { float -3.000000e+01, float 0.000000e+00, i8 100, i8 0, i8 0 }, %struct.interp_t { float -3.000000e+01, float 0.000000e+00, i8 100, i8 0, i8 0 }, %struct.interp_t { float -3.000000e+01, float 0.000000e+00, i8 100, i8 0, i8 0 }, %struct.interp_t { float -3.000000e+01, float 0.000000e+00, i8 100, i8 0, i8 0 }, %struct.interp_t { float -3.000000e+01, float 0.000000e+00, i8 100, i8 0, i8 0 }, %struct.interp_t { float 6.200000e+01, float 3.100000e+01, i8 50, i8 0, i8 0 }, %struct.interp_t { float 6.200000e+01, float 3.100000e+01, i8 50, i8 0, i8 0 }, %struct.interp_t { float 0.000000e+00, float 0.000000e+00, i8 50, i8 0, i8 0 }, %struct.interp_t { float 0.000000e+00, float 0.000000e+00, i8 50, i8 0, i8 0 }] }, %struct.Elm_s { ptr @.str.21.122, i8 29, i8 1, i8 1, i8 100, ptr @.str.20.121, ptr @.str.20.121, i64 37748737, [19 x %struct.interp_t] [%struct.interp_t { float 2.700000e+02, float 1.350000e+02, i8 50, i8 0, i8 0 }, %struct.interp_t { float 1.900000e+02, float 0.000000e+00, i8 100, i8 0, i8 0 }, %struct.interp_t { float 1.780000e+03, float 0.000000e+00, i8 100, i8 0, i8 0 }, %struct.interp_t { float 2.680000e+03, float 0.000000e+00, i8 100, i8 0, i8 0 }, %struct.interp_t { float 6.000000e+01, float 0.000000e+00, i8 100, i8 0, i8 0 }, %struct.interp_t { float 9.000000e+01, float 0.000000e+00, i8 100, i8 0, i8 0 }, %struct.interp_t { float 1.500000e+02, float 0.000000e+00, i8 100, i8 0, i8 0 }, %struct.interp_t { float -3.000000e+01, float 0.000000e+00, i8 100, i8 0, i8 0 }, %struct.interp_t { float 3.850000e+01, float 0.000000e+00, i8 100, i8 0, i8 0 }, %struct.interp_t { float 3.850000e+01, float 0.000000e+00, i8 100, i8 0, i8 0 }, %struct.interp_t { float 3.500000e+01, float 0.000000e+00, i8 100, i8 0, i8 0 }, %struct.interp_t { float 4.550000e+01, float 0.000000e+00, i8 100, i8 0, i8 0 }, %struct.interp_t { float -3.000000e+01, float 0.000000e+00, i8 100, i8 0, i8 0 }, %struct.interp_t { float -3.000000e+01, float 0.000000e+00, i8 100, i8 0, i8 0 }, %struct.interp_t { float -3.000000e+01, float 0.000000e+00, i8 100, i8 0, i8 0 }, %struct.interp_t { float 6.200000e+01, float 3.100000e+01, i8 50, i8 0, i8 0 }, %struct.interp_t { float 6.200000e+01, float 3.100000e+01, i8 50, i8 0, i8 0 }, %struct.interp_t { float 0.000000e+00, float 0.000000e+00, i8 50, i8 0, i8 0 }, %struct.interp_t { float 0.000000e+00, float 0.000000e+00, i8 50, i8 0, i8 0 }] }, %struct.Elm_s { ptr @.str.22.123, i8 26, i8 1, i8 1, i8 100, ptr @.str.20.121, ptr @.str.20.121, i64 37748737, [19 x %struct.interp_t] [%struct.interp_t { float 2.700000e+02, float 1.350000e+02, i8 50, i8 0, i8 0 }, %struct.interp_t { float 1.900000e+02, float 1.100000e+02, i8 50, i8 2, i8 0 }, %struct.interp_t { float 1.780000e+03, float 9.500000e+02, i8 50, i8 2, i8 0 }, %struct.interp_t { float 2.680000e+03, float 2.680000e+03, i8 0, i8 2, i8 0 }, %struct.interp_t { float 6.000000e+01, float 3.000000e+01, i8 50, i8 2, i8 0 }, %struct.interp_t { float 9.000000e+01, float 4.500000e+01, i8 50, i8 2, i8 0 }, %struct.interp_t { float 1.500000e+02, float 1.500000e+02, i8 0, i8 2, i8 0 }, %struct.interp_t { float -3.000000e+01, float 0.000000e+00, i8 100, i8 0, i8 0 }, %struct.interp_t { float 3.850000e+01, float 0.000000e+00, i8 100, i8 0, i8 0 }, %struct.interp_t { float 2.800000e+01, float 0.000000e+00, i8 100, i8 0, i8 0 }, %struct.interp_t { float 2.450000e+01, float 0.000000e+00, i8 100, i8 0, i8 0 }, %struct.interp_t { float 3.500000e+01, float 0.000000e+00, i8 100, i8 0, i8 0 }, %struct.interp_t { float -3.000000e+01, float 0.000000e+00, i8 100, i8 0, i8 0 }, %struct.interp_t { float -3.000000e+01, float 0.000000e+00, i8 100, i8 0, i8 0 }, %struct.interp_t { float -3.000000e+01, float 0.000000e+00, i8 100, i8 0, i8 0 }, %struct.interp_t { float 6.200000e+01, float 3.100000e+01, i8 50, i8 0, i8 0 }, %struct.interp_t { float 6.200000e+01, float 3.100000e+01, i8 50, i8 0, i8 0 }, %struct.interp_t { float 0.000000e+00, float 0.000000e+00, i8 50, i8 0, i8 0 }, %struct.interp_t { float 0.000000e+00, float 0.000000e+00, i8 50, i8 0, i8 0 }] }, %struct.Elm_s { ptr @.str.23.124, i8 26, i8 12, i8 12, i8 103, ptr @.str.24.125, ptr @.str.24.125, i64 104857600, [19 x %struct.interp_t] [%struct.interp_t { float 2.700000e+02, float 1.350000e+02, i8 50, i8 0, i8 0 }, %struct.interp_t { float 1.900000e+02, float 1.100000e+02, i8 50, i8 3, i8 3 }, %struct.interp_t { float 1.480000e+03, float 1.550000e+03, i8 50, i8 3, i8 3 }, %struct.interp_t { float 2.620000e+03, float 1.580000e+03, i8 50, i8 3, i8 3 }, %struct.interp_t { float 6.000000e+01, float 3.000000e+01, i8 50, i8 3, i8 3 }, %struct.interp_t { float 9.000000e+01, float 4.500000e+01, i8 50, i8 3, i8 3 }, %struct.interp_t { float 1.500000e+02, float 7.500000e+01, i8 50, i8 3, i8 3 }, %struct.interp_t { float -3.000000e+01, float 0.000000e+00, i8 100, i8 0, i8 0 }, %struct.interp_t { float 3.500000e+01, float 0.000000e+00, i8 100, i8 0, i8 0 }, %struct.interp_t { float -3.000000e+01, float 0.000000e+00, i8 100, i8 0, i8 0 }, %struct.interp_t { float -3.000000e+01, float 0.000000e+00, i8 100, i8 0, i8 0 }, %struct.interp_t { float -3.000000e+01, float 0.000000e+00, i8 100, i8 0, i8 0 }, %struct.interp_t { float -3.000000e+01, float 0.000000e+00, i8 100, i8 0, i8 0 }, %struct.interp_t { float -3.000000e+01, float 0.000000e+00, i8 100, i8 0, i8 0 }, %struct.interp_t { float -3.000000e+01, float 0.000000e+00, i8 100, i8 0, i8 0 }, %struct.interp_t { float 6.200000e+01, float 3.100000e+01, i8 50, i8 0, i8 0 }, %struct.interp_t { float 6.200000e+01, float 3.100000e+01, i8 50, i8 0, i8 0 }, %struct.interp_t { float 0.000000e+00, float 0.000000e+00, i8 50, i8 0, i8 0 }, %struct.interp_t { float 0.000000e+00, float 0.000000e+00, i8 50, i8 0, i8 0 }] }, %struct.Elm_s { ptr @.str.25.126, i8 29, i8 1, i8 1, i8 103, ptr @.str.24.125, ptr @.str.24.125, i64 104857600, [19 x %struct.interp_t] [%struct.interp_t { float 2.700000e+02, float 1.350000e+02, i8 50, i8 0, i8 0 }, %struct.interp_t { float 1.900000e+02, float 0.000000e+00, i8 100, i8 0, i8 0 }, %struct.interp_t { float 1.480000e+03, float 0.000000e+00, i8 100, i8 0, i8 0 }, %struct.interp_t { float 2.620000e+03, float 0.000000e+00, i8 100, i8 0, i8 0 }, %struct.interp_t { float 6.000000e+01, float 0.000000e+00, i8 100, i8 0, i8 0 }, %struct.interp_t { float 9.000000e+01, float 0.000000e+00, i8 100, i8 0, i8 0 }, %struct.interp_t { float 1.500000e+02, float 0.000000e+00, i8 100, i8 0, i8 0 }, %struct.interp_t { float -3.000000e+01, float 0.000000e+00, i8 100, i8 0, i8 0 }, %struct.interp_t { float 3.500000e+01, float 0.000000e+00, i8 100, i8 0, i8 0 }, %struct.interp_t { float 4.550000e+01, float 0.000000e+00, i8 100, i8 0, i8 0 }, %struct.interp_t { float 4.025000e+01, float 0.000000e+00, i8 100, i8 0, i8 0 }, %struct.interp_t { float 2.450000e+01, float 0.000000e+00, i8 100, i8 0, i8 0 }, %struct.interp_t { float -3.000000e+01, float 0.000000e+00, i8 100, i8 0, i8 0 }, %struct.interp_t { float -3.000000e+01, float 0.000000e+00, i8 100, i8 0, i8 0 }, %struct.interp_t { float -3.000000e+01, float 0.000000e+00, i8 100, i8 0, i8 0 }, %struct.interp_t { float 6.200000e+01, float 3.100000e+01, i8 50, i8 0, i8 0 }, %struct.interp_t { float 6.200000e+01, float 3.100000e+01, i8 50, i8 0, i8 0 }, %struct.interp_t { float 0.000000e+00, float 0.000000e+00, i8 50, i8 0, i8 0 }, %struct.interp_t { float 0.000000e+00, float 0.000000e+00, i8 50, i8 0, i8 0 }] }, %struct.Elm_s { ptr @.str.26.127, i8 26, i8 2, i8 2, i8 103, ptr @.str.24.125, ptr @.str.24.125, i64 104857600, [19 x %struct.interp_t] [%struct.interp_t { float 2.700000e+02, float 1.350000e+02, i8 50, i8 0, i8 0 }, %struct.interp_t { float 1.900000e+02, float 1.100000e+02, i8 50, i8 3, i8 2 }, %struct.interp_t { float 1.480000e+03, float 1.550000e+03, i8 50, i8 3, i8 2 }, %struct.interp_t { float 2.620000e+03, float 1.580000e+03, i8 50, i8 3, i8 2 }, %struct.interp_t { float 6.000000e+01, float 3.000000e+01, i8 50, i8 3, i8 2 }, %struct.interp_t { float 9.000000e+01, float 4.500000e+01, i8 50, i8 3, i8 2 }, %struct.interp_t { float 1.500000e+02, float 7.500000e+01, i8 50, i8 3, i8 2 }, %struct.interp_t { float -3.000000e+01, float 0.000000e+00, i8 100, i8 0, i8 0 }, %struct.interp_t { float 3.500000e+01, float 0.000000e+00, i8 100, i8 0, i8 0 }, %struct.interp_t { float 3.500000e+01, float 0.000000e+00, i8 100, i8 0, i8 0 }, %struct.interp_t { float 2.975000e+01, float 0.000000e+00, i8 100, i8 0, i8 0 }, %struct.interp_t { float 1.400000e+01, float 0.000000e+00, i8 100, i8 0, i8 0 }, %struct.interp_t { float -3.000000e+01, float 0.000000e+00, i8 100, i8 0, i8 0 }, %struct.interp_t { float -3.000000e+01, float 0.000000e+00, i8 100, i8 0, i8 0 }, %struct.interp_t { float -3.000000e+01, float 0.000000e+00, i8 100, i8 0, i8 0 }, %struct.interp_t { float 6.200000e+01, float 3.100000e+01, i8 50, i8 0, i8 0 }, %struct.interp_t { float 6.200000e+01, float 3.100000e+01, i8 50, i8 0, i8 0 }, %struct.interp_t { float 0.000000e+00, float 0.000000e+00, i8 50, i8 0, i8 0 }, %struct.interp_t { float 0.000000e+00, float 0.000000e+00, i8 50, i8 0, i8 0 }] }, %struct.Elm_s { ptr @.str.27.128, i8 15, i8 8, i8 8, i8 109, ptr @.str.28.129, ptr @.str.28.129, i64 65544, [19 x %struct.interp_t] [%struct.interp_t { float 3.600000e+02, float 3.600000e+02, i8 0, i8 3, i8 0 }, %struct.interp_t { float 4.800000e+02, float 4.800000e+02, i8 0, i8 3, i8 0 }, %struct.interp_t { float 1.000000e+03, float 3.500000e+02, i8 50, i8 3, i8 0 }, %struct.interp_t { float 2.200000e+03, float 0.000000e+00, i8 100, i8 5, i8 0 }, %struct.interp_t { float 4.000000e+01, float 2.000000e+01, i8 50, i8 3, i8 0 }, %struct.interp_t { float 1.750000e+02, float 8.700000e+01, i8 50, i8 3, i8 0 }, %struct.interp_t { float 1.200000e+02, float 0.000000e+00, i8 100, i8 5, i8 0 }, %struct.interp_t { float 4.200000e+01, float 2.100000e+01, i8 50, i8 3, i8 0 }, %struct.interp_t { float 2.600000e+01, float -1.000000e+01, i8 100, i8 3, i8 0 }, %struct.interp_t { float 3.000000e+01, float -1.000000e+01, i8 100, i8 3, i8 0 }, %struct.interp_t { float 3.300000e+01, float -1.000000e+01, i8 100, i8 3, i8 0 }, %struct.interp_t { float -3.000000e+01, float -1.000000e+01, i8 100, i8 3, i8 0 }, %struct.interp_t { float -3.000000e+01, float 0.000000e+00, i8 100, i8 3, i8 0 }, %struct.interp_t { float -3.000000e+01, float 0.000000e+00, i8 100, i8 3, i8 0 }, %struct.interp_t { float -3.000000e+01, float 0.000000e+00, i8 100, i8 3, i8 0 }, %struct.interp_t { float 6.200000e+01, float 3.100000e+01, i8 50, i8 2, i8 0 }, %struct.interp_t { float 6.200000e+01, float 3.100000e+01, i8 50, i8 2, i8 0 }, %struct.interp_t { float 0.000000e+00, float 0.000000e+00, i8 50, i8 2, i8 0 }, %struct.interp_t { float 0.000000e+00, float 0.000000e+00, i8 50, i8 2, i8 0 }] }, %struct.Elm_s { ptr @.str.29.130, i8 15, i8 8, i8 8, i8 110, ptr @.str.30.131, ptr @.str.30.131, i64 65537, [19 x %struct.interp_t] [%struct.interp_t { float 4.500000e+02, float 4.500000e+02, i8 0, i8 3, i8 0 }, %struct.interp_t { float 4.800000e+02, float 4.800000e+02, i8 0, i8 3, i8 0 }, %struct.interp_t { float 1.780000e+03, float 9.500000e+02, i8 50, i8 3, i8 3 }, %struct.interp_t { float 2.620000e+03, float 2.680000e+03, i8 0, i8 3, i8 0 }, %struct.interp_t { float 4.000000e+01, float 2.000000e+01, i8 50, i8 3, i8 0 }, %struct.interp_t { float 3.000000e+02, float 1.500000e+02, i8 50, i8 3, i8 3 }, %struct.interp_t { float 2.600000e+02, float 1.300000e+02, i8 50, i8 3, i8 0 }, %struct.interp_t { float 4.200000e+01, float 2.100000e+01, i8 50, i8 3, i8 0 }, %struct.interp_t { float 3.500000e+01, float -1.000000e+01, i8 100, i8 3, i8 0 }, %struct.interp_t { float 3.500000e+01, float -1.000000e+01, i8 100, i8 3, i8 0 }, %struct.interp_t { float 3.500000e+01, float -1.000000e+01, i8 100, i8 3, i8 0 }, %struct.interp_t { float 2.000000e+01, float -1.000000e+01, i8 100, i8 3, i8 0 }, %struct.interp_t { float -3.000000e+01, float 0.000000e+00, i8 100, i8 3, i8 0 }, %struct.interp_t { float -3.000000e+01, float 0.000000e+00, i8 100, i8 3, i8 0 }, %struct.interp_t { float -3.000000e+01, float 0.000000e+00, i8 100, i8 3, i8 0 }, %struct.interp_t { float 6.200000e+01, float 3.100000e+01, i8 50, i8 2, i8 0 }, %struct.interp_t { float 6.200000e+01, float 3.100000e+01, i8 50, i8 2, i8 0 }, %struct.interp_t { float 0.000000e+00, float 0.000000e+00, i8 50, i8 2, i8 0 }, %struct.interp_t { float 0.000000e+00, float 0.000000e+00, i8 50, i8 2, i8 0 }] }, %struct.Elm_s { ptr @.str.31.132, i8 15, i8 8, i8 8, i8 78, ptr @.str.29.130, ptr @.str.29.130, i64 67174400, [19 x %struct.interp_t] [%struct.interp_t { float 3.600000e+02, float 3.600000e+02, i8 0, i8 3, i8 0 }, %struct.interp_t { float 4.800000e+02, float 4.800000e+02, i8 0, i8 3, i8 0 }, %struct.interp_t { float 8.200000e+02, float 1.550000e+03, i8 50, i8 5, i8 3 }, %struct.interp_t { float 2.800000e+03, float 1.580000e+03, i8 50, i8 3, i8 3 }, %struct.interp_t { float 1.600000e+02, float 8.000000e+01, i8 0, i8 5, i8 0 }, %struct.interp_t { float 1.500000e+02, float 7.500000e+01, i8 50, i8 5, i8 3 }, %struct.interp_t { float 1.000000e+02, float 5.000000e+01, i8 50, i8 3, i8 0 }, %struct.interp_t { float 4.200000e+01, float 2.100000e+01, i8 50, i8 3, i8 3 }, %struct.interp_t { float 2.000000e+01, float 0.000000e+00, i8 100, i8 3, i8 0 }, %struct.interp_t { float 3.000000e+01, float 0.000000e+00, i8 100, i8 3, i8 0 }, %struct.interp_t { float 3.500000e+01, float 0.000000e+00, i8 100, i8 3, i8 0 }, %struct.interp_t { float 0.000000e+00, float 0.000000e+00, i8 100, i8 3, i8 0 }, %struct.interp_t { float -3.000000e+01, float 0.000000e+00, i8 100, i8 3, i8 0 }, %struct.interp_t { float -3.000000e+01, float 0.000000e+00, i8 100, i8 3, i8 0 }, %struct.interp_t { float -3.000000e+01, float 0.000000e+00, i8 100, i8 3, i8 0 }, %struct.interp_t { float 5.200000e+01, float 2.600000e+01, i8 50, i8 2, i8 0 }, %struct.interp_t { float 5.600000e+01, float 2.800000e+01, i8 50, i8 2, i8 0 }, %struct.interp_t { float 0.000000e+00, float 0.000000e+00, i8 50, i8 2, i8 0 }, %struct.interp_t { float 0.000000e+00, float 0.000000e+00, i8 50, i8 2, i8 0 }] }, %struct.Elm_s { ptr @.str.32.133, i8 18, i8 12, i8 12, i8 102, ptr @.str.33.134, ptr @.str.33.134, i64 134219904, [19 x %struct.interp_t] [%struct.interp_t { float 2.700000e+02, float 1.350000e+02, i8 50, i8 0, i8 0 }, %struct.interp_t { float 4.000000e+02, float 1.700000e+02, i8 50, i8 3, i8 2 }, %struct.interp_t { float 1.420000e+03, float 3.500000e+02, i8 50, i8 3, i8 2 }, %struct.interp_t { float 2.560000e+03, float 9.800000e+02, i8 50, i8 3, i8 2 }, %struct.interp_t { float 6.000000e+01, float 3.000000e+01, i8 50, i8 3, i8 2 }, %struct.interp_t { float 9.000000e+01, float 4.500000e+01, i8 50, i8 3, i8 2 }, %struct.interp_t { float 1.500000e+02, float 7.500000e+01, i8 50, i8 3, i8 2 }, %struct.interp_t { float -3.000000e+01, float 0.000000e+00, i8 100, i8 0, i8 0 }, %struct.interp_t { float -3.000000e+01, float 0.000000e+00, i8 100, i8 0, i8 0 }, %struct.interp_t { float 0.000000e+00, float 0.000000e+00, i8 100, i8 0, i8 0 }, %struct.interp_t { float 0.000000e+00, float 0.000000e+00, i8 100, i8 0, i8 0 }, %struct.interp_t { float -3.000000e+01, float 0.000000e+00, i8 100, i8 0, i8 0 }, %struct.interp_t { float -3.000000e+01, float 0.000000e+00, i8 100, i8 0, i8 0 }, %struct.interp_t { float -3.000000e+01, float 0.000000e+00, i8 100, i8 0, i8 0 }, %struct.interp_t { float 5.400000e+01, float 2.700000e+01, i8 50, i8 0, i8 0 }, %struct.interp_t { float 0.000000e+00, float 0.000000e+00, i8 50, i8 0, i8 0 }, %struct.interp_t { float 0.000000e+00, float 0.000000e+00, i8 50, i8 0, i8 0 }, %struct.interp_t { float 3.200000e+01, float 1.600000e+01, i8 50, i8 0, i8 0 }, %struct.interp_t { float 5.400000e+01, float 3.000000e+01, i8 50, i8 0, i8 0 }] }, %struct.Elm_s { ptr @.str.34.135, i8 18, i8 15, i8 15, i8 84, ptr @.str.7.108, ptr @.str.7.108, i64 134217888, [19 x %struct.interp_t] [%struct.interp_t { float 2.700000e+02, float 1.350000e+02, i8 50, i8 0, i8 0 }, %struct.interp_t { float 4.000000e+02, float 1.700000e+02, i8 50, i8 3, i8 2 }, %struct.interp_t { float 1.780000e+03, float 1.190000e+03, i8 50, i8 3, i8 2 }, %struct.interp_t { float 2.680000e+03, float 2.680000e+03, i8 0, i8 3, i8 2 }, %struct.interp_t { float 6.000000e+01, float 3.000000e+01, i8 50, i8 3, i8 2 }, %struct.interp_t { float 9.000000e+01, float 4.500000e+01, i8 50, i8 3, i8 2 }, %struct.interp_t { float 1.500000e+02, float 1.500000e+02, i8 0, i8 3, i8 2 }, %struct.interp_t { float -3.000000e+01, float 0.000000e+00, i8 100, i8 0, i8 0 }, %struct.interp_t { float -3.000000e+01, float 0.000000e+00, i8 100, i8 0, i8 0 }, %struct.interp_t { float 2.625000e+01, float 0.000000e+00, i8 100, i8 0, i8 0 }, %struct.interp_t { float 2.800000e+01, float 0.000000e+00, i8 100, i8 0, i8 0 }, %struct.interp_t { float 2.275000e+01, float 0.000000e+00, i8 100, i8 0, i8 0 }, %struct.interp_t { float -3.000000e+01, float 0.000000e+00, i8 100, i8 0, i8 0 }, %struct.interp_t { float -3.000000e+01, float 0.000000e+00, i8 100, i8 0, i8 0 }, %struct.interp_t { float -3.000000e+01, float 0.000000e+00, i8 100, i8 0, i8 0 }, %struct.interp_t { float 0.000000e+00, float 0.000000e+00, i8 50, i8 0, i8 0 }, %struct.interp_t { float 0.000000e+00, float 0.000000e+00, i8 50, i8 0, i8 0 }, %struct.interp_t { float 6.000000e+01, float 3.000000e+01, i8 50, i8 0, i8 0 }, %struct.interp_t { float 6.000000e+01, float 3.000000e+01, i8 50, i8 0, i8 0 }] }, %struct.Elm_s { ptr @.str.35.136, i8 18, i8 12, i8 12, i8 115, ptr @.str.36.137, ptr @.str.36.137, i64 134217857, [19 x %struct.interp_t] [%struct.interp_t { float 2.700000e+02, float 1.350000e+02, i8 50, i8 0, i8 0 }, %struct.interp_t { float 4.000000e+02, float 1.700000e+02, i8 50, i8 3, i8 2 }, %struct.interp_t { float 1.720000e+03, float 9.500000e+02, i8 50, i8 3, i8 2 }, %struct.interp_t { float 2.620000e+03, float 0.000000e+00, i8 100, i8 3, i8 2 }, %struct.interp_t { float 2.000000e+02, float 1.000000e+02, i8 50, i8 3, i8 2 }, %struct.interp_t { float 9.600000e+01, float 4.800000e+01, i8 50, i8 3, i8 2 }, %struct.interp_t { float 2.200000e+02, float 0.000000e+00, i8 100, i8 3, i8 2 }, %struct.interp_t { float -3.000000e+01, float 0.000000e+00, i8 100, i8 0, i8 0 }, %struct.interp_t { float -3.000000e+01, float 0.000000e+00, i8 100, i8 0, i8 0 }, %struct.interp_t { float 2.800000e+01, float 0.000000e+00, i8 100, i8 0, i8 0 }, %struct.interp_t { float 2.800000e+01, float 0.000000e+00, i8 100, i8 0, i8 0 }, %struct.interp_t { float 4.025000e+01, float 0.000000e+00, i8 100, i8 0, i8 0 }, %struct.interp_t { float -3.000000e+01, float 0.000000e+00, i8 100, i8 0, i8 0 }, %struct.interp_t { float -3.000000e+01, float 0.000000e+00, i8 100, i8 0, i8 0 }, %struct.interp_t { float -3.000000e+01, float 0.000000e+00, i8 100, i8 0, i8 0 }, %struct.interp_t { float 0.000000e+00, float 0.000000e+00, i8 50, i8 0, i8 0 }, %struct.interp_t { float 0.000000e+00, float 0.000000e+00, i8 50, i8 0, i8 0 }, %struct.interp_t { float 3.200000e+01, float 1.600000e+01, i8 50, i8 0, i8 0 }, %struct.interp_t { float 6.000000e+01, float 3.000000e+01, i8 50, i8 0, i8 0 }] }, %struct.Elm_s { ptr @.str.37.138, i8 18, i8 12, i8 12, i8 83, ptr @.str.35.136, ptr @.str.35.136, i64 134480000, [19 x %struct.interp_t] [%struct.interp_t { float 2.700000e+02, float 1.350000e+02, i8 50, i8 0, i8 0 }, %struct.interp_t { float 4.000000e+02, float 1.700000e+02, i8 50, i8 3, i8 2 }, %struct.interp_t { float 2.200000e+03, float 1.190000e+03, i8 50, i8 3, i8 2 }, %struct.interp_t { float 2.560000e+03, float 0.000000e+00, i8 100, i8 3, i8 2 }, %struct.interp_t { float 6.000000e+01, float 3.000000e+01, i8 50, i8 3, i8 2 }, %struct.interp_t { float 9.000000e+01, float 4.500000e+01, i8 50, i8 3, i8 2 }, %struct.interp_t { float 1.500000e+02, float 0.000000e+00, i8 100, i8 3, i8 2 }, %struct.interp_t { float -3.000000e+01, float 0.000000e+00, i8 100, i8 0, i8 0 }, %struct.interp_t { float -3.000000e+01, float 0.000000e+00, i8 100, i8 0, i8 0 }, %struct.interp_t { float 3.150000e+01, float 0.000000e+00, i8 100, i8 0, i8 0 }, %struct.interp_t { float 4.200000e+01, float 0.000000e+00, i8 100, i8 0, i8 0 }, %struct.interp_t { float 3.150000e+01, float 0.000000e+00, i8 100, i8 0, i8 0 }, %struct.interp_t { float -3.000000e+01, float 0.000000e+00, i8 100, i8 0, i8 0 }, %struct.interp_t { float -3.000000e+01, float 0.000000e+00, i8 100, i8 0, i8 0 }, %struct.interp_t { float -3.000000e+01, float 0.000000e+00, i8 100, i8 0, i8 0 }, %struct.interp_t { float 0.000000e+00, float 0.000000e+00, i8 50, i8 0, i8 0 }, %struct.interp_t { float 0.000000e+00, float 0.000000e+00, i8 50, i8 0, i8 0 }, %struct.interp_t { float 6.000000e+01, float 3.000000e+01, i8 50, i8 0, i8 0 }, %struct.interp_t { float 6.000000e+01, float 3.000000e+01, i8 50, i8 0, i8 0 }] }, %struct.Elm_s { ptr @.str.38.139, i8 18, i8 12, i8 12, i8 120, ptr @.str.39.140, ptr @.str.39.140, i64 201326720, [19 x %struct.interp_t] [%struct.interp_t { float 2.700000e+02, float 1.350000e+02, i8 50, i8 0, i8 0 }, %struct.interp_t { float 1.900000e+02, float 1.100000e+02, i8 50, i8 3, i8 3 }, %struct.interp_t { float 1.480000e+03, float 1.550000e+03, i8 50, i8 3, i8 3 }, %struct.interp_t { float 2.620000e+03, float 1.580000e+03, i8 50, i8 3, i8 3 }, %struct.interp_t { float 6.000000e+01, float 3.000000e+01, i8 50, i8 3, i8 3 }, %struct.interp_t { float 9.000000e+01, float 4.500000e+01, i8 50, i8 3, i8 3 }, %struct.interp_t { float 1.500000e+02, float 7.500000e+01, i8 50, i8 3, i8 3 }, %struct.interp_t { float -3.000000e+01, float 0.000000e+00, i8 100, i8 0, i8 0 }, %struct.interp_t { float -3.000000e+01, float 0.000000e+00, i8 100, i8 0, i8 0 }, %struct.interp_t { float 4.025000e+01, float 0.000000e+00, i8 100, i8 0, i8 0 }, %struct.interp_t { float 4.025000e+01, float 0.000000e+00, i8 100, i8 0, i8 0 }, %struct.interp_t { float 1.925000e+01, float 0.000000e+00, i8 100, i8 0, i8 0 }, %struct.interp_t { float -3.000000e+01, float 0.000000e+00, i8 100, i8 0, i8 0 }, %struct.interp_t { float -3.000000e+01, float 0.000000e+00, i8 100, i8 0, i8 0 }, %struct.interp_t { float -3.000000e+01, float 0.000000e+00, i8 100, i8 0, i8 0 }, %struct.interp_t { float 0.000000e+00, float 0.000000e+00, i8 50, i8 0, i8 0 }, %struct.interp_t { float 0.000000e+00, float 0.000000e+00, i8 50, i8 0, i8 0 }, %struct.interp_t { float 6.000000e+01, float 3.000000e+01, i8 50, i8 0, i8 0 }, %struct.interp_t { float 6.000000e+01, float 3.000000e+01, i8 50, i8 0, i8 0 }] }, %struct.Elm_s { ptr @.str.40.141, i8 9, i8 10, i8 10, i8 104, ptr @.str.41.142, ptr @.str.41.142, i64 258, [19 x %struct.interp_t] [%struct.interp_t { float 2.700000e+02, float 1.350000e+02, i8 50, i8 0, i8 0 }, %struct.interp_t { float 4.900000e+02, float 0.000000e+00, i8 100, i8 0, i8 7 }, %struct.interp_t { float 1.480000e+03, float 0.000000e+00, i8 100, i8 0, i8 7 }, %struct.interp_t { float 2.500000e+03, float 0.000000e+00, i8 100, i8 0, i8 7 }, %struct.interp_t { float 6.000000e+01, float 0.000000e+00, i8 100, i8 0, i8 7 }, %struct.interp_t { float 9.000000e+01, float 0.000000e+00, i8 100, i8 0, i8 7 }, %struct.interp_t { float 1.500000e+02, float 0.000000e+00, i8 100, i8 0, i8 7 }, %struct.interp_t { float -3.000000e+01, float 0.000000e+00, i8 100, i8 0, i8 7 }, %struct.interp_t { float 3.500000e+01, float -1.400000e+01, i8 100, i8 0, i8 7 }, %struct.interp_t { float 3.675000e+01, float -1.400000e+01, i8 100, i8 0, i8 7 }, %struct.interp_t { float 2.625000e+01, float -7.000000e+00, i8 100, i8 0, i8 7 }, %struct.interp_t { float 2.275000e+01, float -3.500000e+00, i8 100, i8 0, i8 7 }, %struct.interp_t { float -3.000000e+01, float 0.000000e+00, i8 100, i8 0, i8 7 }, %struct.interp_t { float -3.000000e+01, float 0.000000e+00, i8 100, i8 0, i8 7 }, %struct.interp_t { float -3.000000e+01, float 0.000000e+00, i8 100, i8 0, i8 7 }, %struct.interp_t { float 0.000000e+00, float 0.000000e+00, i8 50, i8 0, i8 0 }, %struct.interp_t { float 0.000000e+00, float 0.000000e+00, i8 50, i8 0, i8 0 }, %struct.interp_t { float 6.000000e+01, float 3.000000e+01, i8 50, i8 0, i8 0 }, %struct.interp_t { float 6.000000e+01, float 3.000000e+01, i8 50, i8 0, i8 0 }] }, %struct.Elm_s { ptr @.str.42.143, i8 20, i8 4, i8 4, i8 118, ptr @.str.43.144, ptr @.str.43.144, i64 33556608, [19 x %struct.interp_t] [%struct.interp_t { float 2.700000e+02, float 1.350000e+02, i8 50, i8 0, i8 0 }, %struct.interp_t { float 2.800000e+02, float 1.700000e+02, i8 50, i8 3, i8 2 }, %struct.interp_t { float 1.420000e+03, float 3.500000e+02, i8 50, i8 3, i8 2 }, %struct.interp_t { float 2.560000e+03, float 9.800000e+02, i8 50, i8 3, i8 2 }, %struct.interp_t { float 6.000000e+01, float 3.000000e+01, i8 50, i8 3, i8 2 }, %struct.interp_t { float 9.000000e+01, float 4.500000e+01, i8 50, i8 3, i8 2 }, %struct.interp_t { float 1.500000e+02, float 7.500000e+01, i8 50, i8 3, i8 2 }, %struct.interp_t { float -3.000000e+01, float 0.000000e+00, i8 100, i8 0, i8 0 }, %struct.interp_t { float 2.975000e+01, float 0.000000e+00, i8 100, i8 0, i8 0 }, %struct.interp_t { float 4.025000e+01, float 0.000000e+00, i8 100, i8 0, i8 0 }, %struct.interp_t { float 3.675000e+01, float 0.000000e+00, i8 100, i8 0, i8 0 }, %struct.interp_t { float 3.325000e+01, float 0.000000e+00, i8 100, i8 0, i8 0 }, %struct.interp_t { float -3.000000e+01, float 0.000000e+00, i8 100, i8 0, i8 0 }, %struct.interp_t { float -3.000000e+01, float 0.000000e+00, i8 100, i8 0, i8 0 }, %struct.interp_t { float -3.000000e+01, float 0.000000e+00, i8 100, i8 0, i8 0 }, %struct.interp_t { float 6.200000e+01, float 3.100000e+01, i8 50, i8 0, i8 0 }, %struct.interp_t { float 6.200000e+01, float 3.100000e+01, i8 50, i8 0, i8 0 }, %struct.interp_t { float 0.000000e+00, float 0.000000e+00, i8 50, i8 0, i8 0 }, %struct.interp_t { float 0.000000e+00, float 0.000000e+00, i8 50, i8 0, i8 0 }] }, %struct.Elm_s { ptr @.str.44.145, i8 30, i8 0, i8 0, i8 90, ptr @.str.45.146, ptr @.str.45.146, i64 33554560, [19 x %struct.interp_t] [%struct.interp_t { float 2.700000e+02, float 1.350000e+02, i8 50, i8 0, i8 0 }, %struct.interp_t { float 2.800000e+02, float 0.000000e+00, i8 100, i8 0, i8 0 }, %struct.interp_t { float 1.420000e+03, float 0.000000e+00, i8 100, i8 0, i8 0 }, %struct.interp_t { float 2.560000e+03, float 0.000000e+00, i8 100, i8 0, i8 0 }, %struct.interp_t { float 6.000000e+01, float 0.000000e+00, i8 100, i8 0, i8 0 }, %struct.interp_t { float 9.000000e+01, float 0.000000e+00, i8 100, i8 0, i8 0 }, %struct.interp_t { float 1.500000e+02, float 0.000000e+00, i8 100, i8 0, i8 0 }, %struct.interp_t { float -3.000000e+01, float 0.000000e+00, i8 100, i8 0, i8 0 }, %struct.interp_t { float 2.975000e+01, float 0.000000e+00, i8 100, i8 0, i8 0 }, %struct.interp_t { float 4.025000e+01, float 0.000000e+00, i8 100, i8 0, i8 0 }, %struct.interp_t { float 3.675000e+01, float 0.000000e+00, i8 100, i8 0, i8 0 }, %struct.interp_t { float 3.325000e+01, float 0.000000e+00, i8 100, i8 0, i8 0 }, %struct.interp_t { float -3.000000e+01, float 0.000000e+00, i8 100, i8 0, i8 0 }, %struct.interp_t { float -3.000000e+01, float 0.000000e+00, i8 100, i8 0, i8 0 }, %struct.interp_t { float -3.000000e+01, float 0.000000e+00, i8 100, i8 0, i8 0 }, %struct.interp_t { float 6.200000e+01, float 3.100000e+01, i8 50, i8 0, i8 0 }, %struct.interp_t { float 6.200000e+01, float 3.100000e+01, i8 50, i8 0, i8 0 }, %struct.interp_t { float 0.000000e+00, float 0.000000e+00, i8 50, i8 0, i8 0 }, %struct.interp_t { float 0.000000e+00, float 0.000000e+00, i8 50, i8 0, i8 0 }] }, %struct.Elm_s { ptr @.str.46.147, i8 20, i8 4, i8 4, i8 84, ptr @.str.19.120, ptr @.str.19.120, i64 33554592, [19 x %struct.interp_t] [%struct.interp_t { float 2.700000e+02, float 1.350000e+02, i8 50, i8 0, i8 0 }, %struct.interp_t { float 2.800000e+02, float 1.700000e+02, i8 50, i8 3, i8 2 }, %struct.interp_t { float 1.600000e+03, float 1.190000e+03, i8 50, i8 3, i8 2 }, %struct.interp_t { float 2.560000e+03, float 0.000000e+00, i8 100, i8 3, i8 2 }, %struct.interp_t { float 6.000000e+01, float 3.000000e+01, i8 50, i8 3, i8 2 }, %struct.interp_t { float 9.000000e+01, float 4.500000e+01, i8 50, i8 3, i8 2 }, %struct.interp_t { float 1.500000e+02, float 0.000000e+00, i8 100, i8 3, i8 2 }, %struct.interp_t { float -3.000000e+01, float 0.000000e+00, i8 100, i8 0, i8 0 }, %struct.interp_t { float 2.975000e+01, float 0.000000e+00, i8 100, i8 0, i8 0 }, %struct.interp_t { float 3.150000e+01, float 0.000000e+00, i8 100, i8 0, i8 0 }, %struct.interp_t { float 2.625000e+01, float 0.000000e+00, i8 100, i8 0, i8 0 }, %struct.interp_t { float 2.800000e+01, float 0.000000e+00, i8 100, i8 0, i8 0 }, %struct.interp_t { float -3.000000e+01, float 0.000000e+00, i8 100, i8 0, i8 0 }, %struct.interp_t { float -3.000000e+01, float 0.000000e+00, i8 100, i8 0, i8 0 }, %struct.interp_t { float 5.400000e+01, float 2.700000e+01, i8 50, i8 0, i8 0 }, %struct.interp_t { float 3.600000e+01, float 1.800000e+01, i8 50, i8 0, i8 0 }, %struct.interp_t { float 5.400000e+01, float 2.700000e+01, i8 50, i8 0, i8 0 }, %struct.interp_t { float 0.000000e+00, float 0.000000e+00, i8 50, i8 0, i8 0 }, %struct.interp_t { float 6.000000e+01, float 3.000000e+01, i8 50, i8 0, i8 0 }] }, %struct.Elm_s { ptr @.str.47.148, i8 20, i8 4, i8 4, i8 84, ptr @.str.19.120, ptr @.str.19.120, i64 33554592, [19 x %struct.interp_t] [%struct.interp_t { float 2.700000e+02, float 1.350000e+02, i8 50, i8 0, i8 0 }, %struct.interp_t { float 2.800000e+02, float 1.700000e+02, i8 50, i8 3, i8 2 }, %struct.interp_t { float 1.600000e+03, float 1.190000e+03, i8 50, i8 3, i8 2 }, %struct.interp_t { float 2.560000e+03, float 0.000000e+00, i8 100, i8 3, i8 2 }, %struct.interp_t { float 6.000000e+01, float 3.000000e+01, i8 50, i8 3, i8 2 }, %struct.interp_t { float 9.000000e+01, float 4.500000e+01, i8 50, i8 3, i8 2 }, %struct.interp_t { float 1.500000e+02, float 0.000000e+00, i8 100, i8 3, i8 2 }, %struct.interp_t { float -3.000000e+01, float 0.000000e+00, i8 100, i8 0, i8 0 }, %struct.interp_t { float 2.975000e+01, float 0.000000e+00, i8 100, i8 0, i8 0 }, %struct.interp_t { float 3.150000e+01, float 0.000000e+00, i8 100, i8 0, i8 0 }, %struct.interp_t { float 2.625000e+01, float 0.000000e+00, i8 100, i8 0, i8 0 }, %struct.interp_t { float 2.800000e+01, float 0.000000e+00, i8 100, i8 0, i8 0 }, %struct.interp_t { float -3.000000e+01, float 0.000000e+00, i8 100, i8 0, i8 0 }, %struct.interp_t { float -3.000000e+01, float 0.000000e+00, i8 100, i8 0, i8 0 }, %struct.interp_t { float -3.000000e+01, float 0.000000e+00, i8 100, i8 0, i8 0 }, %struct.interp_t { float 6.200000e+01, float 3.100000e+01, i8 50, i8 0, i8 0 }, %struct.interp_t { float 6.200000e+01, float 3.100000e+01, i8 50, i8 0, i8 0 }, %struct.interp_t { float 0.000000e+00, float 0.000000e+00, i8 50, i8 0, i8 0 }, %struct.interp_t { float 0.000000e+00, float 0.000000e+00, i8 50, i8 0, i8 0 }] }, %struct.Elm_s { ptr @.str.45.146, i8 20, i8 4, i8 4, i8 122, ptr @.str.48.149, ptr @.str.48.149, i64 33554561, [19 x %struct.interp_t] [%struct.interp_t { float 2.700000e+02, float 1.350000e+02, i8 50, i8 0, i8 0 }, %struct.interp_t { float 2.800000e+02, float 1.700000e+02, i8 50, i8 3, i8 2 }, %struct.interp_t { float 1.720000e+03, float 9.500000e+02, i8 50, i8 3, i8 2 }, %struct.interp_t { float 2.560000e+03, float 0.000000e+00, i8 100, i8 3, i8 2 }, %struct.interp_t { float 6.000000e+01, float 3.000000e+01, i8 50, i8 3, i8 2 }, %struct.interp_t { float 9.000000e+01, float 4.500000e+01, i8 50, i8 3, i8 2 }, %struct.interp_t { float 1.500000e+02, float 0.000000e+00, i8 100, i8 3, i8 2 }, %struct.interp_t { float -3.000000e+01, float 0.000000e+00, i8 100, i8 0, i8 0 }, %struct.interp_t { float 2.975000e+01, float 0.000000e+00, i8 100, i8 0, i8 0 }, %struct.interp_t { float 2.450000e+01, float 0.000000e+00, i8 100, i8 0, i8 0 }, %struct.interp_t { float 2.450000e+01, float 0.000000e+00, i8 100, i8 0, i8 0 }, %struct.interp_t { float 3.675000e+01, float 0.000000e+00, i8 100, i8 0, i8 0 }, %struct.interp_t { float -3.000000e+01, float 0.000000e+00, i8 100, i8 0, i8 0 }, %struct.interp_t { float -3.000000e+01, float 0.000000e+00, i8 100, i8 0, i8 0 }, %struct.interp_t { float -3.000000e+01, float 0.000000e+00, i8 100, i8 0, i8 0 }, %struct.interp_t { float 4.000000e+01, float 2.000000e+01, i8 50, i8 0, i8 0 }, %struct.interp_t { float 5.400000e+01, float 2.700000e+01, i8 50, i8 0, i8 0 }, %struct.interp_t { float 0.000000e+00, float 0.000000e+00, i8 50, i8 0, i8 0 }, %struct.interp_t { float 6.000000e+01, float 3.000000e+01, i8 50, i8 0, i8 0 }] }, %struct.Elm_s { ptr @.str.49.150, i8 20, i8 4, i8 4, i8 122, ptr @.str.48.149, ptr @.str.48.149, i64 33554561, [19 x %struct.interp_t] [%struct.interp_t { float 2.700000e+02, float 1.350000e+02, i8 50, i8 0, i8 0 }, %struct.interp_t { float 2.800000e+02, float 1.700000e+02, i8 50, i8 3, i8 2 }, %struct.interp_t { float 1.720000e+03, float 9.500000e+02, i8 50, i8 3, i8 2 }, %struct.interp_t { float 2.560000e+03, float 0.000000e+00, i8 100, i8 3, i8 2 }, %struct.interp_t { float 6.000000e+01, float 3.000000e+01, i8 50, i8 3, i8 2 }, %struct.interp_t { float 9.000000e+01, float 4.500000e+01, i8 50, i8 3, i8 2 }, %struct.interp_t { float 1.500000e+02, float 0.000000e+00, i8 100, i8 3, i8 2 }, %struct.interp_t { float -3.000000e+01, float 0.000000e+00, i8 100, i8 0, i8 0 }, %struct.interp_t { float 2.975000e+01, float 0.000000e+00, i8 100, i8 0, i8 0 }, %struct.interp_t { float 2.450000e+01, float 0.000000e+00, i8 100, i8 0, i8 0 }, %struct.interp_t { float 2.450000e+01, float 0.000000e+00, i8 100, i8 0, i8 0 }, %struct.interp_t { float 3.675000e+01, float 0.000000e+00, i8 100, i8 0, i8 0 }, %struct.interp_t { float -3.000000e+01, float 0.000000e+00, i8 100, i8 0, i8 0 }, %struct.interp_t { float -3.000000e+01, float 0.000000e+00, i8 100, i8 0, i8 0 }, %struct.interp_t { float -3.000000e+01, float 0.000000e+00, i8 100, i8 0, i8 0 }, %struct.interp_t { float 6.200000e+01, float 3.100000e+01, i8 50, i8 0, i8 0 }, %struct.interp_t { float 6.200000e+01, float 3.100000e+01, i8 50, i8 0, i8 0 }, %struct.interp_t { float 0.000000e+00, float 0.000000e+00, i8 50, i8 0, i8 0 }, %struct.interp_t { float 0.000000e+00, float 0.000000e+00, i8 50, i8 0, i8 0 }] }, %struct.Elm_s { ptr @.str.50.151, i8 20, i8 4, i8 4, i8 90, ptr @.str.45.146, ptr @.str.45.146, i64 33816704, [19 x %struct.interp_t] [%struct.interp_t { float 2.700000e+02, float 1.350000e+02, i8 50, i8 0, i8 0 }, %struct.interp_t { float 2.800000e+02, float 1.700000e+02, i8 50, i8 3, i8 2 }, %struct.interp_t { float 2.020000e+03, float 1.190000e+03, i8 50, i8 3, i8 2 }, %struct.interp_t { float 2.560000e+03, float 0.000000e+00, i8 100, i8 3, i8 2 }, %struct.interp_t { float 6.000000e+01, float 3.000000e+01, i8 50, i8 3, i8 2 }, %struct.interp_t { float 9.000000e+01, float 4.500000e+01, i8 50, i8 3, i8 2 }, %struct.interp_t { float 1.500000e+02, float 0.000000e+00, i8 100, i8 3, i8 2 }, %struct.interp_t { float -3.000000e+01, float 0.000000e+00, i8 100, i8 0, i8 0 }, %struct.interp_t { float 2.975000e+01, float 0.000000e+00, i8 100, i8 0, i8 0 }, %struct.interp_t { float 2.625000e+01, float 0.000000e+00, i8 100, i8 0, i8 0 }, %struct.interp_t { float 3.675000e+01, float 0.000000e+00, i8 100, i8 0, i8 0 }, %struct.interp_t { float 2.625000e+01, float 0.000000e+00, i8 100, i8 0, i8 0 }, %struct.interp_t { float -3.000000e+01, float 0.000000e+00, i8 100, i8 0, i8 0 }, %struct.interp_t { float -3.000000e+01, float 0.000000e+00, i8 100, i8 0, i8 0 }, %struct.interp_t { float -3.000000e+01, float 0.000000e+00, i8 100, i8 0, i8 0 }, %struct.interp_t { float 6.200000e+01, float 3.100000e+01, i8 50, i8 0, i8 0 }, %struct.interp_t { float 6.200000e+01, float 3.100000e+01, i8 50, i8 0, i8 0 }, %struct.interp_t { float 0.000000e+00, float 0.000000e+00, i8 50, i8 0, i8 0 }, %struct.interp_t { float 0.000000e+00, float 0.000000e+00, i8 50, i8 0, i8 0 }] }, %struct.Elm_s { ptr @.str.51.152, i8 23, i8 4, i8 4, i8 116, ptr @.str.8.109, ptr @.str.8.109, i64 138412033, [19 x %struct.interp_t] [%struct.interp_t { float 2.700000e+02, float 1.350000e+02, i8 50, i8 0, i8 0 }, %struct.interp_t { float 1.900000e+02, float 1.100000e+02, i8 50, i8 2, i8 2 }, %struct.interp_t { float 1.780000e+03, float 9.500000e+02, i8 50, i8 2, i8 2 }, %struct.interp_t { float 2.680000e+03, float 2.680000e+03, i8 0, i8 2, i8 2 }, %struct.interp_t { float 6.000000e+01, float 3.000000e+01, i8 50, i8 2, i8 2 }, %struct.interp_t { float 9.000000e+01, float 4.500000e+01, i8 50, i8 2, i8 2 }, %struct.interp_t { float 1.500000e+02, float 1.500000e+02, i8 0, i8 2, i8 2 }, %struct.interp_t { float -3.000000e+01, float 0.000000e+00, i8 100, i8 0, i8 0 }, %struct.interp_t { float -3.000000e+01, float 0.000000e+00, i8 100, i8 0, i8 0 }, %struct.interp_t { float -3.000000e+01, float 0.000000e+00, i8 100, i8 0, i8 0 }, %struct.interp_t { float -3.000000e+01, float 0.000000e+00, i8 100, i8 0, i8 0 }, %struct.interp_t { float -3.000000e+01, float 0.000000e+00, i8 100, i8 0, i8 0 }, %struct.interp_t { float -3.000000e+01, float 0.000000e+00, i8 100, i8 0, i8 0 }, %struct.interp_t { float -3.000000e+01, float 0.000000e+00, i8 100, i8 0, i8 0 }, %struct.interp_t { float -3.000000e+01, float 0.000000e+00, i8 100, i8 0, i8 0 }, %struct.interp_t { float 0.000000e+00, float 0.000000e+00, i8 50, i8 0, i8 0 }, %struct.interp_t { float 0.000000e+00, float 0.000000e+00, i8 50, i8 0, i8 0 }, %struct.interp_t { float 6.000000e+01, float 3.000000e+01, i8 50, i8 0, i8 0 }, %struct.interp_t { float 6.000000e+01, float 3.000000e+01, i8 50, i8 0, i8 0 }] }, %struct.Elm_s { ptr @.str.52.153, i8 18, i8 8, i8 8, i8 83, ptr @.str.35.136, ptr @.str.35.136, i64 134480000, [19 x %struct.interp_t] [%struct.interp_t { float 2.700000e+02, float 1.350000e+02, i8 50, i8 0, i8 0 }, %struct.interp_t { float 4.000000e+02, float 1.700000e+02, i8 50, i8 3, i8 2 }, %struct.interp_t { float 2.020000e+03, float 1.190000e+03, i8 50, i8 3, i8 2 }, %struct.interp_t { float 2.560000e+03, float 0.000000e+00, i8 100, i8 3, i8 2 }, %struct.interp_t { float 6.000000e+01, float 3.000000e+01, i8 50, i8 3, i8 2 }, %struct.interp_t { float 9.000000e+01, float 4.500000e+01, i8 50, i8 3, i8 2 }, %struct.interp_t { float 1.500000e+02, float 0.000000e+00, i8 100, i8 3, i8 2 }, %struct.interp_t { float -3.000000e+01, float 0.000000e+00, i8 100, i8 0, i8 0 }, %struct.interp_t { float -3.000000e+01, float 0.000000e+00, i8 100, i8 0, i8 0 }, %struct.interp_t { float 3.150000e+01, float 0.000000e+00, i8 100, i8 0, i8 0 }, %struct.interp_t { float 4.200000e+01, float 0.000000e+00, i8 100, i8 0, i8 0 }, %struct.interp_t { float 3.150000e+01, float 0.000000e+00, i8 100, i8 0, i8 0 }, %struct.interp_t { float -3.000000e+01, float 0.000000e+00, i8 100, i8 0, i8 0 }, %struct.interp_t { float -3.000000e+01, float 0.000000e+00, i8 100, i8 0, i8 0 }, %struct.interp_t { float -3.000000e+01, float 0.000000e+00, i8 100, i8 0, i8 0 }, %struct.interp_t { float 0.000000e+00, float 0.000000e+00, i8 50, i8 0, i8 0 }, %struct.interp_t { float 0.000000e+00, float 0.000000e+00, i8 50, i8 0, i8 0 }, %struct.interp_t { float 6.000000e+01, float 3.000000e+01, i8 50, i8 0, i8 0 }, %struct.interp_t { float 6.000000e+01, float 3.000000e+01, i8 50, i8 0, i8 0 }] }, %struct.Elm_s { ptr @.str.53.154, i8 26, i8 4, i8 4, i8 100, ptr @.str.20.121, ptr @.str.20.121, i64 37748737, [19 x %struct.interp_t] [%struct.interp_t { float 2.700000e+02, float 1.350000e+02, i8 50, i8 0, i8 0 }, %struct.interp_t { float 1.900000e+02, float 1.100000e+02, i8 50, i8 2, i8 2 }, %struct.interp_t { float 1.780000e+03, float 9.500000e+02, i8 50, i8 2, i8 2 }, %struct.interp_t { float 2.680000e+03, float 2.680000e+03, i8 0, i8 2, i8 2 }, %struct.interp_t { float 6.000000e+01, float 3.000000e+01, i8 50, i8 2, i8 2 }, %struct.interp_t { float 9.000000e+01, float 4.500000e+01, i8 50, i8 2, i8 2 }, %struct.interp_t { float 1.500000e+02, float 1.500000e+02, i8 0, i8 2, i8 2 }, %struct.interp_t { float -3.000000e+01, float 0.000000e+00, i8 100, i8 0, i8 0 }, %struct.interp_t { float 3.150000e+01, float 0.000000e+00, i8 100, i8 0, i8 0 }, %struct.interp_t { float -3.000000e+01, float 0.000000e+00, i8 100, i8 0, i8 0 }, %struct.interp_t { float -3.000000e+01, float 0.000000e+00, i8 100, i8 0, i8 0 }, %struct.interp_t { float -3.000000e+01, float 0.000000e+00, i8 100, i8 0, i8 0 }, %struct.interp_t { float -3.000000e+01, float 0.000000e+00, i8 100, i8 0, i8 0 }, %struct.interp_t { float -3.000000e+01, float 0.000000e+00, i8 100, i8 0, i8 0 }, %struct.interp_t { float -3.000000e+01, float 0.000000e+00, i8 100, i8 0, i8 0 }, %struct.interp_t { float 6.200000e+01, float 3.100000e+01, i8 50, i8 0, i8 0 }, %struct.interp_t { float 6.200000e+01, float 3.100000e+01, i8 50, i8 0, i8 0 }, %struct.interp_t { float 0.000000e+00, float 0.000000e+00, i8 50, i8 0, i8 0 }, %struct.interp_t { float 0.000000e+00, float 0.000000e+00, i8 50, i8 0, i8 0 }] }, %struct.Elm_s { ptr @.str.54.155, i8 20, i8 3, i8 3, i8 90, ptr @.str.45.146, ptr @.str.45.146, i64 33816704, [19 x %struct.interp_t] [%struct.interp_t { float 2.700000e+02, float 1.350000e+02, i8 50, i8 0, i8 0 }, %struct.interp_t { float 2.800000e+02, float 1.700000e+02, i8 50, i8 3, i8 2 }, %struct.interp_t { float 2.020000e+03, float 1.190000e+03, i8 50, i8 3, i8 2 }, %struct.interp_t { float 2.560000e+03, float 0.000000e+00, i8 100, i8 3, i8 2 }, %struct.interp_t { float 6.000000e+01, float 3.000000e+01, i8 50, i8 3, i8 2 }, %struct.interp_t { float 9.000000e+01, float 4.500000e+01, i8 50, i8 3, i8 2 }, %struct.interp_t { float 1.500000e+02, float 0.000000e+00, i8 100, i8 3, i8 2 }, %struct.interp_t { float -3.000000e+01, float 0.000000e+00, i8 100, i8 0, i8 0 }, %struct.interp_t { float 2.975000e+01, float 0.000000e+00, i8 100, i8 0, i8 0 }, %struct.interp_t { float 2.625000e+01, float 0.000000e+00, i8 100, i8 0, i8 0 }, %struct.interp_t { float 3.675000e+01, float 0.000000e+00, i8 100, i8 0, i8 0 }, %struct.interp_t { float 2.625000e+01, float 0.000000e+00, i8 100, i8 0, i8 0 }, %struct.interp_t { float -3.000000e+01, float 0.000000e+00, i8 100, i8 0, i8 0 }, %struct.interp_t { float -3.000000e+01, float 0.000000e+00, i8 100, i8 0, i8 0 }, %struct.interp_t { float -3.000000e+01, float 0.000000e+00, i8 100, i8 0, i8 0 }, %struct.interp_t { float 6.200000e+01, float 3.100000e+01, i8 50, i8 0, i8 0 }, %struct.interp_t { float 6.200000e+01, float 3.100000e+01, i8 50, i8 0, i8 0 }, %struct.interp_t { float 0.000000e+00, float 0.000000e+00, i8 50, i8 0, i8 0 }, %struct.interp_t { float 0.000000e+00, float 0.000000e+00, i8 50, i8 0, i8 0 }] }, %struct.Elm_s { ptr @.str.55.156, i8 11, i8 8, i8 8, i8 108, ptr @.str.56.157, ptr @.str.56.157, i64 33555457, [19 x %struct.interp_t] [%struct.interp_t { float 2.700000e+02, float 1.350000e+02, i8 50, i8 0, i8 0 }, %struct.interp_t { float 4.600000e+02, float 2.300000e+02, i8 50, i8 6, i8 0 }, %struct.interp_t { float 1.480000e+03, float 7.100000e+02, i8 50, i8 6, i8 0 }, %struct.interp_t { float 2.500000e+03, float 1.220000e+03, i8 50, i8 6, i8 0 }, %struct.interp_t { float 6.000000e+01, float 3.000000e+01, i8 50, i8 6, i8 0 }, %struct.interp_t { float 9.000000e+01, float 4.500000e+01, i8 50, i8 6, i8 0 }, %struct.interp_t { float 1.500000e+02, float 7.500000e+01, i8 50, i8 6, i8 0 }, %struct.interp_t { float -3.000000e+01, float 0.000000e+00, i8 100, i8 0, i8 0 }, %struct.interp_t { float 3.675000e+01, float 0.000000e+00, i8 100, i8 0, i8 0 }, %struct.interp_t { float 2.625000e+01, float 0.000000e+00, i8 100, i8 0, i8 0 }, %struct.interp_t { float 2.625000e+01, float 0.000000e+00, i8 100, i8 0, i8 0 }, %struct.interp_t { float 2.100000e+01, float 0.000000e+00, i8 100, i8 0, i8 0 }, %struct.interp_t { float -3.000000e+01, float 0.000000e+00, i8 100, i8 0, i8 0 }, %struct.interp_t { float -3.000000e+01, float 0.000000e+00, i8 100, i8 0, i8 0 }, %struct.interp_t { float -3.000000e+01, float 0.000000e+00, i8 100, i8 0, i8 0 }, %struct.interp_t { float 6.200000e+01, float 3.100000e+01, i8 50, i8 0, i8 0 }, %struct.interp_t { float 6.200000e+01, float 3.100000e+01, i8 50, i8 0, i8 0 }, %struct.interp_t { float 0.000000e+00, float 0.000000e+00, i8 50, i8 0, i8 0 }, %struct.interp_t { float 0.000000e+00, float 0.000000e+00, i8 50, i8 0, i8 0 }] }, %struct.Elm_s { ptr @.str.57.158, i8 11, i8 8, i8 8, i8 108, ptr @.str.56.157, ptr @.str.56.157, i64 33555457, [19 x %struct.interp_t] [%struct.interp_t { float 2.700000e+02, float 1.350000e+02, i8 50, i8 0, i8 0 }, %struct.interp_t { float 4.600000e+02, float 2.300000e+02, i8 50, i8 6, i8 0 }, %struct.interp_t { float 9.400000e+02, float 4.700000e+02, i8 50, i8 6, i8 0 }, %struct.interp_t { float 2.500000e+03, float 1.220000e+03, i8 50, i8 6, i8 0 }, %struct.interp_t { float 6.000000e+01, float 3.000000e+01, i8 50, i8 6, i8 0 }, %struct.interp_t { float 9.000000e+01, float 4.500000e+01, i8 50, i8 6, i8 0 }, %struct.interp_t { float 1.500000e+02, float 7.500000e+01, i8 50, i8 6, i8 0 }, %struct.interp_t { float -3.000000e+01, float 0.000000e+00, i8 100, i8 0, i8 0 }, %struct.interp_t { float 3.675000e+01, float 0.000000e+00, i8 100, i8 0, i8 0 }, %struct.interp_t { float 2.625000e+01, float 0.000000e+00, i8 100, i8 0, i8 0 }, %struct.interp_t { float 2.625000e+01, float 0.000000e+00, i8 100, i8 0, i8 0 }, %struct.interp_t { float 2.100000e+01, float 0.000000e+00, i8 100, i8 0, i8 0 }, %struct.interp_t { float -3.000000e+01, float 0.000000e+00, i8 100, i8 0, i8 0 }, %struct.interp_t { float -3.000000e+01, float 0.000000e+00, i8 100, i8 0, i8 0 }, %struct.interp_t { float -3.000000e+01, float 0.000000e+00, i8 100, i8 0, i8 0 }, %struct.interp_t { float 6.200000e+01, float 3.100000e+01, i8 50, i8 0, i8 0 }, %struct.interp_t { float 6.200000e+01, float 3.100000e+01, i8 50, i8 0, i8 0 }, %struct.interp_t { float 0.000000e+00, float 0.000000e+00, i8 50, i8 0, i8 0 }, %struct.interp_t { float 0.000000e+00, float 0.000000e+00, i8 50, i8 0, i8 0 }] }, %struct.Elm_s { ptr @.str.58.159, i8 10, i8 10, i8 10, i8 -43, ptr @.str.59.160, ptr @.str.60.161, i64 1048576, [19 x %struct.interp_t] [%struct.interp_t { float 2.700000e+02, float 1.350000e+02, i8 50, i8 0, i8 0 }, %struct.interp_t { float 4.900000e+02, float 0.000000e+00, i8 100, i8 0, i8 5 }, %struct.interp_t { float 1.180000e+03, float 0.000000e+00, i8 100, i8 0, i8 5 }, %struct.interp_t { float 1.600000e+03, float 1.600000e+03, i8 0, i8 5, i8 5 }, %struct.interp_t { float 6.000000e+01, float 3.000000e+01, i8 50, i8 0, i8 5 }, %struct.interp_t { float 9.000000e+01, float 4.500000e+01, i8 50, i8 5, i8 5 }, %struct.interp_t { float 7.000000e+01, float 3.500000e+01, i8 50, i8 5, i8 5 }, %struct.interp_t { float -3.000000e+01, float 0.000000e+00, i8 100, i8 5, i8 5 }, %struct.interp_t { float 4.200000e+01, float 2.100000e+01, i8 50, i8 5, i8 5 }, %struct.interp_t { float 3.500000e+01, float 1.750000e+01, i8 50, i8 5, i8 5 }, %struct.interp_t { float 3.500000e+01, float 1.750000e+01, i8 50, i8 5, i8 5 }, %struct.interp_t { float -3.000000e+01, float 0.000000e+00, i8 50, i8 5, i8 5 }, %struct.interp_t { float -3.000000e+01, float -1.500000e+01, i8 50, i8 5, i8 5 }, %struct.interp_t { float -3.000000e+01, float -1.500000e+01, i8 50, i8 5, i8 5 }, %struct.interp_t { float -3.000000e+01, float -1.500000e+01, i8 50, i8 5, i8 5 }, %struct.interp_t { float 5.000000e+01, float 2.500000e+01, i8 50, i8 0, i8 0 }, %struct.interp_t { float 1.600000e+01, float 8.000000e+00, i8 50, i8 0, i8 0 }, %struct.interp_t { float 0.000000e+00, float 0.000000e+00, i8 50, i8 0, i8 0 }, %struct.interp_t { float 0.000000e+00, float 0.000000e+00, i8 50, i8 0, i8 0 }] }, %struct.Elm_s { ptr @.str.59.160, i8 10, i8 11, i8 11, i8 -88, ptr @.str.61.162, ptr @.str.61.162, i64 3, [19 x %struct.interp_t] [%struct.interp_t { float 2.700000e+02, float 1.350000e+02, i8 50, i8 0, i8 0 }, %struct.interp_t { float 4.900000e+02, float 0.000000e+00, i8 100, i8 0, i8 5 }, %struct.interp_t { float 1.180000e+03, float 5.900000e+02, i8 50, i8 5, i8 5 }, %struct.interp_t { float 1.600000e+03, float 7.400000e+02, i8 50, i8 5, i8 5 }, %struct.interp_t { float 6.000000e+01, float 0.000000e+00, i8 100, i8 0, i8 5 }, %struct.interp_t { float 9.000000e+01, float 4.500000e+01, i8 50, i8 5, i8 5 }, %struct.interp_t { float 1.500000e+02, float 7.500000e+01, i8 50, i8 5, i8 5 }, %struct.interp_t { float -3.000000e+01, float 0.000000e+00, i8 100, i8 5, i8 5 }, %struct.interp_t { float 4.200000e+01, float 2.100000e+01, i8 50, i8 5, i8 5 }, %struct.interp_t { float 3.500000e+01, float 1.750000e+01, i8 50, i8 5, i8 5 }, %struct.interp_t { float 3.500000e+01, float 1.750000e+01, i8 50, i8 5, i8 5 }, %struct.interp_t { float -3.000000e+01, float 0.000000e+00, i8 50, i8 5, i8 5 }, %struct.interp_t { float -3.000000e+01, float -1.500000e+01, i8 50, i8 5, i8 5 }, %struct.interp_t { float -3.000000e+01, float -1.500000e+01, i8 50, i8 5, i8 5 }, %struct.interp_t { float -3.000000e+01, float -1.500000e+01, i8 50, i8 5, i8 5 }, %struct.interp_t { float 6.200000e+01, float 3.100000e+01, i8 50, i8 0, i8 0 }, %struct.interp_t { float 6.200000e+01, float 3.100000e+01, i8 50, i8 0, i8 0 }, %struct.interp_t { float 0.000000e+00, float 0.000000e+00, i8 50, i8 0, i8 0 }, %struct.interp_t { float 0.000000e+00, float 0.000000e+00, i8 50, i8 0, i8 0 }] }, %struct.Elm_s { ptr @.str.62.163, i8 10, i8 8, i8 8, i8 119, ptr @.str.63.164, ptr @.str.63.164, i64 33558530, [19 x %struct.interp_t] [%struct.interp_t { float 2.700000e+02, float 1.350000e+02, i8 50, i8 0, i8 0 }, %struct.interp_t { float 1.900000e+02, float 5.000000e+01, i8 50, i8 4, i8 4 }, %struct.interp_t { float 7.600000e+02, float 3.500000e+02, i8 50, i8 4, i8 4 }, %struct.interp_t { float 2.020000e+03, float 9.800000e+02, i8 50, i8 4, i8 4 }, %struct.interp_t { float 6.000000e+01, float 3.000000e+01, i8 50, i8 4, i8 4 }, %struct.interp_t { float 9.000000e+01, float 4.500000e+01, i8 50, i8 4, i8 4 }, %struct.interp_t { float 1.500000e+02, float 7.500000e+01, i8 50, i8 4, i8 4 }, %struct.interp_t { float -3.000000e+01, float 0.000000e+00, i8 100, i8 4, i8 4 }, %struct.interp_t { float 4.375000e+01, float 2.100000e+01, i8 50, i8 4, i8 4 }, %struct.interp_t { float 2.800000e+01, float 1.400000e+01, i8 50, i8 4, i8 4 }, %struct.interp_t { float 2.100000e+01, float 1.050000e+01, i8 50, i8 4, i8 4 }, %struct.interp_t { float -3.000000e+01, float 0.000000e+00, i8 50, i8 4, i8 4 }, %struct.interp_t { float -3.000000e+01, float -1.500000e+01, i8 50, i8 4, i8 4 }, %struct.interp_t { float -3.000000e+01, float -1.500000e+01, i8 50, i8 4, i8 4 }, %struct.interp_t { float -3.000000e+01, float -1.500000e+01, i8 50, i8 4, i8 4 }, %struct.interp_t { float 6.200000e+01, float 3.100000e+01, i8 50, i8 0, i8 0 }, %struct.interp_t { float 6.200000e+01, float 3.100000e+01, i8 50, i8 0, i8 0 }, %struct.interp_t { float 0.000000e+00, float 0.000000e+00, i8 50, i8 0, i8 0 }, %struct.interp_t { float 0.000000e+00, float 0.000000e+00, i8 50, i8 0, i8 0 }] }, %struct.Elm_s { ptr @.str.64.165, i8 10, i8 7, i8 7, i8 106, ptr @.str.65.166, ptr @.str.65.166, i64 33685506, [19 x %struct.interp_t] [%struct.interp_t { float 2.700000e+02, float 1.350000e+02, i8 50, i8 0, i8 0 }, %struct.interp_t { float 2.500000e+02, float 1.100000e+02, i8 50, i8 4, i8 4 }, %struct.interp_t { float 2.500000e+03, float 1.190000e+03, i8 50, i8 4, i8 4 }, %struct.interp_t { float 2.980000e+03, float 1.460000e+03, i8 50, i8 4, i8 4 }, %struct.interp_t { float 6.000000e+01, float 3.000000e+01, i8 50, i8 4, i8 4 }, %struct.interp_t { float 9.000000e+01, float 4.500000e+01, i8 50, i8 4, i8 4 }, %struct.interp_t { float 1.500000e+02, float 7.500000e+01, i8 50, i8 4, i8 4 }, %struct.interp_t { float -3.000000e+01, float 0.000000e+00, i8 100, i8 4, i8 4 }, %struct.interp_t { float 5.075000e+01, float 2.450000e+01, i8 50, i8 4, i8 4 }, %struct.interp_t { float 3.325000e+01, float 1.750000e+01, i8 50, i8 4, i8 4 }, %struct.interp_t { float 3.850000e+01, float 1.750000e+01, i8 50, i8 4, i8 4 }, %struct.interp_t { float 3.150000e+01, float 1.400000e+01, i8 50, i8 4, i8 4 }, %struct.interp_t { float -3.000000e+01, float -1.500000e+01, i8 50, i8 4, i8 4 }, %struct.interp_t { float -3.000000e+01, float -1.500000e+01, i8 50, i8 4, i8 4 }, %struct.interp_t { float -3.000000e+01, float -1.500000e+01, i8 50, i8 4, i8 4 }, %struct.interp_t { float 6.200000e+01, float 3.100000e+01, i8 50, i8 0, i8 0 }, %struct.interp_t { float 1.600000e+01, float 8.000000e+00, i8 50, i8 0, i8 0 }, %struct.interp_t { float 0.000000e+00, float 0.000000e+00, i8 50, i8 0, i8 0 }, %struct.interp_t { float 0.000000e+00, float 0.000000e+00, i8 50, i8 0, i8 0 }] }, %struct.Elm_s { ptr @.str.66.167, i8 2, i8 8, i8 6, i8 73, ptr @.str.66.167, ptr @.str.66.167, i64 287309888, [19 x %struct.interp_t] [%struct.interp_t { float 2.700000e+02, float 1.350000e+02, i8 50, i8 0, i8 0 }, %struct.interp_t { float 4.000000e+02, float 1.700000e+02, i8 50, i8 4, i8 4 }, %struct.interp_t { float 2.080000e+03, float 1.070000e+03, i8 50, i8 4, i8 4 }, %struct.interp_t { float 2.560000e+03, float 1.340000e+03, i8 50, i8 4, i8 4 }, %struct.interp_t { float 6.000000e+01, float 3.000000e+01, i8 50, i8 4, i8 4 }, %struct.interp_t { float 9.000000e+01, float 4.500000e+01, i8 50, i8 4, i8 4 }, %struct.interp_t { float 1.500000e+02, float 7.500000e+01, i8 50, i8 4, i8 4 }, %struct.interp_t { float -3.000000e+01, float 0.000000e+00, i8 100, i8 4, i8 4 }, %struct.interp_t { float 5.075000e+01, float 2.450000e+01, i8 50, i8 4, i8 4 }, %struct.interp_t { float 3.675000e+01, float 1.750000e+01, i8 50, i8 4, i8 4 }, %struct.interp_t { float 3.500000e+01, float 1.750000e+01, i8 50, i8 4, i8 4 }, %struct.interp_t { float 2.975000e+01, float 1.400000e+01, i8 50, i8 4, i8 4 }, %struct.interp_t { float -3.000000e+01, float -1.500000e+01, i8 50, i8 4, i8 4 }, %struct.interp_t { float -3.000000e+01, float -1.500000e+01, i8 50, i8 4, i8 4 }, %struct.interp_t { float -3.000000e+01, float -1.500000e+01, i8 50, i8 4, i8 4 }, %struct.interp_t { float 6.200000e+01, float 3.100000e+01, i8 50, i8 0, i8 0 }, %struct.interp_t { float 1.600000e+01, float 8.000000e+00, i8 50, i8 0, i8 0 }, %struct.interp_t { float 0.000000e+00, float 0.000000e+00, i8 50, i8 0, i8 0 }, %struct.interp_t { float 0.000000e+00, float 0.000000e+00, i8 50, i8 0, i8 0 }] }, %struct.Elm_s { ptr @.str.67.168, i8 2, i8 8, i8 4, i8 69, ptr @.str.68.169, ptr @.str.67.168, i64 285220928, [19 x %struct.interp_t] [%struct.interp_t { float 2.700000e+02, float 1.350000e+02, i8 50, i8 0, i8 0 }, %struct.interp_t { float 6.400000e+02, float 3.500000e+02, i8 50, i8 4, i8 4 }, %struct.interp_t { float 2.020000e+03, float 1.070000e+03, i8 50, i8 4, i8 4 }, %struct.interp_t { float 2.500000e+03, float 1.220000e+03, i8 50, i8 4, i8 4 }, %struct.interp_t { float 6.000000e+01, float 3.000000e+01, i8 50, i8 4, i8 4 }, %struct.interp_t { float 9.000000e+01, float 4.500000e+01, i8 50, i8 4, i8 4 }, %struct.interp_t { float 1.500000e+02, float 7.500000e+01, i8 50, i8 4, i8 4 }, %struct.interp_t { float -3.000000e+01, float 0.000000e+00, i8 100, i8 4, i8 4 }, %struct.interp_t { float 5.075000e+01, float 2.450000e+01, i8 50, i8 4, i8 4 }, %struct.interp_t { float 4.200000e+01, float 2.100000e+01, i8 50, i8 4, i8 4 }, %struct.interp_t { float 3.850000e+01, float 1.750000e+01, i8 50, i8 4, i8 4 }, %struct.interp_t { float 3.150000e+01, float 1.400000e+01, i8 50, i8 4, i8 4 }, %struct.interp_t { float -3.000000e+01, float -1.500000e+01, i8 50, i8 4, i8 4 }, %struct.interp_t { float -3.000000e+01, float -1.500000e+01, i8 50, i8 4, i8 4 }, %struct.interp_t { float -3.000000e+01, float -1.500000e+01, i8 50, i8 4, i8 4 }, %struct.interp_t { float 6.200000e+01, float 3.100000e+01, i8 50, i8 0, i8 0 }, %struct.interp_t { float 1.600000e+01, float 8.000000e+00, i8 50, i8 0, i8 0 }, %struct.interp_t { float 0.000000e+00, float 0.000000e+00, i8 50, i8 0, i8 0 }, %struct.interp_t { float 0.000000e+00, float 0.000000e+00, i8 50, i8 0, i8 0 }] }, %struct.Elm_s { ptr @.str.69.170, i8 2, i8 10, i8 5, i8 81, ptr @.str.70.171, ptr @.str.70.171, i64 285229120, [19 x %struct.interp_t] [%struct.interp_t { float 2.700000e+02, float 1.350000e+02, i8 50, i8 0, i8 0 }, %struct.interp_t { float 7.900000e+02, float 4.100000e+02, i8 50, i8 4, i8 4 }, %struct.interp_t { float 1.780000e+03, float 9.500000e+02, i8 50, i8 4, i8 4 }, %struct.interp_t { float 2.500000e+03, float 1.220000e+03, i8 50, i8 4, i8 4 }, %struct.interp_t { float 1.300000e+02, float 6.500000e+01, i8 50, i8 4, i8 4 }, %struct.interp_t { float 9.000000e+01, float 4.500000e+01, i8 50, i8 4, i8 4 }, %struct.interp_t { float 1.500000e+02, float 7.500000e+01, i8 50, i8 4, i8 4 }, %struct.interp_t { float -3.000000e+01, float 0.000000e+00, i8 100, i8 4, i8 4 }, %struct.interp_t { float 5.075000e+01, float 2.450000e+01, i8 50, i8 4, i8 4 }, %struct.interp_t { float 4.725000e+01, float 2.450000e+01, i8 50, i8 4, i8 4 }, %struct.interp_t { float 3.850000e+01, float 1.750000e+01, i8 50, i8 4, i8 4 }, %struct.interp_t { float 3.150000e+01, float 1.400000e+01, i8 50, i8 4, i8 4 }, %struct.interp_t { float -3.000000e+01, float -1.500000e+01, i8 50, i8 4, i8 4 }, %struct.interp_t { float -3.000000e+01, float -1.500000e+01, i8 50, i8 4, i8 4 }, %struct.interp_t { float -3.000000e+01, float -1.500000e+01, i8 50, i8 4, i8 4 }, %struct.interp_t { float 6.200000e+01, float 3.100000e+01, i8 50, i8 0, i8 0 }, %struct.interp_t { float 1.600000e+01, float 8.000000e+00, i8 50, i8 0, i8 0 }, %struct.interp_t { float 0.000000e+00, float 0.000000e+00, i8 50, i8 0, i8 0 }, %struct.interp_t { float 0.000000e+00, float 0.000000e+00, i8 50, i8 0, i8 0 }] }, %struct.Elm_s { ptr @.str.71.172, i8 2, i8 9, i8 6, i8 -61, ptr @.str.42.143, ptr @.str.42.143, i64 285220868, [19 x %struct.interp_t] [%struct.interp_t { float 2.700000e+02, float 1.350000e+02, i8 50, i8 0, i8 0 }, %struct.interp_t { float 7.000000e+02, float 3.500000e+02, i8 50, i8 4, i8 4 }, %struct.interp_t { float 1.360000e+03, float 7.100000e+02, i8 50, i8 4, i8 4 }, %struct.interp_t { float 2.500000e+03, float 1.220000e+03, i8 50, i8 4, i8 4 }, %struct.interp_t { float 6.000000e+01, float 3.000000e+01, i8 50, i8 4, i8 4 }, %struct.interp_t { float 9.000000e+01, float 4.500000e+01, i8 50, i8 4, i8 4 }, %struct.interp_t { float 1.500000e+02, float 7.500000e+01, i8 50, i8 4, i8 4 }, %struct.interp_t { float -3.000000e+01, float 0.000000e+00, i8 100, i8 4, i8 4 }, %struct.interp_t { float 5.075000e+01, float 2.450000e+01, i8 50, i8 4, i8 4 }, %struct.interp_t { float 4.375000e+01, float 2.100000e+01, i8 50, i8 4, i8 4 }, %struct.interp_t { float 3.150000e+01, float 1.400000e+01, i8 50, i8 4, i8 4 }, %struct.interp_t { float 2.450000e+01, float 1.050000e+01, i8 50, i8 4, i8 4 }, %struct.interp_t { float -3.000000e+01, float -1.500000e+01, i8 50, i8 4, i8 4 }, %struct.interp_t { float -3.000000e+01, float -1.500000e+01, i8 50, i8 4, i8 4 }, %struct.interp_t { float -3.000000e+01, float -1.500000e+01, i8 50, i8 4, i8 4 }, %struct.interp_t { float 6.200000e+01, float 3.100000e+01, i8 50, i8 0, i8 0 }, %struct.interp_t { float 1.600000e+01, float 8.000000e+00, i8 50, i8 0, i8 0 }, %struct.interp_t { float 0.000000e+00, float 0.000000e+00, i8 50, i8 0, i8 0 }, %struct.interp_t { float 0.000000e+00, float 0.000000e+00, i8 50, i8 0, i8 0 }] }, %struct.Elm_s { ptr @.str.72.173, i8 2, i8 9, i8 6, i8 -127, ptr @.str.73.174, ptr @.str.74, i64 268976132, [19 x %struct.interp_t] [%struct.interp_t { float 2.700000e+02, float 1.350000e+02, i8 50, i8 0, i8 0 }, %struct.interp_t { float 6.100000e+02, float 2.900000e+02, i8 50, i8 4, i8 4 }, %struct.interp_t { float 8.800000e+02, float 4.700000e+02, i8 50, i8 4, i8 4 }, %struct.interp_t { float 2.500000e+03, float 1.220000e+03, i8 50, i8 4, i8 4 }, %struct.interp_t { float 6.000000e+01, float 3.000000e+01, i8 50, i8 4, i8 4 }, %struct.interp_t { float 9.000000e+01, float 4.500000e+01, i8 50, i8 4, i8 4 }, %struct.interp_t { float 1.500000e+02, float 7.500000e+01, i8 50, i8 4, i8 4 }, %struct.interp_t { float -3.000000e+01, float 0.000000e+00, i8 100, i8 4, i8 4 }, %struct.interp_t { float 5.075000e+01, float 2.450000e+01, i8 50, i8 4, i8 4 }, %struct.interp_t { float 4.725000e+01, float 2.450000e+01, i8 50, i8 4, i8 4 }, %struct.interp_t { float 2.275000e+01, float 1.050000e+01, i8 50, i8 4, i8 4 }, %struct.interp_t { float 1.575000e+01, float 7.000000e+00, i8 50, i8 4, i8 4 }, %struct.interp_t { float -3.000000e+01, float -1.500000e+01, i8 50, i8 4, i8 4 }, %struct.interp_t { float -3.000000e+01, float -1.500000e+01, i8 50, i8 4, i8 4 }, %struct.interp_t { float -3.000000e+01, float -1.500000e+01, i8 50, i8 4, i8 4 }, %struct.interp_t { float 6.200000e+01, float 3.100000e+01, i8 50, i8 0, i8 0 }, %struct.interp_t { float 1.600000e+01, float 8.000000e+00, i8 50, i8 0, i8 0 }, %struct.interp_t { float 0.000000e+00, float 0.000000e+00, i8 50, i8 0, i8 0 }, %struct.interp_t { float 0.000000e+00, float 0.000000e+00, i8 50, i8 0, i8 0 }] }, %struct.Elm_s { ptr @.str.75, i8 2, i8 6, i8 4, i8 85, ptr @.str.71.172, ptr @.str.71.172, i64 271056900, [19 x %struct.interp_t] [%struct.interp_t { float 2.700000e+02, float 1.350000e+02, i8 50, i8 0, i8 0 }, %struct.interp_t { float 3.700000e+02, float 1.700000e+02, i8 50, i8 4, i8 4 }, %struct.interp_t { float 1.000000e+03, float 4.700000e+02, i8 50, i8 4, i8 4 }, %struct.interp_t { float 2.500000e+03, float 1.220000e+03, i8 50, i8 4, i8 4 }, %struct.interp_t { float 6.000000e+01, float 3.000000e+01, i8 50, i8 4, i8 4 }, %struct.interp_t { float 9.000000e+01, float 4.500000e+01, i8 50, i8 4, i8 4 }, %struct.interp_t { float 1.500000e+02, float 7.500000e+01, i8 50, i8 4, i8 4 }, %struct.interp_t { float -3.000000e+01, float 0.000000e+00, i8 100, i8 4, i8 4 }, %struct.interp_t { float 5.075000e+01, float 2.450000e+01, i8 50, i8 4, i8 4 }, %struct.interp_t { float 4.200000e+01, float 2.100000e+01, i8 50, i8 4, i8 4 }, %struct.interp_t { float 2.800000e+01, float 1.400000e+01, i8 50, i8 4, i8 4 }, %struct.interp_t { float 2.275000e+01, float 1.050000e+01, i8 50, i8 4, i8 4 }, %struct.interp_t { float -3.000000e+01, float -1.500000e+01, i8 50, i8 4, i8 4 }, %struct.interp_t { float -3.000000e+01, float -1.500000e+01, i8 50, i8 4, i8 4 }, %struct.interp_t { float -3.000000e+01, float -1.500000e+01, i8 50, i8 4, i8 4 }, %struct.interp_t { float 6.200000e+01, float 3.100000e+01, i8 50, i8 0, i8 0 }, %struct.interp_t { float 1.600000e+01, float 8.000000e+00, i8 50, i8 0, i8 0 }, %struct.interp_t { float 0.000000e+00, float 0.000000e+00, i8 50, i8 0, i8 0 }, %struct.interp_t { float 0.000000e+00, float 0.000000e+00, i8 50, i8 0, i8 0 }] }, %struct.Elm_s { ptr @.str.76, i8 2, i8 4, i8 4, i8 -85, ptr @.str.77, ptr @.str.77, i64 285245456, [19 x %struct.interp_t] [%struct.interp_t { float 2.700000e+02, float 1.350000e+02, i8 50, i8 0, i8 0 }, %struct.interp_t { float 4.900000e+02, float 2.300000e+02, i8 50, i8 4, i8 4 }, %struct.interp_t { float 1.480000e+03, float 7.100000e+02, i8 50, i8 4, i8 4 }, %struct.interp_t { float 2.500000e+03, float 1.220000e+03, i8 50, i8 4, i8 4 }, %struct.interp_t { float 6.000000e+01, float 3.000000e+01, i8 50, i8 4, i8 4 }, %struct.interp_t { float 9.000000e+01, float 4.500000e+01, i8 50, i8 4, i8 4 }, %struct.interp_t { float 1.500000e+02, float 7.500000e+01, i8 50, i8 4, i8 4 }, %struct.interp_t { float -3.000000e+01, float 0.000000e+00, i8 100, i8 4, i8 4 }, %struct.interp_t { float 5.075000e+01, float 2.450000e+01, i8 50, i8 4, i8 4 }, %struct.interp_t { float 5.075000e+01, float 2.450000e+01, i8 50, i8 4, i8 4 }, %struct.interp_t { float 3.325000e+01, float 1.750000e+01, i8 50, i8 4, i8 4 }, %struct.interp_t { float 2.625000e+01, float 1.400000e+01, i8 50, i8 4, i8 4 }, %struct.interp_t { float -3.000000e+01, float -1.500000e+01, i8 50, i8 4, i8 4 }, %struct.interp_t { float -3.000000e+01, float -1.500000e+01, i8 50, i8 4, i8 4 }, %struct.interp_t { float -3.000000e+01, float -1.500000e+01, i8 50, i8 4, i8 4 }, %struct.interp_t { float 6.200000e+01, float 3.100000e+01, i8 50, i8 0, i8 0 }, %struct.interp_t { float 1.600000e+01, float 8.000000e+00, i8 50, i8 0, i8 0 }, %struct.interp_t { float 0.000000e+00, float 0.000000e+00, i8 50, i8 0, i8 0 }, %struct.interp_t { float 0.000000e+00, float 0.000000e+00, i8 50, i8 0, i8 0 }] }, %struct.Elm_s { ptr @.str.78, i8 2, i8 11, i8 7, i8 105, ptr @.str.79, ptr @.str.79, i64 285213248, [19 x %struct.interp_t] [%struct.interp_t { float 2.700000e+02, float 1.350000e+02, i8 50, i8 0, i8 0 }, %struct.interp_t { float 2.500000e+02, float 1.100000e+02, i8 50, i8 4, i8 4 }, %struct.interp_t { float 2.320000e+03, float 1.190000e+03, i8 50, i8 4, i8 4 }, %struct.interp_t { float 3.200000e+03, float 1.580000e+03, i8 50, i8 4, i8 4 }, %struct.interp_t { float 6.000000e+01, float 3.000000e+01, i8 50, i8 4, i8 4 }, %struct.interp_t { float 9.000000e+01, float 4.500000e+01, i8 50, i8 4, i8 4 }, %struct.interp_t { float 1.500000e+02, float 7.500000e+01, i8 50, i8 4, i8 4 }, %struct.interp_t { float -3.000000e+01, float 0.000000e+00, i8 100, i8 4, i8 4 }, %struct.interp_t { float 5.075000e+01, float 2.450000e+01, i8 50, i8 4, i8 4 }, %struct.interp_t { float 3.325000e+01, float 1.750000e+01, i8 50, i8 4, i8 4 }, %struct.interp_t { float 3.675000e+01, float 1.750000e+01, i8 50, i8 4, i8 4 }, %struct.interp_t { float 3.150000e+01, float 1.400000e+01, i8 50, i8 4, i8 4 }, %struct.interp_t { float -3.000000e+01, float -1.500000e+01, i8 50, i8 4, i8 4 }, %struct.interp_t { float -3.000000e+01, float -1.500000e+01, i8 50, i8 4, i8 4 }, %struct.interp_t { float -3.000000e+01, float -1.500000e+01, i8 50, i8 4, i8 4 }, %struct.interp_t { float 6.200000e+01, float 3.100000e+01, i8 50, i8 0, i8 0 }, %struct.interp_t { float 1.600000e+01, float 8.000000e+00, i8 50, i8 0, i8 0 }, %struct.interp_t { float 0.000000e+00, float 0.000000e+00, i8 50, i8 0, i8 0 }, %struct.interp_t { float 0.000000e+00, float 0.000000e+00, i8 50, i8 0, i8 0 }] }, %struct.Elm_s { ptr @.str.80, i8 2, i8 16, i8 16, i8 -50, ptr @.str.81, ptr @.str.82.175, i64 285220880, [19 x %struct.interp_t] [%struct.interp_t { float 2.700000e+02, float 1.350000e+02, i8 50, i8 0, i8 0 }, %struct.interp_t { float 5.800000e+02, float 2.900000e+02, i8 50, i8 4, i8 4 }, %struct.interp_t { float 1.420000e+03, float 7.100000e+02, i8 50, i8 4, i8 4 }, %struct.interp_t { float 2.500000e+03, float 1.220000e+03, i8 50, i8 4, i8 4 }, %struct.interp_t { float 6.000000e+01, float 3.000000e+01, i8 50, i8 4, i8 4 }, %struct.interp_t { float 9.000000e+01, float 4.500000e+01, i8 50, i8 4, i8 4 }, %struct.interp_t { float 1.500000e+02, float 7.500000e+01, i8 50, i8 4, i8 4 }, %struct.interp_t { float -3.000000e+01, float 0.000000e+00, i8 100, i8 4, i8 4 }, %struct.interp_t { float 5.075000e+01, float 2.450000e+01, i8 50, i8 4, i8 4 }, %struct.interp_t { float 4.550000e+01, float 2.100000e+01, i8 50, i8 4, i8 4 }, %struct.interp_t { float 3.325000e+01, float 1.750000e+01, i8 50, i8 4, i8 4 }, %struct.interp_t { float 2.625000e+01, float 1.400000e+01, i8 50, i8 4, i8 4 }, %struct.interp_t { float -3.000000e+01, float -1.500000e+01, i8 50, i8 4, i8 4 }, %struct.interp_t { float -3.000000e+01, float -1.500000e+01, i8 50, i8 4, i8 4 }, %struct.interp_t { float -3.000000e+01, float -1.500000e+01, i8 50, i8 4, i8 4 }, %struct.interp_t { float 6.200000e+01, float 3.100000e+01, i8 50, i8 0, i8 0 }, %struct.interp_t { float 1.600000e+01, float 8.000000e+00, i8 50, i8 0, i8 0 }, %struct.interp_t { float 0.000000e+00, float 0.000000e+00, i8 50, i8 0, i8 0 }, %struct.interp_t { float 0.000000e+00, float 0.000000e+00, i8 50, i8 0, i8 0 }] }, %struct.Elm_s { ptr @.str.83.176, i8 2, i8 15, i8 15, i8 65, ptr @.str.76, ptr @.str.76, i64 285229060, [19 x %struct.interp_t] [%struct.interp_t { float 2.700000e+02, float 1.350000e+02, i8 50, i8 0, i8 0 }, %struct.interp_t { float 7.900000e+02, float 4.100000e+02, i8 50, i8 4, i8 4 }, %struct.interp_t { float 8.800000e+02, float 4.700000e+02, i8 50, i8 4, i8 4 }, %struct.interp_t { float 2.500000e+03, float 1.220000e+03, i8 50, i8 4, i8 4 }, %struct.interp_t { float 6.000000e+01, float 3.000000e+01, i8 50, i8 4, i8 4 }, %struct.interp_t { float 9.000000e+01, float 4.500000e+01, i8 50, i8 4, i8 4 }, %struct.interp_t { float 1.500000e+02, float 7.500000e+01, i8 50, i8 4, i8 4 }, %struct.interp_t { float -3.000000e+01, float 0.000000e+00, i8 100, i8 4, i8 4 }, %struct.interp_t { float 5.075000e+01, float 2.450000e+01, i8 50, i8 4, i8 4 }, %struct.interp_t { float 4.900000e+01, float 2.450000e+01, i8 50, i8 4, i8 4 }, %struct.interp_t { float 2.975000e+01, float 1.400000e+01, i8 50, i8 4, i8 4 }, %struct.interp_t { float 2.275000e+01, float 1.050000e+01, i8 50, i8 4, i8 4 }, %struct.interp_t { float -3.000000e+01, float -1.500000e+01, i8 50, i8 4, i8 4 }, %struct.interp_t { float -3.000000e+01, float -1.500000e+01, i8 50, i8 4, i8 4 }, %struct.interp_t { float -3.000000e+01, float -1.500000e+01, i8 50, i8 4, i8 4 }, %struct.interp_t { float 6.200000e+01, float 3.100000e+01, i8 50, i8 0, i8 0 }, %struct.interp_t { float 1.600000e+01, float 8.000000e+00, i8 50, i8 0, i8 0 }, %struct.interp_t { float 0.000000e+00, float 0.000000e+00, i8 50, i8 0, i8 0 }, %struct.interp_t { float 0.000000e+00, float 0.000000e+00, i8 50, i8 0, i8 0 }] }, %struct.Elm_s { ptr @.str.84, i8 2, i8 16, i8 10, i8 -115, ptr @.str.72.173, ptr @.str.72.173, i64 268967940, [19 x %struct.interp_t] [%struct.interp_t { float 2.700000e+02, float 1.350000e+02, i8 50, i8 0, i8 0 }, %struct.interp_t { float 4.900000e+02, float 2.300000e+02, i8 50, i8 4, i8 4 }, %struct.interp_t { float 8.200000e+02, float 4.700000e+02, i8 50, i8 4, i8 4 }, %struct.interp_t { float 2.500000e+03, float 1.220000e+03, i8 50, i8 4, i8 4 }, %struct.interp_t { float 6.000000e+01, float 3.000000e+01, i8 50, i8 4, i8 4 }, %struct.interp_t { float 9.000000e+01, float 4.500000e+01, i8 50, i8 4, i8 4 }, %struct.interp_t { float 1.500000e+02, float 7.500000e+01, i8 50, i8 4, i8 4 }, %struct.interp_t { float -3.000000e+01, float 0.000000e+00, i8 100, i8 4, i8 4 }, %struct.interp_t { float 5.075000e+01, float 2.450000e+01, i8 50, i8 4, i8 4 }, %struct.interp_t { float 4.550000e+01, float 2.100000e+01, i8 50, i8 4, i8 4 }, %struct.interp_t { float 2.275000e+01, float 1.050000e+01, i8 50, i8 4, i8 4 }, %struct.interp_t { float 1.750000e+01, float 7.000000e+00, i8 50, i8 4, i8 4 }, %struct.interp_t { float -3.000000e+01, float -1.500000e+01, i8 50, i8 4, i8 4 }, %struct.interp_t { float -3.000000e+01, float -1.500000e+01, i8 50, i8 4, i8 4 }, %struct.interp_t { float -3.000000e+01, float -1.500000e+01, i8 50, i8 4, i8 4 }, %struct.interp_t { float 6.200000e+01, float 3.100000e+01, i8 50, i8 0, i8 0 }, %struct.interp_t { float 1.600000e+01, float 8.000000e+00, i8 50, i8 0, i8 0 }, %struct.interp_t { float 0.000000e+00, float 0.000000e+00, i8 50, i8 0, i8 0 }, %struct.interp_t { float 0.000000e+00, float 0.000000e+00, i8 50, i8 0, i8 0 }] }, %struct.Elm_s { ptr @.str.85, i8 2, i8 14, i8 9, i8 117, ptr @.str.86, ptr @.str.86, i64 268960260, [19 x %struct.interp_t] [%struct.interp_t { float 2.700000e+02, float 1.350000e+02, i8 50, i8 0, i8 0 }, %struct.interp_t { float 2.500000e+02, float 1.100000e+02, i8 50, i8 4, i8 4 }, %struct.interp_t { float 8.800000e+02, float 4.700000e+02, i8 50, i8 4, i8 4 }, %struct.interp_t { float 2.200000e+03, float 1.100000e+03, i8 50, i8 4, i8 4 }, %struct.interp_t { float 6.000000e+01, float 3.000000e+01, i8 50, i8 4, i8 4 }, %struct.interp_t { float 9.000000e+01, float 4.500000e+01, i8 50, i8 4, i8 4 }, %struct.interp_t { float 1.500000e+02, float 7.500000e+01, i8 50, i8 4, i8 4 }, %struct.interp_t { float -3.000000e+01, float 0.000000e+00, i8 100, i8 4, i8 4 }, %struct.interp_t { float 5.075000e+01, float 2.450000e+01, i8 50, i8 4, i8 4 }, %struct.interp_t { float 3.850000e+01, float 1.750000e+01, i8 50, i8 4, i8 4 }, %struct.interp_t { float 1.750000e+01, float 7.000000e+00, i8 50, i8 4, i8 4 }, %struct.interp_t { float 1.050000e+01, float 3.500000e+00, i8 50, i8 4, i8 4 }, %struct.interp_t { float -3.000000e+01, float -1.500000e+01, i8 50, i8 4, i8 4 }, %struct.interp_t { float -3.000000e+01, float -1.500000e+01, i8 50, i8 4, i8 4 }, %struct.interp_t { float -3.000000e+01, float -1.500000e+01, i8 50, i8 4, i8 4 }, %struct.interp_t { float 6.200000e+01, float 3.100000e+01, i8 50, i8 0, i8 0 }, %struct.interp_t { float 1.600000e+01, float 8.000000e+00, i8 50, i8 0, i8 0 }, %struct.interp_t { float 0.000000e+00, float 0.000000e+00, i8 50, i8 0, i8 0 }, %struct.interp_t { float 0.000000e+00, float 0.000000e+00, i8 50, i8 0, i8 0 }] }, %struct.Elm_s { ptr @.str.87, i8 2, i8 9, i8 6, i8 69, ptr @.str.68.169, ptr @.str.67.168, i64 285220928, [19 x %struct.interp_t] [%struct.interp_t { float 2.700000e+02, float 1.350000e+02, i8 50, i8 0, i8 0 }, %struct.interp_t { float 6.400000e+02, float 2.900000e+02, i8 50, i8 5, i8 5 }, %struct.interp_t { float 1.600000e+03, float 8.300000e+02, i8 50, i8 5, i8 5 }, %struct.interp_t { float 2.500000e+03, float 1.220000e+03, i8 50, i8 5, i8 5 }, %struct.interp_t { float 6.000000e+01, float 3.000000e+01, i8 50, i8 5, i8 5 }, %struct.interp_t { float 9.000000e+01, float 4.500000e+01, i8 50, i8 5, i8 5 }, %struct.interp_t { float 1.500000e+02, float 7.500000e+01, i8 50, i8 5, i8 5 }, %struct.interp_t { float -3.000000e+01, float 0.000000e+00, i8 100, i8 5, i8 5 }, %struct.interp_t { float 5.075000e+01, float 2.450000e+01, i8 50, i8 5, i8 5 }, %struct.interp_t { float 4.550000e+01, float 2.100000e+01, i8 50, i8 5, i8 5 }, %struct.interp_t { float 3.500000e+01, float 1.750000e+01, i8 50, i8 5, i8 5 }, %struct.interp_t { float 2.975000e+01, float 1.400000e+01, i8 50, i8 5, i8 5 }, %struct.interp_t { float -3.000000e+01, float -1.500000e+01, i8 50, i8 5, i8 5 }, %struct.interp_t { float -3.000000e+01, float -1.500000e+01, i8 50, i8 5, i8 5 }, %struct.interp_t { float -3.000000e+01, float -1.500000e+01, i8 50, i8 5, i8 5 }, %struct.interp_t { float 6.200000e+01, float 3.100000e+01, i8 50, i8 0, i8 0 }, %struct.interp_t { float 1.600000e+01, float 8.000000e+00, i8 50, i8 0, i8 0 }, %struct.interp_t { float 0.000000e+00, float 0.000000e+00, i8 50, i8 0, i8 0 }, %struct.interp_t { float 0.000000e+00, float 0.000000e+00, i8 50, i8 0, i8 0 }] }, %struct.Elm_s { ptr @.str.88, i8 2, i8 9, i8 6, i8 97, ptr @.str.89, ptr @.str.89, i64 285229072, [19 x %struct.interp_t] [%struct.interp_t { float 2.700000e+02, float 1.350000e+02, i8 50, i8 0, i8 0 }, %struct.interp_t { float 7.900000e+02, float 4.100000e+02, i8 50, i8 5, i8 5 }, %struct.interp_t { float 8.800000e+02, float 4.700000e+02, i8 50, i8 5, i8 5 }, %struct.interp_t { float 2.500000e+03, float 1.220000e+03, i8 50, i8 5, i8 5 }, %struct.interp_t { float 6.000000e+01, float 3.000000e+01, i8 50, i8 5, i8 5 }, %struct.interp_t { float 9.000000e+01, float 4.500000e+01, i8 50, i8 5, i8 5 }, %struct.interp_t { float 1.500000e+02, float 7.500000e+01, i8 50, i8 5, i8 5 }, %struct.interp_t { float -3.000000e+01, float 0.000000e+00, i8 100, i8 5, i8 5 }, %struct.interp_t { float 5.075000e+01, float 2.450000e+01, i8 50, i8 5, i8 5 }, %struct.interp_t { float 4.900000e+01, float 2.450000e+01, i8 50, i8 5, i8 5 }, %struct.interp_t { float 2.975000e+01, float 1.400000e+01, i8 50, i8 5, i8 5 }, %struct.interp_t { float 2.275000e+01, float 1.050000e+01, i8 50, i8 5, i8 5 }, %struct.interp_t { float -3.000000e+01, float -1.500000e+01, i8 50, i8 5, i8 5 }, %struct.interp_t { float -3.000000e+01, float -1.500000e+01, i8 50, i8 5, i8 5 }, %struct.interp_t { float -3.000000e+01, float -1.500000e+01, i8 50, i8 5, i8 5 }, %struct.interp_t { float 6.200000e+01, float 3.100000e+01, i8 50, i8 0, i8 0 }, %struct.interp_t { float 1.600000e+01, float 8.000000e+00, i8 50, i8 0, i8 0 }, %struct.interp_t { float 0.000000e+00, float 0.000000e+00, i8 50, i8 0, i8 0 }, %struct.interp_t { float 0.000000e+00, float 0.000000e+00, i8 50, i8 0, i8 0 }] }, %struct.Elm_s { ptr @.str.90, i8 2, i8 9, i8 6, i8 111, ptr @.str.91, ptr @.str.91, i64 277348356, [19 x %struct.interp_t] [%struct.interp_t { float 2.700000e+02, float 1.350000e+02, i8 50, i8 0, i8 0 }, %struct.interp_t { float 4.900000e+02, float 2.300000e+02, i8 50, i8 5, i8 5 }, %struct.interp_t { float 8.200000e+02, float 3.500000e+02, i8 50, i8 5, i8 5 }, %struct.interp_t { float 2.500000e+03, float 1.220000e+03, i8 50, i8 5, i8 5 }, %struct.interp_t { float 6.000000e+01, float 3.000000e+01, i8 50, i8 5, i8 5 }, %struct.interp_t { float 9.000000e+01, float 4.500000e+01, i8 50, i8 5, i8 5 }, %struct.interp_t { float 1.500000e+02, float 7.500000e+01, i8 50, i8 5, i8 5 }, %struct.interp_t { float -3.000000e+01, float 0.000000e+00, i8 100, i8 5, i8 5 }, %struct.interp_t { float 5.075000e+01, float 2.450000e+01, i8 50, i8 5, i8 5 }, %struct.interp_t { float 4.550000e+01, float 2.100000e+01, i8 50, i8 5, i8 5 }, %struct.interp_t { float 2.275000e+01, float 1.050000e+01, i8 50, i8 5, i8 5 }, %struct.interp_t { float 1.750000e+01, float 7.000000e+00, i8 50, i8 5, i8 5 }, %struct.interp_t { float -3.000000e+01, float -1.500000e+01, i8 50, i8 5, i8 5 }, %struct.interp_t { float -3.000000e+01, float -1.500000e+01, i8 50, i8 5, i8 5 }, %struct.interp_t { float -3.000000e+01, float -1.500000e+01, i8 50, i8 5, i8 5 }, %struct.interp_t { float 6.200000e+01, float 3.100000e+01, i8 50, i8 0, i8 0 }, %struct.interp_t { float 1.600000e+01, float 8.000000e+00, i8 50, i8 0, i8 0 }, %struct.interp_t { float 0.000000e+00, float 0.000000e+00, i8 50, i8 0, i8 0 }, %struct.interp_t { float 0.000000e+00, float 0.000000e+00, i8 50, i8 0, i8 0 }] }, %struct.Elm_s { ptr @.str.92, i8 2, i8 9, i8 6, i8 97, ptr @.str.89, ptr @.str.89, i64 285229072, [19 x %struct.interp_t] [%struct.interp_t { float 2.700000e+02, float 1.350000e+02, i8 50, i8 0, i8 0 }, %struct.interp_t { float 7.900000e+02, float 4.100000e+02, i8 50, i8 5, i8 5 }, %struct.interp_t { float 1.300000e+03, float 5.900000e+02, i8 50, i8 5, i8 5 }, %struct.interp_t { float 2.500000e+03, float 1.220000e+03, i8 50, i8 5, i8 5 }, %struct.interp_t { float 6.000000e+01, float 3.000000e+01, i8 50, i8 5, i8 5 }, %struct.interp_t { float 9.000000e+01, float 4.500000e+01, i8 50, i8 5, i8 5 }, %struct.interp_t { float 1.500000e+02, float 7.500000e+01, i8 50, i8 5, i8 5 }, %struct.interp_t { float -3.000000e+01, float 0.000000e+00, i8 100, i8 5, i8 5 }, %struct.interp_t { float 5.075000e+01, float 2.450000e+01, i8 50, i8 5, i8 5 }, %struct.interp_t { float 4.725000e+01, float 2.450000e+01, i8 50, i8 5, i8 5 }, %struct.interp_t { float 3.500000e+01, float 1.750000e+01, i8 50, i8 5, i8 5 }, %struct.interp_t { float 2.800000e+01, float 1.400000e+01, i8 50, i8 5, i8 5 }, %struct.interp_t { float -3.000000e+01, float -1.500000e+01, i8 50, i8 5, i8 5 }, %struct.interp_t { float -3.000000e+01, float -1.500000e+01, i8 50, i8 5, i8 5 }, %struct.interp_t { float -3.000000e+01, float -1.500000e+01, i8 50, i8 5, i8 5 }, %struct.interp_t { float 6.200000e+01, float 3.100000e+01, i8 50, i8 0, i8 0 }, %struct.interp_t { float 1.600000e+01, float 8.000000e+00, i8 50, i8 0, i8 0 }, %struct.interp_t { float 0.000000e+00, float 0.000000e+00, i8 50, i8 0, i8 0 }, %struct.interp_t { float 0.000000e+00, float 0.000000e+00, i8 50, i8 0, i8 0 }] }, %struct.Elm_s { ptr @.str.93, i8 2, i8 8, i8 6, i8 85, ptr @.str.71.172, ptr @.str.71.172, i64 271056900, [19 x %struct.interp_t] [%struct.interp_t { float 2.700000e+02, float 1.350000e+02, i8 50, i8 0, i8 0 }, %struct.interp_t { float 3.700000e+02, float 1.700000e+02, i8 50, i8 4, i8 4 }, %struct.interp_t { float 1.000000e+03, float 4.700000e+02, i8 50, i8 4, i8 4 }, %struct.interp_t { float 2.500000e+03, float 1.220000e+03, i8 50, i8 4, i8 4 }, %struct.interp_t { float 6.000000e+01, float 3.000000e+01, i8 50, i8 4, i8 4 }, %struct.interp_t { float 9.000000e+01, float 4.500000e+01, i8 50, i8 4, i8 4 }, %struct.interp_t { float 1.500000e+02, float 7.500000e+01, i8 50, i8 4, i8 4 }, %struct.interp_t { float -3.000000e+01, float 0.000000e+00, i8 100, i8 4, i8 4 }, %struct.interp_t { float 5.075000e+01, float 2.450000e+01, i8 50, i8 4, i8 4 }, %struct.interp_t { float 4.200000e+01, float 2.100000e+01, i8 50, i8 4, i8 4 }, %struct.interp_t { float 2.800000e+01, float 1.400000e+01, i8 50, i8 4, i8 4 }, %struct.interp_t { float 2.275000e+01, float 1.050000e+01, i8 50, i8 4, i8 4 }, %struct.interp_t { float -3.000000e+01, float -1.500000e+01, i8 50, i8 4, i8 4 }, %struct.interp_t { float -3.000000e+01, float -1.500000e+01, i8 50, i8 4, i8 4 }, %struct.interp_t { float -3.000000e+01, float -1.500000e+01, i8 50, i8 4, i8 4 }, %struct.interp_t { float 6.200000e+01, float 3.100000e+01, i8 50, i8 0, i8 0 }, %struct.interp_t { float 1.600000e+01, float 8.000000e+00, i8 50, i8 0, i8 0 }, %struct.interp_t { float 0.000000e+00, float 0.000000e+00, i8 50, i8 0, i8 0 }, %struct.interp_t { float 0.000000e+00, float 0.000000e+00, i8 50, i8 0, i8 0 }] }, %struct.Elm_s { ptr @.str.94, i8 2, i8 9, i8 6, i8 -85, ptr @.str.77, ptr @.str.77, i64 285245456, [19 x %struct.interp_t] [%struct.interp_t { float 2.700000e+02, float 1.350000e+02, i8 50, i8 0, i8 0 }, %struct.interp_t { float 4.900000e+02, float 2.300000e+02, i8 50, i8 5, i8 5 }, %struct.interp_t { float 1.480000e+03, float 7.100000e+02, i8 50, i8 5, i8 5 }, %struct.interp_t { float 2.500000e+03, float 1.220000e+03, i8 50, i8 5, i8 5 }, %struct.interp_t { float 6.000000e+01, float 3.000000e+01, i8 50, i8 5, i8 5 }, %struct.interp_t { float 9.000000e+01, float 4.500000e+01, i8 50, i8 5, i8 5 }, %struct.interp_t { float 1.500000e+02, float 7.500000e+01, i8 50, i8 5, i8 5 }, %struct.interp_t { float -3.000000e+01, float 0.000000e+00, i8 100, i8 5, i8 5 }, %struct.interp_t { float 5.075000e+01, float 2.450000e+01, i8 50, i8 5, i8 5 }, %struct.interp_t { float 5.075000e+01, float 2.450000e+01, i8 50, i8 5, i8 5 }, %struct.interp_t { float 3.325000e+01, float 1.750000e+01, i8 50, i8 5, i8 5 }, %struct.interp_t { float 2.625000e+01, float 1.400000e+01, i8 50, i8 5, i8 5 }, %struct.interp_t { float -3.000000e+01, float -1.500000e+01, i8 50, i8 5, i8 5 }, %struct.interp_t { float -3.000000e+01, float -1.500000e+01, i8 50, i8 5, i8 5 }, %struct.interp_t { float -3.000000e+01, float -1.500000e+01, i8 50, i8 5, i8 5 }, %struct.interp_t { float 6.200000e+01, float 3.100000e+01, i8 50, i8 0, i8 0 }, %struct.interp_t { float 1.600000e+01, float 8.000000e+00, i8 50, i8 0, i8 0 }, %struct.interp_t { float 0.000000e+00, float 0.000000e+00, i8 50, i8 0, i8 0 }, %struct.interp_t { float 0.000000e+00, float 0.000000e+00, i8 50, i8 0, i8 0 }] }, %struct.Elm_s { ptr @.str.95, i8 2, i8 9, i8 6, i8 73, ptr @.str.66.167, ptr @.str.66.167, i64 287309888, [19 x %struct.interp_t] [%struct.interp_t { float 2.700000e+02, float 1.350000e+02, i8 50, i8 0, i8 0 }, %struct.interp_t { float 3.100000e+02, float 1.700000e+02, i8 50, i8 5, i8 5 }, %struct.interp_t { float 2.200000e+03, float 1.070000e+03, i8 50, i8 5, i8 5 }, %struct.interp_t { float 2.920000e+03, float 1.460000e+03, i8 50, i8 5, i8 5 }, %struct.interp_t { float 6.000000e+01, float 3.000000e+01, i8 50, i8 5, i8 5 }, %struct.interp_t { float 9.000000e+01, float 4.500000e+01, i8 50, i8 5, i8 5 }, %struct.interp_t { float 1.500000e+02, float 7.500000e+01, i8 50, i8 5, i8 5 }, %struct.interp_t { float -3.000000e+01, float 0.000000e+00, i8 100, i8 5, i8 5 }, %struct.interp_t { float 5.075000e+01, float 2.450000e+01, i8 50, i8 5, i8 5 }, %struct.interp_t { float 3.500000e+01, float 1.750000e+01, i8 50, i8 5, i8 5 }, %struct.interp_t { float 3.675000e+01, float 1.750000e+01, i8 50, i8 5, i8 5 }, %struct.interp_t { float 3.150000e+01, float 1.400000e+01, i8 50, i8 5, i8 5 }, %struct.interp_t { float -3.000000e+01, float -1.500000e+01, i8 50, i8 5, i8 5 }, %struct.interp_t { float -3.000000e+01, float -1.500000e+01, i8 50, i8 5, i8 5 }, %struct.interp_t { float -3.000000e+01, float -1.500000e+01, i8 50, i8 5, i8 5 }, %struct.interp_t { float 6.200000e+01, float 3.100000e+01, i8 50, i8 0, i8 0 }, %struct.interp_t { float 1.600000e+01, float 8.000000e+00, i8 50, i8 0, i8 0 }, %struct.interp_t { float 0.000000e+00, float 0.000000e+00, i8 50, i8 0, i8 0 }, %struct.interp_t { float 0.000000e+00, float 0.000000e+00, i8 50, i8 0, i8 0 }] }, %struct.Elm_s { ptr @.str.96, i8 2, i8 8, i8 6, i8 81, ptr @.str.77, ptr @.str.77, i64 285229120, [19 x %struct.interp_t] [%struct.interp_t { float 2.700000e+02, float 1.350000e+02, i8 50, i8 0, i8 0 }, %struct.interp_t { float 4.900000e+02, float 2.300000e+02, i8 50, i8 4, i8 4 }, %struct.interp_t { float 1.480000e+03, float 7.100000e+02, i8 50, i8 4, i8 4 }, %struct.interp_t { float 2.500000e+03, float 1.220000e+03, i8 50, i8 4, i8 4 }, %struct.interp_t { float 6.000000e+01, float 3.000000e+01, i8 50, i8 4, i8 4 }, %struct.interp_t { float 9.000000e+01, float 4.500000e+01, i8 50, i8 4, i8 4 }, %struct.interp_t { float 1.500000e+02, float 7.500000e+01, i8 50, i8 4, i8 4 }, %struct.interp_t { float -3.000000e+01, float 0.000000e+00, i8 100, i8 4, i8 4 }, %struct.interp_t { float 5.075000e+01, float 2.450000e+01, i8 50, i8 4, i8 4 }, %struct.interp_t { float 5.075000e+01, float 2.450000e+01, i8 50, i8 4, i8 4 }, %struct.interp_t { float 3.325000e+01, float 1.750000e+01, i8 50, i8 4, i8 4 }, %struct.interp_t { float 2.625000e+01, float 1.400000e+01, i8 50, i8 4, i8 4 }, %struct.interp_t { float -3.000000e+01, float -1.500000e+01, i8 50, i8 4, i8 4 }, %struct.interp_t { float -3.000000e+01, float -1.500000e+01, i8 50, i8 4, i8 4 }, %struct.interp_t { float -3.000000e+01, float -1.500000e+01, i8 50, i8 4, i8 4 }, %struct.interp_t { float 6.200000e+01, float 3.100000e+01, i8 50, i8 0, i8 0 }, %struct.interp_t { float 1.600000e+01, float 8.000000e+00, i8 50, i8 0, i8 0 }, %struct.interp_t { float 0.000000e+00, float 0.000000e+00, i8 50, i8 0, i8 0 }, %struct.interp_t { float 0.000000e+00, float 0.000000e+00, i8 50, i8 0, i8 0 }] }, %struct.Elm_s { ptr @.str.97, i8 2, i8 9, i8 6, i8 69, ptr @.str.68.169, ptr @.str.67.168, i64 285220928, [19 x %struct.interp_t] [%struct.interp_t { float 2.700000e+02, float 1.350000e+02, i8 50, i8 0, i8 0 }, %struct.interp_t { float 6.400000e+02, float 3.500000e+02, i8 50, i8 5, i8 5 }, %struct.interp_t { float 2.020000e+03, float 1.070000e+03, i8 50, i8 5, i8 5 }, %struct.interp_t { float 2.500000e+03, float 1.220000e+03, i8 50, i8 5, i8 5 }, %struct.interp_t { float 6.000000e+01, float 3.000000e+01, i8 50, i8 5, i8 5 }, %struct.interp_t { float 9.000000e+01, float 4.500000e+01, i8 50, i8 5, i8 5 }, %struct.interp_t { float 1.500000e+02, float 7.500000e+01, i8 50, i8 5, i8 5 }, %struct.interp_t { float -3.000000e+01, float 0.000000e+00, i8 100, i8 5, i8 5 }, %struct.interp_t { float 5.075000e+01, float 2.450000e+01, i8 50, i8 5, i8 5 }, %struct.interp_t { float 4.200000e+01, float 2.100000e+01, i8 50, i8 5, i8 5 }, %struct.interp_t { float 3.850000e+01, float 1.750000e+01, i8 50, i8 5, i8 5 }, %struct.interp_t { float 3.150000e+01, float 1.400000e+01, i8 50, i8 5, i8 5 }, %struct.interp_t { float -3.000000e+01, float -1.500000e+01, i8 50, i8 5, i8 5 }, %struct.interp_t { float -3.000000e+01, float -1.500000e+01, i8 50, i8 5, i8 5 }, %struct.interp_t { float -3.000000e+01, float -1.500000e+01, i8 50, i8 5, i8 5 }, %struct.interp_t { float 6.200000e+01, float 3.100000e+01, i8 50, i8 0, i8 0 }, %struct.interp_t { float 1.600000e+01, float 8.000000e+00, i8 50, i8 0, i8 0 }, %struct.interp_t { float 0.000000e+00, float 0.000000e+00, i8 50, i8 0, i8 0 }, %struct.interp_t { float 0.000000e+00, float 0.000000e+00, i8 50, i8 0, i8 0 }] }, %struct.Elm_s { ptr @.str.98, i8 2, i8 9, i8 6, i8 85, ptr @.str.71.172, ptr @.str.71.172, i64 271056900, [19 x %struct.interp_t] [%struct.interp_t { float 2.700000e+02, float 1.350000e+02, i8 50, i8 0, i8 0 }, %struct.interp_t { float 3.700000e+02, float 1.700000e+02, i8 50, i8 5, i8 5 }, %struct.interp_t { float 1.000000e+03, float 4.700000e+02, i8 50, i8 5, i8 5 }, %struct.interp_t { float 2.500000e+03, float 1.220000e+03, i8 50, i8 5, i8 5 }, %struct.interp_t { float 6.000000e+01, float 3.000000e+01, i8 50, i8 5, i8 5 }, %struct.interp_t { float 9.000000e+01, float 4.500000e+01, i8 50, i8 5, i8 5 }, %struct.interp_t { float 1.500000e+02, float 7.500000e+01, i8 50, i8 5, i8 5 }, %struct.interp_t { float -3.000000e+01, float 0.000000e+00, i8 100, i8 5, i8 5 }, %struct.interp_t { float 5.075000e+01, float 2.450000e+01, i8 50, i8 5, i8 5 }, %struct.interp_t { float 4.200000e+01, float 2.100000e+01, i8 50, i8 5, i8 5 }, %struct.interp_t { float 2.800000e+01, float 1.400000e+01, i8 50, i8 5, i8 5 }, %struct.interp_t { float 2.275000e+01, float 7.000000e+00, i8 50, i8 5, i8 5 }, %struct.interp_t { float -3.000000e+01, float -1.500000e+01, i8 50, i8 5, i8 5 }, %struct.interp_t { float -3.000000e+01, float -1.500000e+01, i8 50, i8 5, i8 5 }, %struct.interp_t { float -3.000000e+01, float -1.500000e+01, i8 50, i8 5, i8 5 }, %struct.interp_t { float 6.200000e+01, float 3.100000e+01, i8 50, i8 0, i8 0 }, %struct.interp_t { float 1.600000e+01, float 8.000000e+00, i8 50, i8 0, i8 0 }, %struct.interp_t { float 0.000000e+00, float 0.000000e+00, i8 50, i8 0, i8 0 }, %struct.interp_t { float 0.000000e+00, float 0.000000e+00, i8 50, i8 0, i8 0 }] }, %struct.Elm_s { ptr @.str.99, i8 2, i8 9, i8 6, i8 -115, ptr @.str.72.173, ptr @.str.72.173, i64 268967940, [19 x %struct.interp_t] [%struct.interp_t { float 2.700000e+02, float 1.350000e+02, i8 50, i8 0, i8 0 }, %struct.interp_t { float 4.900000e+02, float 2.300000e+02, i8 50, i8 5, i8 5 }, %struct.interp_t { float 8.200000e+02, float 4.700000e+02, i8 50, i8 5, i8 5 }, %struct.interp_t { float 2.500000e+03, float 1.220000e+03, i8 50, i8 5, i8 5 }, %struct.interp_t { float 6.000000e+01, float 3.000000e+01, i8 50, i8 5, i8 5 }, %struct.interp_t { float 9.000000e+01, float 4.500000e+01, i8 50, i8 5, i8 5 }, %struct.interp_t { float 1.500000e+02, float 7.500000e+01, i8 50, i8 5, i8 5 }, %struct.interp_t { float -3.000000e+01, float 0.000000e+00, i8 100, i8 5, i8 5 }, %struct.interp_t { float 5.075000e+01, float 2.450000e+01, i8 50, i8 5, i8 5 }, %struct.interp_t { float 4.550000e+01, float 2.100000e+01, i8 50, i8 5, i8 5 }, %struct.interp_t { float 2.275000e+01, float 1.050000e+01, i8 50, i8 5, i8 5 }, %struct.interp_t { float 1.750000e+01, float 7.000000e+00, i8 50, i8 5, i8 5 }, %struct.interp_t { float -3.000000e+01, float -1.500000e+01, i8 50, i8 5, i8 5 }, %struct.interp_t { float -3.000000e+01, float -1.500000e+01, i8 50, i8 5, i8 5 }, %struct.interp_t { float -3.000000e+01, float -1.500000e+01, i8 50, i8 5, i8 5 }, %struct.interp_t { float 6.200000e+01, float 3.100000e+01, i8 50, i8 0, i8 0 }, %struct.interp_t { float 1.600000e+01, float 8.000000e+00, i8 50, i8 0, i8 0 }, %struct.interp_t { float 0.000000e+00, float 0.000000e+00, i8 50, i8 0, i8 0 }, %struct.interp_t { float 0.000000e+00, float 0.000000e+00, i8 50, i8 0, i8 0 }] }], align 16
@speed = dso_local global i32 1, align 4
@.str.1.822 = private unnamed_addr constant [23 x i8] c"Ignoring %c in '%.*s'\0A\00", align 1
@.str.2.714 = private unnamed_addr constant [2 x i8] c" \00", align 1
@.str.3.715 = private unnamed_addr constant [2 x i8] c"Q\00", align 1
@.str.4.716 = private unnamed_addr constant [2 x i8] c"p\00", align 1
@.str.5.717 = private unnamed_addr constant [2 x i8] c"P\00", align 1
@.str.6.718 = private unnamed_addr constant [3 x i8] c"PY\00", align 1
@.str.7.719 = private unnamed_addr constant [3 x i8] c"PZ\00", align 1
@.str.8.720 = private unnamed_addr constant [2 x i8] c"t\00", align 1
@.str.9.721 = private unnamed_addr constant [2 x i8] c"T\00", align 1
@.str.10.722 = private unnamed_addr constant [3 x i8] c"TY\00", align 1
@.str.11.723 = private unnamed_addr constant [3 x i8] c"TZ\00", align 1
@.str.12.724 = private unnamed_addr constant [2 x i8] c"k\00", align 1
@.str.13.725 = private unnamed_addr constant [2 x i8] c"K\00", align 1
@.str.14.726 = private unnamed_addr constant [3 x i8] c"KY\00", align 1
@.str.15.727 = private unnamed_addr constant [3 x i8] c"KZ\00", align 1
@.str.16.728 = private unnamed_addr constant [2 x i8] c"b\00", align 1
@.str.17.729 = private unnamed_addr constant [2 x i8] c"B\00", align 1
@.str.18.730 = private unnamed_addr constant [3 x i8] c"BY\00", align 1
@.str.19.731 = private unnamed_addr constant [3 x i8] c"BZ\00", align 1
@.str.20.732 = private unnamed_addr constant [2 x i8] c"d\00", align 1
@.str.21.733 = private unnamed_addr constant [2 x i8] c"D\00", align 1
@.str.22.734 = private unnamed_addr constant [3 x i8] c"DY\00", align 1
@.str.23.735 = private unnamed_addr constant [3 x i8] c"DZ\00", align 1
@.str.24.736 = private unnamed_addr constant [2 x i8] c"g\00", align 1
@.str.25.737 = private unnamed_addr constant [2 x i8] c"G\00", align 1
@.str.26.738 = private unnamed_addr constant [3 x i8] c"GY\00", align 1
@.str.27.739 = private unnamed_addr constant [3 x i8] c"GZ\00", align 1
@.str.28.740 = private unnamed_addr constant [2 x i8] c"m\00", align 1
@.str.29.741 = private unnamed_addr constant [2 x i8] c"M\00", align 1
@.str.30.742 = private unnamed_addr constant [2 x i8] c"n\00", align 1
@.str.31.743 = private unnamed_addr constant [2 x i8] c"N\00", align 1
@.str.32.744 = private unnamed_addr constant [3 x i8] c"NG\00", align 1
@.str.33.745 = private unnamed_addr constant [2 x i8] c"f\00", align 1
@.str.34.746 = private unnamed_addr constant [2 x i8] c"F\00", align 1
@.str.35.747 = private unnamed_addr constant [3 x i8] c"TH\00", align 1
@.str.36.748 = private unnamed_addr constant [2 x i8] c"s\00", align 1
@.str.37.749 = private unnamed_addr constant [2 x i8] c"S\00", align 1
@.str.38.750 = private unnamed_addr constant [3 x i8] c"SH\00", align 1
@.str.39.751 = private unnamed_addr constant [2 x i8] c"h\00", align 1
@.str.40.752 = private unnamed_addr constant [2 x i8] c"H\00", align 1
@.str.41.753 = private unnamed_addr constant [2 x i8] c"v\00", align 1
@.str.42.754 = private unnamed_addr constant [2 x i8] c"V\00", align 1
@.str.43.755 = private unnamed_addr constant [3 x i8] c"QQ\00", align 1
@.str.44.756 = private unnamed_addr constant [3 x i8] c"DH\00", align 1
@.str.45.757 = private unnamed_addr constant [3 x i8] c"DI\00", align 1
@.str.46.758 = private unnamed_addr constant [2 x i8] c"z\00", align 1
@.str.47.759 = private unnamed_addr constant [2 x i8] c"Z\00", align 1
@.str.48.760 = private unnamed_addr constant [3 x i8] c"ZZ\00", align 1
@.str.49.761 = private unnamed_addr constant [3 x i8] c"ZH\00", align 1
@.str.50.762 = private unnamed_addr constant [3 x i8] c"tS\00", align 1
@.str.51.763 = private unnamed_addr constant [3 x i8] c"CH\00", align 1
@.str.52.764 = private unnamed_addr constant [3 x i8] c"CI\00", align 1
@.str.53.765 = private unnamed_addr constant [3 x i8] c"dZ\00", align 1
@.str.54.766 = private unnamed_addr constant [2 x i8] c"J\00", align 1
@.str.55.767 = private unnamed_addr constant [3 x i8] c"JY\00", align 1
@.str.56.768 = private unnamed_addr constant [2 x i8] c"l\00", align 1
@.str.57.769 = private unnamed_addr constant [2 x i8] c"L\00", align 1
@.str.58.770 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.59.771 = private unnamed_addr constant [2 x i8] c"R\00", align 1
@.str.60.772 = private unnamed_addr constant [3 x i8] c"rr\00", align 1
@.str.61.773 = private unnamed_addr constant [3 x i8] c"RX\00", align 1
@.str.62.774 = private unnamed_addr constant [2 x i8] c"w\00", align 1
@.str.63.775 = private unnamed_addr constant [2 x i8] c"W\00", align 1
@.str.64.776 = private unnamed_addr constant [2 x i8] c"x\00", align 1
@.str.65.777 = private unnamed_addr constant [2 x i8] c"X\00", align 1
@.str.66.778 = private unnamed_addr constant [2 x i8] c"%\00", align 1
@.str.67.779 = private unnamed_addr constant [2 x i8] c"j\00", align 1
@.str.68.780 = private unnamed_addr constant [2 x i8] c"Y\00", align 1
@.str.69.781 = private unnamed_addr constant [2 x i8] c"I\00", align 1
@.str.70.782 = private unnamed_addr constant [2 x i8] c"e\00", align 1
@.str.71.783 = private unnamed_addr constant [2 x i8] c"E\00", align 1
@.str.72.784 = private unnamed_addr constant [2 x i8] c"&\00", align 1
@.str.73.785 = private unnamed_addr constant [3 x i8] c"AA\00", align 1
@.str.74.786 = private unnamed_addr constant [2 x i8] c"U\00", align 1
@.str.75.787 = private unnamed_addr constant [2 x i8] c"0\00", align 1
@.str.76.788 = private unnamed_addr constant [2 x i8] c"O\00", align 1
@.str.77.789 = private unnamed_addr constant [3 x i8] c"OO\00", align 1
@.str.78.790 = private unnamed_addr constant [2 x i8] c"@\00", align 1
@.str.79.791 = private unnamed_addr constant [2 x i8] c"A\00", align 1
@.str.80.792 = private unnamed_addr constant [2 x i8] c"i\00", align 1
@.str.81.793 = private unnamed_addr constant [3 x i8] c"EE\00", align 1
@.str.82.794 = private unnamed_addr constant [2 x i8] c"3\00", align 1
@.str.83.795 = private unnamed_addr constant [3 x i8] c"ER\00", align 1
@.str.84.796 = private unnamed_addr constant [3 x i8] c"AR\00", align 1
@.str.85.797 = private unnamed_addr constant [3 x i8] c"AW\00", align 1
@.str.86.798 = private unnamed_addr constant [2 x i8] c"u\00", align 1
@.str.87.799 = private unnamed_addr constant [3 x i8] c"UU\00", align 1
@.str.88.800 = private unnamed_addr constant [2 x i8] c"o\00", align 1
@.str.89.801 = private unnamed_addr constant [3 x i8] c"OI\00", align 1
@.str.90.802 = private unnamed_addr constant [3 x i8] c"eI\00", align 1
@.str.91.803 = private unnamed_addr constant [3 x i8] c"AI\00", align 1
@.str.92.804 = private unnamed_addr constant [3 x i8] c"aI\00", align 1
@.str.93.805 = private unnamed_addr constant [3 x i8] c"IE\00", align 1
@.str.94.806 = private unnamed_addr constant [3 x i8] c"oI\00", align 1
@.str.95.807 = private unnamed_addr constant [3 x i8] c"aU\00", align 1
@.str.96.808 = private unnamed_addr constant [3 x i8] c"OU\00", align 1
@.str.97.809 = private unnamed_addr constant [3 x i8] c"OV\00", align 1
@.str.98.810 = private unnamed_addr constant [3 x i8] c"@U\00", align 1
@.str.99.811 = private unnamed_addr constant [3 x i8] c"OA\00", align 1
@.str.100.812 = private unnamed_addr constant [3 x i8] c"I@\00", align 1
@.str.101.813 = private unnamed_addr constant [3 x i8] c"IA\00", align 1
@.str.102.814 = private unnamed_addr constant [3 x i8] c"IB\00", align 1
@.str.103.815 = private unnamed_addr constant [3 x i8] c"e@\00", align 1
@.str.104.816 = private unnamed_addr constant [4 x i8] c"AIR\00", align 1
@.str.105.817 = private unnamed_addr constant [3 x i8] c"U@\00", align 1
@.str.106.818 = private unnamed_addr constant [4 x i8] c"OOR\00", align 1
@.str.107.819 = private unnamed_addr constant [3 x i8] c"O@\00", align 1
@.str.108.820 = private unnamed_addr constant [3 x i8] c"OR\00", align 1
@.str.109.821 = private unnamed_addr constant [3 x i8] c"oU\00", align 1
@.str.110.823 = private unnamed_addr constant [16 x i8] c"Cannot find %s\0A\00", align 1
@num_Elements = dso_local local_unnamed_addr global i32 69, align 4
@.str.824 = private unnamed_addr constant [14 x i8] c"Revision: 2.0\00", align 1
@.str.825 = private unnamed_addr constant [60 x i8] c"$Id: say.c,v 1.13 1994/11/08 13:30:50 a904209 Exp a904209 $\00", align 1
@say_id = dso_local local_unnamed_addr global ptr @.str.825, align 8
@.str.1.828 = private unnamed_addr constant [4 x i8] c"say\00", align 1
@program = dso_local local_unnamed_addr global ptr @.str.1.828, align 8
@.str.2.829 = private unnamed_addr constant [17 x i8] c"Spelling '%.*s'\0A\00", align 1
@ASCII = dso_local local_unnamed_addr global [129 x ptr] [ptr @.str.1, ptr @.str.2, ptr @.str.2, ptr @.str.2, ptr @.str.2, ptr @.str.2, ptr @.str.2, ptr @.str.2, ptr @.str.2, ptr @.str.2, ptr @.str.2, ptr @.str.2, ptr @.str.2, ptr @.str.2, ptr @.str.2, ptr @.str.2, ptr @.str.2, ptr @.str.2, ptr @.str.2, ptr @.str.2, ptr @.str.2, ptr @.str.2, ptr @.str.2, ptr @.str.2, ptr @.str.2, ptr @.str.2, ptr @.str.2, ptr @.str.2, ptr @.str.2, ptr @.str.2, ptr @.str.2, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.68, ptr @.str.69, ptr @.str.70, ptr @.str.71, ptr @.str.72, ptr null], align 16
@klatt_global = dso_local global %struct.klatt_global_t zeroinitializer, align 8
@.str.3.831 = private unnamed_addr constant [6 x i8] c"%.*s\0A\00", align 1
@file_write = dso_local local_unnamed_addr global ptr null, align 8
@once = internal unnamed_addr global i1 false, align 4
@.str.4.830 = private unnamed_addr constant [6 x i8] c"point\00", align 1
@verbose = internal global i32 0, align 4
@.str.5.833 = private unnamed_addr constant [15 x i8] c"_finfo_dataset\00", align 1
@.str.6.834 = private unnamed_addr constant [3 x i8] c"rt\00", align 1
@.str.7.835 = private unnamed_addr constant [29 x i8] c"\0AError: Can't find dataset!\0A\00", align 1
@.str.8.836 = private unnamed_addr constant [4 x i8] c"%ld\00", align 1
@.str.9.837 = private unnamed_addr constant [5 x i8] c"Misc\00", align 1
@.str.10.838 = private unnamed_addr constant [2 x i8] c"v\00", align 1
@.str.11.839 = private unnamed_addr constant [28 x i8] c"Verbose, show phonetic form\00", align 1
@help_only = dso_local local_unnamed_addr global i32 0, align 4
@.str.12.840 = private unnamed_addr constant [43 x i8] c"Usage: %s [options as above] words to say\0A\00", align 1
@.str.13.841 = private unnamed_addr constant [44 x i8] c"or     %s [options as above] < file-to-say\0A\00", align 1
@.str.14.842 = private unnamed_addr constant [6 x i8] c"(%s)\0A\00", align 1
@Revision = dso_local local_unnamed_addr global ptr @.str.824, align 8
@stdin = external local_unnamed_addr global ptr, align 8
@file_term = dso_local local_unnamed_addr global ptr null, align 8
@dict = dso_local local_unnamed_addr global ptr null, align 8
@dialect = dso_local local_unnamed_addr global ptr @ph_am, align 8
@.str.15.832 = private unnamed_addr constant [17 x i8] c"Guess %p '%.*s'\0A\00", align 1
@.str.843 = private unnamed_addr constant [63 x i8] c"$Id: saynum.c,v 1.13 1994/11/08 13:30:50 a904209 Exp a904209 $\00", align 1
@saynum_id = dso_local local_unnamed_addr global ptr @.str.843, align 8
@.str.1.846 = private unnamed_addr constant [6 x i8] c"minus\00", align 1
@.str.3.847 = private unnamed_addr constant [8 x i8] c"billion\00", align 1
@.str.4.848 = private unnamed_addr constant [4 x i8] c"and\00", align 1
@.str.5.849 = private unnamed_addr constant [8 x i8] c"million\00", align 1
@.str.6.850 = private unnamed_addr constant [9 x i8] c"thousand\00", align 1
@Cardinals = internal unnamed_addr constant [20 x ptr] [ptr @.str.12.860, ptr @.str.13.861, ptr @.str.14.862, ptr @.str.15.863, ptr @.str.16.864, ptr @.str.17.865, ptr @.str.18.866, ptr @.str.19.867, ptr @.str.20.868, ptr @.str.21.869, ptr @.str.22.870, ptr @.str.23.871, ptr @.str.24.872, ptr @.str.25.873, ptr @.str.26.874, ptr @.str.27.875, ptr @.str.28.876, ptr @.str.29.877, ptr @.str.30.878, ptr @.str.31.879], align 16
@.str.7.851 = private unnamed_addr constant [8 x i8] c"hundred\00", align 1
@Twenties = internal unnamed_addr constant [8 x ptr] [ptr @.str.32.852, ptr @.str.33.853, ptr @.str.34.854, ptr @.str.35.855, ptr @.str.36.856, ptr @.str.37.857, ptr @.str.38.858, ptr @.str.39.859], align 16
@.str.8.880 = private unnamed_addr constant [10 x i8] c"billionth\00", align 1
@.str.9.881 = private unnamed_addr constant [10 x i8] c"millionth\00", align 1
@.str.10.882 = private unnamed_addr constant [11 x i8] c"thousandth\00", align 1
@.str.11.883 = private unnamed_addr constant [10 x i8] c"hundredth\00", align 1
@Ord_twenties = internal unnamed_addr constant [8 x ptr] [ptr @.str.40.904, ptr @.str.41.905, ptr @.str.42.906, ptr @.str.43.907, ptr @.str.44.908, ptr @.str.45.909, ptr @.str.46.910, ptr @.str.47.911], align 16
@Ordinals = internal unnamed_addr constant [20 x ptr] [ptr @.str.48.884, ptr @.str.49.885, ptr @.str.50.886, ptr @.str.51.887, ptr @.str.52.888, ptr @.str.53.889, ptr @.str.54.890, ptr @.str.55.891, ptr @.str.56.892, ptr @.str.57.893, ptr @.str.58.894, ptr @.str.59.895, ptr @.str.60.896, ptr @.str.61.897, ptr @.str.62.898, ptr @.str.63.899, ptr @.str.64.900, ptr @.str.65.901, ptr @.str.66.902, ptr @.str.67.903], align 16
@.str.12.860 = private unnamed_addr constant [5 x i8] c"zero\00", align 1
@.str.13.861 = private unnamed_addr constant [4 x i8] c"one\00", align 1
@.str.14.862 = private unnamed_addr constant [4 x i8] c"two\00", align 1
@.str.15.863 = private unnamed_addr constant [6 x i8] c"three\00", align 1
@.str.16.864 = private unnamed_addr constant [5 x i8] c"four\00", align 1
@.str.17.865 = private unnamed_addr constant [5 x i8] c"five\00", align 1
@.str.18.866 = private unnamed_addr constant [4 x i8] c"six\00", align 1
@.str.19.867 = private unnamed_addr constant [6 x i8] c"seven\00", align 1
@.str.20.868 = private unnamed_addr constant [6 x i8] c"eight\00", align 1
@.str.21.869 = private unnamed_addr constant [5 x i8] c"nine\00", align 1
@.str.22.870 = private unnamed_addr constant [4 x i8] c"ten\00", align 1
@.str.23.871 = private unnamed_addr constant [7 x i8] c"eleven\00", align 1
@.str.24.872 = private unnamed_addr constant [7 x i8] c"twelve\00", align 1
@.str.25.873 = private unnamed_addr constant [9 x i8] c"thirteen\00", align 1
@.str.26.874 = private unnamed_addr constant [9 x i8] c"fourteen\00", align 1
@.str.27.875 = private unnamed_addr constant [8 x i8] c"fifteen\00", align 1
@.str.28.876 = private unnamed_addr constant [8 x i8] c"sixteen\00", align 1
@.str.29.877 = private unnamed_addr constant [10 x i8] c"seventeen\00", align 1
@.str.30.878 = private unnamed_addr constant [9 x i8] c"eighteen\00", align 1
@.str.31.879 = private unnamed_addr constant [9 x i8] c"nineteen\00", align 1
@.str.32.852 = private unnamed_addr constant [7 x i8] c"twenty\00", align 1
@.str.33.853 = private unnamed_addr constant [7 x i8] c"thirty\00", align 1
@.str.34.854 = private unnamed_addr constant [6 x i8] c"forty\00", align 1
@.str.35.855 = private unnamed_addr constant [6 x i8] c"fifty\00", align 1
@.str.36.856 = private unnamed_addr constant [6 x i8] c"sixty\00", align 1
@.str.37.857 = private unnamed_addr constant [8 x i8] c"seventy\00", align 1
@.str.38.858 = private unnamed_addr constant [7 x i8] c"eighty\00", align 1
@.str.39.859 = private unnamed_addr constant [7 x i8] c"ninety\00", align 1
@.str.40.904 = private unnamed_addr constant [10 x i8] c"twentieth\00", align 1
@.str.41.905 = private unnamed_addr constant [10 x i8] c"thirtieth\00", align 1
@.str.42.906 = private unnamed_addr constant [9 x i8] c"fortieth\00", align 1
@.str.43.907 = private unnamed_addr constant [9 x i8] c"fiftieth\00", align 1
@.str.44.908 = private unnamed_addr constant [9 x i8] c"sixtieth\00", align 1
@.str.45.909 = private unnamed_addr constant [11 x i8] c"seventieth\00", align 1
@.str.46.910 = private unnamed_addr constant [10 x i8] c"eightieth\00", align 1
@.str.47.911 = private unnamed_addr constant [10 x i8] c"ninetieth\00", align 1
@.str.48.884 = private unnamed_addr constant [7 x i8] c"zeroth\00", align 1
@.str.49.885 = private unnamed_addr constant [6 x i8] c"first\00", align 1
@.str.50.886 = private unnamed_addr constant [7 x i8] c"second\00", align 1
@.str.51.887 = private unnamed_addr constant [6 x i8] c"third\00", align 1
@.str.52.888 = private unnamed_addr constant [7 x i8] c"fourth\00", align 1
@.str.53.889 = private unnamed_addr constant [6 x i8] c"fifth\00", align 1
@.str.54.890 = private unnamed_addr constant [6 x i8] c"sixth\00", align 1
@.str.55.891 = private unnamed_addr constant [8 x i8] c"seventh\00", align 1
@.str.56.892 = private unnamed_addr constant [7 x i8] c"eighth\00", align 1
@.str.57.893 = private unnamed_addr constant [6 x i8] c"ninth\00", align 1
@.str.58.894 = private unnamed_addr constant [6 x i8] c"tenth\00", align 1
@.str.59.895 = private unnamed_addr constant [9 x i8] c"eleventh\00", align 1
@.str.60.896 = private unnamed_addr constant [8 x i8] c"twelfth\00", align 1
@.str.61.897 = private unnamed_addr constant [11 x i8] c"thirteenth\00", align 1
@.str.62.898 = private unnamed_addr constant [11 x i8] c"fourteenth\00", align 1
@.str.63.899 = private unnamed_addr constant [10 x i8] c"fifteenth\00", align 1
@.str.64.900 = private unnamed_addr constant [10 x i8] c"sixteenth\00", align 1
@.str.65.901 = private unnamed_addr constant [12 x i8] c"seventeenth\00", align 1
@.str.66.902 = private unnamed_addr constant [11 x i8] c"eighteenth\00", align 1
@.str.67.903 = private unnamed_addr constant [11 x i8] c"nineteenth\00", align 1
@.str.912 = private unnamed_addr constant [61 x i8] c"$Id: text.c,v 1.13 1994/11/08 13:30:50 a904209 Exp a904209 $\00", align 1
@text_id = dso_local local_unnamed_addr global ptr @.str.912, align 8
@Rules = dso_local local_unnamed_addr global [27 x ptr] [ptr @punct_rules, ptr @A_rules, ptr @B_rules, ptr @C_rules, ptr @D_rules, ptr @E_rules, ptr @F_rules, ptr @G_rules, ptr @H_rules, ptr @I_rules, ptr @J_rules, ptr @K_rules, ptr @L_rules, ptr @M_rules, ptr @N_rules, ptr @O_rules, ptr @P_rules, ptr @Q_rules, ptr @R_rules, ptr @S_rules, ptr @T_rules, ptr @U_rules, ptr @V_rules, ptr @W_rules, ptr @X_rules, ptr @Y_rules, ptr @Z_rules], align 16
@stderr = external local_unnamed_addr global ptr, align 8
@.str.1.915 = private unnamed_addr constant [42 x i8] c"Error: Can't find rule for: '%c' in \22%s\22\0A\00", align 1
@.str.2.917 = private unnamed_addr constant [29 x i8] c"Bad char in left rule: '%c'\0A\00", align 1
@.str.3.916 = private unnamed_addr constant [29 x i8] c"Bad char in right rule:'%c'\0A\00", align 1
@.str.918 = private unnamed_addr constant [61 x i8] c"$Id: trie.c,v 1.13 1994/11/08 13:30:50 a904209 Exp a904209 $\00", align 1
@trie_id = dso_local local_unnamed_addr global ptr @.str.918, align 8

; Function Attrs: nofree nounwind uwtable
define dso_local void @au_header(i32 noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef readonly %4) local_unnamed_addr #0 {
  %6 = alloca i8, align 1
  %7 = alloca i8, align 1
  %8 = alloca i8, align 1
  %9 = alloca i8, align 1
  %10 = alloca i8, align 1
  %11 = alloca i8, align 1
  %12 = icmp eq ptr %4, null
  br label %13

13:                                               ; preds = %13, %5
  %14 = phi i64 [ 24, %5 ], [ %18, %13 ]
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %11) #26
  %15 = lshr i64 779316836, %14
  %16 = trunc i64 %15 to i8
  store i8 %16, ptr %11, align 1, !tbaa !7
  %17 = call i64 @write(i32 noundef %0, ptr noundef nonnull %11, i64 noundef 1) #26
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %11) #26
  %18 = add nsw i64 %14, -8
  %19 = icmp eq i64 %14, 0
  br i1 %19, label %20, label %13, !llvm.loop !10

20:                                               ; preds = %13
  %21 = select i1 %12, ptr @.str.73, ptr %4
  %22 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %21) #27
  %23 = add i64 %22, 24
  br label %24

24:                                               ; preds = %24, %20
  %25 = phi i64 [ 24, %20 ], [ %29, %24 ]
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %10) #26
  %26 = lshr i64 %23, %25
  %27 = trunc i64 %26 to i8
  store i8 %27, ptr %10, align 1, !tbaa !7
  %28 = call i64 @write(i32 noundef %0, ptr noundef nonnull %10, i64 noundef 1) #26
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %10) #26
  %29 = add nsw i64 %25, -8
  %30 = icmp eq i64 %25, 0
  br i1 %30, label %31, label %24, !llvm.loop !10

31:                                               ; preds = %24
  %32 = zext i32 %3 to i64
  br label %33

33:                                               ; preds = %33, %31
  %34 = phi i64 [ 24, %31 ], [ %38, %33 ]
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %9) #26
  %35 = lshr i64 %32, %34
  %36 = trunc i64 %35 to i8
  store i8 %36, ptr %9, align 1, !tbaa !7
  %37 = call i64 @write(i32 noundef %0, ptr noundef nonnull %9, i64 noundef 1) #26
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %9) #26
  %38 = add nsw i64 %34, -8
  %39 = icmp eq i64 %34, 0
  br i1 %39, label %40, label %33, !llvm.loop !10

40:                                               ; preds = %33
  %41 = zext i32 %1 to i64
  br label %42

42:                                               ; preds = %42, %40
  %43 = phi i64 [ 24, %40 ], [ %47, %42 ]
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %8) #26
  %44 = lshr i64 %41, %43
  %45 = trunc i64 %44 to i8
  store i8 %45, ptr %8, align 1, !tbaa !7
  %46 = call i64 @write(i32 noundef %0, ptr noundef nonnull %8, i64 noundef 1) #26
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %8) #26
  %47 = add nsw i64 %43, -8
  %48 = icmp eq i64 %43, 0
  br i1 %48, label %49, label %42, !llvm.loop !10

49:                                               ; preds = %42
  %50 = zext i32 %2 to i64
  br label %51

51:                                               ; preds = %51, %49
  %52 = phi i64 [ 24, %49 ], [ %56, %51 ]
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %7) #26
  %53 = lshr i64 %50, %52
  %54 = trunc i64 %53 to i8
  store i8 %54, ptr %7, align 1, !tbaa !7
  %55 = call i64 @write(i32 noundef %0, ptr noundef nonnull %7, i64 noundef 1) #26
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %7) #26
  %56 = add nsw i64 %52, -8
  %57 = icmp eq i64 %52, 0
  br i1 %57, label %58, label %51, !llvm.loop !10

58:                                               ; preds = %58, %51
  %59 = phi i64 [ %63, %58 ], [ 24, %51 ]
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %6) #26
  %60 = lshr i64 1, %59
  %61 = trunc i64 %60 to i8
  store i8 %61, ptr %6, align 1, !tbaa !7
  %62 = call i64 @write(i32 noundef %0, ptr noundef nonnull %6, i64 noundef 1) #26
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %6) #26
  %63 = add nsw i64 %59, -8
  %64 = icmp eq i64 %59, 0
  br i1 %64, label %65, label %58, !llvm.loop !10

65:                                               ; preds = %58
  %66 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %21) #27
  %67 = tail call i64 @write(i32 noundef %0, ptr noundef nonnull %21, i64 noundef %66) #26
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nofree
declare noundef i64 @write(i32 noundef, ptr nocapture noundef readonly, i64 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr nocapture noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local i32 @file_init(i32 noundef %0, ptr noundef %1) local_unnamed_addr #4 {
  %3 = tail call i32 (ptr, i32, ptr, ...) @getargs(ptr noundef nonnull @.str.1.74, i32 noundef %0, ptr noundef %1, ptr noundef nonnull @.str.2.75, ptr noundef nonnull @.str.73, ptr noundef nonnull @linear_file, ptr noundef nonnull @.str.3.76, ptr noundef nonnull @.str.4.77, ptr noundef nonnull @.str.73, ptr noundef nonnull @au_file, ptr noundef nonnull @.str.5.78, ptr noundef null) #26
  %4 = load i32, ptr @help_only, align 4, !tbaa !12
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %45

6:                                                ; preds = %2
  %7 = load ptr, ptr @au_file, align 8, !tbaa !14
  %8 = icmp eq ptr %7, null
  br i1 %8, label %26, label %9

9:                                                ; preds = %6
  %10 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %7, ptr noundef nonnull dereferenceable(2) @.str.6.79) #27
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %13

12:                                               ; preds = %9
  store i32 1, ptr @au_fd, align 4, !tbaa !12
  br label %18

13:                                               ; preds = %9
  %14 = tail call i32 (ptr, i32, ...) @open(ptr noundef nonnull %7, i32 noundef 577, i32 noundef 438) #26
  store i32 %14, ptr @au_fd, align 4, !tbaa !12
  %15 = icmp slt i32 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %13
  %17 = load ptr, ptr @au_file, align 8, !tbaa !14
  tail call void @perror(ptr noundef %17) #28
  br label %18

18:                                               ; preds = %16, %13, %12
  %19 = load i32, ptr @au_fd, align 4, !tbaa !12
  %20 = icmp sgt i32 %19, -1
  br i1 %20, label %21, label %26

21:                                               ; preds = %18
  %22 = load i64, ptr @samp_rate, align 8, !tbaa !16
  %23 = icmp sgt i64 %22, 8000
  %24 = select i1 %23, i32 3, i32 1
  store i1 %23, ptr @au_encoding, align 4
  %25 = trunc i64 %22 to i32
  tail call void @au_header(i32 noundef %19, i32 noundef %24, i32 noundef %25, i32 noundef -1, ptr noundef nonnull @.str.73)
  store i32 0, ptr @au_size, align 4, !tbaa !12
  br label %26

26:                                               ; preds = %21, %18, %6
  %27 = load ptr, ptr @linear_file, align 8, !tbaa !14
  %28 = icmp eq ptr %27, null
  br i1 %28, label %38, label %29

29:                                               ; preds = %26
  %30 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %27, ptr noundef nonnull dereferenceable(2) @.str.6.79) #27
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %29
  store i32 1, ptr @linear_fd, align 4, !tbaa !12
  br label %38

33:                                               ; preds = %29
  %34 = tail call i32 (ptr, i32, ...) @open(ptr noundef nonnull %27, i32 noundef 577, i32 noundef 438) #26
  store i32 %34, ptr @linear_fd, align 4, !tbaa !12
  %35 = icmp slt i32 %34, 0
  br i1 %35, label %36, label %38

36:                                               ; preds = %33
  %37 = load ptr, ptr @linear_file, align 8, !tbaa !14
  tail call void @perror(ptr noundef %37) #28
  br label %38

38:                                               ; preds = %36, %33, %32, %26
  %39 = load i32, ptr @au_fd, align 4, !tbaa !12
  %40 = icmp sgt i32 %39, -1
  %41 = load i32, ptr @linear_fd, align 4
  %42 = icmp sgt i32 %41, -1
  %43 = select i1 %40, i1 true, i1 %42
  br i1 %43, label %44, label %45

44:                                               ; preds = %38
  store ptr @aufile_write, ptr @file_write, align 8, !tbaa !14
  store ptr @aufile_term, ptr @file_term, align 8, !tbaa !14
  br label %45

45:                                               ; preds = %44, %38, %2
  ret i32 %3
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #3

; Function Attrs: nofree
declare noundef i32 @open(ptr nocapture noundef readonly, i32 noundef, ...) local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare void @perror(ptr nocapture noundef readonly) local_unnamed_addr #5

; Function Attrs: nounwind uwtable
define internal void @aufile_write(i32 noundef %0, ptr nocapture noundef readonly %1) #4 {
  %3 = icmp sgt i32 %0, 0
  br i1 %3, label %4, label %58

4:                                                ; preds = %2
  %5 = load i32, ptr @linear_fd, align 4, !tbaa !12
  %6 = icmp sgt i32 %5, -1
  br i1 %6, label %7, label %13

7:                                                ; preds = %4
  %8 = shl nuw i32 %0, 1
  %9 = zext i32 %8 to i64
  %10 = tail call i64 @write(i32 noundef %5, ptr noundef %1, i64 noundef %9) #26
  %11 = icmp eq i64 %10, %9
  br i1 %11, label %13, label %12

12:                                               ; preds = %7
  tail call void @perror(ptr noundef nonnull @.str.7.80) #28
  br label %13

13:                                               ; preds = %12, %7, %4
  %14 = load i32, ptr @au_fd, align 4, !tbaa !12
  %15 = icmp sgt i32 %14, -1
  br i1 %15, label %16, label %58

16:                                               ; preds = %13
  %17 = load i1, ptr @au_encoding, align 4
  br i1 %17, label %18, label %27

18:                                               ; preds = %16
  %19 = shl nuw i32 %0, 1
  %20 = zext i32 %19 to i64
  %21 = tail call i64 @write(i32 noundef %14, ptr noundef %1, i64 noundef %20) #26
  %22 = icmp eq i64 %21, %20
  br i1 %22, label %24, label %23

23:                                               ; preds = %18
  tail call void @perror(ptr noundef nonnull @.str.7.80) #28
  br label %58

24:                                               ; preds = %18
  %25 = load i32, ptr @au_size, align 4, !tbaa !12
  %26 = add i32 %25, %19
  store i32 %26, ptr @au_size, align 4, !tbaa !12
  br label %58

27:                                               ; preds = %16
  %28 = zext nneg i32 %0 to i64
  %29 = tail call noalias ptr @malloc(i64 noundef %28) #29
  %30 = icmp eq ptr %29, null
  br i1 %30, label %54, label %31

31:                                               ; preds = %27
  %32 = getelementptr inbounds i8, ptr %29, i64 %28
  %33 = load ptr, ptr @_l2u, align 8, !tbaa !14
  br label %34

34:                                               ; preds = %34, %31
  %35 = phi ptr [ %1, %31 ], [ %37, %34 ]
  %36 = phi ptr [ %29, %31 ], [ %43, %34 ]
  %37 = getelementptr inbounds i16, ptr %35, i64 1
  %38 = load i16, ptr %35, align 2, !tbaa !18
  %39 = ashr i16 %38, 3
  %40 = sext i16 %39 to i64
  %41 = getelementptr inbounds i8, ptr %33, i64 %40
  %42 = load i8, ptr %41, align 1, !tbaa !7
  %43 = getelementptr inbounds i8, ptr %36, i64 1
  store i8 %42, ptr %36, align 1, !tbaa !7
  %44 = icmp ult ptr %43, %32
  br i1 %44, label %34, label %45, !llvm.loop !20

45:                                               ; preds = %34
  %46 = tail call i64 @write(i32 noundef %14, ptr noundef nonnull %29, i64 noundef %28) #26
  %47 = icmp eq i64 %46, %28
  br i1 %47, label %50, label %48

48:                                               ; preds = %45
  %49 = load ptr, ptr @au_file, align 8, !tbaa !14
  tail call void @perror(ptr noundef %49) #28
  br label %53

50:                                               ; preds = %45
  %51 = load i32, ptr @au_size, align 4, !tbaa !12
  %52 = add i32 %51, %0
  store i32 %52, ptr @au_size, align 4, !tbaa !12
  br label %53

53:                                               ; preds = %50, %48
  tail call void @free(ptr noundef %29) #26
  br label %58

54:                                               ; preds = %27
  %55 = load ptr, ptr @stderr, align 8, !tbaa !14
  %56 = load ptr, ptr @program, align 8, !tbaa !14
  %57 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %55, ptr noundef nonnull @.str.8.81, ptr noundef %56) #28
  br label %58

58:                                               ; preds = %54, %53, %24, %23, %13, %2
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @aufile_term() #4 {
  %1 = alloca i8, align 1
  %2 = load i32, ptr @au_fd, align 4, !tbaa !12
  %3 = icmp sgt i32 %2, -1
  br i1 %3, label %4, label %30

4:                                                ; preds = %0
  %5 = tail call i64 @lseek(i32 noundef %2, i64 noundef 0, i32 noundef 1) #26
  %6 = icmp sgt i64 %5, -1
  br i1 %6, label %7, label %24

7:                                                ; preds = %4
  %8 = load i32, ptr @au_fd, align 4, !tbaa !12
  %9 = tail call i32 @ftruncate(i32 noundef %8, i64 noundef %5) #26
  %10 = load i32, ptr @au_fd, align 4, !tbaa !12
  %11 = tail call i64 @lseek(i32 noundef %10, i64 noundef 8, i32 noundef 0) #26
  %12 = icmp eq i64 %11, 8
  br i1 %12, label %13, label %24

13:                                               ; preds = %7
  %14 = load i32, ptr @au_fd, align 4, !tbaa !12
  %15 = load i32, ptr @au_size, align 4, !tbaa !12
  %16 = zext i32 %15 to i64
  br label %17

17:                                               ; preds = %17, %13
  %18 = phi i64 [ 24, %13 ], [ %22, %17 ]
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %1) #26
  %19 = lshr i64 %16, %18
  %20 = trunc i64 %19 to i8
  store i8 %20, ptr %1, align 1, !tbaa !7
  %21 = call i64 @write(i32 noundef %14, ptr noundef nonnull %1, i64 noundef 1) #26
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %1) #26
  %22 = add nsw i64 %18, -8
  %23 = icmp eq i64 %18, 0
  br i1 %23, label %24, label %17, !llvm.loop !10

24:                                               ; preds = %17, %7, %4
  %25 = load i32, ptr @au_fd, align 4, !tbaa !12
  %26 = icmp eq i32 %25, 1
  br i1 %26, label %29, label %27

27:                                               ; preds = %24
  %28 = tail call i32 @close(i32 noundef %25) #26
  br label %29

29:                                               ; preds = %27, %24
  store i32 -1, ptr @au_fd, align 4, !tbaa !12
  br label %30

30:                                               ; preds = %29, %0
  %31 = load i32, ptr @linear_fd, align 4, !tbaa !12
  %32 = icmp sgt i32 %31, -1
  br i1 %32, label %33, label %41

33:                                               ; preds = %30
  %34 = tail call i64 @lseek(i32 noundef %31, i64 noundef 0, i32 noundef 1) #26
  %35 = tail call i32 @ftruncate(i32 noundef %31, i64 noundef %34) #26
  %36 = load i32, ptr @linear_fd, align 4, !tbaa !12
  %37 = icmp eq i32 %36, 1
  br i1 %37, label %40, label %38

38:                                               ; preds = %33
  %39 = tail call i32 @close(i32 noundef %36) #26
  br label %40

40:                                               ; preds = %38, %33
  store i32 -1, ptr @linear_fd, align 4, !tbaa !12
  br label %41

41:                                               ; preds = %40, %30
  ret void
}

; Function Attrs: nounwind
declare i64 @lseek(i32 noundef, i64 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: nounwind
declare i32 @ftruncate(i32 noundef, i64 noundef) local_unnamed_addr #6

declare i32 @close(i32 noundef) local_unnamed_addr #7

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #8

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr nocapture noundef) local_unnamed_addr #9

; Function Attrs: nofree nounwind
declare noundef i32 @fprintf(ptr nocapture noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #5

; Function Attrs: mustprogress nounwind willreturn uwtable
define dso_local void @darray_free(ptr nocapture noundef %0) local_unnamed_addr #10 {
  %2 = load ptr, ptr %0, align 8, !tbaa !21
  %3 = icmp eq ptr %2, null
  br i1 %3, label %5, label %4

4:                                                ; preds = %1
  tail call void @free(ptr noundef %2) #26
  store ptr null, ptr %0, align 8, !tbaa !21
  br label %5

5:                                                ; preds = %4, %1
  %6 = getelementptr inbounds %struct.darray_t, ptr %0, i64 0, i32 2
  store i32 0, ptr %6, align 4, !tbaa !23
  %7 = getelementptr inbounds %struct.darray_t, ptr %0, i64 0, i32 1
  store i32 0, ptr %7, align 8, !tbaa !24
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local ptr @Darray_find(ptr nocapture noundef %0, i32 noundef %1) local_unnamed_addr #4 {
  %3 = getelementptr inbounds %struct.darray_t, ptr %0, i64 0, i32 2
  %4 = load i32, ptr %3, align 4, !tbaa !23
  %5 = icmp ugt i32 %4, %1
  br i1 %5, label %6, label %10

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.darray_t, ptr %0, i64 0, i32 1
  %8 = load i32, ptr %7, align 8, !tbaa !24
  %9 = icmp ugt i32 %8, %1
  br i1 %9, label %54, label %10

10:                                               ; preds = %6, %2
  %11 = getelementptr inbounds %struct.darray_t, ptr %0, i64 0, i32 1
  %12 = load i32, ptr %11, align 8, !tbaa !24
  %13 = getelementptr inbounds %struct.darray_t, ptr %0, i64 0, i32 3
  %14 = load i16, ptr %13, align 8, !tbaa !25
  %15 = zext i16 %14 to i32
  %16 = mul i32 %12, %15
  %17 = icmp eq i16 %14, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %10
  tail call void @abort() #30
  unreachable

19:                                               ; preds = %10
  br i1 %5, label %40, label %20

20:                                               ; preds = %19
  %21 = getelementptr inbounds %struct.darray_t, ptr %0, i64 0, i32 4
  %22 = load i16, ptr %21, align 2, !tbaa !26
  %23 = tail call i16 @llvm.umax.i16(i16 %22, i16 1)
  %24 = zext i16 %23 to i32
  %25 = add i32 %24, %1
  %26 = mul i32 %25, %15
  %27 = zext i32 %26 to i64
  %28 = tail call noalias ptr @malloc(i64 noundef %27) #29
  %29 = icmp eq ptr %28, null
  br i1 %29, label %62, label %30

30:                                               ; preds = %20
  %31 = icmp eq i32 %16, 0
  br i1 %31, label %35, label %32

32:                                               ; preds = %30
  %33 = load ptr, ptr %0, align 8, !tbaa !21
  %34 = zext i32 %16 to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %28, ptr align 1 %33, i64 %34, i1 false)
  br label %35

35:                                               ; preds = %32, %30
  %36 = load ptr, ptr %0, align 8, !tbaa !21
  %37 = icmp eq ptr %36, null
  br i1 %37, label %39, label %38

38:                                               ; preds = %35
  tail call void @free(ptr noundef %36) #26
  br label %39

39:                                               ; preds = %38, %35
  store ptr %28, ptr %0, align 8, !tbaa !21
  store i32 %25, ptr %3, align 4, !tbaa !23
  br label %43

40:                                               ; preds = %19
  %41 = add i32 %1, 1
  %42 = mul i32 %41, %15
  br label %43

43:                                               ; preds = %40, %39
  %44 = phi i32 [ %26, %39 ], [ %42, %40 ]
  %45 = load i32, ptr %11, align 8, !tbaa !24
  %46 = icmp ugt i32 %45, %1
  br i1 %46, label %54, label %47

47:                                               ; preds = %43
  %48 = load ptr, ptr %0, align 8, !tbaa !21
  %49 = zext i32 %16 to i64
  %50 = getelementptr inbounds i8, ptr %48, i64 %49
  %51 = sub i32 %44, %16
  %52 = zext i32 %51 to i64
  tail call void @llvm.memset.p0.i64(ptr align 1 %50, i8 0, i64 %52, i1 false)
  %53 = add i32 %1, 1
  store i32 %53, ptr %11, align 8, !tbaa !24
  br label %54

54:                                               ; preds = %47, %43, %6
  %55 = load ptr, ptr %0, align 8, !tbaa !21
  %56 = getelementptr inbounds %struct.darray_t, ptr %0, i64 0, i32 3
  %57 = load i16, ptr %56, align 8, !tbaa !25
  %58 = zext i16 %57 to i32
  %59 = mul i32 %58, %1
  %60 = zext i32 %59 to i64
  %61 = getelementptr inbounds i8, ptr %55, i64 %60
  br label %62

62:                                               ; preds = %54, %20
  %63 = phi ptr [ %61, %54 ], [ null, %20 ]
  ret ptr %63
}

; Function Attrs: noreturn nounwind
declare void @abort() local_unnamed_addr #11

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.umax.i16(i16, i16) #12

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #13

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #14

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @darray_delete(ptr nocapture noundef %0, i32 noundef %1) local_unnamed_addr #4 {
  %3 = getelementptr inbounds %struct.darray_t, ptr %0, i64 0, i32 2
  %4 = load i32, ptr %3, align 4, !tbaa !23
  %5 = icmp ugt i32 %4, %1
  br i1 %5, label %6, label %18

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.darray_t, ptr %0, i64 0, i32 1
  %8 = load i32, ptr %7, align 8, !tbaa !24
  %9 = icmp ugt i32 %8, %1
  br i1 %9, label %10, label %18

10:                                               ; preds = %6
  %11 = load ptr, ptr %0, align 8, !tbaa !21
  %12 = getelementptr inbounds %struct.darray_t, ptr %0, i64 0, i32 3
  %13 = load i16, ptr %12, align 8, !tbaa !25
  %14 = zext i16 %13 to i32
  %15 = mul i32 %14, %1
  %16 = zext i32 %15 to i64
  %17 = getelementptr inbounds i8, ptr %11, i64 %16
  br label %20

18:                                               ; preds = %6, %2
  %19 = tail call ptr @Darray_find(ptr noundef %0, i32 noundef %1)
  br label %20

20:                                               ; preds = %18, %10
  %21 = phi ptr [ %17, %10 ], [ %19, %18 ]
  %22 = icmp eq ptr %21, null
  br i1 %22, label %50, label %23

23:                                               ; preds = %20
  %24 = getelementptr inbounds %struct.darray_t, ptr %0, i64 0, i32 1
  %25 = load i32, ptr %24, align 8, !tbaa !24
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %49, label %27

27:                                               ; preds = %23
  %28 = add i32 %25, -1
  store i32 %28, ptr %24, align 8, !tbaa !24
  %29 = icmp ugt i32 %28, %1
  br i1 %29, label %30, label %44

30:                                               ; preds = %27
  %31 = getelementptr inbounds %struct.darray_t, ptr %0, i64 0, i32 3
  br label %32

32:                                               ; preds = %32, %30
  %33 = phi ptr [ %21, %30 ], [ %41, %32 ]
  %34 = phi i32 [ %1, %30 ], [ %35, %32 ]
  %35 = add nuw i32 %34, 1
  %36 = load i16, ptr %31, align 8, !tbaa !25
  %37 = zext i16 %36 to i64
  %38 = getelementptr inbounds i8, ptr %33, i64 %37
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %33, ptr align 1 %38, i64 %37, i1 false)
  %39 = load i16, ptr %31, align 8, !tbaa !25
  %40 = zext i16 %39 to i64
  %41 = getelementptr inbounds i8, ptr %33, i64 %40
  %42 = load i32, ptr %24, align 8, !tbaa !24
  %43 = icmp ult i32 %35, %42
  br i1 %43, label %32, label %44, !llvm.loop !27

44:                                               ; preds = %32, %27
  %45 = phi ptr [ %21, %27 ], [ %41, %32 ]
  %46 = getelementptr inbounds %struct.darray_t, ptr %0, i64 0, i32 3
  %47 = load i16, ptr %46, align 8, !tbaa !25
  %48 = zext i16 %47 to i64
  tail call void @llvm.memset.p0.i64(ptr align 1 %45, i8 0, i64 %48, i1 false)
  br label %50

49:                                               ; preds = %23
  tail call void @abort() #30
  unreachable

50:                                               ; preds = %44, %20
  %51 = phi i32 [ 1, %44 ], [ 0, %20 ]
  ret i32 %51
}

; Function Attrs: nounwind uwtable
define dso_local i32 @init_synth(i32 noundef %0, ptr noundef %1) local_unnamed_addr #4 {
  %3 = alloca double, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #26
  store double 1.000000e+01, ptr %3, align 8, !tbaa !28
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #26
  store i32 0, ptr %4, align 4, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #26
  store i32 0, ptr %5, align 4, !tbaa !12
  %6 = load i64, ptr @samp_rate, align 8, !tbaa !16
  store i64 %6, ptr getelementptr inbounds (%struct.klatt_global_t, ptr @klatt_global, i64 0, i32 4), align 8, !tbaa !30
  store i32 1, ptr getelementptr inbounds (%struct.klatt_global_t, ptr @klatt_global, i64 0, i32 1), align 4, !tbaa !32
  store i64 2, ptr getelementptr inbounds (%struct.klatt_global_t, ptr @klatt_global, i64 0, i32 6), align 8, !tbaa !33
  store i32 0, ptr getelementptr inbounds (%struct.klatt_global_t, ptr @klatt_global, i64 0, i32 2), align 8, !tbaa !34
  %7 = call i32 (ptr, i32, ptr, ...) @getargs(ptr noundef nonnull @.str.1.84, i32 noundef %0, ptr noundef %1, ptr noundef nonnull @.str.2.85, ptr noundef null, ptr noundef nonnull getelementptr inbounds (%struct.klatt_global_t, ptr @klatt_global, i64 0, i32 1), ptr noundef nonnull @.str.3.86, ptr noundef nonnull @.str.4.87, ptr noundef null, ptr noundef nonnull %4, ptr noundef nonnull @.str.5.88, ptr noundef nonnull @.str.6.89, ptr noundef nonnull @.str.7.90, ptr noundef nonnull %5, ptr noundef nonnull @.str.8.91, ptr noundef nonnull @.str.9.92, ptr noundef nonnull @.str.7.90, ptr noundef nonnull getelementptr inbounds (%struct.klatt_global_t, ptr @klatt_global, i64 0, i32 2), ptr noundef nonnull @.str.10.93, ptr noundef nonnull @.str.11.94, ptr noundef nonnull @.str.12.95, ptr noundef nonnull %3, ptr noundef nonnull @.str.13.96, ptr noundef nonnull @.str.14.97, ptr noundef nonnull @.str.7.90, ptr noundef nonnull getelementptr inbounds (%struct.klatt_frame_t, ptr @def_pars, i64 0, i32 21), ptr noundef nonnull @.str.15.98, ptr noundef nonnull @.str.16.99, ptr noundef nonnull @.str.7.90, ptr noundef nonnull @def_pars, ptr noundef nonnull @.str.17.100, ptr noundef null) #26
  %8 = load i32, ptr %5, align 4, !tbaa !12
  %9 = icmp sgt i32 %8, 0
  br i1 %9, label %10, label %12

10:                                               ; preds = %2
  store i32 1, ptr @klatt_global, align 8, !tbaa !35
  %11 = zext nneg i32 %8 to i64
  store i64 %11, ptr getelementptr inbounds (%struct.klatt_global_t, ptr @klatt_global, i64 0, i32 5), align 8, !tbaa !36
  br label %13

12:                                               ; preds = %2
  store i32 2, ptr @klatt_global, align 8, !tbaa !35
  br label %13

13:                                               ; preds = %12, %10
  %14 = load i32, ptr %4, align 4, !tbaa !12
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %17, label %16

16:                                               ; preds = %13
  store i64 1, ptr getelementptr inbounds (%struct.klatt_global_t, ptr @klatt_global, i64 0, i32 6), align 8, !tbaa !33
  br label %17

17:                                               ; preds = %16, %13
  %18 = load i64, ptr getelementptr inbounds (%struct.klatt_global_t, ptr @klatt_global, i64 0, i32 4), align 8, !tbaa !30
  %19 = sitofp i64 %18 to double
  %20 = load double, ptr %3, align 8, !tbaa !28
  %21 = fmul double %20, %19
  %22 = fdiv double %21, 1.000000e+03
  %23 = fptosi double %22 to i64
  store i64 %23, ptr getelementptr inbounds (%struct.klatt_global_t, ptr @klatt_global, i64 0, i32 7), align 8, !tbaa !37
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #26
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #26
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #26
  ret i32 %7
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noalias noundef ptr @dict_find(ptr nocapture noundef readnone %0, i32 noundef %1) local_unnamed_addr #15 {
  ret ptr null
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef i32 @dict_init(i32 noundef returned %0, ptr nocapture noundef readnone %1) local_unnamed_addr #15 {
  ret i32 %0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local void @dict_term() local_unnamed_addr #15 {
  ret void
}

; Function Attrs: nofree nounwind uwtable
define dso_local i32 @getargs(ptr noundef %0, i32 noundef %1, ptr nocapture noundef %2, ...) local_unnamed_addr #0 {
  %4 = alloca [1 x %struct.__va_list_tag], align 16
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #26
  %5 = icmp sgt i32 %1, 0
  br i1 %5, label %6, label %270

6:                                                ; preds = %3
  %7 = getelementptr inbounds %struct.__va_list_tag, ptr %4, i64 0, i32 2
  %8 = getelementptr inbounds %struct.__va_list_tag, ptr %4, i64 0, i32 3
  %9 = getelementptr inbounds %struct.__va_list_tag, ptr %4, i64 0, i32 2
  %10 = getelementptr inbounds %struct.__va_list_tag, ptr %4, i64 0, i32 3
  %11 = getelementptr inbounds %struct.__va_list_tag, ptr %4, i64 0, i32 2
  %12 = getelementptr inbounds %struct.__va_list_tag, ptr %4, i64 0, i32 3
  %13 = getelementptr inbounds %struct.__va_list_tag, ptr %4, i64 0, i32 2
  %14 = getelementptr inbounds %struct.__va_list_tag, ptr %4, i64 0, i32 3
  br label %15

15:                                               ; preds = %263, %6
  %16 = phi i32 [ %1, %6 ], [ %266, %263 ]
  %17 = phi i32 [ 0, %6 ], [ %265, %263 ]
  %18 = phi i32 [ 0, %6 ], [ %264, %263 ]
  %19 = sext i32 %17 to i64
  %20 = getelementptr inbounds ptr, ptr %2, i64 %19
  %21 = load ptr, ptr %20, align 8, !tbaa !14
  %22 = getelementptr inbounds i8, ptr %21, i64 1
  %23 = load i8, ptr %22, align 1, !tbaa !7
  %24 = icmp eq i8 %23, 0
  br i1 %24, label %261, label %25

25:                                               ; preds = %15
  %26 = load i8, ptr %21, align 1, !tbaa !7
  %27 = icmp eq i8 %26, 43
  switch i8 %26, label %261 [
    i8 45, label %28
    i8 43, label %28
  ]

28:                                               ; preds = %25, %25
  br label %29

29:                                               ; preds = %231, %28
  %30 = phi i32 [ %237, %231 ], [ 1, %28 ]
  %31 = phi ptr [ %234, %231 ], [ %22, %28 ]
  %32 = phi i32 [ %235, %231 ], [ %18, %28 ]
  %33 = load i8, ptr %31, align 1, !tbaa !7
  %34 = icmp eq i8 %33, 0
  br i1 %34, label %238, label %35

35:                                               ; preds = %29
  call void @llvm.va_start(ptr nonnull %4)
  br label %36

36:                                               ; preds = %225, %35
  %37 = phi i32 [ 0, %35 ], [ %226, %225 ]
  %38 = phi i32 [ %30, %35 ], [ %227, %225 ]
  %39 = phi ptr [ %31, %35 ], [ %228, %225 ]
  %40 = phi i32 [ %32, %35 ], [ %229, %225 ]
  %41 = load i32, ptr %4, align 16
  %42 = icmp ult i32 %41, 41
  br i1 %42, label %43, label %48

43:                                               ; preds = %36
  %44 = load ptr, ptr %8, align 16
  %45 = zext nneg i32 %41 to i64
  %46 = getelementptr i8, ptr %44, i64 %45
  %47 = add nuw nsw i32 %41, 8
  store i32 %47, ptr %4, align 16
  br label %51

48:                                               ; preds = %36
  %49 = load ptr, ptr %7, align 8
  %50 = getelementptr i8, ptr %49, i64 8
  store ptr %50, ptr %7, align 8
  br label %51

51:                                               ; preds = %48, %43
  %52 = phi ptr [ %46, %43 ], [ %49, %48 ]
  %53 = load ptr, ptr %52, align 8
  %54 = icmp eq ptr %53, null
  br i1 %54, label %231, label %55

55:                                               ; preds = %51
  %56 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %53) #27
  %57 = trunc i64 %56 to i32
  %58 = load i32, ptr %4, align 16
  %59 = icmp ult i32 %58, 41
  br i1 %59, label %60, label %65

60:                                               ; preds = %55
  %61 = load ptr, ptr %10, align 16
  %62 = zext nneg i32 %58 to i64
  %63 = getelementptr i8, ptr %61, i64 %62
  %64 = add nuw nsw i32 %58, 8
  store i32 %64, ptr %4, align 16
  br label %68

65:                                               ; preds = %55
  %66 = load ptr, ptr %9, align 8
  %67 = getelementptr i8, ptr %66, i64 8
  store ptr %67, ptr %9, align 8
  br label %68

68:                                               ; preds = %65, %60
  %69 = phi ptr [ %63, %60 ], [ %66, %65 ]
  %70 = load ptr, ptr %69, align 8
  %71 = load i32, ptr %4, align 16
  %72 = icmp ult i32 %71, 41
  br i1 %72, label %73, label %78

73:                                               ; preds = %68
  %74 = load ptr, ptr %12, align 16
  %75 = zext nneg i32 %71 to i64
  %76 = getelementptr i8, ptr %74, i64 %75
  %77 = add nuw nsw i32 %71, 8
  store i32 %77, ptr %4, align 16
  br label %81

78:                                               ; preds = %68
  %79 = load ptr, ptr %11, align 8
  %80 = getelementptr i8, ptr %79, i64 8
  store ptr %80, ptr %11, align 8
  br label %81

81:                                               ; preds = %78, %73
  %82 = phi ptr [ %76, %73 ], [ %79, %78 ]
  %83 = load ptr, ptr %82, align 8
  %84 = load i32, ptr %4, align 16
  %85 = icmp ult i32 %84, 41
  br i1 %85, label %86, label %91

86:                                               ; preds = %81
  %87 = load ptr, ptr %14, align 16
  %88 = zext nneg i32 %84 to i64
  %89 = getelementptr i8, ptr %87, i64 %88
  %90 = add nuw nsw i32 %84, 8
  store i32 %90, ptr %4, align 16
  br label %94

91:                                               ; preds = %81
  %92 = load ptr, ptr %13, align 8
  %93 = getelementptr i8, ptr %92, i64 8
  store ptr %93, ptr %13, align 8
  br label %94

94:                                               ; preds = %91, %86
  %95 = phi ptr [ %89, %86 ], [ %92, %91 ]
  %96 = load ptr, ptr %95, align 8
  %97 = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %39, ptr noundef nonnull dereferenceable(6) @.str.1.447) #27
  %98 = icmp eq i32 %97, 0
  br i1 %98, label %99, label %146

99:                                               ; preds = %94
  store i32 1, ptr @help_only, align 4, !tbaa !12
  %100 = add nsw i32 %40, 1
  %101 = icmp eq i32 %40, 0
  br i1 %101, label %102, label %105

102:                                              ; preds = %99
  %103 = load ptr, ptr @stderr, align 8, !tbaa !14
  %104 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %103, ptr noundef nonnull @.str.2.448, ptr noundef %0) #28
  br label %105

105:                                              ; preds = %102, %99
  %106 = icmp eq ptr %70, null
  br i1 %106, label %140, label %107

107:                                              ; preds = %105
  %108 = call ptr @strchr(ptr noundef nonnull dereferenceable(1) %70, i32 noundef 37) #27
  %109 = icmp eq ptr %108, null
  %110 = load ptr, ptr @stderr, align 8, !tbaa !14
  br i1 %109, label %135, label %111

111:                                              ; preds = %107
  %112 = getelementptr inbounds i8, ptr %108, i64 1
  %113 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %110, ptr noundef nonnull @.str.3.449, ptr noundef nonnull %53, ptr noundef nonnull %112) #28
  %114 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %108) #27
  %115 = getelementptr inbounds i8, ptr %108, i64 %114
  %116 = getelementptr inbounds i8, ptr %115, i64 -1
  %117 = load i8, ptr %116, align 1, !tbaa !7
  switch i8 %117, label %132 [
    i8 101, label %118
    i8 102, label %118
    i8 103, label %118
    i8 117, label %122
    i8 100, label %122
  ]

118:                                              ; preds = %111, %111, %111
  %119 = load ptr, ptr @stderr, align 8, !tbaa !14
  %120 = load double, ptr %83, align 8, !tbaa !28
  %121 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %119, ptr noundef nonnull %70, double noundef %120) #28
  br label %132

122:                                              ; preds = %111, %111
  %123 = load i8, ptr %112, align 1, !tbaa !7
  %124 = icmp eq i8 %123, 108
  %125 = load ptr, ptr @stderr, align 8, !tbaa !14
  br i1 %124, label %126, label %129

126:                                              ; preds = %122
  %127 = load i64, ptr %83, align 8, !tbaa !16
  %128 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %125, ptr noundef nonnull %70, i64 noundef %127) #28
  br label %132

129:                                              ; preds = %122
  %130 = load i32, ptr %83, align 4, !tbaa !12
  %131 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %125, ptr noundef nonnull %70, i32 noundef %130) #28
  br label %132

132:                                              ; preds = %129, %126, %118, %111
  %133 = load ptr, ptr @stderr, align 8, !tbaa !14
  %134 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %133, ptr noundef nonnull @.str.4.450, ptr noundef %96) #28
  br label %225

135:                                              ; preds = %107
  %136 = load ptr, ptr %83, align 8, !tbaa !14
  %137 = icmp eq ptr %136, null
  %138 = select i1 %137, ptr @.str.6.451, ptr %136
  %139 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %110, ptr noundef nonnull @.str.5.452, ptr noundef nonnull %53, ptr noundef nonnull %138, ptr noundef %96) #28
  br label %225

140:                                              ; preds = %105
  %141 = load ptr, ptr @stderr, align 8, !tbaa !14
  %142 = load i32, ptr %83, align 4, !tbaa !12
  %143 = icmp eq i32 %142, 0
  %144 = select i1 %143, ptr @.str.9.453, ptr @.str.8.454
  %145 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %141, ptr noundef nonnull @.str.7.455, ptr noundef nonnull %53, ptr noundef nonnull %144, ptr noundef %96) #28
  br label %225

146:                                              ; preds = %94
  %147 = icmp sgt i32 %57, 1
  br i1 %147, label %148, label %187

148:                                              ; preds = %146
  %149 = icmp eq i32 %37, 0
  br i1 %149, label %150, label %225

150:                                              ; preds = %148
  %151 = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %39, ptr noundef nonnull dereferenceable(1) %53) #27
  %152 = icmp eq i32 %151, 0
  br i1 %152, label %153, label %225

153:                                              ; preds = %150
  %154 = icmp eq ptr %70, null
  br i1 %154, label %177, label %155

155:                                              ; preds = %153
  %156 = add nsw i32 %38, %17
  %157 = icmp slt i32 %156, %16
  br i1 %157, label %158, label %173

158:                                              ; preds = %155
  %159 = add nsw i32 %38, 1
  %160 = sext i32 %156 to i64
  %161 = getelementptr inbounds ptr, ptr %2, i64 %160
  %162 = load ptr, ptr %161, align 8, !tbaa !14
  %163 = call ptr @strchr(ptr noundef nonnull dereferenceable(1) %70, i32 noundef 37) #27
  %164 = icmp eq ptr %163, null
  br i1 %164, label %172, label %165

165:                                              ; preds = %158
  %166 = call i32 (ptr, ptr, ...) @__isoc99_sscanf(ptr noundef %162, ptr noundef nonnull %70, ptr noundef %83) #26
  %167 = icmp eq i32 %166, 1
  br i1 %167, label %183, label %168

168:                                              ; preds = %165
  %169 = load ptr, ptr @stderr, align 8, !tbaa !14
  %170 = load ptr, ptr %2, align 8, !tbaa !14
  %171 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %169, ptr noundef nonnull @.str.10.456, ptr noundef %170, ptr noundef %162, ptr noundef nonnull %53) #28
  br label %183

172:                                              ; preds = %158
  store ptr %162, ptr %83, align 8, !tbaa !14
  br label %183

173:                                              ; preds = %155
  %174 = load ptr, ptr @stderr, align 8, !tbaa !14
  %175 = load ptr, ptr %2, align 8, !tbaa !14
  %176 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %174, ptr noundef nonnull @.str.11.457, ptr noundef %175, ptr noundef nonnull %53) #28
  br label %183

177:                                              ; preds = %153
  br i1 %27, label %178, label %179

178:                                              ; preds = %177
  store i32 1, ptr %83, align 4, !tbaa !12
  br label %183

179:                                              ; preds = %177
  %180 = load i32, ptr %83, align 4, !tbaa !12
  %181 = icmp eq i32 %180, 0
  %182 = zext i1 %181 to i32
  store i32 %182, ptr %83, align 4, !tbaa !12
  br label %183

183:                                              ; preds = %179, %178, %173, %172, %168, %165
  %184 = phi i32 [ %38, %173 ], [ %38, %178 ], [ %38, %179 ], [ %159, %165 ], [ %159, %168 ], [ %159, %172 ]
  %185 = and i64 %56, 4294967295
  %186 = getelementptr inbounds i8, ptr %39, i64 %185
  br label %225

187:                                              ; preds = %146
  %188 = load i8, ptr %39, align 1, !tbaa !7
  %189 = load i8, ptr %53, align 1, !tbaa !7
  %190 = icmp eq i8 %188, %189
  br i1 %190, label %191, label %225

191:                                              ; preds = %187
  %192 = icmp eq ptr %70, null
  br i1 %192, label %215, label %193

193:                                              ; preds = %191
  %194 = add nsw i32 %38, %17
  %195 = icmp slt i32 %194, %16
  br i1 %195, label %196, label %211

196:                                              ; preds = %193
  %197 = add nsw i32 %38, 1
  %198 = sext i32 %194 to i64
  %199 = getelementptr inbounds ptr, ptr %2, i64 %198
  %200 = load ptr, ptr %199, align 8, !tbaa !14
  %201 = call ptr @strchr(ptr noundef nonnull dereferenceable(1) %70, i32 noundef 37) #27
  %202 = icmp eq ptr %201, null
  br i1 %202, label %210, label %203

203:                                              ; preds = %196
  %204 = call i32 (ptr, ptr, ...) @__isoc99_sscanf(ptr noundef %200, ptr noundef nonnull %70, ptr noundef %83) #26
  %205 = icmp eq i32 %204, 1
  br i1 %205, label %221, label %206

206:                                              ; preds = %203
  %207 = load ptr, ptr @stderr, align 8, !tbaa !14
  %208 = load ptr, ptr %2, align 8, !tbaa !14
  %209 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %207, ptr noundef nonnull @.str.10.456, ptr noundef %208, ptr noundef %200, ptr noundef nonnull %53) #28
  br label %221

210:                                              ; preds = %196
  store ptr %200, ptr %83, align 8, !tbaa !14
  br label %221

211:                                              ; preds = %193
  %212 = load ptr, ptr @stderr, align 8, !tbaa !14
  %213 = load ptr, ptr %2, align 8, !tbaa !14
  %214 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %212, ptr noundef nonnull @.str.11.457, ptr noundef %213, ptr noundef nonnull %53) #28
  br label %221

215:                                              ; preds = %191
  br i1 %27, label %216, label %217

216:                                              ; preds = %215
  store i32 1, ptr %83, align 4, !tbaa !12
  br label %221

217:                                              ; preds = %215
  %218 = load i32, ptr %83, align 4, !tbaa !12
  %219 = icmp eq i32 %218, 0
  %220 = zext i1 %219 to i32
  store i32 %220, ptr %83, align 4, !tbaa !12
  br label %221

221:                                              ; preds = %217, %216, %211, %210, %206, %203
  %222 = phi i32 [ %38, %211 ], [ %38, %216 ], [ %38, %217 ], [ %197, %203 ], [ %197, %206 ], [ %197, %210 ]
  %223 = add nsw i32 %37, 1
  %224 = getelementptr inbounds i8, ptr %39, i64 1
  br label %225

225:                                              ; preds = %221, %187, %183, %150, %148, %140, %135, %132
  %226 = phi i32 [ 1, %183 ], [ %223, %221 ], [ %37, %132 ], [ %37, %135 ], [ %37, %150 ], [ %37, %148 ], [ %37, %187 ], [ %37, %140 ]
  %227 = phi i32 [ %184, %183 ], [ %222, %221 ], [ %38, %132 ], [ %38, %135 ], [ %38, %150 ], [ %38, %148 ], [ %38, %187 ], [ %38, %140 ]
  %228 = phi ptr [ %186, %183 ], [ %224, %221 ], [ %39, %132 ], [ %39, %135 ], [ %39, %150 ], [ %39, %148 ], [ %39, %187 ], [ %39, %140 ]
  %229 = phi i32 [ %40, %183 ], [ %40, %221 ], [ %100, %132 ], [ %100, %135 ], [ %40, %150 ], [ %40, %148 ], [ %40, %187 ], [ %100, %140 ]
  %230 = phi i1 [ false, %183 ], [ false, %221 ], [ true, %132 ], [ true, %135 ], [ true, %150 ], [ true, %148 ], [ true, %187 ], [ true, %140 ]
  br i1 %230, label %36, label %231

231:                                              ; preds = %225, %51
  %232 = phi i32 [ %226, %225 ], [ %37, %51 ]
  %233 = phi i32 [ %227, %225 ], [ %38, %51 ]
  %234 = phi ptr [ %228, %225 ], [ %39, %51 ]
  %235 = phi i32 [ %229, %225 ], [ %40, %51 ]
  call void @llvm.va_end(ptr %4)
  %236 = icmp eq i32 %232, 0
  %237 = select i1 %236, i32 0, i32 %233
  br i1 %236, label %238, label %29

238:                                              ; preds = %231, %29
  %239 = phi i32 [ %237, %231 ], [ %30, %29 ]
  %240 = phi i32 [ %235, %231 ], [ %32, %29 ]
  %241 = icmp eq i32 %239, 0
  br i1 %241, label %259, label %242

242:                                              ; preds = %238
  %243 = sub nsw i32 %16, %239
  %244 = icmp sgt i32 %17, %243
  br i1 %244, label %263, label %245

245:                                              ; preds = %242
  %246 = sext i32 %17 to i64
  %247 = sext i32 %239 to i64
  %248 = add i32 %16, 1
  %249 = sub i32 %248, %239
  %250 = getelementptr ptr, ptr %2, i64 %247
  br label %251

251:                                              ; preds = %251, %245
  %252 = phi i64 [ %246, %245 ], [ %256, %251 ]
  %253 = getelementptr ptr, ptr %250, i64 %252
  %254 = load ptr, ptr %253, align 8, !tbaa !14
  %255 = getelementptr inbounds ptr, ptr %2, i64 %252
  store ptr %254, ptr %255, align 8, !tbaa !14
  %256 = add nsw i64 %252, 1
  %257 = trunc i64 %256 to i32
  %258 = icmp eq i32 %249, %257
  br i1 %258, label %263, label %251, !llvm.loop !38

259:                                              ; preds = %238
  %260 = add nsw i32 %17, 1
  br label %263

261:                                              ; preds = %25, %15
  %262 = add nsw i32 %17, 1
  br label %263

263:                                              ; preds = %261, %259, %251, %242
  %264 = phi i32 [ %18, %261 ], [ %240, %259 ], [ %240, %242 ], [ %240, %251 ]
  %265 = phi i32 [ %262, %261 ], [ %260, %259 ], [ %17, %242 ], [ %17, %251 ]
  %266 = phi i32 [ %16, %261 ], [ %16, %259 ], [ %243, %242 ], [ %243, %251 ]
  %267 = icmp slt i32 %265, %266
  br i1 %267, label %15, label %268, !llvm.loop !39

268:                                              ; preds = %263
  %269 = icmp ne i32 %264, 0
  br label %270

270:                                              ; preds = %268, %3
  %271 = phi i1 [ false, %3 ], [ %269, %268 ]
  %272 = phi i32 [ %1, %3 ], [ %266, %268 ]
  %273 = load i32, ptr @help_only, align 4, !tbaa !12
  %274 = icmp ne i32 %273, 0
  %275 = select i1 %274, i1 %271, i1 false
  br i1 %275, label %276, label %279

276:                                              ; preds = %270
  %277 = load ptr, ptr @stderr, align 8, !tbaa !14
  %278 = call i32 @fputc(i32 10, ptr %277)
  br label %279

279:                                              ; preds = %276, %270
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #26
  ret i32 %272
}

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_start(ptr) #16

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare ptr @strchr(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare noundef i32 @__isoc99_sscanf(ptr nocapture noundef readonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_end(ptr) #16

; Function Attrs: nofree nounwind
declare noundef i32 @fputc(i32 noundef, ptr nocapture noundef) local_unnamed_addr #17

; Function Attrs: nounwind uwtable
define dso_local i32 @holmes(i32 noundef %0, ptr nocapture noundef readonly %1, i32 noundef %2, ptr noundef %3) local_unnamed_addr #4 {
  %5 = alloca [19 x %struct.filter_t], align 16
  %6 = alloca %struct.klatt_frame_t, align 8
  %7 = alloca [19 x %struct.slope_t], align 16
  %8 = alloca [19 x %struct.slope_t], align 16
  %9 = alloca [19 x float], align 16
  call void @llvm.lifetime.start.p0(i64 228, ptr nonnull %5) #26
  call void @llvm.lifetime.start.p0(i64 320, ptr nonnull %6) #26
  %10 = load i64, ptr @def_pars, align 8, !tbaa !40
  %11 = sitofp i64 %10 to double
  %12 = fmul double %11, 1.100000e+00
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(320) %6, ptr noundef nonnull align 8 dereferenceable(320) @def_pars, i64 320, i1 false), !tbaa.struct !42
  %13 = load float, ptr getelementptr inbounds ([0 x %struct.Elm_s], ptr @Elements, i64 0, i64 0, i32 8), align 8, !tbaa !43
  %14 = fptosi float %13 to i64
  %15 = getelementptr inbounds %struct.klatt_frame_t, ptr %6, i64 0, i32 16
  store i64 %14, ptr %15, align 8, !tbaa !46
  %16 = getelementptr inbounds %struct.klatt_frame_t, ptr %6, i64 0, i32 3
  store i64 60, ptr %16, align 8, !tbaa !47
  %17 = getelementptr inbounds %struct.klatt_frame_t, ptr %6, i64 0, i32 25
  store i64 60, ptr %17, align 8, !tbaa !48
  %18 = getelementptr inbounds %struct.klatt_frame_t, ptr %6, i64 0, i32 5
  store i64 90, ptr %18, align 8, !tbaa !49
  %19 = getelementptr inbounds %struct.klatt_frame_t, ptr %6, i64 0, i32 27
  store i64 90, ptr %19, align 8, !tbaa !50
  %20 = getelementptr inbounds %struct.klatt_frame_t, ptr %6, i64 0, i32 7
  store i64 150, ptr %20, align 8, !tbaa !51
  %21 = getelementptr inbounds %struct.klatt_frame_t, ptr %6, i64 0, i32 29
  store i64 150, ptr %21, align 8, !tbaa !52
  %22 = load i64, ptr getelementptr inbounds (%struct.klatt_frame_t, ptr @def_pars, i64 0, i32 31), align 8, !tbaa !53
  %23 = getelementptr inbounds %struct.klatt_frame_t, ptr %6, i64 0, i32 31
  store i64 %22, ptr %23, align 8, !tbaa !53
  tail call void @parwave_init(ptr noundef nonnull @klatt_global) #26
  %24 = load double, ptr @frac, align 8, !tbaa !28
  %25 = fptrunc double %24 to float
  %26 = fsub float 1.000000e+00, %25
  br label %65

27:                                               ; preds = %65
  %28 = icmp eq i32 %0, 0
  br i1 %28, label %666, label %29

29:                                               ; preds = %27
  %30 = fptrunc double %12 to float
  %31 = getelementptr inbounds [19 x float], ptr %9, i64 0, i64 15
  %32 = getelementptr inbounds %struct.klatt_frame_t, ptr %6, i64 0, i32 38
  %33 = getelementptr inbounds %struct.klatt_frame_t, ptr %6, i64 0, i32 1
  %34 = getelementptr inbounds [19 x float], ptr %9, i64 0, i64 18
  %35 = getelementptr inbounds %struct.klatt_frame_t, ptr %6, i64 0, i32 22
  %36 = getelementptr inbounds %struct.klatt_frame_t, ptr %6, i64 0, i32 14
  %37 = getelementptr inbounds [19 x float], ptr %9, i64 0, i64 17
  %38 = getelementptr inbounds %struct.klatt_frame_t, ptr %6, i64 0, i32 18
  %39 = getelementptr inbounds [19 x float], ptr %9, i64 0, i64 16
  %40 = getelementptr inbounds %struct.klatt_frame_t, ptr %6, i64 0, i32 20
  %41 = getelementptr inbounds [19 x float], ptr %9, i64 0, i64 4
  %42 = getelementptr inbounds [19 x float], ptr %9, i64 0, i64 5
  %43 = getelementptr inbounds [19 x float], ptr %9, i64 0, i64 6
  %44 = getelementptr inbounds [19 x float], ptr %9, i64 0, i64 1
  %45 = getelementptr inbounds %struct.klatt_frame_t, ptr %6, i64 0, i32 2
  %46 = getelementptr inbounds [19 x float], ptr %9, i64 0, i64 2
  %47 = getelementptr inbounds %struct.klatt_frame_t, ptr %6, i64 0, i32 4
  %48 = getelementptr inbounds [19 x float], ptr %9, i64 0, i64 3
  %49 = getelementptr inbounds %struct.klatt_frame_t, ptr %6, i64 0, i32 6
  %50 = getelementptr inbounds [19 x float], ptr %9, i64 0, i64 14
  %51 = getelementptr inbounds %struct.klatt_frame_t, ptr %6, i64 0, i32 37
  %52 = getelementptr inbounds [19 x float], ptr %9, i64 0, i64 12
  %53 = getelementptr inbounds %struct.klatt_frame_t, ptr %6, i64 0, i32 32
  %54 = getelementptr inbounds [19 x float], ptr %9, i64 0, i64 13
  %55 = getelementptr inbounds %struct.klatt_frame_t, ptr %6, i64 0, i32 34
  %56 = getelementptr inbounds [19 x float], ptr %9, i64 0, i64 8
  %57 = getelementptr inbounds %struct.klatt_frame_t, ptr %6, i64 0, i32 24
  %58 = getelementptr inbounds [19 x float], ptr %9, i64 0, i64 9
  %59 = getelementptr inbounds %struct.klatt_frame_t, ptr %6, i64 0, i32 26
  %60 = getelementptr inbounds [19 x float], ptr %9, i64 0, i64 10
  %61 = getelementptr inbounds %struct.klatt_frame_t, ptr %6, i64 0, i32 28
  %62 = getelementptr inbounds [19 x float], ptr %9, i64 0, i64 11
  %63 = getelementptr inbounds %struct.klatt_frame_t, ptr %6, i64 0, i32 30
  %64 = getelementptr inbounds float, ptr %9, i64 7
  br label %74

65:                                               ; preds = %65, %4
  %66 = phi i64 [ 0, %4 ], [ %72, %65 ]
  %67 = getelementptr inbounds [0 x %struct.Elm_s], ptr @Elements, i64 0, i64 0, i32 8, i64 %66
  %68 = load float, ptr %67, align 4, !tbaa !43
  %69 = getelementptr inbounds [19 x %struct.filter_t], ptr %5, i64 0, i64 %66
  %70 = getelementptr inbounds [19 x %struct.filter_t], ptr %5, i64 0, i64 %66, i32 2
  store float %68, ptr %70, align 4, !tbaa !54
  store float %25, ptr %69, align 4, !tbaa !56
  %71 = getelementptr inbounds [19 x %struct.filter_t], ptr %5, i64 0, i64 %66, i32 1
  store float %26, ptr %71, align 4, !tbaa !57
  %72 = add nuw nsw i64 %66, 1
  %73 = icmp eq i64 %72, 19
  br i1 %73, label %27, label %65, !llvm.loop !58

74:                                               ; preds = %658, %29
  %75 = phi ptr [ %3, %29 ], [ %664, %658 ]
  %76 = phi ptr [ @Elements, %29 ], [ %88, %658 ]
  %77 = phi i32 [ 0, %29 ], [ %93, %658 ]
  %78 = phi i32 [ 0, %29 ], [ %663, %658 ]
  %79 = phi i32 [ 0, %29 ], [ %662, %658 ]
  %80 = phi float [ %30, %29 ], [ %661, %658 ]
  %81 = phi float [ 0.000000e+00, %29 ], [ %660, %658 ]
  %82 = phi float [ undef, %29 ], [ %659, %658 ]
  %83 = add nuw i32 %77, 1
  %84 = zext i32 %77 to i64
  %85 = getelementptr inbounds i8, ptr %1, i64 %84
  %86 = load i8, ptr %85, align 1, !tbaa !7
  %87 = zext i8 %86 to i64
  %88 = getelementptr inbounds [0 x %struct.Elm_s], ptr @Elements, i64 0, i64 %87
  %89 = zext i32 %83 to i64
  %90 = getelementptr inbounds i8, ptr %1, i64 %89
  %91 = load i8, ptr %90, align 1, !tbaa !7
  %92 = zext i8 %91 to i32
  %93 = add i32 %77, 3
  %94 = icmp eq i8 %91, 0
  br i1 %94, label %658, label %95

95:                                               ; preds = %74
  %96 = icmp ult i32 %93, %0
  br i1 %96, label %97, label %103

97:                                               ; preds = %95
  %98 = zext i32 %93 to i64
  %99 = getelementptr inbounds i8, ptr %1, i64 %98
  %100 = load i8, ptr %99, align 1, !tbaa !7
  %101 = zext i8 %100 to i64
  %102 = getelementptr inbounds [0 x %struct.Elm_s], ptr @Elements, i64 0, i64 %101
  br label %103

103:                                              ; preds = %97, %95
  %104 = phi ptr [ %102, %97 ], [ @Elements, %95 ]
  call void @llvm.lifetime.start.p0(i64 152, ptr nonnull %7) #26
  call void @llvm.lifetime.start.p0(i64 152, ptr nonnull %8) #26
  %105 = getelementptr inbounds [0 x %struct.Elm_s], ptr @Elements, i64 0, i64 %87, i32 1
  %106 = load i8, ptr %105, align 8, !tbaa !59
  %107 = getelementptr inbounds %struct.Elm_s, ptr %76, i64 0, i32 1
  %108 = load i8, ptr %107, align 8, !tbaa !59
  %109 = icmp sgt i8 %106, %108
  %110 = load ptr, ptr @par_file, align 8, !tbaa !14
  %111 = icmp eq ptr %110, null
  br i1 %109, label %112, label %145

112:                                              ; preds = %103
  br i1 %111, label %117, label %113

113:                                              ; preds = %112
  %114 = load ptr, ptr %76, align 8, !tbaa !61
  %115 = load ptr, ptr %88, align 8, !tbaa !61
  %116 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %110, ptr noundef nonnull @.str.1.459, ptr noundef %114, ptr noundef %115)
  br label %117

117:                                              ; preds = %113, %112
  %118 = load i32, ptr @speed, align 4, !tbaa !12
  br label %119

119:                                              ; preds = %141, %117
  %120 = phi i64 [ 0, %117 ], [ %143, %141 ]
  %121 = getelementptr inbounds [0 x %struct.Elm_s], ptr @Elements, i64 0, i64 %87, i32 8, i64 %120, i32 4
  %122 = load i8, ptr %121, align 2, !tbaa !7
  %123 = sext i8 %122 to i32
  %124 = mul nsw i32 %118, %123
  %125 = getelementptr inbounds %struct.slope_t, ptr %7, i64 %120
  %126 = getelementptr inbounds %struct.slope_t, ptr %7, i64 %120, i32 1
  store i32 %124, ptr %126, align 4, !tbaa !62
  %127 = icmp eq i32 %124, 0
  br i1 %127, label %138, label %128

128:                                              ; preds = %119
  %129 = getelementptr inbounds [0 x %struct.Elm_s], ptr @Elements, i64 0, i64 %87, i32 8, i64 %120, i32 1
  %130 = load float, ptr %129, align 4, !tbaa !64
  %131 = getelementptr inbounds [0 x %struct.Elm_s], ptr @Elements, i64 0, i64 %87, i32 8, i64 %120, i32 2
  %132 = load i8, ptr %131, align 4, !tbaa !65
  %133 = sitofp i8 %132 to float
  %134 = getelementptr inbounds %struct.Elm_s, ptr %76, i64 0, i32 8, i64 %120
  %135 = load float, ptr %134, align 4, !tbaa !43
  %136 = fmul float %135, %133
  %137 = call float @llvm.fmuladd.f32(float %136, float 0x3F847AE140000000, float %130)
  br label %141

138:                                              ; preds = %119
  %139 = getelementptr inbounds %struct.Elm_s, ptr %76, i64 0, i32 8, i64 %120
  %140 = load float, ptr %139, align 4, !tbaa !43
  br label %141

141:                                              ; preds = %138, %128
  %142 = phi float [ %140, %138 ], [ %137, %128 ]
  store float %142, ptr %125, align 8, !tbaa !66
  %143 = add nuw nsw i64 %120, 1
  %144 = icmp eq i64 %143, 19
  br i1 %144, label %178, label %119, !llvm.loop !67

145:                                              ; preds = %103
  br i1 %111, label %150, label %146

146:                                              ; preds = %145
  %147 = load ptr, ptr %76, align 8, !tbaa !61
  %148 = load ptr, ptr %88, align 8, !tbaa !61
  %149 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %110, ptr noundef nonnull @.str.2.460, ptr noundef %147, ptr noundef %148)
  br label %150

150:                                              ; preds = %146, %145
  %151 = load i32, ptr @speed, align 4, !tbaa !12
  br label %152

152:                                              ; preds = %174, %150
  %153 = phi i64 [ 0, %150 ], [ %176, %174 ]
  %154 = getelementptr inbounds %struct.Elm_s, ptr %76, i64 0, i32 8, i64 %153, i32 3
  %155 = load i8, ptr %154, align 1, !tbaa !7
  %156 = sext i8 %155 to i32
  %157 = mul nsw i32 %151, %156
  %158 = getelementptr inbounds %struct.slope_t, ptr %7, i64 %153
  %159 = getelementptr inbounds %struct.slope_t, ptr %7, i64 %153, i32 1
  store i32 %157, ptr %159, align 4, !tbaa !62
  %160 = icmp eq i32 %157, 0
  br i1 %160, label %171, label %161

161:                                              ; preds = %152
  %162 = getelementptr inbounds %struct.Elm_s, ptr %76, i64 0, i32 8, i64 %153, i32 1
  %163 = load float, ptr %162, align 4, !tbaa !64
  %164 = getelementptr inbounds %struct.Elm_s, ptr %76, i64 0, i32 8, i64 %153, i32 2
  %165 = load i8, ptr %164, align 4, !tbaa !65
  %166 = sitofp i8 %165 to float
  %167 = getelementptr inbounds [0 x %struct.Elm_s], ptr @Elements, i64 0, i64 %87, i32 8, i64 %153
  %168 = load float, ptr %167, align 4, !tbaa !43
  %169 = fmul float %168, %166
  %170 = call float @llvm.fmuladd.f32(float %169, float 0x3F847AE140000000, float %163)
  br label %174

171:                                              ; preds = %152
  %172 = getelementptr inbounds [0 x %struct.Elm_s], ptr @Elements, i64 0, i64 %87, i32 8, i64 %153
  %173 = load float, ptr %172, align 4, !tbaa !43
  br label %174

174:                                              ; preds = %171, %161
  %175 = phi float [ %173, %171 ], [ %170, %161 ]
  store float %175, ptr %158, align 8, !tbaa !66
  %176 = add nuw nsw i64 %153, 1
  %177 = icmp eq i64 %176, 19
  br i1 %177, label %178, label %152, !llvm.loop !67

178:                                              ; preds = %174, %141
  %179 = getelementptr inbounds %struct.Elm_s, ptr %104, i64 0, i32 1
  %180 = load i8, ptr %179, align 8, !tbaa !59
  %181 = load i8, ptr %105, align 8, !tbaa !59
  %182 = icmp sgt i8 %180, %181
  %183 = load ptr, ptr @par_file, align 8, !tbaa !14
  %184 = icmp eq ptr %183, null
  br i1 %182, label %185, label %218

185:                                              ; preds = %178
  br i1 %184, label %190, label %186

186:                                              ; preds = %185
  %187 = load ptr, ptr %88, align 8, !tbaa !61
  %188 = load ptr, ptr %104, align 8, !tbaa !61
  %189 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %183, ptr noundef nonnull @.str.1.459, ptr noundef %187, ptr noundef %188)
  br label %190

190:                                              ; preds = %186, %185
  %191 = load i32, ptr @speed, align 4, !tbaa !12
  br label %192

192:                                              ; preds = %214, %190
  %193 = phi i64 [ 0, %190 ], [ %216, %214 ]
  %194 = getelementptr inbounds %struct.Elm_s, ptr %104, i64 0, i32 8, i64 %193, i32 3
  %195 = load i8, ptr %194, align 1, !tbaa !7
  %196 = sext i8 %195 to i32
  %197 = mul nsw i32 %191, %196
  %198 = getelementptr inbounds %struct.slope_t, ptr %8, i64 %193
  %199 = getelementptr inbounds %struct.slope_t, ptr %8, i64 %193, i32 1
  store i32 %197, ptr %199, align 4, !tbaa !62
  %200 = icmp eq i32 %197, 0
  br i1 %200, label %211, label %201

201:                                              ; preds = %192
  %202 = getelementptr inbounds %struct.Elm_s, ptr %104, i64 0, i32 8, i64 %193, i32 1
  %203 = load float, ptr %202, align 4, !tbaa !64
  %204 = getelementptr inbounds %struct.Elm_s, ptr %104, i64 0, i32 8, i64 %193, i32 2
  %205 = load i8, ptr %204, align 4, !tbaa !65
  %206 = sitofp i8 %205 to float
  %207 = getelementptr inbounds [0 x %struct.Elm_s], ptr @Elements, i64 0, i64 %87, i32 8, i64 %193
  %208 = load float, ptr %207, align 4, !tbaa !43
  %209 = fmul float %208, %206
  %210 = call float @llvm.fmuladd.f32(float %209, float 0x3F847AE140000000, float %203)
  br label %214

211:                                              ; preds = %192
  %212 = getelementptr inbounds [0 x %struct.Elm_s], ptr @Elements, i64 0, i64 %87, i32 8, i64 %193
  %213 = load float, ptr %212, align 4, !tbaa !43
  br label %214

214:                                              ; preds = %211, %201
  %215 = phi float [ %213, %211 ], [ %210, %201 ]
  store float %215, ptr %198, align 8, !tbaa !66
  %216 = add nuw nsw i64 %193, 1
  %217 = icmp eq i64 %216, 19
  br i1 %217, label %251, label %192, !llvm.loop !67

218:                                              ; preds = %178
  br i1 %184, label %223, label %219

219:                                              ; preds = %218
  %220 = load ptr, ptr %88, align 8, !tbaa !61
  %221 = load ptr, ptr %104, align 8, !tbaa !61
  %222 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %183, ptr noundef nonnull @.str.2.460, ptr noundef %220, ptr noundef %221)
  br label %223

223:                                              ; preds = %219, %218
  %224 = load i32, ptr @speed, align 4, !tbaa !12
  br label %225

225:                                              ; preds = %247, %223
  %226 = phi i64 [ 0, %223 ], [ %249, %247 ]
  %227 = getelementptr inbounds [0 x %struct.Elm_s], ptr @Elements, i64 0, i64 %87, i32 8, i64 %226, i32 4
  %228 = load i8, ptr %227, align 2, !tbaa !7
  %229 = sext i8 %228 to i32
  %230 = mul nsw i32 %224, %229
  %231 = getelementptr inbounds %struct.slope_t, ptr %8, i64 %226
  %232 = getelementptr inbounds %struct.slope_t, ptr %8, i64 %226, i32 1
  store i32 %230, ptr %232, align 4, !tbaa !62
  %233 = icmp eq i32 %230, 0
  br i1 %233, label %244, label %234

234:                                              ; preds = %225
  %235 = getelementptr inbounds [0 x %struct.Elm_s], ptr @Elements, i64 0, i64 %87, i32 8, i64 %226, i32 1
  %236 = load float, ptr %235, align 4, !tbaa !64
  %237 = getelementptr inbounds [0 x %struct.Elm_s], ptr @Elements, i64 0, i64 %87, i32 8, i64 %226, i32 2
  %238 = load i8, ptr %237, align 4, !tbaa !65
  %239 = sitofp i8 %238 to float
  %240 = getelementptr inbounds %struct.Elm_s, ptr %104, i64 0, i32 8, i64 %226
  %241 = load float, ptr %240, align 4, !tbaa !43
  %242 = fmul float %241, %239
  %243 = call float @llvm.fmuladd.f32(float %242, float 0x3F847AE140000000, float %236)
  br label %247

244:                                              ; preds = %225
  %245 = getelementptr inbounds %struct.Elm_s, ptr %104, i64 0, i32 8, i64 %226
  %246 = load float, ptr %245, align 4, !tbaa !43
  br label %247

247:                                              ; preds = %244, %234
  %248 = phi float [ %246, %244 ], [ %243, %234 ]
  store float %248, ptr %231, align 8, !tbaa !66
  %249 = add nuw nsw i64 %226, 1
  %250 = icmp eq i64 %249, 19
  br i1 %250, label %251, label %225, !llvm.loop !67

251:                                              ; preds = %247, %214
  %252 = load ptr, ptr @par_file, align 8, !tbaa !14
  %253 = icmp eq ptr %252, null
  br i1 %253, label %297, label %254

254:                                              ; preds = %251
  %255 = load ptr, ptr %88, align 8, !tbaa !61
  %256 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %252, ptr noundef nonnull @.str.3.461, ptr noundef %255)
  br label %257

257:                                              ; preds = %257, %254
  %258 = phi i64 [ 0, %254 ], [ %265, %257 ]
  %259 = load ptr, ptr @par_file, align 8, !tbaa !14
  %260 = icmp eq i64 %258, 0
  %261 = select i1 %260, i32 35, i32 32
  %262 = getelementptr inbounds [19 x ptr], ptr @Ep_name, i64 0, i64 %258
  %263 = load ptr, ptr %262, align 8, !tbaa !14
  %264 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %259, ptr noundef nonnull @.str.4.462, i32 noundef %261, ptr noundef %263)
  %265 = add nuw nsw i64 %258, 1
  %266 = icmp eq i64 %265, 19
  br i1 %266, label %267, label %257, !llvm.loop !68

267:                                              ; preds = %257
  %268 = load ptr, ptr @par_file, align 8, !tbaa !14
  %269 = call i32 @fputc(i32 10, ptr %268)
  br label %270

270:                                              ; preds = %270, %267
  %271 = phi i64 [ 0, %267 ], [ %279, %270 ]
  %272 = load ptr, ptr @par_file, align 8, !tbaa !14
  %273 = icmp eq i64 %271, 0
  %274 = select i1 %273, i32 35, i32 32
  %275 = getelementptr inbounds [19 x %struct.slope_t], ptr %7, i64 0, i64 %271
  %276 = load float, ptr %275, align 8, !tbaa !66
  %277 = fpext float %276 to double
  %278 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %272, ptr noundef nonnull @.str.6.463, i32 noundef %274, double noundef %277)
  %279 = add nuw nsw i64 %271, 1
  %280 = icmp eq i64 %279, 19
  br i1 %280, label %281, label %270, !llvm.loop !69

281:                                              ; preds = %270
  %282 = load ptr, ptr @par_file, align 8, !tbaa !14
  %283 = call i32 @fputc(i32 10, ptr %282)
  br label %284

284:                                              ; preds = %284, %281
  %285 = phi i64 [ 0, %281 ], [ %292, %284 ]
  %286 = load ptr, ptr @par_file, align 8, !tbaa !14
  %287 = icmp eq i64 %285, 0
  %288 = select i1 %287, i32 35, i32 32
  %289 = getelementptr inbounds [19 x %struct.slope_t], ptr %7, i64 0, i64 %285, i32 1
  %290 = load i32, ptr %289, align 4, !tbaa !62
  %291 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %286, ptr noundef nonnull @.str.7.464, i32 noundef %288, i32 noundef %290)
  %292 = add nuw nsw i64 %285, 1
  %293 = icmp eq i64 %292, 19
  br i1 %293, label %294, label %284, !llvm.loop !70

294:                                              ; preds = %284
  %295 = load ptr, ptr @par_file, align 8, !tbaa !14
  %296 = call i32 @fputc(i32 10, ptr %295)
  br label %297

297:                                              ; preds = %294, %251
  %298 = call i32 @llvm.umax.i32(i32 %92, i32 1)
  br label %299

299:                                              ; preds = %622, %297
  %300 = phi ptr [ %75, %297 ], [ %527, %622 ]
  %301 = phi i32 [ 0, %297 ], [ %624, %622 ]
  %302 = phi i32 [ %78, %297 ], [ %625, %622 ]
  %303 = phi i32 [ %79, %297 ], [ %403, %622 ]
  %304 = phi float [ %80, %297 ], [ %623, %622 ]
  %305 = phi float [ %81, %297 ], [ %402, %622 ]
  %306 = phi float [ %82, %297 ], [ %401, %622 ]
  %307 = fpext float %304 to double
  %308 = fmul double %307, 8.000000e-01
  %309 = fptrunc double %308 to float
  call void @llvm.lifetime.start.p0(i64 76, ptr nonnull %9) #26
  %310 = icmp eq i32 %302, %303
  br i1 %310, label %311, label %400

311:                                              ; preds = %394, %299
  %312 = phi float [ %395, %394 ], [ %305, %299 ]
  %313 = phi i32 [ %399, %394 ], [ %92, %299 ]
  %314 = phi i32 [ %397, %394 ], [ %93, %299 ]
  %315 = icmp ugt i32 %314, %0
  br i1 %315, label %400, label %316

316:                                              ; preds = %311
  %317 = icmp ult i32 %314, %0
  br i1 %317, label %318, label %325

318:                                              ; preds = %316
  %319 = add nuw i32 %314, 1
  %320 = zext i32 %314 to i64
  %321 = getelementptr inbounds i8, ptr %1, i64 %320
  %322 = load i8, ptr %321, align 1, !tbaa !7
  %323 = zext i8 %322 to i64
  %324 = getelementptr inbounds [0 x %struct.Elm_s], ptr @Elements, i64 0, i64 %323
  br label %325

325:                                              ; preds = %318, %316
  %326 = phi i32 [ %319, %318 ], [ %314, %316 ]
  %327 = phi ptr [ %324, %318 ], [ @Elements, %316 ]
  %328 = icmp ult i32 %326, %0
  br i1 %328, label %329, label %335

329:                                              ; preds = %325
  %330 = add i32 %326, 1
  %331 = zext i32 %326 to i64
  %332 = getelementptr inbounds i8, ptr %1, i64 %331
  %333 = load i8, ptr %332, align 1, !tbaa !7
  %334 = zext i8 %333 to i32
  br label %335

335:                                              ; preds = %329, %325
  %336 = phi i32 [ %330, %329 ], [ %326, %325 ]
  %337 = phi i32 [ %334, %329 ], [ 0, %325 ]
  %338 = icmp ult i32 %336, %0
  br i1 %338, label %339, label %345

339:                                              ; preds = %335
  %340 = add i32 %336, 1
  %341 = zext i32 %336 to i64
  %342 = getelementptr inbounds i8, ptr %1, i64 %341
  %343 = load i8, ptr %342, align 1, !tbaa !7
  %344 = zext i8 %343 to i32
  br label %345

345:                                              ; preds = %339, %335
  %346 = phi i32 [ %340, %339 ], [ %336, %335 ]
  %347 = phi i32 [ %344, %339 ], [ 3, %335 ]
  %348 = icmp eq i32 %347, 0
  br i1 %348, label %349, label %354

349:                                              ; preds = %345
  %350 = getelementptr inbounds %struct.Elm_s, ptr %327, i64 0, i32 7
  %351 = load i64, ptr %350, align 8, !tbaa !71
  %352 = and i64 %351, 268435456
  %353 = icmp eq i64 %352, 0
  br i1 %353, label %394, label %357

354:                                              ; preds = %345
  %355 = uitofp i32 %347 to float
  %356 = fdiv float %355, 3.000000e+00
  br label %357

357:                                              ; preds = %354, %349
  %358 = phi float [ %356, %354 ], [ 0x3FB99999A0000000, %349 ]
  br label %359

359:                                              ; preds = %380, %357
  %360 = phi i32 [ %346, %357 ], [ %385, %380 ]
  %361 = phi i32 [ %337, %357 ], [ %384, %380 ]
  %362 = phi i32 [ 0, %357 ], [ %363, %380 ]
  %363 = add i32 %362, %361
  %364 = icmp ult i32 %360, %0
  br i1 %364, label %365, label %372

365:                                              ; preds = %359
  %366 = add nuw i32 %360, 1
  %367 = zext i32 %360 to i64
  %368 = getelementptr inbounds i8, ptr %1, i64 %367
  %369 = load i8, ptr %368, align 1, !tbaa !7
  %370 = zext i8 %369 to i64
  %371 = getelementptr inbounds [0 x %struct.Elm_s], ptr @Elements, i64 0, i64 %370
  br label %372

372:                                              ; preds = %365, %359
  %373 = phi i32 [ %366, %365 ], [ %360, %359 ]
  %374 = phi ptr [ %371, %365 ], [ @Elements, %359 ]
  %375 = add i32 %373, 1
  %376 = getelementptr inbounds %struct.Elm_s, ptr %374, i64 0, i32 7
  %377 = load i64, ptr %376, align 8, !tbaa !71
  %378 = and i64 %377, 268435456
  %379 = icmp eq i64 %378, 0
  br i1 %379, label %391, label %380

380:                                              ; preds = %372
  %381 = zext i32 %373 to i64
  %382 = getelementptr inbounds i8, ptr %1, i64 %381
  %383 = load i8, ptr %382, align 1, !tbaa !7
  %384 = zext i8 %383 to i32
  %385 = add i32 %373, 2
  %386 = zext i32 %375 to i64
  %387 = getelementptr inbounds i8, ptr %1, i64 %386
  %388 = load i8, ptr %387, align 1, !tbaa !7
  %389 = zext i8 %388 to i32
  %390 = icmp eq i32 %347, %389
  br i1 %390, label %359, label %391, !llvm.loop !72

391:                                              ; preds = %380, %372
  %392 = phi i32 [ %385, %380 ], [ %375, %372 ]
  %393 = lshr i32 %363, 1
  br label %394

394:                                              ; preds = %391, %349
  %395 = phi float [ %312, %349 ], [ %358, %391 ]
  %396 = phi i32 [ %337, %349 ], [ %393, %391 ]
  %397 = phi i32 [ %346, %349 ], [ %392, %391 ]
  %398 = phi i1 [ true, %349 ], [ false, %391 ]
  %399 = add i32 %396, %313
  br i1 %398, label %311, label %400

400:                                              ; preds = %394, %311, %299
  %401 = phi float [ %306, %299 ], [ %305, %394 ], [ %305, %311 ]
  %402 = phi float [ %305, %299 ], [ %312, %311 ], [ %395, %394 ]
  %403 = phi i32 [ %303, %299 ], [ %313, %311 ], [ %399, %394 ]
  %404 = phi i32 [ %302, %299 ], [ 0, %394 ], [ 0, %311 ]
  br label %405

405:                                              ; preds = %405, %400
  %406 = phi i64 [ 0, %400 ], [ %421, %405 ]
  %407 = getelementptr inbounds %struct.filter_t, ptr %5, i64 %406
  %408 = getelementptr inbounds [19 x %struct.slope_t], ptr %7, i64 0, i64 %406
  %409 = getelementptr inbounds [19 x %struct.slope_t], ptr %8, i64 0, i64 %406
  %410 = getelementptr inbounds [0 x %struct.Elm_s], ptr @Elements, i64 0, i64 %87, i32 8, i64 %406
  %411 = load float, ptr %410, align 4, !tbaa !43
  %412 = call fastcc float @interpolate(ptr noundef nonnull %408, ptr noundef nonnull %409, float noundef %411, i32 noundef %301, i32 noundef %92)
  %413 = load float, ptr %407, align 4, !tbaa !56
  %414 = getelementptr inbounds %struct.filter_t, ptr %5, i64 %406, i32 1
  %415 = load float, ptr %414, align 4, !tbaa !57
  %416 = getelementptr inbounds %struct.filter_t, ptr %5, i64 %406, i32 2
  %417 = load float, ptr %416, align 4, !tbaa !54
  %418 = fmul float %415, %417
  %419 = call float @llvm.fmuladd.f32(float %413, float %412, float %418)
  store float %419, ptr %416, align 4, !tbaa !54
  %420 = getelementptr inbounds [19 x float], ptr %9, i64 0, i64 %406
  store float %419, ptr %420, align 4, !tbaa !73
  %421 = add nuw nsw i64 %406, 1
  %422 = icmp eq i64 %421, 19
  br i1 %422, label %423, label %405, !llvm.loop !74

423:                                              ; preds = %405
  %424 = fsub float %304, %309
  %425 = add i32 %403, -80
  %426 = sitofp i32 %425 to float
  %427 = icmp sgt i32 %425, -1
  br i1 %427, label %428, label %451

428:                                              ; preds = %423
  %429 = icmp slt i32 %404, 40
  br i1 %429, label %430, label %437

430:                                              ; preds = %428
  %431 = icmp slt i32 %404, 1
  br i1 %431, label %479, label %432

432:                                              ; preds = %430
  %433 = sitofp i32 %404 to float
  %434 = fdiv float %433, 4.000000e+01
  %435 = fsub float 0.000000e+00, %401
  %436 = call float @llvm.fmuladd.f32(float %435, float %434, float %401)
  br label %479

437:                                              ; preds = %428
  %438 = add nsw i32 %404, -40
  %439 = sitofp i32 %438 to float
  %440 = fcmp ugt float %439, %426
  br i1 %440, label %441, label %479

441:                                              ; preds = %437
  %442 = fsub float %439, %426
  %443 = fptosi float %442 to i32
  %444 = icmp slt i32 %443, 1
  br i1 %444, label %479, label %445

445:                                              ; preds = %441
  %446 = icmp slt i32 %443, 40
  br i1 %446, label %447, label %479

447:                                              ; preds = %445
  %448 = sitofp i32 %443 to float
  %449 = fdiv float %448, 4.000000e+01
  %450 = call float @llvm.fmuladd.f32(float %402, float %449, float 0.000000e+00)
  br label %479

451:                                              ; preds = %423
  %452 = sitofp i32 %404 to float
  %453 = sitofp i32 %403 to float
  %454 = fdiv float %452, %453
  %455 = fsub float 1.000000e+00, %454
  %456 = icmp slt i32 %404, 1
  br i1 %456, label %463, label %457

457:                                              ; preds = %451
  %458 = icmp slt i32 %404, 40
  br i1 %458, label %459, label %463

459:                                              ; preds = %457
  %460 = fdiv float %452, 4.000000e+01
  %461 = fsub float 0.000000e+00, %401
  %462 = call float @llvm.fmuladd.f32(float %461, float %460, float %401)
  br label %463

463:                                              ; preds = %459, %457, %451
  %464 = phi float [ %462, %459 ], [ %401, %451 ], [ 0.000000e+00, %457 ]
  %465 = sub nsw i32 %403, %404
  %466 = icmp slt i32 %465, 1
  br i1 %466, label %474, label %467

467:                                              ; preds = %463
  %468 = icmp slt i32 %465, 40
  br i1 %468, label %469, label %474

469:                                              ; preds = %467
  %470 = sitofp i32 %465 to float
  %471 = fdiv float %470, 4.000000e+01
  %472 = fsub float 0.000000e+00, %402
  %473 = call float @llvm.fmuladd.f32(float %472, float %471, float %402)
  br label %474

474:                                              ; preds = %469, %467, %463
  %475 = phi float [ %473, %469 ], [ %402, %463 ], [ 0.000000e+00, %467 ]
  %476 = fsub float 1.000000e+00, %455
  %477 = fmul float %476, %475
  %478 = call float @llvm.fmuladd.f32(float %455, float %464, float %477)
  br label %479

479:                                              ; preds = %474, %447, %445, %441, %437, %432, %430
  %480 = phi float [ %478, %474 ], [ 0.000000e+00, %437 ], [ %436, %432 ], [ %401, %430 ], [ %450, %447 ], [ 0.000000e+00, %441 ], [ %402, %445 ]
  %481 = call float @llvm.fmuladd.f32(float %424, float %480, float %309)
  %482 = fptosi float %481 to i64
  store i64 %482, ptr %6, align 8, !tbaa !40
  %483 = load float, ptr %31, align 4, !tbaa !73
  %484 = fptosi float %483 to i64
  store i64 %484, ptr %32, align 8, !tbaa !75
  store i64 %484, ptr %33, align 8, !tbaa !76
  %485 = load float, ptr %34, align 8, !tbaa !73
  %486 = fptosi float %485 to i64
  store i64 %486, ptr %35, align 8, !tbaa !77
  %487 = load float, ptr %9, align 16, !tbaa !73
  %488 = fptosi float %487 to i64
  store i64 %488, ptr %36, align 8, !tbaa !78
  %489 = load float, ptr %37, align 4, !tbaa !73
  %490 = fptosi float %489 to i64
  store i64 %490, ptr %38, align 8, !tbaa !79
  %491 = load float, ptr %39, align 16, !tbaa !73
  %492 = fptosi float %491 to i64
  store i64 %492, ptr %40, align 8, !tbaa !80
  %493 = load float, ptr %41, align 16, !tbaa !73
  %494 = fptosi float %493 to i64
  store i64 %494, ptr %16, align 8, !tbaa !47
  store i64 %494, ptr %17, align 8, !tbaa !48
  %495 = load float, ptr %42, align 4, !tbaa !73
  %496 = fptosi float %495 to i64
  store i64 %496, ptr %18, align 8, !tbaa !49
  store i64 %496, ptr %19, align 8, !tbaa !50
  %497 = load float, ptr %43, align 8, !tbaa !73
  %498 = fptosi float %497 to i64
  store i64 %498, ptr %20, align 8, !tbaa !51
  store i64 %498, ptr %21, align 8, !tbaa !52
  %499 = load float, ptr %44, align 4, !tbaa !73
  %500 = fptosi float %499 to i64
  store i64 %500, ptr %45, align 8, !tbaa !81
  %501 = load float, ptr %46, align 8, !tbaa !73
  %502 = fptosi float %501 to i64
  store i64 %502, ptr %47, align 8, !tbaa !82
  %503 = load float, ptr %48, align 4, !tbaa !73
  %504 = fptosi float %503 to i64
  store i64 %504, ptr %49, align 8, !tbaa !83
  %505 = load float, ptr %50, align 8, !tbaa !73
  %506 = fadd float %505, 1.400000e+01
  %507 = fptosi float %506 to i64
  store i64 %507, ptr %51, align 8, !tbaa !84
  %508 = load float, ptr %52, align 16, !tbaa !73
  %509 = fadd float %508, 1.400000e+01
  %510 = fptosi float %509 to i64
  store i64 %510, ptr %53, align 8, !tbaa !85
  %511 = load float, ptr %54, align 4, !tbaa !73
  %512 = fadd float %511, 1.400000e+01
  %513 = fptosi float %512 to i64
  store i64 %513, ptr %55, align 8, !tbaa !86
  %514 = load float, ptr %56, align 16, !tbaa !73
  %515 = fadd float %514, 1.400000e+01
  %516 = fptosi float %515 to i64
  store i64 %516, ptr %57, align 8, !tbaa !87
  %517 = load float, ptr %58, align 4, !tbaa !73
  %518 = fadd float %517, 1.400000e+01
  %519 = fptosi float %518 to i64
  store i64 %519, ptr %59, align 8, !tbaa !88
  %520 = load float, ptr %60, align 8, !tbaa !73
  %521 = fadd float %520, 1.400000e+01
  %522 = fptosi float %521 to i64
  store i64 %522, ptr %61, align 8, !tbaa !89
  %523 = load float, ptr %62, align 4, !tbaa !73
  %524 = fadd float %523, 1.400000e+01
  %525 = fptosi float %524 to i64
  store i64 %525, ptr %63, align 8, !tbaa !90
  call void @parwave(ptr noundef nonnull @klatt_global, ptr noundef nonnull %6, ptr noundef %300) #26
  %526 = load i64, ptr getelementptr inbounds (%struct.klatt_global_t, ptr @klatt_global, i64 0, i32 7), align 8, !tbaa !37
  %527 = getelementptr inbounds i16, ptr %300, i64 %526
  %528 = load ptr, ptr @par_file, align 8, !tbaa !14
  %529 = icmp eq ptr %528, null
  br i1 %529, label %542, label %530

530:                                              ; preds = %530, %479
  %531 = phi i64 [ %537, %530 ], [ 0, %479 ]
  %532 = load ptr, ptr @par_file, align 8, !tbaa !14
  %533 = getelementptr inbounds [19 x float], ptr %9, i64 0, i64 %531
  %534 = load float, ptr %533, align 4, !tbaa !73
  %535 = fpext float %534 to double
  %536 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %532, ptr noundef nonnull @.str.10.465, double noundef %535)
  %537 = add nuw nsw i64 %531, 1
  %538 = icmp eq i64 %537, 19
  br i1 %538, label %539, label %530, !llvm.loop !91

539:                                              ; preds = %530
  %540 = load ptr, ptr @par_file, align 8, !tbaa !14
  %541 = call i32 @fputc(i32 10, ptr %540)
  br label %542

542:                                              ; preds = %539, %479
  %543 = load ptr, ptr @jsru_file, align 8, !tbaa !14
  %544 = icmp eq ptr %543, null
  br i1 %544, label %622, label %545

545:                                              ; preds = %542
  %546 = load i64, ptr %6, align 8, !tbaa !40
  %547 = sitofp i64 %546 to double
  %548 = fmul double %547, 1.000000e-01
  %549 = fdiv double %548, 2.500000e+01
  %550 = call double @log(double noundef %549) #26
  %551 = fdiv double %550, 0x3FE62E42FEFA39EF
  %552 = call double @llvm.fmuladd.f64(double %551, double 1.600000e+01, double -1.000000e+00)
  %553 = load float, ptr %9, align 16, !tbaa !73
  %554 = fadd float %553, -9.500000e+01
  %555 = fdiv float %554, 5.000000e+00
  %556 = fptosi float %555 to i32
  %557 = call i32 @llvm.smin.i32(i32 %556, i32 63)
  %558 = load ptr, ptr @jsru_file, align 8, !tbaa !14
  %559 = call i32 @fputc(i32 noundef %557, ptr noundef %558)
  %560 = load float, ptr %64, align 4, !tbaa !73
  %561 = fptosi float %560 to i32
  %562 = call i32 @llvm.smax.i32(i32 %561, i32 1)
  %563 = call i32 @llvm.umin.i32(i32 %562, i32 63)
  %564 = load ptr, ptr @jsru_file, align 8, !tbaa !14
  %565 = call i32 @fputc(i32 noundef %563, ptr noundef %564)
  %566 = load float, ptr %44, align 4, !tbaa !73
  %567 = fadd float %566, -1.250000e+02
  %568 = fdiv float %567, 2.500000e+01
  %569 = fptosi float %568 to i32
  %570 = call i32 @llvm.smin.i32(i32 %569, i32 63)
  %571 = load ptr, ptr @jsru_file, align 8, !tbaa !14
  %572 = call i32 @fputc(i32 noundef %570, ptr noundef %571)
  %573 = load float, ptr %56, align 16, !tbaa !73
  %574 = fptosi float %573 to i32
  %575 = call i32 @llvm.smax.i32(i32 %574, i32 1)
  %576 = call i32 @llvm.umin.i32(i32 %575, i32 63)
  %577 = load ptr, ptr @jsru_file, align 8, !tbaa !14
  %578 = call i32 @fputc(i32 noundef %576, ptr noundef %577)
  %579 = load float, ptr %46, align 8, !tbaa !73
  %580 = fadd float %579, -5.500000e+02
  %581 = fdiv float %580, 5.000000e+01
  %582 = fptosi float %581 to i32
  %583 = call i32 @llvm.smin.i32(i32 %582, i32 63)
  %584 = load ptr, ptr @jsru_file, align 8, !tbaa !14
  %585 = call i32 @fputc(i32 noundef %583, ptr noundef %584)
  %586 = load float, ptr %58, align 4, !tbaa !73
  %587 = fptosi float %586 to i32
  %588 = call i32 @llvm.smax.i32(i32 %587, i32 1)
  %589 = call i32 @llvm.umin.i32(i32 %588, i32 63)
  %590 = load ptr, ptr @jsru_file, align 8, !tbaa !14
  %591 = call i32 @fputc(i32 noundef %589, ptr noundef %590)
  %592 = load float, ptr %48, align 4, !tbaa !73
  %593 = fadd float %592, -1.350000e+03
  %594 = fdiv float %593, 5.000000e+01
  %595 = fptosi float %594 to i32
  %596 = call i32 @llvm.smin.i32(i32 %595, i32 63)
  %597 = load ptr, ptr @jsru_file, align 8, !tbaa !14
  %598 = call i32 @fputc(i32 noundef %596, ptr noundef %597)
  %599 = load float, ptr %60, align 8, !tbaa !73
  %600 = fptosi float %599 to i32
  %601 = call i32 @llvm.smax.i32(i32 %600, i32 1)
  %602 = call i32 @llvm.umin.i32(i32 %601, i32 63)
  %603 = load ptr, ptr @jsru_file, align 8, !tbaa !14
  %604 = call i32 @fputc(i32 noundef %602, ptr noundef %603)
  %605 = load float, ptr %62, align 4, !tbaa !73
  %606 = fptosi float %605 to i32
  %607 = call i32 @llvm.smax.i32(i32 %606, i32 1)
  %608 = call i32 @llvm.umin.i32(i32 %607, i32 63)
  %609 = load ptr, ptr @jsru_file, align 8, !tbaa !14
  %610 = call i32 @fputc(i32 noundef %608, ptr noundef %609)
  %611 = load float, ptr %31, align 4, !tbaa !73
  %612 = fptosi float %611 to i32
  %613 = call i32 @llvm.smax.i32(i32 %612, i32 1)
  %614 = call i32 @llvm.umin.i32(i32 %613, i32 63)
  %615 = load ptr, ptr @jsru_file, align 8, !tbaa !14
  %616 = call i32 @fputc(i32 noundef %614, ptr noundef %615)
  %617 = fptosi double %552 to i32
  %618 = load ptr, ptr @jsru_file, align 8, !tbaa !14
  %619 = call i32 @fputc(i32 noundef %617, ptr noundef %618)
  %620 = load ptr, ptr @jsru_file, align 8, !tbaa !14
  %621 = call i32 @fputc(i32 noundef 32, ptr noundef %620)
  br label %622

622:                                              ; preds = %545, %542
  %623 = fadd float %304, -5.000000e-01
  call void @llvm.lifetime.end.p0(i64 76, ptr nonnull %9) #26
  %624 = add nuw nsw i32 %301, 1
  %625 = add i32 %404, 1
  %626 = icmp eq i32 %624, %298
  br i1 %626, label %627, label %299, !llvm.loop !92

627:                                              ; preds = %622
  %628 = load ptr, ptr @par_file, align 8, !tbaa !14
  %629 = icmp eq ptr %628, null
  br i1 %629, label %657, label %630

630:                                              ; preds = %630, %627
  %631 = phi i64 [ %639, %630 ], [ 0, %627 ]
  %632 = load ptr, ptr @par_file, align 8, !tbaa !14
  %633 = icmp eq i64 %631, 0
  %634 = select i1 %633, i32 35, i32 32
  %635 = getelementptr inbounds [19 x %struct.slope_t], ptr %8, i64 0, i64 %631
  %636 = load float, ptr %635, align 8, !tbaa !66
  %637 = fpext float %636 to double
  %638 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %632, ptr noundef nonnull @.str.6.463, i32 noundef %634, double noundef %637)
  %639 = add nuw nsw i64 %631, 1
  %640 = icmp eq i64 %639, 19
  br i1 %640, label %641, label %630, !llvm.loop !93

641:                                              ; preds = %630
  %642 = load ptr, ptr @par_file, align 8, !tbaa !14
  %643 = call i32 @fputc(i32 10, ptr %642)
  br label %644

644:                                              ; preds = %644, %641
  %645 = phi i64 [ 0, %641 ], [ %652, %644 ]
  %646 = load ptr, ptr @par_file, align 8, !tbaa !14
  %647 = icmp eq i64 %645, 0
  %648 = select i1 %647, i32 35, i32 32
  %649 = getelementptr inbounds [19 x %struct.slope_t], ptr %8, i64 0, i64 %645, i32 1
  %650 = load i32, ptr %649, align 4, !tbaa !62
  %651 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %646, ptr noundef nonnull @.str.7.464, i32 noundef %648, i32 noundef %650)
  %652 = add nuw nsw i64 %645, 1
  %653 = icmp eq i64 %652, 19
  br i1 %653, label %654, label %644, !llvm.loop !94

654:                                              ; preds = %644
  %655 = load ptr, ptr @par_file, align 8, !tbaa !14
  %656 = call i32 @fputc(i32 10, ptr %655)
  br label %657

657:                                              ; preds = %654, %627
  call void @llvm.lifetime.end.p0(i64 152, ptr nonnull %8) #26
  call void @llvm.lifetime.end.p0(i64 152, ptr nonnull %7) #26
  br label %658

658:                                              ; preds = %657, %74
  %659 = phi float [ %82, %74 ], [ %401, %657 ]
  %660 = phi float [ %81, %74 ], [ %402, %657 ]
  %661 = phi float [ %80, %74 ], [ %623, %657 ]
  %662 = phi i32 [ %79, %74 ], [ %403, %657 ]
  %663 = phi i32 [ %78, %74 ], [ %625, %657 ]
  %664 = phi ptr [ %75, %74 ], [ %527, %657 ]
  %665 = icmp ult i32 %93, %0
  br i1 %665, label %74, label %666, !llvm.loop !95

666:                                              ; preds = %658, %27
  %667 = phi ptr [ %3, %27 ], [ %664, %658 ]
  %668 = ptrtoint ptr %667 to i64
  %669 = ptrtoint ptr %3 to i64
  %670 = sub i64 %668, %669
  %671 = lshr exact i64 %670, 1
  %672 = trunc i64 %671 to i32
  call void @llvm.lifetime.end.p0(i64 320, ptr nonnull %6) #26
  call void @llvm.lifetime.end.p0(i64 228, ptr nonnull %5) #26
  ret i32 %672
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #12

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #12

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define internal fastcc float @interpolate(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, float noundef %2, i32 noundef %3, i32 noundef %4) unnamed_addr #18 {
  %6 = getelementptr inbounds %struct.slope_t, ptr %0, i64 0, i32 1
  %7 = load i32, ptr %6, align 4, !tbaa !62
  %8 = getelementptr inbounds %struct.slope_t, ptr %1, i64 0, i32 1
  %9 = load i32, ptr %8, align 4, !tbaa !62
  %10 = add i32 %7, %9
  %11 = sub i32 %4, %10
  %12 = sitofp i32 %11 to float
  %13 = icmp sgt i32 %11, -1
  br i1 %13, label %14, label %42

14:                                               ; preds = %5
  %15 = icmp sgt i32 %7, %3
  br i1 %15, label %16, label %25

16:                                               ; preds = %14
  %17 = load float, ptr %0, align 4, !tbaa !66
  %18 = icmp slt i32 %3, 1
  br i1 %18, label %74, label %19

19:                                               ; preds = %16
  %20 = sitofp i32 %3 to float
  %21 = sitofp i32 %7 to float
  %22 = fdiv float %20, %21
  %23 = fsub float %2, %17
  %24 = tail call float @llvm.fmuladd.f32(float %23, float %22, float %17)
  br label %74

25:                                               ; preds = %14
  %26 = sub nsw i32 %3, %7
  %27 = sitofp i32 %26 to float
  %28 = fcmp ugt float %27, %12
  br i1 %28, label %29, label %74

29:                                               ; preds = %25
  %30 = load float, ptr %1, align 4, !tbaa !66
  %31 = fsub float %27, %12
  %32 = fptosi float %31 to i32
  %33 = icmp slt i32 %32, 1
  br i1 %33, label %74, label %34

34:                                               ; preds = %29
  %35 = icmp sgt i32 %9, %32
  br i1 %35, label %36, label %74

36:                                               ; preds = %34
  %37 = sitofp i32 %32 to float
  %38 = sitofp i32 %9 to float
  %39 = fdiv float %37, %38
  %40 = fsub float %30, %2
  %41 = tail call float @llvm.fmuladd.f32(float %40, float %39, float %2)
  br label %74

42:                                               ; preds = %5
  %43 = sitofp i32 %3 to float
  %44 = sitofp i32 %4 to float
  %45 = fdiv float %43, %44
  %46 = fsub float 1.000000e+00, %45
  %47 = load float, ptr %0, align 4, !tbaa !66
  %48 = icmp slt i32 %3, 1
  br i1 %48, label %56, label %49

49:                                               ; preds = %42
  %50 = icmp sgt i32 %7, %3
  br i1 %50, label %51, label %56

51:                                               ; preds = %49
  %52 = sitofp i32 %7 to float
  %53 = fdiv float %43, %52
  %54 = fsub float %2, %47
  %55 = tail call float @llvm.fmuladd.f32(float %54, float %53, float %47)
  br label %56

56:                                               ; preds = %51, %49, %42
  %57 = phi float [ %55, %51 ], [ %47, %42 ], [ %2, %49 ]
  %58 = load float, ptr %1, align 4, !tbaa !66
  %59 = sub nsw i32 %4, %3
  %60 = icmp slt i32 %59, 1
  br i1 %60, label %69, label %61

61:                                               ; preds = %56
  %62 = icmp slt i32 %59, %9
  br i1 %62, label %63, label %69

63:                                               ; preds = %61
  %64 = sitofp i32 %59 to float
  %65 = sitofp i32 %9 to float
  %66 = fdiv float %64, %65
  %67 = fsub float %2, %58
  %68 = tail call float @llvm.fmuladd.f32(float %67, float %66, float %58)
  br label %69

69:                                               ; preds = %63, %61, %56
  %70 = phi float [ %68, %63 ], [ %58, %56 ], [ %2, %61 ]
  %71 = fsub float 1.000000e+00, %46
  %72 = fmul float %71, %70
  %73 = tail call float @llvm.fmuladd.f32(float %46, float %57, float %72)
  br label %74

74:                                               ; preds = %69, %36, %34, %29, %25, %19, %16
  %75 = phi float [ %73, %69 ], [ %2, %25 ], [ %24, %19 ], [ %17, %16 ], [ %41, %36 ], [ %2, %29 ], [ %30, %34 ]
  ret float %75
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(write)
declare double @log(double noundef) local_unnamed_addr #19

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #12

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #12

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #12

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #12

; Function Attrs: nounwind uwtable
define dso_local i32 @init_holmes(i32 noundef %0, ptr noundef %1) local_unnamed_addr #4 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #26
  store ptr null, ptr %3, align 8, !tbaa !14
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #26
  store ptr null, ptr %4, align 8, !tbaa !14
  %5 = call i32 (ptr, i32, ptr, ...) @getargs(ptr noundef nonnull @.str.11.466, i32 noundef %0, ptr noundef %1, ptr noundef nonnull @.str.12.467, ptr noundef nonnull @.str.8.468, ptr noundef nonnull %3, ptr noundef nonnull @.str.13.469, ptr noundef nonnull @.str.14.470, ptr noundef nonnull @.str.8.468, ptr noundef nonnull %4, ptr noundef nonnull @.str.15.471, ptr noundef nonnull @.str.16.472, ptr noundef nonnull @.str.17.473, ptr noundef nonnull @speed, ptr noundef nonnull @.str.18.474, ptr noundef nonnull @.str.19.475, ptr noundef nonnull @.str.20.476, ptr noundef nonnull @frac, ptr noundef nonnull @.str.21.477, ptr noundef null) #26
  %6 = load i32, ptr @help_only, align 4, !tbaa !12
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %24

8:                                                ; preds = %2
  %9 = load ptr, ptr %3, align 8, !tbaa !14
  %10 = icmp eq ptr %9, null
  br i1 %10, label %16, label %11

11:                                               ; preds = %8
  %12 = call noalias ptr @fopen(ptr noundef nonnull %9, ptr noundef nonnull @.str.22.478)
  store ptr %12, ptr @par_file, align 8, !tbaa !14
  %13 = icmp eq ptr %12, null
  br i1 %13, label %14, label %16

14:                                               ; preds = %11
  %15 = load ptr, ptr %3, align 8, !tbaa !14
  call void @perror(ptr noundef %15) #28
  br label %16

16:                                               ; preds = %14, %11, %8
  %17 = load ptr, ptr %4, align 8, !tbaa !14
  %18 = icmp eq ptr %17, null
  br i1 %18, label %24, label %19

19:                                               ; preds = %16
  %20 = call noalias ptr @fopen(ptr noundef nonnull %17, ptr noundef nonnull @.str.22.478)
  store ptr %20, ptr @jsru_file, align 8, !tbaa !14
  %21 = icmp eq ptr %20, null
  br i1 %21, label %22, label %24

22:                                               ; preds = %19
  %23 = load ptr, ptr %4, align 8, !tbaa !14
  call void @perror(ptr noundef %23) #28
  br label %24

24:                                               ; preds = %22, %19, %16, %2
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #26
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #26
  ret i32 %5
}

; Function Attrs: nofree nounwind
declare noalias noundef ptr @fopen(ptr nocapture noundef readonly, ptr nocapture noundef readonly) local_unnamed_addr #5

; Function Attrs: nofree nounwind uwtable
define dso_local void @term_holmes() local_unnamed_addr #0 {
  %1 = load ptr, ptr @par_file, align 8, !tbaa !14
  %2 = icmp eq ptr %1, null
  br i1 %2, label %5, label %3

3:                                                ; preds = %0
  %4 = tail call i32 @fclose(ptr noundef nonnull %1)
  br label %5

5:                                                ; preds = %3, %0
  %6 = load ptr, ptr @jsru_file, align 8, !tbaa !14
  %7 = icmp eq ptr %6, null
  br i1 %7, label %10, label %8

8:                                                ; preds = %5
  %9 = tail call i32 @fclose(ptr noundef nonnull %6)
  br label %10

10:                                               ; preds = %8, %5
  ret void
}

; Function Attrs: nofree nounwind
declare noundef i32 @fclose(ptr nocapture noundef) local_unnamed_addr #5

; Function Attrs: nounwind uwtable
define dso_local i32 @audio_init(i32 noundef %0, ptr noundef %1) local_unnamed_addr #4 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #26
  store i32 0, ptr %3, align 4, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #26
  store i32 1, ptr %4, align 4, !tbaa !12
  %5 = load ptr, ptr %1, align 8, !tbaa !14
  store ptr %5, ptr @prog, align 8, !tbaa !14
  %6 = call i32 (ptr, i32, ptr, ...) @getargs(ptr noundef nonnull @.str.2.485, i32 noundef %0, ptr noundef nonnull %1, ptr noundef nonnull @.str.3.486, ptr noundef nonnull @.str.4.487, ptr noundef nonnull %3, ptr noundef nonnull @.str.5.488, ptr noundef nonnull @.str.6.489, ptr noundef null, ptr noundef nonnull %4, ptr noundef nonnull @.str.7.490, ptr noundef null) #26
  %7 = load i32, ptr @help_only, align 4, !tbaa !12
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %30

9:                                                ; preds = %2
  %10 = load i32, ptr %4, align 4, !tbaa !12
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %18, label %12

12:                                               ; preds = %9
  %13 = load ptr, ptr @dev_file, align 8, !tbaa !14
  %14 = call i32 (ptr, i32, ...) @open(ptr noundef %13, i32 noundef 2049) #26
  store i32 %14, ptr @dev_fd, align 4, !tbaa !12
  %15 = icmp slt i32 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %12
  %17 = load ptr, ptr @dev_file, align 8, !tbaa !14
  call void @perror(ptr noundef %17) #28
  br label %18

18:                                               ; preds = %16, %12, %9
  %19 = load i32, ptr %3, align 4, !tbaa !12
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %23, label %21

21:                                               ; preds = %18
  %22 = sext i32 %19 to i64
  store i64 %22, ptr @samp_rate, align 8, !tbaa !16
  br label %23

23:                                               ; preds = %21, %18
  %24 = load i32, ptr @dev_fd, align 4, !tbaa !12
  %25 = icmp sgt i32 %24, 0
  br i1 %25, label %26, label %30

26:                                               ; preds = %23
  %27 = call i32 (i32, i64, ...) @ioctl(i32 noundef %24, i64 noundef 3221508098, ptr noundef nonnull @samp_rate) #26
  %28 = load i64, ptr @samp_rate, align 8, !tbaa !16
  %29 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.8.491, i64 noundef %28)
  br label %30

30:                                               ; preds = %26, %23, %2
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #26
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #26
  ret i32 %6
}

; Function Attrs: nounwind
declare i32 @ioctl(i32 noundef, i64 noundef, ...) local_unnamed_addr #6

; Function Attrs: nofree nounwind
declare noundef i32 @printf(ptr nocapture noundef readonly, ...) local_unnamed_addr #5

; Function Attrs: nounwind uwtable
define dso_local void @audio_term() local_unnamed_addr #4 {
  %1 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %1) #26
  %2 = load i32, ptr @dev_fd, align 4, !tbaa !12
  %3 = icmp sgt i32 %2, -1
  br i1 %3, label %4, label %8

4:                                                ; preds = %0
  %5 = call i32 (i32, i64, ...) @ioctl(i32 noundef %2, i64 noundef 20481, ptr noundef nonnull %1) #26
  %6 = load i32, ptr @dev_fd, align 4, !tbaa !12
  %7 = call i32 @close(i32 noundef %6) #26
  store i32 -1, ptr @dev_fd, align 4, !tbaa !12
  br label %8

8:                                                ; preds = %4, %0
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %1) #26
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @audio_play(i32 noundef %0, ptr nocapture noundef readonly %1) local_unnamed_addr #4 {
  %3 = icmp sgt i32 %0, 0
  br i1 %3, label %4, label %32

4:                                                ; preds = %2
  %5 = zext nneg i32 %0 to i64
  %6 = tail call noalias ptr @malloc(i64 noundef %5) #29
  %7 = icmp eq ptr %6, null
  br i1 %7, label %10, label %8

8:                                                ; preds = %4
  %9 = zext nneg i32 %0 to i64
  br label %13

10:                                               ; preds = %4
  %11 = load ptr, ptr @stderr, align 8, !tbaa !14
  %12 = tail call i64 @fwrite(ptr nonnull @.str.9.492, i64 41, i64 1, ptr %11) #28
  tail call void @exit(i32 noundef 3) #30
  unreachable

13:                                               ; preds = %13, %8
  %14 = phi i64 [ 0, %8 ], [ %22, %13 ]
  %15 = getelementptr inbounds i16, ptr %1, i64 %14
  %16 = load i16, ptr %15, align 2, !tbaa !18
  %17 = sext i16 %16 to i32
  %18 = add nsw i32 %17, -32768
  %19 = sdiv i32 %18, 256
  %20 = trunc i32 %19 to i8
  %21 = getelementptr inbounds i8, ptr %6, i64 %14
  store i8 %20, ptr %21, align 1, !tbaa !7
  %22 = add nuw nsw i64 %14, 1
  %23 = icmp eq i64 %22, %9
  br i1 %23, label %24, label %13, !llvm.loop !96

24:                                               ; preds = %13
  %25 = load i32, ptr @dev_fd, align 4, !tbaa !12
  %26 = icmp sgt i32 %25, -1
  br i1 %26, label %27, label %31

27:                                               ; preds = %24
  %28 = tail call i64 @write(i32 noundef %25, ptr noundef nonnull %6, i64 noundef %5) #26
  %29 = icmp eq i64 %28, %5
  br i1 %29, label %31, label %30

30:                                               ; preds = %27
  tail call void @perror(ptr noundef nonnull @.str.10.493) #28
  br label %31

31:                                               ; preds = %30, %27, %24
  tail call void @free(ptr noundef %6) #26
  br label %32

32:                                               ; preds = %31, %2
  ret void
}

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr nocapture noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #17

; Function Attrs: noreturn nounwind
declare void @exit(i32 noundef) local_unnamed_addr #11

; Function Attrs: nofree nounwind uwtable
define dso_local void @show_parms(ptr nocapture noundef readnone %0, ptr nocapture noundef readonly %1) local_unnamed_addr #0 {
  %3 = load i32, ptr @show_parms.names, align 4, !tbaa !12
  %4 = add nsw i32 %3, 1
  store i32 %4, ptr @show_parms.names, align 4, !tbaa !12
  %5 = and i32 %3, 63
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %16

7:                                                ; preds = %7, %2
  %8 = phi i64 [ %12, %7 ], [ 0, %2 ]
  %9 = getelementptr inbounds [40 x ptr], ptr @par_name, i64 0, i64 %8
  %10 = load ptr, ptr %9, align 8, !tbaa !14
  %11 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.41.535, ptr noundef %10)
  %12 = add nuw nsw i64 %8, 1
  %13 = icmp eq i64 %12, 40
  br i1 %13, label %14, label %7, !llvm.loop !97

14:                                               ; preds = %7
  %15 = tail call i32 @putchar(i32 10)
  br label %16

16:                                               ; preds = %14, %2
  br label %17

17:                                               ; preds = %17, %16
  %18 = phi i64 [ %26, %17 ], [ 0, %16 ]
  %19 = getelementptr inbounds [40 x ptr], ptr @par_name, i64 0, i64 %18
  %20 = load ptr, ptr %19, align 8, !tbaa !14
  %21 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %20) #27
  %22 = trunc i64 %21 to i32
  %23 = getelementptr inbounds i32, ptr %1, i64 %18
  %24 = load i32, ptr %23, align 4, !tbaa !12
  %25 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.43.536, i32 noundef %22, i32 noundef %24)
  %26 = add nuw nsw i64 %18, 1
  %27 = icmp eq i64 %26, 40
  br i1 %27, label %28, label %17, !llvm.loop !98

28:                                               ; preds = %17
  %29 = tail call i32 @putchar(i32 10)
  ret void
}

; Function Attrs: nofree nounwind
declare noundef i32 @putchar(i32 noundef) local_unnamed_addr #17

; Function Attrs: nofree nounwind uwtable
define dso_local void @parwave(ptr nocapture noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef writeonly %2) local_unnamed_addr #0 {
  %4 = load i64, ptr %1, align 8, !tbaa !40
  store i64 %4, ptr @F0hz10, align 8, !tbaa !16
  %5 = getelementptr inbounds %struct.klatt_frame_t, ptr %1, i64 0, i32 1
  %6 = load i64, ptr %5, align 8, !tbaa !76
  %7 = tail call i64 @llvm.smax.i64(i64 %6, i64 7)
  %8 = add nsw i64 %7, -7
  store i64 %8, ptr @AVdb, align 8
  %9 = getelementptr inbounds %struct.klatt_frame_t, ptr %1, i64 0, i32 18
  %10 = load i64, ptr %9, align 8, !tbaa !79
  %11 = icmp slt i64 %10, 0
  br i1 %11, label %20, label %12

12:                                               ; preds = %3
  %13 = icmp sgt i64 %10, 87
  br i1 %13, label %14, label %20

14:                                               ; preds = %12
  %15 = getelementptr inbounds %struct.klatt_global_t, ptr %0, i64 0, i32 1
  %16 = load i32, ptr %15, align 4, !tbaa !32
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %14
  %19 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.44.539, i64 noundef %10)
  br label %20

20:                                               ; preds = %18, %14, %12, %3
  %21 = phi i64 [ %10, %12 ], [ 0, %3 ], [ 87, %18 ], [ 87, %14 ]
  %22 = getelementptr inbounds [88 x float], ptr @amptable, i64 0, i64 %21
  %23 = load float, ptr %22, align 4, !tbaa !73
  %24 = fpext float %23 to double
  %25 = fmul double %24, 1.000000e-03
  %26 = fptrunc double %25 to float
  %27 = fpext float %26 to double
  %28 = fmul double %27, 5.000000e-02
  %29 = fptrunc double %28 to float
  store float %29, ptr @amp_aspir, align 4, !tbaa !73
  %30 = getelementptr inbounds %struct.klatt_frame_t, ptr %1, i64 0, i32 22
  %31 = load i64, ptr %30, align 8, !tbaa !77
  %32 = icmp slt i64 %31, 0
  br i1 %32, label %41, label %33

33:                                               ; preds = %20
  %34 = icmp sgt i64 %31, 87
  br i1 %34, label %35, label %41

35:                                               ; preds = %33
  %36 = getelementptr inbounds %struct.klatt_global_t, ptr %0, i64 0, i32 1
  %37 = load i32, ptr %36, align 4, !tbaa !32
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %39, label %41

39:                                               ; preds = %35
  %40 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.44.539, i64 noundef %31)
  br label %41

41:                                               ; preds = %39, %35, %33, %20
  %42 = phi i64 [ %31, %33 ], [ 0, %20 ], [ 87, %39 ], [ 87, %35 ]
  %43 = getelementptr inbounds [88 x float], ptr @amptable, i64 0, i64 %42
  %44 = load float, ptr %43, align 4, !tbaa !73
  %45 = fpext float %44 to double
  %46 = fmul double %45, 1.000000e-03
  %47 = fptrunc double %46 to float
  %48 = fmul float %47, 2.500000e-01
  store float %48, ptr @amp_frica, align 4, !tbaa !73
  %49 = getelementptr inbounds %struct.klatt_frame_t, ptr %1, i64 0, i32 23
  %50 = load i64, ptr %49, align 8, !tbaa !99
  store i64 %50, ptr @Kskew, align 8, !tbaa !16
  %51 = getelementptr inbounds %struct.klatt_frame_t, ptr %1, i64 0, i32 38
  %52 = load i64, ptr %51, align 8, !tbaa !75
  %53 = icmp sgt i64 %52, 87
  br i1 %53, label %54, label %60

54:                                               ; preds = %41
  %55 = getelementptr inbounds %struct.klatt_global_t, ptr %0, i64 0, i32 1
  %56 = load i32, ptr %55, align 4, !tbaa !32
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %58, label %60

58:                                               ; preds = %54
  %59 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.44.539, i64 noundef %52)
  br label %60

60:                                               ; preds = %58, %54, %41
  %61 = getelementptr inbounds %struct.klatt_frame_t, ptr %1, i64 0, i32 24
  %62 = load i64, ptr %61, align 8, !tbaa !87
  %63 = icmp slt i64 %62, 0
  br i1 %63, label %72, label %64

64:                                               ; preds = %60
  %65 = icmp sgt i64 %62, 87
  br i1 %65, label %66, label %72

66:                                               ; preds = %64
  %67 = getelementptr inbounds %struct.klatt_global_t, ptr %0, i64 0, i32 1
  %68 = load i32, ptr %67, align 4, !tbaa !32
  %69 = icmp eq i32 %68, 0
  br i1 %69, label %70, label %72

70:                                               ; preds = %66
  %71 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.44.539, i64 noundef %62)
  br label %72

72:                                               ; preds = %70, %66, %64, %60
  %73 = phi i64 [ %62, %64 ], [ 0, %60 ], [ 87, %70 ], [ 87, %66 ]
  %74 = getelementptr inbounds [88 x float], ptr @amptable, i64 0, i64 %73
  %75 = load float, ptr %74, align 4, !tbaa !73
  %76 = fpext float %75 to double
  %77 = fmul double %76, 1.000000e-03
  %78 = fptrunc double %77 to float
  %79 = getelementptr inbounds %struct.klatt_frame_t, ptr %1, i64 0, i32 26
  %80 = load i64, ptr %79, align 8, !tbaa !88
  %81 = icmp slt i64 %80, 0
  br i1 %81, label %90, label %82

82:                                               ; preds = %72
  %83 = icmp sgt i64 %80, 87
  br i1 %83, label %84, label %90

84:                                               ; preds = %82
  %85 = getelementptr inbounds %struct.klatt_global_t, ptr %0, i64 0, i32 1
  %86 = load i32, ptr %85, align 4, !tbaa !32
  %87 = icmp eq i32 %86, 0
  br i1 %87, label %88, label %90

88:                                               ; preds = %84
  %89 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.44.539, i64 noundef %80)
  br label %90

90:                                               ; preds = %88, %84, %82, %72
  %91 = phi i64 [ %80, %82 ], [ 0, %72 ], [ 87, %88 ], [ 87, %84 ]
  %92 = getelementptr inbounds [88 x float], ptr @amptable, i64 0, i64 %91
  %93 = load float, ptr %92, align 4, !tbaa !73
  %94 = fpext float %93 to double
  %95 = fmul double %94, 1.000000e-03
  %96 = fptrunc double %95 to float
  %97 = getelementptr inbounds %struct.klatt_frame_t, ptr %1, i64 0, i32 28
  %98 = load i64, ptr %97, align 8, !tbaa !89
  %99 = icmp slt i64 %98, 0
  br i1 %99, label %108, label %100

100:                                              ; preds = %90
  %101 = icmp sgt i64 %98, 87
  br i1 %101, label %102, label %108

102:                                              ; preds = %100
  %103 = getelementptr inbounds %struct.klatt_global_t, ptr %0, i64 0, i32 1
  %104 = load i32, ptr %103, align 4, !tbaa !32
  %105 = icmp eq i32 %104, 0
  br i1 %105, label %106, label %108

106:                                              ; preds = %102
  %107 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.44.539, i64 noundef %98)
  br label %108

108:                                              ; preds = %106, %102, %100, %90
  %109 = phi i64 [ %98, %100 ], [ 0, %90 ], [ 87, %106 ], [ 87, %102 ]
  %110 = getelementptr inbounds [88 x float], ptr @amptable, i64 0, i64 %109
  %111 = load float, ptr %110, align 4, !tbaa !73
  %112 = fpext float %111 to double
  %113 = fmul double %112, 1.000000e-03
  %114 = fptrunc double %113 to float
  %115 = getelementptr inbounds %struct.klatt_frame_t, ptr %1, i64 0, i32 30
  %116 = load i64, ptr %115, align 8, !tbaa !90
  %117 = icmp slt i64 %116, 0
  br i1 %117, label %126, label %118

118:                                              ; preds = %108
  %119 = icmp sgt i64 %116, 87
  br i1 %119, label %120, label %126

120:                                              ; preds = %118
  %121 = getelementptr inbounds %struct.klatt_global_t, ptr %0, i64 0, i32 1
  %122 = load i32, ptr %121, align 4, !tbaa !32
  %123 = icmp eq i32 %122, 0
  br i1 %123, label %124, label %126

124:                                              ; preds = %120
  %125 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.44.539, i64 noundef %116)
  br label %126

126:                                              ; preds = %124, %120, %118, %108
  %127 = phi i64 [ %116, %118 ], [ 0, %108 ], [ 87, %124 ], [ 87, %120 ]
  %128 = getelementptr inbounds [88 x float], ptr @amptable, i64 0, i64 %127
  %129 = load float, ptr %128, align 4, !tbaa !73
  %130 = fpext float %129 to double
  %131 = fmul double %130, 1.000000e-03
  %132 = fptrunc double %131 to float
  %133 = getelementptr inbounds %struct.klatt_frame_t, ptr %1, i64 0, i32 32
  %134 = load i64, ptr %133, align 8, !tbaa !85
  %135 = icmp slt i64 %134, 0
  br i1 %135, label %144, label %136

136:                                              ; preds = %126
  %137 = icmp sgt i64 %134, 87
  br i1 %137, label %138, label %144

138:                                              ; preds = %136
  %139 = getelementptr inbounds %struct.klatt_global_t, ptr %0, i64 0, i32 1
  %140 = load i32, ptr %139, align 4, !tbaa !32
  %141 = icmp eq i32 %140, 0
  br i1 %141, label %142, label %144

142:                                              ; preds = %138
  %143 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.44.539, i64 noundef %134)
  br label %144

144:                                              ; preds = %142, %138, %136, %126
  %145 = phi i64 [ %134, %136 ], [ 0, %126 ], [ 87, %142 ], [ 87, %138 ]
  %146 = getelementptr inbounds [88 x float], ptr @amptable, i64 0, i64 %145
  %147 = load float, ptr %146, align 4, !tbaa !73
  %148 = fpext float %147 to double
  %149 = fmul double %148, 1.000000e-03
  %150 = fptrunc double %149 to float
  %151 = getelementptr inbounds %struct.klatt_frame_t, ptr %1, i64 0, i32 34
  %152 = load i64, ptr %151, align 8, !tbaa !86
  %153 = icmp slt i64 %152, 0
  br i1 %153, label %162, label %154

154:                                              ; preds = %144
  %155 = icmp sgt i64 %152, 87
  br i1 %155, label %156, label %162

156:                                              ; preds = %154
  %157 = getelementptr inbounds %struct.klatt_global_t, ptr %0, i64 0, i32 1
  %158 = load i32, ptr %157, align 4, !tbaa !32
  %159 = icmp eq i32 %158, 0
  br i1 %159, label %160, label %162

160:                                              ; preds = %156
  %161 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.44.539, i64 noundef %152)
  br label %162

162:                                              ; preds = %160, %156, %154, %144
  %163 = phi i64 [ %152, %154 ], [ 0, %144 ], [ 87, %160 ], [ 87, %156 ]
  %164 = getelementptr inbounds [88 x float], ptr @amptable, i64 0, i64 %163
  %165 = load float, ptr %164, align 4, !tbaa !73
  %166 = fpext float %165 to double
  %167 = fmul double %166, 1.000000e-03
  %168 = fptrunc double %167 to float
  %169 = getelementptr inbounds %struct.klatt_frame_t, ptr %1, i64 0, i32 36
  %170 = load i64, ptr %169, align 8, !tbaa !100
  %171 = icmp sgt i64 %170, 87
  br i1 %171, label %172, label %178

172:                                              ; preds = %162
  %173 = getelementptr inbounds %struct.klatt_global_t, ptr %0, i64 0, i32 1
  %174 = load i32, ptr %173, align 4, !tbaa !32
  %175 = icmp eq i32 %174, 0
  br i1 %175, label %176, label %178

176:                                              ; preds = %172
  %177 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.44.539, i64 noundef %170)
  br label %178

178:                                              ; preds = %176, %172, %162
  %179 = getelementptr inbounds %struct.klatt_frame_t, ptr %1, i64 0, i32 37
  %180 = load i64, ptr %179, align 8, !tbaa !84
  %181 = icmp slt i64 %180, 0
  br i1 %181, label %190, label %182

182:                                              ; preds = %178
  %183 = icmp sgt i64 %180, 87
  br i1 %183, label %184, label %190

184:                                              ; preds = %182
  %185 = getelementptr inbounds %struct.klatt_global_t, ptr %0, i64 0, i32 1
  %186 = load i32, ptr %185, align 4, !tbaa !32
  %187 = icmp eq i32 %186, 0
  br i1 %187, label %188, label %190

188:                                              ; preds = %184
  %189 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.44.539, i64 noundef %180)
  br label %190

190:                                              ; preds = %188, %184, %182, %178
  %191 = phi i64 [ %180, %182 ], [ 0, %178 ], [ 87, %188 ], [ 87, %184 ]
  %192 = getelementptr inbounds [88 x float], ptr @amptable, i64 0, i64 %191
  %193 = load float, ptr %192, align 4, !tbaa !73
  %194 = fpext float %193 to double
  %195 = fmul double %194, 1.000000e-03
  %196 = fptrunc double %195 to float
  %197 = fpext float %196 to double
  %198 = fmul double %197, 5.000000e-02
  %199 = fptrunc double %198 to float
  store float %199, ptr @amp_bypas, align 4, !tbaa !73
  %200 = getelementptr inbounds %struct.klatt_global_t, ptr %0, i64 0, i32 5
  %201 = load i64, ptr %200, align 8, !tbaa !36
  %202 = icmp sgt i64 %201, 7
  br i1 %202, label %203, label %230

203:                                              ; preds = %190
  %204 = getelementptr inbounds %struct.klatt_global_t, ptr %0, i64 0, i32 4
  %205 = load i64, ptr %204, align 8, !tbaa !30
  %206 = icmp sgt i64 %205, 15999
  br i1 %206, label %207, label %229

207:                                              ; preds = %203
  %208 = load float, ptr @minus_pi_t, align 4, !tbaa !73
  %209 = fmul float %208, 6.000000e+02
  %210 = fpext float %209 to double
  %211 = tail call double @exp(double noundef %210) #26
  %212 = fptrunc double %211 to float
  %213 = fneg float %212
  %214 = fmul float %213, %212
  store float %214, ptr @r8c.2, align 8, !tbaa !101
  %215 = load float, ptr @two_pi_t, align 4, !tbaa !73
  %216 = fmul float %215, 7.500000e+03
  %217 = fpext float %216 to double
  %218 = fpext float %212 to double
  %219 = tail call double @cos(double noundef %217) #26
  %220 = fmul double %219, %218
  %221 = fmul double %220, 2.000000e+00
  %222 = fptrunc double %221 to float
  store float %222, ptr @r8c.1, align 8, !tbaa !103
  %223 = fpext float %222 to double
  %224 = fsub double 1.000000e+00, %223
  %225 = load float, ptr @r8c.2, align 8, !tbaa !101
  %226 = fpext float %225 to double
  %227 = fsub double %224, %226
  %228 = fptrunc double %227 to float
  store float %228, ptr @r8c.0, align 8, !tbaa !104
  br label %230

229:                                              ; preds = %203
  store i64 6, ptr %200, align 8, !tbaa !36
  br label %230

230:                                              ; preds = %229, %207, %190
  %231 = load i64, ptr %200, align 8, !tbaa !36
  %232 = icmp sgt i64 %231, 6
  br i1 %232, label %233, label %260

233:                                              ; preds = %230
  %234 = getelementptr inbounds %struct.klatt_global_t, ptr %0, i64 0, i32 4
  %235 = load i64, ptr %234, align 8, !tbaa !30
  %236 = icmp sgt i64 %235, 15999
  br i1 %236, label %237, label %259

237:                                              ; preds = %233
  %238 = load float, ptr @minus_pi_t, align 4, !tbaa !73
  %239 = fmul float %238, 5.000000e+02
  %240 = fpext float %239 to double
  %241 = tail call double @exp(double noundef %240) #26
  %242 = fptrunc double %241 to float
  %243 = fneg float %242
  %244 = fmul float %243, %242
  store float %244, ptr @r7c.2, align 8, !tbaa !101
  %245 = load float, ptr @two_pi_t, align 4, !tbaa !73
  %246 = fmul float %245, 6.500000e+03
  %247 = fpext float %246 to double
  %248 = fpext float %242 to double
  %249 = tail call double @cos(double noundef %247) #26
  %250 = fmul double %249, %248
  %251 = fmul double %250, 2.000000e+00
  %252 = fptrunc double %251 to float
  store float %252, ptr @r7c.1, align 8, !tbaa !103
  %253 = fpext float %252 to double
  %254 = fsub double 1.000000e+00, %253
  %255 = load float, ptr @r7c.2, align 8, !tbaa !101
  %256 = fpext float %255 to double
  %257 = fsub double %254, %256
  %258 = fptrunc double %257 to float
  store float %258, ptr @r7c.0, align 8, !tbaa !104
  br label %260

259:                                              ; preds = %233
  store i64 6, ptr %200, align 8, !tbaa !36
  br label %260

260:                                              ; preds = %259, %237, %230
  %261 = load i64, ptr %200, align 8, !tbaa !36
  %262 = icmp sgt i64 %261, 5
  br i1 %262, label %263, label %291

263:                                              ; preds = %260
  %264 = getelementptr inbounds %struct.klatt_frame_t, ptr %1, i64 0, i32 12
  %265 = load i64, ptr %264, align 8, !tbaa !105
  %266 = getelementptr inbounds %struct.klatt_frame_t, ptr %1, i64 0, i32 13
  %267 = load i64, ptr %266, align 8, !tbaa !106
  %268 = load float, ptr @minus_pi_t, align 4, !tbaa !73
  %269 = sitofp i64 %267 to float
  %270 = fmul float %268, %269
  %271 = fpext float %270 to double
  %272 = tail call double @exp(double noundef %271) #26
  %273 = fptrunc double %272 to float
  %274 = fneg float %273
  %275 = fmul float %274, %273
  store float %275, ptr @r6c.2, align 8, !tbaa !101
  %276 = load float, ptr @two_pi_t, align 4, !tbaa !73
  %277 = sitofp i64 %265 to float
  %278 = fmul float %276, %277
  %279 = fpext float %278 to double
  %280 = fpext float %273 to double
  %281 = tail call double @cos(double noundef %279) #26
  %282 = fmul double %281, %280
  %283 = fmul double %282, 2.000000e+00
  %284 = fptrunc double %283 to float
  store float %284, ptr @r6c.1, align 8, !tbaa !103
  %285 = fpext float %284 to double
  %286 = fsub double 1.000000e+00, %285
  %287 = load float, ptr @r6c.2, align 8, !tbaa !101
  %288 = fpext float %287 to double
  %289 = fsub double %286, %288
  %290 = fptrunc double %289 to float
  store float %290, ptr @r6c.0, align 8, !tbaa !104
  br label %291

291:                                              ; preds = %263, %260
  %292 = load i64, ptr %200, align 8, !tbaa !36
  %293 = icmp sgt i64 %292, 4
  br i1 %293, label %294, label %322

294:                                              ; preds = %291
  %295 = getelementptr inbounds %struct.klatt_frame_t, ptr %1, i64 0, i32 10
  %296 = load i64, ptr %295, align 8, !tbaa !107
  %297 = getelementptr inbounds %struct.klatt_frame_t, ptr %1, i64 0, i32 11
  %298 = load i64, ptr %297, align 8, !tbaa !108
  %299 = load float, ptr @minus_pi_t, align 4, !tbaa !73
  %300 = sitofp i64 %298 to float
  %301 = fmul float %299, %300
  %302 = fpext float %301 to double
  %303 = tail call double @exp(double noundef %302) #26
  %304 = fptrunc double %303 to float
  %305 = fneg float %304
  %306 = fmul float %305, %304
  store float %306, ptr @r5c.2, align 8, !tbaa !101
  %307 = load float, ptr @two_pi_t, align 4, !tbaa !73
  %308 = sitofp i64 %296 to float
  %309 = fmul float %307, %308
  %310 = fpext float %309 to double
  %311 = fpext float %304 to double
  %312 = tail call double @cos(double noundef %310) #26
  %313 = fmul double %312, %311
  %314 = fmul double %313, 2.000000e+00
  %315 = fptrunc double %314 to float
  store float %315, ptr @r5c.1, align 8, !tbaa !103
  %316 = fpext float %315 to double
  %317 = fsub double 1.000000e+00, %316
  %318 = load float, ptr @r5c.2, align 8, !tbaa !101
  %319 = fpext float %318 to double
  %320 = fsub double %317, %319
  %321 = fptrunc double %320 to float
  store float %321, ptr @r5c.0, align 8, !tbaa !104
  br label %322

322:                                              ; preds = %294, %291
  %323 = fpext float %168 to double
  %324 = fmul double %323, 3.000000e-02
  %325 = fptrunc double %324 to float
  %326 = fpext float %150 to double
  %327 = fmul double %326, 2.200000e-02
  %328 = fptrunc double %327 to float
  %329 = fpext float %132 to double
  %330 = fmul double %329, 4.000000e-02
  %331 = fptrunc double %330 to float
  %332 = fpext float %114 to double
  %333 = fmul double %332, 6.000000e-02
  %334 = fptrunc double %333 to float
  %335 = fpext float %96 to double
  %336 = fmul double %335, 1.500000e-01
  %337 = fptrunc double %336 to float
  %338 = fpext float %78 to double
  %339 = fmul double %338, 4.000000e-01
  %340 = fptrunc double %339 to float
  %341 = getelementptr inbounds %struct.klatt_frame_t, ptr %1, i64 0, i32 8
  %342 = load i64, ptr %341, align 8, !tbaa !109
  %343 = getelementptr inbounds %struct.klatt_frame_t, ptr %1, i64 0, i32 9
  %344 = load i64, ptr %343, align 8, !tbaa !110
  %345 = load float, ptr @minus_pi_t, align 4, !tbaa !73
  %346 = sitofp i64 %344 to float
  %347 = fmul float %345, %346
  %348 = fpext float %347 to double
  %349 = tail call double @exp(double noundef %348) #26
  %350 = fptrunc double %349 to float
  %351 = fneg float %350
  %352 = fmul float %351, %350
  store float %352, ptr @r4c.2, align 8, !tbaa !101
  %353 = load float, ptr @two_pi_t, align 4, !tbaa !73
  %354 = sitofp i64 %342 to float
  %355 = fmul float %353, %354
  %356 = fpext float %355 to double
  %357 = fpext float %350 to double
  %358 = tail call double @cos(double noundef %356) #26
  %359 = fmul double %358, %357
  %360 = fmul double %359, 2.000000e+00
  %361 = fptrunc double %360 to float
  store float %361, ptr @r4c.1, align 8, !tbaa !103
  %362 = fpext float %361 to double
  %363 = fsub double 1.000000e+00, %362
  %364 = load float, ptr @r4c.2, align 8, !tbaa !101
  %365 = fpext float %364 to double
  %366 = fsub double %363, %365
  %367 = fptrunc double %366 to float
  store float %367, ptr @r4c.0, align 8, !tbaa !104
  %368 = getelementptr inbounds %struct.klatt_frame_t, ptr %1, i64 0, i32 6
  %369 = load i64, ptr %368, align 8, !tbaa !83
  %370 = getelementptr inbounds %struct.klatt_frame_t, ptr %1, i64 0, i32 7
  %371 = load i64, ptr %370, align 8, !tbaa !51
  %372 = load float, ptr @minus_pi_t, align 4, !tbaa !73
  %373 = sitofp i64 %371 to float
  %374 = fmul float %372, %373
  %375 = fpext float %374 to double
  %376 = tail call double @exp(double noundef %375) #26
  %377 = fptrunc double %376 to float
  %378 = fneg float %377
  %379 = fmul float %378, %377
  store float %379, ptr @r3c.2, align 8, !tbaa !101
  %380 = load float, ptr @two_pi_t, align 4, !tbaa !73
  %381 = sitofp i64 %369 to float
  %382 = fmul float %380, %381
  %383 = fpext float %382 to double
  %384 = fpext float %377 to double
  %385 = tail call double @cos(double noundef %383) #26
  %386 = fmul double %385, %384
  %387 = fmul double %386, 2.000000e+00
  %388 = fptrunc double %387 to float
  store float %388, ptr @r3c.1, align 8, !tbaa !103
  %389 = fpext float %388 to double
  %390 = fsub double 1.000000e+00, %389
  %391 = load float, ptr @r3c.2, align 8, !tbaa !101
  %392 = fpext float %391 to double
  %393 = fsub double %390, %392
  %394 = fptrunc double %393 to float
  store float %394, ptr @r3c.0, align 8, !tbaa !104
  %395 = getelementptr inbounds %struct.klatt_frame_t, ptr %1, i64 0, i32 4
  %396 = load i64, ptr %395, align 8, !tbaa !82
  %397 = getelementptr inbounds %struct.klatt_frame_t, ptr %1, i64 0, i32 5
  %398 = load i64, ptr %397, align 8, !tbaa !49
  %399 = load float, ptr @minus_pi_t, align 4, !tbaa !73
  %400 = sitofp i64 %398 to float
  %401 = fmul float %399, %400
  %402 = fpext float %401 to double
  %403 = tail call double @exp(double noundef %402) #26
  %404 = fptrunc double %403 to float
  %405 = fneg float %404
  %406 = fmul float %405, %404
  store float %406, ptr @r2c.2, align 8, !tbaa !101
  %407 = load float, ptr @two_pi_t, align 4, !tbaa !73
  %408 = sitofp i64 %396 to float
  %409 = fmul float %407, %408
  %410 = fpext float %409 to double
  %411 = fpext float %404 to double
  %412 = tail call double @cos(double noundef %410) #26
  %413 = fmul double %412, %411
  %414 = fmul double %413, 2.000000e+00
  %415 = fptrunc double %414 to float
  store float %415, ptr @r2c.1, align 8, !tbaa !103
  %416 = fpext float %415 to double
  %417 = fsub double 1.000000e+00, %416
  %418 = load float, ptr @r2c.2, align 8, !tbaa !101
  %419 = fpext float %418 to double
  %420 = fsub double %417, %419
  %421 = fptrunc double %420 to float
  store float %421, ptr @r2c.0, align 8, !tbaa !104
  %422 = getelementptr inbounds %struct.klatt_frame_t, ptr %1, i64 0, i32 2
  %423 = load i64, ptr %422, align 8, !tbaa !81
  %424 = getelementptr inbounds %struct.klatt_frame_t, ptr %1, i64 0, i32 3
  %425 = load i64, ptr %424, align 8, !tbaa !47
  %426 = load float, ptr @minus_pi_t, align 4, !tbaa !73
  %427 = sitofp i64 %425 to float
  %428 = fmul float %426, %427
  %429 = fpext float %428 to double
  %430 = tail call double @exp(double noundef %429) #26
  %431 = fptrunc double %430 to float
  %432 = fneg float %431
  %433 = fmul float %432, %431
  store float %433, ptr @r1c.2, align 8, !tbaa !101
  %434 = load float, ptr @two_pi_t, align 4, !tbaa !73
  %435 = sitofp i64 %423 to float
  %436 = fmul float %434, %435
  %437 = fpext float %436 to double
  %438 = fpext float %431 to double
  %439 = tail call double @cos(double noundef %437) #26
  %440 = fmul double %439, %438
  %441 = fmul double %440, 2.000000e+00
  %442 = fptrunc double %441 to float
  store float %442, ptr @r1c.1, align 8, !tbaa !103
  %443 = fpext float %442 to double
  %444 = fsub double 1.000000e+00, %443
  %445 = load float, ptr @r1c.2, align 8, !tbaa !101
  %446 = fpext float %445 to double
  %447 = fsub double %444, %446
  %448 = fptrunc double %447 to float
  store float %448, ptr @r1c.0, align 8, !tbaa !104
  %449 = getelementptr inbounds %struct.klatt_frame_t, ptr %1, i64 0, i32 16
  %450 = load i64, ptr %449, align 8, !tbaa !46
  %451 = getelementptr inbounds %struct.klatt_frame_t, ptr %1, i64 0, i32 17
  %452 = load i64, ptr %451, align 8, !tbaa !111
  %453 = load float, ptr @minus_pi_t, align 4, !tbaa !73
  %454 = sitofp i64 %452 to float
  %455 = fmul float %453, %454
  %456 = fpext float %455 to double
  %457 = tail call double @exp(double noundef %456) #26
  %458 = fptrunc double %457 to float
  %459 = fneg float %458
  %460 = fmul float %459, %458
  store float %460, ptr @rnpc.2, align 8, !tbaa !101
  %461 = load float, ptr @two_pi_t, align 4, !tbaa !73
  %462 = sitofp i64 %450 to float
  %463 = fmul float %461, %462
  %464 = fpext float %463 to double
  %465 = fpext float %458 to double
  %466 = tail call double @cos(double noundef %464) #26
  %467 = fmul double %466, %465
  %468 = fmul double %467, 2.000000e+00
  %469 = fptrunc double %468 to float
  store float %469, ptr @rnpc.1, align 8, !tbaa !103
  %470 = fpext float %469 to double
  %471 = fsub double 1.000000e+00, %470
  %472 = load float, ptr @rnpc.2, align 8, !tbaa !101
  %473 = fpext float %472 to double
  %474 = fsub double %471, %473
  %475 = fptrunc double %474 to float
  store float %475, ptr @rnpc.0, align 8, !tbaa !104
  %476 = getelementptr inbounds %struct.klatt_frame_t, ptr %1, i64 0, i32 14
  %477 = load i64, ptr %476, align 8, !tbaa !78
  %478 = getelementptr inbounds %struct.klatt_frame_t, ptr %1, i64 0, i32 15
  %479 = load i64, ptr %478, align 8, !tbaa !112
  %480 = load float, ptr @minus_pi_t, align 4, !tbaa !73
  %481 = sitofp i64 %479 to float
  %482 = fmul float %480, %481
  %483 = fpext float %482 to double
  %484 = tail call double @exp(double noundef %483) #26
  %485 = fptrunc double %484 to float
  %486 = fneg float %485
  %487 = fmul float %486, %485
  store float %487, ptr @rnz.2, align 8, !tbaa !101
  %488 = load float, ptr @two_pi_t, align 4, !tbaa !73
  %489 = sitofp i64 %477 to float
  %490 = fmul float %488, %489
  %491 = fpext float %490 to double
  %492 = fpext float %485 to double
  %493 = tail call double @cos(double noundef %491) #26
  %494 = fmul double %493, %492
  %495 = fmul double %494, 2.000000e+00
  %496 = fptrunc double %495 to float
  store float %496, ptr @rnz.1, align 8, !tbaa !103
  %497 = fpext float %496 to double
  %498 = fsub double 1.000000e+00, %497
  %499 = load float, ptr @rnz.2, align 8, !tbaa !101
  %500 = fpext float %499 to double
  %501 = fsub double %498, %500
  %502 = fptrunc double %501 to float
  %503 = fdiv float 1.000000e+00, %502
  store float %503, ptr @rnz.0, align 8, !tbaa !104
  %504 = fneg float %503
  %505 = fmul float %496, %504
  store float %505, ptr @rnz.1, align 8, !tbaa !103
  %506 = fmul float %499, %504
  store float %506, ptr @rnz.2, align 8, !tbaa !101
  %507 = load i64, ptr %422, align 8, !tbaa !81
  %508 = getelementptr inbounds %struct.klatt_frame_t, ptr %1, i64 0, i32 25
  %509 = load i64, ptr %508, align 8, !tbaa !48
  %510 = load float, ptr @minus_pi_t, align 4, !tbaa !73
  %511 = sitofp i64 %509 to float
  %512 = fmul float %510, %511
  %513 = fpext float %512 to double
  %514 = tail call double @exp(double noundef %513) #26
  %515 = fptrunc double %514 to float
  %516 = fneg float %515
  %517 = fmul float %516, %515
  store float %517, ptr @r1p.2, align 8, !tbaa !101
  %518 = load float, ptr @two_pi_t, align 4, !tbaa !73
  %519 = sitofp i64 %507 to float
  %520 = fmul float %518, %519
  %521 = fpext float %520 to double
  %522 = fpext float %515 to double
  %523 = tail call double @cos(double noundef %521) #26
  %524 = fmul double %523, %522
  %525 = fmul double %524, 2.000000e+00
  %526 = fptrunc double %525 to float
  store float %526, ptr @r1p.1, align 8, !tbaa !103
  %527 = fpext float %526 to double
  %528 = fsub double 1.000000e+00, %527
  %529 = load float, ptr @r1p.2, align 8, !tbaa !101
  %530 = fpext float %529 to double
  %531 = fsub double %528, %530
  %532 = fptrunc double %531 to float
  %533 = fmul float %340, %532
  store float %533, ptr @r1p.0, align 8, !tbaa !104
  %534 = load i64, ptr %449, align 8, !tbaa !46
  %535 = load i64, ptr %451, align 8, !tbaa !111
  %536 = load float, ptr @minus_pi_t, align 4, !tbaa !73
  %537 = sitofp i64 %535 to float
  %538 = fmul float %536, %537
  %539 = fpext float %538 to double
  %540 = tail call double @exp(double noundef %539) #26
  %541 = load float, ptr @two_pi_t, align 4, !tbaa !73
  %542 = sitofp i64 %534 to float
  %543 = fmul float %541, %542
  %544 = fpext float %543 to double
  %545 = tail call double @cos(double noundef %544) #26
  %546 = load i64, ptr %395, align 8, !tbaa !82
  %547 = getelementptr inbounds %struct.klatt_frame_t, ptr %1, i64 0, i32 27
  %548 = load i64, ptr %547, align 8, !tbaa !50
  %549 = load float, ptr @minus_pi_t, align 4, !tbaa !73
  %550 = sitofp i64 %548 to float
  %551 = fmul float %549, %550
  %552 = fpext float %551 to double
  %553 = tail call double @exp(double noundef %552) #26
  %554 = fptrunc double %553 to float
  %555 = fneg float %554
  %556 = fmul float %555, %554
  store float %556, ptr @r2p.2, align 8, !tbaa !101
  %557 = load float, ptr @two_pi_t, align 4, !tbaa !73
  %558 = sitofp i64 %546 to float
  %559 = fmul float %557, %558
  %560 = fpext float %559 to double
  %561 = fpext float %554 to double
  %562 = tail call double @cos(double noundef %560) #26
  %563 = fmul double %562, %561
  %564 = fmul double %563, 2.000000e+00
  %565 = fptrunc double %564 to float
  store float %565, ptr @r2p.1, align 8, !tbaa !103
  %566 = fpext float %565 to double
  %567 = fsub double 1.000000e+00, %566
  %568 = load float, ptr @r2p.2, align 8, !tbaa !101
  %569 = fpext float %568 to double
  %570 = fsub double %567, %569
  %571 = fptrunc double %570 to float
  %572 = fmul float %337, %571
  store float %572, ptr @r2p.0, align 8, !tbaa !104
  %573 = load i64, ptr %368, align 8, !tbaa !83
  %574 = getelementptr inbounds %struct.klatt_frame_t, ptr %1, i64 0, i32 29
  %575 = load i64, ptr %574, align 8, !tbaa !52
  %576 = load float, ptr @minus_pi_t, align 4, !tbaa !73
  %577 = sitofp i64 %575 to float
  %578 = fmul float %576, %577
  %579 = fpext float %578 to double
  %580 = tail call double @exp(double noundef %579) #26
  %581 = fptrunc double %580 to float
  %582 = fneg float %581
  %583 = fmul float %582, %581
  store float %583, ptr @r3p.2, align 8, !tbaa !101
  %584 = load float, ptr @two_pi_t, align 4, !tbaa !73
  %585 = sitofp i64 %573 to float
  %586 = fmul float %584, %585
  %587 = fpext float %586 to double
  %588 = fpext float %581 to double
  %589 = tail call double @cos(double noundef %587) #26
  %590 = fmul double %589, %588
  %591 = fmul double %590, 2.000000e+00
  %592 = fptrunc double %591 to float
  store float %592, ptr @r3p.1, align 8, !tbaa !103
  %593 = fpext float %592 to double
  %594 = fsub double 1.000000e+00, %593
  %595 = load float, ptr @r3p.2, align 8, !tbaa !101
  %596 = fpext float %595 to double
  %597 = fsub double %594, %596
  %598 = fptrunc double %597 to float
  %599 = fmul float %334, %598
  store float %599, ptr @r3p.0, align 8, !tbaa !104
  %600 = load i64, ptr %341, align 8, !tbaa !109
  %601 = getelementptr inbounds %struct.klatt_frame_t, ptr %1, i64 0, i32 31
  %602 = load i64, ptr %601, align 8, !tbaa !53
  %603 = load float, ptr @minus_pi_t, align 4, !tbaa !73
  %604 = sitofp i64 %602 to float
  %605 = fmul float %603, %604
  %606 = fpext float %605 to double
  %607 = tail call double @exp(double noundef %606) #26
  %608 = fptrunc double %607 to float
  %609 = fneg float %608
  %610 = fmul float %609, %608
  store float %610, ptr @r4p.2, align 8, !tbaa !101
  %611 = load float, ptr @two_pi_t, align 4, !tbaa !73
  %612 = sitofp i64 %600 to float
  %613 = fmul float %611, %612
  %614 = fpext float %613 to double
  %615 = fpext float %608 to double
  %616 = tail call double @cos(double noundef %614) #26
  %617 = fmul double %616, %615
  %618 = fmul double %617, 2.000000e+00
  %619 = fptrunc double %618 to float
  store float %619, ptr @r4p.1, align 8, !tbaa !103
  %620 = fpext float %619 to double
  %621 = fsub double 1.000000e+00, %620
  %622 = load float, ptr @r4p.2, align 8, !tbaa !101
  %623 = fpext float %622 to double
  %624 = fsub double %621, %623
  %625 = fptrunc double %624 to float
  %626 = fmul float %331, %625
  store float %626, ptr @r4p.0, align 8, !tbaa !104
  %627 = getelementptr inbounds %struct.klatt_frame_t, ptr %1, i64 0, i32 10
  %628 = load i64, ptr %627, align 8, !tbaa !107
  %629 = getelementptr inbounds %struct.klatt_frame_t, ptr %1, i64 0, i32 33
  %630 = load i64, ptr %629, align 8, !tbaa !113
  %631 = load float, ptr @minus_pi_t, align 4, !tbaa !73
  %632 = sitofp i64 %630 to float
  %633 = fmul float %631, %632
  %634 = fpext float %633 to double
  %635 = tail call double @exp(double noundef %634) #26
  %636 = fptrunc double %635 to float
  %637 = fneg float %636
  %638 = fmul float %637, %636
  store float %638, ptr @r5p.2, align 8, !tbaa !101
  %639 = load float, ptr @two_pi_t, align 4, !tbaa !73
  %640 = sitofp i64 %628 to float
  %641 = fmul float %639, %640
  %642 = fpext float %641 to double
  %643 = fpext float %636 to double
  %644 = tail call double @cos(double noundef %642) #26
  %645 = fmul double %644, %643
  %646 = fmul double %645, 2.000000e+00
  %647 = fptrunc double %646 to float
  store float %647, ptr @r5p.1, align 8, !tbaa !103
  %648 = fpext float %647 to double
  %649 = fsub double 1.000000e+00, %648
  %650 = load float, ptr @r5p.2, align 8, !tbaa !101
  %651 = fpext float %650 to double
  %652 = fsub double %649, %651
  %653 = fptrunc double %652 to float
  %654 = fmul float %328, %653
  store float %654, ptr @r5p.0, align 8, !tbaa !104
  %655 = getelementptr inbounds %struct.klatt_frame_t, ptr %1, i64 0, i32 12
  %656 = load i64, ptr %655, align 8, !tbaa !105
  %657 = getelementptr inbounds %struct.klatt_frame_t, ptr %1, i64 0, i32 35
  %658 = load i64, ptr %657, align 8, !tbaa !114
  %659 = load float, ptr @minus_pi_t, align 4, !tbaa !73
  %660 = sitofp i64 %658 to float
  %661 = fmul float %659, %660
  %662 = fpext float %661 to double
  %663 = tail call double @exp(double noundef %662) #26
  %664 = fptrunc double %663 to float
  %665 = fneg float %664
  %666 = fmul float %665, %664
  store float %666, ptr @r6p.2, align 8, !tbaa !101
  %667 = load float, ptr @two_pi_t, align 4, !tbaa !73
  %668 = sitofp i64 %656 to float
  %669 = fmul float %667, %668
  %670 = fpext float %669 to double
  %671 = fpext float %664 to double
  %672 = tail call double @cos(double noundef %670) #26
  %673 = fmul double %672, %671
  %674 = fmul double %673, 2.000000e+00
  %675 = fptrunc double %674 to float
  store float %675, ptr @r6p.1, align 8, !tbaa !103
  %676 = fpext float %675 to double
  %677 = fsub double 1.000000e+00, %676
  %678 = load float, ptr @r6p.2, align 8, !tbaa !101
  %679 = fpext float %678 to double
  %680 = fsub double %677, %679
  %681 = fptrunc double %680 to float
  %682 = fmul float %325, %681
  store float %682, ptr @r6p.0, align 8, !tbaa !104
  %683 = getelementptr inbounds %struct.klatt_frame_t, ptr %1, i64 0, i32 39
  %684 = load i64, ptr %683, align 8, !tbaa !115
  %685 = add nsw i64 %684, -3
  %686 = icmp slt i64 %684, 4
  %687 = select i1 %686, i64 57, i64 %685
  %688 = getelementptr inbounds %struct.klatt_global_t, ptr %0, i64 0, i32 4
  %689 = load i64, ptr %688, align 8, !tbaa !30
  %690 = icmp slt i64 %687, 0
  br i1 %690, label %699, label %691

691:                                              ; preds = %322
  %692 = icmp sgt i64 %687, 87
  br i1 %692, label %693, label %699

693:                                              ; preds = %691
  %694 = getelementptr inbounds %struct.klatt_global_t, ptr %0, i64 0, i32 1
  %695 = load i32, ptr %694, align 4, !tbaa !32
  %696 = icmp eq i32 %695, 0
  br i1 %696, label %697, label %699

697:                                              ; preds = %693
  %698 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.44.539, i64 noundef %687)
  br label %699

699:                                              ; preds = %697, %693, %691, %322
  %700 = phi i64 [ %687, %691 ], [ 0, %322 ], [ 87, %697 ], [ 87, %693 ]
  %701 = getelementptr inbounds [88 x float], ptr @amptable, i64 0, i64 %700
  %702 = load float, ptr %701, align 4, !tbaa !73
  %703 = fpext float %702 to double
  %704 = fmul double %703, 1.000000e-03
  %705 = fptrunc double %704 to float
  %706 = load float, ptr @minus_pi_t, align 4, !tbaa !73
  %707 = sitofp i64 %689 to float
  %708 = fmul float %706, %707
  %709 = fpext float %708 to double
  %710 = tail call double @exp(double noundef %709) #26
  %711 = fptrunc double %710 to float
  %712 = fneg float %711
  %713 = fmul float %712, %711
  store float %713, ptr @rout.2, align 8, !tbaa !101
  %714 = load float, ptr @two_pi_t, align 4, !tbaa !73
  %715 = fmul float %714, 0.000000e+00
  %716 = fpext float %715 to double
  %717 = fpext float %711 to double
  %718 = tail call double @cos(double noundef %716) #26
  %719 = fmul double %718, %717
  %720 = fmul double %719, 2.000000e+00
  %721 = fptrunc double %720 to float
  store float %721, ptr @rout.1, align 8, !tbaa !103
  %722 = fpext float %721 to double
  %723 = fsub double 1.000000e+00, %722
  %724 = load float, ptr @rout.2, align 8, !tbaa !101
  %725 = fpext float %724 to double
  %726 = fsub double %723, %725
  %727 = fptrunc double %726 to float
  %728 = fmul float %705, %727
  store float %728, ptr @rout.0, align 8, !tbaa !104
  %729 = getelementptr inbounds %struct.klatt_global_t, ptr %0, i64 0, i32 2
  %730 = load i32, ptr %729, align 8, !tbaa !34
  %731 = icmp eq i32 %730, 0
  br i1 %731, label %760, label %732

732:                                              ; preds = %699
  %733 = load i32, ptr @time_count, align 4, !tbaa !12
  %734 = add nsw i32 %733, 1
  store i32 %734, ptr @time_count, align 4, !tbaa !12
  %735 = load i64, ptr %1, align 8, !tbaa !40
  %736 = sdiv i64 %735, 10
  %737 = sitofp i32 %730 to double
  %738 = fdiv double %737, 5.000000e+01
  %739 = sitofp i64 %736 to double
  %740 = fdiv double %739, 1.000000e+02
  %741 = sitofp i32 %734 to double
  %742 = fmul double %741, 0x4053F2F91CA1765C
  %743 = tail call double @sin(double noundef %742) #26
  %744 = load i32, ptr @time_count, align 4, !tbaa !12
  %745 = sitofp i32 %744 to double
  %746 = fmul double %745, 0x40464E28AD1D5A02
  %747 = tail call double @sin(double noundef %746) #26
  %748 = load i32, ptr @time_count, align 4, !tbaa !12
  %749 = sitofp i32 %748 to double
  %750 = fmul double %749, 0x403D87EDBD883645
  %751 = tail call double @sin(double noundef %750) #26
  %752 = fmul double %738, %740
  %753 = fadd double %743, %747
  %754 = fadd double %753, %751
  %755 = fmul double %752, %754
  %756 = fmul double %755, 1.000000e+01
  %757 = fptosi double %756 to i64
  %758 = load i64, ptr @F0hz10, align 8, !tbaa !16
  %759 = add nsw i64 %758, %757
  store i64 %759, ptr @F0hz10, align 8, !tbaa !16
  br label %760

760:                                              ; preds = %732, %699
  %761 = getelementptr inbounds %struct.klatt_global_t, ptr %0, i64 0, i32 7
  %762 = load i64, ptr %761, align 8, !tbaa !37
  %763 = icmp sgt i64 %762, 0
  br i1 %763, label %764, label %1217

764:                                              ; preds = %760
  %765 = getelementptr inbounds %struct.klatt_global_t, ptr %0, i64 0, i32 6
  %766 = getelementptr inbounds %struct.klatt_global_t, ptr %0, i64 0, i32 1
  %767 = getelementptr inbounds %struct.klatt_frame_t, ptr %1, i64 0, i32 20
  %768 = getelementptr inbounds %struct.klatt_global_t, ptr %0, i64 0, i32 1
  %769 = getelementptr inbounds %struct.klatt_frame_t, ptr %1, i64 0, i32 19
  %770 = getelementptr inbounds %struct.klatt_global_t, ptr %0, i64 0, i32 1
  %771 = getelementptr inbounds %struct.klatt_global_t, ptr %0, i64 0, i32 1
  %772 = getelementptr inbounds %struct.klatt_global_t, ptr %0, i64 0, i32 1
  %773 = getelementptr inbounds %struct.klatt_frame_t, ptr %1, i64 0, i32 21
  %774 = getelementptr inbounds %struct.klatt_global_t, ptr %0, i64 0, i32 1
  %775 = getelementptr inbounds %struct.klatt_global_t, ptr %0, i64 0, i32 1
  br label %776

776:                                              ; preds = %1210, %764
  %777 = phi ptr [ %2, %764 ], [ %1213, %1210 ]
  %778 = phi i64 [ 0, %764 ], [ %1214, %1210 ]
  %779 = load i64, ptr @parwave.seed, align 8, !tbaa !16
  %780 = mul nuw nsw i64 %779, 1664525
  %781 = add nuw nsw i64 %780, 1
  %782 = and i64 %781, 4294967295
  store i64 %782, ptr @parwave.seed, align 8, !tbaa !16
  %783 = shl nuw i64 %782, 32
  %784 = ashr i64 %783, 50
  %785 = sitofp i64 %784 to double
  %786 = load float, ptr @nlast, align 4, !tbaa !73
  %787 = fpext float %786 to double
  %788 = tail call double @llvm.fmuladd.f64(double %787, double 7.500000e-01, double %785)
  %789 = fptrunc double %788 to float
  store float %789, ptr @nlast, align 4, !tbaa !73
  %790 = load i64, ptr @nper, align 8, !tbaa !16
  %791 = load i64, ptr @nmod, align 8, !tbaa !16
  %792 = fmul float %789, 5.000000e-01
  %793 = load float, ptr @amp_frica, align 4, !tbaa !73
  %794 = icmp eq i64 %778, 0
  br label %795

795:                                              ; preds = %980, %776
  %796 = phi i32 [ 0, %776 ], [ %991, %980 ]
  %797 = load i64, ptr %765, align 8, !tbaa !33
  %798 = icmp eq i64 %797, 1
  %799 = load i64, ptr @nper, align 8, !tbaa !16
  br i1 %798, label %800, label %815

800:                                              ; preds = %795
  %801 = icmp slt i64 %799, 3
  br i1 %801, label %802, label %805

802:                                              ; preds = %800
  %803 = getelementptr inbounds [3 x float], ptr @impulsive_source.doublet, i64 0, i64 %799
  %804 = load float, ptr %803, align 4, !tbaa !73
  br label %805

805:                                              ; preds = %802, %800
  %806 = phi float [ %804, %802 ], [ 0.000000e+00, %800 ]
  store float %806, ptr @vwave, align 4, !tbaa !73
  %807 = load float, ptr @rgl.0, align 8, !tbaa !104
  %808 = load float, ptr @rgl.1, align 8, !tbaa !103
  %809 = load float, ptr @rgl.3, align 8, !tbaa !116
  %810 = fmul float %808, %809
  %811 = tail call float @llvm.fmuladd.f32(float %807, float %806, float %810)
  %812 = load float, ptr @rgl.2, align 8, !tbaa !101
  %813 = load float, ptr @rgl.4, align 8, !tbaa !117
  %814 = tail call float @llvm.fmuladd.f32(float %812, float %813, float %811)
  store float %809, ptr @rgl.4, align 8, !tbaa !117
  store float %814, ptr @rgl.3, align 8, !tbaa !116
  br label %828

815:                                              ; preds = %795
  %816 = load i64, ptr @nopen, align 8, !tbaa !16
  %817 = icmp sgt i64 %816, %799
  br i1 %817, label %818, label %827

818:                                              ; preds = %815
  %819 = load float, ptr @natglot_b, align 4, !tbaa !73
  %820 = load float, ptr @natglot_a, align 4, !tbaa !73
  %821 = fsub float %820, %819
  store float %821, ptr @natglot_a, align 4, !tbaa !73
  %822 = load float, ptr @vwave, align 4, !tbaa !73
  %823 = fadd float %821, %822
  store float %823, ptr @vwave, align 4, !tbaa !73
  %824 = fpext float %823 to double
  %825 = fmul double %824, 2.800000e-02
  %826 = fptrunc double %825 to float
  br label %828

827:                                              ; preds = %815
  store float 0.000000e+00, ptr @vwave, align 4, !tbaa !73
  br label %828

828:                                              ; preds = %827, %818, %805
  %829 = phi float [ %814, %805 ], [ %826, %818 ], [ 0.000000e+00, %827 ]
  %830 = load i64, ptr @nper, align 8, !tbaa !16
  %831 = load i64, ptr @T0, align 8, !tbaa !16
  %832 = icmp slt i64 %830, %831
  br i1 %832, label %980, label %833

833:                                              ; preds = %828
  store i64 0, ptr @nper, align 8, !tbaa !16
  %834 = load i64, ptr @F0hz10, align 8, !tbaa !16
  %835 = icmp sgt i64 %834, 0
  br i1 %835, label %836, label %967

836:                                              ; preds = %833
  %837 = load i64, ptr %688, align 8, !tbaa !30
  %838 = mul nsw i64 %837, 40
  %839 = sdiv i64 %838, %834
  store i64 %839, ptr @T0, align 8, !tbaa !16
  %840 = load i64, ptr @AVdb, align 8, !tbaa !16
  %841 = icmp slt i64 %840, 0
  br i1 %841, label %849, label %842

842:                                              ; preds = %836
  %843 = icmp sgt i64 %840, 87
  br i1 %843, label %844, label %849

844:                                              ; preds = %842
  %845 = load i32, ptr %766, align 4, !tbaa !32
  %846 = icmp eq i32 %845, 0
  br i1 %846, label %847, label %849

847:                                              ; preds = %844
  %848 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.44.539, i64 noundef %840)
  br label %849

849:                                              ; preds = %847, %844, %842, %836
  %850 = phi i64 [ %840, %842 ], [ 0, %836 ], [ 87, %847 ], [ 87, %844 ]
  %851 = getelementptr inbounds [88 x float], ptr @amptable, i64 0, i64 %850
  %852 = load float, ptr %851, align 4, !tbaa !73
  %853 = fpext float %852 to double
  %854 = fmul double %853, 1.000000e-03
  %855 = fptrunc double %854 to float
  store float %855, ptr @amp_voice, align 4, !tbaa !73
  %856 = load i64, ptr @T0, align 8, !tbaa !16
  store i64 %856, ptr @nmod, align 8, !tbaa !16
  %857 = load i64, ptr @AVdb, align 8, !tbaa !16
  %858 = icmp sgt i64 %857, 0
  br i1 %858, label %859, label %861

859:                                              ; preds = %849
  %860 = ashr i64 %856, 1
  store i64 %860, ptr @nmod, align 8, !tbaa !16
  br label %861

861:                                              ; preds = %859, %849
  %862 = load i64, ptr %767, align 8, !tbaa !80
  %863 = icmp slt i64 %862, 0
  br i1 %863, label %871, label %864

864:                                              ; preds = %861
  %865 = icmp sgt i64 %862, 87
  br i1 %865, label %866, label %871

866:                                              ; preds = %864
  %867 = load i32, ptr %768, align 4, !tbaa !32
  %868 = icmp eq i32 %867, 0
  br i1 %868, label %869, label %871

869:                                              ; preds = %866
  %870 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.44.539, i64 noundef %862)
  br label %871

871:                                              ; preds = %869, %866, %864, %861
  %872 = phi i64 [ %862, %864 ], [ 0, %861 ], [ 87, %869 ], [ 87, %866 ]
  %873 = getelementptr inbounds [88 x float], ptr @amptable, i64 0, i64 %872
  %874 = load float, ptr %873, align 4, !tbaa !73
  %875 = fpext float %874 to double
  %876 = fmul double %875, 1.000000e-03
  %877 = fptrunc double %876 to float
  %878 = fpext float %877 to double
  %879 = fmul double %878, 1.000000e-01
  %880 = fptrunc double %879 to float
  store float %880, ptr @amp_breth, align 4, !tbaa !73
  %881 = load i64, ptr %769, align 8, !tbaa !118
  %882 = shl nsw i64 %881, 2
  store i64 %882, ptr @nopen, align 8, !tbaa !16
  %883 = load i64, ptr %765, align 8, !tbaa !33
  %884 = icmp eq i64 %883, 1
  %885 = icmp sgt i64 %881, 65
  %886 = select i1 %884, i1 %885, i1 false
  %887 = select i1 %886, i64 263, i64 %882
  store i64 %887, ptr @nopen, align 8
  %888 = load i64, ptr @T0, align 8, !tbaa !16
  %889 = add nsw i64 %888, -1
  %890 = icmp slt i64 %887, %889
  br i1 %890, label %897, label %891

891:                                              ; preds = %871
  %892 = add nsw i64 %888, -2
  store i64 %892, ptr @nopen, align 8, !tbaa !16
  %893 = load i32, ptr %770, align 4, !tbaa !32
  %894 = icmp eq i32 %893, 0
  br i1 %894, label %895, label %897

895:                                              ; preds = %891
  %896 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str)
  br label %897

897:                                              ; preds = %895, %891, %871
  %898 = load i64, ptr @nopen, align 8, !tbaa !16
  %899 = icmp slt i64 %898, 40
  br i1 %899, label %900, label %907

900:                                              ; preds = %897
  store i64 40, ptr @nopen, align 8, !tbaa !16
  %901 = load i32, ptr %771, align 4, !tbaa !32
  %902 = icmp eq i32 %901, 0
  br i1 %902, label %903, label %907

903:                                              ; preds = %900
  %904 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.71)
  %905 = load i64, ptr @nopen, align 8, !tbaa !16
  %906 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.47.540, i64 noundef %905)
  br label %907

907:                                              ; preds = %903, %900, %897
  %908 = load i64, ptr @nopen, align 8, !tbaa !16
  %909 = add nsw i64 %908, -40
  %910 = getelementptr inbounds [224 x i16], ptr @natglot, i64 0, i64 %909
  %911 = load i16, ptr %910, align 2, !tbaa !18
  %912 = sitofp i16 %911 to float
  store float %912, ptr @natglot_b, align 4, !tbaa !73
  %913 = sitofp i64 %908 to float
  %914 = fmul float %913, %912
  %915 = fpext float %914 to double
  %916 = fmul double %915, 3.330000e-01
  %917 = fptrunc double %916 to float
  store float %917, ptr @natglot_a, align 4, !tbaa !73
  %918 = load i64, ptr %688, align 8, !tbaa !30
  %919 = sdiv i64 %918, %908
  %920 = load float, ptr @minus_pi_t, align 4, !tbaa !73
  %921 = sitofp i64 %919 to float
  %922 = fmul float %920, %921
  %923 = fpext float %922 to double
  %924 = tail call double @exp(double noundef %923) #26
  %925 = fptrunc double %924 to float
  %926 = fneg float %925
  %927 = fmul float %926, %925
  store float %927, ptr @rgl.2, align 8, !tbaa !101
  %928 = load float, ptr @two_pi_t, align 4, !tbaa !73
  %929 = fmul float %928, 0.000000e+00
  %930 = fpext float %929 to double
  %931 = fpext float %925 to double
  %932 = tail call double @cos(double noundef %930) #26
  %933 = fmul double %932, %931
  %934 = fmul double %933, 2.000000e+00
  %935 = fptrunc double %934 to float
  store float %935, ptr @rgl.1, align 8, !tbaa !103
  %936 = fpext float %935 to double
  %937 = fsub double 1.000000e+00, %936
  %938 = load float, ptr @rgl.2, align 8, !tbaa !101
  %939 = fpext float %938 to double
  %940 = fsub double %937, %939
  %941 = fptrunc double %940 to float
  store float %941, ptr @rgl.0, align 8, !tbaa !104
  %942 = load i64, ptr @nopen, align 8, !tbaa !16
  %943 = sitofp i64 %942 to double
  %944 = fmul double %943, 8.330000e-03
  %945 = fptrunc double %944 to float
  %946 = fmul float %945, %945
  %947 = fmul float %946, %941
  store float %947, ptr @rgl.0, align 8, !tbaa !104
  %948 = load i64, ptr @T0, align 8, !tbaa !16
  %949 = sub nsw i64 %948, %942
  %950 = load i64, ptr @Kskew, align 8, !tbaa !16
  %951 = icmp sgt i64 %950, %949
  br i1 %951, label %952, label %958

952:                                              ; preds = %907
  %953 = load i32, ptr %772, align 4, !tbaa !32
  %954 = icmp eq i32 %953, 0
  br i1 %954, label %955, label %957

955:                                              ; preds = %952
  %956 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.48.541, i64 noundef %950, i64 noundef %949)
  br label %957

957:                                              ; preds = %955, %952
  store i64 %949, ptr @Kskew, align 8, !tbaa !16
  br label %958

958:                                              ; preds = %957, %907
  %959 = load i64, ptr @skew, align 8, !tbaa !16
  %960 = load i64, ptr @Kskew, align 8
  %961 = sub nsw i64 0, %960
  %962 = icmp slt i64 %959, 0
  %963 = select i1 %962, i64 %961, i64 %960
  store i64 %963, ptr @skew, align 8, !tbaa !16
  %964 = load i64, ptr @T0, align 8, !tbaa !16
  %965 = add nsw i64 %964, %963
  store i64 %965, ptr @T0, align 8, !tbaa !16
  %966 = sub nsw i64 0, %963
  store i64 %966, ptr @skew, align 8, !tbaa !16
  br label %968

967:                                              ; preds = %833
  store i64 4, ptr @T0, align 8, !tbaa !16
  store float 0.000000e+00, ptr @amp_voice, align 4, !tbaa !73
  store i64 4, ptr @nmod, align 8, !tbaa !16
  store float 0.000000e+00, ptr @amp_breth, align 4, !tbaa !73
  store float 0.000000e+00, ptr @natglot_a, align 4, !tbaa !73
  store float 0.000000e+00, ptr @natglot_b, align 4, !tbaa !73
  br label %968

968:                                              ; preds = %967, %958
  %969 = load i64, ptr @T0, align 8, !tbaa !16
  %970 = icmp ne i64 %969, 4
  %971 = or i1 %794, %970
  br i1 %971, label %972, label %980

972:                                              ; preds = %968
  %973 = load i64, ptr %773, align 8, !tbaa !119
  %974 = sitofp i64 %973 to double
  %975 = fmul double %974, 3.300000e-02
  %976 = fptrunc double %975 to float
  store float %976, ptr @decay, align 4, !tbaa !73
  %977 = fcmp ogt float %976, 0.000000e+00
  %978 = fsub float 1.000000e+00, %976
  %979 = select i1 %977, float %978, float 1.000000e+00
  store float %979, ptr @onemd, align 4, !tbaa !73
  br label %980

980:                                              ; preds = %972, %968, %828
  %981 = load float, ptr @rlp.0, align 8, !tbaa !104
  %982 = load float, ptr @rlp.1, align 8, !tbaa !103
  %983 = load float, ptr @rlp.3, align 8, !tbaa !116
  %984 = fmul float %982, %983
  %985 = tail call float @llvm.fmuladd.f32(float %981, float %829, float %984)
  %986 = load float, ptr @rlp.2, align 8, !tbaa !101
  %987 = load float, ptr @rlp.4, align 8, !tbaa !117
  %988 = tail call float @llvm.fmuladd.f32(float %986, float %987, float %985)
  store float %983, ptr @rlp.4, align 8, !tbaa !117
  store float %988, ptr @rlp.3, align 8, !tbaa !116
  %989 = load i64, ptr @nper, align 8, !tbaa !16
  %990 = add nsw i64 %989, 1
  store i64 %990, ptr @nper, align 8, !tbaa !16
  %991 = add nuw nsw i32 %796, 1
  %992 = icmp eq i32 %991, 4
  br i1 %992, label %993, label %795, !llvm.loop !120

993:                                              ; preds = %980
  %994 = icmp sgt i64 %790, %791
  %995 = select i1 %994, float %792, float %789
  %996 = fmul float %793, %995
  %997 = load float, ptr @onemd, align 4, !tbaa !73
  %998 = load float, ptr @vlast, align 4, !tbaa !73
  %999 = load float, ptr @decay, align 4, !tbaa !73
  %1000 = fmul float %998, %999
  %1001 = tail call float @llvm.fmuladd.f32(float %988, float %997, float %1000)
  store float %1001, ptr @vlast, align 4, !tbaa !73
  %1002 = load i64, ptr @nper, align 8, !tbaa !16
  %1003 = load i64, ptr @nopen, align 8, !tbaa !16
  %1004 = icmp slt i64 %1002, %1003
  %1005 = load float, ptr @amp_breth, align 4
  %1006 = sitofp i64 %784 to float
  %1007 = tail call float @llvm.fmuladd.f32(float %1005, float %1006, float %1001)
  %1008 = select i1 %1004, float %1007, float %1001
  %1009 = load float, ptr @amp_voice, align 4, !tbaa !73
  %1010 = fmul float %1009, %1008
  %1011 = load float, ptr @amp_aspir, align 4, !tbaa !73
  %1012 = fmul float %995, %1011
  %1013 = fadd float %1010, %1012
  %1014 = load i32, ptr %0, align 8, !tbaa !35
  %1015 = icmp eq i32 %1014, 2
  %1016 = load float, ptr @rnz.0, align 8, !tbaa !104
  %1017 = load float, ptr @rnz.1, align 8, !tbaa !103
  %1018 = load float, ptr @rnz.3, align 8, !tbaa !116
  %1019 = fmul float %1017, %1018
  %1020 = tail call float @llvm.fmuladd.f32(float %1016, float %1013, float %1019)
  %1021 = load float, ptr @rnz.2, align 8, !tbaa !101
  %1022 = load float, ptr @rnz.4, align 8, !tbaa !117
  %1023 = tail call float @llvm.fmuladd.f32(float %1021, float %1022, float %1020)
  store float %1018, ptr @rnz.4, align 8, !tbaa !117
  store float %1013, ptr @rnz.3, align 8, !tbaa !116
  %1024 = load float, ptr @rnpc.0, align 8, !tbaa !104
  %1025 = load float, ptr @rnpc.1, align 8, !tbaa !103
  %1026 = load float, ptr @rnpc.3, align 8, !tbaa !116
  %1027 = fmul float %1025, %1026
  %1028 = tail call float @llvm.fmuladd.f32(float %1024, float %1023, float %1027)
  %1029 = load float, ptr @rnpc.2, align 8, !tbaa !101
  %1030 = load float, ptr @rnpc.4, align 8, !tbaa !117
  %1031 = tail call float @llvm.fmuladd.f32(float %1029, float %1030, float %1028)
  store float %1026, ptr @rnpc.4, align 8, !tbaa !117
  store float %1031, ptr @rnpc.3, align 8, !tbaa !116
  br i1 %1015, label %1113, label %1032

1032:                                             ; preds = %993
  %1033 = load i64, ptr %200, align 8, !tbaa !36
  switch i64 %1033, label %1125 [
    i64 8, label %1034
    i64 7, label %1043
    i64 6, label %1053
    i64 5, label %1063
    i64 4, label %1073
    i64 3, label %1083
    i64 2, label %1093
    i64 1, label %1103
  ]

1034:                                             ; preds = %1032
  %1035 = load float, ptr @r8c.0, align 8, !tbaa !104
  %1036 = load float, ptr @r8c.1, align 8, !tbaa !103
  %1037 = load float, ptr @r8c.3, align 8, !tbaa !116
  %1038 = fmul float %1036, %1037
  %1039 = tail call float @llvm.fmuladd.f32(float %1035, float %1031, float %1038)
  %1040 = load float, ptr @r8c.2, align 8, !tbaa !101
  %1041 = load float, ptr @r8c.4, align 8, !tbaa !117
  %1042 = tail call float @llvm.fmuladd.f32(float %1040, float %1041, float %1039)
  store float %1037, ptr @r8c.4, align 8, !tbaa !117
  store float %1042, ptr @r8c.3, align 8, !tbaa !116
  br label %1043

1043:                                             ; preds = %1034, %1032
  %1044 = phi float [ %1031, %1032 ], [ %1042, %1034 ]
  %1045 = load float, ptr @r7c.0, align 8, !tbaa !104
  %1046 = load float, ptr @r7c.1, align 8, !tbaa !103
  %1047 = load float, ptr @r7c.3, align 8, !tbaa !116
  %1048 = fmul float %1046, %1047
  %1049 = tail call float @llvm.fmuladd.f32(float %1045, float %1044, float %1048)
  %1050 = load float, ptr @r7c.2, align 8, !tbaa !101
  %1051 = load float, ptr @r7c.4, align 8, !tbaa !117
  %1052 = tail call float @llvm.fmuladd.f32(float %1050, float %1051, float %1049)
  store float %1047, ptr @r7c.4, align 8, !tbaa !117
  store float %1052, ptr @r7c.3, align 8, !tbaa !116
  br label %1053

1053:                                             ; preds = %1043, %1032
  %1054 = phi float [ %1031, %1032 ], [ %1052, %1043 ]
  %1055 = load float, ptr @r6c.0, align 8, !tbaa !104
  %1056 = load float, ptr @r6c.1, align 8, !tbaa !103
  %1057 = load float, ptr @r6c.3, align 8, !tbaa !116
  %1058 = fmul float %1056, %1057
  %1059 = tail call float @llvm.fmuladd.f32(float %1055, float %1054, float %1058)
  %1060 = load float, ptr @r6c.2, align 8, !tbaa !101
  %1061 = load float, ptr @r6c.4, align 8, !tbaa !117
  %1062 = tail call float @llvm.fmuladd.f32(float %1060, float %1061, float %1059)
  store float %1057, ptr @r6c.4, align 8, !tbaa !117
  store float %1062, ptr @r6c.3, align 8, !tbaa !116
  br label %1063

1063:                                             ; preds = %1053, %1032
  %1064 = phi float [ %1031, %1032 ], [ %1062, %1053 ]
  %1065 = load float, ptr @r5c.0, align 8, !tbaa !104
  %1066 = load float, ptr @r5c.1, align 8, !tbaa !103
  %1067 = load float, ptr @r5c.3, align 8, !tbaa !116
  %1068 = fmul float %1066, %1067
  %1069 = tail call float @llvm.fmuladd.f32(float %1065, float %1064, float %1068)
  %1070 = load float, ptr @r5c.2, align 8, !tbaa !101
  %1071 = load float, ptr @r5c.4, align 8, !tbaa !117
  %1072 = tail call float @llvm.fmuladd.f32(float %1070, float %1071, float %1069)
  store float %1067, ptr @r5c.4, align 8, !tbaa !117
  store float %1072, ptr @r5c.3, align 8, !tbaa !116
  br label %1073

1073:                                             ; preds = %1063, %1032
  %1074 = phi float [ %1031, %1032 ], [ %1072, %1063 ]
  %1075 = load float, ptr @r4c.0, align 8, !tbaa !104
  %1076 = load float, ptr @r4c.1, align 8, !tbaa !103
  %1077 = load float, ptr @r4c.3, align 8, !tbaa !116
  %1078 = fmul float %1076, %1077
  %1079 = tail call float @llvm.fmuladd.f32(float %1075, float %1074, float %1078)
  %1080 = load float, ptr @r4c.2, align 8, !tbaa !101
  %1081 = load float, ptr @r4c.4, align 8, !tbaa !117
  %1082 = tail call float @llvm.fmuladd.f32(float %1080, float %1081, float %1079)
  store float %1077, ptr @r4c.4, align 8, !tbaa !117
  store float %1082, ptr @r4c.3, align 8, !tbaa !116
  br label %1083

1083:                                             ; preds = %1073, %1032
  %1084 = phi float [ %1031, %1032 ], [ %1082, %1073 ]
  %1085 = load float, ptr @r3c.0, align 8, !tbaa !104
  %1086 = load float, ptr @r3c.1, align 8, !tbaa !103
  %1087 = load float, ptr @r3c.3, align 8, !tbaa !116
  %1088 = fmul float %1086, %1087
  %1089 = tail call float @llvm.fmuladd.f32(float %1085, float %1084, float %1088)
  %1090 = load float, ptr @r3c.2, align 8, !tbaa !101
  %1091 = load float, ptr @r3c.4, align 8, !tbaa !117
  %1092 = tail call float @llvm.fmuladd.f32(float %1090, float %1091, float %1089)
  store float %1087, ptr @r3c.4, align 8, !tbaa !117
  store float %1092, ptr @r3c.3, align 8, !tbaa !116
  br label %1093

1093:                                             ; preds = %1083, %1032
  %1094 = phi float [ %1031, %1032 ], [ %1092, %1083 ]
  %1095 = load float, ptr @r2c.0, align 8, !tbaa !104
  %1096 = load float, ptr @r2c.1, align 8, !tbaa !103
  %1097 = load float, ptr @r2c.3, align 8, !tbaa !116
  %1098 = fmul float %1096, %1097
  %1099 = tail call float @llvm.fmuladd.f32(float %1095, float %1094, float %1098)
  %1100 = load float, ptr @r2c.2, align 8, !tbaa !101
  %1101 = load float, ptr @r2c.4, align 8, !tbaa !117
  %1102 = tail call float @llvm.fmuladd.f32(float %1100, float %1101, float %1099)
  store float %1097, ptr @r2c.4, align 8, !tbaa !117
  store float %1102, ptr @r2c.3, align 8, !tbaa !116
  br label %1103

1103:                                             ; preds = %1093, %1032
  %1104 = phi float [ %1031, %1032 ], [ %1102, %1093 ]
  %1105 = load float, ptr @r1c.0, align 8, !tbaa !104
  %1106 = load float, ptr @r1c.1, align 8, !tbaa !103
  %1107 = load float, ptr @r1c.3, align 8, !tbaa !116
  %1108 = fmul float %1106, %1107
  %1109 = tail call float @llvm.fmuladd.f32(float %1105, float %1104, float %1108)
  %1110 = load float, ptr @r1c.2, align 8, !tbaa !101
  %1111 = load float, ptr @r1c.4, align 8, !tbaa !117
  %1112 = tail call float @llvm.fmuladd.f32(float %1110, float %1111, float %1109)
  store float %1107, ptr @r1c.4, align 8, !tbaa !117
  store float %1112, ptr @r1c.3, align 8, !tbaa !116
  br label %1125

1113:                                             ; preds = %993
  %1114 = load float, ptr @r1p.0, align 8, !tbaa !104
  %1115 = load float, ptr @r1p.1, align 8, !tbaa !103
  %1116 = load float, ptr @r1p.3, align 8, !tbaa !116
  %1117 = fmul float %1115, %1116
  %1118 = tail call float @llvm.fmuladd.f32(float %1114, float %1031, float %1117)
  %1119 = load float, ptr @r1p.2, align 8, !tbaa !101
  %1120 = load float, ptr @r1p.4, align 8, !tbaa !117
  %1121 = tail call float @llvm.fmuladd.f32(float %1119, float %1120, float %1118)
  store float %1116, ptr @r1p.4, align 8, !tbaa !117
  store float %1121, ptr @r1p.3, align 8, !tbaa !116
  %1122 = load float, ptr @glotlast, align 4, !tbaa !73
  %1123 = fsub float %1031, %1122
  %1124 = fadd float %996, %1123
  store float %1031, ptr @glotlast, align 4, !tbaa !73
  br label %1125

1125:                                             ; preds = %1113, %1103, %1032
  %1126 = phi float [ %1124, %1113 ], [ %996, %1032 ], [ %996, %1103 ]
  %1127 = phi float [ %1121, %1113 ], [ 0.000000e+00, %1032 ], [ %1112, %1103 ]
  %1128 = load float, ptr @r6p.0, align 8, !tbaa !104
  %1129 = load float, ptr @r6p.1, align 8, !tbaa !103
  %1130 = load float, ptr @r6p.3, align 8, !tbaa !116
  %1131 = fmul float %1129, %1130
  %1132 = tail call float @llvm.fmuladd.f32(float %1128, float %1126, float %1131)
  %1133 = load float, ptr @r6p.2, align 8, !tbaa !101
  %1134 = load float, ptr @r6p.4, align 8, !tbaa !117
  %1135 = tail call float @llvm.fmuladd.f32(float %1133, float %1134, float %1132)
  store float %1130, ptr @r6p.4, align 8, !tbaa !117
  store float %1135, ptr @r6p.3, align 8, !tbaa !116
  %1136 = fsub float %1135, %1127
  %1137 = load float, ptr @r5p.0, align 8, !tbaa !104
  %1138 = load float, ptr @r5p.1, align 8, !tbaa !103
  %1139 = load float, ptr @r5p.3, align 8, !tbaa !116
  %1140 = fmul float %1138, %1139
  %1141 = tail call float @llvm.fmuladd.f32(float %1137, float %1126, float %1140)
  %1142 = load float, ptr @r5p.2, align 8, !tbaa !101
  %1143 = load float, ptr @r5p.4, align 8, !tbaa !117
  %1144 = tail call float @llvm.fmuladd.f32(float %1142, float %1143, float %1141)
  store float %1139, ptr @r5p.4, align 8, !tbaa !117
  store float %1144, ptr @r5p.3, align 8, !tbaa !116
  %1145 = fsub float %1144, %1136
  %1146 = load float, ptr @r4p.0, align 8, !tbaa !104
  %1147 = load float, ptr @r4p.1, align 8, !tbaa !103
  %1148 = load float, ptr @r4p.3, align 8, !tbaa !116
  %1149 = fmul float %1147, %1148
  %1150 = tail call float @llvm.fmuladd.f32(float %1146, float %1126, float %1149)
  %1151 = load float, ptr @r4p.2, align 8, !tbaa !101
  %1152 = load float, ptr @r4p.4, align 8, !tbaa !117
  %1153 = tail call float @llvm.fmuladd.f32(float %1151, float %1152, float %1150)
  store float %1148, ptr @r4p.4, align 8, !tbaa !117
  store float %1153, ptr @r4p.3, align 8, !tbaa !116
  %1154 = fsub float %1153, %1145
  %1155 = load float, ptr @r3p.0, align 8, !tbaa !104
  %1156 = load float, ptr @r3p.1, align 8, !tbaa !103
  %1157 = load float, ptr @r3p.3, align 8, !tbaa !116
  %1158 = fmul float %1156, %1157
  %1159 = tail call float @llvm.fmuladd.f32(float %1155, float %1126, float %1158)
  %1160 = load float, ptr @r3p.2, align 8, !tbaa !101
  %1161 = load float, ptr @r3p.4, align 8, !tbaa !117
  %1162 = tail call float @llvm.fmuladd.f32(float %1160, float %1161, float %1159)
  store float %1157, ptr @r3p.4, align 8, !tbaa !117
  store float %1162, ptr @r3p.3, align 8, !tbaa !116
  %1163 = fsub float %1162, %1154
  %1164 = load float, ptr @r2p.0, align 8, !tbaa !104
  %1165 = load float, ptr @r2p.1, align 8, !tbaa !103
  %1166 = load float, ptr @r2p.3, align 8, !tbaa !116
  %1167 = fmul float %1165, %1166
  %1168 = tail call float @llvm.fmuladd.f32(float %1164, float %1126, float %1167)
  %1169 = load float, ptr @r2p.2, align 8, !tbaa !101
  %1170 = load float, ptr @r2p.4, align 8, !tbaa !117
  %1171 = tail call float @llvm.fmuladd.f32(float %1169, float %1170, float %1168)
  store float %1166, ptr @r2p.4, align 8, !tbaa !117
  store float %1171, ptr @r2p.3, align 8, !tbaa !116
  %1172 = fsub float %1171, %1163
  %1173 = load float, ptr @amp_bypas, align 4, !tbaa !73
  %1174 = fneg float %1172
  %1175 = tail call float @llvm.fmuladd.f32(float %1173, float %1126, float %1174)
  %1176 = load float, ptr @rout.0, align 8, !tbaa !104
  %1177 = load float, ptr @rout.1, align 8, !tbaa !103
  %1178 = load float, ptr @rout.3, align 8, !tbaa !116
  %1179 = fmul float %1177, %1178
  %1180 = tail call float @llvm.fmuladd.f32(float %1176, float %1175, float %1179)
  %1181 = load float, ptr @rout.2, align 8, !tbaa !101
  %1182 = load float, ptr @rout.4, align 8, !tbaa !117
  %1183 = tail call float @llvm.fmuladd.f32(float %1181, float %1182, float %1180)
  store float %1178, ptr @rout.4, align 8, !tbaa !117
  store float %1183, ptr @rout.3, align 8, !tbaa !116
  %1184 = fptosi float %1183 to i64
  %1185 = icmp slt i64 %1184, -32767
  br i1 %1185, label %1186, label %1192

1186:                                             ; preds = %1125
  %1187 = load i1, ptr @warnsw, align 4
  br i1 %1187, label %1210, label %1188

1188:                                             ; preds = %1186
  %1189 = sub nsw i64 0, %1184
  store i1 true, ptr @warnsw, align 4
  %1190 = load i32, ptr %775, align 4, !tbaa !32
  %1191 = icmp eq i32 %1190, 0
  br i1 %1191, label %1199, label %1210

1192:                                             ; preds = %1125
  %1193 = icmp sgt i64 %1184, 32767
  br i1 %1193, label %1194, label %1210

1194:                                             ; preds = %1192
  %1195 = load i1, ptr @warnsw, align 4
  br i1 %1195, label %1210, label %1196

1196:                                             ; preds = %1194
  store i1 true, ptr @warnsw, align 4
  %1197 = load i32, ptr %774, align 4, !tbaa !32
  %1198 = icmp eq i32 %1197, 0
  br i1 %1198, label %1199, label %1210

1199:                                             ; preds = %1196, %1188
  %1200 = phi i64 [ %1189, %1188 ], [ %1184, %1196 ]
  %1201 = phi i64 [ -32767, %1188 ], [ 32767, %1196 ]
  %1202 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.67.542)
  %1203 = sitofp i64 %1200 to double
  %1204 = fdiv double %1203, 3.276700e+04
  %1205 = tail call double @log10(double noundef %1204) #26
  %1206 = fmul double %1205, 2.000000e+01
  %1207 = fptrunc double %1206 to float
  %1208 = fpext float %1207 to double
  %1209 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.68.543, double noundef %1208)
  br label %1210

1210:                                             ; preds = %1199, %1196, %1194, %1192, %1188, %1186
  %1211 = phi i64 [ %1184, %1192 ], [ -32767, %1186 ], [ -32767, %1188 ], [ 32767, %1194 ], [ 32767, %1196 ], [ %1201, %1199 ]
  %1212 = trunc i64 %1211 to i16
  %1213 = getelementptr inbounds i16, ptr %777, i64 1
  store i16 %1212, ptr %777, align 2, !tbaa !18
  %1214 = add nuw nsw i64 %778, 1
  %1215 = load i64, ptr %761, align 8, !tbaa !37
  %1216 = icmp slt i64 %1214, %1215
  br i1 %1216, label %776, label %1217, !llvm.loop !121

1217:                                             ; preds = %1210, %760
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smax.i64(i64, i64) #12

; Function Attrs: mustprogress nofree nounwind willreturn memory(write)
declare double @exp(double noundef) local_unnamed_addr #19

; Function Attrs: mustprogress nofree nounwind willreturn memory(write)
declare double @cos(double noundef) local_unnamed_addr #19

; Function Attrs: mustprogress nofree nounwind willreturn memory(write)
declare double @sin(double noundef) local_unnamed_addr #19

; Function Attrs: nofree nounwind
declare noundef i32 @puts(ptr nocapture noundef readonly) local_unnamed_addr #17

; Function Attrs: mustprogress nofree nounwind willreturn memory(write)
declare double @log10(double noundef) local_unnamed_addr #19

; Function Attrs: mustprogress nofree nounwind willreturn memory(readwrite, inaccessiblemem: write) uwtable
define dso_local void @parwave_init(ptr nocapture noundef readonly %0) local_unnamed_addr #20 {
  %2 = getelementptr inbounds %struct.klatt_global_t, ptr %0, i64 0, i32 4
  %3 = load i64, ptr %2, align 8, !tbaa !30
  %4 = mul nsw i64 %3, 950
  %5 = sdiv i64 %4, 10000
  %6 = mul nsw i64 %3, 630
  %7 = sdiv i64 %6, 10000
  %8 = sitofp i64 %3 to double
  %9 = fdiv double 0xC00921FB5A7ED197, %8
  %10 = fptrunc double %9 to float
  store float %10, ptr @minus_pi_t, align 4, !tbaa !73
  %11 = fmul float %10, -2.000000e+00
  store float %11, ptr @two_pi_t, align 4, !tbaa !73
  %12 = sitofp i64 %7 to float
  %13 = fmul float %10, %12
  %14 = fpext float %13 to double
  %15 = tail call double @exp(double noundef %14) #26
  %16 = fptrunc double %15 to float
  %17 = fneg float %16
  %18 = fmul float %17, %16
  store float %18, ptr @rlp.2, align 8, !tbaa !101
  %19 = load float, ptr @two_pi_t, align 4, !tbaa !73
  %20 = sitofp i64 %5 to float
  %21 = fmul float %19, %20
  %22 = fpext float %21 to double
  %23 = fpext float %16 to double
  %24 = tail call double @cos(double noundef %22) #26
  %25 = fmul double %24, %23
  %26 = fmul double %25, 2.000000e+00
  %27 = fptrunc double %26 to float
  store float %27, ptr @rlp.1, align 8, !tbaa !103
  %28 = fpext float %27 to double
  %29 = fsub double 1.000000e+00, %28
  %30 = load float, ptr @rlp.2, align 8, !tbaa !101
  %31 = fpext float %30 to double
  %32 = fsub double %29, %31
  %33 = fptrunc double %32 to float
  store float %33, ptr @rlp.0, align 8, !tbaa !104
  store i64 0, ptr @nper, align 8, !tbaa !16
  store i64 0, ptr @T0, align 8, !tbaa !16
  store float 0.000000e+00, ptr @r1p.3, align 8, !tbaa !116
  store float 0.000000e+00, ptr @r1p.4, align 8, !tbaa !117
  store float 0.000000e+00, ptr @r2p.3, align 8, !tbaa !116
  store float 0.000000e+00, ptr @r2p.4, align 8, !tbaa !117
  store float 0.000000e+00, ptr @r3p.3, align 8, !tbaa !116
  store float 0.000000e+00, ptr @r3p.4, align 8, !tbaa !117
  store float 0.000000e+00, ptr @r4p.3, align 8, !tbaa !116
  store float 0.000000e+00, ptr @r4p.4, align 8, !tbaa !117
  store float 0.000000e+00, ptr @r5p.3, align 8, !tbaa !116
  store float 0.000000e+00, ptr @r5p.4, align 8, !tbaa !117
  store float 0.000000e+00, ptr @r6p.3, align 8, !tbaa !116
  store float 0.000000e+00, ptr @r6p.4, align 8, !tbaa !117
  store float 0.000000e+00, ptr @r1c.3, align 8, !tbaa !116
  store float 0.000000e+00, ptr @r1c.4, align 8, !tbaa !117
  store float 0.000000e+00, ptr @r2c.3, align 8, !tbaa !116
  store float 0.000000e+00, ptr @r2c.4, align 8, !tbaa !117
  store float 0.000000e+00, ptr @r3c.3, align 8, !tbaa !116
  store float 0.000000e+00, ptr @r3c.4, align 8, !tbaa !117
  store float 0.000000e+00, ptr @r4c.3, align 8, !tbaa !116
  store float 0.000000e+00, ptr @r4c.4, align 8, !tbaa !117
  store float 0.000000e+00, ptr @r5c.3, align 8, !tbaa !116
  store float 0.000000e+00, ptr @r5c.4, align 8, !tbaa !117
  store float 0.000000e+00, ptr @r6c.3, align 8, !tbaa !116
  store float 0.000000e+00, ptr @r6c.4, align 8, !tbaa !117
  store float 0.000000e+00, ptr @r7c.3, align 8, !tbaa !116
  store float 0.000000e+00, ptr @r7c.4, align 8, !tbaa !117
  store float 0.000000e+00, ptr @r8c.3, align 8, !tbaa !116
  store float 0.000000e+00, ptr @r8c.4, align 8, !tbaa !117
  store float 0.000000e+00, ptr @rnpc.3, align 8, !tbaa !116
  store float 0.000000e+00, ptr @rnpc.4, align 8, !tbaa !117
  store float 0.000000e+00, ptr @rnz.3, align 8, !tbaa !116
  store float 0.000000e+00, ptr @rnz.4, align 8, !tbaa !117
  store float 0.000000e+00, ptr @rgl.3, align 8, !tbaa !116
  store float 0.000000e+00, ptr @rgl.4, align 8, !tbaa !117
  store float 0.000000e+00, ptr @rlp.3, align 8, !tbaa !116
  store float 0.000000e+00, ptr @rlp.4, align 8, !tbaa !117
  store float 0.000000e+00, ptr @vlast, align 4, !tbaa !73
  store float 0.000000e+00, ptr @nlast, align 4, !tbaa !73
  store float 0.000000e+00, ptr @glotlast, align 4, !tbaa !73
  store i1 false, ptr @warnsw, align 4
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @phone_append(ptr noundef %0, i32 noundef returned %1) local_unnamed_addr #4 {
  %3 = getelementptr inbounds %struct.darray_t, ptr %0, i64 0, i32 1
  %4 = load i32, ptr %3, align 8, !tbaa !24
  %5 = tail call ptr @Darray_find(ptr noundef %0, i32 noundef %4) #26
  %6 = trunc i32 %1 to i8
  store i8 %6, ptr %5, align 1, !tbaa !7
  ret i32 %1
}

; Function Attrs: nounwind uwtable
define dso_local i32 @phone_to_elm(ptr noundef %0, i32 noundef %1, ptr noundef %2) local_unnamed_addr #4 {
  %4 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #26
  store ptr %0, ptr %4, align 8, !tbaa !14
  %5 = sext i32 %1 to i64
  %6 = getelementptr inbounds i8, ptr %0, i64 %5
  %7 = load ptr, ptr @phtoelm, align 8, !tbaa !14
  %8 = icmp eq ptr %7, null
  br i1 %8, label %9, label %10

9:                                                ; preds = %3
  tail call void (ptr, ...) @enter(ptr noundef nonnull @.str.2.714, ptr noundef nonnull @.str.3.715, ptr noundef null)
  tail call void (ptr, ...) @enter(ptr noundef nonnull @.str.4.716, ptr noundef nonnull @.str.5.717, ptr noundef nonnull @.str.6.718, ptr noundef nonnull @.str.7.719, ptr noundef null)
  tail call void (ptr, ...) @enter(ptr noundef nonnull @.str.8.720, ptr noundef nonnull @.str.9.721, ptr noundef nonnull @.str.10.722, ptr noundef nonnull @.str.11.723, ptr noundef null)
  tail call void (ptr, ...) @enter(ptr noundef nonnull @.str.12.724, ptr noundef nonnull @.str.13.725, ptr noundef nonnull @.str.14.726, ptr noundef nonnull @.str.15.727, ptr noundef null)
  tail call void (ptr, ...) @enter(ptr noundef nonnull @.str.16.728, ptr noundef nonnull @.str.17.729, ptr noundef nonnull @.str.18.730, ptr noundef nonnull @.str.19.731, ptr noundef null)
  tail call void (ptr, ...) @enter(ptr noundef nonnull @.str.20.732, ptr noundef nonnull @.str.21.733, ptr noundef nonnull @.str.22.734, ptr noundef nonnull @.str.23.735, ptr noundef null)
  tail call void (ptr, ...) @enter(ptr noundef nonnull @.str.24.736, ptr noundef nonnull @.str.25.737, ptr noundef nonnull @.str.26.738, ptr noundef nonnull @.str.27.739, ptr noundef null)
  tail call void (ptr, ...) @enter(ptr noundef nonnull @.str.28.740, ptr noundef nonnull @.str.29.741, ptr noundef null)
  tail call void (ptr, ...) @enter(ptr noundef nonnull @.str.30.742, ptr noundef nonnull @.str.31.743, ptr noundef null)
  tail call void (ptr, ...) @enter(ptr noundef nonnull @.str.31.743, ptr noundef nonnull @.str.32.744, ptr noundef null)
  tail call void (ptr, ...) @enter(ptr noundef nonnull @.str.33.745, ptr noundef nonnull @.str.34.746, ptr noundef null)
  tail call void (ptr, ...) @enter(ptr noundef nonnull @.str.9.721, ptr noundef nonnull @.str.35.747, ptr noundef null)
  tail call void (ptr, ...) @enter(ptr noundef nonnull @.str.36.748, ptr noundef nonnull @.str.37.749, ptr noundef null)
  tail call void (ptr, ...) @enter(ptr noundef nonnull @.str.37.749, ptr noundef nonnull @.str.38.750, ptr noundef null)
  tail call void (ptr, ...) @enter(ptr noundef nonnull @.str.39.751, ptr noundef nonnull @.str.40.752, ptr noundef null)
  tail call void (ptr, ...) @enter(ptr noundef nonnull @.str.41.753, ptr noundef nonnull @.str.42.754, ptr noundef nonnull @.str.43.755, ptr noundef nonnull @.str.42.754, ptr noundef null)
  tail call void (ptr, ...) @enter(ptr noundef nonnull @.str.21.733, ptr noundef nonnull @.str.44.756, ptr noundef nonnull @.str.43.755, ptr noundef nonnull @.str.45.757, ptr noundef null)
  tail call void (ptr, ...) @enter(ptr noundef nonnull @.str.46.758, ptr noundef nonnull @.str.47.759, ptr noundef nonnull @.str.43.755, ptr noundef nonnull @.str.48.760, ptr noundef null)
  tail call void (ptr, ...) @enter(ptr noundef nonnull @.str.47.759, ptr noundef nonnull @.str.49.761, ptr noundef nonnull @.str.43.755, ptr noundef nonnull @.str.49.761, ptr noundef null)
  tail call void (ptr, ...) @enter(ptr noundef nonnull @.str.50.762, ptr noundef nonnull @.str.51.763, ptr noundef nonnull @.str.52.764, ptr noundef null)
  tail call void (ptr, ...) @enter(ptr noundef nonnull @.str.53.765, ptr noundef nonnull @.str.54.766, ptr noundef nonnull @.str.55.767, ptr noundef nonnull @.str.43.755, ptr noundef nonnull @.str.55.767, ptr noundef null)
  tail call void (ptr, ...) @enter(ptr noundef nonnull @.str.56.768, ptr noundef nonnull @.str.57.769, ptr noundef null)
  tail call void (ptr, ...) @enter(ptr noundef nonnull @.str.58.770, ptr noundef nonnull @.str.59.771, ptr noundef null)
  tail call void (ptr, ...) @enter(ptr noundef nonnull @.str.60.772, ptr noundef nonnull @.str.59.771, ptr noundef nonnull @.str.43.755, ptr noundef nonnull @.str.59.771, ptr noundef null)
  tail call void (ptr, ...) @enter(ptr noundef nonnull @.str.59.771, ptr noundef nonnull @.str.61.773, ptr noundef null)
  tail call void (ptr, ...) @enter(ptr noundef nonnull @.str.62.774, ptr noundef nonnull @.str.63.775, ptr noundef null)
  tail call void (ptr, ...) @enter(ptr noundef nonnull @.str.64.776, ptr noundef nonnull @.str.65.777, ptr noundef null)
  tail call void (ptr, ...) @enter(ptr noundef nonnull @.str.66.778, ptr noundef nonnull @.str.43.755, ptr noundef null)
  tail call void (ptr, ...) @enter(ptr noundef nonnull @.str.67.779, ptr noundef nonnull @.str.68.780, ptr noundef null)
  tail call void (ptr, ...) @enter(ptr noundef nonnull @.str.69.781, ptr noundef nonnull @.str.69.781, ptr noundef null)
  tail call void (ptr, ...) @enter(ptr noundef nonnull @.str.70.782, ptr noundef nonnull @.str.71.783, ptr noundef null)
  tail call void (ptr, ...) @enter(ptr noundef nonnull @.str.72.784, ptr noundef nonnull @.str.73.785, ptr noundef null)
  tail call void (ptr, ...) @enter(ptr noundef nonnull @.str.42.754, ptr noundef nonnull @.str.74.786, ptr noundef null)
  tail call void (ptr, ...) @enter(ptr noundef nonnull @.str.75.787, ptr noundef nonnull @.str.76.788, ptr noundef null)
  tail call void (ptr, ...) @enter(ptr noundef nonnull @.str.74.786, ptr noundef nonnull @.str.77.789, ptr noundef null)
  tail call void (ptr, ...) @enter(ptr noundef nonnull @.str.78.790, ptr noundef nonnull @.str.79.791, ptr noundef null)
  tail call void (ptr, ...) @enter(ptr noundef nonnull @.str.80.792, ptr noundef nonnull @.str.81.793, ptr noundef null)
  tail call void (ptr, ...) @enter(ptr noundef nonnull @.str.82.794, ptr noundef nonnull @.str.83.795, ptr noundef null)
  tail call void (ptr, ...) @enter(ptr noundef nonnull @.str.79.791, ptr noundef nonnull @.str.84.796, ptr noundef null)
  tail call void (ptr, ...) @enter(ptr noundef nonnull @.str.76.788, ptr noundef nonnull @.str.85.797, ptr noundef null)
  tail call void (ptr, ...) @enter(ptr noundef nonnull @.str.86.798, ptr noundef nonnull @.str.87.799, ptr noundef null)
  tail call void (ptr, ...) @enter(ptr noundef nonnull @.str.88.800, ptr noundef nonnull @.str.89.801, ptr noundef null)
  tail call void (ptr, ...) @enter(ptr noundef nonnull @.str.90.802, ptr noundef nonnull @.str.91.803, ptr noundef nonnull @.str.69.781, ptr noundef null)
  tail call void (ptr, ...) @enter(ptr noundef nonnull @.str.92.804, ptr noundef nonnull @.str.93.805, ptr noundef nonnull @.str.69.781, ptr noundef null)
  tail call void (ptr, ...) @enter(ptr noundef nonnull @.str.94.806, ptr noundef nonnull @.str.89.801, ptr noundef nonnull @.str.69.781, ptr noundef null)
  tail call void (ptr, ...) @enter(ptr noundef nonnull @.str.95.807, ptr noundef nonnull @.str.96.808, ptr noundef nonnull @.str.97.809, ptr noundef null)
  tail call void (ptr, ...) @enter(ptr noundef nonnull @.str.98.810, ptr noundef nonnull @.str.99.811, ptr noundef nonnull @.str.97.809, ptr noundef null)
  tail call void (ptr, ...) @enter(ptr noundef nonnull @.str.100.812, ptr noundef nonnull @.str.101.813, ptr noundef nonnull @.str.102.814, ptr noundef null)
  tail call void (ptr, ...) @enter(ptr noundef nonnull @.str.103.815, ptr noundef nonnull @.str.104.816, ptr noundef nonnull @.str.102.814, ptr noundef null)
  tail call void (ptr, ...) @enter(ptr noundef nonnull @.str.105.817, ptr noundef nonnull @.str.106.818, ptr noundef nonnull @.str.102.814, ptr noundef null)
  tail call void (ptr, ...) @enter(ptr noundef nonnull @.str.107.819, ptr noundef nonnull @.str.108.820, ptr noundef nonnull @.str.102.814, ptr noundef null)
  tail call void (ptr, ...) @enter(ptr noundef nonnull @.str.109.821, ptr noundef nonnull @.str.89.801, ptr noundef nonnull @.str.97.809, ptr noundef null)
  br label %10

10:                                               ; preds = %9, %3
  %11 = load ptr, ptr %4, align 8, !tbaa !14
  %12 = icmp ult ptr %11, %6
  br i1 %12, label %13, label %79

13:                                               ; preds = %10
  %14 = getelementptr inbounds %struct.darray_t, ptr %2, i64 0, i32 1
  br label %15

15:                                               ; preds = %74, %13
  %16 = phi ptr [ %11, %13 ], [ %77, %74 ]
  %17 = phi i32 [ 0, %13 ], [ %76, %74 ]
  %18 = phi i32 [ 0, %13 ], [ %75, %74 ]
  %19 = load i8, ptr %16, align 1, !tbaa !7
  %20 = icmp eq i8 %19, 0
  br i1 %20, label %79, label %21

21:                                               ; preds = %15
  %22 = call ptr @trie_lookup(ptr noundef nonnull @phtoelm, ptr noundef nonnull %4) #26
  %23 = icmp eq ptr %22, null
  br i1 %23, label %63, label %24

24:                                               ; preds = %21
  %25 = load i8, ptr %22, align 1, !tbaa !7
  %26 = icmp sgt i8 %25, 0
  br i1 %26, label %27, label %74

27:                                               ; preds = %24
  %28 = zext nneg i8 %25 to i32
  br label %29

29:                                               ; preds = %29, %27
  %30 = phi i32 [ %44, %29 ], [ %17, %27 ]
  %31 = phi i32 [ %58, %29 ], [ %18, %27 ]
  %32 = phi ptr [ %35, %29 ], [ %22, %27 ]
  %33 = phi i32 [ %34, %29 ], [ %28, %27 ]
  %34 = add nsw i32 %33, -1
  %35 = getelementptr inbounds i8, ptr %32, i64 1
  %36 = load i8, ptr %35, align 1, !tbaa !7
  %37 = sext i8 %36 to i64
  %38 = load i32, ptr %14, align 8, !tbaa !24
  %39 = call ptr @Darray_find(ptr noundef %2, i32 noundef %38) #26
  store i8 %36, ptr %39, align 1, !tbaa !7
  %40 = getelementptr inbounds [0 x %struct.Elm_s], ptr @Elements, i64 0, i64 %37, i32 7
  %41 = load i64, ptr %40, align 8, !tbaa !71
  %42 = and i64 %41, 268435456
  %43 = icmp eq i64 %42, 0
  %44 = select i1 %43, i32 0, i32 %30
  %45 = getelementptr inbounds [0 x %struct.Elm_s], ptr @Elements, i64 0, i64 %37, i32 2
  %46 = load i8, ptr %45, align 1, !tbaa !122
  %47 = sext i8 %46 to i32
  %48 = getelementptr inbounds [0 x %struct.Elm_s], ptr @Elements, i64 0, i64 %37, i32 3
  %49 = load i8, ptr %48, align 2, !tbaa !123
  %50 = sext i8 %49 to i32
  %51 = add nsw i32 %50, %47
  %52 = sdiv i32 %51, 2
  %53 = load i32, ptr @speed, align 4, !tbaa !12
  %54 = mul nsw i32 %52, %53
  %55 = load i32, ptr %14, align 8, !tbaa !24
  %56 = call ptr @Darray_find(ptr noundef %2, i32 noundef %55) #26
  %57 = trunc i32 %54 to i8
  store i8 %57, ptr %56, align 1, !tbaa !7
  %58 = add i32 %54, %31
  %59 = load i32, ptr %14, align 8, !tbaa !24
  %60 = call ptr @Darray_find(ptr noundef %2, i32 noundef %59) #26
  %61 = trunc i32 %44 to i8
  store i8 %61, ptr %60, align 1, !tbaa !7
  %62 = icmp sgt i32 %33, 1
  br i1 %62, label %29, label %74, !llvm.loop !124

63:                                               ; preds = %21
  %64 = load ptr, ptr %4, align 8, !tbaa !14
  %65 = getelementptr inbounds i8, ptr %64, i64 1
  store ptr %65, ptr %4, align 8, !tbaa !14
  %66 = load i8, ptr %64, align 1, !tbaa !7
  switch i8 %66, label %70 [
    i8 39, label %67
    i8 44, label %68
    i8 43, label %69
    i8 45, label %74
  ]

67:                                               ; preds = %63
  br label %74

68:                                               ; preds = %63
  br label %74

69:                                               ; preds = %63
  br label %74

70:                                               ; preds = %63
  %71 = sext i8 %66 to i32
  %72 = load ptr, ptr @stderr, align 8, !tbaa !14
  %73 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %72, ptr noundef nonnull @.str.1.822, i32 noundef %71, i32 noundef %1, ptr noundef %0) #28
  br label %74

74:                                               ; preds = %70, %69, %68, %67, %63, %29, %24
  %75 = phi i32 [ %18, %70 ], [ %18, %63 ], [ %18, %69 ], [ %18, %68 ], [ %18, %67 ], [ %18, %24 ], [ %58, %29 ]
  %76 = phi i32 [ %17, %70 ], [ %17, %63 ], [ 1, %69 ], [ 2, %68 ], [ 3, %67 ], [ %17, %24 ], [ %44, %29 ]
  %77 = load ptr, ptr %4, align 8, !tbaa !14
  %78 = icmp ult ptr %77, %6
  br i1 %78, label %15, label %79, !llvm.loop !125

79:                                               ; preds = %74, %15, %10
  %80 = phi i32 [ 0, %10 ], [ %18, %15 ], [ %75, %74 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #26
  ret i32 %80
}

; Function Attrs: nounwind uwtable
define internal void @enter(ptr noundef %0, ...) unnamed_addr #4 {
  %2 = alloca [1 x %struct.__va_list_tag], align 16
  %3 = alloca [20 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %2) #26
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %3) #26
  %4 = getelementptr inbounds i8, ptr %3, i64 1
  call void @llvm.va_start(ptr nonnull %2)
  %5 = getelementptr inbounds %struct.__va_list_tag, ptr %2, i64 0, i32 2
  %6 = getelementptr inbounds %struct.__va_list_tag, ptr %2, i64 0, i32 3
  br label %7

7:                                                ; preds = %40, %1
  %8 = phi ptr [ %45, %40 ], [ %4, %1 ]
  br label %9

9:                                                ; preds = %46, %7
  %10 = load i32, ptr %2, align 16
  %11 = icmp ult i32 %10, 41
  br i1 %11, label %12, label %17

12:                                               ; preds = %9
  %13 = load ptr, ptr %6, align 16
  %14 = zext nneg i32 %10 to i64
  %15 = getelementptr i8, ptr %13, i64 %14
  %16 = add nuw nsw i32 %10, 8
  store i32 %16, ptr %2, align 16
  br label %20

17:                                               ; preds = %9
  %18 = load ptr, ptr %5, align 8
  %19 = getelementptr i8, ptr %18, i64 8
  store ptr %19, ptr %5, align 8
  br label %20

20:                                               ; preds = %17, %12
  %21 = phi ptr [ %15, %12 ], [ %18, %17 ]
  %22 = load ptr, ptr %21, align 8
  %23 = icmp eq ptr %22, null
  br i1 %23, label %49, label %24

24:                                               ; preds = %20
  %25 = load i32, ptr @num_Elements, align 4, !tbaa !12
  %26 = zext i32 %25 to i64
  %27 = getelementptr inbounds %struct.Elm_s, ptr @Elements, i64 %26
  %28 = icmp eq i32 %25, 0
  br i1 %28, label %37, label %29

29:                                               ; preds = %34, %24
  %30 = phi ptr [ %35, %34 ], [ @Elements, %24 ]
  %31 = load ptr, ptr %30, align 8, !tbaa !61
  %32 = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %22, ptr noundef nonnull dereferenceable(1) %31) #27
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %37, label %34

34:                                               ; preds = %29
  %35 = getelementptr inbounds %struct.Elm_s, ptr %30, i64 1
  %36 = icmp ult ptr %35, %27
  br i1 %36, label %29, label %37, !llvm.loop !126

37:                                               ; preds = %34, %29, %24
  %38 = phi ptr [ null, %24 ], [ %30, %29 ], [ null, %34 ]
  %39 = icmp eq ptr %38, null
  br i1 %39, label %46, label %40

40:                                               ; preds = %37
  %41 = ptrtoint ptr %38 to i64
  %42 = sub i64 %41, ptrtoint (ptr @Elements to i64)
  %43 = sdiv exact i64 %42, 272
  %44 = trunc i64 %43 to i8
  %45 = getelementptr inbounds i8, ptr %8, i64 1
  store i8 %44, ptr %8, align 1, !tbaa !7
  br label %7, !llvm.loop !127

46:                                               ; preds = %37
  %47 = load ptr, ptr @stderr, align 8, !tbaa !14
  %48 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %47, ptr noundef nonnull @.str.110.823, ptr noundef nonnull %22) #28
  br label %9, !llvm.loop !127

49:                                               ; preds = %20
  call void @llvm.va_end(ptr %2)
  %50 = ptrtoint ptr %8 to i64
  %51 = ptrtoint ptr %3 to i64
  %52 = xor i64 %51, -1
  %53 = add i64 %50, %52
  %54 = trunc i64 %53 to i8
  store i8 %54, ptr %3, align 16, !tbaa !7
  %55 = shl i64 %53, 56
  %56 = ashr exact i64 %55, 56
  %57 = add nsw i64 %56, 1
  %58 = call noalias ptr @malloc(i64 noundef %57) #29
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %58, ptr nonnull align 16 %3, i64 %57, i1 false)
  call void @trie_insert(ptr noundef nonnull @phtoelm, ptr noundef %0, ptr noundef %58) #26
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %3) #26
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %2) #26
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local i32 @spell_out(ptr noundef %0, i32 noundef %1, ptr noundef %2) local_unnamed_addr #4 {
  %4 = load ptr, ptr @stderr, align 8, !tbaa !14
  %5 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %4, ptr noundef nonnull @.str.2.829, i32 noundef %1, ptr noundef %0) #28
  %6 = icmp sgt i32 %1, 0
  br i1 %6, label %7, label %21

7:                                                ; preds = %7, %3
  %8 = phi i32 [ %19, %7 ], [ 0, %3 ]
  %9 = phi ptr [ %12, %7 ], [ %0, %3 ]
  %10 = phi i32 [ %11, %7 ], [ %1, %3 ]
  %11 = add nsw i32 %10, -1
  %12 = getelementptr inbounds i8, ptr %9, i64 1
  %13 = load i8, ptr %9, align 1, !tbaa !7
  %14 = and i8 %13, 127
  %15 = zext nneg i8 %14 to i64
  %16 = getelementptr inbounds [0 x ptr], ptr @ASCII, i64 0, i64 %15
  %17 = load ptr, ptr %16, align 8, !tbaa !14
  %18 = tail call i32 @xlate_string(ptr noundef %17, ptr noundef %2)
  %19 = add i32 %18, %8
  %20 = icmp sgt i32 %10, 1
  br i1 %20, label %7, label %21, !llvm.loop !128

21:                                               ; preds = %7, %3
  %22 = phi i32 [ 0, %3 ], [ %19, %7 ]
  ret i32 %22
}

; Function Attrs: nounwind uwtable
define dso_local i32 @xlate_string(ptr noundef %0, ptr noundef %1) local_unnamed_addr #4 {
  %3 = tail call ptr @__ctype_b_loc() #31
  %4 = load ptr, ptr %3, align 8, !tbaa !14
  br label %5

5:                                                ; preds = %5, %2
  %6 = phi ptr [ %0, %2 ], [ %13, %5 ]
  %7 = load i8, ptr %6, align 1, !tbaa !7
  %8 = sext i8 %7 to i64
  %9 = getelementptr inbounds i16, ptr %4, i64 %8
  %10 = load i16, ptr %9, align 2, !tbaa !18
  %11 = and i16 %10, 8192
  %12 = icmp eq i16 %11, 0
  %13 = getelementptr inbounds i8, ptr %6, i64 1
  br i1 %12, label %14, label %5, !llvm.loop !129

14:                                               ; preds = %5
  %15 = load i8, ptr %6, align 1, !tbaa !7
  %16 = icmp eq i8 %15, 0
  br i1 %16, label %411, label %17

17:                                               ; preds = %14
  %18 = getelementptr inbounds %struct.darray_t, ptr %1, i64 0, i32 1
  %19 = getelementptr inbounds %struct.darray_t, ptr %1, i64 0, i32 2
  br label %23

20:                                               ; preds = %402
  %21 = load i8, ptr %403, align 1, !tbaa !7
  %22 = icmp eq i8 %21, 0
  br i1 %22, label %411, label %23, !llvm.loop !130

23:                                               ; preds = %20, %17
  %24 = phi i8 [ %15, %17 ], [ %21, %20 ]
  %25 = phi i32 [ 0, %17 ], [ %400, %20 ]
  %26 = phi ptr [ %6, %17 ], [ %403, %20 ]
  %27 = ptrtoint ptr %26 to i64
  %28 = load ptr, ptr %3, align 8, !tbaa !14
  %29 = sext i8 %24 to i64
  %30 = getelementptr inbounds i16, ptr %28, i64 %29
  %31 = load i16, ptr %30, align 2, !tbaa !18
  %32 = zext i16 %31 to i32
  %33 = and i32 %32, 1024
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %174, label %35

35:                                               ; preds = %52, %23
  %36 = phi ptr [ %53, %52 ], [ %26, %23 ]
  %37 = load i8, ptr %36, align 1, !tbaa !7
  %38 = sext i8 %37 to i64
  %39 = getelementptr inbounds i16, ptr %28, i64 %38
  %40 = load i16, ptr %39, align 2, !tbaa !18
  %41 = and i16 %40, 1024
  %42 = icmp eq i16 %41, 0
  br i1 %42, label %43, label %52

43:                                               ; preds = %35
  switch i8 %37, label %56 [
    i8 46, label %44
    i8 45, label %44
    i8 39, label %44
    i8 0, label %126
  ]

44:                                               ; preds = %43, %43, %43
  %45 = getelementptr inbounds i8, ptr %36, i64 1
  %46 = load i8, ptr %45, align 1, !tbaa !7
  %47 = sext i8 %46 to i64
  %48 = getelementptr inbounds i16, ptr %28, i64 %47
  %49 = load i16, ptr %48, align 2, !tbaa !18
  %50 = and i16 %49, 1024
  %51 = icmp eq i16 %50, 0
  br i1 %51, label %54, label %52

52:                                               ; preds = %44, %35
  %53 = getelementptr inbounds i8, ptr %36, i64 1
  br label %35, !llvm.loop !131

54:                                               ; preds = %44
  %55 = icmp eq i8 %37, 0
  br i1 %55, label %126, label %56

56:                                               ; preds = %54, %43
  %57 = zext i16 %40 to i32
  %58 = and i32 %57, 8196
  %59 = icmp eq i32 %58, 0
  br i1 %59, label %60, label %126

60:                                               ; preds = %56
  %61 = and i32 %57, 2048
  %62 = icmp eq i32 %61, 0
  br i1 %62, label %133, label %63

63:                                               ; preds = %60
  %64 = ptrtoint ptr %36 to i64
  %65 = ptrtoint ptr %26 to i64
  %66 = sub i64 %64, %65
  %67 = trunc i64 %66 to i32
  %68 = icmp sgt i32 %67, 0
  br i1 %68, label %69, label %123

69:                                               ; preds = %101, %63
  %70 = phi ptr [ %76, %101 ], [ %26, %63 ]
  %71 = phi i32 [ %114, %101 ], [ 0, %63 ]
  %72 = phi i32 [ %104, %101 ], [ 0, %63 ]
  %73 = phi i32 [ %113, %101 ], [ 0, %63 ]
  %74 = phi i32 [ %89, %101 ], [ 0, %63 ]
  %75 = phi i32 [ %102, %101 ], [ 0, %63 ]
  %76 = getelementptr inbounds i8, ptr %70, i64 1
  %77 = load i8, ptr %70, align 1, !tbaa !7
  %78 = icmp ne i32 %71, 0
  %79 = icmp ne i32 %72, 45
  %80 = and i1 %78, %79
  br i1 %80, label %81, label %88

81:                                               ; preds = %69
  %82 = sext i8 %77 to i64
  %83 = getelementptr inbounds i16, ptr %28, i64 %82
  %84 = load i16, ptr %83, align 2, !tbaa !18
  %85 = and i16 %84, 256
  %86 = icmp eq i16 %85, 0
  %87 = select i1 %86, i32 %74, i32 1
  br label %88

88:                                               ; preds = %81, %69
  %89 = phi i32 [ %74, %69 ], [ %87, %81 ]
  %90 = sext i8 %77 to i64
  %91 = getelementptr inbounds i16, ptr %28, i64 %90
  %92 = load i16, ptr %91, align 2, !tbaa !18
  %93 = and i16 %92, 512
  %94 = icmp eq i16 %93, 0
  br i1 %94, label %101, label %95

95:                                               ; preds = %88
  %96 = tail call ptr @__ctype_toupper_loc() #31
  %97 = load ptr, ptr %96, align 8, !tbaa !14
  %98 = getelementptr inbounds i32, ptr %97, i64 %90
  %99 = load i32, ptr %98, align 4, !tbaa !12
  %100 = trunc i32 %99 to i8
  br label %101

101:                                              ; preds = %95, %88
  %102 = phi i32 [ 1, %95 ], [ %75, %88 ]
  %103 = phi i8 [ %100, %95 ], [ %77, %88 ]
  %104 = sext i8 %103 to i32
  %105 = add i8 %103, -65
  %106 = tail call i8 @llvm.fshl.i8(i8 %105, i8 %105, i8 7)
  %107 = icmp ult i8 %106, 13
  %108 = zext nneg i8 %106 to i16
  %109 = lshr i16 5269, %108
  %110 = and i16 %109, 1
  %111 = icmp eq i16 %110, 0
  %112 = select i1 %111, i32 %73, i32 1
  %113 = select i1 %107, i32 %112, i32 %73
  %114 = add nuw nsw i32 %71, 1
  %115 = icmp eq i32 %114, %67
  br i1 %115, label %116, label %69, !llvm.loop !132

116:                                              ; preds = %101
  %117 = icmp eq i32 %113, 0
  %118 = icmp ne i32 %89, 0
  %119 = icmp eq i32 %102, 0
  %120 = select i1 %117, i1 true, i1 %118
  %121 = select i1 %120, i1 true, i1 %119
  %122 = zext i1 %121 to i32
  br label %123

123:                                              ; preds = %116, %63
  %124 = phi i32 [ 1, %63 ], [ %122, %116 ]
  %125 = icmp eq i32 %124, 0
  br i1 %125, label %126, label %133

126:                                              ; preds = %123, %56, %54, %43
  %127 = ptrtoint ptr %36 to i64
  %128 = ptrtoint ptr %26 to i64
  %129 = sub i64 %127, %128
  %130 = trunc i64 %129 to i32
  %131 = tail call fastcc i32 @xlate_word(ptr noundef nonnull %26, i32 noundef %130, ptr noundef %1)
  %132 = add i32 %131, %25
  br label %398

133:                                              ; preds = %123, %60
  %134 = load i8, ptr %36, align 1, !tbaa !7
  %135 = icmp eq i8 %134, 0
  br i1 %135, label %148, label %136

136:                                              ; preds = %144, %133
  %137 = phi i8 [ %146, %144 ], [ %134, %133 ]
  %138 = phi ptr [ %145, %144 ], [ %36, %133 ]
  %139 = sext i8 %137 to i64
  %140 = getelementptr inbounds i16, ptr %28, i64 %139
  %141 = load i16, ptr %140, align 2, !tbaa !18
  %142 = and i16 %141, 8196
  %143 = icmp eq i16 %142, 0
  br i1 %143, label %144, label %148

144:                                              ; preds = %136
  %145 = getelementptr inbounds i8, ptr %138, i64 1
  %146 = load i8, ptr %145, align 1, !tbaa !7
  %147 = icmp eq i8 %146, 0
  br i1 %147, label %148, label %136, !llvm.loop !133

148:                                              ; preds = %144, %136, %133
  %149 = phi ptr [ %36, %133 ], [ %145, %144 ], [ %138, %136 ]
  %150 = ptrtoint ptr %149 to i64
  %151 = ptrtoint ptr %26 to i64
  %152 = sub i64 %150, %151
  %153 = trunc i64 %152 to i32
  %154 = load ptr, ptr @stderr, align 8, !tbaa !14
  %155 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %154, ptr noundef nonnull @.str.2.829, i32 noundef %153, ptr noundef nonnull %26) #28
  %156 = icmp sgt i32 %153, 0
  br i1 %156, label %157, label %171

157:                                              ; preds = %157, %148
  %158 = phi i32 [ %169, %157 ], [ 0, %148 ]
  %159 = phi ptr [ %162, %157 ], [ %26, %148 ]
  %160 = phi i32 [ %161, %157 ], [ %153, %148 ]
  %161 = add nsw i32 %160, -1
  %162 = getelementptr inbounds i8, ptr %159, i64 1
  %163 = load i8, ptr %159, align 1, !tbaa !7
  %164 = and i8 %163, 127
  %165 = zext nneg i8 %164 to i64
  %166 = getelementptr inbounds [0 x ptr], ptr @ASCII, i64 0, i64 %165
  %167 = load ptr, ptr %166, align 8, !tbaa !14
  %168 = tail call i32 @xlate_string(ptr noundef %167, ptr noundef %1)
  %169 = add i32 %168, %158
  %170 = icmp sgt i32 %160, 1
  br i1 %170, label %157, label %171, !llvm.loop !128

171:                                              ; preds = %157, %148
  %172 = phi i32 [ 0, %148 ], [ %169, %157 ]
  %173 = add i32 %172, %25
  br label %398

174:                                              ; preds = %23
  %175 = and i32 %32, 2048
  %176 = icmp eq i32 %175, 0
  br i1 %176, label %177, label %186

177:                                              ; preds = %174
  switch i8 %24, label %291 [
    i8 45, label %178
    i8 91, label %273
  ]

178:                                              ; preds = %177
  %179 = getelementptr inbounds i8, ptr %26, i64 1
  %180 = load i8, ptr %179, align 1, !tbaa !7
  %181 = sext i8 %180 to i64
  %182 = getelementptr inbounds i16, ptr %28, i64 %181
  %183 = load i16, ptr %182, align 2, !tbaa !18
  %184 = and i16 %183, 2048
  %185 = icmp eq i16 %184, 0
  br i1 %185, label %271, label %186

186:                                              ; preds = %178, %174
  %187 = icmp eq i8 %24, 45
  %188 = select i1 %187, i32 -1, i32 1
  %189 = zext i1 %187 to i64
  %190 = getelementptr inbounds i8, ptr %26, i64 %189
  %191 = load i8, ptr %190, align 1, !tbaa !7
  %192 = sext i8 %191 to i64
  %193 = getelementptr inbounds i16, ptr %28, i64 %192
  %194 = load i16, ptr %193, align 2, !tbaa !18
  %195 = and i16 %194, 2048
  %196 = icmp eq i16 %195, 0
  br i1 %196, label %211, label %197

197:                                              ; preds = %197, %186
  %198 = phi i64 [ %206, %197 ], [ %192, %186 ]
  %199 = phi ptr [ %204, %197 ], [ %190, %186 ]
  %200 = phi i64 [ %203, %197 ], [ 0, %186 ]
  %201 = mul nsw i64 %200, 10
  %202 = add i64 %201, -48
  %203 = add i64 %202, %198
  %204 = getelementptr inbounds i8, ptr %199, i64 1
  %205 = load i8, ptr %204, align 1, !tbaa !7
  %206 = sext i8 %205 to i64
  %207 = getelementptr inbounds i16, ptr %28, i64 %206
  %208 = load i16, ptr %207, align 2, !tbaa !18
  %209 = and i16 %208, 2048
  %210 = icmp eq i16 %209, 0
  br i1 %210, label %211, label %197, !llvm.loop !134

211:                                              ; preds = %197, %186
  %212 = phi i64 [ 0, %186 ], [ %203, %197 ]
  %213 = phi ptr [ %190, %186 ], [ %204, %197 ]
  %214 = phi i8 [ %191, %186 ], [ %205, %197 ]
  %215 = icmp eq i8 %214, 46
  br i1 %215, label %216, label %266

216:                                              ; preds = %211
  %217 = getelementptr inbounds i8, ptr %213, i64 1
  %218 = load i8, ptr %217, align 1, !tbaa !7
  %219 = sext i8 %218 to i64
  %220 = getelementptr inbounds i16, ptr %28, i64 %219
  %221 = load i16, ptr %220, align 2, !tbaa !18
  %222 = and i16 %221, 2048
  %223 = icmp eq i16 %222, 0
  br i1 %223, label %266, label %224

224:                                              ; preds = %216
  %225 = sext i32 %188 to i64
  %226 = mul nsw i64 %212, %225
  %227 = tail call i32 @xlate_cardinal(i64 noundef %226, ptr noundef %1) #26
  %228 = tail call i32 @xlate_string(ptr noundef nonnull @.str.4.830, ptr noundef %1)
  %229 = load ptr, ptr %3, align 8, !tbaa !14
  br label %230

230:                                              ; preds = %230, %224
  %231 = phi ptr [ %217, %224 ], [ %238, %230 ]
  %232 = load i8, ptr %231, align 1, !tbaa !7
  %233 = sext i8 %232 to i64
  %234 = getelementptr inbounds i16, ptr %229, i64 %233
  %235 = load i16, ptr %234, align 2, !tbaa !18
  %236 = and i16 %235, 2048
  %237 = icmp eq i16 %236, 0
  %238 = getelementptr inbounds i8, ptr %231, i64 1
  br i1 %237, label %239, label %230, !llvm.loop !135

239:                                              ; preds = %230
  %240 = add i32 %227, %25
  %241 = add i32 %240, %228
  %242 = ptrtoint ptr %231 to i64
  %243 = ptrtoint ptr %217 to i64
  %244 = sub i64 %242, %243
  %245 = trunc i64 %244 to i32
  %246 = load ptr, ptr @stderr, align 8, !tbaa !14
  %247 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %246, ptr noundef nonnull @.str.2.829, i32 noundef %245, ptr noundef nonnull %217) #28
  %248 = icmp sgt i32 %245, 0
  br i1 %248, label %249, label %263

249:                                              ; preds = %249, %239
  %250 = phi i32 [ %261, %249 ], [ 0, %239 ]
  %251 = phi ptr [ %254, %249 ], [ %217, %239 ]
  %252 = phi i32 [ %253, %249 ], [ %245, %239 ]
  %253 = add nsw i32 %252, -1
  %254 = getelementptr inbounds i8, ptr %251, i64 1
  %255 = load i8, ptr %251, align 1, !tbaa !7
  %256 = and i8 %255, 127
  %257 = zext nneg i8 %256 to i64
  %258 = getelementptr inbounds [0 x ptr], ptr @ASCII, i64 0, i64 %257
  %259 = load ptr, ptr %258, align 8, !tbaa !14
  %260 = tail call i32 @xlate_string(ptr noundef %259, ptr noundef %1)
  %261 = add i32 %260, %250
  %262 = icmp sgt i32 %252, 1
  br i1 %262, label %249, label %263, !llvm.loop !128

263:                                              ; preds = %249, %239
  %264 = phi i32 [ 0, %239 ], [ %261, %249 ]
  %265 = add i32 %241, %264
  br label %398

266:                                              ; preds = %216, %211
  %267 = sext i32 %188 to i64
  %268 = mul nsw i64 %212, %267
  %269 = tail call i32 @xlate_cardinal(i64 noundef %268, ptr noundef %1) #26
  %270 = add i32 %269, %25
  br label %398

271:                                              ; preds = %178
  %272 = icmp eq i8 %24, 91
  br i1 %272, label %273, label %291

273:                                              ; preds = %271, %177
  %274 = tail call ptr @strchr(ptr noundef nonnull dereferenceable(1) %26, i32 noundef 93) #27
  %275 = icmp eq ptr %274, null
  br i1 %275, label %291, label %276

276:                                              ; preds = %280, %273
  %277 = phi ptr [ %281, %280 ], [ %26, %273 ]
  %278 = load i8, ptr %277, align 1, !tbaa !7
  %279 = icmp eq i8 %278, 0
  br i1 %279, label %283, label %280

280:                                              ; preds = %276
  %281 = getelementptr inbounds i8, ptr %277, i64 1
  %282 = icmp eq i8 %278, 93
  br i1 %282, label %283, label %276, !llvm.loop !136

283:                                              ; preds = %280, %276
  %284 = phi ptr [ %281, %280 ], [ %277, %276 ]
  %285 = ptrtoint ptr %284 to i64
  %286 = ptrtoint ptr %26 to i64
  %287 = sub i64 %285, %286
  %288 = trunc i64 %287 to i32
  %289 = tail call fastcc i32 @xlate_word(ptr noundef nonnull %26, i32 noundef %288, ptr noundef %1)
  %290 = add i32 %289, %25
  br label %398

291:                                              ; preds = %273, %271, %177
  %292 = and i16 %31, 4
  %293 = icmp eq i16 %292, 0
  br i1 %293, label %294, label %297

294:                                              ; preds = %291
  %295 = load i8, ptr %26, align 1, !tbaa !7
  %296 = icmp eq i8 %295, 0
  br i1 %296, label %372, label %360

297:                                              ; preds = %291
  switch i8 %24, label %348 [
    i8 33, label %298
    i8 63, label %298
    i8 46, label %298
    i8 34, label %324
    i8 58, label %324
    i8 45, label %324
    i8 59, label %324
    i8 44, label %324
    i8 40, label %324
    i8 41, label %324
    i8 91, label %327
  ]

298:                                              ; preds = %297, %297, %297
  %299 = getelementptr inbounds i8, ptr %26, i64 1
  %300 = load i8, ptr %299, align 1, !tbaa !7
  %301 = icmp eq i8 %300, 0
  br i1 %301, label %308, label %302

302:                                              ; preds = %298
  %303 = sext i8 %300 to i64
  %304 = getelementptr inbounds i16, ptr %28, i64 %303
  %305 = load i16, ptr %304, align 2, !tbaa !18
  %306 = and i16 %305, 8192
  %307 = icmp eq i16 %306, 0
  br i1 %307, label %322, label %308

308:                                              ; preds = %302, %298
  %309 = load i32, ptr %18, align 8, !tbaa !24
  %310 = icmp eq i32 %309, 0
  br i1 %310, label %322, label %311

311:                                              ; preds = %308
  %312 = load i32, ptr %19, align 4, !tbaa !23
  %313 = icmp eq i32 %312, 0
  br i1 %313, label %316, label %314

314:                                              ; preds = %311
  %315 = load ptr, ptr %1, align 8, !tbaa !21
  br label %318

316:                                              ; preds = %311
  %317 = tail call ptr @Darray_find(ptr noundef %1, i32 noundef 0) #26
  br label %318

318:                                              ; preds = %316, %314
  %319 = phi ptr [ %315, %314 ], [ %317, %316 ]
  %320 = load i32, ptr %18, align 8, !tbaa !24
  %321 = load i32, ptr @verbose, align 4, !tbaa !12
  tail call void @say_phones(ptr noundef %319, i32 noundef %320, i32 noundef %321)
  store i32 0, ptr %18, align 8, !tbaa !24
  br label %322

322:                                              ; preds = %318, %308, %302
  %323 = tail call i32 @phone_append(ptr noundef %1, i32 noundef 32) #26
  br label %398

324:                                              ; preds = %297, %297, %297, %297, %297, %297, %297
  %325 = getelementptr inbounds i8, ptr %26, i64 1
  %326 = tail call i32 @phone_append(ptr noundef %1, i32 noundef 32) #26
  br label %398

327:                                              ; preds = %297
  %328 = tail call ptr @strchr(ptr noundef nonnull dereferenceable(1) %26, i32 noundef 93) #27
  %329 = ptrtoint ptr %328 to i64
  %330 = icmp eq ptr %328, null
  br i1 %330, label %346, label %331

331:                                              ; preds = %327
  %332 = getelementptr inbounds i8, ptr %26, i64 1
  %333 = icmp ult ptr %332, %328
  br i1 %333, label %334, label %344

334:                                              ; preds = %331
  %335 = sub i64 %329, %27
  %336 = getelementptr i8, ptr %26, i64 %335
  br label %337

337:                                              ; preds = %337, %334
  %338 = phi ptr [ %342, %337 ], [ %332, %334 ]
  %339 = load i8, ptr %338, align 1, !tbaa !7
  %340 = sext i8 %339 to i32
  %341 = tail call i32 @phone_append(ptr noundef %1, i32 noundef %340) #26
  %342 = getelementptr inbounds i8, ptr %338, i64 1
  %343 = icmp eq ptr %342, %336
  br i1 %343, label %344, label %337, !llvm.loop !137

344:                                              ; preds = %337, %331
  %345 = getelementptr inbounds i8, ptr %328, i64 1
  br label %346

346:                                              ; preds = %344, %327
  %347 = phi ptr [ %345, %344 ], [ %26, %327 ]
  br i1 %330, label %348, label %398

348:                                              ; preds = %346, %297
  %349 = phi ptr [ %26, %297 ], [ %347, %346 ]
  %350 = load ptr, ptr @stderr, align 8, !tbaa !14
  %351 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %350, ptr noundef nonnull @.str.2.829, i32 noundef 1, ptr noundef nonnull %26) #28
  %352 = load i8, ptr %26, align 1, !tbaa !7
  %353 = and i8 %352, 127
  %354 = zext nneg i8 %353 to i64
  %355 = getelementptr inbounds [0 x ptr], ptr @ASCII, i64 0, i64 %354
  %356 = load ptr, ptr %355, align 8, !tbaa !14
  %357 = tail call i32 @xlate_string(ptr noundef %356, ptr noundef %1)
  %358 = add i32 %357, %25
  %359 = getelementptr inbounds i8, ptr %349, i64 1
  br label %398

360:                                              ; preds = %368, %294
  %361 = phi i8 [ %370, %368 ], [ %295, %294 ]
  %362 = phi ptr [ %369, %368 ], [ %26, %294 ]
  %363 = sext i8 %361 to i64
  %364 = getelementptr inbounds i16, ptr %28, i64 %363
  %365 = load i16, ptr %364, align 2, !tbaa !18
  %366 = and i16 %365, 8192
  %367 = icmp eq i16 %366, 0
  br i1 %367, label %368, label %372

368:                                              ; preds = %360
  %369 = getelementptr inbounds i8, ptr %362, i64 1
  %370 = load i8, ptr %369, align 1, !tbaa !7
  %371 = icmp eq i8 %370, 0
  br i1 %371, label %372, label %360, !llvm.loop !138

372:                                              ; preds = %368, %360, %294
  %373 = phi ptr [ %26, %294 ], [ %362, %360 ], [ %369, %368 ]
  %374 = ptrtoint ptr %373 to i64
  %375 = ptrtoint ptr %26 to i64
  %376 = sub i64 %374, %375
  %377 = trunc i64 %376 to i32
  %378 = load ptr, ptr @stderr, align 8, !tbaa !14
  %379 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %378, ptr noundef nonnull @.str.2.829, i32 noundef %377, ptr noundef nonnull %26) #28
  %380 = icmp sgt i32 %377, 0
  br i1 %380, label %381, label %395

381:                                              ; preds = %381, %372
  %382 = phi i32 [ %393, %381 ], [ 0, %372 ]
  %383 = phi ptr [ %386, %381 ], [ %26, %372 ]
  %384 = phi i32 [ %385, %381 ], [ %377, %372 ]
  %385 = add nsw i32 %384, -1
  %386 = getelementptr inbounds i8, ptr %383, i64 1
  %387 = load i8, ptr %383, align 1, !tbaa !7
  %388 = and i8 %387, 127
  %389 = zext nneg i8 %388 to i64
  %390 = getelementptr inbounds [0 x ptr], ptr @ASCII, i64 0, i64 %389
  %391 = load ptr, ptr %390, align 8, !tbaa !14
  %392 = tail call i32 @xlate_string(ptr noundef %391, ptr noundef %1)
  %393 = add i32 %392, %382
  %394 = icmp sgt i32 %384, 1
  br i1 %394, label %381, label %395, !llvm.loop !128

395:                                              ; preds = %381, %372
  %396 = phi i32 [ 0, %372 ], [ %393, %381 ]
  %397 = add i32 %396, %25
  br label %398

398:                                              ; preds = %395, %348, %346, %324, %322, %283, %266, %263, %171, %126
  %399 = phi ptr [ %36, %126 ], [ %149, %171 ], [ %284, %283 ], [ %359, %348 ], [ %347, %346 ], [ %325, %324 ], [ %299, %322 ], [ %373, %395 ], [ %231, %263 ], [ %213, %266 ]
  %400 = phi i32 [ %132, %126 ], [ %173, %171 ], [ %290, %283 ], [ %358, %348 ], [ %25, %346 ], [ %25, %324 ], [ %25, %322 ], [ %397, %395 ], [ %265, %263 ], [ %270, %266 ]
  %401 = load ptr, ptr %3, align 8, !tbaa !14
  br label %402

402:                                              ; preds = %402, %398
  %403 = phi ptr [ %399, %398 ], [ %410, %402 ]
  %404 = load i8, ptr %403, align 1, !tbaa !7
  %405 = sext i8 %404 to i64
  %406 = getelementptr inbounds i16, ptr %401, i64 %405
  %407 = load i16, ptr %406, align 2, !tbaa !18
  %408 = and i16 %407, 8192
  %409 = icmp eq i16 %408, 0
  %410 = getelementptr inbounds i8, ptr %403, i64 1
  br i1 %409, label %20, label %402, !llvm.loop !139

411:                                              ; preds = %20, %14
  %412 = phi i32 [ 0, %14 ], [ %400, %20 ]
  ret i32 %412
}

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare ptr @__ctype_b_loc() local_unnamed_addr #21

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare ptr @__ctype_toupper_loc() local_unnamed_addr #21

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i8 @llvm.fshl.i8(i8, i8, i8) #12

; Function Attrs: nounwind uwtable
define internal fastcc i32 @xlate_word(ptr noundef %0, i32 noundef %1, ptr noundef %2) unnamed_addr #4 {
  %4 = load i8, ptr %0, align 1, !tbaa !7
  %5 = icmp eq i8 %4, 91
  br i1 %5, label %161, label %6

6:                                                ; preds = %3
  %7 = load ptr, ptr @dict, align 8, !tbaa !14
  %8 = icmp eq ptr %7, null
  br i1 %8, label %72, label %9

9:                                                ; preds = %6
  %10 = tail call ptr @dict_find(ptr noundef nonnull %0, i32 noundef %1) #26
  %11 = icmp eq ptr %10, null
  br i1 %11, label %15, label %12

12:                                               ; preds = %9
  %13 = load i8, ptr %10, align 1, !tbaa !7
  %14 = icmp eq i8 %13, 0
  br i1 %14, label %44, label %23

15:                                               ; preds = %9
  %16 = sext i32 %1 to i64
  %17 = getelementptr inbounds i8, ptr %0, i64 %16
  %18 = icmp slt i32 %1, 1
  br i1 %18, label %68, label %48

19:                                               ; preds = %34, %23
  %20 = phi i32 [ %26, %23 ], [ %41, %34 ]
  %21 = load i8, ptr %28, align 1, !tbaa !7
  %22 = icmp eq i8 %21, 0
  br i1 %22, label %44, label %23, !llvm.loop !140

23:                                               ; preds = %19, %12
  %24 = phi i8 [ %21, %19 ], [ %13, %12 ]
  %25 = phi ptr [ %28, %19 ], [ %10, %12 ]
  %26 = phi i32 [ %20, %19 ], [ 0, %12 ]
  %27 = load ptr, ptr @dialect, align 8, !tbaa !14
  %28 = getelementptr inbounds i8, ptr %25, i64 1
  %29 = zext i8 %24 to i64
  %30 = getelementptr inbounds ptr, ptr %27, i64 %29
  %31 = load ptr, ptr %30, align 8, !tbaa !14
  %32 = load i8, ptr %31, align 1, !tbaa !7
  %33 = icmp eq i8 %32, 0
  br i1 %33, label %19, label %34

34:                                               ; preds = %34, %23
  %35 = phi i8 [ %42, %34 ], [ %32, %23 ]
  %36 = phi ptr [ %38, %34 ], [ %31, %23 ]
  %37 = phi i32 [ %41, %34 ], [ %26, %23 ]
  %38 = getelementptr inbounds i8, ptr %36, i64 1
  %39 = sext i8 %35 to i32
  %40 = tail call i32 @phone_append(ptr noundef %2, i32 noundef %39) #26
  %41 = add i32 %37, 1
  %42 = load i8, ptr %38, align 1, !tbaa !7
  %43 = icmp eq i8 %42, 0
  br i1 %43, label %19, label %34, !llvm.loop !141

44:                                               ; preds = %19, %12
  %45 = phi i32 [ 0, %12 ], [ %20, %19 ]
  %46 = tail call i32 @phone_append(ptr noundef %2, i32 noundef 32) #26
  tail call void @free(ptr noundef %10) #26
  %47 = add i32 %45, 1
  br label %68

48:                                               ; preds = %66, %15
  %49 = phi ptr [ %53, %66 ], [ %0, %15 ]
  %50 = load i8, ptr %49, align 1, !tbaa !7
  %51 = add i8 %50, -45
  %52 = icmp ult i8 %51, 2
  %53 = getelementptr inbounds i8, ptr %49, i64 1
  br i1 %52, label %54, label %66

54:                                               ; preds = %48
  %55 = ptrtoint ptr %49 to i64
  %56 = ptrtoint ptr %0 to i64
  %57 = sub i64 %55, %56
  %58 = trunc i64 %57 to i32
  %59 = tail call fastcc i32 @xlate_word(ptr noundef nonnull %0, i32 noundef %58, ptr noundef %2)
  %60 = ptrtoint ptr %17 to i64
  %61 = ptrtoint ptr %53 to i64
  %62 = sub i64 %60, %61
  %63 = trunc i64 %62 to i32
  %64 = tail call fastcc i32 @xlate_word(ptr noundef nonnull %53, i32 noundef %63, ptr noundef %2)
  %65 = add i32 %64, %59
  br label %68

66:                                               ; preds = %48
  %67 = icmp uge ptr %53, %17
  br i1 %67, label %68, label %48, !llvm.loop !142

68:                                               ; preds = %66, %54, %44, %15
  %69 = phi i32 [ %45, %44 ], [ %65, %54 ], [ 0, %15 ], [ 0, %66 ]
  %70 = phi i32 [ %47, %44 ], [ %65, %54 ], [ undef, %15 ], [ undef, %66 ]
  %71 = phi i1 [ false, %44 ], [ false, %54 ], [ %18, %15 ], [ %67, %66 ]
  br i1 %71, label %72, label %184

72:                                               ; preds = %68, %6
  %73 = phi i32 [ %69, %68 ], [ 0, %6 ]
  %74 = icmp sgt i32 %1, 0
  br i1 %74, label %75, label %131

75:                                               ; preds = %72
  %76 = tail call ptr @__ctype_b_loc() #31
  %77 = load ptr, ptr %76, align 8, !tbaa !14
  br label %78

78:                                               ; preds = %110, %75
  %79 = phi ptr [ %0, %75 ], [ %85, %110 ]
  %80 = phi i32 [ 0, %75 ], [ %123, %110 ]
  %81 = phi i32 [ 0, %75 ], [ %113, %110 ]
  %82 = phi i32 [ 0, %75 ], [ %122, %110 ]
  %83 = phi i32 [ 0, %75 ], [ %98, %110 ]
  %84 = phi i32 [ 0, %75 ], [ %111, %110 ]
  %85 = getelementptr inbounds i8, ptr %79, i64 1
  %86 = load i8, ptr %79, align 1, !tbaa !7
  %87 = icmp ne i32 %80, 0
  %88 = icmp ne i32 %81, 45
  %89 = and i1 %87, %88
  br i1 %89, label %90, label %97

90:                                               ; preds = %78
  %91 = sext i8 %86 to i64
  %92 = getelementptr inbounds i16, ptr %77, i64 %91
  %93 = load i16, ptr %92, align 2, !tbaa !18
  %94 = and i16 %93, 256
  %95 = icmp eq i16 %94, 0
  %96 = select i1 %95, i32 %83, i32 1
  br label %97

97:                                               ; preds = %90, %78
  %98 = phi i32 [ %83, %78 ], [ %96, %90 ]
  %99 = sext i8 %86 to i64
  %100 = getelementptr inbounds i16, ptr %77, i64 %99
  %101 = load i16, ptr %100, align 2, !tbaa !18
  %102 = and i16 %101, 512
  %103 = icmp eq i16 %102, 0
  br i1 %103, label %110, label %104

104:                                              ; preds = %97
  %105 = tail call ptr @__ctype_toupper_loc() #31
  %106 = load ptr, ptr %105, align 8, !tbaa !14
  %107 = getelementptr inbounds i32, ptr %106, i64 %99
  %108 = load i32, ptr %107, align 4, !tbaa !12
  %109 = trunc i32 %108 to i8
  br label %110

110:                                              ; preds = %104, %97
  %111 = phi i32 [ 1, %104 ], [ %84, %97 ]
  %112 = phi i8 [ %109, %104 ], [ %86, %97 ]
  %113 = sext i8 %112 to i32
  %114 = add i8 %112, -65
  %115 = tail call i8 @llvm.fshl.i8(i8 %114, i8 %114, i8 7)
  %116 = icmp ult i8 %115, 13
  %117 = zext nneg i8 %115 to i16
  %118 = lshr i16 5269, %117
  %119 = and i16 %118, 1
  %120 = icmp eq i16 %119, 0
  %121 = select i1 %120, i32 %82, i32 1
  %122 = select i1 %116, i32 %121, i32 %82
  %123 = add nuw nsw i32 %80, 1
  %124 = icmp eq i32 %123, %1
  br i1 %124, label %125, label %78, !llvm.loop !132

125:                                              ; preds = %110
  %126 = icmp ne i32 %122, 0
  %127 = icmp eq i32 %98, 0
  %128 = icmp ne i32 %111, 0
  %129 = select i1 %126, i1 %127, i1 false
  %130 = select i1 %129, i1 %128, i1 false
  br i1 %130, label %149, label %131

131:                                              ; preds = %125, %72
  %132 = load ptr, ptr @stderr, align 8, !tbaa !14
  %133 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %132, ptr noundef nonnull @.str.2.829, i32 noundef %1, ptr noundef nonnull %0) #28
  %134 = icmp sgt i32 %1, 0
  br i1 %134, label %135, label %184

135:                                              ; preds = %135, %131
  %136 = phi i32 [ %147, %135 ], [ 0, %131 ]
  %137 = phi ptr [ %140, %135 ], [ %0, %131 ]
  %138 = phi i32 [ %139, %135 ], [ %1, %131 ]
  %139 = add nsw i32 %138, -1
  %140 = getelementptr inbounds i8, ptr %137, i64 1
  %141 = load i8, ptr %137, align 1, !tbaa !7
  %142 = and i8 %141, 127
  %143 = zext nneg i8 %142 to i64
  %144 = getelementptr inbounds [0 x ptr], ptr @ASCII, i64 0, i64 %143
  %145 = load ptr, ptr %144, align 8, !tbaa !14
  %146 = tail call i32 @xlate_string(ptr noundef %145, ptr noundef %2)
  %147 = add i32 %146, %136
  %148 = icmp sgt i32 %138, 1
  br i1 %148, label %135, label %184, !llvm.loop !128

149:                                              ; preds = %125
  %150 = load ptr, ptr @dict, align 8, !tbaa !14
  %151 = icmp ne ptr %150, null
  %152 = load i32, ptr @verbose, align 4
  %153 = icmp ne i32 %152, 0
  %154 = select i1 %151, i1 true, i1 %153
  br i1 %154, label %155, label %158

155:                                              ; preds = %149
  %156 = load ptr, ptr @stderr, align 8, !tbaa !14
  %157 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %156, ptr noundef nonnull @.str.15.832, ptr noundef %150, i32 noundef %1, ptr noundef nonnull %0) #28
  br label %158

158:                                              ; preds = %155, %149
  %159 = tail call i32 @NRL(ptr noundef nonnull %0, i32 noundef %1, ptr noundef %2) #26
  %160 = add i32 %159, %73
  br label %180

161:                                              ; preds = %3
  %162 = getelementptr inbounds i8, ptr %0, i64 1
  %163 = sext i32 %1 to i64
  %164 = getelementptr i8, ptr %162, i64 %163
  %165 = getelementptr i8, ptr %164, i64 -2
  %166 = load i8, ptr %165, align 1, !tbaa !7
  %167 = icmp eq i8 %166, 93
  %168 = select i1 %167, i32 -2, i32 -1
  %169 = add nsw i32 %168, %1
  %170 = icmp sgt i32 %169, 0
  br i1 %170, label %171, label %180

171:                                              ; preds = %171, %161
  %172 = phi i32 [ %178, %171 ], [ 0, %161 ]
  %173 = phi ptr [ %174, %171 ], [ %162, %161 ]
  %174 = getelementptr inbounds i8, ptr %173, i64 1
  %175 = load i8, ptr %173, align 1, !tbaa !7
  %176 = sext i8 %175 to i32
  %177 = tail call i32 @phone_append(ptr noundef %2, i32 noundef %176) #26
  %178 = add nuw nsw i32 %172, 1
  %179 = icmp eq i32 %178, %169
  br i1 %179, label %180, label %171, !llvm.loop !143

180:                                              ; preds = %171, %161, %158
  %181 = phi i32 [ %160, %158 ], [ 0, %161 ], [ %169, %171 ]
  %182 = tail call i32 @phone_append(ptr noundef %2, i32 noundef 32) #26
  %183 = add i32 %181, 1
  br label %184

184:                                              ; preds = %180, %135, %131, %68
  %185 = phi i32 [ %183, %180 ], [ %70, %68 ], [ 0, %131 ], [ %147, %135 ]
  ret i32 %185
}

; Function Attrs: nounwind uwtable
define dso_local void @say_phones(ptr noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #4 {
  %4 = alloca %struct.darray_t, align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #26
  %5 = getelementptr inbounds %struct.darray_t, ptr %4, i64 0, i32 3
  store i16 1, ptr %5, align 8, !tbaa !25
  %6 = trunc i32 %1 to i16
  %7 = getelementptr inbounds %struct.darray_t, ptr %4, i64 0, i32 4
  store i16 %6, ptr %7, align 2, !tbaa !26
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %4, i8 0, i64 16, i1 false)
  %8 = call i32 @phone_to_elm(ptr noundef %0, i32 noundef %1, ptr noundef nonnull %4) #26
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %44, label %10

10:                                               ; preds = %3
  %11 = load i64, ptr getelementptr inbounds (%struct.klatt_global_t, ptr @klatt_global, i64 0, i32 7), align 8, !tbaa !37
  %12 = trunc i64 %11 to i32
  %13 = mul i32 %8, %12
  %14 = zext i32 %13 to i64
  %15 = shl nuw nsw i64 %14, 1
  %16 = call noalias ptr @malloc(i64 noundef %15) #29
  %17 = icmp eq i32 %2, 0
  br i1 %17, label %21, label %18

18:                                               ; preds = %10
  %19 = load ptr, ptr @stderr, align 8, !tbaa !14
  %20 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %19, ptr noundef nonnull @.str.3.831, i32 noundef %1, ptr noundef %0) #28
  br label %21

21:                                               ; preds = %18, %10
  %22 = icmp eq ptr %16, null
  br i1 %22, label %44, label %23

23:                                               ; preds = %21
  %24 = getelementptr inbounds %struct.darray_t, ptr %4, i64 0, i32 1
  %25 = load i32, ptr %24, align 8, !tbaa !24
  %26 = getelementptr inbounds %struct.darray_t, ptr %4, i64 0, i32 2
  %27 = load i32, ptr %26, align 4, !tbaa !23
  %28 = icmp eq i32 %27, 0
  %29 = icmp eq i32 %25, 0
  %30 = select i1 %28, i1 true, i1 %29
  br i1 %30, label %33, label %31

31:                                               ; preds = %23
  %32 = load ptr, ptr %4, align 8, !tbaa !21
  br label %35

33:                                               ; preds = %23
  %34 = call ptr @Darray_find(ptr noundef nonnull %4, i32 noundef 0) #26
  br label %35

35:                                               ; preds = %33, %31
  %36 = phi ptr [ %32, %31 ], [ %34, %33 ]
  %37 = call i32 @holmes(i32 noundef %25, ptr noundef %36, i32 noundef %13, ptr noundef nonnull %16) #26
  %38 = load ptr, ptr @file_write, align 8, !tbaa !14
  %39 = icmp eq ptr %38, null
  %40 = load i1, ptr @once, align 4
  %41 = select i1 %39, i1 true, i1 %40
  br i1 %41, label %43, label %42

42:                                               ; preds = %35
  call void %38(i32 noundef %37, ptr noundef nonnull %16) #26
  br label %43

43:                                               ; preds = %42, %35
  call void @free(ptr noundef %16) #26
  br label %44

44:                                               ; preds = %43, %21, %3
  call void @darray_free(ptr noundef nonnull %4) #26
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #26
  ret void
}

; Function Attrs: nofree nosync nounwind memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @suspect_word(ptr nocapture noundef readonly %0, i32 noundef %1) local_unnamed_addr #22 {
  %3 = icmp sgt i32 %1, 0
  br i1 %3, label %4, label %63

4:                                                ; preds = %2
  %5 = tail call ptr @__ctype_b_loc() #31
  %6 = load ptr, ptr %5, align 8, !tbaa !14
  br label %7

7:                                                ; preds = %41, %4
  %8 = phi ptr [ %0, %4 ], [ %14, %41 ]
  %9 = phi i32 [ 0, %4 ], [ %54, %41 ]
  %10 = phi i32 [ 0, %4 ], [ %44, %41 ]
  %11 = phi i32 [ 0, %4 ], [ %53, %41 ]
  %12 = phi i32 [ 0, %4 ], [ %29, %41 ]
  %13 = phi i32 [ 0, %4 ], [ %42, %41 ]
  %14 = getelementptr inbounds i8, ptr %8, i64 1
  %15 = load i8, ptr %8, align 1, !tbaa !7
  %16 = icmp ne i32 %9, 0
  %17 = icmp ne i32 %10, 45
  %18 = and i1 %17, %16
  br i1 %18, label %19, label %28

19:                                               ; preds = %7
  %20 = tail call ptr @__ctype_b_loc() #31
  %21 = load ptr, ptr %20, align 8, !tbaa !14
  %22 = sext i8 %15 to i64
  %23 = getelementptr inbounds i16, ptr %21, i64 %22
  %24 = load i16, ptr %23, align 2, !tbaa !18
  %25 = and i16 %24, 256
  %26 = icmp eq i16 %25, 0
  %27 = select i1 %26, i32 %12, i32 1
  br label %28

28:                                               ; preds = %19, %7
  %29 = phi i32 [ %12, %7 ], [ %27, %19 ]
  %30 = sext i8 %15 to i64
  %31 = getelementptr inbounds i16, ptr %6, i64 %30
  %32 = load i16, ptr %31, align 2, !tbaa !18
  %33 = and i16 %32, 512
  %34 = icmp eq i16 %33, 0
  br i1 %34, label %41, label %35

35:                                               ; preds = %28
  %36 = tail call ptr @__ctype_toupper_loc() #31
  %37 = load ptr, ptr %36, align 8, !tbaa !14
  %38 = getelementptr inbounds i32, ptr %37, i64 %30
  %39 = load i32, ptr %38, align 4, !tbaa !12
  %40 = trunc i32 %39 to i8
  br label %41

41:                                               ; preds = %35, %28
  %42 = phi i32 [ 1, %35 ], [ %13, %28 ]
  %43 = phi i8 [ %40, %35 ], [ %15, %28 ]
  %44 = sext i8 %43 to i32
  %45 = add i8 %43, -65
  %46 = tail call i8 @llvm.fshl.i8(i8 %45, i8 %45, i8 7)
  %47 = icmp ult i8 %46, 13
  %48 = zext nneg i8 %46 to i16
  %49 = lshr i16 5269, %48
  %50 = and i16 %49, 1
  %51 = icmp eq i16 %50, 0
  %52 = select i1 %51, i32 %11, i32 1
  %53 = select i1 %47, i32 %52, i32 %11
  %54 = add nuw nsw i32 %9, 1
  %55 = icmp eq i32 %54, %1
  br i1 %55, label %56, label %7, !llvm.loop !132

56:                                               ; preds = %41
  %57 = icmp eq i32 %53, 0
  %58 = icmp ne i32 %29, 0
  %59 = icmp eq i32 %42, 0
  %60 = select i1 %57, i1 true, i1 %58
  %61 = select i1 %60, i1 true, i1 %59
  %62 = zext i1 %61 to i32
  br label %63

63:                                               ; preds = %56, %2
  %64 = phi i32 [ 1, %2 ], [ %62, %56 ]
  ret i32 %64
}

; Function Attrs: nofree nounwind uwtable
define dso_local noalias noundef ptr @concat_args(i32 noundef %0, ptr nocapture noundef readonly %1) local_unnamed_addr #0 {
  %3 = icmp sgt i32 %0, 1
  br i1 %3, label %4, label %19

4:                                                ; preds = %2
  %5 = zext nneg i32 %0 to i64
  br label %6

6:                                                ; preds = %6, %4
  %7 = phi i64 [ 1, %4 ], [ %15, %6 ]
  %8 = phi i32 [ 0, %4 ], [ %14, %6 ]
  %9 = getelementptr inbounds ptr, ptr %1, i64 %7
  %10 = load ptr, ptr %9, align 8, !tbaa !14
  %11 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %10) #27
  %12 = trunc i64 %11 to i32
  %13 = add i32 %8, 1
  %14 = add i32 %13, %12
  %15 = add nuw nsw i64 %7, 1
  %16 = icmp eq i64 %15, %5
  br i1 %16, label %17, label %6, !llvm.loop !144

17:                                               ; preds = %6
  %18 = sext i32 %14 to i64
  br label %19

19:                                               ; preds = %17, %2
  %20 = phi i64 [ 0, %2 ], [ %18, %17 ]
  %21 = tail call noalias ptr @malloc(i64 noundef %20) #29
  %22 = icmp ne ptr %21, null
  %23 = icmp sgt i32 %0, 1
  %24 = and i1 %22, %23
  br i1 %24, label %25, label %51

25:                                               ; preds = %19
  %26 = sext i32 %0 to i64
  %27 = zext i32 %0 to i64
  br label %28

28:                                               ; preds = %44, %25
  %29 = phi i64 [ 1, %25 ], [ %31, %44 ]
  %30 = phi ptr [ %21, %25 ], [ %49, %44 ]
  %31 = add nuw nsw i64 %29, 1
  %32 = getelementptr inbounds ptr, ptr %1, i64 %29
  %33 = load ptr, ptr %32, align 8, !tbaa !14
  %34 = load i8, ptr %33, align 1, !tbaa !7
  %35 = icmp eq i8 %34, 0
  br i1 %35, label %44, label %36

36:                                               ; preds = %36, %28
  %37 = phi i8 [ %42, %36 ], [ %34, %28 ]
  %38 = phi ptr [ %40, %36 ], [ %33, %28 ]
  %39 = phi ptr [ %41, %36 ], [ %30, %28 ]
  %40 = getelementptr inbounds i8, ptr %38, i64 1
  %41 = getelementptr inbounds i8, ptr %39, i64 1
  store i8 %37, ptr %39, align 1, !tbaa !7
  %42 = load i8, ptr %40, align 1, !tbaa !7
  %43 = icmp eq i8 %42, 0
  br i1 %43, label %44, label %36, !llvm.loop !145

44:                                               ; preds = %36, %28
  %45 = phi ptr [ %30, %28 ], [ %41, %36 ]
  %46 = icmp slt i64 %31, %26
  %47 = select i1 %46, i8 32, i8 0
  %48 = zext i1 %46 to i64
  %49 = getelementptr inbounds i8, ptr %45, i64 %48
  store i8 %47, ptr %45, align 1, !tbaa !7
  %50 = icmp eq i64 %31, %27
  br i1 %50, label %51, label %28, !llvm.loop !146

51:                                               ; preds = %44, %19
  ret ptr %21
}

; Function Attrs: nounwind uwtable
define dso_local void @say_string(ptr noundef %0) local_unnamed_addr #4 {
  %2 = alloca %struct.darray_t, align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %2) #26
  %3 = getelementptr inbounds %struct.darray_t, ptr %2, i64 0, i32 3
  store i16 1, ptr %3, align 8, !tbaa !25
  %4 = getelementptr inbounds %struct.darray_t, ptr %2, i64 0, i32 4
  store i16 128, ptr %4, align 2, !tbaa !26
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %2, i8 0, i64 16, i1 false)
  %5 = call i32 @xlate_string(ptr noundef %0, ptr noundef nonnull %2)
  %6 = getelementptr inbounds %struct.darray_t, ptr %2, i64 0, i32 1
  %7 = load i32, ptr %6, align 8, !tbaa !24
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %21, label %9

9:                                                ; preds = %1
  %10 = getelementptr inbounds %struct.darray_t, ptr %2, i64 0, i32 2
  %11 = load i32, ptr %10, align 4, !tbaa !23
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %15, label %13

13:                                               ; preds = %9
  %14 = load ptr, ptr %2, align 8, !tbaa !21
  br label %17

15:                                               ; preds = %9
  %16 = call ptr @Darray_find(ptr noundef nonnull %2, i32 noundef 0) #26
  br label %17

17:                                               ; preds = %15, %13
  %18 = phi ptr [ %14, %13 ], [ %16, %15 ]
  %19 = load i32, ptr %6, align 8, !tbaa !24
  %20 = load i32, ptr @verbose, align 4, !tbaa !12
  call void @say_phones(ptr noundef %18, i32 noundef %19, i32 noundef %20)
  br label %21

21:                                               ; preds = %17, %1
  call void @darray_free(ptr noundef nonnull %2) #26
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %2) #26
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local i32 @darray_fget(ptr nocapture noundef %0, ptr noundef %1) local_unnamed_addr #4 {
  br label %3

3:                                                ; preds = %6, %2
  %4 = tail call i32 @fgetc(ptr noundef %0)
  %5 = icmp eq i32 %4, -1
  br i1 %5, label %9, label %6

6:                                                ; preds = %3
  %7 = tail call i32 @phone_append(ptr noundef %1, i32 noundef %4) #26
  %8 = icmp eq i32 %4, 10
  br i1 %8, label %9, label %3, !llvm.loop !147

9:                                                ; preds = %6, %3
  %10 = tail call i32 @phone_append(ptr noundef %1, i32 noundef 0) #26
  %11 = getelementptr inbounds %struct.darray_t, ptr %1, i64 0, i32 1
  %12 = load i32, ptr %11, align 8, !tbaa !24
  %13 = add i32 %12, -1
  ret i32 %13
}

; Function Attrs: nofree nounwind
declare noundef i32 @fgetc(ptr nocapture noundef) local_unnamed_addr #5

; Function Attrs: nounwind uwtable
define dso_local void @say_file(ptr nocapture noundef %0) local_unnamed_addr #4 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.darray_t, align 8
  %4 = alloca %struct.darray_t, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #26
  %5 = tail call noalias ptr @fopen(ptr noundef nonnull @.str.5.833, ptr noundef nonnull @.str.6.834)
  %6 = icmp eq ptr %5, null
  br i1 %6, label %7, label %10

7:                                                ; preds = %1
  %8 = load ptr, ptr @stderr, align 8, !tbaa !14
  %9 = tail call i64 @fwrite(ptr nonnull @.str.7.835, i64 28, i64 1, ptr %8) #28
  tail call void @exit(i32 noundef 1) #30
  unreachable

10:                                               ; preds = %1
  %11 = call i32 (ptr, ptr, ...) @__isoc99_fscanf(ptr noundef nonnull %5, ptr noundef nonnull @.str.8.836, ptr noundef nonnull %2) #26
  %12 = call i32 @fclose(ptr noundef nonnull %5)
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #26
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #26
  %13 = getelementptr inbounds %struct.darray_t, ptr %3, i64 0, i32 3
  store i16 1, ptr %13, align 8, !tbaa !25
  %14 = getelementptr inbounds %struct.darray_t, ptr %3, i64 0, i32 4
  store i16 128, ptr %14, align 2, !tbaa !26
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %3, i8 0, i64 16, i1 false)
  %15 = getelementptr inbounds %struct.darray_t, ptr %4, i64 0, i32 3
  store i16 1, ptr %15, align 8, !tbaa !25
  %16 = getelementptr inbounds %struct.darray_t, ptr %4, i64 0, i32 4
  store i16 128, ptr %16, align 2, !tbaa !26
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %4, i8 0, i64 16, i1 false)
  %17 = getelementptr inbounds %struct.darray_t, ptr %3, i64 0, i32 1
  %18 = getelementptr inbounds %struct.darray_t, ptr %3, i64 0, i32 2
  br label %19

19:                                               ; preds = %43, %10
  %20 = phi i64 [ 0, %10 ], [ %34, %43 ]
  br label %21

21:                                               ; preds = %24, %19
  %22 = call i32 @fgetc(ptr noundef %0)
  %23 = icmp eq i32 %22, -1
  br i1 %23, label %27, label %24

24:                                               ; preds = %21
  %25 = call i32 @phone_append(ptr noundef nonnull %3, i32 noundef %22) #26
  %26 = icmp eq i32 %22, 10
  br i1 %26, label %27, label %21, !llvm.loop !147

27:                                               ; preds = %24, %21
  %28 = call i32 @phone_append(ptr noundef nonnull %3, i32 noundef 0) #26
  %29 = load i32, ptr %17, align 8, !tbaa !24
  %30 = icmp ne i32 %29, 1
  %31 = icmp ult i64 %20, 500
  %32 = select i1 %30, i1 %31, i1 false
  br i1 %32, label %33, label %46

33:                                               ; preds = %27
  %34 = add nuw nsw i64 %20, 1
  %35 = load i32, ptr %18, align 4, !tbaa !23
  %36 = icmp eq i32 %35, 0
  %37 = icmp eq i32 %29, 0
  %38 = or i1 %37, %36
  br i1 %38, label %41, label %39

39:                                               ; preds = %33
  %40 = load ptr, ptr %3, align 8, !tbaa !21
  br label %43

41:                                               ; preds = %33
  %42 = call ptr @Darray_find(ptr noundef nonnull %3, i32 noundef 0) #26
  br label %43

43:                                               ; preds = %41, %39
  %44 = phi ptr [ %40, %39 ], [ %42, %41 ]
  %45 = call i32 @xlate_string(ptr noundef %44, ptr noundef nonnull %4)
  store i32 0, ptr %17, align 8, !tbaa !24
  br label %19, !llvm.loop !148

46:                                               ; preds = %27
  %47 = getelementptr inbounds %struct.darray_t, ptr %4, i64 0, i32 1
  %48 = load i32, ptr %47, align 8, !tbaa !24
  %49 = icmp ne i32 %48, 0
  %50 = load i64, ptr %2, align 8
  %51 = icmp sgt i64 %50, 0
  %52 = select i1 %49, i1 %51, i1 false
  br i1 %52, label %53, label %73

53:                                               ; preds = %46
  %54 = getelementptr inbounds %struct.darray_t, ptr %4, i64 0, i32 2
  br label %55

55:                                               ; preds = %66, %53
  %56 = phi i64 [ 0, %53 ], [ %70, %66 ]
  %57 = load i32, ptr %54, align 4, !tbaa !23
  %58 = icmp eq i32 %57, 0
  %59 = load i32, ptr %47, align 8
  %60 = icmp eq i32 %59, 0
  %61 = select i1 %58, i1 true, i1 %60
  br i1 %61, label %64, label %62

62:                                               ; preds = %55
  %63 = load ptr, ptr %4, align 8, !tbaa !21
  br label %66

64:                                               ; preds = %55
  %65 = call ptr @Darray_find(ptr noundef nonnull %4, i32 noundef 0) #26
  br label %66

66:                                               ; preds = %64, %62
  %67 = phi ptr [ %63, %62 ], [ %65, %64 ]
  %68 = load i32, ptr %47, align 8, !tbaa !24
  %69 = load i32, ptr @verbose, align 4, !tbaa !12
  call void @say_phones(ptr noundef %67, i32 noundef %68, i32 noundef %69)
  store i1 true, ptr @once, align 4
  %70 = add nuw nsw i64 %56, 1
  %71 = load i64, ptr %2, align 8, !tbaa !16
  %72 = icmp slt i64 %70, %71
  br i1 %72, label %55, label %73, !llvm.loop !149

73:                                               ; preds = %66, %46
  call void @darray_free(ptr noundef nonnull %4) #26
  call void @darray_free(ptr noundef nonnull %3) #26
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #26
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #26
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #26
  ret void
}

declare i32 @__isoc99_fscanf(ptr noundef, ptr noundef, ...) local_unnamed_addr #7

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @main(i32 noundef %0, ptr noundef %1, ptr nocapture noundef readnone %2) local_unnamed_addr #4 {
  %4 = alloca %struct.darray_t, align 8
  %5 = load ptr, ptr %1, align 8, !tbaa !14
  store ptr %5, ptr @program, align 8, !tbaa !14
  %6 = tail call i32 @audio_init(i32 noundef %0, ptr noundef nonnull %1) #26
  %7 = tail call i32 @init_synth(i32 noundef %6, ptr noundef nonnull %1) #26
  %8 = tail call i32 @init_holmes(i32 noundef %7, ptr noundef nonnull %1) #26
  %9 = tail call i32 @dict_init(i32 noundef %8, ptr noundef nonnull %1) #26
  %10 = tail call i32 @file_init(i32 noundef %9, ptr noundef nonnull %1) #26
  %11 = tail call i32 (ptr, i32, ptr, ...) @getargs(ptr noundef nonnull @.str.9.837, i32 noundef %10, ptr noundef nonnull %1, ptr noundef nonnull @.str.10.838, ptr noundef null, ptr noundef nonnull @verbose, ptr noundef nonnull @.str.11.839, ptr noundef null) #26
  %12 = load i32, ptr @help_only, align 4, !tbaa !12
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %24, label %14

14:                                               ; preds = %3
  %15 = load ptr, ptr @stderr, align 8, !tbaa !14
  %16 = load ptr, ptr @program, align 8, !tbaa !14
  %17 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %15, ptr noundef nonnull @.str.12.840, ptr noundef %16) #28
  %18 = load ptr, ptr @stderr, align 8, !tbaa !14
  %19 = load ptr, ptr @program, align 8, !tbaa !14
  %20 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %18, ptr noundef nonnull @.str.13.841, ptr noundef %19) #28
  %21 = load ptr, ptr @stderr, align 8, !tbaa !14
  %22 = load ptr, ptr @Revision, align 8, !tbaa !14
  %23 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %21, ptr noundef nonnull @.str.14.842, ptr noundef %22) #28
  br label %91

24:                                               ; preds = %3
  %25 = icmp sgt i32 %11, 1
  br i1 %25, label %26, label %89

26:                                               ; preds = %24
  %27 = zext nneg i32 %11 to i64
  br label %28

28:                                               ; preds = %28, %26
  %29 = phi i64 [ 1, %26 ], [ %37, %28 ]
  %30 = phi i32 [ 0, %26 ], [ %36, %28 ]
  %31 = getelementptr inbounds ptr, ptr %1, i64 %29
  %32 = load ptr, ptr %31, align 8, !tbaa !14
  %33 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %32) #27
  %34 = trunc i64 %33 to i32
  %35 = add i32 %30, 1
  %36 = add i32 %35, %34
  %37 = add nuw nsw i64 %29, 1
  %38 = icmp eq i64 %37, %27
  br i1 %38, label %39, label %28, !llvm.loop !144

39:                                               ; preds = %28
  %40 = sext i32 %36 to i64
  %41 = tail call noalias ptr @malloc(i64 noundef %40) #29
  %42 = icmp eq ptr %41, null
  br i1 %42, label %91, label %43

43:                                               ; preds = %39
  %44 = zext nneg i32 %11 to i64
  %45 = zext nneg i32 %11 to i64
  br label %46

46:                                               ; preds = %62, %43
  %47 = phi i64 [ 1, %43 ], [ %49, %62 ]
  %48 = phi ptr [ %41, %43 ], [ %67, %62 ]
  %49 = add nuw nsw i64 %47, 1
  %50 = getelementptr inbounds ptr, ptr %1, i64 %47
  %51 = load ptr, ptr %50, align 8, !tbaa !14
  %52 = load i8, ptr %51, align 1, !tbaa !7
  %53 = icmp eq i8 %52, 0
  br i1 %53, label %62, label %54

54:                                               ; preds = %54, %46
  %55 = phi i8 [ %60, %54 ], [ %52, %46 ]
  %56 = phi ptr [ %58, %54 ], [ %51, %46 ]
  %57 = phi ptr [ %59, %54 ], [ %48, %46 ]
  %58 = getelementptr inbounds i8, ptr %56, i64 1
  %59 = getelementptr inbounds i8, ptr %57, i64 1
  store i8 %55, ptr %57, align 1, !tbaa !7
  %60 = load i8, ptr %58, align 1, !tbaa !7
  %61 = icmp eq i8 %60, 0
  br i1 %61, label %62, label %54, !llvm.loop !145

62:                                               ; preds = %54, %46
  %63 = phi ptr [ %48, %46 ], [ %59, %54 ]
  %64 = icmp ult i64 %49, %44
  %65 = select i1 %64, i8 32, i8 0
  %66 = zext i1 %64 to i64
  %67 = getelementptr inbounds i8, ptr %63, i64 %66
  store i8 %65, ptr %63, align 1, !tbaa !7
  %68 = icmp eq i64 %49, %45
  br i1 %68, label %69, label %46, !llvm.loop !146

69:                                               ; preds = %62
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #26
  %70 = getelementptr inbounds %struct.darray_t, ptr %4, i64 0, i32 3
  store i16 1, ptr %70, align 8, !tbaa !25
  %71 = getelementptr inbounds %struct.darray_t, ptr %4, i64 0, i32 4
  store i16 128, ptr %71, align 2, !tbaa !26
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %4, i8 0, i64 16, i1 false)
  %72 = call i32 @xlate_string(ptr noundef nonnull %41, ptr noundef nonnull %4)
  %73 = getelementptr inbounds %struct.darray_t, ptr %4, i64 0, i32 1
  %74 = load i32, ptr %73, align 8, !tbaa !24
  %75 = icmp eq i32 %74, 0
  br i1 %75, label %88, label %76

76:                                               ; preds = %69
  %77 = getelementptr inbounds %struct.darray_t, ptr %4, i64 0, i32 2
  %78 = load i32, ptr %77, align 4, !tbaa !23
  %79 = icmp eq i32 %78, 0
  br i1 %79, label %82, label %80

80:                                               ; preds = %76
  %81 = load ptr, ptr %4, align 8, !tbaa !21
  br label %84

82:                                               ; preds = %76
  %83 = call ptr @Darray_find(ptr noundef nonnull %4, i32 noundef 0) #26
  br label %84

84:                                               ; preds = %82, %80
  %85 = phi ptr [ %81, %80 ], [ %83, %82 ]
  %86 = load i32, ptr %73, align 8, !tbaa !24
  %87 = load i32, ptr @verbose, align 4, !tbaa !12
  call void @say_phones(ptr noundef %85, i32 noundef %86, i32 noundef %87)
  br label %88

88:                                               ; preds = %84, %69
  call void @darray_free(ptr noundef nonnull %4) #26
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #26
  call void @free(ptr noundef %41) #26
  br label %91

89:                                               ; preds = %24
  %90 = load ptr, ptr @stdin, align 8, !tbaa !14
  tail call void @say_file(ptr noundef %90)
  br label %91

91:                                               ; preds = %89, %88, %39, %14
  %92 = load ptr, ptr @file_term, align 8, !tbaa !14
  %93 = icmp eq ptr %92, null
  br i1 %93, label %95, label %94

94:                                               ; preds = %91
  call void %92() #26
  br label %95

95:                                               ; preds = %94, %91
  call void @audio_term() #26
  call void @term_holmes() #26
  %96 = load ptr, ptr @dict, align 8, !tbaa !14
  %97 = icmp eq ptr %96, null
  br i1 %97, label %99, label %98

98:                                               ; preds = %95
  call void @dict_term() #26
  br label %99

99:                                               ; preds = %98, %95
  ret i32 0
}

; Function Attrs: nounwind uwtable
define dso_local i32 @xlate_cardinal(i64 noundef %0, ptr noundef %1) local_unnamed_addr #4 {
  %3 = icmp slt i64 %0, 0
  br i1 %3, label %4, label %7

4:                                                ; preds = %2
  %5 = tail call i32 @xlate_string(ptr noundef nonnull @.str.1.846, ptr noundef %1) #26
  %6 = sub nsw i64 0, %0
  br label %7

7:                                                ; preds = %4, %2
  %8 = phi i64 [ %6, %4 ], [ %0, %2 ]
  %9 = phi i32 [ %5, %4 ], [ 0, %2 ]
  %10 = icmp sgt i64 %8, 999999999
  br i1 %10, label %11, label %24

11:                                               ; preds = %7
  %12 = udiv i64 %8, 1000000000
  %13 = tail call i32 @xlate_cardinal(i64 noundef %12, ptr noundef %1)
  %14 = add i32 %13, %9
  %15 = tail call i32 @xlate_string(ptr noundef nonnull @.str.3.847, ptr noundef %1) #26
  %16 = add i32 %14, %15
  %17 = urem i64 %8, 1000000000
  %18 = icmp eq i64 %17, 0
  br i1 %18, label %95, label %19

19:                                               ; preds = %11
  %20 = icmp ult i64 %17, 100
  br i1 %20, label %21, label %24

21:                                               ; preds = %19
  %22 = tail call i32 @xlate_string(ptr noundef nonnull @.str.4.848, ptr noundef %1) #26
  %23 = add i32 %22, %16
  br label %24

24:                                               ; preds = %21, %19, %7
  %25 = phi i64 [ %17, %21 ], [ %17, %19 ], [ %8, %7 ]
  %26 = phi i32 [ %23, %21 ], [ %16, %19 ], [ %9, %7 ]
  %27 = icmp sgt i64 %25, 999999
  br i1 %27, label %28, label %41

28:                                               ; preds = %24
  %29 = udiv i64 %25, 1000000
  %30 = tail call i32 @xlate_cardinal(i64 noundef %29, ptr noundef %1)
  %31 = add i32 %30, %26
  %32 = tail call i32 @xlate_string(ptr noundef nonnull @.str.5.849, ptr noundef %1) #26
  %33 = add i32 %31, %32
  %34 = urem i64 %25, 1000000
  %35 = icmp eq i64 %34, 0
  br i1 %35, label %95, label %36

36:                                               ; preds = %28
  %37 = icmp ult i64 %34, 100
  br i1 %37, label %38, label %41

38:                                               ; preds = %36
  %39 = tail call i32 @xlate_string(ptr noundef nonnull @.str.4.848, ptr noundef %1) #26
  %40 = add i32 %39, %33
  br label %41

41:                                               ; preds = %38, %36, %24
  %42 = phi i64 [ %34, %38 ], [ %34, %36 ], [ %25, %24 ]
  %43 = phi i32 [ %40, %38 ], [ %33, %36 ], [ %26, %24 ]
  %44 = add i64 %42, -1000
  %45 = icmp ult i64 %44, 100
  %46 = icmp sgt i64 %42, 1999
  %47 = or i1 %46, %45
  br i1 %47, label %48, label %61

48:                                               ; preds = %41
  %49 = udiv i64 %42, 1000
  %50 = tail call i32 @xlate_cardinal(i64 noundef %49, ptr noundef %1)
  %51 = add i32 %50, %43
  %52 = tail call i32 @xlate_string(ptr noundef nonnull @.str.6.850, ptr noundef %1) #26
  %53 = add i32 %51, %52
  %54 = urem i64 %42, 1000
  %55 = icmp eq i64 %54, 0
  br i1 %55, label %95, label %56

56:                                               ; preds = %48
  %57 = icmp ult i64 %54, 100
  br i1 %57, label %58, label %61

58:                                               ; preds = %56
  %59 = tail call i32 @xlate_string(ptr noundef nonnull @.str.4.848, ptr noundef %1) #26
  %60 = add i32 %59, %53
  br label %61

61:                                               ; preds = %58, %56, %41
  %62 = phi i64 [ %54, %58 ], [ %54, %56 ], [ %42, %41 ]
  %63 = phi i32 [ %60, %58 ], [ %53, %56 ], [ %43, %41 ]
  %64 = icmp sgt i64 %62, 99
  br i1 %64, label %65, label %75

65:                                               ; preds = %61
  %66 = udiv i64 %62, 100
  %67 = getelementptr inbounds [20 x ptr], ptr @Cardinals, i64 0, i64 %66
  %68 = load ptr, ptr %67, align 8, !tbaa !14
  %69 = tail call i32 @xlate_string(ptr noundef %68, ptr noundef %1) #26
  %70 = add i32 %69, %63
  %71 = tail call i32 @xlate_string(ptr noundef nonnull @.str.7.851, ptr noundef %1) #26
  %72 = add i32 %70, %71
  %73 = urem i64 %62, 100
  %74 = icmp eq i64 %73, 0
  br i1 %74, label %95, label %75

75:                                               ; preds = %65, %61
  %76 = phi i64 [ %73, %65 ], [ %62, %61 ]
  %77 = phi i32 [ %72, %65 ], [ %63, %61 ]
  %78 = icmp sgt i64 %76, 19
  br i1 %78, label %79, label %88

79:                                               ; preds = %75
  %80 = add nsw i64 %76, -20
  %81 = udiv i64 %80, 10
  %82 = getelementptr inbounds [8 x ptr], ptr @Twenties, i64 0, i64 %81
  %83 = load ptr, ptr %82, align 8, !tbaa !14
  %84 = tail call i32 @xlate_string(ptr noundef %83, ptr noundef %1) #26
  %85 = add i32 %84, %77
  %86 = urem i64 %76, 10
  %87 = icmp eq i64 %86, 0
  br i1 %87, label %95, label %88

88:                                               ; preds = %79, %75
  %89 = phi i64 [ %86, %79 ], [ %76, %75 ]
  %90 = phi i32 [ %85, %79 ], [ %77, %75 ]
  %91 = getelementptr inbounds [20 x ptr], ptr @Cardinals, i64 0, i64 %89
  %92 = load ptr, ptr %91, align 8, !tbaa !14
  %93 = tail call i32 @xlate_string(ptr noundef %92, ptr noundef %1) #26
  %94 = add i32 %93, %90
  br label %95

95:                                               ; preds = %88, %79, %65, %48, %28, %11
  %96 = phi i32 [ %94, %88 ], [ %16, %11 ], [ %33, %28 ], [ %53, %48 ], [ %72, %65 ], [ %85, %79 ]
  ret i32 %96
}

; Function Attrs: nounwind uwtable
define dso_local i32 @xlate_ordinal(i64 noundef %0, ptr noundef %1) local_unnamed_addr #4 {
  %3 = icmp slt i64 %0, 0
  br i1 %3, label %4, label %7

4:                                                ; preds = %2
  %5 = tail call i32 @xlate_string(ptr noundef nonnull @.str.1.846, ptr noundef %1) #26
  %6 = sub nsw i64 0, %0
  br label %7

7:                                                ; preds = %4, %2
  %8 = phi i64 [ %6, %4 ], [ %0, %2 ]
  %9 = phi i32 [ %5, %4 ], [ 0, %2 ]
  %10 = icmp sgt i64 %8, 999999999
  br i1 %10, label %11, label %27

11:                                               ; preds = %7
  %12 = udiv i64 %8, 1000000000
  %13 = tail call i32 @xlate_cardinal(i64 noundef %12, ptr noundef %1)
  %14 = add i32 %13, %9
  %15 = urem i64 %8, 1000000000
  %16 = icmp eq i64 %15, 0
  br i1 %16, label %17, label %20

17:                                               ; preds = %11
  %18 = tail call i32 @xlate_string(ptr noundef nonnull @.str.8.880, ptr noundef %1) #26
  %19 = add i32 %18, %14
  br label %114

20:                                               ; preds = %11
  %21 = tail call i32 @xlate_string(ptr noundef nonnull @.str.3.847, ptr noundef %1) #26
  %22 = add i32 %21, %14
  %23 = icmp ult i64 %15, 100
  br i1 %23, label %24, label %27

24:                                               ; preds = %20
  %25 = tail call i32 @xlate_string(ptr noundef nonnull @.str.4.848, ptr noundef %1) #26
  %26 = add i32 %25, %22
  br label %27

27:                                               ; preds = %24, %20, %7
  %28 = phi i64 [ %15, %24 ], [ %15, %20 ], [ %8, %7 ]
  %29 = phi i32 [ %26, %24 ], [ %22, %20 ], [ %9, %7 ]
  %30 = icmp sgt i64 %28, 999999
  br i1 %30, label %31, label %47

31:                                               ; preds = %27
  %32 = udiv i64 %28, 1000000
  %33 = tail call i32 @xlate_cardinal(i64 noundef %32, ptr noundef %1)
  %34 = add i32 %33, %29
  %35 = urem i64 %28, 1000000
  %36 = icmp eq i64 %35, 0
  br i1 %36, label %37, label %40

37:                                               ; preds = %31
  %38 = tail call i32 @xlate_string(ptr noundef nonnull @.str.9.881, ptr noundef %1) #26
  %39 = add i32 %38, %34
  br label %114

40:                                               ; preds = %31
  %41 = tail call i32 @xlate_string(ptr noundef nonnull @.str.5.849, ptr noundef %1) #26
  %42 = add i32 %41, %34
  %43 = icmp ult i64 %35, 100
  br i1 %43, label %44, label %47

44:                                               ; preds = %40
  %45 = tail call i32 @xlate_string(ptr noundef nonnull @.str.4.848, ptr noundef %1) #26
  %46 = add i32 %45, %42
  br label %47

47:                                               ; preds = %44, %40, %27
  %48 = phi i64 [ %35, %44 ], [ %35, %40 ], [ %28, %27 ]
  %49 = phi i32 [ %46, %44 ], [ %42, %40 ], [ %29, %27 ]
  %50 = add i64 %48, -1000
  %51 = icmp ult i64 %50, 100
  %52 = icmp sgt i64 %48, 1999
  %53 = or i1 %52, %51
  br i1 %53, label %54, label %70

54:                                               ; preds = %47
  %55 = udiv i64 %48, 1000
  %56 = tail call i32 @xlate_cardinal(i64 noundef %55, ptr noundef %1)
  %57 = add i32 %56, %49
  %58 = urem i64 %48, 1000
  %59 = icmp eq i64 %58, 0
  br i1 %59, label %60, label %63

60:                                               ; preds = %54
  %61 = tail call i32 @xlate_string(ptr noundef nonnull @.str.10.882, ptr noundef %1) #26
  %62 = add i32 %61, %57
  br label %114

63:                                               ; preds = %54
  %64 = tail call i32 @xlate_string(ptr noundef nonnull @.str.6.850, ptr noundef %1) #26
  %65 = add i32 %64, %57
  %66 = icmp ult i64 %58, 100
  br i1 %66, label %67, label %70

67:                                               ; preds = %63
  %68 = tail call i32 @xlate_string(ptr noundef nonnull @.str.4.848, ptr noundef %1) #26
  %69 = add i32 %68, %65
  br label %70

70:                                               ; preds = %67, %63, %47
  %71 = phi i64 [ %58, %67 ], [ %58, %63 ], [ %48, %47 ]
  %72 = phi i32 [ %69, %67 ], [ %65, %63 ], [ %49, %47 ]
  %73 = icmp sgt i64 %71, 99
  br i1 %73, label %74, label %88

74:                                               ; preds = %70
  %75 = udiv i64 %71, 100
  %76 = getelementptr inbounds [20 x ptr], ptr @Cardinals, i64 0, i64 %75
  %77 = load ptr, ptr %76, align 8, !tbaa !14
  %78 = tail call i32 @xlate_string(ptr noundef %77, ptr noundef %1) #26
  %79 = add i32 %78, %72
  %80 = urem i64 %71, 100
  %81 = icmp eq i64 %80, 0
  br i1 %81, label %82, label %85

82:                                               ; preds = %74
  %83 = tail call i32 @xlate_string(ptr noundef nonnull @.str.11.883, ptr noundef %1) #26
  %84 = add i32 %83, %79
  br label %114

85:                                               ; preds = %74
  %86 = tail call i32 @xlate_string(ptr noundef nonnull @.str.7.851, ptr noundef %1) #26
  %87 = add i32 %86, %79
  br label %88

88:                                               ; preds = %85, %70
  %89 = phi i64 [ %80, %85 ], [ %71, %70 ]
  %90 = phi i32 [ %87, %85 ], [ %72, %70 ]
  %91 = icmp sgt i64 %89, 19
  br i1 %91, label %92, label %107

92:                                               ; preds = %88
  %93 = urem i64 %89, 10
  %94 = icmp eq i64 %93, 0
  %95 = add nsw i64 %89, -20
  %96 = udiv i64 %95, 10
  br i1 %94, label %97, label %102

97:                                               ; preds = %92
  %98 = getelementptr inbounds [8 x ptr], ptr @Ord_twenties, i64 0, i64 %96
  %99 = load ptr, ptr %98, align 8, !tbaa !14
  %100 = tail call i32 @xlate_string(ptr noundef %99, ptr noundef %1) #26
  %101 = add i32 %100, %90
  br label %114

102:                                              ; preds = %92
  %103 = getelementptr inbounds [8 x ptr], ptr @Twenties, i64 0, i64 %96
  %104 = load ptr, ptr %103, align 8, !tbaa !14
  %105 = tail call i32 @xlate_string(ptr noundef %104, ptr noundef %1) #26
  %106 = add i32 %105, %90
  br label %107

107:                                              ; preds = %102, %88
  %108 = phi i64 [ %93, %102 ], [ %89, %88 ]
  %109 = phi i32 [ %106, %102 ], [ %90, %88 ]
  %110 = getelementptr inbounds [20 x ptr], ptr @Ordinals, i64 0, i64 %108
  %111 = load ptr, ptr %110, align 8, !tbaa !14
  %112 = tail call i32 @xlate_string(ptr noundef %111, ptr noundef %1) #26
  %113 = add i32 %112, %109
  br label %114

114:                                              ; preds = %107, %97, %82, %60, %37, %17
  %115 = phi i32 [ %19, %17 ], [ %39, %37 ], [ %62, %60 ], [ %84, %82 ], [ %101, %97 ], [ %113, %107 ]
  ret i32 %115
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef i32 @isvowel(i32 noundef %0) local_unnamed_addr #15 {
  %2 = add i32 %0, -65
  %3 = tail call i32 @llvm.fshl.i32(i32 %2, i32 %2, i32 31)
  %4 = icmp ult i32 %3, 8
  br i1 %4, label %8, label %5

5:                                                ; preds = %8, %1
  %6 = icmp eq i32 %0, 85
  %7 = zext i1 %6 to i32
  br label %13

8:                                                ; preds = %1
  %9 = trunc i32 %3 to i8
  %10 = lshr i8 -107, %9
  %11 = and i8 %10, 1
  %12 = icmp eq i8 %11, 0
  br i1 %12, label %5, label %13

13:                                               ; preds = %8, %5
  %14 = phi i32 [ %7, %5 ], [ 1, %8 ]
  ret i32 %14
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.fshl.i32(i32, i32, i32) #12

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local noundef i32 @isconsonant(i32 noundef %0) local_unnamed_addr #23 {
  %2 = tail call ptr @__ctype_b_loc() #31
  %3 = load ptr, ptr %2, align 8, !tbaa !14
  %4 = sext i32 %0 to i64
  %5 = getelementptr inbounds i16, ptr %3, i64 %4
  %6 = load i16, ptr %5, align 2, !tbaa !18
  %7 = and i16 %6, 256
  %8 = icmp eq i16 %7, 0
  br i1 %8, label %21, label %9

9:                                                ; preds = %1
  %10 = add i32 %0, -65
  %11 = tail call i32 @llvm.fshl.i32(i32 %10, i32 %10, i32 31)
  %12 = icmp ult i32 %11, 8
  br i1 %12, label %16, label %13

13:                                               ; preds = %16, %9
  %14 = icmp ne i32 %0, 85
  %15 = zext i1 %14 to i32
  br label %21

16:                                               ; preds = %9
  %17 = trunc i32 %11 to i8
  %18 = lshr i8 -107, %17
  %19 = and i8 %18, 1
  %20 = icmp eq i8 %19, 0
  br i1 %20, label %13, label %21

21:                                               ; preds = %16, %13, %1
  %22 = phi i32 [ 0, %1 ], [ %15, %13 ], [ 0, %16 ]
  ret i32 %22
}

; Function Attrs: nounwind uwtable
define dso_local i32 @NRL(ptr nocapture noundef readonly %0, i32 noundef %1, ptr noundef %2) local_unnamed_addr #4 {
  %4 = getelementptr inbounds %struct.darray_t, ptr %2, i64 0, i32 1
  %5 = load i32, ptr %4, align 8, !tbaa !24
  %6 = add i32 %1, 3
  %7 = zext i32 %6 to i64
  %8 = tail call noalias ptr @malloc(i64 noundef %7) #29
  store i8 32, ptr %8, align 1, !tbaa !7
  %9 = getelementptr inbounds i8, ptr %8, i64 1
  %10 = icmp eq i32 %1, 0
  br i1 %10, label %36, label %11

11:                                               ; preds = %3
  %12 = tail call ptr @__ctype_b_loc() #31
  br label %13

13:                                               ; preds = %32, %11
  %14 = phi i32 [ %1, %11 ], [ %17, %32 ]
  %15 = phi ptr [ %9, %11 ], [ %34, %32 ]
  %16 = phi ptr [ %0, %11 ], [ %18, %32 ]
  %17 = add i32 %14, -1
  %18 = getelementptr inbounds i8, ptr %16, i64 1
  %19 = load i8, ptr %16, align 1, !tbaa !7
  %20 = load ptr, ptr %12, align 8, !tbaa !14
  %21 = sext i8 %19 to i64
  %22 = getelementptr inbounds i16, ptr %20, i64 %21
  %23 = load i16, ptr %22, align 2, !tbaa !18
  %24 = and i16 %23, 512
  %25 = icmp eq i16 %24, 0
  br i1 %25, label %32, label %26

26:                                               ; preds = %13
  %27 = tail call ptr @__ctype_toupper_loc() #31
  %28 = load ptr, ptr %27, align 8, !tbaa !14
  %29 = getelementptr inbounds i32, ptr %28, i64 %21
  %30 = load i32, ptr %29, align 4, !tbaa !12
  %31 = trunc i32 %30 to i8
  br label %32

32:                                               ; preds = %26, %13
  %33 = phi i8 [ %31, %26 ], [ %19, %13 ]
  store i8 %33, ptr %15, align 1, !tbaa !7
  %34 = getelementptr inbounds i8, ptr %15, i64 1
  %35 = icmp eq i32 %17, 0
  br i1 %35, label %36, label %13, !llvm.loop !150

36:                                               ; preds = %32, %3
  %37 = phi ptr [ %8, %3 ], [ %15, %32 ]
  %38 = phi ptr [ %9, %3 ], [ %34, %32 ]
  %39 = getelementptr inbounds i8, ptr %37, i64 2
  store i8 32, ptr %38, align 1, !tbaa !7
  store i8 0, ptr %39, align 1, !tbaa !7
  %40 = tail call ptr @__ctype_b_loc() #31
  %41 = getelementptr i8, ptr %8, i64 -1
  br label %42

42:                                               ; preds = %391, %36
  %43 = phi i32 [ 1, %36 ], [ %392, %391 ]
  %44 = load ptr, ptr %40, align 8, !tbaa !14
  %45 = sext i32 %43 to i64
  %46 = getelementptr inbounds i8, ptr %8, i64 %45
  %47 = load i8, ptr %46, align 1, !tbaa !7
  %48 = sext i8 %47 to i64
  %49 = getelementptr inbounds i16, ptr %44, i64 %48
  %50 = load i16, ptr %49, align 2, !tbaa !18
  %51 = and i16 %50, 256
  %52 = icmp eq i16 %51, 0
  %53 = add nsw i64 %48, -64
  %54 = select i1 %52, i64 0, i64 %53
  %55 = getelementptr inbounds [0 x ptr], ptr @Rules, i64 0, i64 %54
  %56 = load ptr, ptr %55, align 8, !tbaa !14
  %57 = getelementptr inbounds [4 x ptr], ptr %56, i64 0, i64 1
  %58 = load ptr, ptr %57, align 8, !tbaa !14
  %59 = icmp eq ptr %58, null
  br i1 %59, label %71, label %60

60:                                               ; preds = %42
  %61 = getelementptr i8, ptr %41, i64 %45
  br label %62

62:                                               ; preds = %94, %60
  %63 = phi ptr [ %58, %60 ], [ %96, %94 ]
  %64 = phi ptr [ %56, %60 ], [ %65, %94 ]
  %65 = getelementptr inbounds [4 x ptr], ptr %64, i64 1
  %66 = load i8, ptr %63, align 1, !tbaa !7
  %67 = icmp eq i8 %66, 0
  br i1 %67, label %100, label %68

68:                                               ; preds = %62
  %69 = load i8, ptr %46, align 1, !tbaa !7
  %70 = icmp eq i8 %66, %69
  br i1 %70, label %81, label %94

71:                                               ; preds = %94, %42
  %72 = load ptr, ptr @stderr, align 8, !tbaa !14
  %73 = load i8, ptr %46, align 1, !tbaa !7
  %74 = sext i8 %73 to i32
  %75 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %72, ptr noundef nonnull @.str.1.915, i32 noundef %74, ptr noundef nonnull %8) #28
  %76 = add nsw i32 %43, 1
  br label %391

77:                                               ; preds = %81
  %78 = getelementptr inbounds i8, ptr %8, i64 %85
  %79 = load i8, ptr %78, align 1, !tbaa !7
  %80 = icmp eq i8 %86, %79
  br i1 %80, label %81, label %94, !llvm.loop !151

81:                                               ; preds = %77, %68
  %82 = phi ptr [ %84, %77 ], [ %63, %68 ]
  %83 = phi i64 [ %85, %77 ], [ %45, %68 ]
  %84 = getelementptr inbounds i8, ptr %82, i64 1
  %85 = add i64 %83, 1
  %86 = load i8, ptr %84, align 1, !tbaa !7
  %87 = icmp eq i8 %86, 0
  br i1 %87, label %98, label %77, !llvm.loop !151

88:                                               ; preds = %250, %128
  %89 = phi i8 [ %241, %250 ], [ %121, %128 ]
  %90 = phi ptr [ @.str.3.916, %250 ], [ @.str.2.917, %128 ]
  %91 = sext i8 %89 to i32
  %92 = load ptr, ptr @stderr, align 8, !tbaa !14
  %93 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %92, ptr noundef nonnull %90, i32 noundef %91) #28
  br label %94

94:                                               ; preds = %367, %363, %350, %346, %342, %337, %270, %251, %224, %220, %215, %148, %129, %88, %77, %68
  %95 = getelementptr inbounds [4 x ptr], ptr %64, i64 1, i64 1
  %96 = load ptr, ptr %95, align 8, !tbaa !14
  %97 = icmp eq ptr %96, null
  br i1 %97, label %71, label %62, !llvm.loop !152

98:                                               ; preds = %81
  %99 = trunc i64 %85 to i32
  br label %100

100:                                              ; preds = %98, %62
  %101 = phi i32 [ %43, %62 ], [ %99, %98 ]
  %102 = load ptr, ptr %64, align 8, !tbaa !14
  %103 = getelementptr inbounds [4 x ptr], ptr %64, i64 0, i64 2
  %104 = load ptr, ptr %103, align 8, !tbaa !14
  %105 = load i8, ptr %102, align 1, !tbaa !7
  %106 = icmp eq i8 %105, 0
  br i1 %106, label %233, label %107

107:                                              ; preds = %100
  %108 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %102) #27
  %109 = trunc i64 %108 to i32
  %110 = icmp sgt i32 %109, 0
  br i1 %110, label %111, label %233

111:                                              ; preds = %107
  %112 = shl i64 %108, 32
  %113 = add i64 %112, -4294967296
  %114 = ashr exact i64 %113, 32
  %115 = getelementptr inbounds i8, ptr %102, i64 %114
  %116 = load ptr, ptr %40, align 8, !tbaa !14
  br label %117

117:                                              ; preds = %228, %111
  %118 = phi i32 [ %109, %111 ], [ %231, %228 ]
  %119 = phi ptr [ %61, %111 ], [ %229, %228 ]
  %120 = phi ptr [ %115, %111 ], [ %230, %228 ]
  %121 = load i8, ptr %120, align 1, !tbaa !7
  %122 = sext i8 %121 to i64
  %123 = getelementptr inbounds i16, ptr %116, i64 %122
  %124 = load i16, ptr %123, align 2, !tbaa !18
  %125 = freeze i16 %124
  %126 = and i16 %125, 1024
  %127 = icmp eq i16 %126, 0
  br i1 %127, label %128, label %129

128:                                              ; preds = %117
  switch i8 %121, label %88 [
    i8 39, label %129
    i8 32, label %129
    i8 35, label %134
    i8 58, label %170
    i8 94, label %195
    i8 46, label %220
    i8 43, label %224
  ]

129:                                              ; preds = %128, %128, %117
  %130 = load i8, ptr %119, align 1, !tbaa !7
  %131 = icmp eq i8 %121, %130
  br i1 %131, label %132, label %94

132:                                              ; preds = %129
  %133 = getelementptr inbounds i8, ptr %119, i64 -1
  br label %228

134:                                              ; preds = %128
  %135 = load i8, ptr %119, align 1, !tbaa !7
  %136 = sext i8 %135 to i32
  %137 = add nsw i32 %136, -65
  %138 = tail call i32 @llvm.fshl.i32(i32 %137, i32 %137, i32 31)
  %139 = icmp ult i32 %138, 8
  br i1 %139, label %143, label %140

140:                                              ; preds = %143, %134
  %141 = icmp eq i8 %135, 85
  %142 = zext i1 %141 to i32
  br label %148

143:                                              ; preds = %134
  %144 = trunc i32 %138 to i8
  %145 = lshr i8 -107, %144
  %146 = and i8 %145, 1
  %147 = icmp eq i8 %146, 0
  br i1 %147, label %140, label %148

148:                                              ; preds = %143, %140
  %149 = phi i32 [ %142, %140 ], [ 1, %143 ]
  %150 = icmp eq i32 %149, 0
  br i1 %150, label %94, label %151

151:                                              ; preds = %167, %148
  %152 = phi ptr [ %153, %167 ], [ %119, %148 ]
  %153 = getelementptr inbounds i8, ptr %152, i64 -1
  %154 = load i8, ptr %153, align 1, !tbaa !7
  %155 = sext i8 %154 to i32
  %156 = add nsw i32 %155, -65
  %157 = tail call i32 @llvm.fshl.i32(i32 %156, i32 %156, i32 31)
  %158 = icmp ult i32 %157, 8
  br i1 %158, label %162, label %159

159:                                              ; preds = %162, %151
  %160 = icmp eq i8 %154, 85
  %161 = zext i1 %160 to i32
  br label %167

162:                                              ; preds = %151
  %163 = trunc i32 %157 to i8
  %164 = lshr i8 -107, %163
  %165 = and i8 %164, 1
  %166 = icmp eq i8 %165, 0
  br i1 %166, label %159, label %167

167:                                              ; preds = %162, %159
  %168 = phi i32 [ %161, %159 ], [ 1, %162 ]
  %169 = icmp eq i32 %168, 0
  br i1 %169, label %228, label %151, !llvm.loop !153

170:                                              ; preds = %191, %128
  %171 = phi ptr [ %194, %191 ], [ %119, %128 ]
  %172 = load i8, ptr %171, align 1, !tbaa !7
  %173 = sext i8 %172 to i64
  %174 = getelementptr inbounds i16, ptr %116, i64 %173
  %175 = load i16, ptr %174, align 2, !tbaa !18
  %176 = and i16 %175, 256
  %177 = icmp eq i16 %176, 0
  br i1 %177, label %191, label %178

178:                                              ; preds = %170
  %179 = sext i8 %172 to i32
  %180 = add nsw i32 %179, -65
  %181 = tail call i32 @llvm.fshl.i32(i32 %180, i32 %180, i32 31)
  %182 = icmp ult i32 %181, 8
  br i1 %182, label %186, label %183

183:                                              ; preds = %186, %178
  %184 = icmp ne i8 %172, 85
  %185 = zext i1 %184 to i32
  br label %191

186:                                              ; preds = %178
  %187 = trunc i32 %181 to i8
  %188 = lshr i8 -107, %187
  %189 = and i8 %188, 1
  %190 = icmp eq i8 %189, 0
  br i1 %190, label %183, label %191

191:                                              ; preds = %186, %183, %170
  %192 = phi i32 [ 0, %170 ], [ %185, %183 ], [ 0, %186 ]
  %193 = icmp eq i32 %192, 0
  %194 = getelementptr inbounds i8, ptr %171, i64 -1
  br i1 %193, label %228, label %170, !llvm.loop !154

195:                                              ; preds = %128
  %196 = load i8, ptr %119, align 1, !tbaa !7
  %197 = sext i8 %196 to i64
  %198 = getelementptr inbounds i16, ptr %116, i64 %197
  %199 = load i16, ptr %198, align 2, !tbaa !18
  %200 = and i16 %199, 256
  %201 = icmp eq i16 %200, 0
  br i1 %201, label %215, label %202

202:                                              ; preds = %195
  %203 = sext i8 %196 to i32
  %204 = add nsw i32 %203, -65
  %205 = tail call i32 @llvm.fshl.i32(i32 %204, i32 %204, i32 31)
  %206 = icmp ult i32 %205, 8
  br i1 %206, label %210, label %207

207:                                              ; preds = %210, %202
  %208 = icmp ne i8 %196, 85
  %209 = zext i1 %208 to i32
  br label %215

210:                                              ; preds = %202
  %211 = trunc i32 %205 to i8
  %212 = lshr i8 -107, %211
  %213 = and i8 %212, 1
  %214 = icmp eq i8 %213, 0
  br i1 %214, label %207, label %215

215:                                              ; preds = %210, %207, %195
  %216 = phi i32 [ 0, %195 ], [ %209, %207 ], [ 0, %210 ]
  %217 = icmp eq i32 %216, 0
  br i1 %217, label %94, label %218

218:                                              ; preds = %215
  %219 = getelementptr inbounds i8, ptr %119, i64 -1
  br label %228

220:                                              ; preds = %128
  %221 = load i8, ptr %119, align 1, !tbaa !7
  switch i8 %221, label %94 [
    i8 66, label %222
    i8 68, label %222
    i8 86, label %222
    i8 71, label %222
    i8 74, label %222
    i8 76, label %222
    i8 77, label %222
    i8 78, label %222
    i8 82, label %222
    i8 87, label %222
    i8 90, label %222
  ]

222:                                              ; preds = %220, %220, %220, %220, %220, %220, %220, %220, %220, %220, %220
  %223 = getelementptr inbounds i8, ptr %119, i64 -1
  br label %228

224:                                              ; preds = %128
  %225 = load i8, ptr %119, align 1, !tbaa !7
  switch i8 %225, label %94 [
    i8 69, label %226
    i8 73, label %226
    i8 89, label %226
  ]

226:                                              ; preds = %224, %224, %224
  %227 = getelementptr inbounds i8, ptr %119, i64 -1
  br label %228

228:                                              ; preds = %226, %222, %218, %191, %167, %132
  %229 = phi ptr [ %133, %132 ], [ %227, %226 ], [ %223, %222 ], [ %219, %218 ], [ %153, %167 ], [ %171, %191 ]
  %230 = getelementptr inbounds i8, ptr %120, i64 -1
  %231 = add nsw i32 %118, -1
  %232 = icmp sgt i32 %118, 1
  br i1 %232, label %117, label %233, !llvm.loop !155

233:                                              ; preds = %228, %107, %100
  %234 = load i8, ptr %104, align 1, !tbaa !7
  %235 = icmp eq i8 %234, 0
  br i1 %235, label %378, label %236

236:                                              ; preds = %233
  %237 = sext i32 %101 to i64
  %238 = getelementptr inbounds i8, ptr %8, i64 %237
  %239 = load ptr, ptr %40, align 8, !tbaa !14
  br label %240

240:                                              ; preds = %373, %236
  %241 = phi i8 [ %234, %236 ], [ %376, %373 ]
  %242 = phi ptr [ %238, %236 ], [ %374, %373 ]
  %243 = phi ptr [ %104, %236 ], [ %375, %373 ]
  %244 = sext i8 %241 to i64
  %245 = getelementptr inbounds i16, ptr %239, i64 %244
  %246 = load i16, ptr %245, align 2, !tbaa !18
  %247 = freeze i16 %246
  %248 = and i16 %247, 1024
  %249 = icmp eq i16 %248, 0
  br i1 %249, label %250, label %251

250:                                              ; preds = %240
  switch i8 %241, label %88 [
    i8 39, label %251
    i8 32, label %251
    i8 35, label %256
    i8 58, label %292
    i8 94, label %317
    i8 46, label %342
    i8 43, label %346
    i8 37, label %350
  ]

251:                                              ; preds = %250, %250, %240
  %252 = load i8, ptr %242, align 1, !tbaa !7
  %253 = icmp eq i8 %241, %252
  br i1 %253, label %254, label %94

254:                                              ; preds = %251
  %255 = getelementptr inbounds i8, ptr %242, i64 1
  br label %373

256:                                              ; preds = %250
  %257 = load i8, ptr %242, align 1, !tbaa !7
  %258 = sext i8 %257 to i32
  %259 = add nsw i32 %258, -65
  %260 = tail call i32 @llvm.fshl.i32(i32 %259, i32 %259, i32 31)
  %261 = icmp ult i32 %260, 8
  br i1 %261, label %265, label %262

262:                                              ; preds = %265, %256
  %263 = icmp eq i8 %257, 85
  %264 = zext i1 %263 to i32
  br label %270

265:                                              ; preds = %256
  %266 = trunc i32 %260 to i8
  %267 = lshr i8 -107, %266
  %268 = and i8 %267, 1
  %269 = icmp eq i8 %268, 0
  br i1 %269, label %262, label %270

270:                                              ; preds = %265, %262
  %271 = phi i32 [ %264, %262 ], [ 1, %265 ]
  %272 = icmp eq i32 %271, 0
  br i1 %272, label %94, label %273

273:                                              ; preds = %289, %270
  %274 = phi ptr [ %275, %289 ], [ %242, %270 ]
  %275 = getelementptr inbounds i8, ptr %274, i64 1
  %276 = load i8, ptr %275, align 1, !tbaa !7
  %277 = sext i8 %276 to i32
  %278 = add nsw i32 %277, -65
  %279 = tail call i32 @llvm.fshl.i32(i32 %278, i32 %278, i32 31)
  %280 = icmp ult i32 %279, 8
  br i1 %280, label %284, label %281

281:                                              ; preds = %284, %273
  %282 = icmp eq i8 %276, 85
  %283 = zext i1 %282 to i32
  br label %289

284:                                              ; preds = %273
  %285 = trunc i32 %279 to i8
  %286 = lshr i8 -107, %285
  %287 = and i8 %286, 1
  %288 = icmp eq i8 %287, 0
  br i1 %288, label %281, label %289

289:                                              ; preds = %284, %281
  %290 = phi i32 [ %283, %281 ], [ 1, %284 ]
  %291 = icmp eq i32 %290, 0
  br i1 %291, label %373, label %273, !llvm.loop !156

292:                                              ; preds = %313, %250
  %293 = phi ptr [ %316, %313 ], [ %242, %250 ]
  %294 = load i8, ptr %293, align 1, !tbaa !7
  %295 = sext i8 %294 to i64
  %296 = getelementptr inbounds i16, ptr %239, i64 %295
  %297 = load i16, ptr %296, align 2, !tbaa !18
  %298 = and i16 %297, 256
  %299 = icmp eq i16 %298, 0
  br i1 %299, label %313, label %300

300:                                              ; preds = %292
  %301 = sext i8 %294 to i32
  %302 = add nsw i32 %301, -65
  %303 = tail call i32 @llvm.fshl.i32(i32 %302, i32 %302, i32 31)
  %304 = icmp ult i32 %303, 8
  br i1 %304, label %308, label %305

305:                                              ; preds = %308, %300
  %306 = icmp ne i8 %294, 85
  %307 = zext i1 %306 to i32
  br label %313

308:                                              ; preds = %300
  %309 = trunc i32 %303 to i8
  %310 = lshr i8 -107, %309
  %311 = and i8 %310, 1
  %312 = icmp eq i8 %311, 0
  br i1 %312, label %305, label %313

313:                                              ; preds = %308, %305, %292
  %314 = phi i32 [ 0, %292 ], [ %307, %305 ], [ 0, %308 ]
  %315 = icmp eq i32 %314, 0
  %316 = getelementptr inbounds i8, ptr %293, i64 1
  br i1 %315, label %373, label %292, !llvm.loop !157

317:                                              ; preds = %250
  %318 = load i8, ptr %242, align 1, !tbaa !7
  %319 = sext i8 %318 to i64
  %320 = getelementptr inbounds i16, ptr %239, i64 %319
  %321 = load i16, ptr %320, align 2, !tbaa !18
  %322 = and i16 %321, 256
  %323 = icmp eq i16 %322, 0
  br i1 %323, label %337, label %324

324:                                              ; preds = %317
  %325 = sext i8 %318 to i32
  %326 = add nsw i32 %325, -65
  %327 = tail call i32 @llvm.fshl.i32(i32 %326, i32 %326, i32 31)
  %328 = icmp ult i32 %327, 8
  br i1 %328, label %332, label %329

329:                                              ; preds = %332, %324
  %330 = icmp ne i8 %318, 85
  %331 = zext i1 %330 to i32
  br label %337

332:                                              ; preds = %324
  %333 = trunc i32 %327 to i8
  %334 = lshr i8 -107, %333
  %335 = and i8 %334, 1
  %336 = icmp eq i8 %335, 0
  br i1 %336, label %329, label %337

337:                                              ; preds = %332, %329, %317
  %338 = phi i32 [ 0, %317 ], [ %331, %329 ], [ 0, %332 ]
  %339 = icmp eq i32 %338, 0
  br i1 %339, label %94, label %340

340:                                              ; preds = %337
  %341 = getelementptr inbounds i8, ptr %242, i64 1
  br label %373

342:                                              ; preds = %250
  %343 = load i8, ptr %242, align 1, !tbaa !7
  switch i8 %343, label %94 [
    i8 66, label %344
    i8 68, label %344
    i8 86, label %344
    i8 71, label %344
    i8 74, label %344
    i8 76, label %344
    i8 77, label %344
    i8 78, label %344
    i8 82, label %344
    i8 87, label %344
    i8 90, label %344
  ]

344:                                              ; preds = %342, %342, %342, %342, %342, %342, %342, %342, %342, %342, %342
  %345 = getelementptr inbounds i8, ptr %242, i64 1
  br label %373

346:                                              ; preds = %250
  %347 = load i8, ptr %242, align 1, !tbaa !7
  switch i8 %347, label %94 [
    i8 69, label %348
    i8 73, label %348
    i8 89, label %348
  ]

348:                                              ; preds = %346, %346, %346
  %349 = getelementptr inbounds i8, ptr %242, i64 1
  br label %373

350:                                              ; preds = %250
  %351 = load i8, ptr %242, align 1, !tbaa !7
  switch i8 %351, label %94 [
    i8 69, label %352
    i8 73, label %363
  ]

352:                                              ; preds = %350
  %353 = getelementptr inbounds i8, ptr %242, i64 1
  %354 = load i8, ptr %353, align 1, !tbaa !7
  switch i8 %354, label %373 [
    i8 76, label %355
    i8 82, label %361
    i8 83, label %361
    i8 68, label %361
  ]

355:                                              ; preds = %352
  %356 = getelementptr inbounds i8, ptr %242, i64 2
  %357 = load i8, ptr %356, align 1, !tbaa !7
  %358 = icmp eq i8 %357, 89
  %359 = getelementptr inbounds i8, ptr %242, i64 3
  %360 = select i1 %358, ptr %359, ptr %353
  br label %373

361:                                              ; preds = %352, %352, %352
  %362 = getelementptr inbounds i8, ptr %242, i64 2
  br label %373

363:                                              ; preds = %350
  %364 = getelementptr inbounds i8, ptr %242, i64 1
  %365 = load i8, ptr %364, align 1, !tbaa !7
  %366 = icmp eq i8 %365, 78
  br i1 %366, label %367, label %94

367:                                              ; preds = %363
  %368 = getelementptr inbounds i8, ptr %242, i64 2
  %369 = load i8, ptr %368, align 1, !tbaa !7
  %370 = icmp eq i8 %369, 71
  br i1 %370, label %371, label %94

371:                                              ; preds = %367
  %372 = getelementptr inbounds i8, ptr %242, i64 3
  br label %373

373:                                              ; preds = %371, %361, %355, %352, %348, %344, %340, %313, %289, %254
  %374 = phi ptr [ %255, %254 ], [ %362, %361 ], [ %372, %371 ], [ %349, %348 ], [ %345, %344 ], [ %341, %340 ], [ %353, %352 ], [ %360, %355 ], [ %275, %289 ], [ %293, %313 ]
  %375 = getelementptr inbounds i8, ptr %243, i64 1
  %376 = load i8, ptr %375, align 1, !tbaa !7
  %377 = icmp eq i8 %376, 0
  br i1 %377, label %378, label %240, !llvm.loop !158

378:                                              ; preds = %373, %233
  %379 = getelementptr inbounds [4 x ptr], ptr %64, i64 0, i64 3
  %380 = load ptr, ptr %379, align 8, !tbaa !14
  %381 = load i8, ptr %380, align 1, !tbaa !7
  %382 = icmp eq i8 %381, 0
  br i1 %382, label %391, label %383

383:                                              ; preds = %383, %378
  %384 = phi i8 [ %389, %383 ], [ %381, %378 ]
  %385 = phi ptr [ %386, %383 ], [ %380, %378 ]
  %386 = getelementptr inbounds i8, ptr %385, i64 1
  %387 = sext i8 %384 to i32
  %388 = tail call i32 @phone_append(ptr noundef %2, i32 noundef %387) #26
  %389 = load i8, ptr %386, align 1, !tbaa !7
  %390 = icmp eq i8 %389, 0
  br i1 %390, label %391, label %383, !llvm.loop !159

391:                                              ; preds = %383, %378, %71
  %392 = phi i32 [ %76, %71 ], [ %101, %378 ], [ %101, %383 ]
  %393 = sext i32 %392 to i64
  %394 = getelementptr inbounds i8, ptr %8, i64 %393
  %395 = load i8, ptr %394, align 1, !tbaa !7
  %396 = icmp eq i8 %395, 0
  br i1 %396, label %397, label %42, !llvm.loop !160

397:                                              ; preds = %391
  tail call void @free(ptr noundef %8) #26
  %398 = load i32, ptr %4, align 8, !tbaa !24
  %399 = sub i32 %398, %5
  ret i32 %399
}

; Function Attrs: nofree nounwind uwtable
define dso_local void @trie_insert(ptr nocapture noundef %0, ptr nocapture noundef readonly %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = load i8, ptr %1, align 1, !tbaa !7
  %5 = icmp ne i8 %4, 0
  tail call void @llvm.assume(i1 %5)
  br label %6

6:                                                ; preds = %22, %3
  %7 = phi i8 [ %25, %22 ], [ %4, %3 ]
  %8 = phi ptr [ %10, %22 ], [ %1, %3 ]
  %9 = phi ptr [ %24, %22 ], [ %0, %3 ]
  %10 = getelementptr inbounds i8, ptr %8, i64 1
  br label %11

11:                                               ; preds = %15, %6
  %12 = phi ptr [ %13, %15 ], [ %9, %6 ]
  %13 = load ptr, ptr %12, align 8, !tbaa !14
  %14 = icmp eq ptr %13, null
  br i1 %14, label %19, label %15

15:                                               ; preds = %11
  %16 = getelementptr inbounds %struct.trie_s, ptr %13, i64 0, i32 3
  %17 = load i8, ptr %16, align 8, !tbaa !161
  %18 = icmp eq i8 %17, %7
  br i1 %18, label %22, label %11, !llvm.loop !163

19:                                               ; preds = %11
  %20 = tail call noalias dereferenceable_or_null(32) ptr @malloc(i64 noundef 32) #29
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %20, i8 0, i64 32, i1 false)
  %21 = getelementptr inbounds %struct.trie_s, ptr %20, i64 0, i32 3
  store i8 %7, ptr %21, align 8, !tbaa !161
  store ptr %20, ptr %12, align 8, !tbaa !14
  br label %22

22:                                               ; preds = %19, %15
  %23 = phi ptr [ %20, %19 ], [ %13, %15 ]
  %24 = getelementptr inbounds %struct.trie_s, ptr %23, i64 0, i32 1
  %25 = load i8, ptr %10, align 1, !tbaa !7
  %26 = icmp eq i8 %25, 0
  br i1 %26, label %27, label %6, !llvm.loop !164

27:                                               ; preds = %22
  %28 = getelementptr inbounds %struct.trie_s, ptr %23, i64 0, i32 2
  store ptr %2, ptr %28, align 8, !tbaa !165
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #24

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define dso_local ptr @trie_lookup(ptr nocapture noundef %0, ptr nocapture noundef %1) local_unnamed_addr #25 {
  %3 = load ptr, ptr %1, align 8, !tbaa !14
  br label %4

4:                                                ; preds = %25, %2
  %5 = phi ptr [ null, %2 ], [ %26, %25 ]
  %6 = phi ptr [ %3, %2 ], [ %27, %25 ]
  %7 = phi ptr [ %0, %2 ], [ %28, %25 ]
  %8 = load i8, ptr %6, align 1, !tbaa !7
  %9 = icmp eq i8 %8, 0
  br i1 %9, label %29, label %10

10:                                               ; preds = %14, %4
  %11 = phi ptr [ %12, %14 ], [ %7, %4 ]
  %12 = load ptr, ptr %11, align 8, !tbaa !14
  %13 = icmp eq ptr %12, null
  br i1 %13, label %25, label %14

14:                                               ; preds = %10
  %15 = getelementptr inbounds %struct.trie_s, ptr %12, i64 0, i32 3
  %16 = load i8, ptr %15, align 8, !tbaa !161
  %17 = icmp eq i8 %16, %8
  br i1 %17, label %18, label %10, !llvm.loop !166

18:                                               ; preds = %14
  %19 = load ptr, ptr %12, align 8, !tbaa !167
  store ptr %19, ptr %11, align 8, !tbaa !14
  %20 = load ptr, ptr %7, align 8, !tbaa !14
  store ptr %20, ptr %12, align 8, !tbaa !167
  store ptr %12, ptr %7, align 8, !tbaa !14
  %21 = getelementptr inbounds %struct.trie_s, ptr %12, i64 0, i32 1
  %22 = getelementptr inbounds %struct.trie_s, ptr %12, i64 0, i32 2
  %23 = load ptr, ptr %22, align 8, !tbaa !165
  %24 = getelementptr inbounds i8, ptr %6, i64 1
  br label %25

25:                                               ; preds = %18, %10
  %26 = phi ptr [ %23, %18 ], [ %5, %10 ]
  %27 = phi ptr [ %24, %18 ], [ %6, %10 ]
  %28 = phi ptr [ %21, %18 ], [ %7, %10 ]
  br i1 %13, label %29, label %4

29:                                               ; preds = %25, %4
  %30 = phi ptr [ %26, %25 ], [ %5, %4 ]
  %31 = phi ptr [ %27, %25 ], [ %6, %4 ]
  store ptr %31, ptr %1, align 8, !tbaa !14
  ret ptr %30
}

attributes #0 = { nofree nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nofree "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nounwind willreturn uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #13 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #14 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #15 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { nocallback nofree nosync nounwind willreturn }
attributes #17 = { nofree nounwind }
attributes #18 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #19 = { mustprogress nofree nounwind willreturn memory(write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #20 = { mustprogress nofree nounwind willreturn memory(readwrite, inaccessiblemem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #21 = { mustprogress nofree nosync nounwind willreturn memory(none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #22 = { nofree nosync nounwind memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #23 = { mustprogress nofree nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #24 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #25 = { nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #26 = { nounwind }
attributes #27 = { nounwind willreturn memory(read) }
attributes #28 = { cold }
attributes #29 = { nounwind allocsize(0) }
attributes #30 = { noreturn nounwind }
attributes #31 = { nounwind willreturn memory(none) }

!llvm.ident = !{!0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0}
!llvm.module.flags = !{!1, !2, !3, !4, !5, !6}

!0 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!1 = !{i32 1, !"wchar_size", i32 4}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"PIE Level", i32 2}
!4 = !{i32 7, !"uwtable", i32 2}
!5 = !{i32 1, !"ThinLTO", i32 0}
!6 = !{i32 1, !"EnableSplitLTOUnit", i32 1}
!7 = !{!8, !8, i64 0}
!8 = !{!"omnipotent char", !9, i64 0}
!9 = !{!"Simple C/C++ TBAA"}
!10 = distinct !{!10, !11}
!11 = !{!"llvm.loop.unroll.disable"}
!12 = !{!13, !13, i64 0}
!13 = !{!"int", !8, i64 0}
!14 = !{!15, !15, i64 0}
!15 = !{!"any pointer", !8, i64 0}
!16 = !{!17, !17, i64 0}
!17 = !{!"long", !8, i64 0}
!18 = !{!19, !19, i64 0}
!19 = !{!"short", !8, i64 0}
!20 = distinct !{!20, !11}
!21 = !{!22, !15, i64 0}
!22 = !{!"", !15, i64 0, !13, i64 8, !13, i64 12, !19, i64 16, !19, i64 18}
!23 = !{!22, !13, i64 12}
!24 = !{!22, !13, i64 8}
!25 = !{!22, !19, i64 16}
!26 = !{!22, !19, i64 18}
!27 = distinct !{!27, !11}
!28 = !{!29, !29, i64 0}
!29 = !{!"double", !8, i64 0}
!30 = !{!31, !17, i64 16}
!31 = !{!"", !13, i64 0, !13, i64 4, !13, i64 8, !13, i64 12, !17, i64 16, !17, i64 24, !17, i64 32, !17, i64 40}
!32 = !{!31, !13, i64 4}
!33 = !{!31, !17, i64 32}
!34 = !{!31, !13, i64 8}
!35 = !{!31, !13, i64 0}
!36 = !{!31, !17, i64 24}
!37 = !{!31, !17, i64 40}
!38 = distinct !{!38, !11}
!39 = distinct !{!39, !11}
!40 = !{!41, !17, i64 0}
!41 = !{!"", !17, i64 0, !17, i64 8, !17, i64 16, !17, i64 24, !17, i64 32, !17, i64 40, !17, i64 48, !17, i64 56, !17, i64 64, !17, i64 72, !17, i64 80, !17, i64 88, !17, i64 96, !17, i64 104, !17, i64 112, !17, i64 120, !17, i64 128, !17, i64 136, !17, i64 144, !17, i64 152, !17, i64 160, !17, i64 168, !17, i64 176, !17, i64 184, !17, i64 192, !17, i64 200, !17, i64 208, !17, i64 216, !17, i64 224, !17, i64 232, !17, i64 240, !17, i64 248, !17, i64 256, !17, i64 264, !17, i64 272, !17, i64 280, !17, i64 288, !17, i64 296, !17, i64 304, !17, i64 312}
!42 = !{i64 0, i64 8, !16, i64 8, i64 8, !16, i64 16, i64 8, !16, i64 24, i64 8, !16, i64 32, i64 8, !16, i64 40, i64 8, !16, i64 48, i64 8, !16, i64 56, i64 8, !16, i64 64, i64 8, !16, i64 72, i64 8, !16, i64 80, i64 8, !16, i64 88, i64 8, !16, i64 96, i64 8, !16, i64 104, i64 8, !16, i64 112, i64 8, !16, i64 120, i64 8, !16, i64 128, i64 8, !16, i64 136, i64 8, !16, i64 144, i64 8, !16, i64 152, i64 8, !16, i64 160, i64 8, !16, i64 168, i64 8, !16, i64 176, i64 8, !16, i64 184, i64 8, !16, i64 192, i64 8, !16, i64 200, i64 8, !16, i64 208, i64 8, !16, i64 216, i64 8, !16, i64 224, i64 8, !16, i64 232, i64 8, !16, i64 240, i64 8, !16, i64 248, i64 8, !16, i64 256, i64 8, !16, i64 264, i64 8, !16, i64 272, i64 8, !16, i64 280, i64 8, !16, i64 288, i64 8, !16, i64 296, i64 8, !16, i64 304, i64 8, !16, i64 312, i64 8, !16}
!43 = !{!44, !45, i64 0}
!44 = !{!"", !45, i64 0, !45, i64 4, !8, i64 8, !8, i64 9, !8, i64 10}
!45 = !{!"float", !8, i64 0}
!46 = !{!41, !17, i64 128}
!47 = !{!41, !17, i64 24}
!48 = !{!41, !17, i64 200}
!49 = !{!41, !17, i64 40}
!50 = !{!41, !17, i64 216}
!51 = !{!41, !17, i64 56}
!52 = !{!41, !17, i64 232}
!53 = !{!41, !17, i64 248}
!54 = !{!55, !45, i64 8}
!55 = !{!"", !45, i64 0, !45, i64 4, !45, i64 8}
!56 = !{!55, !45, i64 0}
!57 = !{!55, !45, i64 4}
!58 = distinct !{!58, !11}
!59 = !{!60, !8, i64 8}
!60 = !{!"Elm_s", !15, i64 0, !8, i64 8, !8, i64 9, !8, i64 10, !8, i64 11, !15, i64 16, !15, i64 24, !17, i64 32, !8, i64 40}
!61 = !{!60, !15, i64 0}
!62 = !{!63, !13, i64 4}
!63 = !{!"", !45, i64 0, !13, i64 4}
!64 = !{!44, !45, i64 4}
!65 = !{!44, !8, i64 8}
!66 = !{!63, !45, i64 0}
!67 = distinct !{!67, !11}
!68 = distinct !{!68, !11}
!69 = distinct !{!69, !11}
!70 = distinct !{!70, !11}
!71 = !{!60, !17, i64 32}
!72 = distinct !{!72, !11}
!73 = !{!45, !45, i64 0}
!74 = distinct !{!74, !11}
!75 = !{!41, !17, i64 304}
!76 = !{!41, !17, i64 8}
!77 = !{!41, !17, i64 176}
!78 = !{!41, !17, i64 112}
!79 = !{!41, !17, i64 144}
!80 = !{!41, !17, i64 160}
!81 = !{!41, !17, i64 16}
!82 = !{!41, !17, i64 32}
!83 = !{!41, !17, i64 48}
!84 = !{!41, !17, i64 296}
!85 = !{!41, !17, i64 256}
!86 = !{!41, !17, i64 272}
!87 = !{!41, !17, i64 192}
!88 = !{!41, !17, i64 208}
!89 = !{!41, !17, i64 224}
!90 = !{!41, !17, i64 240}
!91 = distinct !{!91, !11}
!92 = distinct !{!92, !11}
!93 = distinct !{!93, !11}
!94 = distinct !{!94, !11}
!95 = distinct !{!95, !11}
!96 = distinct !{!96, !11}
!97 = distinct !{!97, !11}
!98 = distinct !{!98, !11}
!99 = !{!41, !17, i64 184}
!100 = !{!41, !17, i64 288}
!101 = !{!102, !45, i64 16}
!102 = !{!"", !15, i64 0, !45, i64 8, !45, i64 12, !45, i64 16, !45, i64 20, !45, i64 24}
!103 = !{!102, !45, i64 12}
!104 = !{!102, !45, i64 8}
!105 = !{!41, !17, i64 96}
!106 = !{!41, !17, i64 104}
!107 = !{!41, !17, i64 80}
!108 = !{!41, !17, i64 88}
!109 = !{!41, !17, i64 64}
!110 = !{!41, !17, i64 72}
!111 = !{!41, !17, i64 136}
!112 = !{!41, !17, i64 120}
!113 = !{!41, !17, i64 264}
!114 = !{!41, !17, i64 280}
!115 = !{!41, !17, i64 312}
!116 = !{!102, !45, i64 20}
!117 = !{!102, !45, i64 24}
!118 = !{!41, !17, i64 152}
!119 = !{!41, !17, i64 168}
!120 = distinct !{!120, !11}
!121 = distinct !{!121, !11}
!122 = !{!60, !8, i64 9}
!123 = !{!60, !8, i64 10}
!124 = distinct !{!124, !11}
!125 = distinct !{!125, !11}
!126 = distinct !{!126, !11}
!127 = distinct !{!127, !11}
!128 = distinct !{!128, !11}
!129 = distinct !{!129, !11}
!130 = distinct !{!130, !11}
!131 = distinct !{!131, !11}
!132 = distinct !{!132, !11}
!133 = distinct !{!133, !11}
!134 = distinct !{!134, !11}
!135 = distinct !{!135, !11}
!136 = distinct !{!136, !11}
!137 = distinct !{!137, !11}
!138 = distinct !{!138, !11}
!139 = distinct !{!139, !11}
!140 = distinct !{!140, !11}
!141 = distinct !{!141, !11}
!142 = distinct !{!142, !11}
!143 = distinct !{!143, !11}
!144 = distinct !{!144, !11}
!145 = distinct !{!145, !11}
!146 = distinct !{!146, !11}
!147 = distinct !{!147, !11}
!148 = distinct !{!148, !11}
!149 = distinct !{!149, !11}
!150 = distinct !{!150, !11}
!151 = distinct !{!151, !11}
!152 = distinct !{!152, !11}
!153 = distinct !{!153, !11}
!154 = distinct !{!154, !11}
!155 = distinct !{!155, !11}
!156 = distinct !{!156, !11}
!157 = distinct !{!157, !11}
!158 = distinct !{!158, !11}
!159 = distinct !{!159, !11}
!160 = distinct !{!160, !11}
!161 = !{!162, !8, i64 24}
!162 = !{!"trie_s", !15, i64 0, !15, i64 8, !15, i64 16, !8, i64 24}
!163 = distinct !{!163, !11}
!164 = distinct !{!164, !11}
!165 = !{!162, !15, i64 16}
!166 = distinct !{!166, !11}
!167 = !{!162, !15, i64 0}
