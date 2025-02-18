; ModuleID = 'regex-alpha/regcomp.c'
source_filename = "regex-alpha/regcomp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.cclass = type { ptr, ptr, ptr }
%struct.cname = type { ptr, i8 }
%struct.parse = type { ptr, ptr, i32, ptr, i64, i64, i32, ptr, [10 x i64], [10 x i64] }
%struct.regex_t = type { i32, i64, ptr, ptr }
%struct.re_guts = type { i32, ptr, i32, i32, ptr, ptr, i32, i64, i64, i64, i32, i32, i32, i32, ptr, ptr, i32, i64, i32, i64, [1 x i8] }
%struct.cset = type { ptr, i8, i8, i64, ptr }

@.str = private unnamed_addr constant [7 x i8] c"[:<:]]\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"[:>:]]\00", align 1
@cclasses = internal unnamed_addr constant [20 x %struct.cclass] [%struct.cclass { ptr @.str.2, ptr @.str.3, ptr @.str.4 }, %struct.cclass { ptr @.str.5, ptr @.str.6, ptr @.str.4 }, %struct.cclass { ptr @.str.4, ptr @.str.4, ptr @.str.4 }, %struct.cclass { ptr @.str.7, ptr @.str.8, ptr @.str.4 }, %struct.cclass { ptr @.str.9, ptr @.str.10, ptr @.str.4 }, %struct.cclass { ptr @.str.11, ptr @.str.12, ptr @.str.4 }, %struct.cclass { ptr @.str.13, ptr @.str.14, ptr @.str.4 }, %struct.cclass { ptr @.str.4, ptr @.str.4, ptr @.str.4 }, %struct.cclass { ptr @.str.15, ptr @.str.16, ptr @.str.4 }, %struct.cclass { ptr @.str.4, ptr @.str.4, ptr @.str.4 }, %struct.cclass { ptr @.str.17, ptr @.str.18, ptr @.str.4 }, %struct.cclass { ptr @.str.4, ptr @.str.4, ptr @.str.4 }, %struct.cclass { ptr @.str.19, ptr @.str.20, ptr @.str.4 }, %struct.cclass { ptr @.str.4, ptr @.str.4, ptr @.str.4 }, %struct.cclass { ptr @.str.21, ptr @.str.22, ptr @.str.4 }, %struct.cclass { ptr @.str.23, ptr @.str.24, ptr @.str.4 }, %struct.cclass { ptr @.str.4, ptr @.str.4, ptr @.str.4 }, %struct.cclass { ptr @.str.25, ptr @.str.26, ptr @.str.4 }, %struct.cclass { ptr @.str.4, ptr @.str.4, ptr @.str.4 }, %struct.cclass { ptr null, ptr null, ptr @.str.4 }], align 16
@.str.2 = private unnamed_addr constant [6 x i8] c"alnum\00", align 1
@.str.3 = private unnamed_addr constant [63 x i8] c"ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789\00", align 1
@.str.4 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.5 = private unnamed_addr constant [6 x i8] c"alpha\00", align 1
@.str.6 = private unnamed_addr constant [53 x i8] c"ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz\00", align 1
@.str.7 = private unnamed_addr constant [6 x i8] c"blank\00", align 1
@.str.8 = private unnamed_addr constant [3 x i8] c" \09\00", align 1
@.str.9 = private unnamed_addr constant [6 x i8] c"cntrl\00", align 1
@.str.10 = private unnamed_addr constant [33 x i8] c"\07\08\09\0A\0B\0C\0D\01\02\03\04\05\06\0E\0F\10\11\12\13\14\15\16\17\18\19\1A\1B\1C\1D\1E\1F\7F\00", align 1
@.str.11 = private unnamed_addr constant [6 x i8] c"digit\00", align 1
@.str.12 = private unnamed_addr constant [11 x i8] c"0123456789\00", align 1
@.str.13 = private unnamed_addr constant [6 x i8] c"graph\00", align 1
@.str.14 = private unnamed_addr constant [95 x i8] c"ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789!\22#$%&'()*+,-./:;<=>?@[\\]^_`{|}~\00", align 1
@.str.15 = private unnamed_addr constant [6 x i8] c"lower\00", align 1
@.str.16 = private unnamed_addr constant [27 x i8] c"abcdefghijklmnopqrstuvwxyz\00", align 1
@.str.17 = private unnamed_addr constant [6 x i8] c"print\00", align 1
@.str.18 = private unnamed_addr constant [96 x i8] c"ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789!\22#$%&'()*+,-./:;<=>?@[\\]^_`{|}~ \00", align 1
@.str.19 = private unnamed_addr constant [6 x i8] c"punct\00", align 1
@.str.20 = private unnamed_addr constant [33 x i8] c"!\22#$%&'()*+,-./:;<=>?@[\\]^_`{|}~\00", align 1
@.str.21 = private unnamed_addr constant [6 x i8] c"space\00", align 1
@.str.22 = private unnamed_addr constant [7 x i8] c"\09\0A\0B\0C\0D \00", align 1
@.str.23 = private unnamed_addr constant [6 x i8] c"upper\00", align 1
@.str.24 = private unnamed_addr constant [27 x i8] c"ABCDEFGHIJKLMNOPQRSTUVWXYZ\00", align 1
@.str.25 = private unnamed_addr constant [7 x i8] c"xdigit\00", align 1
@.str.26 = private unnamed_addr constant [23 x i8] c"0123456789ABCDEFabcdef\00", align 1
@cnames = internal unnamed_addr constant [96 x %struct.cname] [%struct.cname { ptr @.str.27, i8 0 }, %struct.cname { ptr @.str.28, i8 1 }, %struct.cname { ptr @.str.29, i8 2 }, %struct.cname { ptr @.str.30, i8 3 }, %struct.cname { ptr @.str.31, i8 4 }, %struct.cname { ptr @.str.32, i8 5 }, %struct.cname { ptr @.str.33, i8 6 }, %struct.cname { ptr @.str.34, i8 7 }, %struct.cname { ptr @.str.35, i8 7 }, %struct.cname { ptr @.str.36, i8 8 }, %struct.cname { ptr @.str.37, i8 8 }, %struct.cname { ptr @.str.38, i8 9 }, %struct.cname { ptr @.str.39, i8 9 }, %struct.cname { ptr @.str.40, i8 10 }, %struct.cname { ptr @.str.41, i8 10 }, %struct.cname { ptr @.str.42, i8 11 }, %struct.cname { ptr @.str.43, i8 11 }, %struct.cname { ptr @.str.44, i8 12 }, %struct.cname { ptr @.str.45, i8 12 }, %struct.cname { ptr @.str.46, i8 13 }, %struct.cname { ptr @.str.47, i8 13 }, %struct.cname { ptr @.str.48, i8 14 }, %struct.cname { ptr @.str.49, i8 15 }, %struct.cname { ptr @.str.50, i8 16 }, %struct.cname { ptr @.str.51, i8 17 }, %struct.cname { ptr @.str.52, i8 18 }, %struct.cname { ptr @.str.53, i8 19 }, %struct.cname { ptr @.str.54, i8 20 }, %struct.cname { ptr @.str.55, i8 21 }, %struct.cname { ptr @.str.56, i8 22 }, %struct.cname { ptr @.str.57, i8 23 }, %struct.cname { ptr @.str.58, i8 24 }, %struct.cname { ptr @.str.59, i8 25 }, %struct.cname { ptr @.str.60, i8 26 }, %struct.cname { ptr @.str.61, i8 27 }, %struct.cname { ptr @.str.62, i8 28 }, %struct.cname { ptr @.str.63, i8 28 }, %struct.cname { ptr @.str.64, i8 29 }, %struct.cname { ptr @.str.65, i8 29 }, %struct.cname { ptr @.str.66, i8 30 }, %struct.cname { ptr @.str.67, i8 30 }, %struct.cname { ptr @.str.68, i8 31 }, %struct.cname { ptr @.str.69, i8 31 }, %struct.cname { ptr @.str.21, i8 32 }, %struct.cname { ptr @.str.70, i8 33 }, %struct.cname { ptr @.str.71, i8 34 }, %struct.cname { ptr @.str.72, i8 35 }, %struct.cname { ptr @.str.73, i8 36 }, %struct.cname { ptr @.str.74, i8 37 }, %struct.cname { ptr @.str.75, i8 38 }, %struct.cname { ptr @.str.76, i8 39 }, %struct.cname { ptr @.str.77, i8 40 }, %struct.cname { ptr @.str.78, i8 41 }, %struct.cname { ptr @.str.79, i8 42 }, %struct.cname { ptr @.str.80, i8 43 }, %struct.cname { ptr @.str.81, i8 44 }, %struct.cname { ptr @.str.82, i8 45 }, %struct.cname { ptr @.str.83, i8 45 }, %struct.cname { ptr @.str.84, i8 46 }, %struct.cname { ptr @.str.85, i8 46 }, %struct.cname { ptr @.str.86, i8 47 }, %struct.cname { ptr @.str.87, i8 47 }, %struct.cname { ptr @.str.88, i8 48 }, %struct.cname { ptr @.str.89, i8 49 }, %struct.cname { ptr @.str.90, i8 50 }, %struct.cname { ptr @.str.91, i8 51 }, %struct.cname { ptr @.str.92, i8 52 }, %struct.cname { ptr @.str.93, i8 53 }, %struct.cname { ptr @.str.94, i8 54 }, %struct.cname { ptr @.str.95, i8 55 }, %struct.cname { ptr @.str.96, i8 56 }, %struct.cname { ptr @.str.97, i8 57 }, %struct.cname { ptr @.str.98, i8 58 }, %struct.cname { ptr @.str.99, i8 59 }, %struct.cname { ptr @.str.100, i8 60 }, %struct.cname { ptr @.str.101, i8 61 }, %struct.cname { ptr @.str.102, i8 62 }, %struct.cname { ptr @.str.103, i8 63 }, %struct.cname { ptr @.str.104, i8 64 }, %struct.cname { ptr @.str.105, i8 91 }, %struct.cname { ptr @.str.106, i8 92 }, %struct.cname { ptr @.str.107, i8 92 }, %struct.cname { ptr @.str.108, i8 93 }, %struct.cname { ptr @.str.109, i8 94 }, %struct.cname { ptr @.str.110, i8 94 }, %struct.cname { ptr @.str.111, i8 95 }, %struct.cname { ptr @.str.112, i8 95 }, %struct.cname { ptr @.str.113, i8 96 }, %struct.cname { ptr @.str.114, i8 123 }, %struct.cname { ptr @.str.115, i8 123 }, %struct.cname { ptr @.str.116, i8 124 }, %struct.cname { ptr @.str.117, i8 125 }, %struct.cname { ptr @.str.118, i8 125 }, %struct.cname { ptr @.str.119, i8 126 }, %struct.cname { ptr @.str.120, i8 127 }, %struct.cname zeroinitializer], align 16
@.str.27 = private unnamed_addr constant [4 x i8] c"NUL\00", align 1
@.str.28 = private unnamed_addr constant [4 x i8] c"SOH\00", align 1
@.str.29 = private unnamed_addr constant [4 x i8] c"STX\00", align 1
@.str.30 = private unnamed_addr constant [4 x i8] c"ETX\00", align 1
@.str.31 = private unnamed_addr constant [4 x i8] c"EOT\00", align 1
@.str.32 = private unnamed_addr constant [4 x i8] c"ENQ\00", align 1
@.str.33 = private unnamed_addr constant [4 x i8] c"ACK\00", align 1
@.str.34 = private unnamed_addr constant [4 x i8] c"BEL\00", align 1
@.str.35 = private unnamed_addr constant [6 x i8] c"alert\00", align 1
@.str.36 = private unnamed_addr constant [3 x i8] c"BS\00", align 1
@.str.37 = private unnamed_addr constant [10 x i8] c"backspace\00", align 1
@.str.38 = private unnamed_addr constant [3 x i8] c"HT\00", align 1
@.str.39 = private unnamed_addr constant [4 x i8] c"tab\00", align 1
@.str.40 = private unnamed_addr constant [3 x i8] c"LF\00", align 1
@.str.41 = private unnamed_addr constant [8 x i8] c"newline\00", align 1
@.str.42 = private unnamed_addr constant [3 x i8] c"VT\00", align 1
@.str.43 = private unnamed_addr constant [13 x i8] c"vertical-tab\00", align 1
@.str.44 = private unnamed_addr constant [3 x i8] c"FF\00", align 1
@.str.45 = private unnamed_addr constant [10 x i8] c"form-feed\00", align 1
@.str.46 = private unnamed_addr constant [3 x i8] c"CR\00", align 1
@.str.47 = private unnamed_addr constant [16 x i8] c"carriage-return\00", align 1
@.str.48 = private unnamed_addr constant [3 x i8] c"SO\00", align 1
@.str.49 = private unnamed_addr constant [3 x i8] c"SI\00", align 1
@.str.50 = private unnamed_addr constant [4 x i8] c"DLE\00", align 1
@.str.51 = private unnamed_addr constant [4 x i8] c"DC1\00", align 1
@.str.52 = private unnamed_addr constant [4 x i8] c"DC2\00", align 1
@.str.53 = private unnamed_addr constant [4 x i8] c"DC3\00", align 1
@.str.54 = private unnamed_addr constant [4 x i8] c"DC4\00", align 1
@.str.55 = private unnamed_addr constant [4 x i8] c"NAK\00", align 1
@.str.56 = private unnamed_addr constant [4 x i8] c"SYN\00", align 1
@.str.57 = private unnamed_addr constant [4 x i8] c"ETB\00", align 1
@.str.58 = private unnamed_addr constant [4 x i8] c"CAN\00", align 1
@.str.59 = private unnamed_addr constant [3 x i8] c"EM\00", align 1
@.str.60 = private unnamed_addr constant [4 x i8] c"SUB\00", align 1
@.str.61 = private unnamed_addr constant [4 x i8] c"ESC\00", align 1
@.str.62 = private unnamed_addr constant [4 x i8] c"IS4\00", align 1
@.str.63 = private unnamed_addr constant [3 x i8] c"FS\00", align 1
@.str.64 = private unnamed_addr constant [4 x i8] c"IS3\00", align 1
@.str.65 = private unnamed_addr constant [3 x i8] c"GS\00", align 1
@.str.66 = private unnamed_addr constant [4 x i8] c"IS2\00", align 1
@.str.67 = private unnamed_addr constant [3 x i8] c"RS\00", align 1
@.str.68 = private unnamed_addr constant [4 x i8] c"IS1\00", align 1
@.str.69 = private unnamed_addr constant [3 x i8] c"US\00", align 1
@.str.70 = private unnamed_addr constant [17 x i8] c"exclamation-mark\00", align 1
@.str.71 = private unnamed_addr constant [15 x i8] c"quotation-mark\00", align 1
@.str.72 = private unnamed_addr constant [12 x i8] c"number-sign\00", align 1
@.str.73 = private unnamed_addr constant [12 x i8] c"dollar-sign\00", align 1
@.str.74 = private unnamed_addr constant [13 x i8] c"percent-sign\00", align 1
@.str.75 = private unnamed_addr constant [10 x i8] c"ampersand\00", align 1
@.str.76 = private unnamed_addr constant [11 x i8] c"apostrophe\00", align 1
@.str.77 = private unnamed_addr constant [17 x i8] c"left-parenthesis\00", align 1
@.str.78 = private unnamed_addr constant [18 x i8] c"right-parenthesis\00", align 1
@.str.79 = private unnamed_addr constant [9 x i8] c"asterisk\00", align 1
@.str.80 = private unnamed_addr constant [10 x i8] c"plus-sign\00", align 1
@.str.81 = private unnamed_addr constant [6 x i8] c"comma\00", align 1
@.str.82 = private unnamed_addr constant [7 x i8] c"hyphen\00", align 1
@.str.83 = private unnamed_addr constant [13 x i8] c"hyphen-minus\00", align 1
@.str.84 = private unnamed_addr constant [7 x i8] c"period\00", align 1
@.str.85 = private unnamed_addr constant [10 x i8] c"full-stop\00", align 1
@.str.86 = private unnamed_addr constant [6 x i8] c"slash\00", align 1
@.str.87 = private unnamed_addr constant [8 x i8] c"solidus\00", align 1
@.str.88 = private unnamed_addr constant [5 x i8] c"zero\00", align 1
@.str.89 = private unnamed_addr constant [4 x i8] c"one\00", align 1
@.str.90 = private unnamed_addr constant [4 x i8] c"two\00", align 1
@.str.91 = private unnamed_addr constant [6 x i8] c"three\00", align 1
@.str.92 = private unnamed_addr constant [5 x i8] c"four\00", align 1
@.str.93 = private unnamed_addr constant [5 x i8] c"five\00", align 1
@.str.94 = private unnamed_addr constant [4 x i8] c"six\00", align 1
@.str.95 = private unnamed_addr constant [6 x i8] c"seven\00", align 1
@.str.96 = private unnamed_addr constant [6 x i8] c"eight\00", align 1
@.str.97 = private unnamed_addr constant [5 x i8] c"nine\00", align 1
@.str.98 = private unnamed_addr constant [6 x i8] c"colon\00", align 1
@.str.99 = private unnamed_addr constant [10 x i8] c"semicolon\00", align 1
@.str.100 = private unnamed_addr constant [15 x i8] c"less-than-sign\00", align 1
@.str.101 = private unnamed_addr constant [12 x i8] c"equals-sign\00", align 1
@.str.102 = private unnamed_addr constant [18 x i8] c"greater-than-sign\00", align 1
@.str.103 = private unnamed_addr constant [14 x i8] c"question-mark\00", align 1
@.str.104 = private unnamed_addr constant [14 x i8] c"commercial-at\00", align 1
@.str.105 = private unnamed_addr constant [20 x i8] c"left-square-bracket\00", align 1
@.str.106 = private unnamed_addr constant [10 x i8] c"backslash\00", align 1
@.str.107 = private unnamed_addr constant [16 x i8] c"reverse-solidus\00", align 1
@.str.108 = private unnamed_addr constant [21 x i8] c"right-square-bracket\00", align 1
@.str.109 = private unnamed_addr constant [11 x i8] c"circumflex\00", align 1
@.str.110 = private unnamed_addr constant [18 x i8] c"circumflex-accent\00", align 1
@.str.111 = private unnamed_addr constant [11 x i8] c"underscore\00", align 1
@.str.112 = private unnamed_addr constant [9 x i8] c"low-line\00", align 1
@.str.113 = private unnamed_addr constant [13 x i8] c"grave-accent\00", align 1
@.str.114 = private unnamed_addr constant [11 x i8] c"left-brace\00", align 1
@.str.115 = private unnamed_addr constant [19 x i8] c"left-curly-bracket\00", align 1
@.str.116 = private unnamed_addr constant [14 x i8] c"vertical-line\00", align 1
@.str.117 = private unnamed_addr constant [12 x i8] c"right-brace\00", align 1
@.str.118 = private unnamed_addr constant [20 x i8] c"right-curly-bracket\00", align 1
@.str.119 = private unnamed_addr constant [6 x i8] c"tilde\00", align 1
@.str.120 = private unnamed_addr constant [4 x i8] c"DEL\00", align 1
@nuls = internal global [10 x i8] zeroinitializer, align 1

; Function Attrs: cold nounwind uwtable
define dso_local i32 @regcomp(ptr noundef %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #0 !prof !42 {
  %4 = alloca %struct.parse, align 8
  call void @llvm.lifetime.start.p0(i64 224, ptr nonnull %4) #17
  %5 = and i32 %2, -129
  %6 = and i32 %2, 1
  %7 = icmp eq i32 %6, 0
  %8 = and i32 %2, 16
  %9 = icmp eq i32 %8, 0
  %10 = and i32 %2, 17
  %11 = icmp eq i32 %10, 17
  br i1 %11, label %328, label %12, !prof !43

12:                                               ; preds = %3
  %13 = and i32 %2, 32
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %23, label %15, !prof !44

15:                                               ; preds = %12
  %16 = getelementptr inbounds %struct.regex_t, ptr %0, i64 0, i32 2
  %17 = load ptr, ptr %16, align 8, !tbaa !45
  %18 = icmp ult ptr %17, %1
  br i1 %18, label %328, label %19

19:                                               ; preds = %15
  %20 = ptrtoint ptr %17 to i64
  %21 = ptrtoint ptr %1 to i64
  %22 = sub i64 %20, %21
  br label %25

23:                                               ; preds = %12
  %24 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #18
  br label %25

25:                                               ; preds = %23, %19
  %26 = phi i64 [ %22, %19 ], [ %24, %23 ]
  %27 = tail call noalias dereferenceable_or_null(399) ptr @malloc(i64 noundef 399) #19
  %28 = icmp eq ptr %27, null
  br i1 %28, label %328, label %29, !prof !43

29:                                               ; preds = %25
  %30 = lshr i64 %26, 1
  %31 = mul i64 %30, 3
  %32 = add i64 %31, 1
  %33 = icmp uge i64 %32, %26
  %34 = icmp ult i64 %32, 1152921504606846976
  %35 = and i1 %33, %34
  br i1 %35, label %37, label %36, !prof !44

36:                                               ; preds = %29
  tail call void @free(ptr noundef %27) #17
  br label %39

37:                                               ; preds = %29
  %38 = getelementptr inbounds %struct.parse, ptr %4, i64 0, i32 4
  store i64 %32, ptr %38, align 8, !tbaa !52
  br label %39

39:                                               ; preds = %37, %36
  br i1 %35, label %40, label %328, !prof !44

40:                                               ; preds = %39
  %41 = getelementptr inbounds %struct.parse, ptr %4, i64 0, i32 4
  %42 = load i64, ptr %41, align 8, !tbaa !52
  %43 = shl i64 %42, 3
  %44 = tail call noalias ptr @malloc(i64 noundef %43) #19
  %45 = getelementptr inbounds %struct.parse, ptr %4, i64 0, i32 3
  store ptr %44, ptr %45, align 8, !tbaa !54
  %46 = getelementptr inbounds %struct.parse, ptr %4, i64 0, i32 5
  store i64 0, ptr %46, align 8, !tbaa !55
  %47 = icmp eq ptr %44, null
  br i1 %47, label %48, label %49, !prof !43

48:                                               ; preds = %40
  tail call void @free(ptr noundef %27) #17
  br label %328

49:                                               ; preds = %40
  %50 = getelementptr inbounds %struct.parse, ptr %4, i64 0, i32 7
  store ptr %27, ptr %50, align 8, !tbaa !56
  store ptr %1, ptr %4, align 8, !tbaa !57
  %51 = getelementptr inbounds i8, ptr %1, i64 %26
  %52 = getelementptr inbounds %struct.parse, ptr %4, i64 0, i32 1
  store ptr %51, ptr %52, align 8, !tbaa !58
  %53 = getelementptr inbounds %struct.parse, ptr %4, i64 0, i32 2
  store i32 0, ptr %53, align 8, !tbaa !59
  %54 = getelementptr inbounds %struct.parse, ptr %4, i64 0, i32 6
  store i32 0, ptr %54, align 8, !tbaa !60
  %55 = getelementptr inbounds i8, ptr %4, i64 64
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(160) %55, i8 0, i64 160, i1 false)
  %56 = getelementptr inbounds %struct.re_guts, ptr %27, i64 0, i32 2
  store i32 256, ptr %56, align 8, !tbaa !61
  %57 = getelementptr inbounds %struct.re_guts, ptr %27, i64 0, i32 5
  %58 = getelementptr inbounds %struct.re_guts, ptr %27, i64 0, i32 3
  %59 = getelementptr inbounds %struct.re_guts, ptr %27, i64 0, i32 6
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %58, i8 0, i64 20, i1 false)
  store i32 %5, ptr %59, align 8, !tbaa !63
  %60 = getelementptr inbounds %struct.re_guts, ptr %27, i64 0, i32 10
  store i32 0, ptr %60, align 8, !tbaa !64
  %61 = getelementptr inbounds %struct.re_guts, ptr %27, i64 0, i32 11
  store i32 0, ptr %61, align 4, !tbaa !65
  %62 = getelementptr inbounds %struct.re_guts, ptr %27, i64 0, i32 12
  store i32 0, ptr %62, align 8, !tbaa !66
  %63 = getelementptr inbounds %struct.re_guts, ptr %27, i64 0, i32 15
  store ptr null, ptr %63, align 8, !tbaa !67
  %64 = getelementptr inbounds %struct.re_guts, ptr %27, i64 0, i32 16
  store i32 0, ptr %64, align 8, !tbaa !68
  %65 = getelementptr inbounds %struct.re_guts, ptr %27, i64 0, i32 17
  store i64 0, ptr %65, align 8, !tbaa !69
  %66 = getelementptr inbounds %struct.re_guts, ptr %27, i64 0, i32 13
  store i32 1, ptr %66, align 4, !tbaa !70
  %67 = getelementptr inbounds %struct.re_guts, ptr %27, i64 0, i32 20
  %68 = getelementptr inbounds %struct.re_guts, ptr %27, i64 1, i32 18
  %69 = getelementptr inbounds %struct.re_guts, ptr %27, i64 0, i32 14
  store ptr %68, ptr %69, align 8, !tbaa !71
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(256) %67, i8 0, i64 256, i1 false)
  %70 = getelementptr inbounds %struct.re_guts, ptr %27, i64 0, i32 18
  store i32 0, ptr %70, align 8, !tbaa !72
  %71 = icmp sgt i64 %42, 0
  br i1 %71, label %83, label %72, !prof !44

72:                                               ; preds = %49
  %73 = add nsw i64 %42, 1
  %74 = sdiv i64 %73, 2
  %75 = mul nsw i64 %74, 3
  %76 = icmp slt i64 %42, %75
  br i1 %76, label %77, label %83

77:                                               ; preds = %72
  %78 = mul i64 %74, 24
  %79 = tail call ptr @realloc(ptr noundef nonnull %44, i64 noundef %78) #20
  %80 = icmp eq ptr %79, null
  br i1 %80, label %81, label %82

81:                                               ; preds = %77
  store i32 12, ptr %53, align 8, !tbaa !59
  store ptr @nuls, ptr %4, align 8, !tbaa !57
  store ptr @nuls, ptr %52, align 8, !tbaa !58
  br label %83

82:                                               ; preds = %77
  store ptr %79, ptr %45, align 8, !tbaa !54
  store i64 %75, ptr %41, align 8, !tbaa !52
  br label %83

83:                                               ; preds = %82, %81, %72, %49
  %84 = load ptr, ptr %45, align 8, !tbaa !54
  %85 = load i64, ptr %46, align 8, !tbaa !55
  %86 = add nsw i64 %85, 1
  store i64 %86, ptr %46, align 8, !tbaa !55
  %87 = getelementptr inbounds i64, ptr %84, i64 %85
  store i64 67108864, ptr %87, align 8, !tbaa !73
  %88 = load i64, ptr %46, align 8, !tbaa !55
  %89 = add nsw i64 %88, -1
  %90 = getelementptr inbounds %struct.re_guts, ptr %27, i64 0, i32 8
  store i64 %89, ptr %90, align 8, !tbaa !74
  br i1 %7, label %92, label %91, !prof !44

91:                                               ; preds = %83
  call fastcc void @p_ere(ptr noundef nonnull %4, i32 noundef 128)
  br label %95

92:                                               ; preds = %83
  br i1 %9, label %94, label %93, !prof !44

93:                                               ; preds = %92
  call fastcc void @p_str(ptr noundef nonnull %4)
  br label %95

94:                                               ; preds = %92
  call fastcc void @p_bre(ptr noundef nonnull %4, i32 noundef 128, i32 noundef 128)
  br label %95

95:                                               ; preds = %93, %94, %91
  %96 = load i32, ptr %53, align 8, !tbaa !59
  %97 = icmp eq i32 %96, 0
  br i1 %97, label %98, label %123, !prof !44

98:                                               ; preds = %95
  %99 = load i64, ptr %46, align 8, !tbaa !55
  %100 = load i64, ptr %41, align 8, !tbaa !52
  %101 = icmp slt i64 %99, %100
  br i1 %101, label %118, label %102, !prof !44

102:                                              ; preds = %98
  %103 = add nsw i64 %100, 1
  %104 = sdiv i64 %103, 2
  %105 = mul nsw i64 %104, 3
  %106 = icmp slt i64 %100, %105
  br i1 %106, label %107, label %118

107:                                              ; preds = %102
  %108 = load ptr, ptr %45, align 8, !tbaa !54
  %109 = mul i64 %104, 24
  %110 = call ptr @realloc(ptr noundef %108, i64 noundef %109) #20
  %111 = icmp eq ptr %110, null
  br i1 %111, label %112, label %117

112:                                              ; preds = %107
  %113 = load i32, ptr %53, align 8, !tbaa !59
  %114 = icmp eq i32 %113, 0
  br i1 %114, label %115, label %116

115:                                              ; preds = %112
  store i32 12, ptr %53, align 8, !tbaa !59
  br label %116

116:                                              ; preds = %115, %112
  store ptr @nuls, ptr %4, align 8, !tbaa !57
  store ptr @nuls, ptr %52, align 8, !tbaa !58
  br label %118

117:                                              ; preds = %107
  store ptr %110, ptr %45, align 8, !tbaa !54
  store i64 %105, ptr %41, align 8, !tbaa !52
  br label %118

118:                                              ; preds = %117, %116, %102, %98
  %119 = load ptr, ptr %45, align 8, !tbaa !54
  %120 = load i64, ptr %46, align 8, !tbaa !55
  %121 = add nsw i64 %120, 1
  store i64 %121, ptr %46, align 8, !tbaa !55
  %122 = getelementptr inbounds i64, ptr %119, i64 %120
  store i64 67108864, ptr %122, align 8, !tbaa !73
  br label %123

123:                                              ; preds = %95, %118
  %124 = load i64, ptr %46, align 8, !tbaa !55
  %125 = add nsw i64 %124, -1
  %126 = getelementptr inbounds %struct.re_guts, ptr %27, i64 0, i32 9
  store i64 %125, ptr %126, align 8, !tbaa !75
  %127 = load ptr, ptr %69, align 8, !tbaa !71
  %128 = load i32, ptr %53, align 8, !tbaa !59
  %129 = icmp eq i32 %128, 0
  br i1 %129, label %130, label %196, !prof !44

130:                                              ; preds = %123, %193
  %131 = phi i64 [ %194, %193 ], [ -128, %123 ]
  %132 = getelementptr inbounds i8, ptr %127, i64 %131
  %133 = load i8, ptr %132, align 1, !tbaa !76
  %134 = icmp eq i8 %133, 0
  br i1 %134, label %135, label %193, !prof !77

135:                                              ; preds = %130
  %136 = load i32, ptr %58, align 4, !tbaa !78
  %137 = icmp sgt i32 %136, 0
  br i1 %137, label %138, label %193, !prof !79

138:                                              ; preds = %135
  %139 = load ptr, ptr %57, align 8, !tbaa !80
  %140 = and i64 %131, 255
  br label %141

141:                                              ; preds = %138, %147
  %142 = phi ptr [ %139, %138 ], [ %154, %147 ]
  %143 = phi i32 [ 0, %138 ], [ %151, %147 ]
  %144 = getelementptr inbounds i8, ptr %142, i64 %140
  %145 = load i8, ptr %144, align 1, !tbaa !76
  %146 = icmp eq i8 %145, 0
  br i1 %146, label %147, label %156

147:                                              ; preds = %141
  %148 = add nuw nsw i32 %136, 7
  %149 = lshr i32 %148, 3
  %150 = call i32 @llvm.smax.i32(i32 %149, i32 1)
  %151 = add nuw nsw i32 %143, 1
  %152 = load i32, ptr %56, align 8, !tbaa !61
  %153 = sext i32 %152 to i64
  %154 = getelementptr inbounds i8, ptr %142, i64 %153
  %155 = icmp eq i32 %151, %150
  br i1 %155, label %193, label %141, !prof !81, !llvm.loop !82

156:                                              ; preds = %141
  %157 = load i32, ptr %66, align 4, !tbaa !70
  %158 = add nsw i32 %157, 1
  store i32 %158, ptr %66, align 4, !tbaa !70
  %159 = trunc i32 %157 to i8
  store i8 %159, ptr %132, align 1, !tbaa !76
  %160 = icmp slt i64 %131, 127
  br i1 %160, label %161, label %193

161:                                              ; preds = %156, %191
  %162 = phi i64 [ %163, %191 ], [ %131, %156 ]
  %163 = add nsw i64 %162, 1
  %164 = getelementptr inbounds i8, ptr %127, i64 %163
  %165 = load i8, ptr %164, align 1, !tbaa !76
  %166 = icmp eq i8 %165, 0
  br i1 %166, label %167, label %191

167:                                              ; preds = %161
  %168 = load i32, ptr %58, align 4, !tbaa !78
  %169 = icmp sgt i32 %168, 0
  br i1 %169, label %170, label %190

170:                                              ; preds = %167
  %171 = add nuw nsw i32 %168, 7
  %172 = lshr i32 %171, 3
  %173 = load ptr, ptr %57, align 8, !tbaa !80
  %174 = and i64 %163, 255
  %175 = call i32 @llvm.smax.i32(i32 %172, i32 1)
  br label %176

176:                                              ; preds = %170, %184
  %177 = phi ptr [ %173, %170 ], [ %188, %184 ]
  %178 = phi i32 [ 0, %170 ], [ %185, %184 ]
  %179 = getelementptr inbounds i8, ptr %177, i64 %140
  %180 = load i8, ptr %179, align 1, !tbaa !76
  %181 = getelementptr inbounds i8, ptr %177, i64 %174
  %182 = load i8, ptr %181, align 1, !tbaa !76
  %183 = icmp eq i8 %180, %182
  br i1 %183, label %184, label %191

184:                                              ; preds = %176
  %185 = add nuw nsw i32 %178, 1
  %186 = load i32, ptr %56, align 8, !tbaa !61
  %187 = sext i32 %186 to i64
  %188 = getelementptr inbounds i8, ptr %177, i64 %187
  %189 = icmp eq i32 %185, %175
  br i1 %189, label %190, label %176, !llvm.loop !85

190:                                              ; preds = %184, %167
  store i8 %159, ptr %164, align 1, !tbaa !76
  br label %191

191:                                              ; preds = %176, %190, %161
  %192 = icmp eq i64 %163, 127
  br i1 %192, label %193, label %161, !llvm.loop !86

193:                                              ; preds = %147, %191, %135, %156, %130
  %194 = add nsw i64 %131, 1
  %195 = icmp eq i64 %194, 128
  br i1 %195, label %196, label %130, !prof !87, !llvm.loop !88

196:                                              ; preds = %193, %123
  %197 = load i64, ptr %46, align 8, !tbaa !55
  %198 = getelementptr inbounds %struct.re_guts, ptr %27, i64 0, i32 7
  store i64 %197, ptr %198, align 8, !tbaa !89
  %199 = load ptr, ptr %45, align 8, !tbaa !54
  %200 = shl i64 %197, 3
  %201 = call ptr @realloc(ptr noundef %199, i64 noundef %200) #20
  %202 = getelementptr inbounds %struct.re_guts, ptr %27, i64 0, i32 1
  store ptr %201, ptr %202, align 8, !tbaa !90
  %203 = icmp eq ptr %201, null
  br i1 %203, label %204, label %210, !prof !43

204:                                              ; preds = %196
  %205 = load i32, ptr %53, align 8, !tbaa !59
  %206 = icmp eq i32 %205, 0
  br i1 %206, label %207, label %208

207:                                              ; preds = %204
  store i32 12, ptr %53, align 8, !tbaa !59
  br label %208

208:                                              ; preds = %207, %204
  store ptr @nuls, ptr %4, align 8, !tbaa !57
  store ptr @nuls, ptr %52, align 8, !tbaa !58
  %209 = load ptr, ptr %45, align 8, !tbaa !54
  store ptr %209, ptr %202, align 8, !tbaa !90
  br label %210

210:                                              ; preds = %196, %208
  %211 = load i32, ptr %53, align 8, !tbaa !59
  %212 = icmp eq i32 %211, 0
  br i1 %212, label %213, label %310, !prof !44

213:                                              ; preds = %210
  %214 = load ptr, ptr %202, align 8, !tbaa !90
  %215 = getelementptr inbounds i64, ptr %214, i64 1
  br label %216

216:                                              ; preds = %250, %213
  %217 = phi ptr [ %215, %213 ], [ %251, %250 ]
  %218 = phi ptr [ null, %213 ], [ %252, %250 ]
  %219 = phi ptr [ undef, %213 ], [ %253, %250 ]
  %220 = phi i64 [ 0, %213 ], [ %254, %250 ]
  %221 = getelementptr inbounds i64, ptr %217, i64 1
  %222 = load i64, ptr %217, align 8, !tbaa !73
  %223 = and i64 %222, 2080374784
  %224 = add nsw i64 %223, -134217728
  %225 = lshr exact i64 %224, 26
  switch i64 %225, label %242 [
    i64 0, label %227
    i64 7, label %250
    i64 11, label %250
    i64 12, label %250
    i64 9, label %226
    i64 13, label %226
  ], !prof !91

226:                                              ; preds = %216, %216
  br label %231

227:                                              ; preds = %216
  %228 = icmp eq i64 %220, 0
  %229 = select i1 %228, ptr %217, ptr %219, !prof !92
  %230 = add nsw i64 %220, 1
  br label %250

231:                                              ; preds = %226, %231
  %232 = phi ptr [ %235, %231 ], [ %217, %226 ]
  %233 = phi i64 [ %237, %231 ], [ %222, %226 ]
  %234 = and i64 %233, 67108863
  %235 = getelementptr inbounds i64, ptr %232, i64 %234
  %236 = load i64, ptr %235, align 8, !tbaa !73
  %237 = freeze i64 %236
  %238 = and i64 %237, 2080374784
  switch i64 %238, label %239 [
    i64 805306368, label %242
    i64 1207959552, label %242
    i64 1140850688, label %231
  ]

239:                                              ; preds = %231
  %240 = load i32, ptr %60, align 8, !tbaa !64
  %241 = or i32 %240, 4
  store i32 %241, ptr %60, align 8, !tbaa !64
  br label %286

242:                                              ; preds = %231, %231, %216
  %243 = phi ptr [ %221, %216 ], [ %235, %231 ], [ %235, %231 ]
  %244 = phi i64 [ %222, %216 ], [ %237, %231 ], [ %237, %231 ]
  %245 = load i32, ptr %64, align 8, !tbaa !68
  %246 = sext i32 %245 to i64
  %247 = icmp sgt i64 %220, %246
  br i1 %247, label %248, label %250, !prof !93

248:                                              ; preds = %242
  %249 = trunc i64 %220 to i32
  store i32 %249, ptr %64, align 8, !tbaa !68
  br label %250

250:                                              ; preds = %216, %216, %216, %248, %242, %227
  %251 = phi ptr [ %221, %227 ], [ %243, %248 ], [ %243, %242 ], [ %221, %216 ], [ %221, %216 ], [ %221, %216 ]
  %252 = phi ptr [ %218, %227 ], [ %219, %248 ], [ %218, %242 ], [ %218, %216 ], [ %218, %216 ], [ %218, %216 ]
  %253 = phi ptr [ %229, %227 ], [ %219, %248 ], [ %219, %242 ], [ %219, %216 ], [ %219, %216 ], [ %219, %216 ]
  %254 = phi i64 [ %230, %227 ], [ 0, %248 ], [ 0, %242 ], [ %220, %216 ], [ %220, %216 ], [ %220, %216 ]
  %255 = phi i64 [ %222, %227 ], [ %244, %248 ], [ %244, %242 ], [ %222, %216 ], [ %222, %216 ], [ %222, %216 ]
  %256 = and i64 %255, 2080374784
  %257 = icmp eq i64 %256, 67108864
  br i1 %257, label %258, label %216, !prof !94, !llvm.loop !95

258:                                              ; preds = %250
  %259 = load i32, ptr %64, align 8, !tbaa !68
  %260 = icmp eq i32 %259, 0
  br i1 %260, label %286, label %261, !prof !43

261:                                              ; preds = %258
  %262 = sext i32 %259 to i64
  %263 = add nsw i64 %262, 1
  %264 = call noalias ptr @malloc(i64 noundef %263) #19
  store ptr %264, ptr %63, align 8, !tbaa !67
  %265 = icmp eq ptr %264, null
  br i1 %265, label %268, label %266, !prof !43

266:                                              ; preds = %261
  %267 = icmp sgt i32 %259, 0
  br i1 %267, label %269, label %284, !prof !96

268:                                              ; preds = %261
  store i32 0, ptr %64, align 8, !tbaa !68
  br label %286

269:                                              ; preds = %266, %279
  %270 = phi i64 [ %282, %279 ], [ %262, %266 ]
  %271 = phi ptr [ %281, %279 ], [ %264, %266 ]
  %272 = phi ptr [ %275, %279 ], [ %252, %266 ]
  br label %273

273:                                              ; preds = %269, %273
  %274 = phi ptr [ %275, %273 ], [ %272, %269 ]
  %275 = getelementptr inbounds i64, ptr %274, i64 1
  %276 = load i64, ptr %274, align 8, !tbaa !73
  %277 = and i64 %276, 2080374784
  %278 = icmp eq i64 %277, 134217728
  br i1 %278, label %279, label %273, !prof !97, !llvm.loop !98

279:                                              ; preds = %273
  %280 = trunc i64 %276 to i8
  %281 = getelementptr inbounds i8, ptr %271, i64 1
  store i8 %280, ptr %271, align 1, !tbaa !76
  %282 = add nsw i64 %270, -1
  %283 = icmp sgt i64 %270, 1
  br i1 %283, label %269, label %284, !prof !99, !llvm.loop !100

284:                                              ; preds = %279, %266
  %285 = phi ptr [ %264, %266 ], [ %281, %279 ]
  store i8 0, ptr %285, align 1, !tbaa !76
  br label %286

286:                                              ; preds = %239, %258, %268, %284
  br i1 %212, label %287, label %310, !prof !44

287:                                              ; preds = %286
  %288 = load ptr, ptr %202, align 8, !tbaa !90
  br label %289

289:                                              ; preds = %301, %287
  %290 = phi ptr [ %288, %287 ], [ %293, %301 ]
  %291 = phi i64 [ 0, %287 ], [ %302, %301 ]
  %292 = phi i64 [ 0, %287 ], [ %303, %301 ]
  %293 = getelementptr inbounds i64, ptr %290, i64 1
  %294 = load i64, ptr %293, align 8, !tbaa !73
  %295 = and i64 %294, 2080374784
  switch i64 %295, label %301 [
    i64 603979776, label %296
    i64 671088640, label %298
  ], !prof !101

296:                                              ; preds = %289
  %297 = add nsw i64 %291, 1
  br label %301

298:                                              ; preds = %289
  %299 = call i64 @llvm.smax.i64(i64 %291, i64 %292)
  %300 = add nsw i64 %291, -1
  br label %301

301:                                              ; preds = %289, %298, %296
  %302 = phi i64 [ %300, %298 ], [ %297, %296 ], [ %291, %289 ]
  %303 = phi i64 [ %299, %298 ], [ %292, %296 ], [ %292, %289 ]
  %304 = icmp eq i64 %295, 67108864
  br i1 %304, label %305, label %289, !prof !94, !llvm.loop !102

305:                                              ; preds = %301
  %306 = icmp eq i64 %302, 0
  br i1 %306, label %310, label %307, !prof !44

307:                                              ; preds = %305
  %308 = load i32, ptr %60, align 8, !tbaa !64
  %309 = or i32 %308, 4
  store i32 %309, ptr %60, align 8, !tbaa !64
  br label %310

310:                                              ; preds = %210, %286, %305, %307
  %311 = phi i64 [ 0, %286 ], [ %303, %307 ], [ %303, %305 ], [ 0, %210 ]
  %312 = getelementptr inbounds %struct.re_guts, ptr %27, i64 0, i32 19
  store i64 %311, ptr %312, align 8, !tbaa !103
  store i32 53829, ptr %27, align 8, !tbaa !104
  %313 = load i64, ptr %65, align 8, !tbaa !69
  %314 = getelementptr inbounds %struct.regex_t, ptr %0, i64 0, i32 1
  store i64 %313, ptr %314, align 8, !tbaa !105
  %315 = getelementptr inbounds %struct.regex_t, ptr %0, i64 0, i32 3
  store ptr %27, ptr %315, align 8, !tbaa !106
  store i32 62053, ptr %0, align 8, !tbaa !107
  %316 = load i32, ptr %60, align 8, !tbaa !64
  %317 = and i32 %316, 4
  %318 = icmp eq i32 %317, 0
  br i1 %318, label %322, label %319, !prof !44

319:                                              ; preds = %310
  br i1 %212, label %320, label %321

320:                                              ; preds = %319
  store i32 15, ptr %53, align 8, !tbaa !59
  br label %321

321:                                              ; preds = %319, %320
  store ptr @nuls, ptr %4, align 8, !tbaa !57
  store ptr @nuls, ptr %52, align 8, !tbaa !58
  br label %322

322:                                              ; preds = %321, %310
  %323 = load i32, ptr %53, align 8, !tbaa !59
  %324 = icmp eq i32 %323, 0
  br i1 %324, label %326, label %325, !prof !44

325:                                              ; preds = %322
  call void @regfree(ptr noundef nonnull %0) #17
  br label %326

326:                                              ; preds = %325, %322
  %327 = load i32, ptr %53, align 8, !tbaa !59
  br label %328

328:                                              ; preds = %25, %15, %3, %39, %326, %48
  %329 = phi i32 [ 12, %48 ], [ %327, %326 ], [ 16, %39 ], [ 16, %3 ], [ 16, %15 ], [ 12, %25 ]
  call void @llvm.lifetime.end.p0(i64 224, ptr nonnull %4) #17
  ret i32 %329
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr nocapture noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #5

; Function Attrs: cold mustprogress nounwind willreturn uwtable
define internal fastcc void @doemit(ptr nocapture noundef %0, i64 noundef %1, i64 noundef %2) unnamed_addr #6 !prof !108 !PGOFuncName !109 {
  %4 = getelementptr inbounds %struct.parse, ptr %0, i64 0, i32 2
  %5 = load i32, ptr %4, align 8, !tbaa !59
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %24, !prof !110

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.parse, ptr %0, i64 0, i32 5
  %9 = load i64, ptr %8, align 8, !tbaa !55
  %10 = getelementptr inbounds %struct.parse, ptr %0, i64 0, i32 4
  %11 = load i64, ptr %10, align 8, !tbaa !52
  %12 = icmp slt i64 %9, %11
  br i1 %12, label %17, label %13, !prof !110

13:                                               ; preds = %7
  %14 = add nsw i64 %11, 1
  %15 = sdiv i64 %14, 2
  %16 = mul nsw i64 %15, 3
  tail call fastcc void @enlarge(ptr noundef %0, i64 noundef %16)
  br label %17

17:                                               ; preds = %13, %7
  %18 = or i64 %2, %1
  %19 = getelementptr inbounds %struct.parse, ptr %0, i64 0, i32 3
  %20 = load ptr, ptr %19, align 8, !tbaa !54
  %21 = load i64, ptr %8, align 8, !tbaa !55
  %22 = add nsw i64 %21, 1
  store i64 %22, ptr %8, align 8, !tbaa !55
  %23 = getelementptr inbounds i64, ptr %20, i64 %21
  store i64 %18, ptr %23, align 8, !tbaa !73
  br label %24

24:                                               ; preds = %3, %17
  ret void
}

; Function Attrs: cold nounwind uwtable
define internal fastcc void @p_ere(ptr noundef %0, i32 noundef %1) unnamed_addr #0 !prof !111 {
  %3 = alloca [4 x i8], align 1
  %4 = getelementptr inbounds %struct.parse, ptr %0, i64 0, i32 5
  %5 = getelementptr inbounds %struct.parse, ptr %0, i64 0, i32 1
  %6 = getelementptr inbounds %struct.parse, ptr %0, i64 0, i32 7
  %7 = getelementptr inbounds %struct.parse, ptr %0, i64 0, i32 2
  %8 = getelementptr inbounds %struct.parse, ptr %0, i64 0, i32 2
  %9 = getelementptr inbounds %struct.parse, ptr %0, i64 0, i32 2
  %10 = getelementptr inbounds %struct.parse, ptr %0, i64 0, i32 2
  %11 = getelementptr inbounds %struct.parse, ptr %0, i64 0, i32 7
  %12 = getelementptr inbounds %struct.parse, ptr %0, i64 0, i32 2
  %13 = getelementptr inbounds %struct.parse, ptr %0, i64 0, i32 7
  %14 = getelementptr inbounds %struct.parse, ptr %0, i64 0, i32 2
  %15 = getelementptr inbounds %struct.parse, ptr %0, i64 0, i32 2
  %16 = getelementptr inbounds %struct.parse, ptr %0, i64 0, i32 2
  %17 = getelementptr inbounds %struct.parse, ptr %0, i64 0, i32 2
  %18 = getelementptr inbounds %struct.parse, ptr %0, i64 0, i32 2
  br label %19

19:                                               ; preds = %441, %2
  %20 = phi i64 [ undef, %2 ], [ %440, %441 ]
  %21 = phi i64 [ undef, %2 ], [ %428, %441 ]
  %22 = phi i1 [ false, %2 ], [ true, %441 ]
  %23 = load i64, ptr %4, align 8, !tbaa !55
  %24 = load ptr, ptr %0, align 8, !tbaa !57
  %25 = load ptr, ptr %5, align 8, !tbaa !58
  %26 = icmp ult ptr %24, %25
  br i1 %26, label %27, label %402

27:                                               ; preds = %19, %398
  %28 = phi ptr [ %400, %398 ], [ %25, %19 ]
  %29 = phi ptr [ %399, %398 ], [ %24, %19 ]
  %30 = load i8, ptr %29, align 1, !tbaa !76
  %31 = icmp eq i8 %30, 124
  %32 = sext i8 %30 to i32
  %33 = icmp eq i32 %32, %1
  %34 = or i1 %31, %33
  br i1 %34, label %402, label %35

35:                                               ; preds = %27
  %36 = getelementptr inbounds i8, ptr %29, i64 1
  store ptr %36, ptr %0, align 8, !tbaa !57
  %37 = load i8, ptr %29, align 1, !tbaa !76
  %38 = load i64, ptr %4, align 8, !tbaa !55
  %39 = sext i8 %37 to i32
  switch i8 %37, label %206 [
    i8 40, label %40
    i8 41, label %83
    i8 94, label %88
    i8 36, label %113
    i8 124, label %138
    i8 42, label %143
    i8 43, label %143
    i8 63, label %143
    i8 46, label %148
    i8 91, label %175
    i8 92, label %176
    i8 123, label %189
  ]

40:                                               ; preds = %35
  %41 = icmp ult ptr %36, %28
  br i1 %41, label %48, label %42

42:                                               ; preds = %40
  %43 = getelementptr inbounds %struct.parse, ptr %0, i64 0, i32 2
  %44 = load i32, ptr %43, align 8, !tbaa !59
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %46, label %47

46:                                               ; preds = %42
  store i32 8, ptr %43, align 8, !tbaa !59
  br label %47

47:                                               ; preds = %42, %46
  store ptr @nuls, ptr %0, align 8, !tbaa !57
  store ptr @nuls, ptr %5, align 8, !tbaa !58
  br label %48

48:                                               ; preds = %47, %40
  %49 = getelementptr inbounds %struct.parse, ptr %0, i64 0, i32 7
  %50 = load ptr, ptr %49, align 8, !tbaa !56
  %51 = getelementptr inbounds %struct.re_guts, ptr %50, i64 0, i32 17
  %52 = load i64, ptr %51, align 8, !tbaa !69
  %53 = add i64 %52, 1
  store i64 %53, ptr %51, align 8, !tbaa !69
  %54 = icmp slt i64 %53, 10
  br i1 %54, label %55, label %57

55:                                               ; preds = %48
  %56 = getelementptr inbounds %struct.parse, ptr %0, i64 0, i32 8, i64 %53
  store i64 %38, ptr %56, align 8, !tbaa !73
  br label %57

57:                                               ; preds = %55, %48
  call fastcc void @doemit(ptr noundef nonnull %0, i64 noundef 872415232, i64 noundef %53)
  %58 = load ptr, ptr %0, align 8, !tbaa !57
  %59 = load ptr, ptr %5, align 8, !tbaa !58
  %60 = icmp ult ptr %58, %59
  br i1 %60, label %61, label %64

61:                                               ; preds = %57
  %62 = load i8, ptr %58, align 1, !tbaa !76
  %63 = icmp eq i8 %62, 41
  br i1 %63, label %65, label %64

64:                                               ; preds = %61, %57
  call fastcc void @p_ere(ptr noundef nonnull %0, i32 noundef 41)
  br label %65

65:                                               ; preds = %64, %61
  br i1 %54, label %66, label %69

66:                                               ; preds = %65
  %67 = load i64, ptr %4, align 8, !tbaa !55
  %68 = getelementptr inbounds %struct.parse, ptr %0, i64 0, i32 9, i64 %53
  store i64 %67, ptr %68, align 8, !tbaa !73
  br label %69

69:                                               ; preds = %66, %65
  call fastcc void @doemit(ptr noundef nonnull %0, i64 noundef 939524096, i64 noundef %53)
  %70 = load ptr, ptr %0, align 8, !tbaa !57
  %71 = load ptr, ptr %5, align 8, !tbaa !58
  %72 = icmp ult ptr %70, %71
  br i1 %72, label %73, label %77

73:                                               ; preds = %69
  %74 = getelementptr inbounds i8, ptr %70, i64 1
  store ptr %74, ptr %0, align 8, !tbaa !57
  %75 = load i8, ptr %70, align 1, !tbaa !76
  %76 = icmp eq i8 %75, 41
  br i1 %76, label %207, label %77

77:                                               ; preds = %73, %69
  %78 = getelementptr inbounds %struct.parse, ptr %0, i64 0, i32 2
  %79 = load i32, ptr %78, align 8, !tbaa !59
  %80 = icmp eq i32 %79, 0
  br i1 %80, label %81, label %82

81:                                               ; preds = %77
  store i32 8, ptr %78, align 8, !tbaa !59
  br label %82

82:                                               ; preds = %77, %81
  store ptr @nuls, ptr %0, align 8, !tbaa !57
  store ptr @nuls, ptr %5, align 8, !tbaa !58
  br label %207

83:                                               ; preds = %35
  %84 = load i32, ptr %14, align 8, !tbaa !59
  %85 = icmp eq i32 %84, 0
  br i1 %85, label %86, label %87

86:                                               ; preds = %83
  store i32 8, ptr %14, align 8, !tbaa !59
  br label %87

87:                                               ; preds = %83, %86
  store ptr @nuls, ptr %0, align 8, !tbaa !57
  store ptr @nuls, ptr %5, align 8, !tbaa !58
  br label %207

88:                                               ; preds = %35
  %89 = load i32, ptr %12, align 8, !tbaa !59
  %90 = icmp eq i32 %89, 0
  br i1 %90, label %91, label %105

91:                                               ; preds = %88
  %92 = getelementptr inbounds %struct.parse, ptr %0, i64 0, i32 4
  %93 = load i64, ptr %92, align 8, !tbaa !52
  %94 = icmp slt i64 %38, %93
  br i1 %94, label %99, label %95

95:                                               ; preds = %91
  %96 = add nsw i64 %93, 1
  %97 = sdiv i64 %96, 2
  %98 = mul nsw i64 %97, 3
  call fastcc void @enlarge(ptr noundef nonnull %0, i64 noundef %98)
  br label %99

99:                                               ; preds = %95, %91
  %100 = getelementptr inbounds %struct.parse, ptr %0, i64 0, i32 3
  %101 = load ptr, ptr %100, align 8, !tbaa !54
  %102 = load i64, ptr %4, align 8, !tbaa !55
  %103 = add nsw i64 %102, 1
  store i64 %103, ptr %4, align 8, !tbaa !55
  %104 = getelementptr inbounds i64, ptr %101, i64 %102
  store i64 201326592, ptr %104, align 8, !tbaa !73
  br label %105

105:                                              ; preds = %88, %99
  %106 = load ptr, ptr %13, align 8, !tbaa !56
  %107 = getelementptr inbounds %struct.re_guts, ptr %106, i64 0, i32 10
  %108 = load i32, ptr %107, align 8, !tbaa !64
  %109 = or i32 %108, 1
  store i32 %109, ptr %107, align 8, !tbaa !64
  %110 = getelementptr inbounds %struct.re_guts, ptr %106, i64 0, i32 11
  %111 = load i32, ptr %110, align 4, !tbaa !65
  %112 = add nsw i32 %111, 1
  store i32 %112, ptr %110, align 4, !tbaa !65
  br label %207

113:                                              ; preds = %35
  %114 = load i32, ptr %10, align 8, !tbaa !59
  %115 = icmp eq i32 %114, 0
  br i1 %115, label %116, label %130

116:                                              ; preds = %113
  %117 = getelementptr inbounds %struct.parse, ptr %0, i64 0, i32 4
  %118 = load i64, ptr %117, align 8, !tbaa !52
  %119 = icmp slt i64 %38, %118
  br i1 %119, label %124, label %120

120:                                              ; preds = %116
  %121 = add nsw i64 %118, 1
  %122 = sdiv i64 %121, 2
  %123 = mul nsw i64 %122, 3
  call fastcc void @enlarge(ptr noundef nonnull %0, i64 noundef %123)
  br label %124

124:                                              ; preds = %120, %116
  %125 = getelementptr inbounds %struct.parse, ptr %0, i64 0, i32 3
  %126 = load ptr, ptr %125, align 8, !tbaa !54
  %127 = load i64, ptr %4, align 8, !tbaa !55
  %128 = add nsw i64 %127, 1
  store i64 %128, ptr %4, align 8, !tbaa !55
  %129 = getelementptr inbounds i64, ptr %126, i64 %127
  store i64 268435456, ptr %129, align 8, !tbaa !73
  br label %130

130:                                              ; preds = %113, %124
  %131 = load ptr, ptr %11, align 8, !tbaa !56
  %132 = getelementptr inbounds %struct.re_guts, ptr %131, i64 0, i32 10
  %133 = load i32, ptr %132, align 8, !tbaa !64
  %134 = or i32 %133, 2
  store i32 %134, ptr %132, align 8, !tbaa !64
  %135 = getelementptr inbounds %struct.re_guts, ptr %131, i64 0, i32 12
  %136 = load i32, ptr %135, align 8, !tbaa !66
  %137 = add nsw i32 %136, 1
  store i32 %137, ptr %135, align 8, !tbaa !66
  br label %207

138:                                              ; preds = %35
  %139 = load i32, ptr %9, align 8, !tbaa !59
  %140 = icmp eq i32 %139, 0
  br i1 %140, label %141, label %142

141:                                              ; preds = %138
  store i32 14, ptr %9, align 8, !tbaa !59
  br label %142

142:                                              ; preds = %138, %141
  store ptr @nuls, ptr %0, align 8, !tbaa !57
  store ptr @nuls, ptr %5, align 8, !tbaa !58
  br label %207

143:                                              ; preds = %35, %35, %35
  %144 = load i32, ptr %8, align 8, !tbaa !59
  %145 = icmp eq i32 %144, 0
  br i1 %145, label %146, label %147

146:                                              ; preds = %143
  store i32 13, ptr %8, align 8, !tbaa !59
  br label %147

147:                                              ; preds = %143, %146
  store ptr @nuls, ptr %0, align 8, !tbaa !57
  store ptr @nuls, ptr %5, align 8, !tbaa !58
  br label %207

148:                                              ; preds = %35
  %149 = load ptr, ptr %6, align 8, !tbaa !56
  %150 = getelementptr inbounds %struct.re_guts, ptr %149, i64 0, i32 6
  %151 = load i32, ptr %150, align 8, !tbaa !63
  %152 = and i32 %151, 8
  %153 = icmp eq i32 %152, 0
  br i1 %153, label %158, label %154

154:                                              ; preds = %148
  %155 = getelementptr inbounds i8, ptr %3, i64 3
  %156 = getelementptr inbounds [4 x i8], ptr %3, i64 0, i64 1
  %157 = getelementptr inbounds [4 x i8], ptr %3, i64 0, i64 2
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #17
  store ptr %3, ptr %0, align 8, !tbaa !57
  store ptr %155, ptr %5, align 8, !tbaa !58
  store i8 94, ptr %3, align 1, !tbaa !76
  store i8 10, ptr %156, align 1, !tbaa !76
  store i8 93, ptr %157, align 1, !tbaa !76
  store i8 0, ptr %155, align 1, !tbaa !76
  call fastcc void @p_bracket(ptr noundef nonnull %0)
  store ptr %36, ptr %0, align 8, !tbaa !57
  store ptr %28, ptr %5, align 8, !tbaa !58
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #17
  br label %207

158:                                              ; preds = %148
  %159 = load i32, ptr %7, align 8, !tbaa !59
  %160 = icmp eq i32 %159, 0
  br i1 %160, label %161, label %207

161:                                              ; preds = %158
  %162 = getelementptr inbounds %struct.parse, ptr %0, i64 0, i32 4
  %163 = load i64, ptr %162, align 8, !tbaa !52
  %164 = icmp slt i64 %38, %163
  br i1 %164, label %169, label %165

165:                                              ; preds = %161
  %166 = add nsw i64 %163, 1
  %167 = sdiv i64 %166, 2
  %168 = mul nsw i64 %167, 3
  call fastcc void @enlarge(ptr noundef nonnull %0, i64 noundef %168)
  br label %169

169:                                              ; preds = %165, %161
  %170 = getelementptr inbounds %struct.parse, ptr %0, i64 0, i32 3
  %171 = load ptr, ptr %170, align 8, !tbaa !54
  %172 = load i64, ptr %4, align 8, !tbaa !55
  %173 = add nsw i64 %172, 1
  store i64 %173, ptr %4, align 8, !tbaa !55
  %174 = getelementptr inbounds i64, ptr %171, i64 %172
  store i64 335544320, ptr %174, align 8, !tbaa !73
  br label %207

175:                                              ; preds = %35
  call fastcc void @p_bracket(ptr noundef nonnull %0)
  br label %207

176:                                              ; preds = %35
  %177 = icmp ult ptr %36, %28
  br i1 %177, label %184, label %178

178:                                              ; preds = %176
  %179 = getelementptr inbounds %struct.parse, ptr %0, i64 0, i32 2
  %180 = load i32, ptr %179, align 8, !tbaa !59
  %181 = icmp eq i32 %180, 0
  br i1 %181, label %182, label %183

182:                                              ; preds = %178
  store i32 5, ptr %179, align 8, !tbaa !59
  br label %183

183:                                              ; preds = %178, %182
  store ptr @nuls, ptr %0, align 8, !tbaa !57
  store ptr @nuls, ptr %5, align 8, !tbaa !58
  br label %184

184:                                              ; preds = %183, %176
  %185 = load ptr, ptr %0, align 8, !tbaa !57
  %186 = getelementptr inbounds i8, ptr %185, i64 1
  store ptr %186, ptr %0, align 8, !tbaa !57
  %187 = load i8, ptr %185, align 1, !tbaa !76
  %188 = sext i8 %187 to i32
  call fastcc void @ordinary(ptr noundef nonnull %0, i32 noundef %188)
  br label %207

189:                                              ; preds = %35
  %190 = icmp ult ptr %36, %28
  br i1 %190, label %191, label %206

191:                                              ; preds = %189
  %192 = tail call ptr @__ctype_b_loc() #21
  %193 = load ptr, ptr %192, align 8, !tbaa !112
  %194 = load i8, ptr %36, align 1, !tbaa !76
  %195 = sext i8 %194 to i64
  %196 = getelementptr inbounds i16, ptr %193, i64 %195
  %197 = load i16, ptr %196, align 2, !tbaa !113
  %198 = and i16 %197, 2048
  %199 = icmp eq i16 %198, 0
  br i1 %199, label %206, label %200

200:                                              ; preds = %191
  %201 = getelementptr inbounds %struct.parse, ptr %0, i64 0, i32 2
  %202 = load i32, ptr %201, align 8, !tbaa !59
  %203 = icmp eq i32 %202, 0
  br i1 %203, label %204, label %205

204:                                              ; preds = %200
  store i32 13, ptr %201, align 8, !tbaa !59
  br label %205

205:                                              ; preds = %200, %204
  store ptr @nuls, ptr %0, align 8, !tbaa !57
  store ptr @nuls, ptr %5, align 8, !tbaa !58
  br label %206

206:                                              ; preds = %205, %191, %189, %35
  call fastcc void @ordinary(ptr noundef nonnull %0, i32 noundef %39)
  br label %207

207:                                              ; preds = %169, %158, %206, %184, %175, %154, %147, %142, %130, %105, %87, %82, %73
  %208 = phi i1 [ true, %206 ], [ true, %184 ], [ true, %175 ], [ true, %154 ], [ true, %147 ], [ true, %142 ], [ true, %130 ], [ false, %105 ], [ true, %87 ], [ true, %82 ], [ true, %73 ], [ true, %158 ], [ true, %169 ]
  %209 = load ptr, ptr %0, align 8, !tbaa !57
  %210 = load ptr, ptr %5, align 8, !tbaa !58
  %211 = icmp ult ptr %209, %210
  br i1 %211, label %212, label %398

212:                                              ; preds = %207
  %213 = load i8, ptr %209, align 1, !tbaa !76
  switch i8 %213, label %398 [
    i8 63, label %226
    i8 43, label %226
    i8 42, label %226
    i8 123, label %214
  ]

214:                                              ; preds = %212
  %215 = getelementptr inbounds i8, ptr %209, i64 1
  %216 = icmp ult ptr %215, %210
  br i1 %216, label %217, label %398

217:                                              ; preds = %214
  %218 = tail call ptr @__ctype_b_loc() #21
  %219 = load ptr, ptr %218, align 8, !tbaa !112
  %220 = load i8, ptr %215, align 1, !tbaa !76
  %221 = sext i8 %220 to i64
  %222 = getelementptr inbounds i16, ptr %219, i64 %221
  %223 = load i16, ptr %222, align 2, !tbaa !113
  %224 = and i16 %223, 2048
  %225 = icmp eq i16 %224, 0
  br i1 %225, label %398, label %226

226:                                              ; preds = %217, %212, %212, %212
  %227 = getelementptr inbounds i8, ptr %209, i64 1
  store ptr %227, ptr %0, align 8, !tbaa !57
  br i1 %208, label %233, label %228

228:                                              ; preds = %226
  %229 = load i32, ptr %15, align 8, !tbaa !59
  %230 = icmp eq i32 %229, 0
  br i1 %230, label %231, label %232

231:                                              ; preds = %228
  store i32 13, ptr %15, align 8, !tbaa !59
  br label %232

232:                                              ; preds = %228, %231
  store ptr @nuls, ptr %0, align 8, !tbaa !57
  store ptr @nuls, ptr %5, align 8, !tbaa !58
  br label %233

233:                                              ; preds = %232, %226
  switch i8 %213, label %375 [
    i8 42, label %234
    i8 43, label %245
    i8 63, label %251
    i8 123, label %309
  ]

234:                                              ; preds = %233
  %235 = load i64, ptr %4, align 8, !tbaa !55
  %236 = sub i64 %235, %38
  %237 = add i64 %236, 1
  call fastcc void @doinsert(ptr noundef nonnull %0, i64 noundef 603979776, i64 noundef %237, i64 noundef %38)
  %238 = load i64, ptr %4, align 8, !tbaa !55
  %239 = sub nsw i64 %238, %38
  call fastcc void @doemit(ptr noundef nonnull %0, i64 noundef 671088640, i64 noundef %239)
  %240 = load i64, ptr %4, align 8, !tbaa !55
  %241 = sub i64 %240, %38
  %242 = add i64 %241, 1
  call fastcc void @doinsert(ptr noundef nonnull %0, i64 noundef 738197504, i64 noundef %242, i64 noundef %38)
  %243 = load i64, ptr %4, align 8, !tbaa !55
  %244 = sub nsw i64 %243, %38
  call fastcc void @doemit(ptr noundef nonnull %0, i64 noundef 805306368, i64 noundef %244)
  br label %375

245:                                              ; preds = %233
  %246 = load i64, ptr %4, align 8, !tbaa !55
  %247 = sub i64 %246, %38
  %248 = add i64 %247, 1
  call fastcc void @doinsert(ptr noundef nonnull %0, i64 noundef 603979776, i64 noundef %248, i64 noundef %38)
  %249 = load i64, ptr %4, align 8, !tbaa !55
  %250 = sub nsw i64 %249, %38
  call fastcc void @doemit(ptr noundef nonnull %0, i64 noundef 671088640, i64 noundef %250)
  br label %375

251:                                              ; preds = %233
  %252 = getelementptr inbounds %struct.parse, ptr %0, i64 0, i32 2
  %253 = load i64, ptr %4, align 8, !tbaa !55
  %254 = sub i64 %253, %38
  %255 = add i64 %254, 1
  call fastcc void @doinsert(ptr noundef nonnull %0, i64 noundef 1006632960, i64 noundef %255, i64 noundef %38)
  %256 = load i64, ptr %4, align 8, !tbaa !55
  %257 = sub nsw i64 %256, %38
  call fastcc void @doemit(ptr noundef nonnull %0, i64 noundef 1073741824, i64 noundef %257)
  %258 = load i32, ptr %252, align 8, !tbaa !59
  %259 = icmp eq i32 %258, 0
  br i1 %259, label %260, label %283

260:                                              ; preds = %251
  %261 = getelementptr inbounds %struct.parse, ptr %0, i64 0, i32 3
  %262 = getelementptr inbounds %struct.parse, ptr %0, i64 0, i32 4
  %263 = load i64, ptr %4, align 8, !tbaa !55
  %264 = sub nsw i64 %263, %38
  %265 = load ptr, ptr %261, align 8, !tbaa !54
  %266 = getelementptr inbounds i64, ptr %265, i64 %38
  %267 = load i64, ptr %266, align 8, !tbaa !73
  %268 = and i64 %267, 2080374784
  %269 = or i64 %268, %264
  store i64 %269, ptr %266, align 8, !tbaa !73
  %270 = load i64, ptr %4, align 8, !tbaa !55
  %271 = load i64, ptr %262, align 8, !tbaa !52
  %272 = icmp slt i64 %270, %271
  br i1 %272, label %277, label %273

273:                                              ; preds = %260
  %274 = add nsw i64 %271, 1
  %275 = sdiv i64 %274, 2
  %276 = mul nsw i64 %275, 3
  call fastcc void @enlarge(ptr noundef nonnull %0, i64 noundef %276)
  br label %277

277:                                              ; preds = %273, %260
  %278 = getelementptr inbounds %struct.parse, ptr %0, i64 0, i32 3
  %279 = load ptr, ptr %278, align 8, !tbaa !54
  %280 = load i64, ptr %4, align 8, !tbaa !55
  %281 = add nsw i64 %280, 1
  store i64 %281, ptr %4, align 8, !tbaa !55
  %282 = getelementptr inbounds i64, ptr %279, i64 %280
  store i64 1140850688, ptr %282, align 8, !tbaa !73
  br label %283

283:                                              ; preds = %251, %277
  %284 = load i32, ptr %252, align 8, !tbaa !59
  %285 = icmp eq i32 %284, 0
  br i1 %285, label %286, label %375

286:                                              ; preds = %283
  %287 = getelementptr inbounds %struct.parse, ptr %0, i64 0, i32 3
  %288 = getelementptr inbounds %struct.parse, ptr %0, i64 0, i32 4
  %289 = load i64, ptr %4, align 8, !tbaa !55
  %290 = load ptr, ptr %287, align 8, !tbaa !54
  %291 = getelementptr i64, ptr %290, i64 %289
  %292 = getelementptr i64, ptr %291, i64 -1
  %293 = load i64, ptr %292, align 8, !tbaa !73
  %294 = and i64 %293, 2080374784
  %295 = or disjoint i64 %294, 1
  store i64 %295, ptr %292, align 8, !tbaa !73
  %296 = load i64, ptr %4, align 8, !tbaa !55
  %297 = load i64, ptr %288, align 8, !tbaa !52
  %298 = icmp slt i64 %296, %297
  br i1 %298, label %303, label %299

299:                                              ; preds = %286
  %300 = add nsw i64 %297, 1
  %301 = sdiv i64 %300, 2
  %302 = mul nsw i64 %301, 3
  call fastcc void @enlarge(ptr noundef nonnull %0, i64 noundef %302)
  br label %303

303:                                              ; preds = %299, %286
  %304 = getelementptr inbounds %struct.parse, ptr %0, i64 0, i32 3
  %305 = load ptr, ptr %304, align 8, !tbaa !54
  %306 = load i64, ptr %4, align 8, !tbaa !55
  %307 = add nsw i64 %306, 1
  store i64 %307, ptr %4, align 8, !tbaa !55
  %308 = getelementptr inbounds i64, ptr %305, i64 %306
  store i64 1207959554, ptr %308, align 8, !tbaa !73
  br label %375

309:                                              ; preds = %233
  %310 = call fastcc i32 @p_count(ptr noundef nonnull %0)
  %311 = load ptr, ptr %0, align 8, !tbaa !57
  %312 = load ptr, ptr %5, align 8, !tbaa !58
  %313 = icmp ult ptr %311, %312
  br i1 %313, label %314, label %336

314:                                              ; preds = %309
  %315 = load i8, ptr %311, align 1, !tbaa !76
  %316 = icmp eq i8 %315, 44
  br i1 %316, label %317, label %336

317:                                              ; preds = %314
  %318 = getelementptr inbounds i8, ptr %311, i64 1
  store ptr %318, ptr %0, align 8, !tbaa !57
  %319 = tail call ptr @__ctype_b_loc() #21
  %320 = load ptr, ptr %319, align 8, !tbaa !112
  %321 = load i8, ptr %318, align 1, !tbaa !76
  %322 = sext i8 %321 to i64
  %323 = getelementptr inbounds i16, ptr %320, i64 %322
  %324 = load i16, ptr %323, align 2, !tbaa !113
  %325 = and i16 %324, 2048
  %326 = icmp eq i16 %325, 0
  br i1 %326, label %336, label %327

327:                                              ; preds = %317
  %328 = call fastcc i32 @p_count(ptr noundef nonnull %0)
  %329 = icmp sgt i32 %310, %328
  br i1 %329, label %330, label %336

330:                                              ; preds = %327
  %331 = getelementptr inbounds %struct.parse, ptr %0, i64 0, i32 2
  %332 = load i32, ptr %331, align 8, !tbaa !59
  %333 = icmp eq i32 %332, 0
  br i1 %333, label %334, label %335

334:                                              ; preds = %330
  store i32 10, ptr %331, align 8, !tbaa !59
  br label %335

335:                                              ; preds = %330, %334
  store ptr @nuls, ptr %0, align 8, !tbaa !57
  store ptr @nuls, ptr %5, align 8, !tbaa !58
  br label %336

336:                                              ; preds = %335, %327, %317, %314, %309
  %337 = phi i32 [ %328, %335 ], [ %328, %327 ], [ 256, %317 ], [ %310, %309 ], [ %310, %314 ]
  call fastcc void @repeat(ptr noundef nonnull %0, i64 noundef %38, i32 noundef %310, i32 noundef %337)
  %338 = load ptr, ptr %0, align 8, !tbaa !57
  %339 = load ptr, ptr %5, align 8, !tbaa !58
  %340 = icmp ult ptr %338, %339
  br i1 %340, label %341, label %346

341:                                              ; preds = %336
  %342 = load i8, ptr %338, align 1, !tbaa !76
  %343 = icmp eq i8 %342, 125
  br i1 %343, label %344, label %346

344:                                              ; preds = %341
  %345 = getelementptr inbounds i8, ptr %338, i64 1
  store ptr %345, ptr %0, align 8, !tbaa !57
  br label %375

346:                                              ; preds = %341, %336
  %347 = getelementptr inbounds %struct.parse, ptr %0, i64 0, i32 2
  %348 = load ptr, ptr %0, align 8, !tbaa !57
  %349 = icmp ult ptr %348, %339
  br i1 %349, label %350, label %364

350:                                              ; preds = %346
  %351 = load i8, ptr %348, align 1, !tbaa !76
  %352 = icmp eq i8 %351, 125
  br i1 %352, label %362, label %356

353:                                              ; preds = %356
  %354 = load i8, ptr %358, align 1, !tbaa !76
  %355 = icmp eq i8 %354, 125
  br i1 %355, label %360, label %356, !llvm.loop !115

356:                                              ; preds = %350, %353
  %357 = phi ptr [ %358, %353 ], [ %348, %350 ]
  %358 = getelementptr inbounds i8, ptr %357, i64 1
  store ptr %358, ptr %0, align 8, !tbaa !57
  %359 = icmp eq ptr %358, %339
  br i1 %359, label %364, label %353, !llvm.loop !115

360:                                              ; preds = %353
  %361 = icmp ult ptr %358, %339
  br label %362

362:                                              ; preds = %360, %350
  %363 = phi i1 [ %361, %360 ], [ %349, %350 ]
  br i1 %363, label %370, label %364

364:                                              ; preds = %356, %346, %362
  %365 = getelementptr inbounds %struct.parse, ptr %0, i64 0, i32 2
  %366 = load i32, ptr %365, align 8, !tbaa !59
  %367 = icmp eq i32 %366, 0
  br i1 %367, label %368, label %369

368:                                              ; preds = %364
  store i32 9, ptr %365, align 8, !tbaa !59
  br label %369

369:                                              ; preds = %364, %368
  store ptr @nuls, ptr %0, align 8, !tbaa !57
  store ptr @nuls, ptr %5, align 8, !tbaa !58
  br label %370

370:                                              ; preds = %369, %362
  %371 = load i32, ptr %347, align 8, !tbaa !59
  %372 = icmp eq i32 %371, 0
  br i1 %372, label %373, label %374

373:                                              ; preds = %370
  store i32 10, ptr %347, align 8, !tbaa !59
  br label %374

374:                                              ; preds = %370, %373
  store ptr @nuls, ptr %0, align 8, !tbaa !57
  store ptr @nuls, ptr %5, align 8, !tbaa !58
  br label %375

375:                                              ; preds = %283, %233, %303, %374, %344, %245, %234
  %376 = load ptr, ptr %0, align 8, !tbaa !57
  %377 = load ptr, ptr %5, align 8, !tbaa !58
  %378 = icmp ult ptr %376, %377
  br i1 %378, label %379, label %398

379:                                              ; preds = %375
  %380 = load i8, ptr %376, align 1, !tbaa !76
  switch i8 %380, label %398 [
    i8 63, label %393
    i8 43, label %393
    i8 42, label %393
    i8 123, label %381
  ]

381:                                              ; preds = %379
  %382 = getelementptr inbounds i8, ptr %376, i64 1
  %383 = icmp ult ptr %382, %377
  br i1 %383, label %384, label %398

384:                                              ; preds = %381
  %385 = tail call ptr @__ctype_b_loc() #21
  %386 = load ptr, ptr %385, align 8, !tbaa !112
  %387 = load i8, ptr %382, align 1, !tbaa !76
  %388 = sext i8 %387 to i64
  %389 = getelementptr inbounds i16, ptr %386, i64 %388
  %390 = load i16, ptr %389, align 2, !tbaa !113
  %391 = and i16 %390, 2048
  %392 = icmp eq i16 %391, 0
  br i1 %392, label %398, label %393

393:                                              ; preds = %384, %379, %379, %379
  %394 = load i32, ptr %16, align 8, !tbaa !59
  %395 = icmp eq i32 %394, 0
  br i1 %395, label %396, label %397

396:                                              ; preds = %393
  store i32 13, ptr %16, align 8, !tbaa !59
  br label %397

397:                                              ; preds = %393, %396
  store ptr @nuls, ptr %0, align 8, !tbaa !57
  store ptr @nuls, ptr %5, align 8, !tbaa !58
  br label %398

398:                                              ; preds = %207, %212, %214, %217, %375, %379, %381, %384, %397
  %399 = load ptr, ptr %0, align 8, !tbaa !57
  %400 = load ptr, ptr %5, align 8, !tbaa !58
  %401 = icmp ult ptr %399, %400
  br i1 %401, label %27, label %402, !llvm.loop !116

402:                                              ; preds = %398, %27, %19
  %403 = load i64, ptr %4, align 8, !tbaa !55
  %404 = icmp eq i64 %403, %23
  br i1 %404, label %405, label %410

405:                                              ; preds = %402
  %406 = load i32, ptr %17, align 8, !tbaa !59
  %407 = icmp eq i32 %406, 0
  br i1 %407, label %408, label %409

408:                                              ; preds = %405
  store i32 14, ptr %17, align 8, !tbaa !59
  br label %409

409:                                              ; preds = %405, %408
  store ptr @nuls, ptr %0, align 8, !tbaa !57
  store ptr @nuls, ptr %5, align 8, !tbaa !58
  br label %410

410:                                              ; preds = %409, %402
  %411 = load ptr, ptr %0, align 8, !tbaa !57
  %412 = load ptr, ptr %5, align 8, !tbaa !58
  %413 = icmp ult ptr %411, %412
  br i1 %413, label %414, label %456

414:                                              ; preds = %410
  %415 = load i8, ptr %411, align 1, !tbaa !76
  %416 = icmp eq i8 %415, 124
  br i1 %416, label %417, label %456

417:                                              ; preds = %414
  %418 = getelementptr inbounds i8, ptr %411, i64 1
  store ptr %418, ptr %0, align 8, !tbaa !57
  br i1 %22, label %422, label %419

419:                                              ; preds = %417
  %420 = sub i64 %403, %23
  %421 = add i64 %420, 1
  call fastcc void @doinsert(ptr noundef nonnull %0, i64 noundef 1006632960, i64 noundef %421, i64 noundef %23)
  br label %422

422:                                              ; preds = %419, %417
  %423 = phi i64 [ %23, %419 ], [ %20, %417 ]
  %424 = phi i64 [ %23, %419 ], [ %21, %417 ]
  %425 = load i64, ptr %4, align 8, !tbaa !55
  %426 = sub nsw i64 %425, %424
  call fastcc void @doemit(ptr noundef nonnull %0, i64 noundef 1073741824, i64 noundef %426)
  %427 = load i64, ptr %4, align 8, !tbaa !55
  %428 = add nsw i64 %427, -1
  %429 = load i32, ptr %18, align 8, !tbaa !59
  %430 = icmp eq i32 %429, 0
  br i1 %430, label %431, label %439

431:                                              ; preds = %422
  %432 = getelementptr inbounds %struct.parse, ptr %0, i64 0, i32 3
  %433 = sub nsw i64 %427, %423
  %434 = load ptr, ptr %432, align 8, !tbaa !54
  %435 = getelementptr inbounds i64, ptr %434, i64 %423
  %436 = load i64, ptr %435, align 8, !tbaa !73
  %437 = and i64 %436, 2080374784
  %438 = or i64 %437, %433
  store i64 %438, ptr %435, align 8, !tbaa !73
  br label %439

439:                                              ; preds = %422, %431
  %440 = load i64, ptr %4, align 8, !tbaa !55
  br i1 %430, label %442, label %441

441:                                              ; preds = %439, %450
  br label %19, !llvm.loop !117

442:                                              ; preds = %439
  %443 = getelementptr inbounds %struct.parse, ptr %0, i64 0, i32 4
  %444 = load i64, ptr %443, align 8, !tbaa !52
  %445 = icmp slt i64 %440, %444
  br i1 %445, label %450, label %446

446:                                              ; preds = %442
  %447 = add nsw i64 %444, 1
  %448 = sdiv i64 %447, 2
  %449 = mul nsw i64 %448, 3
  call fastcc void @enlarge(ptr noundef nonnull %0, i64 noundef %449)
  br label %450

450:                                              ; preds = %446, %442
  %451 = getelementptr inbounds %struct.parse, ptr %0, i64 0, i32 3
  %452 = load ptr, ptr %451, align 8, !tbaa !54
  %453 = load i64, ptr %4, align 8, !tbaa !55
  %454 = add nsw i64 %453, 1
  store i64 %454, ptr %4, align 8, !tbaa !55
  %455 = getelementptr inbounds i64, ptr %452, i64 %453
  store i64 1140850688, ptr %455, align 8, !tbaa !73
  br label %441

456:                                              ; preds = %414, %410
  br i1 %22, label %457, label %472

457:                                              ; preds = %456
  %458 = getelementptr inbounds %struct.parse, ptr %0, i64 0, i32 2
  %459 = load i32, ptr %458, align 8, !tbaa !59
  %460 = icmp eq i32 %459, 0
  br i1 %460, label %461, label %469

461:                                              ; preds = %457
  %462 = sub nsw i64 %403, %20
  %463 = getelementptr inbounds %struct.parse, ptr %0, i64 0, i32 3
  %464 = load ptr, ptr %463, align 8, !tbaa !54
  %465 = getelementptr inbounds i64, ptr %464, i64 %20
  %466 = load i64, ptr %465, align 8, !tbaa !73
  %467 = and i64 %466, 2080374784
  %468 = or i64 %467, %462
  store i64 %468, ptr %465, align 8, !tbaa !73
  br label %469

469:                                              ; preds = %457, %461
  %470 = load i64, ptr %4, align 8, !tbaa !55
  %471 = sub nsw i64 %470, %21
  call fastcc void @doemit(ptr noundef nonnull %0, i64 noundef 1207959552, i64 noundef %471)
  br label %472

472:                                              ; preds = %469, %456
  ret void
}

; Function Attrs: cold nounwind uwtable
define internal fastcc void @p_str(ptr noundef %0) unnamed_addr #0 !prof !111 {
  %2 = load ptr, ptr %0, align 8, !tbaa !57
  %3 = getelementptr inbounds %struct.parse, ptr %0, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !58
  %5 = icmp ult ptr %2, %4
  br i1 %5, label %12, label %6

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.parse, ptr %0, i64 0, i32 2
  %8 = load i32, ptr %7, align 8, !tbaa !59
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %11

10:                                               ; preds = %6
  store i32 14, ptr %7, align 8, !tbaa !59
  br label %11

11:                                               ; preds = %6, %10
  store ptr @nuls, ptr %0, align 8, !tbaa !57
  store ptr @nuls, ptr %3, align 8, !tbaa !58
  br label %12

12:                                               ; preds = %11, %1
  %13 = load ptr, ptr %0, align 8, !tbaa !57
  %14 = load ptr, ptr %3, align 8, !tbaa !58
  %15 = icmp ult ptr %13, %14
  br i1 %15, label %16, label %24

16:                                               ; preds = %12, %16
  %17 = phi ptr [ %21, %16 ], [ %13, %12 ]
  %18 = getelementptr inbounds i8, ptr %17, i64 1
  store ptr %18, ptr %0, align 8, !tbaa !57
  %19 = load i8, ptr %17, align 1, !tbaa !76
  %20 = sext i8 %19 to i32
  tail call fastcc void @ordinary(ptr noundef nonnull %0, i32 noundef %20)
  %21 = load ptr, ptr %0, align 8, !tbaa !57
  %22 = load ptr, ptr %3, align 8, !tbaa !58
  %23 = icmp ult ptr %21, %22
  br i1 %23, label %16, label %24, !llvm.loop !118

24:                                               ; preds = %16, %12
  ret void
}

; Function Attrs: cold nounwind uwtable
define internal fastcc void @p_bre(ptr noundef %0, i32 noundef %1, i32 noundef %2) unnamed_addr #0 !prof !42 !PGOFuncName !119 {
  %4 = alloca [4 x i8], align 1
  %5 = getelementptr inbounds %struct.parse, ptr %0, i64 0, i32 5
  %6 = load i64, ptr %5, align 8, !tbaa !55
  %7 = load ptr, ptr %0, align 8, !tbaa !57
  %8 = getelementptr inbounds %struct.parse, ptr %0, i64 0, i32 1
  %9 = load ptr, ptr %8, align 8, !tbaa !58
  %10 = icmp ult ptr %7, %9
  br i1 %10, label %11, label %42, !prof !44

11:                                               ; preds = %3
  %12 = load i8, ptr %7, align 1, !tbaa !76
  %13 = icmp eq i8 %12, 94
  br i1 %13, label %14, label %42, !prof !44

14:                                               ; preds = %11
  %15 = getelementptr inbounds i8, ptr %7, i64 1
  store ptr %15, ptr %0, align 8, !tbaa !57
  %16 = getelementptr inbounds %struct.parse, ptr %0, i64 0, i32 2
  %17 = load i32, ptr %16, align 8, !tbaa !59
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %33, !prof !44

19:                                               ; preds = %14
  %20 = getelementptr inbounds %struct.parse, ptr %0, i64 0, i32 4
  %21 = load i64, ptr %20, align 8, !tbaa !52
  %22 = icmp slt i64 %6, %21
  br i1 %22, label %27, label %23, !prof !44

23:                                               ; preds = %19
  %24 = add nsw i64 %21, 1
  %25 = sdiv i64 %24, 2
  %26 = mul nsw i64 %25, 3
  tail call fastcc void @enlarge(ptr noundef %0, i64 noundef %26)
  br label %27

27:                                               ; preds = %23, %19
  %28 = getelementptr inbounds %struct.parse, ptr %0, i64 0, i32 3
  %29 = load ptr, ptr %28, align 8, !tbaa !54
  %30 = load i64, ptr %5, align 8, !tbaa !55
  %31 = add nsw i64 %30, 1
  store i64 %31, ptr %5, align 8, !tbaa !55
  %32 = getelementptr inbounds i64, ptr %29, i64 %30
  store i64 201326592, ptr %32, align 8, !tbaa !73
  br label %33

33:                                               ; preds = %14, %27
  %34 = getelementptr inbounds %struct.parse, ptr %0, i64 0, i32 7
  %35 = load ptr, ptr %34, align 8, !tbaa !56
  %36 = getelementptr inbounds %struct.re_guts, ptr %35, i64 0, i32 10
  %37 = load i32, ptr %36, align 8, !tbaa !64
  %38 = or i32 %37, 1
  store i32 %38, ptr %36, align 8, !tbaa !64
  %39 = getelementptr inbounds %struct.re_guts, ptr %35, i64 0, i32 11
  %40 = load i32, ptr %39, align 4, !tbaa !65
  %41 = add nsw i32 %40, 1
  store i32 %41, ptr %39, align 4, !tbaa !65
  br label %42

42:                                               ; preds = %3, %11, %33
  %43 = load ptr, ptr %0, align 8, !tbaa !57
  %44 = load ptr, ptr %8, align 8, !tbaa !58
  %45 = icmp ult ptr %43, %44
  br i1 %45, label %46, label %365, !prof !96

46:                                               ; preds = %42, %328
  %47 = phi ptr [ %331, %328 ], [ %44, %42 ]
  %48 = phi ptr [ %330, %328 ], [ %43, %42 ]
  %49 = phi i32 [ %329, %328 ], [ 0, %42 ]
  %50 = phi i1 [ true, %328 ], [ false, %42 ]
  %51 = getelementptr inbounds i8, ptr %48, i64 1
  %52 = icmp ult ptr %51, %47
  br i1 %52, label %53, label %61, !prof !120

53:                                               ; preds = %46
  %54 = load i8, ptr %48, align 1, !tbaa !76
  %55 = sext i8 %54 to i32
  %56 = icmp eq i32 %55, %1
  br i1 %56, label %57, label %61, !prof !121

57:                                               ; preds = %53
  %58 = load i8, ptr %51, align 1, !tbaa !76
  %59 = sext i8 %58 to i32
  %60 = icmp eq i32 %59, %2
  br i1 %60, label %333, label %61

61:                                               ; preds = %53, %46, %57
  %62 = load i64, ptr %5, align 8, !tbaa !55
  store ptr %51, ptr %0, align 8, !tbaa !57
  %63 = load i8, ptr %48, align 1, !tbaa !76
  %64 = sext i8 %63 to i32
  %65 = icmp eq i8 %63, 92
  br i1 %65, label %66, label %79, !prof !122

66:                                               ; preds = %61
  br i1 %52, label %73, label %67

67:                                               ; preds = %66
  %68 = getelementptr inbounds %struct.parse, ptr %0, i64 0, i32 2
  %69 = load i32, ptr %68, align 8, !tbaa !59
  %70 = icmp eq i32 %69, 0
  br i1 %70, label %71, label %72

71:                                               ; preds = %67
  store i32 5, ptr %68, align 8, !tbaa !59
  br label %72

72:                                               ; preds = %67, %71
  store ptr @nuls, ptr %0, align 8, !tbaa !57
  store ptr @nuls, ptr %8, align 8, !tbaa !58
  br label %73

73:                                               ; preds = %72, %66
  %74 = load ptr, ptr %0, align 8, !tbaa !57
  %75 = getelementptr inbounds i8, ptr %74, i64 1
  store ptr %75, ptr %0, align 8, !tbaa !57
  %76 = load i8, ptr %74, align 1, !tbaa !76
  %77 = zext i8 %76 to i32
  %78 = or disjoint i32 %77, 256
  br label %79

79:                                               ; preds = %73, %61
  %80 = phi i32 [ %78, %73 ], [ %64, %61 ]
  switch i32 %80, label %217 [
    i32 46, label %81
    i32 91, label %112
    i32 379, label %113
    i32 296, label %119
    i32 297, label %167
    i32 381, label %167
    i32 305, label %173
    i32 306, label %173
    i32 307, label %173
    i32 308, label %173
    i32 309, label %173
    i32 310, label %173
    i32 311, label %173
    i32 312, label %173
    i32 313, label %173
    i32 42, label %210
  ], !prof !123

81:                                               ; preds = %79
  %82 = getelementptr inbounds %struct.parse, ptr %0, i64 0, i32 7
  %83 = load ptr, ptr %82, align 8, !tbaa !56
  %84 = getelementptr inbounds %struct.re_guts, ptr %83, i64 0, i32 6
  %85 = load i32, ptr %84, align 8, !tbaa !63
  %86 = and i32 %85, 8
  %87 = icmp eq i32 %86, 0
  br i1 %87, label %94, label %88

88:                                               ; preds = %81
  %89 = getelementptr inbounds i8, ptr %4, i64 3
  %90 = getelementptr inbounds [4 x i8], ptr %4, i64 0, i64 1
  %91 = getelementptr inbounds [4 x i8], ptr %4, i64 0, i64 2
  %92 = load ptr, ptr %0, align 8, !tbaa !57
  %93 = load ptr, ptr %8, align 8, !tbaa !58
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #17
  store ptr %4, ptr %0, align 8, !tbaa !57
  store ptr %89, ptr %8, align 8, !tbaa !58
  store i8 94, ptr %4, align 1, !tbaa !76
  store i8 10, ptr %90, align 1, !tbaa !76
  store i8 93, ptr %91, align 1, !tbaa !76
  store i8 0, ptr %89, align 1, !tbaa !76
  call fastcc void @p_bracket(ptr noundef nonnull %0)
  store ptr %92, ptr %0, align 8, !tbaa !57
  store ptr %93, ptr %8, align 8, !tbaa !58
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #17
  br label %220

94:                                               ; preds = %81
  %95 = getelementptr inbounds %struct.parse, ptr %0, i64 0, i32 2
  %96 = load i32, ptr %95, align 8, !tbaa !59
  %97 = icmp eq i32 %96, 0
  br i1 %97, label %98, label %220

98:                                               ; preds = %94
  %99 = getelementptr inbounds %struct.parse, ptr %0, i64 0, i32 4
  %100 = load i64, ptr %99, align 8, !tbaa !52
  %101 = icmp slt i64 %62, %100
  br i1 %101, label %106, label %102

102:                                              ; preds = %98
  %103 = add nsw i64 %100, 1
  %104 = sdiv i64 %103, 2
  %105 = mul nsw i64 %104, 3
  call fastcc void @enlarge(ptr noundef nonnull %0, i64 noundef %105)
  br label %106

106:                                              ; preds = %102, %98
  %107 = getelementptr inbounds %struct.parse, ptr %0, i64 0, i32 3
  %108 = load ptr, ptr %107, align 8, !tbaa !54
  %109 = load i64, ptr %5, align 8, !tbaa !55
  %110 = add nsw i64 %109, 1
  store i64 %110, ptr %5, align 8, !tbaa !55
  %111 = getelementptr inbounds i64, ptr %108, i64 %109
  store i64 335544320, ptr %111, align 8, !tbaa !73
  br label %220

112:                                              ; preds = %79
  call fastcc void @p_bracket(ptr noundef nonnull %0)
  br label %220

113:                                              ; preds = %79
  %114 = getelementptr inbounds %struct.parse, ptr %0, i64 0, i32 2
  %115 = load i32, ptr %114, align 8, !tbaa !59
  %116 = icmp eq i32 %115, 0
  br i1 %116, label %117, label %118

117:                                              ; preds = %113
  store i32 13, ptr %114, align 8, !tbaa !59
  br label %118

118:                                              ; preds = %113, %117
  store ptr @nuls, ptr %0, align 8, !tbaa !57
  store ptr @nuls, ptr %8, align 8, !tbaa !58
  br label %220

119:                                              ; preds = %79
  %120 = getelementptr inbounds %struct.parse, ptr %0, i64 0, i32 7
  %121 = load ptr, ptr %120, align 8, !tbaa !56
  %122 = getelementptr inbounds %struct.re_guts, ptr %121, i64 0, i32 17
  %123 = load i64, ptr %122, align 8, !tbaa !69
  %124 = add i64 %123, 1
  store i64 %124, ptr %122, align 8, !tbaa !69
  %125 = icmp slt i64 %124, 10
  br i1 %125, label %126, label %128

126:                                              ; preds = %119
  %127 = getelementptr inbounds %struct.parse, ptr %0, i64 0, i32 8, i64 %124
  store i64 %62, ptr %127, align 8, !tbaa !73
  br label %128

128:                                              ; preds = %126, %119
  call fastcc void @doemit(ptr noundef nonnull %0, i64 noundef 872415232, i64 noundef %124)
  %129 = load ptr, ptr %0, align 8, !tbaa !57
  %130 = load ptr, ptr %8, align 8, !tbaa !58
  %131 = icmp ult ptr %129, %130
  br i1 %131, label %132, label %142

132:                                              ; preds = %128
  %133 = getelementptr inbounds i8, ptr %129, i64 1
  %134 = icmp ult ptr %133, %130
  br i1 %134, label %135, label %141

135:                                              ; preds = %132
  %136 = load i8, ptr %129, align 1, !tbaa !76
  %137 = icmp eq i8 %136, 92
  br i1 %137, label %138, label %141

138:                                              ; preds = %135
  %139 = load i8, ptr %133, align 1, !tbaa !76
  %140 = icmp eq i8 %139, 41
  br i1 %140, label %142, label %141

141:                                              ; preds = %138, %135, %132
  call fastcc void @p_bre(ptr noundef nonnull %0, i32 noundef 92, i32 noundef 41)
  br label %142

142:                                              ; preds = %141, %138, %128
  br i1 %125, label %143, label %146

143:                                              ; preds = %142
  %144 = load i64, ptr %5, align 8, !tbaa !55
  %145 = getelementptr inbounds %struct.parse, ptr %0, i64 0, i32 9, i64 %124
  store i64 %144, ptr %145, align 8, !tbaa !73
  br label %146

146:                                              ; preds = %143, %142
  call fastcc void @doemit(ptr noundef nonnull %0, i64 noundef 939524096, i64 noundef %124)
  %147 = load ptr, ptr %0, align 8, !tbaa !57
  %148 = load ptr, ptr %8, align 8, !tbaa !58
  %149 = icmp ult ptr %147, %148
  br i1 %149, label %150, label %161

150:                                              ; preds = %146
  %151 = getelementptr inbounds i8, ptr %147, i64 1
  %152 = icmp ult ptr %151, %148
  br i1 %152, label %153, label %161

153:                                              ; preds = %150
  %154 = load i8, ptr %147, align 1, !tbaa !76
  %155 = icmp eq i8 %154, 92
  br i1 %155, label %156, label %161

156:                                              ; preds = %153
  %157 = load i8, ptr %151, align 1, !tbaa !76
  %158 = icmp eq i8 %157, 41
  br i1 %158, label %159, label %161

159:                                              ; preds = %156
  %160 = getelementptr inbounds i8, ptr %147, i64 2
  store ptr %160, ptr %0, align 8, !tbaa !57
  br label %220

161:                                              ; preds = %156, %153, %150, %146
  %162 = getelementptr inbounds %struct.parse, ptr %0, i64 0, i32 2
  %163 = load i32, ptr %162, align 8, !tbaa !59
  %164 = icmp eq i32 %163, 0
  br i1 %164, label %165, label %166

165:                                              ; preds = %161
  store i32 8, ptr %162, align 8, !tbaa !59
  br label %166

166:                                              ; preds = %161, %165
  store ptr @nuls, ptr %0, align 8, !tbaa !57
  store ptr @nuls, ptr %8, align 8, !tbaa !58
  br label %220

167:                                              ; preds = %79, %79
  %168 = getelementptr inbounds %struct.parse, ptr %0, i64 0, i32 2
  %169 = load i32, ptr %168, align 8, !tbaa !59
  %170 = icmp eq i32 %169, 0
  br i1 %170, label %171, label %172

171:                                              ; preds = %167
  store i32 8, ptr %168, align 8, !tbaa !59
  br label %172

172:                                              ; preds = %167, %171
  store ptr @nuls, ptr %0, align 8, !tbaa !57
  store ptr @nuls, ptr %8, align 8, !tbaa !58
  br label %220

173:                                              ; preds = %79, %79, %79, %79, %79, %79, %79, %79, %79
  %174 = and i32 %80, -257
  %175 = add nsw i32 %174, -48
  %176 = sext i32 %175 to i64
  %177 = getelementptr inbounds %struct.parse, ptr %0, i64 0, i32 9, i64 %176
  %178 = load i64, ptr %177, align 8, !tbaa !73
  %179 = icmp eq i64 %178, 0
  br i1 %179, label %200, label %180

180:                                              ; preds = %173
  call fastcc void @doemit(ptr noundef nonnull %0, i64 noundef 469762048, i64 noundef %176)
  %181 = getelementptr inbounds %struct.parse, ptr %0, i64 0, i32 8, i64 %176
  %182 = load i64, ptr %181, align 8, !tbaa !73
  %183 = add nsw i64 %182, 1
  %184 = load i64, ptr %177, align 8, !tbaa !73
  %185 = icmp eq i64 %184, %183
  br i1 %185, label %199, label %186

186:                                              ; preds = %180
  %187 = getelementptr inbounds %struct.parse, ptr %0, i64 0, i32 4
  %188 = getelementptr inbounds %struct.parse, ptr %0, i64 0, i32 3
  %189 = sub nsw i64 %184, %183
  %190 = load i64, ptr %187, align 8, !tbaa !52
  %191 = add nsw i64 %190, %189
  call fastcc void @enlarge(ptr noundef nonnull %0, i64 noundef %191)
  %192 = load ptr, ptr %188, align 8, !tbaa !54
  %193 = load i64, ptr %5, align 8, !tbaa !55
  %194 = getelementptr inbounds i64, ptr %192, i64 %193
  %195 = getelementptr inbounds i64, ptr %192, i64 %183
  %196 = shl i64 %189, 3
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %194, ptr align 1 %195, i64 %196, i1 false)
  %197 = load i64, ptr %5, align 8, !tbaa !55
  %198 = add nsw i64 %197, %189
  store i64 %198, ptr %5, align 8, !tbaa !55
  br label %199

199:                                              ; preds = %180, %186
  call fastcc void @doemit(ptr noundef nonnull %0, i64 noundef 536870912, i64 noundef %176)
  br label %206

200:                                              ; preds = %173
  %201 = getelementptr inbounds %struct.parse, ptr %0, i64 0, i32 2
  %202 = load i32, ptr %201, align 8, !tbaa !59
  %203 = icmp eq i32 %202, 0
  br i1 %203, label %204, label %205

204:                                              ; preds = %200
  store i32 6, ptr %201, align 8, !tbaa !59
  br label %205

205:                                              ; preds = %200, %204
  store ptr @nuls, ptr %0, align 8, !tbaa !57
  store ptr @nuls, ptr %8, align 8, !tbaa !58
  br label %206

206:                                              ; preds = %205, %199
  %207 = getelementptr inbounds %struct.parse, ptr %0, i64 0, i32 7
  %208 = load ptr, ptr %207, align 8, !tbaa !56
  %209 = getelementptr inbounds %struct.re_guts, ptr %208, i64 0, i32 18
  store i32 1, ptr %209, align 8, !tbaa !72
  br label %220

210:                                              ; preds = %79
  br i1 %50, label %211, label %217

211:                                              ; preds = %210
  %212 = getelementptr inbounds %struct.parse, ptr %0, i64 0, i32 2
  %213 = load i32, ptr %212, align 8, !tbaa !59
  %214 = icmp eq i32 %213, 0
  br i1 %214, label %215, label %216

215:                                              ; preds = %211
  store i32 13, ptr %212, align 8, !tbaa !59
  br label %216

216:                                              ; preds = %211, %215
  store ptr @nuls, ptr %0, align 8, !tbaa !57
  store ptr @nuls, ptr %8, align 8, !tbaa !58
  br label %217

217:                                              ; preds = %216, %210, %79
  %218 = shl i32 %80, 24
  %219 = ashr exact i32 %218, 24
  call fastcc void @ordinary(ptr noundef nonnull %0, i32 noundef %219)
  br label %220

220:                                              ; preds = %106, %94, %217, %206, %172, %166, %159, %118, %112, %88
  %221 = load ptr, ptr %0, align 8, !tbaa !57
  %222 = load ptr, ptr %8, align 8, !tbaa !58
  %223 = icmp ult ptr %221, %222
  br i1 %223, label %224, label %325, !prof !120

224:                                              ; preds = %220
  %225 = load i8, ptr %221, align 1, !tbaa !76
  %226 = icmp eq i8 %225, 42
  br i1 %226, label %227, label %239, !prof !121

227:                                              ; preds = %224
  %228 = getelementptr inbounds i8, ptr %221, i64 1
  store ptr %228, ptr %0, align 8, !tbaa !57
  %229 = load i64, ptr %5, align 8, !tbaa !55
  %230 = sub i64 %229, %62
  %231 = add i64 %230, 1
  call fastcc void @doinsert(ptr noundef nonnull %0, i64 noundef 603979776, i64 noundef %231, i64 noundef %62)
  %232 = load i64, ptr %5, align 8, !tbaa !55
  %233 = sub nsw i64 %232, %62
  call fastcc void @doemit(ptr noundef nonnull %0, i64 noundef 671088640, i64 noundef %233)
  %234 = load i64, ptr %5, align 8, !tbaa !55
  %235 = sub i64 %234, %62
  %236 = add i64 %235, 1
  call fastcc void @doinsert(ptr noundef nonnull %0, i64 noundef 738197504, i64 noundef %236, i64 noundef %62)
  %237 = load i64, ptr %5, align 8, !tbaa !55
  %238 = sub nsw i64 %237, %62
  call fastcc void @doemit(ptr noundef nonnull %0, i64 noundef 805306368, i64 noundef %238)
  br label %327

239:                                              ; preds = %224
  br i1 %223, label %240, label %325, !prof !120

240:                                              ; preds = %239
  %241 = getelementptr inbounds i8, ptr %221, i64 1
  %242 = icmp ult ptr %241, %222
  br i1 %242, label %243, label %325, !prof !124

243:                                              ; preds = %240
  %244 = load i8, ptr %221, align 1, !tbaa !76
  %245 = icmp eq i8 %244, 92
  br i1 %245, label %246, label %325, !prof !125

246:                                              ; preds = %243
  %247 = load i8, ptr %241, align 1, !tbaa !76
  %248 = icmp eq i8 %247, 123
  br i1 %248, label %249, label %325

249:                                              ; preds = %246
  %250 = getelementptr inbounds i8, ptr %221, i64 2
  store ptr %250, ptr %0, align 8, !tbaa !57
  %251 = call fastcc i32 @p_count(ptr noundef nonnull %0)
  %252 = load ptr, ptr %0, align 8, !tbaa !57
  %253 = load ptr, ptr %8, align 8, !tbaa !58
  %254 = icmp ult ptr %252, %253
  br i1 %254, label %255, label %279

255:                                              ; preds = %249
  %256 = load i8, ptr %252, align 1, !tbaa !76
  %257 = icmp eq i8 %256, 44
  br i1 %257, label %258, label %279

258:                                              ; preds = %255
  %259 = getelementptr inbounds i8, ptr %252, i64 1
  store ptr %259, ptr %0, align 8, !tbaa !57
  %260 = icmp ult ptr %259, %253
  br i1 %260, label %261, label %279

261:                                              ; preds = %258
  %262 = tail call ptr @__ctype_b_loc() #21
  %263 = load ptr, ptr %262, align 8, !tbaa !112
  %264 = load i8, ptr %259, align 1, !tbaa !76
  %265 = sext i8 %264 to i64
  %266 = getelementptr inbounds i16, ptr %263, i64 %265
  %267 = load i16, ptr %266, align 2, !tbaa !113
  %268 = and i16 %267, 2048
  %269 = icmp eq i16 %268, 0
  br i1 %269, label %279, label %270

270:                                              ; preds = %261
  %271 = call fastcc i32 @p_count(ptr noundef nonnull %0)
  %272 = icmp sgt i32 %251, %271
  br i1 %272, label %273, label %279

273:                                              ; preds = %270
  %274 = getelementptr inbounds %struct.parse, ptr %0, i64 0, i32 2
  %275 = load i32, ptr %274, align 8, !tbaa !59
  %276 = icmp eq i32 %275, 0
  br i1 %276, label %277, label %278

277:                                              ; preds = %273
  store i32 10, ptr %274, align 8, !tbaa !59
  br label %278

278:                                              ; preds = %273, %277
  store ptr @nuls, ptr %0, align 8, !tbaa !57
  store ptr @nuls, ptr %8, align 8, !tbaa !58
  br label %279

279:                                              ; preds = %278, %270, %261, %258, %255, %249
  %280 = phi i32 [ %271, %278 ], [ %271, %270 ], [ 256, %261 ], [ 256, %258 ], [ %251, %249 ], [ %251, %255 ]
  call fastcc void @repeat(ptr noundef nonnull %0, i64 noundef %62, i32 noundef %251, i32 noundef %280)
  %281 = load ptr, ptr %0, align 8, !tbaa !57
  %282 = load ptr, ptr %8, align 8, !tbaa !58
  %283 = icmp ult ptr %281, %282
  br i1 %283, label %284, label %295

284:                                              ; preds = %279
  %285 = getelementptr inbounds i8, ptr %281, i64 1
  %286 = icmp ult ptr %285, %282
  br i1 %286, label %287, label %295

287:                                              ; preds = %284
  %288 = load i8, ptr %281, align 1, !tbaa !76
  %289 = icmp eq i8 %288, 92
  br i1 %289, label %290, label %295

290:                                              ; preds = %287
  %291 = load i8, ptr %285, align 1, !tbaa !76
  %292 = icmp eq i8 %291, 125
  br i1 %292, label %293, label %295

293:                                              ; preds = %290
  %294 = getelementptr inbounds i8, ptr %281, i64 2
  store ptr %294, ptr %0, align 8, !tbaa !57
  br label %327

295:                                              ; preds = %290, %287, %284, %279
  %296 = getelementptr inbounds %struct.parse, ptr %0, i64 0, i32 2
  %297 = load ptr, ptr %0, align 8, !tbaa !57
  %298 = icmp ult ptr %297, %282
  br i1 %298, label %299, label %314

299:                                              ; preds = %295, %310
  %300 = phi i1 [ %311, %310 ], [ %298, %295 ]
  %301 = phi ptr [ %302, %310 ], [ %297, %295 ]
  %302 = getelementptr inbounds i8, ptr %301, i64 1
  %303 = icmp ult ptr %302, %282
  br i1 %303, label %304, label %310

304:                                              ; preds = %299
  %305 = load i8, ptr %301, align 1, !tbaa !76
  %306 = icmp eq i8 %305, 92
  br i1 %306, label %307, label %310

307:                                              ; preds = %304
  %308 = load i8, ptr %302, align 1, !tbaa !76
  %309 = icmp eq i8 %308, 125
  br i1 %309, label %313, label %310

310:                                              ; preds = %307, %304, %299
  store ptr %302, ptr %0, align 8, !tbaa !57
  %311 = icmp ult ptr %302, %282
  %312 = icmp eq ptr %302, %282
  br i1 %312, label %314, label %299, !llvm.loop !126

313:                                              ; preds = %307
  br i1 %300, label %320, label %314

314:                                              ; preds = %310, %295, %313
  %315 = getelementptr inbounds %struct.parse, ptr %0, i64 0, i32 2
  %316 = load i32, ptr %315, align 8, !tbaa !59
  %317 = icmp eq i32 %316, 0
  br i1 %317, label %318, label %319

318:                                              ; preds = %314
  store i32 9, ptr %315, align 8, !tbaa !59
  br label %319

319:                                              ; preds = %314, %318
  store ptr @nuls, ptr %0, align 8, !tbaa !57
  store ptr @nuls, ptr %8, align 8, !tbaa !58
  br label %320

320:                                              ; preds = %319, %313
  %321 = load i32, ptr %296, align 8, !tbaa !59
  %322 = icmp eq i32 %321, 0
  br i1 %322, label %323, label %324

323:                                              ; preds = %320
  store i32 10, ptr %296, align 8, !tbaa !59
  br label %324

324:                                              ; preds = %320, %323
  store ptr @nuls, ptr %0, align 8, !tbaa !57
  store ptr @nuls, ptr %8, align 8, !tbaa !58
  br label %327

325:                                              ; preds = %220, %246, %243, %240, %239
  %326 = icmp eq i32 %80, 36
  br i1 %326, label %328, label %327, !prof !127

327:                                              ; preds = %325, %324, %293, %227
  br label %328

328:                                              ; preds = %325, %327
  %329 = phi i32 [ 0, %327 ], [ 1, %325 ]
  %330 = load ptr, ptr %0, align 8, !tbaa !57
  %331 = load ptr, ptr %8, align 8, !tbaa !58
  %332 = icmp ult ptr %330, %331
  br i1 %332, label %46, label %333, !prof !128, !llvm.loop !129

333:                                              ; preds = %328, %57
  %334 = phi i32 [ %49, %57 ], [ %329, %328 ]
  %335 = icmp eq i32 %334, 0
  br i1 %335, label %365, label %336, !prof !43

336:                                              ; preds = %333
  %337 = load i64, ptr %5, align 8, !tbaa !55
  %338 = add nsw i64 %337, -1
  store i64 %338, ptr %5, align 8, !tbaa !55
  %339 = getelementptr inbounds %struct.parse, ptr %0, i64 0, i32 2
  %340 = load i32, ptr %339, align 8, !tbaa !59
  %341 = icmp eq i32 %340, 0
  br i1 %341, label %342, label %356, !prof !44

342:                                              ; preds = %336
  %343 = getelementptr inbounds %struct.parse, ptr %0, i64 0, i32 4
  %344 = load i64, ptr %343, align 8, !tbaa !52
  %345 = icmp sgt i64 %337, %344
  br i1 %345, label %346, label %350, !prof !43

346:                                              ; preds = %342
  %347 = add nsw i64 %344, 1
  %348 = sdiv i64 %347, 2
  %349 = mul nsw i64 %348, 3
  call fastcc void @enlarge(ptr noundef nonnull %0, i64 noundef %349)
  br label %350

350:                                              ; preds = %346, %342
  %351 = getelementptr inbounds %struct.parse, ptr %0, i64 0, i32 3
  %352 = load ptr, ptr %351, align 8, !tbaa !54
  %353 = load i64, ptr %5, align 8, !tbaa !55
  %354 = add nsw i64 %353, 1
  store i64 %354, ptr %5, align 8, !tbaa !55
  %355 = getelementptr inbounds i64, ptr %352, i64 %353
  store i64 268435456, ptr %355, align 8, !tbaa !73
  br label %356

356:                                              ; preds = %336, %350
  %357 = getelementptr inbounds %struct.parse, ptr %0, i64 0, i32 7
  %358 = load ptr, ptr %357, align 8, !tbaa !56
  %359 = getelementptr inbounds %struct.re_guts, ptr %358, i64 0, i32 10
  %360 = load i32, ptr %359, align 8, !tbaa !64
  %361 = or i32 %360, 2
  store i32 %361, ptr %359, align 8, !tbaa !64
  %362 = getelementptr inbounds %struct.re_guts, ptr %358, i64 0, i32 12
  %363 = load i32, ptr %362, align 8, !tbaa !66
  %364 = add nsw i32 %363, 1
  store i32 %364, ptr %362, align 8, !tbaa !66
  br label %365

365:                                              ; preds = %42, %356, %333
  %366 = load i64, ptr %5, align 8, !tbaa !55
  %367 = icmp eq i64 %366, %6
  br i1 %367, label %368, label %374, !prof !43

368:                                              ; preds = %365
  %369 = getelementptr inbounds %struct.parse, ptr %0, i64 0, i32 2
  %370 = load i32, ptr %369, align 8, !tbaa !59
  %371 = icmp eq i32 %370, 0
  br i1 %371, label %372, label %373

372:                                              ; preds = %368
  store i32 14, ptr %369, align 8, !tbaa !59
  br label %373

373:                                              ; preds = %368, %372
  store ptr @nuls, ptr %0, align 8, !tbaa !57
  store ptr @nuls, ptr %8, align 8, !tbaa !58
  br label %374

374:                                              ; preds = %373, %365
  ret void
}

declare void @regfree(ptr noundef) local_unnamed_addr #7

; Function Attrs: cold nounwind uwtable
define internal fastcc void @doinsert(ptr nocapture noundef %0, i64 noundef %1, i64 noundef %2, i64 noundef %3) unnamed_addr #0 !prof !111 {
  %5 = getelementptr inbounds %struct.parse, ptr %0, i64 0, i32 2
  %6 = load i32, ptr %5, align 8, !tbaa !59
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %40

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.parse, ptr %0, i64 0, i32 5
  %10 = load i64, ptr %9, align 8, !tbaa !55
  tail call fastcc void @doemit(ptr noundef %0, i64 noundef %1, i64 noundef %2)
  %11 = getelementptr inbounds %struct.parse, ptr %0, i64 0, i32 3
  %12 = load ptr, ptr %11, align 8, !tbaa !54
  %13 = getelementptr inbounds i64, ptr %12, i64 %10
  %14 = load i64, ptr %13, align 8, !tbaa !73
  br label %15

15:                                               ; preds = %8, %28
  %16 = phi i64 [ 1, %8 ], [ %29, %28 ]
  %17 = getelementptr inbounds %struct.parse, ptr %0, i64 0, i32 8, i64 %16
  %18 = load i64, ptr %17, align 8, !tbaa !73
  %19 = icmp slt i64 %18, %3
  br i1 %19, label %22, label %20

20:                                               ; preds = %15
  %21 = add nsw i64 %18, 1
  store i64 %21, ptr %17, align 8, !tbaa !73
  br label %22

22:                                               ; preds = %20, %15
  %23 = getelementptr inbounds %struct.parse, ptr %0, i64 0, i32 9, i64 %16
  %24 = load i64, ptr %23, align 8, !tbaa !73
  %25 = icmp slt i64 %24, %3
  br i1 %25, label %28, label %26

26:                                               ; preds = %22
  %27 = add nsw i64 %24, 1
  store i64 %27, ptr %23, align 8, !tbaa !73
  br label %28

28:                                               ; preds = %22, %26
  %29 = add nuw nsw i64 %16, 1
  %30 = icmp eq i64 %29, 10
  br i1 %30, label %31, label %15, !llvm.loop !130

31:                                               ; preds = %28
  %32 = getelementptr i64, ptr %12, i64 %3
  %33 = getelementptr i64, ptr %32, i64 1
  %34 = load i64, ptr %9, align 8, !tbaa !55
  %35 = xor i64 %3, -1
  %36 = add i64 %34, %35
  %37 = shl i64 %36, 3
  tail call void @llvm.memmove.p0.p0.i64(ptr align 1 %33, ptr align 1 %32, i64 %37, i1 false)
  %38 = load ptr, ptr %11, align 8, !tbaa !54
  %39 = getelementptr inbounds i64, ptr %38, i64 %3
  store i64 %14, ptr %39, align 8, !tbaa !73
  br label %40

40:                                               ; preds = %4, %31
  ret void
}

; Function Attrs: cold nounwind uwtable
define internal fastcc void @p_bracket(ptr noundef %0) unnamed_addr #0 !prof !111 {
  %2 = getelementptr inbounds %struct.parse, ptr %0, i64 0, i32 7
  %3 = load ptr, ptr %2, align 8, !tbaa !56
  %4 = getelementptr inbounds %struct.re_guts, ptr %3, i64 0, i32 3
  %5 = load i32, ptr %4, align 4, !tbaa !78
  %6 = add nsw i32 %5, 1
  store i32 %6, ptr %4, align 4, !tbaa !78
  %7 = getelementptr inbounds %struct.re_guts, ptr %3, i64 0, i32 2
  %8 = load i32, ptr %7, align 8, !tbaa !61
  %9 = sext i32 %8 to i64
  %10 = getelementptr inbounds %struct.parse, ptr %0, i64 0, i32 6
  %11 = load i32, ptr %10, align 8, !tbaa !60
  %12 = icmp slt i32 %5, %11
  br i1 %12, label %72, label %13

13:                                               ; preds = %1
  %14 = add nsw i32 %11, 8
  store i32 %14, ptr %10, align 8, !tbaa !60
  %15 = sext i32 %14 to i64
  %16 = lshr i64 %15, 3
  %17 = mul i64 %16, %9
  %18 = getelementptr inbounds %struct.re_guts, ptr %3, i64 0, i32 4
  %19 = load ptr, ptr %18, align 8, !tbaa !131
  %20 = icmp eq ptr %19, null
  %21 = shl nsw i64 %15, 5
  br i1 %20, label %22, label %24

22:                                               ; preds = %13
  %23 = tail call noalias ptr @malloc(i64 noundef %21) #19
  store ptr %23, ptr %18, align 8, !tbaa !131
  br label %28

24:                                               ; preds = %13
  %25 = tail call ptr @realloc(ptr noundef nonnull %19, i64 noundef %21) #20
  %26 = load ptr, ptr %2, align 8, !tbaa !56
  %27 = getelementptr inbounds %struct.re_guts, ptr %26, i64 0, i32 4
  store ptr %25, ptr %27, align 8, !tbaa !131
  br label %28

28:                                               ; preds = %24, %22
  %29 = load ptr, ptr %2, align 8, !tbaa !56
  %30 = getelementptr inbounds %struct.re_guts, ptr %29, i64 0, i32 5
  %31 = load ptr, ptr %30, align 8, !tbaa !80
  %32 = icmp eq ptr %31, null
  br i1 %32, label %33, label %35

33:                                               ; preds = %28
  %34 = tail call noalias ptr @malloc(i64 noundef %17) #19
  store ptr %34, ptr %30, align 8, !tbaa !80
  br label %53

35:                                               ; preds = %28
  %36 = tail call ptr @realloc(ptr noundef nonnull %31, i64 noundef %17) #20
  %37 = load ptr, ptr %2, align 8, !tbaa !56
  %38 = getelementptr inbounds %struct.re_guts, ptr %37, i64 0, i32 5
  store ptr %36, ptr %38, align 8, !tbaa !80
  %39 = icmp sgt i32 %5, 0
  br i1 %39, label %40, label %53

40:                                               ; preds = %35
  %41 = getelementptr inbounds %struct.re_guts, ptr %37, i64 0, i32 4
  %42 = load ptr, ptr %41, align 8, !tbaa !131
  %43 = zext nneg i32 %5 to i64
  br label %44

44:                                               ; preds = %40, %44
  %45 = phi i64 [ 0, %40 ], [ %51, %44 ]
  %46 = lshr i64 %45, 3
  %47 = and i64 %46, 536870911
  %48 = mul nsw i64 %47, %9
  %49 = getelementptr inbounds i8, ptr %36, i64 %48
  %50 = getelementptr inbounds %struct.cset, ptr %42, i64 %45
  store ptr %49, ptr %50, align 8, !tbaa !132
  %51 = add nuw nsw i64 %45, 1
  %52 = icmp eq i64 %51, %43
  br i1 %52, label %53, label %44, !llvm.loop !134

53:                                               ; preds = %44, %35, %33
  %54 = load ptr, ptr %2, align 8, !tbaa !56
  %55 = getelementptr inbounds %struct.re_guts, ptr %54, i64 0, i32 4
  %56 = load ptr, ptr %55, align 8, !tbaa !131
  %57 = icmp eq ptr %56, null
  br i1 %57, label %65, label %58

58:                                               ; preds = %53
  %59 = getelementptr inbounds %struct.re_guts, ptr %54, i64 0, i32 5
  %60 = load ptr, ptr %59, align 8, !tbaa !80
  %61 = icmp eq ptr %60, null
  br i1 %61, label %65, label %62

62:                                               ; preds = %58
  %63 = sub i64 %17, %9
  %64 = getelementptr inbounds i8, ptr %60, i64 %63
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %64, i8 0, i64 %9, i1 false)
  br label %72

65:                                               ; preds = %58, %53
  %66 = getelementptr inbounds %struct.parse, ptr %0, i64 0, i32 2
  %67 = load i32, ptr %66, align 8, !tbaa !59
  %68 = icmp eq i32 %67, 0
  br i1 %68, label %69, label %70

69:                                               ; preds = %65
  store i32 12, ptr %66, align 8, !tbaa !59
  br label %70

70:                                               ; preds = %69, %65
  store ptr @nuls, ptr %0, align 8, !tbaa !57
  %71 = getelementptr inbounds %struct.parse, ptr %0, i64 0, i32 1
  store ptr @nuls, ptr %71, align 8, !tbaa !58
  br label %72

72:                                               ; preds = %1, %62, %70
  %73 = phi i32 [ %5, %62 ], [ 0, %70 ], [ %5, %1 ]
  %74 = load ptr, ptr %2, align 8, !tbaa !56
  %75 = getelementptr inbounds %struct.re_guts, ptr %74, i64 0, i32 4
  %76 = load ptr, ptr %75, align 8, !tbaa !131
  %77 = sext i32 %73 to i64
  %78 = getelementptr inbounds %struct.cset, ptr %76, i64 %77
  %79 = getelementptr inbounds %struct.re_guts, ptr %74, i64 0, i32 5
  %80 = load ptr, ptr %79, align 8, !tbaa !80
  %81 = sdiv i32 %73, 8
  %82 = sext i32 %81 to i64
  %83 = mul nsw i64 %82, %9
  %84 = getelementptr inbounds i8, ptr %80, i64 %83
  store ptr %84, ptr %78, align 8, !tbaa !132
  %85 = and i32 %73, 7
  %86 = shl nuw nsw i32 1, %85
  %87 = trunc i32 %86 to i8
  %88 = getelementptr inbounds %struct.cset, ptr %76, i64 %77, i32 1
  store i8 %87, ptr %88, align 8, !tbaa !135
  %89 = getelementptr inbounds %struct.cset, ptr %76, i64 %77, i32 2
  store i8 0, ptr %89, align 1, !tbaa !136
  %90 = getelementptr inbounds %struct.cset, ptr %76, i64 %77, i32 3
  %91 = getelementptr inbounds %struct.cset, ptr %76, i64 %77, i32 4
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %90, i8 0, i64 16, i1 false)
  %92 = load ptr, ptr %0, align 8, !tbaa !57
  %93 = getelementptr inbounds i8, ptr %92, i64 5
  %94 = getelementptr inbounds %struct.parse, ptr %0, i64 0, i32 1
  %95 = load ptr, ptr %94, align 8, !tbaa !58
  %96 = icmp ult ptr %93, %95
  br i1 %96, label %97, label %150

97:                                               ; preds = %72
  %98 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %92, ptr noundef nonnull dereferenceable(7) @.str, i64 noundef 6) #18
  %99 = icmp eq i32 %98, 0
  br i1 %99, label %100, label %123

100:                                              ; preds = %97
  %101 = getelementptr inbounds %struct.parse, ptr %0, i64 0, i32 2
  %102 = load i32, ptr %101, align 8, !tbaa !59
  %103 = icmp eq i32 %102, 0
  br i1 %103, label %104, label %120

104:                                              ; preds = %100
  %105 = getelementptr inbounds %struct.parse, ptr %0, i64 0, i32 5
  %106 = load i64, ptr %105, align 8, !tbaa !55
  %107 = getelementptr inbounds %struct.parse, ptr %0, i64 0, i32 4
  %108 = load i64, ptr %107, align 8, !tbaa !52
  %109 = icmp slt i64 %106, %108
  br i1 %109, label %114, label %110

110:                                              ; preds = %104
  %111 = add nsw i64 %108, 1
  %112 = sdiv i64 %111, 2
  %113 = mul nsw i64 %112, 3
  tail call fastcc void @enlarge(ptr noundef %0, i64 noundef %113)
  br label %114

114:                                              ; preds = %110, %104
  %115 = getelementptr inbounds %struct.parse, ptr %0, i64 0, i32 3
  %116 = load ptr, ptr %115, align 8, !tbaa !54
  %117 = load i64, ptr %105, align 8, !tbaa !55
  %118 = add nsw i64 %117, 1
  store i64 %118, ptr %105, align 8, !tbaa !55
  %119 = getelementptr inbounds i64, ptr %116, i64 %117
  store i64 1275068416, ptr %119, align 8, !tbaa !73
  br label %120

120:                                              ; preds = %100, %114
  %121 = load ptr, ptr %0, align 8, !tbaa !57
  %122 = getelementptr inbounds i8, ptr %121, i64 6
  store ptr %122, ptr %0, align 8, !tbaa !57
  br label %707

123:                                              ; preds = %97
  br i1 %96, label %124, label %150

124:                                              ; preds = %123
  %125 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %92, ptr noundef nonnull dereferenceable(7) @.str.1, i64 noundef 6) #18
  %126 = icmp eq i32 %125, 0
  br i1 %126, label %127, label %150

127:                                              ; preds = %124
  %128 = getelementptr inbounds %struct.parse, ptr %0, i64 0, i32 2
  %129 = load i32, ptr %128, align 8, !tbaa !59
  %130 = icmp eq i32 %129, 0
  br i1 %130, label %131, label %147

131:                                              ; preds = %127
  %132 = getelementptr inbounds %struct.parse, ptr %0, i64 0, i32 5
  %133 = load i64, ptr %132, align 8, !tbaa !55
  %134 = getelementptr inbounds %struct.parse, ptr %0, i64 0, i32 4
  %135 = load i64, ptr %134, align 8, !tbaa !52
  %136 = icmp slt i64 %133, %135
  br i1 %136, label %141, label %137

137:                                              ; preds = %131
  %138 = add nsw i64 %135, 1
  %139 = sdiv i64 %138, 2
  %140 = mul nsw i64 %139, 3
  tail call fastcc void @enlarge(ptr noundef %0, i64 noundef %140)
  br label %141

141:                                              ; preds = %137, %131
  %142 = getelementptr inbounds %struct.parse, ptr %0, i64 0, i32 3
  %143 = load ptr, ptr %142, align 8, !tbaa !54
  %144 = load i64, ptr %132, align 8, !tbaa !55
  %145 = add nsw i64 %144, 1
  store i64 %145, ptr %132, align 8, !tbaa !55
  %146 = getelementptr inbounds i64, ptr %143, i64 %144
  store i64 1342177280, ptr %146, align 8, !tbaa !73
  br label %147

147:                                              ; preds = %127, %141
  %148 = load ptr, ptr %0, align 8, !tbaa !57
  %149 = getelementptr inbounds i8, ptr %148, i64 6
  store ptr %149, ptr %0, align 8, !tbaa !57
  br label %707

150:                                              ; preds = %72, %124, %123
  %151 = icmp ult ptr %92, %95
  br i1 %151, label %152, label %157

152:                                              ; preds = %150
  %153 = load i8, ptr %92, align 1, !tbaa !76
  %154 = icmp eq i8 %153, 94
  br i1 %154, label %155, label %157

155:                                              ; preds = %152
  %156 = getelementptr inbounds i8, ptr %92, i64 1
  store ptr %156, ptr %0, align 8, !tbaa !57
  br label %157

157:                                              ; preds = %150, %152, %155
  %158 = phi i1 [ false, %155 ], [ true, %152 ], [ true, %150 ]
  %159 = load ptr, ptr %0, align 8, !tbaa !57
  %160 = icmp ult ptr %159, %95
  br i1 %160, label %161, label %177

161:                                              ; preds = %157
  %162 = load i8, ptr %159, align 1, !tbaa !76
  %163 = icmp eq i8 %162, 93
  br i1 %163, label %168, label %164

164:                                              ; preds = %161
  br i1 %160, label %165, label %177

165:                                              ; preds = %164
  %166 = load i8, ptr %159, align 1, !tbaa !76
  %167 = icmp eq i8 %166, 45
  br i1 %167, label %168, label %177

168:                                              ; preds = %165, %161
  %169 = phi i64 [ 93, %161 ], [ 45, %165 ]
  %170 = phi i8 [ 93, %161 ], [ 45, %165 ]
  %171 = getelementptr inbounds i8, ptr %159, i64 1
  store ptr %171, ptr %0, align 8, !tbaa !57
  %172 = getelementptr inbounds i8, ptr %84, i64 %169
  %173 = load i8, ptr %172, align 1, !tbaa !76
  %174 = or i8 %173, %87
  store i8 %174, ptr %172, align 1, !tbaa !76
  %175 = load i8, ptr %89, align 1, !tbaa !136
  %176 = add i8 %175, %170
  store i8 %176, ptr %89, align 1, !tbaa !136
  br label %177

177:                                              ; preds = %168, %157, %165, %164
  %178 = load ptr, ptr %0, align 8, !tbaa !57
  %179 = load ptr, ptr %94, align 8, !tbaa !58
  %180 = icmp ult ptr %178, %179
  br i1 %180, label %181, label %488

181:                                              ; preds = %177
  %182 = getelementptr inbounds %struct.parse, ptr %0, i64 0, i32 2
  %183 = getelementptr inbounds %struct.parse, ptr %0, i64 0, i32 2
  %184 = getelementptr inbounds %struct.parse, ptr %0, i64 0, i32 2
  %185 = getelementptr inbounds %struct.parse, ptr %0, i64 0, i32 2
  %186 = getelementptr inbounds %struct.parse, ptr %0, i64 0, i32 2
  %187 = getelementptr inbounds %struct.parse, ptr %0, i64 0, i32 2
  %188 = getelementptr inbounds %struct.parse, ptr %0, i64 0, i32 2
  %189 = getelementptr inbounds %struct.parse, ptr %0, i64 0, i32 2
  %190 = getelementptr inbounds %struct.parse, ptr %0, i64 0, i32 2
  %191 = getelementptr inbounds %struct.parse, ptr %0, i64 0, i32 2
  %192 = getelementptr inbounds %struct.parse, ptr %0, i64 0, i32 2
  %193 = getelementptr inbounds %struct.parse, ptr %0, i64 0, i32 2
  %194 = load i8, ptr %178, align 1, !tbaa !76
  %195 = icmp eq i8 %194, 93
  br i1 %195, label %473, label %199

196:                                              ; preds = %469
  %197 = load i8, ptr %470, align 1, !tbaa !76
  %198 = icmp eq i8 %197, 93
  br i1 %198, label %473, label %199, !llvm.loop !137

199:                                              ; preds = %181, %196
  %200 = phi i8 [ %197, %196 ], [ %194, %181 ]
  %201 = phi ptr [ %470, %196 ], [ %178, %181 ]
  %202 = phi ptr [ %471, %196 ], [ %179, %181 ]
  %203 = phi i1 [ %472, %196 ], [ %180, %181 ]
  %204 = getelementptr inbounds i8, ptr %201, i64 1
  %205 = icmp ult ptr %204, %202
  %206 = icmp eq i8 %200, 45
  %207 = and i1 %205, %206
  br i1 %207, label %208, label %211

208:                                              ; preds = %199
  %209 = load i8, ptr %204, align 1, !tbaa !76
  %210 = icmp eq i8 %209, 93
  br i1 %210, label %473, label %211

211:                                              ; preds = %208, %199
  switch i8 %200, label %220 [
    i8 91, label %212
    i8 45, label %215
  ]

212:                                              ; preds = %211
  br i1 %205, label %213, label %220

213:                                              ; preds = %212
  %214 = load i8, ptr %204, align 1, !tbaa !76
  br label %220

215:                                              ; preds = %211
  %216 = load i32, ptr %182, align 8, !tbaa !59
  %217 = icmp eq i32 %216, 0
  br i1 %217, label %218, label %219

218:                                              ; preds = %215
  store i32 11, ptr %182, align 8, !tbaa !59
  br label %219

219:                                              ; preds = %218, %215
  store ptr @nuls, ptr %0, align 8, !tbaa !57
  store ptr @nuls, ptr %94, align 8, !tbaa !58
  br label %469

220:                                              ; preds = %213, %212, %211
  %221 = phi i8 [ %214, %213 ], [ 0, %212 ], [ 0, %211 ]
  switch i8 %221, label %422 [
    i8 58, label %222
    i8 61, label %368
  ]

222:                                              ; preds = %220
  %223 = getelementptr inbounds i8, ptr %201, i64 2
  store ptr %223, ptr %0, align 8, !tbaa !57
  %224 = icmp ult ptr %223, %202
  br i1 %224, label %230, label %225

225:                                              ; preds = %222
  %226 = load i32, ptr %187, align 8, !tbaa !59
  %227 = icmp eq i32 %226, 0
  br i1 %227, label %228, label %229

228:                                              ; preds = %225
  store i32 7, ptr %187, align 8, !tbaa !59
  br label %229

229:                                              ; preds = %228, %225
  store ptr @nuls, ptr %0, align 8, !tbaa !57
  store ptr @nuls, ptr %94, align 8, !tbaa !58
  br label %230

230:                                              ; preds = %229, %222
  %231 = load ptr, ptr %0, align 8, !tbaa !57
  %232 = load i8, ptr %231, align 1, !tbaa !76
  switch i8 %232, label %238 [
    i8 93, label %233
    i8 45, label %233
  ]

233:                                              ; preds = %230, %230
  %234 = load i32, ptr %188, align 8, !tbaa !59
  %235 = icmp eq i32 %234, 0
  br i1 %235, label %236, label %237

236:                                              ; preds = %233
  store i32 4, ptr %188, align 8, !tbaa !59
  br label %237

237:                                              ; preds = %236, %233
  store ptr @nuls, ptr %0, align 8, !tbaa !57
  store ptr @nuls, ptr %94, align 8, !tbaa !58
  br label %238

238:                                              ; preds = %237, %230
  %239 = load ptr, ptr %0, align 8, !tbaa !57
  %240 = load ptr, ptr %94, align 8, !tbaa !58
  %241 = icmp ult ptr %239, %240
  br i1 %241, label %242, label %256

242:                                              ; preds = %238
  %243 = tail call ptr @__ctype_b_loc() #21
  br label %244

244:                                              ; preds = %242, %253
  %245 = phi ptr [ %239, %242 ], [ %254, %253 ]
  %246 = load ptr, ptr %243, align 8, !tbaa !112
  %247 = load i8, ptr %245, align 1, !tbaa !76
  %248 = sext i8 %247 to i64
  %249 = getelementptr inbounds i16, ptr %246, i64 %248
  %250 = load i16, ptr %249, align 2, !tbaa !113
  %251 = and i16 %250, 1024
  %252 = icmp eq i16 %251, 0
  br i1 %252, label %256, label %253

253:                                              ; preds = %244
  %254 = getelementptr inbounds i8, ptr %245, i64 1
  store ptr %254, ptr %0, align 8, !tbaa !57
  %255 = icmp eq ptr %254, %240
  br i1 %255, label %256, label %244, !llvm.loop !138

256:                                              ; preds = %253, %244, %238
  %257 = phi ptr [ %239, %238 ], [ %254, %253 ], [ %245, %244 ]
  %258 = ptrtoint ptr %257 to i64
  %259 = ptrtoint ptr %239 to i64
  %260 = sub i64 %258, %259
  br label %261

261:                                              ; preds = %256, %271
  %262 = phi i1 [ false, %256 ], [ %274, %271 ]
  %263 = phi ptr [ @.str.2, %256 ], [ %273, %271 ]
  %264 = phi ptr [ @cclasses, %256 ], [ %272, %271 ]
  %265 = tail call i32 @strncmp(ptr noundef nonnull %263, ptr noundef %239, i64 noundef %260) #18
  %266 = icmp eq i32 %265, 0
  br i1 %266, label %267, label %271

267:                                              ; preds = %261
  %268 = getelementptr inbounds i8, ptr %263, i64 %260
  %269 = load i8, ptr %268, align 1, !tbaa !76
  %270 = icmp eq i8 %269, 0
  br i1 %270, label %275, label %271

271:                                              ; preds = %267, %261
  %272 = getelementptr inbounds %struct.cclass, ptr %264, i64 1
  %273 = load ptr, ptr %272, align 8, !tbaa !139
  %274 = icmp eq ptr %273, null
  br i1 %274, label %276, label %261, !llvm.loop !141

275:                                              ; preds = %267
  br i1 %262, label %276, label %281

276:                                              ; preds = %271, %275
  %277 = load i32, ptr %190, align 8, !tbaa !59
  %278 = icmp eq i32 %277, 0
  br i1 %278, label %279, label %280

279:                                              ; preds = %276
  store i32 4, ptr %190, align 8, !tbaa !59
  br label %280

280:                                              ; preds = %279, %276
  store ptr @nuls, ptr %0, align 8, !tbaa !57
  store ptr @nuls, ptr %94, align 8, !tbaa !58
  br label %339

281:                                              ; preds = %275
  %282 = getelementptr inbounds %struct.cclass, ptr %264, i64 0, i32 1
  %283 = load ptr, ptr %282, align 8, !tbaa !142
  %284 = load i8, ptr %283, align 1, !tbaa !76
  %285 = icmp eq i8 %284, 0
  br i1 %285, label %300, label %286

286:                                              ; preds = %281, %286
  %287 = phi i8 [ %298, %286 ], [ %284, %281 ]
  %288 = phi ptr [ %289, %286 ], [ %283, %281 ]
  %289 = getelementptr inbounds i8, ptr %288, i64 1
  %290 = load i8, ptr %88, align 8, !tbaa !135
  %291 = load ptr, ptr %78, align 8, !tbaa !132
  %292 = zext i8 %287 to i64
  %293 = getelementptr inbounds i8, ptr %291, i64 %292
  %294 = load i8, ptr %293, align 1, !tbaa !76
  %295 = or i8 %294, %290
  store i8 %295, ptr %293, align 1, !tbaa !76
  %296 = load i8, ptr %89, align 1, !tbaa !136
  %297 = add i8 %296, %287
  store i8 %297, ptr %89, align 1, !tbaa !136
  %298 = load i8, ptr %289, align 1, !tbaa !76
  %299 = icmp eq i8 %298, 0
  br i1 %299, label %300, label %286, !llvm.loop !143

300:                                              ; preds = %286, %281
  %301 = getelementptr inbounds %struct.cclass, ptr %264, i64 0, i32 2
  %302 = load ptr, ptr %301, align 8, !tbaa !144
  %303 = load i8, ptr %302, align 1, !tbaa !76
  %304 = icmp eq i8 %303, 0
  br i1 %304, label %339, label %305

305:                                              ; preds = %300, %333
  %306 = phi ptr [ %336, %333 ], [ %302, %300 ]
  %307 = load i64, ptr %90, align 8, !tbaa !145
  %308 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %306) #18
  %309 = add i64 %307, 1
  %310 = add i64 %309, %308
  store i64 %310, ptr %90, align 8, !tbaa !145
  %311 = load ptr, ptr %91, align 8, !tbaa !146
  %312 = icmp eq ptr %311, null
  br i1 %312, label %313, label %315

313:                                              ; preds = %305
  %314 = tail call noalias ptr @malloc(i64 noundef %310) #19
  br label %317

315:                                              ; preds = %305
  %316 = tail call ptr @realloc(ptr noundef nonnull %311, i64 noundef %310) #20
  br label %317

317:                                              ; preds = %315, %313
  %318 = phi ptr [ %316, %315 ], [ %314, %313 ]
  store ptr %318, ptr %91, align 8, !tbaa !146
  %319 = icmp eq ptr %318, null
  br i1 %319, label %320, label %325

320:                                              ; preds = %317
  %321 = load i32, ptr %189, align 8, !tbaa !59
  %322 = icmp eq i32 %321, 0
  br i1 %322, label %323, label %324

323:                                              ; preds = %320
  store i32 12, ptr %189, align 8, !tbaa !59
  br label %324

324:                                              ; preds = %323, %320
  store ptr @nuls, ptr %0, align 8, !tbaa !57
  store ptr @nuls, ptr %94, align 8, !tbaa !58
  br label %333

325:                                              ; preds = %317
  %326 = getelementptr inbounds i8, ptr %318, i64 %307
  %327 = getelementptr inbounds i8, ptr %326, i64 -1
  %328 = tail call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %327, ptr noundef nonnull dereferenceable(1) %306) #17
  %329 = load ptr, ptr %91, align 8, !tbaa !146
  %330 = load i64, ptr %90, align 8, !tbaa !145
  %331 = getelementptr i8, ptr %329, i64 %330
  %332 = getelementptr i8, ptr %331, i64 -1
  store i8 0, ptr %332, align 1, !tbaa !76
  br label %333

333:                                              ; preds = %325, %324
  %334 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %306) #18
  %335 = add i64 %334, 1
  %336 = getelementptr inbounds i8, ptr %306, i64 %335
  %337 = load i8, ptr %336, align 1, !tbaa !76
  %338 = icmp eq i8 %337, 0
  br i1 %338, label %339, label %305, !llvm.loop !147

339:                                              ; preds = %333, %300, %280
  %340 = load ptr, ptr %0, align 8, !tbaa !57
  %341 = load ptr, ptr %94, align 8, !tbaa !58
  %342 = icmp ult ptr %340, %341
  br i1 %342, label %348, label %343

343:                                              ; preds = %339
  %344 = load i32, ptr %191, align 8, !tbaa !59
  %345 = icmp eq i32 %344, 0
  br i1 %345, label %346, label %347

346:                                              ; preds = %343
  store i32 7, ptr %191, align 8, !tbaa !59
  br label %347

347:                                              ; preds = %346, %343
  store ptr @nuls, ptr %0, align 8, !tbaa !57
  store ptr @nuls, ptr %94, align 8, !tbaa !58
  br label %348

348:                                              ; preds = %347, %339
  %349 = load ptr, ptr %0, align 8, !tbaa !57
  %350 = load ptr, ptr %94, align 8, !tbaa !58
  %351 = icmp ult ptr %349, %350
  br i1 %351, label %352, label %363

352:                                              ; preds = %348
  %353 = getelementptr inbounds i8, ptr %349, i64 1
  %354 = icmp ult ptr %353, %350
  br i1 %354, label %355, label %363

355:                                              ; preds = %352
  %356 = load i8, ptr %349, align 1, !tbaa !76
  %357 = icmp eq i8 %356, 58
  br i1 %357, label %358, label %363

358:                                              ; preds = %355
  %359 = load i8, ptr %353, align 1, !tbaa !76
  %360 = icmp eq i8 %359, 93
  br i1 %360, label %361, label %363

361:                                              ; preds = %358
  %362 = getelementptr inbounds i8, ptr %349, i64 2
  store ptr %362, ptr %0, align 8, !tbaa !57
  br label %469

363:                                              ; preds = %358, %355, %352, %348
  %364 = load i32, ptr %192, align 8, !tbaa !59
  %365 = icmp eq i32 %364, 0
  br i1 %365, label %366, label %367

366:                                              ; preds = %363
  store i32 4, ptr %192, align 8, !tbaa !59
  br label %367

367:                                              ; preds = %366, %363
  store ptr @nuls, ptr %0, align 8, !tbaa !57
  store ptr @nuls, ptr %94, align 8, !tbaa !58
  br label %469

368:                                              ; preds = %220
  %369 = getelementptr inbounds i8, ptr %201, i64 2
  store ptr %369, ptr %0, align 8, !tbaa !57
  %370 = icmp ult ptr %369, %202
  br i1 %370, label %376, label %371

371:                                              ; preds = %368
  %372 = load i32, ptr %183, align 8, !tbaa !59
  %373 = icmp eq i32 %372, 0
  br i1 %373, label %374, label %375

374:                                              ; preds = %371
  store i32 7, ptr %183, align 8, !tbaa !59
  br label %375

375:                                              ; preds = %374, %371
  store ptr @nuls, ptr %0, align 8, !tbaa !57
  store ptr @nuls, ptr %94, align 8, !tbaa !58
  br label %376

376:                                              ; preds = %375, %368
  %377 = load ptr, ptr %0, align 8, !tbaa !57
  %378 = load i8, ptr %377, align 1, !tbaa !76
  switch i8 %378, label %384 [
    i8 93, label %379
    i8 45, label %379
  ]

379:                                              ; preds = %376, %376
  %380 = load i32, ptr %184, align 8, !tbaa !59
  %381 = icmp eq i32 %380, 0
  br i1 %381, label %382, label %383

382:                                              ; preds = %379
  store i32 3, ptr %184, align 8, !tbaa !59
  br label %383

383:                                              ; preds = %382, %379
  store ptr @nuls, ptr %0, align 8, !tbaa !57
  store ptr @nuls, ptr %94, align 8, !tbaa !58
  br label %384

384:                                              ; preds = %383, %376
  %385 = tail call fastcc signext i8 @p_b_coll_elem(ptr noundef nonnull %0, i32 noundef 61)
  %386 = load i8, ptr %88, align 8, !tbaa !135
  %387 = load ptr, ptr %78, align 8, !tbaa !132
  %388 = zext i8 %385 to i64
  %389 = getelementptr inbounds i8, ptr %387, i64 %388
  %390 = load i8, ptr %389, align 1, !tbaa !76
  %391 = or i8 %390, %386
  store i8 %391, ptr %389, align 1, !tbaa !76
  %392 = load i8, ptr %89, align 1, !tbaa !136
  %393 = add i8 %392, %385
  store i8 %393, ptr %89, align 1, !tbaa !136
  %394 = load ptr, ptr %0, align 8, !tbaa !57
  %395 = load ptr, ptr %94, align 8, !tbaa !58
  %396 = icmp ult ptr %394, %395
  br i1 %396, label %402, label %397

397:                                              ; preds = %384
  %398 = load i32, ptr %185, align 8, !tbaa !59
  %399 = icmp eq i32 %398, 0
  br i1 %399, label %400, label %401

400:                                              ; preds = %397
  store i32 7, ptr %185, align 8, !tbaa !59
  br label %401

401:                                              ; preds = %400, %397
  store ptr @nuls, ptr %0, align 8, !tbaa !57
  store ptr @nuls, ptr %94, align 8, !tbaa !58
  br label %402

402:                                              ; preds = %401, %384
  %403 = load ptr, ptr %0, align 8, !tbaa !57
  %404 = load ptr, ptr %94, align 8, !tbaa !58
  %405 = icmp ult ptr %403, %404
  br i1 %405, label %406, label %417

406:                                              ; preds = %402
  %407 = getelementptr inbounds i8, ptr %403, i64 1
  %408 = icmp ult ptr %407, %404
  br i1 %408, label %409, label %417

409:                                              ; preds = %406
  %410 = load i8, ptr %403, align 1, !tbaa !76
  %411 = icmp eq i8 %410, 61
  br i1 %411, label %412, label %417

412:                                              ; preds = %409
  %413 = load i8, ptr %407, align 1, !tbaa !76
  %414 = icmp eq i8 %413, 93
  br i1 %414, label %415, label %417

415:                                              ; preds = %412
  %416 = getelementptr inbounds i8, ptr %403, i64 2
  store ptr %416, ptr %0, align 8, !tbaa !57
  br label %469

417:                                              ; preds = %412, %409, %406, %402
  %418 = load i32, ptr %186, align 8, !tbaa !59
  %419 = icmp eq i32 %418, 0
  br i1 %419, label %420, label %421

420:                                              ; preds = %417
  store i32 3, ptr %186, align 8, !tbaa !59
  br label %421

421:                                              ; preds = %420, %417
  store ptr @nuls, ptr %0, align 8, !tbaa !57
  store ptr @nuls, ptr %94, align 8, !tbaa !58
  br label %469

422:                                              ; preds = %220
  %423 = tail call fastcc signext i8 @p_b_symbol(ptr noundef nonnull %0)
  %424 = load ptr, ptr %0, align 8, !tbaa !57
  %425 = load ptr, ptr %94, align 8, !tbaa !58
  %426 = icmp ult ptr %424, %425
  br i1 %426, label %427, label %443

427:                                              ; preds = %422
  %428 = load i8, ptr %424, align 1, !tbaa !76
  %429 = icmp eq i8 %428, 45
  br i1 %429, label %430, label %443

430:                                              ; preds = %427
  %431 = getelementptr inbounds i8, ptr %424, i64 1
  %432 = icmp ult ptr %431, %425
  br i1 %432, label %433, label %443

433:                                              ; preds = %430
  %434 = load i8, ptr %431, align 1, !tbaa !76
  %435 = icmp eq i8 %434, 93
  br i1 %435, label %443, label %436

436:                                              ; preds = %433
  store ptr %431, ptr %0, align 8, !tbaa !57
  %437 = load i8, ptr %431, align 1, !tbaa !76
  %438 = icmp eq i8 %437, 45
  br i1 %438, label %439, label %441

439:                                              ; preds = %436
  %440 = getelementptr inbounds i8, ptr %424, i64 2
  store ptr %440, ptr %0, align 8, !tbaa !57
  br label %443

441:                                              ; preds = %436
  %442 = tail call fastcc signext i8 @p_b_symbol(ptr noundef nonnull %0)
  br label %443

443:                                              ; preds = %441, %439, %433, %430, %427, %422
  %444 = phi i8 [ 45, %439 ], [ %442, %441 ], [ %423, %433 ], [ %423, %430 ], [ %423, %427 ], [ %423, %422 ]
  %445 = sext i8 %423 to i32
  %446 = sext i8 %444 to i32
  %447 = icmp sgt i8 %423, %444
  br i1 %447, label %448, label %453

448:                                              ; preds = %443
  %449 = load i32, ptr %193, align 8, !tbaa !59
  %450 = icmp eq i32 %449, 0
  br i1 %450, label %451, label %452

451:                                              ; preds = %448
  store i32 11, ptr %193, align 8, !tbaa !59
  br label %452

452:                                              ; preds = %451, %448
  store ptr @nuls, ptr %0, align 8, !tbaa !57
  store ptr @nuls, ptr %94, align 8, !tbaa !58
  br label %453

453:                                              ; preds = %452, %443
  %454 = icmp sgt i8 %423, %444
  br i1 %454, label %469, label %455

455:                                              ; preds = %453, %455
  %456 = phi i32 [ %467, %455 ], [ %445, %453 ]
  %457 = load i8, ptr %88, align 8, !tbaa !135
  %458 = load ptr, ptr %78, align 8, !tbaa !132
  %459 = and i32 %456, 255
  %460 = zext nneg i32 %459 to i64
  %461 = getelementptr inbounds i8, ptr %458, i64 %460
  %462 = load i8, ptr %461, align 1, !tbaa !76
  %463 = or i8 %462, %457
  store i8 %463, ptr %461, align 1, !tbaa !76
  %464 = load i8, ptr %89, align 1, !tbaa !136
  %465 = trunc i32 %456 to i8
  %466 = add i8 %464, %465
  store i8 %466, ptr %89, align 1, !tbaa !136
  %467 = add nsw i32 %456, 1
  %468 = icmp eq i32 %456, %446
  br i1 %468, label %469, label %455, !llvm.loop !148

469:                                              ; preds = %455, %453, %219, %361, %367, %415, %421
  %470 = load ptr, ptr %0, align 8, !tbaa !57
  %471 = load ptr, ptr %94, align 8, !tbaa !58
  %472 = icmp ult ptr %470, %471
  br i1 %472, label %196, label %488, !llvm.loop !137

473:                                              ; preds = %208, %196, %181
  %474 = phi i1 [ %180, %181 ], [ %203, %208 ], [ %472, %196 ]
  %475 = phi ptr [ %178, %181 ], [ %201, %208 ], [ %470, %196 ]
  br i1 %474, label %476, label %488

476:                                              ; preds = %473
  %477 = load i8, ptr %475, align 1, !tbaa !76
  %478 = icmp eq i8 %477, 45
  br i1 %478, label %479, label %488

479:                                              ; preds = %476
  %480 = getelementptr inbounds i8, ptr %475, i64 1
  store ptr %480, ptr %0, align 8, !tbaa !57
  %481 = load i8, ptr %88, align 8, !tbaa !135
  %482 = load ptr, ptr %78, align 8, !tbaa !132
  %483 = getelementptr inbounds i8, ptr %482, i64 45
  %484 = load i8, ptr %483, align 1, !tbaa !76
  %485 = or i8 %484, %481
  store i8 %485, ptr %483, align 1, !tbaa !76
  %486 = load i8, ptr %89, align 1, !tbaa !136
  %487 = add i8 %486, 45
  store i8 %487, ptr %89, align 1, !tbaa !136
  br label %488

488:                                              ; preds = %469, %177, %473, %476, %479
  %489 = load ptr, ptr %0, align 8, !tbaa !57
  %490 = load ptr, ptr %94, align 8, !tbaa !58
  %491 = icmp ult ptr %489, %490
  br i1 %491, label %492, label %496

492:                                              ; preds = %488
  %493 = getelementptr inbounds i8, ptr %489, i64 1
  store ptr %493, ptr %0, align 8, !tbaa !57
  %494 = load i8, ptr %489, align 1, !tbaa !76
  %495 = icmp eq i8 %494, 93
  br i1 %495, label %502, label %496

496:                                              ; preds = %492, %488
  %497 = getelementptr inbounds %struct.parse, ptr %0, i64 0, i32 2
  %498 = load i32, ptr %497, align 8, !tbaa !59
  %499 = icmp eq i32 %498, 0
  br i1 %499, label %500, label %501

500:                                              ; preds = %496
  store i32 7, ptr %497, align 8, !tbaa !59
  br label %501

501:                                              ; preds = %496, %500
  store ptr @nuls, ptr %0, align 8, !tbaa !57
  store ptr @nuls, ptr %94, align 8, !tbaa !58
  br label %502

502:                                              ; preds = %501, %492
  %503 = getelementptr inbounds %struct.parse, ptr %0, i64 0, i32 2
  %504 = load i32, ptr %503, align 8, !tbaa !59
  %505 = icmp eq i32 %504, 0
  br i1 %505, label %506, label %707

506:                                              ; preds = %502
  %507 = load ptr, ptr %2, align 8, !tbaa !56
  %508 = getelementptr inbounds %struct.re_guts, ptr %507, i64 0, i32 6
  %509 = load i32, ptr %508, align 8, !tbaa !63
  %510 = and i32 %509, 2
  %511 = icmp eq i32 %510, 0
  br i1 %511, label %550, label %512

512:                                              ; preds = %506
  %513 = getelementptr inbounds %struct.re_guts, ptr %507, i64 0, i32 2
  %514 = load i32, ptr %513, align 8, !tbaa !61
  %515 = icmp sgt i32 %514, 0
  br i1 %515, label %516, label %550

516:                                              ; preds = %512
  %517 = zext nneg i32 %514 to i64
  br label %518

518:                                              ; preds = %516, %548
  %519 = phi i64 [ %517, %516 ], [ %520, %548 ]
  %520 = add nsw i64 %519, -1
  %521 = load ptr, ptr %78, align 8, !tbaa !132
  %522 = and i64 %520, 255
  %523 = getelementptr inbounds i8, ptr %521, i64 %522
  %524 = load i8, ptr %523, align 1, !tbaa !76
  %525 = load i8, ptr %88, align 8, !tbaa !135
  %526 = and i8 %525, %524
  %527 = icmp eq i8 %526, 0
  br i1 %527, label %548, label %528

528:                                              ; preds = %518
  %529 = tail call ptr @__ctype_b_loc() #21
  %530 = load ptr, ptr %529, align 8, !tbaa !112
  %531 = getelementptr inbounds i16, ptr %530, i64 %520
  %532 = load i16, ptr %531, align 2, !tbaa !113
  %533 = and i16 %532, 1024
  %534 = icmp eq i16 %533, 0
  br i1 %534, label %548, label %535

535:                                              ; preds = %528
  %536 = trunc i64 %520 to i32
  %537 = tail call fastcc signext i8 @othercase(i32 noundef %536)
  %538 = sext i8 %537 to i64
  %539 = and i64 %538, 4294967295
  %540 = icmp eq i64 %520, %539
  br i1 %540, label %548, label %541

541:                                              ; preds = %535
  %542 = zext i8 %537 to i64
  %543 = getelementptr inbounds i8, ptr %521, i64 %542
  %544 = load i8, ptr %543, align 1, !tbaa !76
  %545 = or i8 %544, %525
  store i8 %545, ptr %543, align 1, !tbaa !76
  %546 = load i8, ptr %89, align 1, !tbaa !136
  %547 = add i8 %546, %537
  store i8 %547, ptr %89, align 1, !tbaa !136
  br label %548

548:                                              ; preds = %518, %528, %541, %535
  %549 = icmp sgt i64 %519, 1
  br i1 %549, label %518, label %550, !llvm.loop !149

550:                                              ; preds = %548, %512, %506
  br i1 %158, label %596, label %551

551:                                              ; preds = %550
  %552 = load ptr, ptr %2, align 8, !tbaa !56
  %553 = getelementptr inbounds %struct.re_guts, ptr %552, i64 0, i32 2
  %554 = load i32, ptr %553, align 8, !tbaa !61
  %555 = icmp sgt i32 %554, 0
  br i1 %555, label %556, label %581

556:                                              ; preds = %551, %578
  %557 = phi i32 [ %558, %578 ], [ %554, %551 ]
  %558 = add nsw i32 %557, -1
  %559 = load ptr, ptr %78, align 8, !tbaa !132
  %560 = and i32 %558, 255
  %561 = zext nneg i32 %560 to i64
  %562 = getelementptr inbounds i8, ptr %559, i64 %561
  %563 = load i8, ptr %562, align 1, !tbaa !76
  %564 = load i8, ptr %88, align 8, !tbaa !135
  %565 = and i8 %564, %563
  %566 = icmp eq i8 %565, 0
  br i1 %566, label %573, label %567

567:                                              ; preds = %556
  %568 = xor i8 %564, -1
  %569 = and i8 %563, %568
  store i8 %569, ptr %562, align 1, !tbaa !76
  %570 = load i8, ptr %89, align 1, !tbaa !136
  %571 = trunc i32 %558 to i8
  %572 = sub i8 %570, %571
  br label %578

573:                                              ; preds = %556
  %574 = or i8 %564, %563
  store i8 %574, ptr %562, align 1, !tbaa !76
  %575 = load i8, ptr %89, align 1, !tbaa !136
  %576 = trunc i32 %558 to i8
  %577 = add i8 %575, %576
  br label %578

578:                                              ; preds = %567, %573
  %579 = phi i8 [ %572, %567 ], [ %577, %573 ]
  store i8 %579, ptr %89, align 1, !tbaa !136
  %580 = icmp sgt i32 %557, 1
  br i1 %580, label %556, label %581, !llvm.loop !150

581:                                              ; preds = %578, %551
  %582 = load ptr, ptr %2, align 8, !tbaa !56
  %583 = getelementptr inbounds %struct.re_guts, ptr %582, i64 0, i32 6
  %584 = load i32, ptr %583, align 8, !tbaa !63
  %585 = and i32 %584, 8
  %586 = icmp eq i32 %585, 0
  br i1 %586, label %596, label %587

587:                                              ; preds = %581
  %588 = load i8, ptr %88, align 8, !tbaa !135
  %589 = xor i8 %588, -1
  %590 = load ptr, ptr %78, align 8, !tbaa !132
  %591 = getelementptr inbounds i8, ptr %590, i64 10
  %592 = load i8, ptr %591, align 1, !tbaa !76
  %593 = and i8 %592, %589
  store i8 %593, ptr %591, align 1, !tbaa !76
  %594 = load i8, ptr %89, align 1, !tbaa !136
  %595 = add i8 %594, -10
  store i8 %595, ptr %89, align 1, !tbaa !136
  br label %596

596:                                              ; preds = %581, %587, %550
  %597 = load ptr, ptr %2, align 8, !tbaa !56
  %598 = getelementptr inbounds %struct.re_guts, ptr %597, i64 0, i32 2
  %599 = load i32, ptr %598, align 8, !tbaa !61
  %600 = sext i32 %599 to i64
  %601 = icmp eq i32 %599, 0
  br i1 %601, label %641, label %602

602:                                              ; preds = %596
  %603 = load ptr, ptr %78, align 8, !tbaa !132
  %604 = load i8, ptr %88, align 8, !tbaa !135
  br label %605

605:                                              ; preds = %602, %605
  %606 = phi i32 [ 0, %602 ], [ %615, %605 ]
  %607 = phi i32 [ 0, %602 ], [ %616, %605 ]
  %608 = and i32 %607, 255
  %609 = zext nneg i32 %608 to i64
  %610 = getelementptr inbounds i8, ptr %603, i64 %609
  %611 = load i8, ptr %610, align 1, !tbaa !76
  %612 = and i8 %604, %611
  %613 = icmp ne i8 %612, 0
  %614 = zext i1 %613 to i32
  %615 = add nuw nsw i32 %606, %614
  %616 = add i32 %607, 1
  %617 = zext i32 %616 to i64
  %618 = icmp ult i64 %617, %600
  br i1 %618, label %605, label %619, !llvm.loop !151

619:                                              ; preds = %605
  %620 = icmp eq i32 %615, 1
  br i1 %620, label %621, label %641

621:                                              ; preds = %619
  %622 = load ptr, ptr %78, align 8, !tbaa !132
  %623 = load i8, ptr %88, align 8, !tbaa !135
  br label %624

624:                                              ; preds = %621, %635
  %625 = phi i32 [ 0, %621 ], [ %636, %635 ]
  %626 = and i32 %625, 255
  %627 = zext nneg i32 %626 to i64
  %628 = getelementptr inbounds i8, ptr %622, i64 %627
  %629 = load i8, ptr %628, align 1, !tbaa !76
  %630 = and i8 %623, %629
  %631 = icmp eq i8 %630, 0
  br i1 %631, label %635, label %632

632:                                              ; preds = %624
  %633 = shl i32 %625, 24
  %634 = ashr exact i32 %633, 24
  br label %639

635:                                              ; preds = %624
  %636 = add i32 %625, 1
  %637 = zext i32 %636 to i64
  %638 = icmp ult i64 %637, %600
  br i1 %638, label %624, label %639, !llvm.loop !152

639:                                              ; preds = %635, %632
  %640 = phi i32 [ %634, %632 ], [ 0, %635 ]
  tail call fastcc void @ordinary(ptr noundef nonnull %0, i32 noundef %640)
  tail call fastcc void @freeset(ptr noundef nonnull %0, ptr noundef nonnull %78)
  br label %707

641:                                              ; preds = %596, %619
  %642 = load i8, ptr %89, align 1, !tbaa !136
  %643 = getelementptr inbounds %struct.re_guts, ptr %597, i64 0, i32 4
  %644 = load ptr, ptr %643, align 8, !tbaa !131
  %645 = getelementptr inbounds %struct.re_guts, ptr %597, i64 0, i32 3
  %646 = load i32, ptr %645, align 4, !tbaa !78
  %647 = sext i32 %646 to i64
  %648 = getelementptr inbounds %struct.cset, ptr %644, i64 %647
  %649 = icmp sgt i32 %646, 0
  br i1 %649, label %650, label %697

650:                                              ; preds = %641
  %651 = icmp eq i32 %599, 0
  br label %652

652:                                              ; preds = %650, %693
  %653 = phi ptr [ %644, %650 ], [ %694, %693 ]
  %654 = getelementptr inbounds %struct.cset, ptr %653, i64 0, i32 2
  %655 = load i8, ptr %654, align 1, !tbaa !136
  %656 = icmp ne i8 %655, %642
  %657 = icmp eq ptr %653, %78
  %658 = or i1 %657, %656
  br i1 %658, label %693, label %659

659:                                              ; preds = %652
  br i1 %651, label %690, label %660

660:                                              ; preds = %659
  %661 = load ptr, ptr %653, align 8, !tbaa !132
  %662 = getelementptr inbounds %struct.cset, ptr %653, i64 0, i32 1
  %663 = load i8, ptr %662, align 8, !tbaa !135
  %664 = load ptr, ptr %78, align 8, !tbaa !132
  %665 = load i8, ptr %88, align 8, !tbaa !135
  %666 = load i8, ptr %661, align 1, !tbaa !76
  %667 = and i8 %663, %666
  %668 = icmp ne i8 %667, 0
  %669 = load i8, ptr %664, align 1, !tbaa !76
  %670 = and i8 %665, %669
  %671 = icmp eq i8 %670, 0
  %672 = xor i1 %668, %671
  br i1 %672, label %673, label %690

673:                                              ; preds = %660, %678
  %674 = phi i32 [ %675, %678 ], [ 0, %660 ]
  %675 = add i32 %674, 1
  %676 = zext i32 %675 to i64
  %677 = icmp ult i64 %676, %600
  br i1 %677, label %678, label %690, !llvm.loop !153

678:                                              ; preds = %673
  %679 = and i32 %675, 255
  %680 = zext nneg i32 %679 to i64
  %681 = getelementptr inbounds i8, ptr %661, i64 %680
  %682 = load i8, ptr %681, align 1, !tbaa !76
  %683 = and i8 %663, %682
  %684 = icmp ne i8 %683, 0
  %685 = getelementptr inbounds i8, ptr %664, i64 %680
  %686 = load i8, ptr %685, align 1, !tbaa !76
  %687 = and i8 %665, %686
  %688 = icmp eq i8 %687, 0
  %689 = xor i1 %684, %688
  br i1 %689, label %673, label %690, !llvm.loop !153

690:                                              ; preds = %673, %678, %660, %659
  %691 = phi i64 [ 0, %659 ], [ 0, %660 ], [ %676, %678 ], [ %676, %673 ]
  %692 = icmp eq i64 %691, %600
  br i1 %692, label %696, label %693

693:                                              ; preds = %690, %652
  %694 = getelementptr inbounds %struct.cset, ptr %653, i64 1
  %695 = icmp ult ptr %694, %648
  br i1 %695, label %652, label %697, !llvm.loop !154

696:                                              ; preds = %690
  tail call fastcc void @freeset(ptr noundef nonnull %0, ptr noundef nonnull %78)
  br label %697

697:                                              ; preds = %693, %641, %696
  %698 = phi ptr [ %653, %696 ], [ %78, %641 ], [ %78, %693 ]
  %699 = load ptr, ptr %2, align 8, !tbaa !56
  %700 = getelementptr inbounds %struct.re_guts, ptr %699, i64 0, i32 4
  %701 = load ptr, ptr %700, align 8, !tbaa !131
  %702 = ptrtoint ptr %698 to i64
  %703 = ptrtoint ptr %701 to i64
  %704 = sub i64 %702, %703
  %705 = shl i64 %704, 27
  %706 = ashr i64 %705, 32
  tail call fastcc void @doemit(ptr noundef nonnull %0, i64 noundef 402653184, i64 noundef %706)
  br label %707

707:                                              ; preds = %639, %697, %502, %147, %120
  ret void
}

; Function Attrs: cold nounwind uwtable
define internal fastcc void @ordinary(ptr noundef %0, i32 noundef %1) unnamed_addr #0 !prof !108 !PGOFuncName !155 {
  %3 = alloca [3 x i8], align 1
  %4 = getelementptr inbounds %struct.parse, ptr %0, i64 0, i32 7
  %5 = load ptr, ptr %4, align 8, !tbaa !56
  %6 = getelementptr inbounds %struct.re_guts, ptr %5, i64 0, i32 14
  %7 = load ptr, ptr %6, align 8, !tbaa !71
  %8 = getelementptr inbounds %struct.re_guts, ptr %5, i64 0, i32 6
  %9 = load i32, ptr %8, align 8, !tbaa !63
  %10 = and i32 %9, 2
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %31, label %12, !prof !110

12:                                               ; preds = %2
  %13 = tail call ptr @__ctype_b_loc() #21
  %14 = load ptr, ptr %13, align 8, !tbaa !112
  %15 = sext i32 %1 to i64
  %16 = getelementptr inbounds i16, ptr %14, i64 %15
  %17 = load i16, ptr %16, align 2, !tbaa !113
  %18 = and i16 %17, 1024
  %19 = icmp eq i16 %18, 0
  br i1 %19, label %31, label %20

20:                                               ; preds = %12
  %21 = tail call fastcc signext i8 @othercase(i32 noundef %1)
  %22 = sext i8 %21 to i32
  %23 = icmp eq i32 %22, %1
  br i1 %23, label %31, label %24

24:                                               ; preds = %20
  %25 = load ptr, ptr %0, align 8, !tbaa !57
  %26 = getelementptr inbounds %struct.parse, ptr %0, i64 0, i32 1
  %27 = load ptr, ptr %26, align 8, !tbaa !58
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %3) #17
  store ptr %3, ptr %0, align 8, !tbaa !57
  %28 = getelementptr inbounds i8, ptr %3, i64 2
  store ptr %28, ptr %26, align 8, !tbaa !58
  %29 = trunc i32 %1 to i8
  store i8 %29, ptr %3, align 1, !tbaa !76
  %30 = getelementptr inbounds [3 x i8], ptr %3, i64 0, i64 1
  store i8 93, ptr %30, align 1, !tbaa !76
  store i8 0, ptr %28, align 1, !tbaa !76
  call fastcc void @p_bracket(ptr noundef nonnull %0)
  store ptr %25, ptr %0, align 8, !tbaa !57
  store ptr %27, ptr %26, align 8, !tbaa !58
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %3) #17
  br label %44

31:                                               ; preds = %20, %12, %2
  %32 = and i32 %1, 255
  %33 = zext nneg i32 %32 to i64
  tail call fastcc void @doemit(ptr noundef %0, i64 noundef 134217728, i64 noundef %33)
  %34 = sext i32 %1 to i64
  %35 = getelementptr inbounds i8, ptr %7, i64 %34
  %36 = load i8, ptr %35, align 1, !tbaa !76
  %37 = icmp eq i8 %36, 0
  br i1 %37, label %38, label %44, !prof !156

38:                                               ; preds = %31
  %39 = load ptr, ptr %4, align 8, !tbaa !56
  %40 = getelementptr inbounds %struct.re_guts, ptr %39, i64 0, i32 13
  %41 = load i32, ptr %40, align 4, !tbaa !70
  %42 = add nsw i32 %41, 1
  store i32 %42, ptr %40, align 4, !tbaa !70
  %43 = trunc i32 %41 to i8
  store i8 %43, ptr %35, align 1, !tbaa !76
  br label %44

44:                                               ; preds = %31, %38, %24
  ret void
}

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare ptr @__ctype_b_loc() local_unnamed_addr #8

; Function Attrs: cold nofree nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc i32 @p_count(ptr nocapture noundef %0) unnamed_addr #9 !prof !111 {
  %2 = getelementptr inbounds %struct.parse, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !58
  %4 = load ptr, ptr %0, align 8, !tbaa !57
  %5 = icmp ult ptr %4, %3
  br i1 %5, label %6, label %34

6:                                                ; preds = %1
  %7 = tail call ptr @__ctype_b_loc() #21
  br label %8

8:                                                ; preds = %6, %21
  %9 = phi i32 [ 0, %6 ], [ %28, %21 ]
  %10 = phi i32 [ 0, %6 ], [ %27, %21 ]
  %11 = phi ptr [ %4, %6 ], [ %23, %21 ]
  %12 = load ptr, ptr %7, align 8, !tbaa !112
  %13 = load i8, ptr %11, align 1, !tbaa !76
  %14 = sext i8 %13 to i64
  %15 = getelementptr inbounds i16, ptr %12, i64 %14
  %16 = load i16, ptr %15, align 2, !tbaa !113
  %17 = and i16 %16, 2048
  %18 = icmp ne i16 %17, 0
  %19 = icmp slt i32 %10, 256
  %20 = select i1 %18, i1 %19, i1 false
  br i1 %20, label %21, label %30

21:                                               ; preds = %8
  %22 = mul nsw i32 %10, 10
  %23 = getelementptr inbounds i8, ptr %11, i64 1
  store ptr %23, ptr %0, align 8, !tbaa !57
  %24 = load i8, ptr %11, align 1, !tbaa !76
  %25 = sext i8 %24 to i32
  %26 = add i32 %22, -48
  %27 = add i32 %26, %25
  %28 = add nuw nsw i32 %9, 1
  %29 = icmp eq ptr %23, %3
  br i1 %29, label %30, label %8, !llvm.loop !157

30:                                               ; preds = %8, %21
  %31 = phi i32 [ %27, %21 ], [ %10, %8 ]
  %32 = phi i32 [ 1, %21 ], [ %9, %8 ]
  %33 = icmp ne i32 %32, 0
  br label %34

34:                                               ; preds = %30, %1
  %35 = phi i32 [ 0, %1 ], [ %31, %30 ]
  %36 = phi i1 [ false, %1 ], [ %33, %30 ]
  %37 = getelementptr inbounds %struct.parse, ptr %0, i64 0, i32 1
  %38 = icmp slt i32 %35, 256
  %39 = select i1 %36, i1 %38, i1 false
  br i1 %39, label %46, label %40

40:                                               ; preds = %34
  %41 = getelementptr inbounds %struct.parse, ptr %0, i64 0, i32 2
  %42 = load i32, ptr %41, align 8, !tbaa !59
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %44, label %45

44:                                               ; preds = %40
  store i32 10, ptr %41, align 8, !tbaa !59
  br label %45

45:                                               ; preds = %40, %44
  store ptr @nuls, ptr %0, align 8, !tbaa !57
  store ptr @nuls, ptr %37, align 8, !tbaa !58
  br label %46

46:                                               ; preds = %34, %45
  ret i32 %35
}

; Function Attrs: cold nounwind uwtable
define internal fastcc void @repeat(ptr noundef %0, i64 noundef %1, i32 noundef %2, i32 noundef %3) unnamed_addr #0 !prof !111 {
  br label %5

5:                                                ; preds = %195, %177, %155, %4
  %6 = phi i64 [ %1, %4 ], [ %140, %155 ], [ %10, %177 ], [ %10, %195 ]
  %7 = phi i32 [ %2, %4 ], [ 1, %155 ], [ %178, %177 ], [ %196, %195 ]
  %8 = phi i32 [ %3, %4 ], [ %156, %155 ], [ %179, %177 ], [ %8, %195 ]
  %9 = getelementptr inbounds %struct.parse, ptr %0, i64 0, i32 5
  %10 = load i64, ptr %9, align 8, !tbaa !55
  %11 = getelementptr inbounds %struct.parse, ptr %0, i64 0, i32 2
  %12 = load i32, ptr %11, align 8, !tbaa !59
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %199

14:                                               ; preds = %5
  %15 = icmp slt i32 %7, 2
  %16 = icmp eq i32 %7, 256
  %17 = select i1 %16, i32 3, i32 2
  %18 = select i1 %15, i32 %7, i32 %17
  %19 = shl nsw i32 %18, 3
  %20 = icmp slt i32 %8, 2
  %21 = icmp eq i32 %8, 256
  %22 = select i1 %21, i32 3, i32 2
  %23 = select i1 %20, i32 %8, i32 %22
  %24 = add nsw i32 %19, %23
  switch i32 %24, label %197 [
    i32 0, label %25
    i32 1, label %26
    i32 2, label %26
    i32 3, label %26
    i32 9, label %199
    i32 10, label %83
    i32 11, label %157
    i32 18, label %162
    i32 19, label %180
  ]

25:                                               ; preds = %14
  store i64 %6, ptr %9, align 8, !tbaa !55
  br label %199

26:                                               ; preds = %14, %14, %14
  %27 = sub i64 %10, %6
  %28 = add i64 %27, 1
  tail call fastcc void @doinsert(ptr noundef %0, i64 noundef 1006632960, i64 noundef %28, i64 noundef %6)
  %29 = add nsw i64 %6, 1
  tail call fastcc void @repeat(ptr noundef %0, i64 noundef %29, i32 noundef 1, i32 noundef %8)
  %30 = load i64, ptr %9, align 8, !tbaa !55
  %31 = sub nsw i64 %30, %6
  tail call fastcc void @doemit(ptr noundef %0, i64 noundef 1073741824, i64 noundef %31)
  %32 = load i32, ptr %11, align 8, !tbaa !59
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %34, label %57

34:                                               ; preds = %26
  %35 = load i64, ptr %9, align 8, !tbaa !55
  %36 = sub nsw i64 %35, %6
  %37 = getelementptr inbounds %struct.parse, ptr %0, i64 0, i32 3
  %38 = load ptr, ptr %37, align 8, !tbaa !54
  %39 = getelementptr inbounds i64, ptr %38, i64 %6
  %40 = load i64, ptr %39, align 8, !tbaa !73
  %41 = and i64 %40, 2080374784
  %42 = or i64 %41, %36
  store i64 %42, ptr %39, align 8, !tbaa !73
  %43 = load i64, ptr %9, align 8, !tbaa !55
  %44 = getelementptr inbounds %struct.parse, ptr %0, i64 0, i32 4
  %45 = load i64, ptr %44, align 8, !tbaa !52
  %46 = icmp slt i64 %43, %45
  br i1 %46, label %51, label %47

47:                                               ; preds = %34
  %48 = add nsw i64 %45, 1
  %49 = sdiv i64 %48, 2
  %50 = mul nsw i64 %49, 3
  tail call fastcc void @enlarge(ptr noundef %0, i64 noundef %50)
  br label %51

51:                                               ; preds = %47, %34
  %52 = getelementptr inbounds %struct.parse, ptr %0, i64 0, i32 3
  %53 = load ptr, ptr %52, align 8, !tbaa !54
  %54 = load i64, ptr %9, align 8, !tbaa !55
  %55 = add nsw i64 %54, 1
  store i64 %55, ptr %9, align 8, !tbaa !55
  %56 = getelementptr inbounds i64, ptr %53, i64 %54
  store i64 1140850688, ptr %56, align 8, !tbaa !73
  br label %57

57:                                               ; preds = %26, %51
  %58 = load i32, ptr %11, align 8, !tbaa !59
  %59 = icmp eq i32 %58, 0
  br i1 %59, label %60, label %199

60:                                               ; preds = %57
  %61 = load i64, ptr %9, align 8, !tbaa !55
  %62 = getelementptr inbounds %struct.parse, ptr %0, i64 0, i32 3
  %63 = load ptr, ptr %62, align 8, !tbaa !54
  %64 = getelementptr i64, ptr %63, i64 %61
  %65 = getelementptr i64, ptr %64, i64 -1
  %66 = load i64, ptr %65, align 8, !tbaa !73
  %67 = and i64 %66, 2080374784
  %68 = or disjoint i64 %67, 1
  store i64 %68, ptr %65, align 8, !tbaa !73
  %69 = load i64, ptr %9, align 8, !tbaa !55
  %70 = getelementptr inbounds %struct.parse, ptr %0, i64 0, i32 4
  %71 = load i64, ptr %70, align 8, !tbaa !52
  %72 = icmp slt i64 %69, %71
  br i1 %72, label %77, label %73

73:                                               ; preds = %60
  %74 = add nsw i64 %71, 1
  %75 = sdiv i64 %74, 2
  %76 = mul nsw i64 %75, 3
  tail call fastcc void @enlarge(ptr noundef %0, i64 noundef %76)
  br label %77

77:                                               ; preds = %73, %60
  %78 = getelementptr inbounds %struct.parse, ptr %0, i64 0, i32 3
  %79 = load ptr, ptr %78, align 8, !tbaa !54
  %80 = load i64, ptr %9, align 8, !tbaa !55
  %81 = add nsw i64 %80, 1
  store i64 %81, ptr %9, align 8, !tbaa !55
  %82 = getelementptr inbounds i64, ptr %79, i64 %80
  store i64 1207959554, ptr %82, align 8, !tbaa !73
  br label %199

83:                                               ; preds = %14
  %84 = sub nsw i64 %10, %6
  %85 = add nsw i64 %84, 1
  tail call fastcc void @doinsert(ptr noundef %0, i64 noundef 1006632960, i64 noundef %85, i64 noundef %6)
  %86 = load i64, ptr %9, align 8, !tbaa !55
  %87 = sub nsw i64 %86, %6
  tail call fastcc void @doemit(ptr noundef %0, i64 noundef 1073741824, i64 noundef %87)
  %88 = load i32, ptr %11, align 8, !tbaa !59
  %89 = icmp eq i32 %88, 0
  br i1 %89, label %90, label %113

90:                                               ; preds = %83
  %91 = load i64, ptr %9, align 8, !tbaa !55
  %92 = sub nsw i64 %91, %6
  %93 = getelementptr inbounds %struct.parse, ptr %0, i64 0, i32 3
  %94 = load ptr, ptr %93, align 8, !tbaa !54
  %95 = getelementptr inbounds i64, ptr %94, i64 %6
  %96 = load i64, ptr %95, align 8, !tbaa !73
  %97 = and i64 %96, 2080374784
  %98 = or i64 %97, %92
  store i64 %98, ptr %95, align 8, !tbaa !73
  %99 = load i64, ptr %9, align 8, !tbaa !55
  %100 = getelementptr inbounds %struct.parse, ptr %0, i64 0, i32 4
  %101 = load i64, ptr %100, align 8, !tbaa !52
  %102 = icmp slt i64 %99, %101
  br i1 %102, label %107, label %103

103:                                              ; preds = %90
  %104 = add nsw i64 %101, 1
  %105 = sdiv i64 %104, 2
  %106 = mul nsw i64 %105, 3
  tail call fastcc void @enlarge(ptr noundef %0, i64 noundef %106)
  br label %107

107:                                              ; preds = %103, %90
  %108 = getelementptr inbounds %struct.parse, ptr %0, i64 0, i32 3
  %109 = load ptr, ptr %108, align 8, !tbaa !54
  %110 = load i64, ptr %9, align 8, !tbaa !55
  %111 = add nsw i64 %110, 1
  store i64 %111, ptr %9, align 8, !tbaa !55
  %112 = getelementptr inbounds i64, ptr %109, i64 %110
  store i64 1140850688, ptr %112, align 8, !tbaa !73
  br label %113

113:                                              ; preds = %83, %107
  %114 = load i32, ptr %11, align 8, !tbaa !59
  %115 = icmp eq i32 %114, 0
  br i1 %115, label %116, label %139

116:                                              ; preds = %113
  %117 = load i64, ptr %9, align 8, !tbaa !55
  %118 = getelementptr inbounds %struct.parse, ptr %0, i64 0, i32 3
  %119 = load ptr, ptr %118, align 8, !tbaa !54
  %120 = getelementptr i64, ptr %119, i64 %117
  %121 = getelementptr i64, ptr %120, i64 -1
  %122 = load i64, ptr %121, align 8, !tbaa !73
  %123 = and i64 %122, 2080374784
  %124 = or disjoint i64 %123, 1
  store i64 %124, ptr %121, align 8, !tbaa !73
  %125 = load i64, ptr %9, align 8, !tbaa !55
  %126 = getelementptr inbounds %struct.parse, ptr %0, i64 0, i32 4
  %127 = load i64, ptr %126, align 8, !tbaa !52
  %128 = icmp slt i64 %125, %127
  br i1 %128, label %133, label %129

129:                                              ; preds = %116
  %130 = add nsw i64 %127, 1
  %131 = sdiv i64 %130, 2
  %132 = mul nsw i64 %131, 3
  tail call fastcc void @enlarge(ptr noundef %0, i64 noundef %132)
  br label %133

133:                                              ; preds = %129, %116
  %134 = getelementptr inbounds %struct.parse, ptr %0, i64 0, i32 3
  %135 = load ptr, ptr %134, align 8, !tbaa !54
  %136 = load i64, ptr %9, align 8, !tbaa !55
  %137 = add nsw i64 %136, 1
  store i64 %137, ptr %9, align 8, !tbaa !55
  %138 = getelementptr inbounds i64, ptr %135, i64 %136
  store i64 1207959554, ptr %138, align 8, !tbaa !73
  br label %139

139:                                              ; preds = %113, %133
  %140 = load i64, ptr %9, align 8, !tbaa !55
  %141 = icmp eq i64 %10, %6
  br i1 %141, label %155, label %142

142:                                              ; preds = %139
  %143 = getelementptr inbounds %struct.parse, ptr %0, i64 0, i32 4
  %144 = load i64, ptr %143, align 8, !tbaa !52
  %145 = add nsw i64 %144, %84
  tail call fastcc void @enlarge(ptr noundef %0, i64 noundef %145)
  %146 = getelementptr inbounds %struct.parse, ptr %0, i64 0, i32 3
  %147 = load ptr, ptr %146, align 8, !tbaa !54
  %148 = load i64, ptr %9, align 8, !tbaa !55
  %149 = getelementptr inbounds i64, ptr %147, i64 %148
  %150 = getelementptr i64, ptr %147, i64 %6
  %151 = getelementptr i64, ptr %150, i64 1
  %152 = shl i64 %84, 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %149, ptr align 1 %151, i64 %152, i1 false)
  %153 = load i64, ptr %9, align 8, !tbaa !55
  %154 = add nsw i64 %153, %84
  store i64 %154, ptr %9, align 8, !tbaa !55
  br label %155

155:                                              ; preds = %139, %142
  %156 = add nsw i32 %8, -1
  br label %5

157:                                              ; preds = %14
  %158 = sub i64 %10, %6
  %159 = add i64 %158, 1
  tail call fastcc void @doinsert(ptr noundef %0, i64 noundef 603979776, i64 noundef %159, i64 noundef %6)
  %160 = load i64, ptr %9, align 8, !tbaa !55
  %161 = sub nsw i64 %160, %6
  tail call fastcc void @doemit(ptr noundef %0, i64 noundef 671088640, i64 noundef %161)
  br label %199

162:                                              ; preds = %14
  %163 = icmp eq i64 %10, %6
  br i1 %163, label %177, label %164

164:                                              ; preds = %162
  %165 = sub nsw i64 %10, %6
  %166 = getelementptr inbounds %struct.parse, ptr %0, i64 0, i32 4
  %167 = load i64, ptr %166, align 8, !tbaa !52
  %168 = add nsw i64 %167, %165
  tail call fastcc void @enlarge(ptr noundef %0, i64 noundef %168)
  %169 = getelementptr inbounds %struct.parse, ptr %0, i64 0, i32 3
  %170 = load ptr, ptr %169, align 8, !tbaa !54
  %171 = load i64, ptr %9, align 8, !tbaa !55
  %172 = getelementptr inbounds i64, ptr %170, i64 %171
  %173 = getelementptr inbounds i64, ptr %170, i64 %6
  %174 = shl i64 %165, 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %172, ptr align 1 %173, i64 %174, i1 false)
  %175 = load i64, ptr %9, align 8, !tbaa !55
  %176 = add nsw i64 %175, %165
  store i64 %176, ptr %9, align 8, !tbaa !55
  br label %177

177:                                              ; preds = %162, %164
  %178 = add nsw i32 %7, -1
  %179 = add nsw i32 %8, -1
  br label %5

180:                                              ; preds = %14
  %181 = icmp eq i64 %10, %6
  br i1 %181, label %195, label %182

182:                                              ; preds = %180
  %183 = sub nsw i64 %10, %6
  %184 = getelementptr inbounds %struct.parse, ptr %0, i64 0, i32 4
  %185 = load i64, ptr %184, align 8, !tbaa !52
  %186 = add nsw i64 %185, %183
  tail call fastcc void @enlarge(ptr noundef %0, i64 noundef %186)
  %187 = getelementptr inbounds %struct.parse, ptr %0, i64 0, i32 3
  %188 = load ptr, ptr %187, align 8, !tbaa !54
  %189 = load i64, ptr %9, align 8, !tbaa !55
  %190 = getelementptr inbounds i64, ptr %188, i64 %189
  %191 = getelementptr inbounds i64, ptr %188, i64 %6
  %192 = shl i64 %183, 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %190, ptr align 1 %191, i64 %192, i1 false)
  %193 = load i64, ptr %9, align 8, !tbaa !55
  %194 = add nsw i64 %193, %183
  store i64 %194, ptr %9, align 8, !tbaa !55
  br label %195

195:                                              ; preds = %180, %182
  %196 = add nsw i32 %7, -1
  br label %5

197:                                              ; preds = %14
  store i32 15, ptr %11, align 8, !tbaa !59
  store ptr @nuls, ptr %0, align 8, !tbaa !57
  %198 = getelementptr inbounds %struct.parse, ptr %0, i64 0, i32 1
  store ptr @nuls, ptr %198, align 8, !tbaa !58
  br label %199

199:                                              ; preds = %57, %14, %77, %25, %157, %197, %5
  ret void
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare i32 @strncmp(ptr nocapture noundef, ptr nocapture noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: cold mustprogress nofree nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc signext i8 @othercase(i32 noundef %0) unnamed_addr #10 !prof !111 {
  %2 = tail call ptr @__ctype_b_loc() #21
  %3 = load ptr, ptr %2, align 8, !tbaa !112
  %4 = sext i32 %0 to i64
  %5 = getelementptr inbounds i16, ptr %3, i64 %4
  %6 = load i16, ptr %5, align 2, !tbaa !113
  %7 = zext i16 %6 to i32
  %8 = and i32 %7, 256
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %15, label %10

10:                                               ; preds = %1
  %11 = add i32 %0, 128
  %12 = icmp ult i32 %11, 384
  br i1 %12, label %13, label %28

13:                                               ; preds = %10
  %14 = tail call ptr @__ctype_tolower_loc() #21
  br label %23

15:                                               ; preds = %1
  %16 = and i32 %7, 512
  %17 = icmp ne i32 %16, 0
  %18 = add i32 %0, 128
  %19 = icmp ult i32 %18, 384
  %20 = and i1 %17, %19
  br i1 %20, label %21, label %28

21:                                               ; preds = %15
  %22 = tail call ptr @__ctype_toupper_loc() #21
  br label %23

23:                                               ; preds = %13, %21
  %24 = phi ptr [ %22, %21 ], [ %14, %13 ]
  %25 = load ptr, ptr %24, align 8, !tbaa !112
  %26 = getelementptr inbounds i32, ptr %25, i64 %4
  %27 = load i32, ptr %26, align 4, !tbaa !158
  br label %28

28:                                               ; preds = %23, %10, %15
  %29 = phi i32 [ %0, %15 ], [ %0, %10 ], [ %27, %23 ]
  %30 = trunc i32 %29 to i8
  ret i8 %30
}

; Function Attrs: cold nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @freeset(ptr nocapture noundef readonly %0, ptr noundef %1) unnamed_addr #11 !prof !111 {
  %3 = getelementptr inbounds %struct.parse, ptr %0, i64 0, i32 7
  %4 = load ptr, ptr %3, align 8, !tbaa !56
  %5 = getelementptr inbounds %struct.re_guts, ptr %4, i64 0, i32 4
  %6 = load ptr, ptr %5, align 8, !tbaa !131
  %7 = getelementptr inbounds %struct.re_guts, ptr %4, i64 0, i32 3
  %8 = load i32, ptr %7, align 4, !tbaa !78
  %9 = sext i32 %8 to i64
  %10 = getelementptr inbounds %struct.cset, ptr %6, i64 %9
  %11 = getelementptr inbounds %struct.re_guts, ptr %4, i64 0, i32 2
  %12 = load i32, ptr %11, align 8, !tbaa !61
  %13 = sext i32 %12 to i64
  %14 = icmp eq i32 %12, 0
  br i1 %14, label %34, label %15

15:                                               ; preds = %2
  %16 = getelementptr inbounds %struct.cset, ptr %1, i64 0, i32 1
  %17 = getelementptr inbounds %struct.cset, ptr %1, i64 0, i32 2
  br label %18

18:                                               ; preds = %15, %18
  %19 = phi i32 [ 0, %15 ], [ %31, %18 ]
  %20 = load i8, ptr %16, align 8, !tbaa !135
  %21 = xor i8 %20, -1
  %22 = load ptr, ptr %1, align 8, !tbaa !132
  %23 = and i32 %19, 255
  %24 = zext nneg i32 %23 to i64
  %25 = getelementptr inbounds i8, ptr %22, i64 %24
  %26 = load i8, ptr %25, align 1, !tbaa !76
  %27 = and i8 %26, %21
  store i8 %27, ptr %25, align 1, !tbaa !76
  %28 = load i8, ptr %17, align 1, !tbaa !136
  %29 = trunc i32 %19 to i8
  %30 = sub i8 %28, %29
  store i8 %30, ptr %17, align 1, !tbaa !136
  %31 = add i32 %19, 1
  %32 = zext i32 %31 to i64
  %33 = icmp ult i64 %32, %13
  br i1 %33, label %18, label %34, !llvm.loop !159

34:                                               ; preds = %18, %2
  %35 = getelementptr inbounds %struct.cset, ptr %10, i64 -1
  %36 = icmp eq ptr %35, %1
  br i1 %36, label %37, label %42

37:                                               ; preds = %34
  %38 = load ptr, ptr %3, align 8, !tbaa !56
  %39 = getelementptr inbounds %struct.re_guts, ptr %38, i64 0, i32 3
  %40 = load i32, ptr %39, align 4, !tbaa !78
  %41 = add nsw i32 %40, -1
  store i32 %41, ptr %39, align 4, !tbaa !78
  br label %42

42:                                               ; preds = %37, %34
  ret void
}

; Function Attrs: mustprogress nounwind willreturn allockind("realloc") allocsize(1) memory(argmem: readwrite, inaccessiblemem: readwrite)
declare noalias noundef ptr @realloc(ptr allocptr nocapture noundef, i64 noundef) local_unnamed_addr #12

; Function Attrs: cold nofree nounwind memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc signext i8 @p_b_symbol(ptr nocapture noundef %0) unnamed_addr #13 !prof !111 {
  %2 = load ptr, ptr %0, align 8, !tbaa !57
  %3 = getelementptr inbounds %struct.parse, ptr %0, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !58
  %5 = icmp ult ptr %2, %4
  br i1 %5, label %12, label %6

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.parse, ptr %0, i64 0, i32 2
  %8 = load i32, ptr %7, align 8, !tbaa !59
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %11

10:                                               ; preds = %6
  store i32 7, ptr %7, align 8, !tbaa !59
  br label %11

11:                                               ; preds = %6, %10
  store ptr @nuls, ptr %0, align 8, !tbaa !57
  store ptr @nuls, ptr %3, align 8, !tbaa !58
  br label %12

12:                                               ; preds = %11, %1
  %13 = load ptr, ptr %0, align 8, !tbaa !57
  %14 = load ptr, ptr %3, align 8, !tbaa !58
  %15 = icmp ult ptr %13, %14
  br i1 %15, label %16, label %31

16:                                               ; preds = %12
  %17 = getelementptr inbounds i8, ptr %13, i64 1
  %18 = icmp ult ptr %17, %14
  br i1 %18, label %19, label %31

19:                                               ; preds = %16
  %20 = load i8, ptr %13, align 1, !tbaa !76
  %21 = icmp eq i8 %20, 91
  br i1 %21, label %22, label %31

22:                                               ; preds = %19
  %23 = load i8, ptr %17, align 1, !tbaa !76
  %24 = icmp eq i8 %23, 46
  br i1 %24, label %25, label %31

25:                                               ; preds = %22
  %26 = getelementptr inbounds i8, ptr %13, i64 2
  store ptr %26, ptr %0, align 8, !tbaa !57
  %27 = tail call fastcc signext i8 @p_b_coll_elem(ptr noundef nonnull %0, i32 noundef 46)
  %28 = load ptr, ptr %0, align 8, !tbaa !57
  %29 = load ptr, ptr %3, align 8, !tbaa !58
  %30 = icmp ult ptr %28, %29
  br i1 %30, label %34, label %45

31:                                               ; preds = %12, %16, %19, %22
  %32 = getelementptr inbounds i8, ptr %13, i64 1
  store ptr %32, ptr %0, align 8, !tbaa !57
  %33 = load i8, ptr %13, align 1, !tbaa !76
  br label %51

34:                                               ; preds = %25
  %35 = getelementptr inbounds i8, ptr %28, i64 1
  %36 = icmp ult ptr %35, %29
  br i1 %36, label %37, label %45

37:                                               ; preds = %34
  %38 = load i8, ptr %28, align 1, !tbaa !76
  %39 = icmp eq i8 %38, 46
  br i1 %39, label %40, label %45

40:                                               ; preds = %37
  %41 = load i8, ptr %35, align 1, !tbaa !76
  %42 = icmp eq i8 %41, 93
  br i1 %42, label %43, label %45

43:                                               ; preds = %40
  %44 = getelementptr inbounds i8, ptr %28, i64 2
  store ptr %44, ptr %0, align 8, !tbaa !57
  br label %51

45:                                               ; preds = %25, %34, %37, %40
  %46 = getelementptr inbounds %struct.parse, ptr %0, i64 0, i32 2
  %47 = load i32, ptr %46, align 8, !tbaa !59
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %49, label %50

49:                                               ; preds = %45
  store i32 3, ptr %46, align 8, !tbaa !59
  br label %50

50:                                               ; preds = %45, %49
  store ptr @nuls, ptr %0, align 8, !tbaa !57
  store ptr @nuls, ptr %3, align 8, !tbaa !58
  br label %51

51:                                               ; preds = %50, %43, %31
  %52 = phi i8 [ %33, %31 ], [ %27, %43 ], [ %27, %50 ]
  ret i8 %52
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: readwrite)
declare ptr @strcpy(ptr noalias noundef returned writeonly, ptr noalias nocapture noundef readonly) local_unnamed_addr #14

; Function Attrs: cold nofree nounwind memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc signext i8 @p_b_coll_elem(ptr nocapture noundef %0, i32 noundef %1) unnamed_addr #13 !prof !111 {
  %3 = load ptr, ptr %0, align 8, !tbaa !57
  %4 = getelementptr inbounds %struct.parse, ptr %0, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !58
  %6 = icmp ult ptr %3, %5
  br i1 %6, label %7, label %24

7:                                                ; preds = %2, %19
  %8 = phi i1 [ %20, %19 ], [ %6, %2 ]
  %9 = phi ptr [ %10, %19 ], [ %3, %2 ]
  %10 = getelementptr inbounds i8, ptr %9, i64 1
  %11 = icmp ult ptr %10, %5
  br i1 %11, label %12, label %19

12:                                               ; preds = %7
  %13 = load i8, ptr %9, align 1, !tbaa !76
  %14 = sext i8 %13 to i32
  %15 = icmp eq i32 %14, %1
  br i1 %15, label %16, label %19

16:                                               ; preds = %12
  %17 = load i8, ptr %10, align 1, !tbaa !76
  %18 = icmp eq i8 %17, 93
  br i1 %18, label %22, label %19

19:                                               ; preds = %12, %7, %16
  store ptr %10, ptr %0, align 8, !tbaa !57
  %20 = icmp ult ptr %10, %5
  %21 = icmp eq ptr %10, %5
  br i1 %21, label %24, label %7, !llvm.loop !160

22:                                               ; preds = %16
  %23 = getelementptr inbounds %struct.parse, ptr %0, i64 0, i32 1
  br i1 %8, label %33, label %26

24:                                               ; preds = %19, %2
  %25 = getelementptr inbounds %struct.parse, ptr %0, i64 0, i32 1
  br label %26

26:                                               ; preds = %24, %22
  %27 = phi ptr [ %25, %24 ], [ %23, %22 ]
  %28 = getelementptr inbounds %struct.parse, ptr %0, i64 0, i32 2
  %29 = load i32, ptr %28, align 8, !tbaa !59
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %26
  store i32 7, ptr %28, align 8, !tbaa !59
  br label %32

32:                                               ; preds = %26, %31
  store ptr @nuls, ptr %0, align 8, !tbaa !57
  store ptr @nuls, ptr %27, align 8, !tbaa !58
  br label %66

33:                                               ; preds = %22
  %34 = ptrtoint ptr %9 to i64
  %35 = ptrtoint ptr %3 to i64
  %36 = sub i64 %34, %35
  %37 = shl i64 %36, 32
  %38 = ashr exact i64 %37, 32
  br label %39

39:                                               ; preds = %33, %51
  %40 = phi ptr [ @.str.27, %33 ], [ %53, %51 ]
  %41 = phi ptr [ @cnames, %33 ], [ %52, %51 ]
  %42 = tail call i32 @strncmp(ptr noundef nonnull %40, ptr noundef %3, i64 noundef %38) #18
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %44, label %51

44:                                               ; preds = %39
  %45 = getelementptr inbounds i8, ptr %40, i64 %38
  %46 = load i8, ptr %45, align 1, !tbaa !76
  %47 = icmp eq i8 %46, 0
  br i1 %47, label %48, label %51

48:                                               ; preds = %44
  %49 = getelementptr inbounds %struct.cname, ptr %41, i64 0, i32 1
  %50 = load i8, ptr %49, align 8, !tbaa !161
  br label %66

51:                                               ; preds = %39, %44
  %52 = getelementptr inbounds %struct.cname, ptr %41, i64 1
  %53 = load ptr, ptr %52, align 8, !tbaa !163
  %54 = icmp eq ptr %53, null
  br i1 %54, label %55, label %39, !llvm.loop !164

55:                                               ; preds = %51
  %56 = and i64 %36, 4294967295
  %57 = icmp eq i64 %56, 1
  br i1 %57, label %58, label %60

58:                                               ; preds = %55
  %59 = load i8, ptr %3, align 1, !tbaa !76
  br label %66

60:                                               ; preds = %55
  %61 = getelementptr inbounds %struct.parse, ptr %0, i64 0, i32 2
  %62 = load i32, ptr %61, align 8, !tbaa !59
  %63 = icmp eq i32 %62, 0
  br i1 %63, label %64, label %65

64:                                               ; preds = %60
  store i32 3, ptr %61, align 8, !tbaa !59
  br label %65

65:                                               ; preds = %60, %64
  store ptr @nuls, ptr %0, align 8, !tbaa !57
  store ptr @nuls, ptr %23, align 8, !tbaa !58
  br label %66

66:                                               ; preds = %65, %58, %48, %32
  %67 = phi i8 [ %50, %48 ], [ %59, %58 ], [ 0, %65 ], [ 0, %32 ]
  ret i8 %67
}

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare ptr @__ctype_tolower_loc() local_unnamed_addr #8

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare ptr @__ctype_toupper_loc() local_unnamed_addr #8

; Function Attrs: cold mustprogress nounwind willreturn uwtable
define internal fastcc void @enlarge(ptr nocapture noundef %0, i64 noundef %1) unnamed_addr #6 !prof !111 {
  %3 = getelementptr inbounds %struct.parse, ptr %0, i64 0, i32 4
  %4 = load i64, ptr %3, align 8, !tbaa !52
  %5 = icmp slt i64 %4, %1
  br i1 %5, label %6, label %20

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.parse, ptr %0, i64 0, i32 3
  %8 = load ptr, ptr %7, align 8, !tbaa !54
  %9 = shl i64 %1, 3
  %10 = tail call ptr @realloc(ptr noundef %8, i64 noundef %9) #20
  %11 = icmp eq ptr %10, null
  br i1 %11, label %12, label %19

12:                                               ; preds = %6
  %13 = getelementptr inbounds %struct.parse, ptr %0, i64 0, i32 2
  %14 = load i32, ptr %13, align 8, !tbaa !59
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %12
  store i32 12, ptr %13, align 8, !tbaa !59
  br label %17

17:                                               ; preds = %12, %16
  store ptr @nuls, ptr %0, align 8, !tbaa !57
  %18 = getelementptr inbounds %struct.parse, ptr %0, i64 0, i32 1
  store ptr @nuls, ptr %18, align 8, !tbaa !58
  br label %20

19:                                               ; preds = %6
  store ptr %10, ptr %7, align 8, !tbaa !54
  store i64 %1, ptr %3, align 8, !tbaa !52
  br label %20

20:                                               ; preds = %2, %19, %17
  ret void
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #15

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr nocapture writeonly, ptr nocapture readonly, i64, i1 immarg) #15

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smax.i64(i64, i64) #16

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #16

attributes #0 = { cold nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nofree nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #6 = { cold mustprogress nounwind willreturn uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree nosync nounwind willreturn memory(none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { cold nofree nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { cold mustprogress nofree nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { cold nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { mustprogress nounwind willreturn allockind("realloc") allocsize(1) memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { cold nofree nounwind memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { mustprogress nofree nounwind willreturn memory(argmem: readwrite) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #16 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #17 = { nounwind }
attributes #18 = { nounwind willreturn memory(read) }
attributes #19 = { nounwind allocsize(0) }
attributes #20 = { nounwind allocsize(1) }
attributes #21 = { nounwind willreturn memory(none) }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !33}
!llvm.ident = !{!41}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 1, !"ProfileSummary", !5}
!5 = !{!6, !7, !8, !9, !10, !11, !12, !13, !14, !15}
!6 = !{!"ProfileFormat", !"InstrProf"}
!7 = !{!"TotalCount", i64 71759502456}
!8 = !{!"MaxCount", i64 6437746295}
!9 = !{!"MaxInternalCount", i64 6437746295}
!10 = !{!"MaxFunctionCount", i64 4086992896}
!11 = !{!"NumCounts", i64 3105}
!12 = !{!"NumFunctions", i64 247}
!13 = !{!"IsPartialProfile", i64 0}
!14 = !{!"PartialProfileRatio", double 0.000000e+00}
!15 = !{!"DetailedSummary", !16}
!16 = !{!17, !18, !19, !20, !21, !22, !23, !24, !25, !26, !27, !28, !29, !30, !31, !32}
!17 = !{i32 10000, i64 6437746295, i32 1}
!18 = !{i32 100000, i64 6429262894, i32 2}
!19 = !{i32 200000, i64 6273947450, i32 3}
!20 = !{i32 300000, i64 4086992896, i32 5}
!21 = !{i32 400000, i64 4086990118, i32 7}
!22 = !{i32 500000, i64 3500958832, i32 9}
!23 = !{i32 600000, i64 2110410321, i32 10}
!24 = !{i32 700000, i64 2043496448, i32 13}
!25 = !{i32 800000, i64 2030599974, i32 17}
!26 = !{i32 900000, i64 778157900, i32 22}
!27 = !{i32 950000, i64 477845251, i32 29}
!28 = !{i32 990000, i64 428072471, i32 35}
!29 = !{i32 999000, i64 4254510, i32 72}
!30 = !{i32 999900, i64 290502, i32 105}
!31 = !{i32 999990, i64 19030, i32 222}
!32 = !{i32 999999, i64 3606, i32 249}
!33 = !{i32 5, !"CG Profile", !34}
!34 = distinct !{!35, !36, !37, !38, !39, !40}
!35 = !{ptr @regcomp, ptr @strlen, i64 2}
!36 = !{ptr @regcomp, ptr @malloc, i64 6}
!37 = !{ptr @regcomp, ptr @p_bre, i64 2}
!38 = !{ptr @regcomp, ptr @realloc, i64 2}
!39 = !{ptr @p_bre, ptr @ordinary, i64 10}
!40 = !{ptr @ordinary, ptr @doemit, i64 10}
!41 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!42 = !{!"function_entry_count", i64 2}
!43 = !{!"branch_weights", i32 0, i32 2}
!44 = !{!"branch_weights", i32 2, i32 0}
!45 = !{!46, !51, i64 16}
!46 = !{!"", !47, i64 0, !50, i64 8, !51, i64 16, !51, i64 24}
!47 = !{!"int", !48, i64 0}
!48 = !{!"omnipotent char", !49, i64 0}
!49 = !{!"Simple C/C++ TBAA"}
!50 = !{!"long", !48, i64 0}
!51 = !{!"any pointer", !48, i64 0}
!52 = !{!53, !50, i64 32}
!53 = !{!"parse", !51, i64 0, !51, i64 8, !47, i64 16, !51, i64 24, !50, i64 32, !50, i64 40, !47, i64 48, !51, i64 56, !48, i64 64, !48, i64 144}
!54 = !{!53, !51, i64 24}
!55 = !{!53, !50, i64 40}
!56 = !{!53, !51, i64 56}
!57 = !{!53, !51, i64 0}
!58 = !{!53, !51, i64 8}
!59 = !{!53, !47, i64 16}
!60 = !{!53, !47, i64 48}
!61 = !{!62, !47, i64 16}
!62 = !{!"re_guts", !47, i64 0, !51, i64 8, !47, i64 16, !47, i64 20, !51, i64 24, !51, i64 32, !47, i64 40, !50, i64 48, !50, i64 56, !50, i64 64, !47, i64 72, !47, i64 76, !47, i64 80, !47, i64 84, !51, i64 88, !51, i64 96, !47, i64 104, !50, i64 112, !47, i64 120, !50, i64 128, !48, i64 136}
!63 = !{!62, !47, i64 40}
!64 = !{!62, !47, i64 72}
!65 = !{!62, !47, i64 76}
!66 = !{!62, !47, i64 80}
!67 = !{!62, !51, i64 96}
!68 = !{!62, !47, i64 104}
!69 = !{!62, !50, i64 112}
!70 = !{!62, !47, i64 84}
!71 = !{!62, !51, i64 88}
!72 = !{!62, !47, i64 120}
!73 = !{!50, !50, i64 0}
!74 = !{!62, !50, i64 56}
!75 = !{!62, !50, i64 64}
!76 = !{!48, !48, i64 0}
!77 = !{!"branch_weights", i32 508, i32 4}
!78 = !{!62, !47, i64 20}
!79 = !{!"branch_weights", i32 0, i32 1}
!80 = !{!62, !51, i64 32}
!81 = !{!"branch_weights", i32 1, i32 0}
!82 = distinct !{!82, !83, !84}
!83 = !{!"llvm.loop.mustprogress"}
!84 = !{!"llvm.loop.unroll.disable"}
!85 = distinct !{!85, !83, !84}
!86 = distinct !{!86, !83, !84}
!87 = !{!"branch_weights", i32 2, i32 510}
!88 = distinct !{!88, !83, !84}
!89 = !{!62, !50, i64 48}
!90 = !{!62, !51, i64 8}
!91 = !{!"branch_weights", i32 6, i32 8, i32 0, i32 0, i32 0, i32 0, i32 0}
!92 = !{!"branch_weights", i32 2, i32 6}
!93 = !{!"branch_weights", i32 2, i32 4}
!94 = !{!"branch_weights", i32 2, i32 12}
!95 = distinct !{!95, !83, !84}
!96 = !{!"branch_weights", i32 127, i32 1}
!97 = !{!"branch_weights", i32 8, i32 0}
!98 = distinct !{!98, !83, !84}
!99 = !{!"branch_weights", i32 385, i32 127}
!100 = distinct !{!100, !83, !84}
!101 = !{!"branch_weights", i32 14, i32 0, i32 0}
!102 = distinct !{!102, !83, !84}
!103 = !{!62, !50, i64 128}
!104 = !{!62, !47, i64 0}
!105 = !{!46, !50, i64 8}
!106 = !{!46, !51, i64 24}
!107 = !{!46, !47, i64 0}
!108 = !{!"function_entry_count", i64 10}
!109 = !{!"regex-alpha/regcomp.c;doemit"}
!110 = !{!"branch_weights", i32 10, i32 0}
!111 = !{!"function_entry_count", i64 0}
!112 = !{!51, !51, i64 0}
!113 = !{!114, !114, i64 0}
!114 = !{!"short", !48, i64 0}
!115 = distinct !{!115, !83, !84}
!116 = distinct !{!116, !83, !84}
!117 = distinct !{!117, !84}
!118 = distinct !{!118, !83, !84}
!119 = !{!"regex-alpha/regcomp.c;p_bre"}
!120 = !{!"branch_weights", i32 8, i32 2}
!121 = !{!"branch_weights", i32 0, i32 8}
!122 = !{!"branch_weights", i32 0, i32 10}
!123 = !{!"branch_weights", i32 10, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0}
!124 = !{!"branch_weights", i32 6, i32 2}
!125 = !{!"branch_weights", i32 0, i32 6}
!126 = distinct !{!126, !83, !84}
!127 = !{!"branch_weights", i32 2, i32 8}
!128 = !{!"branch_weights", i32 513, i32 127}
!129 = distinct !{!129, !83, !84}
!130 = distinct !{!130, !83, !84}
!131 = !{!62, !51, i64 24}
!132 = !{!133, !51, i64 0}
!133 = !{!"", !51, i64 0, !48, i64 8, !48, i64 9, !50, i64 16, !51, i64 24}
!134 = distinct !{!134, !83, !84}
!135 = !{!133, !48, i64 8}
!136 = !{!133, !48, i64 9}
!137 = distinct !{!137, !83, !84}
!138 = distinct !{!138, !83, !84}
!139 = !{!140, !51, i64 0}
!140 = !{!"cclass", !51, i64 0, !51, i64 8, !51, i64 16}
!141 = distinct !{!141, !83, !84}
!142 = !{!140, !51, i64 8}
!143 = distinct !{!143, !83, !84}
!144 = !{!140, !51, i64 16}
!145 = !{!133, !50, i64 16}
!146 = !{!133, !51, i64 24}
!147 = distinct !{!147, !83, !84}
!148 = distinct !{!148, !83, !84}
!149 = distinct !{!149, !83, !84}
!150 = distinct !{!150, !83, !84}
!151 = distinct !{!151, !83, !84}
!152 = distinct !{!152, !83, !84}
!153 = distinct !{!153, !83, !84}
!154 = distinct !{!154, !83, !84}
!155 = !{!"regex-alpha/regcomp.c;ordinary"}
!156 = !{!"branch_weights", i32 4, i32 6}
!157 = distinct !{!157, !83, !84}
!158 = !{!47, !47, i64 0}
!159 = distinct !{!159, !83, !84}
!160 = distinct !{!160, !83, !84}
!161 = !{!162, !48, i64 8}
!162 = !{!"cname", !51, i64 0, !48, i64 8}
!163 = !{!162, !51, i64 0}
!164 = distinct !{!164, !83, !84}
