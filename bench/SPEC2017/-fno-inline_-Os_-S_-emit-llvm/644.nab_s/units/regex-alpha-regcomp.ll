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

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @regcomp(ptr noundef %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = alloca %struct.parse, align 8
  call void @llvm.lifetime.start.p0(i64 224, ptr nonnull %4) #24
  %5 = and i32 %2, -129
  %6 = and i32 %2, 1
  %7 = icmp eq i32 %6, 0
  %8 = and i32 %2, 16
  %9 = icmp eq i32 %8, 0
  %10 = and i32 %2, 17
  %11 = icmp eq i32 %10, 17
  br i1 %11, label %90, label %12

12:                                               ; preds = %3
  %13 = and i32 %2, 32
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %23, label %15

15:                                               ; preds = %12
  %16 = getelementptr inbounds %struct.regex_t, ptr %0, i64 0, i32 2
  %17 = load ptr, ptr %16, align 8, !tbaa !6
  %18 = icmp ult ptr %17, %1
  br i1 %18, label %90, label %19

19:                                               ; preds = %15
  %20 = ptrtoint ptr %17 to i64
  %21 = ptrtoint ptr %1 to i64
  %22 = sub i64 %20, %21
  br label %25

23:                                               ; preds = %12
  %24 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #25
  br label %25

25:                                               ; preds = %23, %19
  %26 = phi i64 [ %22, %19 ], [ %24, %23 ]
  %27 = tail call noalias dereferenceable_or_null(399) ptr @malloc(i64 noundef 399) #26
  %28 = icmp eq ptr %27, null
  br i1 %28, label %90, label %29

29:                                               ; preds = %25
  %30 = lshr i64 %26, 1
  %31 = mul i64 %30, 3
  %32 = add i64 %31, 1
  %33 = icmp uge i64 %32, %26
  %34 = icmp ult i64 %32, 1152921504606846976
  %35 = and i1 %33, %34
  br i1 %35, label %37, label %36

36:                                               ; preds = %29
  tail call void @free(ptr noundef nonnull %27) #27
  br label %90

37:                                               ; preds = %29
  %38 = getelementptr inbounds %struct.parse, ptr %4, i64 0, i32 4
  store i64 %32, ptr %38, align 8, !tbaa !13
  %39 = shl nuw nsw i64 %32, 3
  %40 = tail call noalias ptr @malloc(i64 noundef %39) #26
  %41 = getelementptr inbounds %struct.parse, ptr %4, i64 0, i32 3
  store ptr %40, ptr %41, align 8, !tbaa !15
  %42 = getelementptr inbounds %struct.parse, ptr %4, i64 0, i32 5
  store i64 0, ptr %42, align 8, !tbaa !16
  %43 = icmp eq ptr %40, null
  br i1 %43, label %44, label %45

44:                                               ; preds = %37
  tail call void @free(ptr noundef nonnull %27) #27
  br label %90

45:                                               ; preds = %37
  %46 = getelementptr inbounds %struct.parse, ptr %4, i64 0, i32 7
  store ptr %27, ptr %46, align 8, !tbaa !17
  store ptr %1, ptr %4, align 8, !tbaa !18
  %47 = getelementptr inbounds i8, ptr %1, i64 %26
  %48 = getelementptr inbounds %struct.parse, ptr %4, i64 0, i32 1
  store ptr %47, ptr %48, align 8, !tbaa !19
  %49 = getelementptr inbounds %struct.parse, ptr %4, i64 0, i32 2
  store i32 0, ptr %49, align 8, !tbaa !20
  %50 = getelementptr inbounds %struct.parse, ptr %4, i64 0, i32 6
  store i32 0, ptr %50, align 8, !tbaa !21
  %51 = getelementptr inbounds i8, ptr %4, i64 64
  %52 = getelementptr inbounds %struct.re_guts, ptr %27, i64 0, i32 2
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(160) %51, i8 0, i64 160, i1 false)
  store i32 256, ptr %52, align 8, !tbaa !22
  %53 = getelementptr inbounds %struct.re_guts, ptr %27, i64 0, i32 3
  %54 = getelementptr inbounds %struct.re_guts, ptr %27, i64 0, i32 6
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %53, i8 0, i64 20, i1 false)
  store i32 %5, ptr %54, align 8, !tbaa !24
  %55 = getelementptr inbounds %struct.re_guts, ptr %27, i64 0, i32 10
  store i32 0, ptr %55, align 8, !tbaa !25
  %56 = getelementptr inbounds %struct.re_guts, ptr %27, i64 0, i32 11
  store i32 0, ptr %56, align 4, !tbaa !26
  %57 = getelementptr inbounds %struct.re_guts, ptr %27, i64 0, i32 12
  store i32 0, ptr %57, align 8, !tbaa !27
  %58 = getelementptr inbounds %struct.re_guts, ptr %27, i64 0, i32 15
  store ptr null, ptr %58, align 8, !tbaa !28
  %59 = getelementptr inbounds %struct.re_guts, ptr %27, i64 0, i32 16
  store i32 0, ptr %59, align 8, !tbaa !29
  %60 = getelementptr inbounds %struct.re_guts, ptr %27, i64 0, i32 17
  store i64 0, ptr %60, align 8, !tbaa !30
  %61 = getelementptr inbounds %struct.re_guts, ptr %27, i64 0, i32 13
  store i32 1, ptr %61, align 4, !tbaa !31
  %62 = getelementptr inbounds %struct.re_guts, ptr %27, i64 0, i32 20
  %63 = getelementptr inbounds %struct.re_guts, ptr %27, i64 1, i32 18
  %64 = getelementptr inbounds %struct.re_guts, ptr %27, i64 0, i32 14
  store ptr %63, ptr %64, align 8, !tbaa !32
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(256) %62, i8 0, i64 256, i1 false)
  %65 = getelementptr inbounds %struct.re_guts, ptr %27, i64 0, i32 18
  store i32 0, ptr %65, align 8, !tbaa !33
  call fastcc void @doemit(ptr noundef nonnull %4, i64 noundef 67108864, i64 noundef 0) #28
  %66 = load i64, ptr %42, align 8, !tbaa !16
  %67 = add nsw i64 %66, -1
  %68 = getelementptr inbounds %struct.re_guts, ptr %27, i64 0, i32 8
  store i64 %67, ptr %68, align 8, !tbaa !34
  br i1 %7, label %70, label %69

69:                                               ; preds = %45
  call fastcc void @p_ere(ptr noundef nonnull %4, i32 noundef 128) #28
  br label %73

70:                                               ; preds = %45
  br i1 %9, label %72, label %71

71:                                               ; preds = %70
  call fastcc void @p_str(ptr noundef nonnull %4) #28
  br label %73

72:                                               ; preds = %70
  call fastcc void @p_bre(ptr noundef nonnull %4, i32 noundef 128, i32 noundef 128) #28
  br label %73

73:                                               ; preds = %71, %72, %69
  call fastcc void @doemit(ptr noundef nonnull %4, i64 noundef 67108864, i64 noundef 0) #28
  %74 = load i64, ptr %42, align 8, !tbaa !16
  %75 = add nsw i64 %74, -1
  %76 = getelementptr inbounds %struct.re_guts, ptr %27, i64 0, i32 9
  store i64 %75, ptr %76, align 8, !tbaa !35
  call fastcc void @categorize(ptr noundef nonnull %4, ptr noundef nonnull %27) #28
  call fastcc void @stripsnug(ptr noundef nonnull %4, ptr noundef nonnull %27) #28
  call fastcc void @findmust(ptr noundef nonnull %4, ptr noundef nonnull %27) #28
  %77 = call fastcc i64 @pluscount(ptr noundef nonnull %4, ptr noundef nonnull %27) #28
  %78 = getelementptr inbounds %struct.re_guts, ptr %27, i64 0, i32 19
  store i64 %77, ptr %78, align 8, !tbaa !36
  store i32 53829, ptr %27, align 8, !tbaa !37
  %79 = load i64, ptr %60, align 8, !tbaa !30
  %80 = getelementptr inbounds %struct.regex_t, ptr %0, i64 0, i32 1
  store i64 %79, ptr %80, align 8, !tbaa !38
  %81 = getelementptr inbounds %struct.regex_t, ptr %0, i64 0, i32 3
  store ptr %27, ptr %81, align 8, !tbaa !39
  store i32 62053, ptr %0, align 8, !tbaa !40
  %82 = load i32, ptr %55, align 8, !tbaa !25
  %83 = and i32 %82, 4
  %84 = icmp eq i32 %83, 0
  br i1 %84, label %86, label %85

85:                                               ; preds = %73
  call fastcc void @seterr(ptr noundef nonnull %4, i32 noundef 15) #28
  br label %86

86:                                               ; preds = %85, %73
  %87 = load i32, ptr %49, align 8, !tbaa !20
  %88 = icmp eq i32 %87, 0
  br i1 %88, label %90, label %89

89:                                               ; preds = %86
  tail call void @regfree(ptr noundef nonnull %0) #27
  br label %90

90:                                               ; preds = %86, %89, %36, %25, %15, %3, %44
  %91 = phi i32 [ 12, %44 ], [ 16, %36 ], [ 16, %3 ], [ 16, %15 ], [ 12, %25 ], [ %87, %89 ], [ 0, %86 ]
  call void @llvm.lifetime.end.p0(i64 224, ptr nonnull %4) #24
  ret i32 %91
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(argmem: read)
declare i64 @strlen(ptr nocapture noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind optsize willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nounwind optsize willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #5

; Function Attrs: mustprogress noinline nounwind optsize willreturn uwtable
define internal fastcc void @doemit(ptr nocapture noundef %0, i64 noundef %1, i64 noundef %2) unnamed_addr #6 {
  %4 = getelementptr inbounds %struct.parse, ptr %0, i64 0, i32 2
  %5 = load i32, ptr %4, align 8, !tbaa !20
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %25

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.parse, ptr %0, i64 0, i32 5
  %9 = load i64, ptr %8, align 8, !tbaa !16
  %10 = getelementptr inbounds %struct.parse, ptr %0, i64 0, i32 4
  %11 = load i64, ptr %10, align 8, !tbaa !13
  %12 = icmp slt i64 %9, %11
  br i1 %12, label %18, label %13

13:                                               ; preds = %7
  %14 = add nsw i64 %11, 1
  %15 = sdiv i64 %14, 2
  %16 = mul nsw i64 %15, 3
  tail call fastcc void @enlarge(ptr noundef nonnull %0, i64 noundef %16) #28
  %17 = load i64, ptr %8, align 8, !tbaa !16
  br label %18

18:                                               ; preds = %13, %7
  %19 = phi i64 [ %17, %13 ], [ %9, %7 ]
  %20 = or i64 %2, %1
  %21 = getelementptr inbounds %struct.parse, ptr %0, i64 0, i32 3
  %22 = load ptr, ptr %21, align 8, !tbaa !15
  %23 = add nsw i64 %19, 1
  store i64 %23, ptr %8, align 8, !tbaa !16
  %24 = getelementptr inbounds i64, ptr %22, i64 %19
  store i64 %20, ptr %24, align 8, !tbaa !41
  br label %25

25:                                               ; preds = %3, %18
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @p_ere(ptr nocapture noundef %0, i32 noundef %1) unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.parse, ptr %0, i64 0, i32 5
  %4 = getelementptr inbounds %struct.parse, ptr %0, i64 0, i32 1
  br label %5

5:                                                ; preds = %51, %2
  %6 = phi i64 [ undef, %2 ], [ %59, %51 ]
  %7 = phi i64 [ undef, %2 ], [ %57, %51 ]
  %8 = phi i1 [ false, %2 ], [ true, %51 ]
  %9 = load i64, ptr %3, align 8, !tbaa !16
  %10 = load ptr, ptr %0, align 8, !tbaa !18
  %11 = load ptr, ptr %4, align 8, !tbaa !19
  %12 = icmp ult ptr %10, %11
  br i1 %12, label %13, label %34

13:                                               ; preds = %5
  %14 = load i8, ptr %10, align 1, !tbaa !42
  %15 = icmp eq i8 %14, 124
  %16 = sext i8 %14 to i32
  %17 = icmp eq i32 %16, %1
  %18 = or i1 %15, %17
  br i1 %18, label %29, label %25

19:                                               ; preds = %25
  %20 = load i8, ptr %26, align 1, !tbaa !42
  %21 = icmp eq i8 %20, 124
  %22 = sext i8 %20 to i32
  %23 = icmp eq i32 %22, %1
  %24 = or i1 %21, %23
  br i1 %24, label %29, label %25, !llvm.loop !43

25:                                               ; preds = %13, %19
  tail call fastcc void @p_ere_exp(ptr noundef nonnull %0) #28
  %26 = load ptr, ptr %0, align 8, !tbaa !18
  %27 = load ptr, ptr %4, align 8, !tbaa !19
  %28 = icmp ult ptr %26, %27
  br i1 %28, label %19, label %29, !llvm.loop !43

29:                                               ; preds = %19, %25, %13
  %30 = phi ptr [ %11, %13 ], [ %27, %25 ], [ %27, %19 ]
  %31 = phi ptr [ %10, %13 ], [ %26, %25 ], [ %26, %19 ]
  %32 = load i64, ptr %3, align 8, !tbaa !16
  %33 = icmp eq i64 %32, %9
  br i1 %33, label %34, label %37

34:                                               ; preds = %5, %29
  tail call fastcc void @seterr(ptr noundef nonnull %0, i32 noundef 14) #28
  %35 = load ptr, ptr %0, align 8, !tbaa !18
  %36 = load ptr, ptr %4, align 8, !tbaa !19
  br label %37

37:                                               ; preds = %34, %29
  %38 = phi ptr [ %36, %34 ], [ %30, %29 ]
  %39 = phi ptr [ %35, %34 ], [ %31, %29 ]
  %40 = icmp ult ptr %39, %38
  br i1 %40, label %41, label %60

41:                                               ; preds = %37
  %42 = load i8, ptr %39, align 1, !tbaa !42
  %43 = icmp eq i8 %42, 124
  br i1 %43, label %44, label %60

44:                                               ; preds = %41
  %45 = getelementptr inbounds i8, ptr %39, i64 1
  store ptr %45, ptr %0, align 8, !tbaa !18
  %46 = load i64, ptr %3, align 8, !tbaa !16
  br i1 %8, label %51, label %47

47:                                               ; preds = %44
  %48 = sub i64 %46, %9
  %49 = add i64 %48, 1
  tail call fastcc void @doinsert(ptr noundef nonnull %0, i64 noundef 1006632960, i64 noundef %49, i64 noundef %9) #28
  %50 = load i64, ptr %3, align 8, !tbaa !16
  br label %51

51:                                               ; preds = %47, %44
  %52 = phi i64 [ %50, %47 ], [ %46, %44 ]
  %53 = phi i64 [ %9, %47 ], [ %6, %44 ]
  %54 = phi i64 [ %9, %47 ], [ %7, %44 ]
  %55 = sub nsw i64 %52, %54
  tail call fastcc void @doemit(ptr noundef nonnull %0, i64 noundef 1073741824, i64 noundef %55) #28
  %56 = load i64, ptr %3, align 8, !tbaa !16
  %57 = add nsw i64 %56, -1
  %58 = sub nsw i64 %56, %53
  tail call fastcc void @dofwd(ptr noundef nonnull %0, i64 noundef %53, i64 noundef %58) #28
  %59 = load i64, ptr %3, align 8, !tbaa !16
  tail call fastcc void @doemit(ptr noundef nonnull %0, i64 noundef 1140850688, i64 noundef 0) #28
  br label %5

60:                                               ; preds = %41, %37
  br i1 %8, label %61, label %66

61:                                               ; preds = %60
  %62 = load i64, ptr %3, align 8, !tbaa !16
  %63 = sub nsw i64 %62, %6
  tail call fastcc void @dofwd(ptr noundef nonnull %0, i64 noundef %6, i64 noundef %63) #28
  %64 = load i64, ptr %3, align 8, !tbaa !16
  %65 = sub nsw i64 %64, %7
  tail call fastcc void @doemit(ptr noundef nonnull %0, i64 noundef 1207959552, i64 noundef %65) #28
  br label %66

66:                                               ; preds = %61, %60
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @p_str(ptr nocapture noundef %0) unnamed_addr #0 {
  %2 = load ptr, ptr %0, align 8, !tbaa !18
  %3 = getelementptr inbounds %struct.parse, ptr %0, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !19
  %5 = icmp ult ptr %2, %4
  br i1 %5, label %9, label %6

6:                                                ; preds = %1
  tail call fastcc void @seterr(ptr noundef nonnull %0, i32 noundef 14) #28
  %7 = load ptr, ptr %0, align 8, !tbaa !18
  %8 = load ptr, ptr %3, align 8, !tbaa !19
  br label %9

9:                                                ; preds = %6, %1
  %10 = phi ptr [ %8, %6 ], [ %4, %1 ]
  %11 = phi ptr [ %7, %6 ], [ %2, %1 ]
  %12 = icmp ult ptr %11, %10
  br i1 %12, label %13, label %21

13:                                               ; preds = %9, %13
  %14 = phi ptr [ %18, %13 ], [ %11, %9 ]
  %15 = getelementptr inbounds i8, ptr %14, i64 1
  store ptr %15, ptr %0, align 8, !tbaa !18
  %16 = load i8, ptr %14, align 1, !tbaa !42
  %17 = sext i8 %16 to i32
  tail call fastcc void @ordinary(ptr noundef nonnull %0, i32 noundef %17) #28
  %18 = load ptr, ptr %0, align 8, !tbaa !18
  %19 = load ptr, ptr %3, align 8, !tbaa !19
  %20 = icmp ult ptr %18, %19
  br i1 %20, label %13, label %21, !llvm.loop !45

21:                                               ; preds = %13, %9
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @p_bre(ptr nocapture noundef %0, i32 noundef %1, i32 noundef %2) unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.parse, ptr %0, i64 0, i32 5
  %5 = load i64, ptr %4, align 8, !tbaa !16
  %6 = load ptr, ptr %0, align 8, !tbaa !18
  %7 = getelementptr inbounds %struct.parse, ptr %0, i64 0, i32 1
  %8 = load ptr, ptr %7, align 8, !tbaa !19
  %9 = icmp ult ptr %6, %8
  br i1 %9, label %10, label %25

10:                                               ; preds = %3
  %11 = load i8, ptr %6, align 1, !tbaa !42
  %12 = icmp eq i8 %11, 94
  br i1 %12, label %13, label %25

13:                                               ; preds = %10
  %14 = getelementptr inbounds i8, ptr %6, i64 1
  store ptr %14, ptr %0, align 8, !tbaa !18
  tail call fastcc void @doemit(ptr noundef nonnull %0, i64 noundef 201326592, i64 noundef 0) #28
  %15 = getelementptr inbounds %struct.parse, ptr %0, i64 0, i32 7
  %16 = load ptr, ptr %15, align 8, !tbaa !17
  %17 = getelementptr inbounds %struct.re_guts, ptr %16, i64 0, i32 10
  %18 = load i32, ptr %17, align 8, !tbaa !25
  %19 = or i32 %18, 1
  store i32 %19, ptr %17, align 8, !tbaa !25
  %20 = getelementptr inbounds %struct.re_guts, ptr %16, i64 0, i32 11
  %21 = load i32, ptr %20, align 4, !tbaa !26
  %22 = add nsw i32 %21, 1
  store i32 %22, ptr %20, align 4, !tbaa !26
  %23 = load ptr, ptr %0, align 8, !tbaa !18
  %24 = load ptr, ptr %7, align 8, !tbaa !19
  br label %25

25:                                               ; preds = %3, %10, %13
  %26 = phi ptr [ %8, %3 ], [ %8, %10 ], [ %24, %13 ]
  %27 = phi ptr [ %6, %3 ], [ %6, %10 ], [ %23, %13 ]
  %28 = icmp ult ptr %27, %26
  br i1 %28, label %29, label %63

29:                                               ; preds = %25, %44
  %30 = phi ptr [ %47, %44 ], [ %26, %25 ]
  %31 = phi ptr [ %46, %44 ], [ %27, %25 ]
  %32 = phi i32 [ %45, %44 ], [ 0, %25 ]
  %33 = phi i32 [ 0, %44 ], [ 1, %25 ]
  %34 = getelementptr inbounds i8, ptr %31, i64 1
  %35 = icmp ult ptr %34, %30
  br i1 %35, label %36, label %44

36:                                               ; preds = %29
  %37 = load i8, ptr %31, align 1, !tbaa !42
  %38 = sext i8 %37 to i32
  %39 = icmp eq i32 %38, %1
  br i1 %39, label %40, label %44

40:                                               ; preds = %36
  %41 = load i8, ptr %34, align 1, !tbaa !42
  %42 = sext i8 %41 to i32
  %43 = icmp eq i32 %42, %2
  br i1 %43, label %49, label %44

44:                                               ; preds = %36, %29, %40
  %45 = tail call fastcc i32 @p_simp_re(ptr noundef nonnull %0, i32 noundef %33) #28, !range !46
  %46 = load ptr, ptr %0, align 8, !tbaa !18
  %47 = load ptr, ptr %7, align 8, !tbaa !19
  %48 = icmp ult ptr %46, %47
  br i1 %48, label %29, label %49, !llvm.loop !47

49:                                               ; preds = %40, %44
  %50 = phi i32 [ %32, %40 ], [ %45, %44 ]
  %51 = icmp eq i32 %50, 0
  %52 = load i64, ptr %4, align 8, !tbaa !16
  br i1 %51, label %65, label %53

53:                                               ; preds = %49
  %54 = add nsw i64 %52, -1
  store i64 %54, ptr %4, align 8, !tbaa !16
  tail call fastcc void @doemit(ptr noundef nonnull %0, i64 noundef 268435456, i64 noundef 0) #28
  %55 = getelementptr inbounds %struct.parse, ptr %0, i64 0, i32 7
  %56 = load ptr, ptr %55, align 8, !tbaa !17
  %57 = getelementptr inbounds %struct.re_guts, ptr %56, i64 0, i32 10
  %58 = load i32, ptr %57, align 8, !tbaa !25
  %59 = or i32 %58, 2
  store i32 %59, ptr %57, align 8, !tbaa !25
  %60 = getelementptr inbounds %struct.re_guts, ptr %56, i64 0, i32 12
  %61 = load i32, ptr %60, align 8, !tbaa !27
  %62 = add nsw i32 %61, 1
  store i32 %62, ptr %60, align 8, !tbaa !27
  br label %63

63:                                               ; preds = %25, %53
  %64 = load i64, ptr %4, align 8, !tbaa !16
  br label %65

65:                                               ; preds = %63, %49
  %66 = phi i64 [ %52, %49 ], [ %64, %63 ]
  %67 = icmp eq i64 %66, %5
  br i1 %67, label %68, label %69

68:                                               ; preds = %65
  tail call fastcc void @seterr(ptr noundef nonnull %0, i32 noundef 14) #28
  br label %69

69:                                               ; preds = %68, %65
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @categorize(ptr nocapture noundef readonly %0, ptr nocapture noundef %1) unnamed_addr #7 {
  %3 = getelementptr inbounds %struct.re_guts, ptr %1, i64 0, i32 14
  %4 = load ptr, ptr %3, align 8, !tbaa !32
  %5 = getelementptr inbounds %struct.parse, ptr %0, i64 0, i32 2
  %6 = load i32, ptr %5, align 8, !tbaa !20
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %40

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.re_guts, ptr %1, i64 0, i32 13
  br label %10

10:                                               ; preds = %8, %37
  %11 = phi i64 [ -128, %8 ], [ %38, %37 ]
  %12 = getelementptr inbounds i8, ptr %4, i64 %11
  %13 = load i8, ptr %12, align 1, !tbaa !42
  %14 = icmp eq i8 %13, 0
  br i1 %14, label %15, label %37

15:                                               ; preds = %10
  %16 = trunc i64 %11 to i32
  %17 = tail call fastcc i32 @isinsets(ptr noundef %1, i32 noundef %16) #28, !range !46
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %37, label %19

19:                                               ; preds = %15
  %20 = load i32, ptr %9, align 4, !tbaa !31
  %21 = add nsw i32 %20, 1
  store i32 %21, ptr %9, align 4, !tbaa !31
  %22 = trunc i32 %20 to i8
  store i8 %22, ptr %12, align 1, !tbaa !42
  %23 = icmp slt i64 %11, 127
  br i1 %23, label %24, label %37

24:                                               ; preds = %19, %35
  %25 = phi i64 [ %26, %35 ], [ %11, %19 ]
  %26 = add nsw i64 %25, 1
  %27 = getelementptr inbounds i8, ptr %4, i64 %26
  %28 = load i8, ptr %27, align 1, !tbaa !42
  %29 = icmp eq i8 %28, 0
  br i1 %29, label %30, label %35

30:                                               ; preds = %24
  %31 = trunc i64 %26 to i32
  %32 = tail call fastcc i32 @samesets(ptr noundef %1, i32 noundef %16, i32 noundef %31) #28, !range !46
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %35, label %34

34:                                               ; preds = %30
  store i8 %22, ptr %27, align 1, !tbaa !42
  br label %35

35:                                               ; preds = %24, %30, %34
  %36 = icmp eq i64 %26, 127
  br i1 %36, label %37, label %24, !llvm.loop !48

37:                                               ; preds = %35, %19, %10, %15
  %38 = add nsw i64 %11, 1
  %39 = icmp eq i64 %38, 128
  br i1 %39, label %40, label %10, !llvm.loop !49

40:                                               ; preds = %37, %2
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize willreturn uwtable
define internal fastcc void @stripsnug(ptr nocapture noundef %0, ptr nocapture noundef writeonly %1) unnamed_addr #6 {
  %3 = getelementptr inbounds %struct.parse, ptr %0, i64 0, i32 5
  %4 = load i64, ptr %3, align 8, !tbaa !16
  %5 = getelementptr inbounds %struct.re_guts, ptr %1, i64 0, i32 7
  store i64 %4, ptr %5, align 8, !tbaa !50
  %6 = getelementptr inbounds %struct.parse, ptr %0, i64 0, i32 3
  %7 = load ptr, ptr %6, align 8, !tbaa !15
  %8 = shl i64 %4, 3
  %9 = tail call ptr @realloc(ptr noundef %7, i64 noundef %8) #29
  %10 = getelementptr inbounds %struct.re_guts, ptr %1, i64 0, i32 1
  store ptr %9, ptr %10, align 8, !tbaa !51
  %11 = icmp eq ptr %9, null
  br i1 %11, label %12, label %14

12:                                               ; preds = %2
  tail call fastcc void @seterr(ptr noundef nonnull %0, i32 noundef 12) #28
  %13 = load ptr, ptr %6, align 8, !tbaa !15
  store ptr %13, ptr %10, align 8, !tbaa !51
  br label %14

14:                                               ; preds = %12, %2
  ret void
}

; Function Attrs: nofree noinline nounwind optsize uwtable
define internal fastcc void @findmust(ptr nocapture noundef readonly %0, ptr nocapture noundef %1) unnamed_addr #8 {
  %3 = getelementptr inbounds %struct.parse, ptr %0, i64 0, i32 2
  %4 = load i32, ptr %3, align 8, !tbaa !20
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %83

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.re_guts, ptr %1, i64 0, i32 1
  %8 = load ptr, ptr %7, align 8, !tbaa !51
  %9 = getelementptr inbounds i64, ptr %8, i64 1
  %10 = getelementptr inbounds %struct.re_guts, ptr %1, i64 0, i32 16
  br label %11

11:                                               ; preds = %46, %6
  %12 = phi ptr [ %9, %6 ], [ %47, %46 ]
  %13 = phi ptr [ null, %6 ], [ %48, %46 ]
  %14 = phi ptr [ undef, %6 ], [ %49, %46 ]
  %15 = phi i64 [ 0, %6 ], [ %50, %46 ]
  %16 = getelementptr inbounds i64, ptr %12, i64 1
  %17 = load i64, ptr %12, align 8, !tbaa !41
  %18 = and i64 %17, 2080374784
  %19 = add nsw i64 %18, -134217728
  %20 = lshr exact i64 %19, 26
  switch i64 %20, label %38 [
    i64 0, label %22
    i64 7, label %46
    i64 11, label %46
    i64 12, label %46
    i64 9, label %21
    i64 13, label %21
  ]

21:                                               ; preds = %11, %11
  br label %26

22:                                               ; preds = %11
  %23 = icmp eq i64 %15, 0
  %24 = select i1 %23, ptr %12, ptr %14
  %25 = add nsw i64 %15, 1
  br label %46

26:                                               ; preds = %21, %26
  %27 = phi ptr [ %30, %26 ], [ %12, %21 ]
  %28 = phi i64 [ %32, %26 ], [ %17, %21 ]
  %29 = and i64 %28, 67108863
  %30 = getelementptr inbounds i64, ptr %27, i64 %29
  %31 = load i64, ptr %30, align 8, !tbaa !41
  %32 = freeze i64 %31
  %33 = and i64 %32, 2080374784
  switch i64 %33, label %34 [
    i64 805306368, label %38
    i64 1207959552, label %38
    i64 1140850688, label %26
  ]

34:                                               ; preds = %26
  %35 = getelementptr inbounds %struct.re_guts, ptr %1, i64 0, i32 10
  %36 = load i32, ptr %35, align 8, !tbaa !25
  %37 = or i32 %36, 4
  store i32 %37, ptr %35, align 8, !tbaa !25
  br label %83

38:                                               ; preds = %26, %26, %11
  %39 = phi ptr [ %16, %11 ], [ %30, %26 ], [ %30, %26 ]
  %40 = phi i64 [ %17, %11 ], [ %32, %26 ], [ %32, %26 ]
  %41 = load i32, ptr %10, align 8, !tbaa !29
  %42 = sext i32 %41 to i64
  %43 = icmp sgt i64 %15, %42
  br i1 %43, label %44, label %46

44:                                               ; preds = %38
  %45 = trunc i64 %15 to i32
  store i32 %45, ptr %10, align 8, !tbaa !29
  br label %46

46:                                               ; preds = %38, %44, %22, %11, %11, %11
  %47 = phi ptr [ %16, %11 ], [ %16, %11 ], [ %16, %11 ], [ %16, %22 ], [ %39, %44 ], [ %39, %38 ]
  %48 = phi ptr [ %13, %11 ], [ %13, %11 ], [ %13, %11 ], [ %13, %22 ], [ %14, %44 ], [ %13, %38 ]
  %49 = phi ptr [ %14, %11 ], [ %14, %11 ], [ %14, %11 ], [ %24, %22 ], [ %14, %44 ], [ %14, %38 ]
  %50 = phi i64 [ %15, %11 ], [ %15, %11 ], [ %15, %11 ], [ %25, %22 ], [ 0, %44 ], [ 0, %38 ]
  %51 = phi i64 [ %17, %11 ], [ %17, %11 ], [ %17, %11 ], [ %17, %22 ], [ %40, %44 ], [ %40, %38 ]
  %52 = and i64 %51, 2080374784
  %53 = icmp eq i64 %52, 67108864
  br i1 %53, label %54, label %11, !llvm.loop !52

54:                                               ; preds = %46
  %55 = load i32, ptr %10, align 8, !tbaa !29
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %83, label %57

57:                                               ; preds = %54
  %58 = sext i32 %55 to i64
  %59 = add nsw i64 %58, 1
  %60 = tail call noalias ptr @malloc(i64 noundef %59) #26
  %61 = getelementptr inbounds %struct.re_guts, ptr %1, i64 0, i32 15
  store ptr %60, ptr %61, align 8, !tbaa !28
  %62 = icmp eq ptr %60, null
  br i1 %62, label %65, label %63

63:                                               ; preds = %57
  %64 = icmp sgt i32 %55, 0
  br i1 %64, label %66, label %81

65:                                               ; preds = %57
  store i32 0, ptr %10, align 8, !tbaa !29
  br label %83

66:                                               ; preds = %63, %76
  %67 = phi i64 [ %79, %76 ], [ %58, %63 ]
  %68 = phi ptr [ %78, %76 ], [ %60, %63 ]
  %69 = phi ptr [ %72, %76 ], [ %48, %63 ]
  br label %70

70:                                               ; preds = %66, %70
  %71 = phi ptr [ %72, %70 ], [ %69, %66 ]
  %72 = getelementptr inbounds i64, ptr %71, i64 1
  %73 = load i64, ptr %71, align 8, !tbaa !41
  %74 = and i64 %73, 2080374784
  %75 = icmp eq i64 %74, 134217728
  br i1 %75, label %76, label %70, !llvm.loop !53

76:                                               ; preds = %70
  %77 = trunc i64 %73 to i8
  %78 = getelementptr inbounds i8, ptr %68, i64 1
  store i8 %77, ptr %68, align 1, !tbaa !42
  %79 = add nsw i64 %67, -1
  %80 = icmp sgt i64 %67, 1
  br i1 %80, label %66, label %81, !llvm.loop !54

81:                                               ; preds = %76, %63
  %82 = phi ptr [ %60, %63 ], [ %78, %76 ]
  store i8 0, ptr %82, align 1, !tbaa !42
  br label %83

83:                                               ; preds = %54, %2, %81, %65, %34
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc i64 @pluscount(ptr nocapture noundef readonly %0, ptr nocapture noundef %1) unnamed_addr #9 {
  %3 = getelementptr inbounds %struct.parse, ptr %0, i64 0, i32 2
  %4 = load i32, ptr %3, align 8, !tbaa !20
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %31

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.re_guts, ptr %1, i64 0, i32 1
  %8 = load ptr, ptr %7, align 8, !tbaa !51
  br label %9

9:                                                ; preds = %21, %6
  %10 = phi ptr [ %8, %6 ], [ %13, %21 ]
  %11 = phi i64 [ 0, %6 ], [ %22, %21 ]
  %12 = phi i64 [ 0, %6 ], [ %23, %21 ]
  %13 = getelementptr inbounds i64, ptr %10, i64 1
  %14 = load i64, ptr %13, align 8, !tbaa !41
  %15 = and i64 %14, 2080374784
  switch i64 %15, label %21 [
    i64 603979776, label %16
    i64 671088640, label %18
  ]

16:                                               ; preds = %9
  %17 = add nsw i64 %11, 1
  br label %21

18:                                               ; preds = %9
  %19 = tail call i64 @llvm.smax.i64(i64 %11, i64 %12)
  %20 = add nsw i64 %11, -1
  br label %21

21:                                               ; preds = %16, %18, %9
  %22 = phi i64 [ %11, %9 ], [ %20, %18 ], [ %17, %16 ]
  %23 = phi i64 [ %12, %9 ], [ %19, %18 ], [ %12, %16 ]
  %24 = icmp eq i64 %15, 67108864
  br i1 %24, label %25, label %9, !llvm.loop !55

25:                                               ; preds = %21
  %26 = icmp eq i64 %22, 0
  br i1 %26, label %31, label %27

27:                                               ; preds = %25
  %28 = getelementptr inbounds %struct.re_guts, ptr %1, i64 0, i32 10
  %29 = load i32, ptr %28, align 8, !tbaa !25
  %30 = or i32 %29, 4
  store i32 %30, ptr %28, align 8, !tbaa !25
  br label %31

31:                                               ; preds = %25, %27, %2
  %32 = phi i64 [ 0, %2 ], [ %23, %27 ], [ %23, %25 ]
  ret i64 %32
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @seterr(ptr nocapture noundef %0, i32 noundef %1) unnamed_addr #10 {
  %3 = getelementptr inbounds %struct.parse, ptr %0, i64 0, i32 2
  %4 = load i32, ptr %3, align 8, !tbaa !20
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %7

6:                                                ; preds = %2
  store i32 %1, ptr %3, align 8, !tbaa !20
  br label %7

7:                                                ; preds = %6, %2
  store ptr @nuls, ptr %0, align 8, !tbaa !18
  %8 = getelementptr inbounds %struct.parse, ptr %0, i64 0, i32 1
  store ptr @nuls, ptr %8, align 8, !tbaa !19
  ret void
}

; Function Attrs: optsize
declare void @regfree(ptr noundef) local_unnamed_addr #11

; Function Attrs: mustprogress noinline nounwind optsize willreturn uwtable
define internal fastcc void @enlarge(ptr nocapture noundef %0, i64 noundef %1) unnamed_addr #6 {
  %3 = getelementptr inbounds %struct.parse, ptr %0, i64 0, i32 4
  %4 = load i64, ptr %3, align 8, !tbaa !13
  %5 = icmp slt i64 %4, %1
  br i1 %5, label %6, label %14

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.parse, ptr %0, i64 0, i32 3
  %8 = load ptr, ptr %7, align 8, !tbaa !15
  %9 = shl i64 %1, 3
  %10 = tail call ptr @realloc(ptr noundef %8, i64 noundef %9) #29
  %11 = icmp eq ptr %10, null
  br i1 %11, label %12, label %13

12:                                               ; preds = %6
  tail call fastcc void @seterr(ptr noundef nonnull %0, i32 noundef 12) #28
  br label %14

13:                                               ; preds = %6
  store ptr %10, ptr %7, align 8, !tbaa !15
  store i64 %1, ptr %3, align 8, !tbaa !13
  br label %14

14:                                               ; preds = %2, %13, %12
  ret void
}

; Function Attrs: mustprogress nounwind optsize willreturn allockind("realloc") allocsize(1) memory(argmem: readwrite, inaccessiblemem: readwrite)
declare noalias noundef ptr @realloc(ptr allocptr nocapture noundef, i64 noundef) local_unnamed_addr #12

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @p_ere_exp(ptr nocapture noundef %0) unnamed_addr #0 {
  %2 = load ptr, ptr %0, align 8, !tbaa !18
  %3 = getelementptr inbounds i8, ptr %2, i64 1
  store ptr %3, ptr %0, align 8, !tbaa !18
  %4 = load i8, ptr %2, align 1, !tbaa !42
  %5 = getelementptr inbounds %struct.parse, ptr %0, i64 0, i32 5
  %6 = load i64, ptr %5, align 8, !tbaa !16
  %7 = sext i8 %4 to i32
  switch i8 %4, label %100 [
    i8 40, label %8
    i8 41, label %44
    i8 94, label %45
    i8 36, label %54
    i8 124, label %63
    i8 42, label %64
    i8 43, label %64
    i8 63, label %64
    i8 46, label %65
    i8 91, label %74
    i8 92, label %75
    i8 123, label %86
  ]

8:                                                ; preds = %1
  %9 = getelementptr inbounds %struct.parse, ptr %0, i64 0, i32 1
  %10 = load ptr, ptr %9, align 8, !tbaa !19
  %11 = icmp ult ptr %3, %10
  br i1 %11, label %13, label %12

12:                                               ; preds = %8
  tail call fastcc void @seterr(ptr noundef nonnull %0, i32 noundef 8) #28
  br label %13

13:                                               ; preds = %12, %8
  %14 = getelementptr inbounds %struct.parse, ptr %0, i64 0, i32 7
  %15 = load ptr, ptr %14, align 8, !tbaa !17
  %16 = getelementptr inbounds %struct.re_guts, ptr %15, i64 0, i32 17
  %17 = load i64, ptr %16, align 8, !tbaa !30
  %18 = add i64 %17, 1
  store i64 %18, ptr %16, align 8, !tbaa !30
  %19 = icmp slt i64 %18, 10
  br i1 %19, label %20, label %23

20:                                               ; preds = %13
  %21 = load i64, ptr %5, align 8, !tbaa !16
  %22 = getelementptr inbounds %struct.parse, ptr %0, i64 0, i32 8, i64 %18
  store i64 %21, ptr %22, align 8, !tbaa !41
  br label %23

23:                                               ; preds = %20, %13
  tail call fastcc void @doemit(ptr noundef nonnull %0, i64 noundef 872415232, i64 noundef %18) #28
  %24 = load ptr, ptr %0, align 8, !tbaa !18
  %25 = load ptr, ptr %9, align 8, !tbaa !19
  %26 = icmp ult ptr %24, %25
  br i1 %26, label %27, label %30

27:                                               ; preds = %23
  %28 = load i8, ptr %24, align 1, !tbaa !42
  %29 = icmp eq i8 %28, 41
  br i1 %29, label %31, label %30

30:                                               ; preds = %27, %23
  tail call fastcc void @p_ere(ptr noundef nonnull %0, i32 noundef 41) #28
  br label %31

31:                                               ; preds = %30, %27
  br i1 %19, label %32, label %35

32:                                               ; preds = %31
  %33 = load i64, ptr %5, align 8, !tbaa !16
  %34 = getelementptr inbounds %struct.parse, ptr %0, i64 0, i32 9, i64 %18
  store i64 %33, ptr %34, align 8, !tbaa !41
  br label %35

35:                                               ; preds = %32, %31
  tail call fastcc void @doemit(ptr noundef nonnull %0, i64 noundef 939524096, i64 noundef %18) #28
  %36 = load ptr, ptr %0, align 8, !tbaa !18
  %37 = load ptr, ptr %9, align 8, !tbaa !19
  %38 = icmp ult ptr %36, %37
  br i1 %38, label %39, label %43

39:                                               ; preds = %35
  %40 = getelementptr inbounds i8, ptr %36, i64 1
  store ptr %40, ptr %0, align 8, !tbaa !18
  %41 = load i8, ptr %36, align 1, !tbaa !42
  %42 = icmp eq i8 %41, 41
  br i1 %42, label %101, label %43

43:                                               ; preds = %39, %35
  tail call fastcc void @seterr(ptr noundef nonnull %0, i32 noundef 8) #28
  br label %101

44:                                               ; preds = %1
  tail call fastcc void @seterr(ptr noundef nonnull %0, i32 noundef 8) #28
  br label %101

45:                                               ; preds = %1
  tail call fastcc void @doemit(ptr noundef nonnull %0, i64 noundef 201326592, i64 noundef 0) #28
  %46 = getelementptr inbounds %struct.parse, ptr %0, i64 0, i32 7
  %47 = load ptr, ptr %46, align 8, !tbaa !17
  %48 = getelementptr inbounds %struct.re_guts, ptr %47, i64 0, i32 10
  %49 = load i32, ptr %48, align 8, !tbaa !25
  %50 = or i32 %49, 1
  store i32 %50, ptr %48, align 8, !tbaa !25
  %51 = getelementptr inbounds %struct.re_guts, ptr %47, i64 0, i32 11
  %52 = load i32, ptr %51, align 4, !tbaa !26
  %53 = add nsw i32 %52, 1
  store i32 %53, ptr %51, align 4, !tbaa !26
  br label %101

54:                                               ; preds = %1
  tail call fastcc void @doemit(ptr noundef nonnull %0, i64 noundef 268435456, i64 noundef 0) #28
  %55 = getelementptr inbounds %struct.parse, ptr %0, i64 0, i32 7
  %56 = load ptr, ptr %55, align 8, !tbaa !17
  %57 = getelementptr inbounds %struct.re_guts, ptr %56, i64 0, i32 10
  %58 = load i32, ptr %57, align 8, !tbaa !25
  %59 = or i32 %58, 2
  store i32 %59, ptr %57, align 8, !tbaa !25
  %60 = getelementptr inbounds %struct.re_guts, ptr %56, i64 0, i32 12
  %61 = load i32, ptr %60, align 8, !tbaa !27
  %62 = add nsw i32 %61, 1
  store i32 %62, ptr %60, align 8, !tbaa !27
  br label %101

63:                                               ; preds = %1
  tail call fastcc void @seterr(ptr noundef nonnull %0, i32 noundef 14) #28
  br label %101

64:                                               ; preds = %1, %1, %1
  tail call fastcc void @seterr(ptr noundef nonnull %0, i32 noundef 13) #28
  br label %101

65:                                               ; preds = %1
  %66 = getelementptr inbounds %struct.parse, ptr %0, i64 0, i32 7
  %67 = load ptr, ptr %66, align 8, !tbaa !17
  %68 = getelementptr inbounds %struct.re_guts, ptr %67, i64 0, i32 6
  %69 = load i32, ptr %68, align 8, !tbaa !24
  %70 = and i32 %69, 8
  %71 = icmp eq i32 %70, 0
  br i1 %71, label %73, label %72

72:                                               ; preds = %65
  tail call fastcc void @nonnewline(ptr noundef nonnull %0) #28
  br label %101

73:                                               ; preds = %65
  tail call fastcc void @doemit(ptr noundef nonnull %0, i64 noundef 335544320, i64 noundef 0) #28
  br label %101

74:                                               ; preds = %1
  tail call fastcc void @p_bracket(ptr noundef nonnull %0) #28
  br label %101

75:                                               ; preds = %1
  %76 = getelementptr inbounds %struct.parse, ptr %0, i64 0, i32 1
  %77 = load ptr, ptr %76, align 8, !tbaa !19
  %78 = icmp ult ptr %3, %77
  br i1 %78, label %81, label %79

79:                                               ; preds = %75
  tail call fastcc void @seterr(ptr noundef nonnull %0, i32 noundef 5) #28
  %80 = load ptr, ptr %0, align 8, !tbaa !18
  br label %81

81:                                               ; preds = %79, %75
  %82 = phi ptr [ %80, %79 ], [ %3, %75 ]
  %83 = getelementptr inbounds i8, ptr %82, i64 1
  store ptr %83, ptr %0, align 8, !tbaa !18
  %84 = load i8, ptr %82, align 1, !tbaa !42
  %85 = sext i8 %84 to i32
  tail call fastcc void @ordinary(ptr noundef nonnull %0, i32 noundef %85) #28
  br label %101

86:                                               ; preds = %1
  %87 = getelementptr inbounds %struct.parse, ptr %0, i64 0, i32 1
  %88 = load ptr, ptr %87, align 8, !tbaa !19
  %89 = icmp ult ptr %3, %88
  br i1 %89, label %90, label %100

90:                                               ; preds = %86
  %91 = tail call ptr @__ctype_b_loc() #30
  %92 = load ptr, ptr %91, align 8, !tbaa !56
  %93 = load i8, ptr %3, align 1, !tbaa !42
  %94 = sext i8 %93 to i64
  %95 = getelementptr inbounds i16, ptr %92, i64 %94
  %96 = load i16, ptr %95, align 2, !tbaa !57
  %97 = and i16 %96, 2048
  %98 = icmp eq i16 %97, 0
  br i1 %98, label %100, label %99

99:                                               ; preds = %90
  tail call fastcc void @seterr(ptr noundef nonnull %0, i32 noundef 13) #28
  br label %100

100:                                              ; preds = %86, %90, %99, %1
  tail call fastcc void @ordinary(ptr noundef nonnull %0, i32 noundef %7) #28
  br label %101

101:                                              ; preds = %39, %43, %72, %73, %100, %81, %74, %64, %63, %54, %45, %44
  %102 = phi i1 [ true, %100 ], [ true, %81 ], [ true, %74 ], [ true, %72 ], [ true, %73 ], [ true, %64 ], [ true, %63 ], [ true, %54 ], [ false, %45 ], [ true, %44 ], [ true, %43 ], [ true, %39 ]
  %103 = load ptr, ptr %0, align 8, !tbaa !18
  %104 = getelementptr inbounds %struct.parse, ptr %0, i64 0, i32 1
  %105 = load ptr, ptr %104, align 8, !tbaa !19
  %106 = icmp ult ptr %103, %105
  br i1 %106, label %107, label %212

107:                                              ; preds = %101
  %108 = load i8, ptr %103, align 1, !tbaa !42
  switch i8 %108, label %212 [
    i8 63, label %121
    i8 43, label %121
    i8 42, label %121
    i8 123, label %109
  ]

109:                                              ; preds = %107
  %110 = getelementptr inbounds i8, ptr %103, i64 1
  %111 = icmp ult ptr %110, %105
  br i1 %111, label %112, label %212

112:                                              ; preds = %109
  %113 = tail call ptr @__ctype_b_loc() #30
  %114 = load ptr, ptr %113, align 8, !tbaa !56
  %115 = load i8, ptr %110, align 1, !tbaa !42
  %116 = sext i8 %115 to i64
  %117 = getelementptr inbounds i16, ptr %114, i64 %116
  %118 = load i16, ptr %117, align 2, !tbaa !57
  %119 = and i16 %118, 2048
  %120 = icmp eq i16 %119, 0
  br i1 %120, label %212, label %121

121:                                              ; preds = %107, %107, %107, %112
  %122 = getelementptr inbounds i8, ptr %103, i64 1
  store ptr %122, ptr %0, align 8, !tbaa !18
  br i1 %102, label %124, label %123

123:                                              ; preds = %121
  tail call fastcc void @seterr(ptr noundef nonnull %0, i32 noundef 13) #28
  br label %124

124:                                              ; preds = %123, %121
  switch i8 %108, label %193 [
    i8 42, label %125
    i8 43, label %136
    i8 63, label %142
    i8 123, label %152
  ]

125:                                              ; preds = %124
  %126 = load i64, ptr %5, align 8, !tbaa !16
  %127 = sub i64 %126, %6
  %128 = add i64 %127, 1
  tail call fastcc void @doinsert(ptr noundef nonnull %0, i64 noundef 603979776, i64 noundef %128, i64 noundef %6) #28
  %129 = load i64, ptr %5, align 8, !tbaa !16
  %130 = sub nsw i64 %129, %6
  tail call fastcc void @doemit(ptr noundef nonnull %0, i64 noundef 671088640, i64 noundef %130) #28
  %131 = load i64, ptr %5, align 8, !tbaa !16
  %132 = sub i64 %131, %6
  %133 = add i64 %132, 1
  tail call fastcc void @doinsert(ptr noundef nonnull %0, i64 noundef 738197504, i64 noundef %133, i64 noundef %6) #28
  %134 = load i64, ptr %5, align 8, !tbaa !16
  %135 = sub nsw i64 %134, %6
  tail call fastcc void @doemit(ptr noundef nonnull %0, i64 noundef 805306368, i64 noundef %135) #28
  br label %193

136:                                              ; preds = %124
  %137 = load i64, ptr %5, align 8, !tbaa !16
  %138 = sub i64 %137, %6
  %139 = add i64 %138, 1
  tail call fastcc void @doinsert(ptr noundef nonnull %0, i64 noundef 603979776, i64 noundef %139, i64 noundef %6) #28
  %140 = load i64, ptr %5, align 8, !tbaa !16
  %141 = sub nsw i64 %140, %6
  tail call fastcc void @doemit(ptr noundef nonnull %0, i64 noundef 671088640, i64 noundef %141) #28
  br label %193

142:                                              ; preds = %124
  %143 = load i64, ptr %5, align 8, !tbaa !16
  %144 = sub i64 %143, %6
  %145 = add i64 %144, 1
  tail call fastcc void @doinsert(ptr noundef nonnull %0, i64 noundef 1006632960, i64 noundef %145, i64 noundef %6) #28
  %146 = load i64, ptr %5, align 8, !tbaa !16
  %147 = sub nsw i64 %146, %6
  tail call fastcc void @doemit(ptr noundef nonnull %0, i64 noundef 1073741824, i64 noundef %147) #28
  %148 = load i64, ptr %5, align 8, !tbaa !16
  %149 = sub nsw i64 %148, %6
  tail call fastcc void @dofwd(ptr noundef nonnull %0, i64 noundef %6, i64 noundef %149) #28
  tail call fastcc void @doemit(ptr noundef nonnull %0, i64 noundef 1140850688, i64 noundef 0) #28
  %150 = load i64, ptr %5, align 8, !tbaa !16
  %151 = add nsw i64 %150, -1
  tail call fastcc void @dofwd(ptr noundef nonnull %0, i64 noundef %151, i64 noundef 1) #28
  tail call fastcc void @doemit(ptr noundef nonnull %0, i64 noundef 1207959552, i64 noundef 2) #28
  br label %193

152:                                              ; preds = %124
  %153 = tail call fastcc i32 @p_count(ptr noundef nonnull %0) #28
  %154 = load ptr, ptr %0, align 8, !tbaa !18
  %155 = load ptr, ptr %104, align 8, !tbaa !19
  %156 = icmp ult ptr %154, %155
  br i1 %156, label %157, label %174

157:                                              ; preds = %152
  %158 = load i8, ptr %154, align 1, !tbaa !42
  %159 = icmp eq i8 %158, 44
  br i1 %159, label %160, label %174

160:                                              ; preds = %157
  %161 = getelementptr inbounds i8, ptr %154, i64 1
  store ptr %161, ptr %0, align 8, !tbaa !18
  %162 = tail call ptr @__ctype_b_loc() #30
  %163 = load ptr, ptr %162, align 8, !tbaa !56
  %164 = load i8, ptr %161, align 1, !tbaa !42
  %165 = sext i8 %164 to i64
  %166 = getelementptr inbounds i16, ptr %163, i64 %165
  %167 = load i16, ptr %166, align 2, !tbaa !57
  %168 = and i16 %167, 2048
  %169 = icmp eq i16 %168, 0
  br i1 %169, label %174, label %170

170:                                              ; preds = %160
  %171 = tail call fastcc i32 @p_count(ptr noundef nonnull %0) #28
  %172 = icmp sgt i32 %153, %171
  br i1 %172, label %173, label %174

173:                                              ; preds = %170
  tail call fastcc void @seterr(ptr noundef nonnull %0, i32 noundef 10) #28
  br label %174

174:                                              ; preds = %157, %152, %160, %170, %173
  %175 = phi i32 [ %171, %173 ], [ %171, %170 ], [ 256, %160 ], [ %153, %152 ], [ %153, %157 ]
  tail call fastcc void @repeat(ptr noundef nonnull %0, i64 noundef %6, i32 noundef %153, i32 noundef %175) #28
  %176 = load ptr, ptr %0, align 8, !tbaa !18
  %177 = load ptr, ptr %104, align 8, !tbaa !19
  %178 = icmp ult ptr %176, %177
  br i1 %178, label %179, label %191

179:                                              ; preds = %174
  %180 = load i8, ptr %176, align 1, !tbaa !42
  %181 = icmp eq i8 %180, 125
  br i1 %181, label %182, label %187

182:                                              ; preds = %179
  %183 = getelementptr inbounds i8, ptr %176, i64 1
  store ptr %183, ptr %0, align 8, !tbaa !18
  br label %193

184:                                              ; preds = %187
  %185 = load i8, ptr %189, align 1, !tbaa !42
  %186 = icmp eq i8 %185, 125
  br i1 %186, label %192, label %187

187:                                              ; preds = %179, %184
  %188 = phi ptr [ %189, %184 ], [ %176, %179 ]
  %189 = getelementptr inbounds i8, ptr %188, i64 1
  store ptr %189, ptr %0, align 8, !tbaa !18
  %190 = icmp eq ptr %189, %177
  br i1 %190, label %191, label %184, !llvm.loop !59

191:                                              ; preds = %187, %174
  tail call fastcc void @seterr(ptr noundef nonnull %0, i32 noundef 9) #28
  br label %192

192:                                              ; preds = %184, %191
  tail call fastcc void @seterr(ptr noundef nonnull %0, i32 noundef 10) #28
  br label %193

193:                                              ; preds = %192, %182, %124, %142, %136, %125
  %194 = load ptr, ptr %0, align 8, !tbaa !18
  %195 = load ptr, ptr %104, align 8, !tbaa !19
  %196 = icmp ult ptr %194, %195
  br i1 %196, label %197, label %212

197:                                              ; preds = %193
  %198 = load i8, ptr %194, align 1, !tbaa !42
  switch i8 %198, label %212 [
    i8 63, label %211
    i8 43, label %211
    i8 42, label %211
    i8 123, label %199
  ]

199:                                              ; preds = %197
  %200 = getelementptr inbounds i8, ptr %194, i64 1
  %201 = icmp ult ptr %200, %195
  br i1 %201, label %202, label %212

202:                                              ; preds = %199
  %203 = tail call ptr @__ctype_b_loc() #30
  %204 = load ptr, ptr %203, align 8, !tbaa !56
  %205 = load i8, ptr %200, align 1, !tbaa !42
  %206 = sext i8 %205 to i64
  %207 = getelementptr inbounds i16, ptr %204, i64 %206
  %208 = load i16, ptr %207, align 2, !tbaa !57
  %209 = and i16 %208, 2048
  %210 = icmp eq i16 %209, 0
  br i1 %210, label %212, label %211

211:                                              ; preds = %197, %197, %197, %202
  tail call fastcc void @seterr(ptr noundef nonnull %0, i32 noundef 13) #28
  br label %212

212:                                              ; preds = %199, %202, %197, %193, %109, %112, %107, %101, %211
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @doinsert(ptr nocapture noundef %0, i64 noundef %1, i64 noundef %2, i64 noundef %3) unnamed_addr #0 {
  %5 = getelementptr inbounds %struct.parse, ptr %0, i64 0, i32 2
  %6 = load i32, ptr %5, align 8, !tbaa !20
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %40

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.parse, ptr %0, i64 0, i32 5
  %10 = load i64, ptr %9, align 8, !tbaa !16
  tail call fastcc void @doemit(ptr noundef nonnull %0, i64 noundef %1, i64 noundef %2) #28
  %11 = getelementptr inbounds %struct.parse, ptr %0, i64 0, i32 3
  %12 = load ptr, ptr %11, align 8, !tbaa !15
  %13 = getelementptr inbounds i64, ptr %12, i64 %10
  %14 = load i64, ptr %13, align 8, !tbaa !41
  br label %15

15:                                               ; preds = %8, %28
  %16 = phi i64 [ 1, %8 ], [ %29, %28 ]
  %17 = getelementptr inbounds %struct.parse, ptr %0, i64 0, i32 8, i64 %16
  %18 = load i64, ptr %17, align 8, !tbaa !41
  %19 = icmp slt i64 %18, %3
  br i1 %19, label %22, label %20

20:                                               ; preds = %15
  %21 = add nsw i64 %18, 1
  store i64 %21, ptr %17, align 8, !tbaa !41
  br label %22

22:                                               ; preds = %20, %15
  %23 = getelementptr inbounds %struct.parse, ptr %0, i64 0, i32 9, i64 %16
  %24 = load i64, ptr %23, align 8, !tbaa !41
  %25 = icmp slt i64 %24, %3
  br i1 %25, label %28, label %26

26:                                               ; preds = %22
  %27 = add nsw i64 %24, 1
  store i64 %27, ptr %23, align 8, !tbaa !41
  br label %28

28:                                               ; preds = %22, %26
  %29 = add nuw nsw i64 %16, 1
  %30 = icmp eq i64 %29, 10
  br i1 %30, label %31, label %15, !llvm.loop !60

31:                                               ; preds = %28
  %32 = getelementptr i64, ptr %12, i64 %3
  %33 = getelementptr i64, ptr %32, i64 1
  %34 = load i64, ptr %9, align 8, !tbaa !16
  %35 = xor i64 %3, -1
  %36 = add i64 %34, %35
  %37 = shl i64 %36, 3
  tail call void @llvm.memmove.p0.p0.i64(ptr align 1 %33, ptr align 1 %32, i64 %37, i1 false)
  %38 = load ptr, ptr %11, align 8, !tbaa !15
  %39 = getelementptr inbounds i64, ptr %38, i64 %3
  store i64 %14, ptr %39, align 8, !tbaa !41
  br label %40

40:                                               ; preds = %4, %31
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @dofwd(ptr nocapture noundef readonly %0, i64 noundef %1, i64 noundef %2) unnamed_addr #13 {
  %4 = getelementptr inbounds %struct.parse, ptr %0, i64 0, i32 2
  %5 = load i32, ptr %4, align 8, !tbaa !20
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %14

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.parse, ptr %0, i64 0, i32 3
  %9 = load ptr, ptr %8, align 8, !tbaa !15
  %10 = getelementptr inbounds i64, ptr %9, i64 %1
  %11 = load i64, ptr %10, align 8, !tbaa !41
  %12 = and i64 %11, 2080374784
  %13 = or i64 %12, %2
  store i64 %13, ptr %10, align 8, !tbaa !41
  br label %14

14:                                               ; preds = %3, %7
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @nonnewline(ptr nocapture noundef %0) unnamed_addr #0 {
  %2 = alloca [4 x i8], align 4
  %3 = getelementptr inbounds %struct.parse, ptr %0, i64 0, i32 1
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #24
  %4 = getelementptr inbounds i8, ptr %2, i64 3
  store <4 x i8> <i8 94, i8 10, i8 93, i8 0>, ptr %2, align 4, !tbaa !42
  %5 = load <2 x ptr>, ptr %0, align 8, !tbaa !56
  store ptr %2, ptr %0, align 8, !tbaa !18
  store ptr %4, ptr %3, align 8, !tbaa !19
  call fastcc void @p_bracket(ptr noundef nonnull %0) #28
  store <2 x ptr> %5, ptr %0, align 8, !tbaa !56
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #24
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @p_bracket(ptr nocapture noundef %0) unnamed_addr #0 {
  %2 = tail call fastcc ptr @allocset(ptr noundef %0) #28
  %3 = load ptr, ptr %0, align 8, !tbaa !18
  %4 = getelementptr inbounds i8, ptr %3, i64 5
  %5 = getelementptr inbounds %struct.parse, ptr %0, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !19
  %7 = icmp ult ptr %4, %6
  br i1 %7, label %8, label %20

8:                                                ; preds = %1
  %9 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %3, ptr noundef nonnull dereferenceable(7) @.str, i64 noundef 6) #25
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %14

11:                                               ; preds = %8
  tail call fastcc void @doemit(ptr noundef nonnull %0, i64 noundef 1275068416, i64 noundef 0) #28
  %12 = load ptr, ptr %0, align 8, !tbaa !18
  %13 = getelementptr inbounds i8, ptr %12, i64 6
  store ptr %13, ptr %0, align 8, !tbaa !18
  br label %200

14:                                               ; preds = %8
  %15 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %3, ptr noundef nonnull dereferenceable(7) @.str.1, i64 noundef 6) #25
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %20

17:                                               ; preds = %14
  tail call fastcc void @doemit(ptr noundef nonnull %0, i64 noundef 1342177280, i64 noundef 0) #28
  %18 = load ptr, ptr %0, align 8, !tbaa !18
  %19 = getelementptr inbounds i8, ptr %18, i64 6
  store ptr %19, ptr %0, align 8, !tbaa !18
  br label %200

20:                                               ; preds = %1, %14
  %21 = icmp ult ptr %3, %6
  br i1 %21, label %22, label %27

22:                                               ; preds = %20
  %23 = load i8, ptr %3, align 1, !tbaa !42
  %24 = icmp eq i8 %23, 94
  br i1 %24, label %25, label %27

25:                                               ; preds = %22
  %26 = getelementptr inbounds i8, ptr %3, i64 1
  store ptr %26, ptr %0, align 8, !tbaa !18
  br label %27

27:                                               ; preds = %20, %22, %25
  %28 = phi ptr [ %26, %25 ], [ %3, %22 ], [ %3, %20 ]
  %29 = phi i1 [ false, %25 ], [ true, %22 ], [ true, %20 ]
  %30 = icmp ult ptr %28, %6
  br i1 %30, label %31, label %46

31:                                               ; preds = %27
  %32 = load i8, ptr %28, align 1, !tbaa !42
  switch i8 %32, label %46 [
    i8 93, label %34
    i8 45, label %33
  ]

33:                                               ; preds = %31
  br label %34

34:                                               ; preds = %31, %33
  %35 = phi i64 [ 45, %33 ], [ 93, %31 ]
  %36 = getelementptr inbounds i8, ptr %28, i64 1
  store ptr %36, ptr %0, align 8, !tbaa !18
  %37 = getelementptr inbounds %struct.cset, ptr %2, i64 0, i32 1
  %38 = load i8, ptr %37, align 8, !tbaa !61
  %39 = load ptr, ptr %2, align 8, !tbaa !63
  %40 = getelementptr inbounds i8, ptr %39, i64 %35
  %41 = load i8, ptr %40, align 1, !tbaa !42
  %42 = or i8 %41, %38
  store i8 %42, ptr %40, align 1, !tbaa !42
  %43 = getelementptr inbounds %struct.cset, ptr %2, i64 0, i32 2
  %44 = load i8, ptr %43, align 1, !tbaa !64
  %45 = add i8 %44, %32
  store i8 %45, ptr %43, align 1, !tbaa !64
  br label %46

46:                                               ; preds = %34, %31, %27
  %47 = load ptr, ptr %0, align 8, !tbaa !18
  %48 = load ptr, ptr %5, align 8, !tbaa !19
  %49 = icmp ult ptr %47, %48
  br i1 %49, label %50, label %79

50:                                               ; preds = %46, %63
  %51 = phi ptr [ %65, %63 ], [ %48, %46 ]
  %52 = phi ptr [ %64, %63 ], [ %47, %46 ]
  %53 = load i8, ptr %52, align 1, !tbaa !42
  %54 = icmp eq i8 %53, 93
  br i1 %54, label %79, label %55

55:                                               ; preds = %50
  %56 = getelementptr inbounds i8, ptr %52, i64 1
  %57 = icmp ult ptr %56, %51
  %58 = icmp eq i8 %53, 45
  %59 = and i1 %57, %58
  br i1 %59, label %60, label %63

60:                                               ; preds = %55
  %61 = load i8, ptr %56, align 1, !tbaa !42
  %62 = icmp eq i8 %61, 93
  br i1 %62, label %67, label %63

63:                                               ; preds = %55, %60
  tail call fastcc void @p_b_term(ptr noundef nonnull %0, ptr noundef %2) #28
  %64 = load ptr, ptr %0, align 8, !tbaa !18
  %65 = load ptr, ptr %5, align 8, !tbaa !19
  %66 = icmp ult ptr %64, %65
  br i1 %66, label %50, label %79, !llvm.loop !65

67:                                               ; preds = %60
  store ptr %56, ptr %0, align 8, !tbaa !18
  %68 = getelementptr inbounds %struct.cset, ptr %2, i64 0, i32 1
  %69 = load i8, ptr %68, align 8, !tbaa !61
  %70 = load ptr, ptr %2, align 8, !tbaa !63
  %71 = getelementptr inbounds i8, ptr %70, i64 45
  %72 = load i8, ptr %71, align 1, !tbaa !42
  %73 = or i8 %72, %69
  store i8 %73, ptr %71, align 1, !tbaa !42
  %74 = getelementptr inbounds %struct.cset, ptr %2, i64 0, i32 2
  %75 = load i8, ptr %74, align 1, !tbaa !64
  %76 = add i8 %75, 45
  store i8 %76, ptr %74, align 1, !tbaa !64
  %77 = load ptr, ptr %0, align 8, !tbaa !18
  %78 = load ptr, ptr %5, align 8, !tbaa !19
  br label %79

79:                                               ; preds = %63, %50, %46, %67
  %80 = phi ptr [ %48, %46 ], [ %78, %67 ], [ %65, %63 ], [ %51, %50 ]
  %81 = phi ptr [ %47, %46 ], [ %77, %67 ], [ %64, %63 ], [ %52, %50 ]
  %82 = icmp ult ptr %81, %80
  br i1 %82, label %83, label %87

83:                                               ; preds = %79
  %84 = getelementptr inbounds i8, ptr %81, i64 1
  store ptr %84, ptr %0, align 8, !tbaa !18
  %85 = load i8, ptr %81, align 1, !tbaa !42
  %86 = icmp eq i8 %85, 93
  br i1 %86, label %88, label %87

87:                                               ; preds = %83, %79
  tail call fastcc void @seterr(ptr noundef nonnull %0, i32 noundef 7) #28
  br label %88

88:                                               ; preds = %87, %83
  %89 = getelementptr inbounds %struct.parse, ptr %0, i64 0, i32 2
  %90 = load i32, ptr %89, align 8, !tbaa !20
  %91 = icmp eq i32 %90, 0
  br i1 %91, label %92, label %200

92:                                               ; preds = %88
  %93 = getelementptr inbounds %struct.parse, ptr %0, i64 0, i32 7
  %94 = load ptr, ptr %93, align 8, !tbaa !17
  %95 = getelementptr inbounds %struct.re_guts, ptr %94, i64 0, i32 6
  %96 = load i32, ptr %95, align 8, !tbaa !24
  %97 = and i32 %96, 2
  %98 = icmp eq i32 %97, 0
  br i1 %98, label %139, label %99

99:                                               ; preds = %92
  %100 = getelementptr inbounds %struct.re_guts, ptr %94, i64 0, i32 2
  %101 = load i32, ptr %100, align 8, !tbaa !22
  %102 = icmp sgt i32 %101, 0
  br i1 %102, label %103, label %139

103:                                              ; preds = %99
  %104 = getelementptr inbounds %struct.cset, ptr %2, i64 0, i32 1
  %105 = getelementptr inbounds %struct.cset, ptr %2, i64 0, i32 2
  %106 = zext nneg i32 %101 to i64
  br label %107

107:                                              ; preds = %103, %137
  %108 = phi i64 [ %106, %103 ], [ %109, %137 ]
  %109 = add nsw i64 %108, -1
  %110 = load ptr, ptr %2, align 8, !tbaa !63
  %111 = trunc i64 %109 to i32
  %112 = and i64 %109, 255
  %113 = getelementptr inbounds i8, ptr %110, i64 %112
  %114 = load i8, ptr %113, align 1, !tbaa !42
  %115 = load i8, ptr %104, align 8, !tbaa !61
  %116 = and i8 %115, %114
  %117 = icmp eq i8 %116, 0
  br i1 %117, label %137, label %118

118:                                              ; preds = %107
  %119 = tail call ptr @__ctype_b_loc() #30
  %120 = load ptr, ptr %119, align 8, !tbaa !56
  %121 = getelementptr inbounds i16, ptr %120, i64 %109
  %122 = load i16, ptr %121, align 2, !tbaa !57
  %123 = and i16 %122, 1024
  %124 = icmp eq i16 %123, 0
  br i1 %124, label %137, label %125

125:                                              ; preds = %118
  %126 = tail call fastcc signext i8 @othercase(i32 noundef %111) #28
  %127 = sext i8 %126 to i64
  %128 = and i64 %127, 4294967295
  %129 = icmp eq i64 %109, %128
  br i1 %129, label %137, label %130

130:                                              ; preds = %125
  %131 = zext i8 %126 to i64
  %132 = getelementptr inbounds i8, ptr %110, i64 %131
  %133 = load i8, ptr %132, align 1, !tbaa !42
  %134 = or i8 %133, %115
  store i8 %134, ptr %132, align 1, !tbaa !42
  %135 = load i8, ptr %105, align 1, !tbaa !64
  %136 = add i8 %135, %126
  store i8 %136, ptr %105, align 1, !tbaa !64
  br label %137

137:                                              ; preds = %107, %118, %130, %125
  %138 = icmp ugt i64 %108, 1
  br i1 %138, label %107, label %139, !llvm.loop !66

139:                                              ; preds = %137, %99, %92
  br i1 %29, label %192, label %140

140:                                              ; preds = %139
  %141 = load ptr, ptr %93, align 8, !tbaa !17
  %142 = getelementptr inbounds %struct.re_guts, ptr %141, i64 0, i32 2
  %143 = load i32, ptr %142, align 8, !tbaa !22
  %144 = icmp sgt i32 %143, 0
  br i1 %144, label %145, label %175

145:                                              ; preds = %140
  %146 = getelementptr inbounds %struct.cset, ptr %2, i64 0, i32 1
  %147 = getelementptr inbounds %struct.cset, ptr %2, i64 0, i32 2
  br label %148

148:                                              ; preds = %145, %170
  %149 = phi i32 [ %143, %145 ], [ %150, %170 ]
  %150 = add nsw i32 %149, -1
  %151 = load ptr, ptr %2, align 8, !tbaa !63
  %152 = and i32 %150, 255
  %153 = zext nneg i32 %152 to i64
  %154 = getelementptr inbounds i8, ptr %151, i64 %153
  %155 = load i8, ptr %154, align 1, !tbaa !42
  %156 = load i8, ptr %146, align 8, !tbaa !61
  %157 = and i8 %156, %155
  %158 = icmp eq i8 %157, 0
  br i1 %158, label %165, label %159

159:                                              ; preds = %148
  %160 = xor i8 %156, -1
  %161 = and i8 %155, %160
  store i8 %161, ptr %154, align 1, !tbaa !42
  %162 = load i8, ptr %147, align 1, !tbaa !64
  %163 = trunc i32 %150 to i8
  %164 = sub i8 %162, %163
  br label %170

165:                                              ; preds = %148
  %166 = or i8 %156, %155
  store i8 %166, ptr %154, align 1, !tbaa !42
  %167 = load i8, ptr %147, align 1, !tbaa !64
  %168 = trunc i32 %150 to i8
  %169 = add i8 %167, %168
  br label %170

170:                                              ; preds = %159, %165
  %171 = phi i8 [ %164, %159 ], [ %169, %165 ]
  store i8 %171, ptr %147, align 1, !tbaa !64
  %172 = icmp ugt i32 %149, 1
  br i1 %172, label %148, label %173, !llvm.loop !67

173:                                              ; preds = %170
  %174 = load ptr, ptr %93, align 8, !tbaa !17
  br label %175

175:                                              ; preds = %173, %140
  %176 = phi ptr [ %174, %173 ], [ %141, %140 ]
  %177 = getelementptr inbounds %struct.re_guts, ptr %176, i64 0, i32 6
  %178 = load i32, ptr %177, align 8, !tbaa !24
  %179 = and i32 %178, 8
  %180 = icmp eq i32 %179, 0
  br i1 %180, label %192, label %181

181:                                              ; preds = %175
  %182 = getelementptr inbounds %struct.cset, ptr %2, i64 0, i32 1
  %183 = load i8, ptr %182, align 8, !tbaa !61
  %184 = xor i8 %183, -1
  %185 = load ptr, ptr %2, align 8, !tbaa !63
  %186 = getelementptr inbounds i8, ptr %185, i64 10
  %187 = load i8, ptr %186, align 1, !tbaa !42
  %188 = and i8 %187, %184
  store i8 %188, ptr %186, align 1, !tbaa !42
  %189 = getelementptr inbounds %struct.cset, ptr %2, i64 0, i32 2
  %190 = load i8, ptr %189, align 1, !tbaa !64
  %191 = add i8 %190, -10
  store i8 %191, ptr %189, align 1, !tbaa !64
  br label %192

192:                                              ; preds = %175, %181, %139
  %193 = tail call fastcc i32 @nch(ptr noundef nonnull %0, ptr noundef %2) #28
  %194 = icmp eq i32 %193, 1
  br i1 %194, label %195, label %197

195:                                              ; preds = %192
  %196 = tail call fastcc i32 @firstch(ptr noundef nonnull %0, ptr noundef %2) #28
  tail call fastcc void @ordinary(ptr noundef nonnull %0, i32 noundef %196) #28
  tail call fastcc void @freeset(ptr noundef nonnull %0, ptr noundef %2) #28
  br label %200

197:                                              ; preds = %192
  %198 = tail call fastcc i32 @freezeset(ptr noundef nonnull %0, ptr noundef %2) #28
  %199 = sext i32 %198 to i64
  tail call fastcc void @doemit(ptr noundef nonnull %0, i64 noundef 402653184, i64 noundef %199) #28
  br label %200

200:                                              ; preds = %195, %197, %88, %17, %11
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @ordinary(ptr nocapture noundef %0, i32 noundef %1) unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.parse, ptr %0, i64 0, i32 7
  %4 = load ptr, ptr %3, align 8, !tbaa !17
  %5 = getelementptr inbounds %struct.re_guts, ptr %4, i64 0, i32 14
  %6 = load ptr, ptr %5, align 8, !tbaa !32
  %7 = getelementptr inbounds %struct.re_guts, ptr %4, i64 0, i32 6
  %8 = load i32, ptr %7, align 8, !tbaa !24
  %9 = and i32 %8, 2
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %13

11:                                               ; preds = %2
  %12 = sext i32 %1 to i64
  br label %26

13:                                               ; preds = %2
  %14 = tail call ptr @__ctype_b_loc() #30
  %15 = load ptr, ptr %14, align 8, !tbaa !56
  %16 = sext i32 %1 to i64
  %17 = getelementptr inbounds i16, ptr %15, i64 %16
  %18 = load i16, ptr %17, align 2, !tbaa !57
  %19 = and i16 %18, 1024
  %20 = icmp eq i16 %19, 0
  br i1 %20, label %26, label %21

21:                                               ; preds = %13
  %22 = tail call fastcc signext i8 @othercase(i32 noundef %1) #28
  %23 = sext i8 %22 to i32
  %24 = icmp eq i32 %23, %1
  br i1 %24, label %26, label %25

25:                                               ; preds = %21
  tail call fastcc void @bothcases(ptr noundef nonnull %0, i32 noundef %1) #28
  br label %39

26:                                               ; preds = %11, %21, %13
  %27 = phi i64 [ %12, %11 ], [ %16, %21 ], [ %16, %13 ]
  %28 = and i32 %1, 255
  %29 = zext nneg i32 %28 to i64
  tail call fastcc void @doemit(ptr noundef nonnull %0, i64 noundef 134217728, i64 noundef %29) #28
  %30 = getelementptr inbounds i8, ptr %6, i64 %27
  %31 = load i8, ptr %30, align 1, !tbaa !42
  %32 = icmp eq i8 %31, 0
  br i1 %32, label %33, label %39

33:                                               ; preds = %26
  %34 = load ptr, ptr %3, align 8, !tbaa !17
  %35 = getelementptr inbounds %struct.re_guts, ptr %34, i64 0, i32 13
  %36 = load i32, ptr %35, align 4, !tbaa !31
  %37 = add nsw i32 %36, 1
  store i32 %37, ptr %35, align 4, !tbaa !31
  %38 = trunc i32 %36 to i8
  store i8 %38, ptr %30, align 1, !tbaa !42
  br label %39

39:                                               ; preds = %26, %33, %25
  ret void
}

; Function Attrs: mustprogress nofree nosync nounwind optsize willreturn memory(none)
declare ptr @__ctype_b_loc() local_unnamed_addr #14

; Function Attrs: nofree noinline nosync nounwind optsize memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc i32 @p_count(ptr nocapture noundef %0) unnamed_addr #15 {
  %2 = getelementptr inbounds %struct.parse, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !19
  %4 = load ptr, ptr %0, align 8, !tbaa !18
  %5 = icmp ult ptr %4, %3
  br i1 %5, label %6, label %36

6:                                                ; preds = %1
  %7 = tail call ptr @__ctype_b_loc() #30
  br label %8

8:                                                ; preds = %6, %21
  %9 = phi i32 [ 0, %6 ], [ %28, %21 ]
  %10 = phi i32 [ 0, %6 ], [ %27, %21 ]
  %11 = phi ptr [ %4, %6 ], [ %23, %21 ]
  %12 = load ptr, ptr %7, align 8, !tbaa !56
  %13 = load i8, ptr %11, align 1, !tbaa !42
  %14 = sext i8 %13 to i64
  %15 = getelementptr inbounds i16, ptr %12, i64 %14
  %16 = load i16, ptr %15, align 2, !tbaa !57
  %17 = and i16 %16, 2048
  %18 = icmp ne i16 %17, 0
  %19 = icmp slt i32 %10, 256
  %20 = select i1 %18, i1 %19, i1 false
  br i1 %20, label %21, label %30

21:                                               ; preds = %8
  %22 = mul nsw i32 %10, 10
  %23 = getelementptr inbounds i8, ptr %11, i64 1
  store ptr %23, ptr %0, align 8, !tbaa !18
  %24 = load i8, ptr %11, align 1, !tbaa !42
  %25 = sext i8 %24 to i32
  %26 = add i32 %22, -48
  %27 = add i32 %26, %25
  %28 = add nuw nsw i32 %9, 1
  %29 = icmp eq ptr %23, %3
  br i1 %29, label %30, label %8, !llvm.loop !68

30:                                               ; preds = %21, %8
  %31 = phi i32 [ %27, %21 ], [ %10, %8 ]
  %32 = phi i32 [ 1, %21 ], [ %9, %8 ]
  %33 = icmp ne i32 %32, 0
  %34 = icmp slt i32 %31, 256
  %35 = select i1 %33, i1 %34, i1 false
  br i1 %35, label %38, label %36

36:                                               ; preds = %1, %30
  %37 = phi i32 [ %31, %30 ], [ 0, %1 ]
  tail call fastcc void @seterr(ptr noundef nonnull %0, i32 noundef 10) #28
  br label %38

38:                                               ; preds = %30, %36
  %39 = phi i32 [ %31, %30 ], [ %37, %36 ]
  ret i32 %39
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @repeat(ptr nocapture noundef %0, i64 noundef %1, i32 noundef %2, i32 noundef %3) unnamed_addr #0 {
  %5 = getelementptr inbounds %struct.parse, ptr %0, i64 0, i32 5
  %6 = getelementptr inbounds %struct.parse, ptr %0, i64 0, i32 2
  %7 = load i32, ptr %6, align 8, !tbaa !20
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %28

9:                                                ; preds = %4, %51
  %10 = phi i32 [ %54, %51 ], [ %3, %4 ]
  %11 = phi i32 [ %53, %51 ], [ %2, %4 ]
  %12 = phi i64 [ %52, %51 ], [ %1, %4 ]
  %13 = icmp slt i32 %10, 2
  %14 = icmp eq i32 %10, 256
  %15 = select i1 %14, i32 3, i32 2
  %16 = select i1 %13, i32 %10, i32 %15
  br label %17

17:                                               ; preds = %9, %65
  %18 = phi i32 [ %11, %9 ], [ %67, %65 ]
  %19 = phi i64 [ %12, %9 ], [ %66, %65 ]
  %20 = load i64, ptr %5, align 8, !tbaa !16
  %21 = icmp slt i32 %18, 2
  %22 = icmp eq i32 %18, 256
  %23 = select i1 %22, i32 3, i32 2
  %24 = select i1 %21, i32 %18, i32 %23
  %25 = shl nsw i32 %24, 3
  %26 = add nsw i32 %25, %16
  switch i32 %26, label %70 [
    i32 0, label %27
    i32 1, label %29
    i32 2, label %29
    i32 3, label %29
    i32 9, label %28
    i32 10, label %39
    i32 11, label %57
    i32 18, label %62
    i32 19, label %65
  ]

27:                                               ; preds = %17
  store i64 %19, ptr %5, align 8, !tbaa !16
  br label %28

28:                                               ; preds = %27, %57, %70, %4, %65, %17, %51, %29
  ret void

29:                                               ; preds = %17, %17, %17
  %30 = sub i64 %20, %19
  %31 = add i64 %30, 1
  tail call fastcc void @doinsert(ptr noundef nonnull %0, i64 noundef 1006632960, i64 noundef %31, i64 noundef %19) #28
  %32 = add nsw i64 %19, 1
  tail call fastcc void @repeat(ptr noundef nonnull %0, i64 noundef %32, i32 noundef 1, i32 noundef %10) #28
  %33 = load i64, ptr %5, align 8, !tbaa !16
  %34 = sub nsw i64 %33, %19
  tail call fastcc void @doemit(ptr noundef nonnull %0, i64 noundef 1073741824, i64 noundef %34) #28
  %35 = load i64, ptr %5, align 8, !tbaa !16
  %36 = sub nsw i64 %35, %19
  tail call fastcc void @dofwd(ptr noundef nonnull %0, i64 noundef %19, i64 noundef %36) #28
  tail call fastcc void @doemit(ptr noundef nonnull %0, i64 noundef 1140850688, i64 noundef 0) #28
  %37 = load i64, ptr %5, align 8, !tbaa !16
  %38 = add nsw i64 %37, -1
  tail call fastcc void @dofwd(ptr noundef nonnull %0, i64 noundef %38, i64 noundef 1) #28
  tail call fastcc void @doemit(ptr noundef nonnull %0, i64 noundef 1207959552, i64 noundef 2) #28
  br label %28

39:                                               ; preds = %17
  %40 = sub i64 %20, %19
  %41 = add i64 %40, 1
  tail call fastcc void @doinsert(ptr noundef nonnull %0, i64 noundef 1006632960, i64 noundef %41, i64 noundef %19) #28
  %42 = load i64, ptr %5, align 8, !tbaa !16
  %43 = sub nsw i64 %42, %19
  tail call fastcc void @doemit(ptr noundef nonnull %0, i64 noundef 1073741824, i64 noundef %43) #28
  %44 = load i64, ptr %5, align 8, !tbaa !16
  %45 = sub nsw i64 %44, %19
  tail call fastcc void @dofwd(ptr noundef nonnull %0, i64 noundef %19, i64 noundef %45) #28
  tail call fastcc void @doemit(ptr noundef nonnull %0, i64 noundef 1140850688, i64 noundef 0) #28
  %46 = load i64, ptr %5, align 8, !tbaa !16
  %47 = add nsw i64 %46, -1
  tail call fastcc void @dofwd(ptr noundef nonnull %0, i64 noundef %47, i64 noundef 1) #28
  tail call fastcc void @doemit(ptr noundef nonnull %0, i64 noundef 1207959552, i64 noundef 2) #28
  %48 = add nsw i64 %19, 1
  %49 = add nsw i64 %20, 1
  %50 = tail call fastcc i64 @dupl(ptr noundef nonnull %0, i64 noundef %48, i64 noundef %49) #28
  br label %51

51:                                               ; preds = %39, %62
  %52 = phi i64 [ %63, %62 ], [ %50, %39 ]
  %53 = phi i32 [ %64, %62 ], [ 1, %39 ]
  %54 = add nsw i32 %10, -1
  %55 = load i32, ptr %6, align 8, !tbaa !20
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %9, label %28

57:                                               ; preds = %17
  %58 = sub i64 %20, %19
  %59 = add i64 %58, 1
  tail call fastcc void @doinsert(ptr noundef nonnull %0, i64 noundef 603979776, i64 noundef %59, i64 noundef %19) #28
  %60 = load i64, ptr %5, align 8, !tbaa !16
  %61 = sub nsw i64 %60, %19
  tail call fastcc void @doemit(ptr noundef nonnull %0, i64 noundef 671088640, i64 noundef %61) #28
  br label %28

62:                                               ; preds = %17
  %63 = tail call fastcc i64 @dupl(ptr noundef nonnull %0, i64 noundef %19, i64 noundef %20) #28
  %64 = add nsw i32 %18, -1
  br label %51

65:                                               ; preds = %17
  %66 = tail call fastcc i64 @dupl(ptr noundef nonnull %0, i64 noundef %19, i64 noundef %20) #28
  %67 = add nsw i32 %18, -1
  %68 = load i32, ptr %6, align 8, !tbaa !20
  %69 = icmp eq i32 %68, 0
  br i1 %69, label %17, label %28

70:                                               ; preds = %17
  tail call fastcc void @seterr(ptr noundef nonnull %0, i32 noundef 15) #28
  br label %28
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef ptr @allocset(ptr nocapture noundef %0) unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.parse, ptr %0, i64 0, i32 7
  %3 = load ptr, ptr %2, align 8, !tbaa !17
  %4 = getelementptr inbounds %struct.re_guts, ptr %3, i64 0, i32 3
  %5 = load i32, ptr %4, align 4, !tbaa !69
  %6 = add nsw i32 %5, 1
  store i32 %6, ptr %4, align 4, !tbaa !69
  %7 = getelementptr inbounds %struct.re_guts, ptr %3, i64 0, i32 2
  %8 = load i32, ptr %7, align 8, !tbaa !22
  %9 = sext i32 %8 to i64
  %10 = getelementptr inbounds %struct.parse, ptr %0, i64 0, i32 6
  %11 = load i32, ptr %10, align 8, !tbaa !21
  %12 = icmp slt i32 %5, %11
  br i1 %12, label %87, label %13

13:                                               ; preds = %1
  %14 = add nsw i32 %11, 8
  store i32 %14, ptr %10, align 8, !tbaa !21
  %15 = sext i32 %14 to i64
  %16 = lshr i64 %15, 3
  %17 = mul i64 %16, %9
  %18 = getelementptr inbounds %struct.re_guts, ptr %3, i64 0, i32 4
  %19 = load ptr, ptr %18, align 8, !tbaa !70
  %20 = icmp eq ptr %19, null
  %21 = shl nsw i64 %15, 5
  br i1 %20, label %22, label %24

22:                                               ; preds = %13
  %23 = tail call noalias ptr @malloc(i64 noundef %21) #26
  store ptr %23, ptr %18, align 8, !tbaa !70
  br label %28

24:                                               ; preds = %13
  %25 = tail call ptr @realloc(ptr noundef nonnull %19, i64 noundef %21) #29
  %26 = load ptr, ptr %2, align 8, !tbaa !17
  %27 = getelementptr inbounds %struct.re_guts, ptr %26, i64 0, i32 4
  store ptr %25, ptr %27, align 8, !tbaa !70
  br label %28

28:                                               ; preds = %24, %22
  %29 = phi ptr [ %26, %24 ], [ %3, %22 ]
  %30 = getelementptr inbounds %struct.re_guts, ptr %29, i64 0, i32 5
  %31 = load ptr, ptr %30, align 8, !tbaa !71
  %32 = icmp eq ptr %31, null
  br i1 %32, label %33, label %35

33:                                               ; preds = %28
  %34 = tail call noalias ptr @malloc(i64 noundef %17) #26
  store ptr %34, ptr %30, align 8, !tbaa !71
  br label %74

35:                                               ; preds = %28
  %36 = tail call ptr @realloc(ptr noundef nonnull %31, i64 noundef %17) #29
  %37 = load ptr, ptr %2, align 8, !tbaa !17
  %38 = getelementptr inbounds %struct.re_guts, ptr %37, i64 0, i32 5
  store ptr %36, ptr %38, align 8, !tbaa !71
  %39 = icmp sgt i32 %5, 0
  br i1 %39, label %40, label %74

40:                                               ; preds = %35
  %41 = getelementptr inbounds %struct.re_guts, ptr %37, i64 0, i32 4
  %42 = load ptr, ptr %41, align 8, !tbaa !70
  %43 = zext nneg i32 %5 to i64
  %44 = add nuw nsw i64 %43, 1
  %45 = and i64 %44, 4294967294
  %46 = add nsw i64 %43, -1
  %47 = insertelement <2 x i64> poison, i64 %46, i64 0
  %48 = shufflevector <2 x i64> %47, <2 x i64> poison, <2 x i32> zeroinitializer
  %49 = insertelement <2 x i64> poison, i64 %9, i64 0
  %50 = shufflevector <2 x i64> %49, <2 x i64> poison, <2 x i32> zeroinitializer
  br label %51

51:                                               ; preds = %70, %40
  %52 = phi i64 [ 0, %40 ], [ %71, %70 ]
  %53 = phi <2 x i64> [ <i64 0, i64 1>, %40 ], [ %72, %70 ]
  %54 = icmp ule <2 x i64> %53, %48
  %55 = lshr <2 x i64> %53, <i64 3, i64 3>
  %56 = and <2 x i64> %55, <i64 536870911, i64 536870911>
  %57 = mul nsw <2 x i64> %56, %50
  %58 = extractelement <2 x i1> %54, i64 0
  br i1 %58, label %59, label %63

59:                                               ; preds = %51
  %60 = getelementptr inbounds %struct.cset, ptr %42, i64 %52
  %61 = extractelement <2 x i64> %57, i64 0
  %62 = getelementptr inbounds i8, ptr %36, i64 %61
  store ptr %62, ptr %60, align 8, !tbaa !63
  br label %63

63:                                               ; preds = %59, %51
  %64 = extractelement <2 x i1> %54, i64 1
  br i1 %64, label %65, label %70

65:                                               ; preds = %63
  %66 = or disjoint i64 %52, 1
  %67 = getelementptr inbounds %struct.cset, ptr %42, i64 %66
  %68 = extractelement <2 x i64> %57, i64 1
  %69 = getelementptr inbounds i8, ptr %36, i64 %68
  store ptr %69, ptr %67, align 8, !tbaa !63
  br label %70

70:                                               ; preds = %65, %63
  %71 = add i64 %52, 2
  %72 = add <2 x i64> %53, <i64 2, i64 2>
  %73 = icmp eq i64 %71, %45
  br i1 %73, label %74, label %51, !llvm.loop !72

74:                                               ; preds = %70, %35, %33
  %75 = phi ptr [ %36, %35 ], [ %34, %33 ], [ %36, %70 ]
  %76 = phi ptr [ %37, %35 ], [ %29, %33 ], [ %37, %70 ]
  %77 = getelementptr inbounds %struct.re_guts, ptr %76, i64 0, i32 4
  %78 = load ptr, ptr %77, align 8, !tbaa !70
  %79 = icmp eq ptr %78, null
  %80 = icmp eq ptr %75, null
  %81 = or i1 %79, %80
  br i1 %81, label %85, label %82

82:                                               ; preds = %74
  %83 = sub i64 %17, %9
  %84 = getelementptr inbounds i8, ptr %75, i64 %83
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %84, i8 0, i64 %9, i1 false)
  br label %87

85:                                               ; preds = %74
  tail call fastcc void @seterr(ptr noundef nonnull %0, i32 noundef 12) #28
  %86 = load ptr, ptr %2, align 8, !tbaa !17
  br label %87

87:                                               ; preds = %82, %85, %1
  %88 = phi ptr [ %76, %82 ], [ %86, %85 ], [ %3, %1 ]
  %89 = phi i32 [ %5, %82 ], [ 0, %85 ], [ %5, %1 ]
  %90 = getelementptr inbounds %struct.re_guts, ptr %88, i64 0, i32 4
  %91 = load ptr, ptr %90, align 8, !tbaa !70
  %92 = sext i32 %89 to i64
  %93 = getelementptr inbounds %struct.cset, ptr %91, i64 %92
  %94 = getelementptr inbounds %struct.re_guts, ptr %88, i64 0, i32 5
  %95 = load ptr, ptr %94, align 8, !tbaa !71
  %96 = sdiv i32 %89, 8
  %97 = sext i32 %96 to i64
  %98 = mul nsw i64 %97, %9
  %99 = getelementptr inbounds i8, ptr %95, i64 %98
  store ptr %99, ptr %93, align 8, !tbaa !63
  %100 = and i32 %89, 7
  %101 = shl nuw nsw i32 1, %100
  %102 = trunc i32 %101 to i8
  %103 = getelementptr inbounds %struct.cset, ptr %91, i64 %92, i32 1
  store i8 %102, ptr %103, align 8, !tbaa !61
  %104 = getelementptr inbounds %struct.cset, ptr %91, i64 %92, i32 2
  store i8 0, ptr %104, align 1, !tbaa !64
  %105 = getelementptr inbounds %struct.cset, ptr %91, i64 %92, i32 3
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %105, i8 0, i64 16, i1 false)
  ret ptr %93
}

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(argmem: read)
declare i32 @strncmp(ptr nocapture noundef, ptr nocapture noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @p_b_term(ptr nocapture noundef %0, ptr nocapture noundef %1) unnamed_addr #0 {
  %3 = load ptr, ptr %0, align 8, !tbaa !18
  %4 = getelementptr inbounds %struct.parse, ptr %0, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !19
  %6 = icmp ult ptr %3, %5
  br i1 %6, label %7, label %79

7:                                                ; preds = %2
  %8 = load i8, ptr %3, align 1, !tbaa !42
  switch i8 %8, label %79 [
    i8 91, label %9
    i8 45, label %12
  ]

9:                                                ; preds = %7
  %10 = getelementptr inbounds i8, ptr %3, i64 1
  %11 = icmp ult ptr %10, %5
  br i1 %11, label %13, label %79

12:                                               ; preds = %7
  tail call fastcc void @seterr(ptr noundef nonnull %0, i32 noundef 11) #28
  br label %126

13:                                               ; preds = %9
  %14 = load i8, ptr %10, align 1, !tbaa !42
  switch i8 %14, label %79 [
    i8 58, label %15
    i8 61, label %47
  ]

15:                                               ; preds = %13
  %16 = getelementptr inbounds i8, ptr %3, i64 2
  store ptr %16, ptr %0, align 8, !tbaa !18
  %17 = icmp ult ptr %16, %5
  br i1 %17, label %20, label %18

18:                                               ; preds = %15
  tail call fastcc void @seterr(ptr noundef nonnull %0, i32 noundef 7) #28
  %19 = load ptr, ptr %0, align 8, !tbaa !18
  br label %20

20:                                               ; preds = %18, %15
  %21 = phi ptr [ %19, %18 ], [ %16, %15 ]
  %22 = load i8, ptr %21, align 1, !tbaa !42
  switch i8 %22, label %24 [
    i8 93, label %23
    i8 45, label %23
  ]

23:                                               ; preds = %20, %20
  tail call fastcc void @seterr(ptr noundef nonnull %0, i32 noundef 4) #28
  br label %24

24:                                               ; preds = %20, %23
  tail call fastcc void @p_b_cclass(ptr noundef nonnull %0, ptr noundef %1) #28
  %25 = load ptr, ptr %0, align 8, !tbaa !18
  %26 = load ptr, ptr %4, align 8, !tbaa !19
  %27 = icmp ult ptr %25, %26
  br i1 %27, label %31, label %28

28:                                               ; preds = %24
  tail call fastcc void @seterr(ptr noundef nonnull %0, i32 noundef 7) #28
  %29 = load ptr, ptr %0, align 8, !tbaa !18
  %30 = load ptr, ptr %4, align 8, !tbaa !19
  br label %31

31:                                               ; preds = %28, %24
  %32 = phi ptr [ %30, %28 ], [ %26, %24 ]
  %33 = phi ptr [ %29, %28 ], [ %25, %24 ]
  %34 = icmp ult ptr %33, %32
  br i1 %34, label %35, label %46

35:                                               ; preds = %31
  %36 = getelementptr inbounds i8, ptr %33, i64 1
  %37 = icmp ult ptr %36, %32
  br i1 %37, label %38, label %46

38:                                               ; preds = %35
  %39 = load i8, ptr %33, align 1, !tbaa !42
  %40 = icmp eq i8 %39, 58
  br i1 %40, label %41, label %46

41:                                               ; preds = %38
  %42 = load i8, ptr %36, align 1, !tbaa !42
  %43 = icmp eq i8 %42, 93
  br i1 %43, label %44, label %46

44:                                               ; preds = %41
  %45 = getelementptr inbounds i8, ptr %33, i64 2
  store ptr %45, ptr %0, align 8, !tbaa !18
  br label %126

46:                                               ; preds = %31, %35, %38, %41
  tail call fastcc void @seterr(ptr noundef nonnull %0, i32 noundef 4) #28
  br label %126

47:                                               ; preds = %13
  %48 = getelementptr inbounds i8, ptr %3, i64 2
  store ptr %48, ptr %0, align 8, !tbaa !18
  %49 = icmp ult ptr %48, %5
  br i1 %49, label %52, label %50

50:                                               ; preds = %47
  tail call fastcc void @seterr(ptr noundef nonnull %0, i32 noundef 7) #28
  %51 = load ptr, ptr %0, align 8, !tbaa !18
  br label %52

52:                                               ; preds = %50, %47
  %53 = phi ptr [ %51, %50 ], [ %48, %47 ]
  %54 = load i8, ptr %53, align 1, !tbaa !42
  switch i8 %54, label %56 [
    i8 93, label %55
    i8 45, label %55
  ]

55:                                               ; preds = %52, %52
  tail call fastcc void @seterr(ptr noundef nonnull %0, i32 noundef 3) #28
  br label %56

56:                                               ; preds = %52, %55
  tail call fastcc void @p_b_eclass(ptr noundef nonnull %0, ptr noundef %1) #28
  %57 = load ptr, ptr %0, align 8, !tbaa !18
  %58 = load ptr, ptr %4, align 8, !tbaa !19
  %59 = icmp ult ptr %57, %58
  br i1 %59, label %63, label %60

60:                                               ; preds = %56
  tail call fastcc void @seterr(ptr noundef nonnull %0, i32 noundef 7) #28
  %61 = load ptr, ptr %0, align 8, !tbaa !18
  %62 = load ptr, ptr %4, align 8, !tbaa !19
  br label %63

63:                                               ; preds = %60, %56
  %64 = phi ptr [ %62, %60 ], [ %58, %56 ]
  %65 = phi ptr [ %61, %60 ], [ %57, %56 ]
  %66 = icmp ult ptr %65, %64
  br i1 %66, label %67, label %78

67:                                               ; preds = %63
  %68 = getelementptr inbounds i8, ptr %65, i64 1
  %69 = icmp ult ptr %68, %64
  br i1 %69, label %70, label %78

70:                                               ; preds = %67
  %71 = load i8, ptr %65, align 1, !tbaa !42
  %72 = icmp eq i8 %71, 61
  br i1 %72, label %73, label %78

73:                                               ; preds = %70
  %74 = load i8, ptr %68, align 1, !tbaa !42
  %75 = icmp eq i8 %74, 93
  br i1 %75, label %76, label %78

76:                                               ; preds = %73
  %77 = getelementptr inbounds i8, ptr %65, i64 2
  store ptr %77, ptr %0, align 8, !tbaa !18
  br label %126

78:                                               ; preds = %63, %67, %70, %73
  tail call fastcc void @seterr(ptr noundef nonnull %0, i32 noundef 3) #28
  br label %126

79:                                               ; preds = %2, %7, %9, %13
  %80 = tail call fastcc signext i8 @p_b_symbol(ptr noundef nonnull %0) #28
  %81 = load ptr, ptr %0, align 8, !tbaa !18
  %82 = load ptr, ptr %4, align 8, !tbaa !19
  %83 = icmp ult ptr %81, %82
  br i1 %83, label %84, label %106

84:                                               ; preds = %79
  %85 = load i8, ptr %81, align 1, !tbaa !42
  %86 = icmp eq i8 %85, 45
  br i1 %86, label %87, label %106

87:                                               ; preds = %84
  %88 = getelementptr inbounds i8, ptr %81, i64 1
  %89 = icmp ult ptr %88, %82
  br i1 %89, label %90, label %106

90:                                               ; preds = %87
  %91 = load i8, ptr %88, align 1, !tbaa !42
  %92 = icmp eq i8 %91, 93
  br i1 %92, label %106, label %93

93:                                               ; preds = %90
  store ptr %88, ptr %0, align 8, !tbaa !18
  %94 = load i8, ptr %88, align 1, !tbaa !42
  %95 = icmp eq i8 %94, 45
  br i1 %95, label %96, label %98

96:                                               ; preds = %93
  %97 = getelementptr inbounds i8, ptr %81, i64 2
  store ptr %97, ptr %0, align 8, !tbaa !18
  br label %100

98:                                               ; preds = %93
  %99 = tail call fastcc signext i8 @p_b_symbol(ptr noundef nonnull %0) #28
  br label %100

100:                                              ; preds = %96, %98
  %101 = phi i8 [ 45, %96 ], [ %99, %98 ]
  %102 = icmp sgt i8 %80, %101
  br i1 %102, label %103, label %104

103:                                              ; preds = %100
  tail call fastcc void @seterr(ptr noundef nonnull %0, i32 noundef 11) #28
  br label %104

104:                                              ; preds = %103, %100
  %105 = icmp sgt i8 %80, %101
  br i1 %105, label %126, label %106

106:                                              ; preds = %79, %84, %87, %90, %104
  %107 = phi i8 [ %101, %104 ], [ %80, %90 ], [ %80, %87 ], [ %80, %84 ], [ %80, %79 ]
  %108 = sext i8 %107 to i32
  %109 = sext i8 %80 to i32
  %110 = getelementptr inbounds %struct.cset, ptr %1, i64 0, i32 1
  %111 = getelementptr inbounds %struct.cset, ptr %1, i64 0, i32 2
  br label %112

112:                                              ; preds = %106, %112
  %113 = phi i32 [ %109, %106 ], [ %124, %112 ]
  %114 = load i8, ptr %110, align 8, !tbaa !61
  %115 = load ptr, ptr %1, align 8, !tbaa !63
  %116 = and i32 %113, 255
  %117 = zext nneg i32 %116 to i64
  %118 = getelementptr inbounds i8, ptr %115, i64 %117
  %119 = load i8, ptr %118, align 1, !tbaa !42
  %120 = or i8 %119, %114
  store i8 %120, ptr %118, align 1, !tbaa !42
  %121 = load i8, ptr %111, align 1, !tbaa !64
  %122 = trunc i32 %113 to i8
  %123 = add i8 %121, %122
  store i8 %123, ptr %111, align 1, !tbaa !64
  %124 = add nsw i32 %113, 1
  %125 = icmp eq i32 %113, %108
  br i1 %125, label %126, label %112, !llvm.loop !75

126:                                              ; preds = %112, %104, %44, %46, %76, %78, %12
  ret void
}

; Function Attrs: mustprogress nofree noinline nounwind optsize willreturn memory(read) uwtable
define internal fastcc signext i8 @othercase(i32 noundef %0) unnamed_addr #16 {
  %2 = tail call ptr @__ctype_b_loc() #30
  %3 = load ptr, ptr %2, align 8, !tbaa !56
  %4 = sext i32 %0 to i64
  %5 = getelementptr inbounds i16, ptr %3, i64 %4
  %6 = load i16, ptr %5, align 2, !tbaa !57
  %7 = zext i16 %6 to i32
  %8 = and i32 %7, 256
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %12, label %10

10:                                               ; preds = %1
  %11 = tail call i32 @tolower(i32 noundef %0) #25
  br label %17

12:                                               ; preds = %1
  %13 = and i32 %7, 512
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %17, label %15

15:                                               ; preds = %12
  %16 = tail call i32 @toupper(i32 noundef %0) #25
  br label %17

17:                                               ; preds = %12, %15, %10
  %18 = phi i32 [ %11, %10 ], [ %16, %15 ], [ %0, %12 ]
  %19 = trunc i32 %18 to i8
  ret i8 %19
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable
define internal fastcc i32 @nch(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) unnamed_addr #17 {
  %3 = getelementptr inbounds %struct.parse, ptr %0, i64 0, i32 7
  %4 = load ptr, ptr %3, align 8, !tbaa !17
  %5 = getelementptr inbounds %struct.re_guts, ptr %4, i64 0, i32 2
  %6 = load i32, ptr %5, align 8, !tbaa !22
  %7 = sext i32 %6 to i64
  %8 = icmp eq i32 %6, 0
  br i1 %8, label %27, label %9

9:                                                ; preds = %2
  %10 = load ptr, ptr %1, align 8, !tbaa !63
  %11 = getelementptr inbounds %struct.cset, ptr %1, i64 0, i32 1
  %12 = load i8, ptr %11, align 8, !tbaa !61
  br label %13

13:                                               ; preds = %9, %13
  %14 = phi i32 [ 0, %9 ], [ %23, %13 ]
  %15 = phi i32 [ 0, %9 ], [ %24, %13 ]
  %16 = and i32 %15, 255
  %17 = zext nneg i32 %16 to i64
  %18 = getelementptr inbounds i8, ptr %10, i64 %17
  %19 = load i8, ptr %18, align 1, !tbaa !42
  %20 = and i8 %12, %19
  %21 = icmp ne i8 %20, 0
  %22 = zext i1 %21 to i32
  %23 = add nuw nsw i32 %14, %22
  %24 = add i32 %15, 1
  %25 = zext i32 %24 to i64
  %26 = icmp ult i64 %25, %7
  br i1 %26, label %13, label %27, !llvm.loop !76

27:                                               ; preds = %13, %2
  %28 = phi i32 [ 0, %2 ], [ %23, %13 ]
  ret i32 %28
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable
define internal fastcc i32 @firstch(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) unnamed_addr #17 {
  %3 = getelementptr inbounds %struct.parse, ptr %0, i64 0, i32 7
  %4 = load ptr, ptr %3, align 8, !tbaa !17
  %5 = getelementptr inbounds %struct.re_guts, ptr %4, i64 0, i32 2
  %6 = load i32, ptr %5, align 8, !tbaa !22
  %7 = sext i32 %6 to i64
  %8 = icmp eq i32 %6, 0
  br i1 %8, label %28, label %9

9:                                                ; preds = %2
  %10 = load ptr, ptr %1, align 8, !tbaa !63
  %11 = getelementptr inbounds %struct.cset, ptr %1, i64 0, i32 1
  %12 = load i8, ptr %11, align 8, !tbaa !61
  br label %13

13:                                               ; preds = %9, %24
  %14 = phi i32 [ 0, %9 ], [ %25, %24 ]
  %15 = and i32 %14, 255
  %16 = zext nneg i32 %15 to i64
  %17 = getelementptr inbounds i8, ptr %10, i64 %16
  %18 = load i8, ptr %17, align 1, !tbaa !42
  %19 = and i8 %12, %18
  %20 = icmp eq i8 %19, 0
  br i1 %20, label %24, label %21

21:                                               ; preds = %13
  %22 = shl i32 %14, 24
  %23 = ashr exact i32 %22, 24
  br label %28

24:                                               ; preds = %13
  %25 = add i32 %14, 1
  %26 = zext i32 %25 to i64
  %27 = icmp ult i64 %26, %7
  br i1 %27, label %13, label %28, !llvm.loop !77

28:                                               ; preds = %24, %2, %21
  %29 = phi i32 [ %23, %21 ], [ 0, %2 ], [ 0, %24 ]
  ret i32 %29
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @freeset(ptr nocapture noundef readonly %0, ptr noundef %1) unnamed_addr #7 {
  %3 = getelementptr inbounds %struct.parse, ptr %0, i64 0, i32 7
  %4 = load ptr, ptr %3, align 8, !tbaa !17
  %5 = getelementptr inbounds %struct.re_guts, ptr %4, i64 0, i32 4
  %6 = load ptr, ptr %5, align 8, !tbaa !70
  %7 = getelementptr inbounds %struct.re_guts, ptr %4, i64 0, i32 3
  %8 = load i32, ptr %7, align 4, !tbaa !69
  %9 = sext i32 %8 to i64
  %10 = getelementptr inbounds %struct.cset, ptr %6, i64 %9
  %11 = getelementptr inbounds %struct.re_guts, ptr %4, i64 0, i32 2
  %12 = load i32, ptr %11, align 8, !tbaa !22
  %13 = sext i32 %12 to i64
  %14 = icmp eq i32 %12, 0
  br i1 %14, label %34, label %15

15:                                               ; preds = %2
  %16 = getelementptr inbounds %struct.cset, ptr %1, i64 0, i32 1
  %17 = getelementptr inbounds %struct.cset, ptr %1, i64 0, i32 2
  br label %18

18:                                               ; preds = %15, %18
  %19 = phi i32 [ 0, %15 ], [ %31, %18 ]
  %20 = load i8, ptr %16, align 8, !tbaa !61
  %21 = xor i8 %20, -1
  %22 = load ptr, ptr %1, align 8, !tbaa !63
  %23 = and i32 %19, 255
  %24 = zext nneg i32 %23 to i64
  %25 = getelementptr inbounds i8, ptr %22, i64 %24
  %26 = load i8, ptr %25, align 1, !tbaa !42
  %27 = and i8 %26, %21
  store i8 %27, ptr %25, align 1, !tbaa !42
  %28 = load i8, ptr %17, align 1, !tbaa !64
  %29 = trunc i32 %19 to i8
  %30 = sub i8 %28, %29
  store i8 %30, ptr %17, align 1, !tbaa !64
  %31 = add i32 %19, 1
  %32 = zext i32 %31 to i64
  %33 = icmp ult i64 %32, %13
  br i1 %33, label %18, label %34, !llvm.loop !78

34:                                               ; preds = %18, %2
  %35 = getelementptr inbounds %struct.cset, ptr %10, i64 -1
  %36 = icmp eq ptr %35, %1
  br i1 %36, label %37, label %42

37:                                               ; preds = %34
  %38 = load ptr, ptr %3, align 8, !tbaa !17
  %39 = getelementptr inbounds %struct.re_guts, ptr %38, i64 0, i32 3
  %40 = load i32, ptr %39, align 4, !tbaa !69
  %41 = add nsw i32 %40, -1
  store i32 %41, ptr %39, align 4, !tbaa !69
  br label %42

42:                                               ; preds = %37, %34
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc i32 @freezeset(ptr nocapture noundef readonly %0, ptr noundef %1) unnamed_addr #7 {
  %3 = getelementptr inbounds %struct.cset, ptr %1, i64 0, i32 2
  %4 = load i8, ptr %3, align 1, !tbaa !64
  %5 = getelementptr inbounds %struct.parse, ptr %0, i64 0, i32 7
  %6 = load ptr, ptr %5, align 8, !tbaa !17
  %7 = getelementptr inbounds %struct.re_guts, ptr %6, i64 0, i32 4
  %8 = load ptr, ptr %7, align 8, !tbaa !70
  %9 = getelementptr inbounds %struct.re_guts, ptr %6, i64 0, i32 3
  %10 = load i32, ptr %9, align 4, !tbaa !69
  %11 = sext i32 %10 to i64
  %12 = getelementptr inbounds %struct.cset, ptr %8, i64 %11
  %13 = getelementptr inbounds %struct.re_guts, ptr %6, i64 0, i32 2
  %14 = load i32, ptr %13, align 8, !tbaa !22
  %15 = sext i32 %14 to i64
  %16 = icmp sgt i32 %10, 0
  br i1 %16, label %17, label %68

17:                                               ; preds = %2
  %18 = icmp eq i32 %14, 0
  %19 = getelementptr inbounds %struct.cset, ptr %1, i64 0, i32 1
  br label %20

20:                                               ; preds = %17, %61
  %21 = phi ptr [ %8, %17 ], [ %62, %61 ]
  %22 = getelementptr inbounds %struct.cset, ptr %21, i64 0, i32 2
  %23 = load i8, ptr %22, align 1, !tbaa !64
  %24 = icmp ne i8 %23, %4
  %25 = icmp eq ptr %21, %1
  %26 = or i1 %25, %24
  br i1 %26, label %61, label %27

27:                                               ; preds = %20
  br i1 %18, label %58, label %28

28:                                               ; preds = %27
  %29 = load ptr, ptr %21, align 8, !tbaa !63
  %30 = getelementptr inbounds %struct.cset, ptr %21, i64 0, i32 1
  %31 = load i8, ptr %30, align 8, !tbaa !61
  %32 = load ptr, ptr %1, align 8, !tbaa !63
  %33 = load i8, ptr %19, align 8, !tbaa !61
  %34 = load i8, ptr %29, align 1, !tbaa !42
  %35 = and i8 %31, %34
  %36 = icmp ne i8 %35, 0
  %37 = load i8, ptr %32, align 1, !tbaa !42
  %38 = and i8 %33, %37
  %39 = icmp eq i8 %38, 0
  %40 = xor i1 %36, %39
  br i1 %40, label %41, label %58

41:                                               ; preds = %28, %46
  %42 = phi i32 [ %43, %46 ], [ 0, %28 ]
  %43 = add i32 %42, 1
  %44 = zext i32 %43 to i64
  %45 = icmp ult i64 %44, %15
  br i1 %45, label %46, label %58, !llvm.loop !79

46:                                               ; preds = %41
  %47 = and i32 %43, 255
  %48 = zext nneg i32 %47 to i64
  %49 = getelementptr inbounds i8, ptr %29, i64 %48
  %50 = load i8, ptr %49, align 1, !tbaa !42
  %51 = and i8 %31, %50
  %52 = icmp ne i8 %51, 0
  %53 = getelementptr inbounds i8, ptr %32, i64 %48
  %54 = load i8, ptr %53, align 1, !tbaa !42
  %55 = and i8 %33, %54
  %56 = icmp eq i8 %55, 0
  %57 = xor i1 %52, %56
  br i1 %57, label %41, label %58, !llvm.loop !79

58:                                               ; preds = %46, %41, %28, %27
  %59 = phi i64 [ 0, %27 ], [ 0, %28 ], [ %44, %41 ], [ %44, %46 ]
  %60 = icmp eq i64 %59, %15
  br i1 %60, label %64, label %61

61:                                               ; preds = %20, %58
  %62 = getelementptr inbounds %struct.cset, ptr %21, i64 1
  %63 = icmp ult ptr %62, %12
  br i1 %63, label %20, label %68, !llvm.loop !80

64:                                               ; preds = %58
  tail call fastcc void @freeset(ptr noundef %0, ptr noundef %1) #28
  %65 = load ptr, ptr %5, align 8, !tbaa !17
  %66 = getelementptr inbounds %struct.re_guts, ptr %65, i64 0, i32 4
  %67 = load ptr, ptr %66, align 8, !tbaa !70
  br label %68

68:                                               ; preds = %61, %2, %64
  %69 = phi ptr [ %67, %64 ], [ %8, %2 ], [ %8, %61 ]
  %70 = phi ptr [ %21, %64 ], [ %1, %2 ], [ %1, %61 ]
  %71 = ptrtoint ptr %70 to i64
  %72 = ptrtoint ptr %69 to i64
  %73 = sub i64 %71, %72
  %74 = lshr exact i64 %73, 5
  %75 = trunc i64 %74 to i32
  ret i32 %75
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @p_b_cclass(ptr nocapture noundef %0, ptr nocapture noundef %1) unnamed_addr #0 {
  %3 = load ptr, ptr %0, align 8, !tbaa !18
  %4 = ptrtoint ptr %3 to i64
  %5 = getelementptr inbounds %struct.parse, ptr %0, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !19
  %7 = icmp ult ptr %3, %6
  br i1 %7, label %8, label %28

8:                                                ; preds = %2
  %9 = ptrtoint ptr %6 to i64
  %10 = tail call ptr @__ctype_b_loc() #30
  %11 = sub i64 %9, %4
  %12 = getelementptr i8, ptr %3, i64 %11
  br label %13

13:                                               ; preds = %8, %22
  %14 = phi ptr [ %3, %8 ], [ %23, %22 ]
  %15 = load ptr, ptr %10, align 8, !tbaa !56
  %16 = load i8, ptr %14, align 1, !tbaa !42
  %17 = sext i8 %16 to i64
  %18 = getelementptr inbounds i16, ptr %15, i64 %17
  %19 = load i16, ptr %18, align 2, !tbaa !57
  %20 = and i16 %19, 1024
  %21 = icmp eq i16 %20, 0
  br i1 %21, label %25, label %22

22:                                               ; preds = %13
  %23 = getelementptr inbounds i8, ptr %14, i64 1
  store ptr %23, ptr %0, align 8, !tbaa !18
  %24 = icmp eq ptr %23, %6
  br i1 %24, label %25, label %13, !llvm.loop !81

25:                                               ; preds = %22, %13
  %26 = phi ptr [ %14, %13 ], [ %12, %22 ]
  %27 = ptrtoint ptr %26 to i64
  br label %28

28:                                               ; preds = %25, %2
  %29 = phi i64 [ %27, %25 ], [ %4, %2 ]
  %30 = sub i64 %29, %4
  br label %31

31:                                               ; preds = %28, %40
  %32 = phi ptr [ @.str.2, %28 ], [ %42, %40 ]
  %33 = phi ptr [ @cclasses, %28 ], [ %41, %40 ]
  %34 = tail call i32 @strncmp(ptr noundef nonnull %32, ptr noundef %3, i64 noundef %30) #25
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %36, label %40

36:                                               ; preds = %31
  %37 = getelementptr inbounds i8, ptr %32, i64 %30
  %38 = load i8, ptr %37, align 1, !tbaa !42
  %39 = icmp eq i8 %38, 0
  br i1 %39, label %45, label %40

40:                                               ; preds = %31, %36
  %41 = getelementptr inbounds %struct.cclass, ptr %33, i64 1
  %42 = load ptr, ptr %41, align 8, !tbaa !82
  %43 = icmp eq ptr %42, null
  br i1 %43, label %44, label %31, !llvm.loop !84

44:                                               ; preds = %40
  tail call fastcc void @seterr(ptr noundef nonnull %0, i32 noundef 4) #28
  br label %79

45:                                               ; preds = %36
  %46 = getelementptr inbounds %struct.cclass, ptr %33, i64 0, i32 1
  %47 = load ptr, ptr %46, align 8, !tbaa !85
  %48 = load i8, ptr %47, align 1, !tbaa !42
  %49 = icmp eq i8 %48, 0
  br i1 %49, label %67, label %50

50:                                               ; preds = %45
  %51 = getelementptr inbounds %struct.cset, ptr %1, i64 0, i32 1
  %52 = getelementptr inbounds %struct.cset, ptr %1, i64 0, i32 2
  br label %53

53:                                               ; preds = %50, %53
  %54 = phi i8 [ %48, %50 ], [ %65, %53 ]
  %55 = phi ptr [ %47, %50 ], [ %56, %53 ]
  %56 = getelementptr inbounds i8, ptr %55, i64 1
  %57 = load i8, ptr %51, align 8, !tbaa !61
  %58 = load ptr, ptr %1, align 8, !tbaa !63
  %59 = zext i8 %54 to i64
  %60 = getelementptr inbounds i8, ptr %58, i64 %59
  %61 = load i8, ptr %60, align 1, !tbaa !42
  %62 = or i8 %61, %57
  store i8 %62, ptr %60, align 1, !tbaa !42
  %63 = load i8, ptr %52, align 1, !tbaa !64
  %64 = add i8 %63, %54
  store i8 %64, ptr %52, align 1, !tbaa !64
  %65 = load i8, ptr %56, align 1, !tbaa !42
  %66 = icmp eq i8 %65, 0
  br i1 %66, label %67, label %53, !llvm.loop !86

67:                                               ; preds = %53, %45
  %68 = getelementptr inbounds %struct.cclass, ptr %33, i64 0, i32 2
  %69 = load ptr, ptr %68, align 8, !tbaa !87
  %70 = load i8, ptr %69, align 1, !tbaa !42
  %71 = icmp eq i8 %70, 0
  br i1 %71, label %79, label %72

72:                                               ; preds = %67, %72
  %73 = phi ptr [ %76, %72 ], [ %69, %67 ]
  tail call fastcc void @mcadd(ptr noundef nonnull %0, ptr noundef %1, ptr noundef nonnull %73) #28
  %74 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %73) #25
  %75 = add i64 %74, 1
  %76 = getelementptr inbounds i8, ptr %73, i64 %75
  %77 = load i8, ptr %76, align 1, !tbaa !42
  %78 = icmp eq i8 %77, 0
  br i1 %78, label %79, label %72, !llvm.loop !88

79:                                               ; preds = %72, %67, %44
  ret void
}

; Function Attrs: nofree noinline nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @p_b_eclass(ptr nocapture noundef %0, ptr nocapture noundef %1) unnamed_addr #18 {
  %3 = tail call fastcc signext i8 @p_b_coll_elem(ptr noundef %0, i32 noundef 61) #28
  %4 = getelementptr inbounds %struct.cset, ptr %1, i64 0, i32 1
  %5 = load i8, ptr %4, align 8, !tbaa !61
  %6 = load ptr, ptr %1, align 8, !tbaa !63
  %7 = zext i8 %3 to i64
  %8 = getelementptr inbounds i8, ptr %6, i64 %7
  %9 = load i8, ptr %8, align 1, !tbaa !42
  %10 = or i8 %9, %5
  store i8 %10, ptr %8, align 1, !tbaa !42
  %11 = getelementptr inbounds %struct.cset, ptr %1, i64 0, i32 2
  %12 = load i8, ptr %11, align 1, !tbaa !64
  %13 = add i8 %12, %3
  store i8 %13, ptr %11, align 1, !tbaa !64
  ret void
}

; Function Attrs: nofree noinline nounwind optsize memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc signext i8 @p_b_symbol(ptr nocapture noundef %0) unnamed_addr #19 {
  %2 = load ptr, ptr %0, align 8, !tbaa !18
  %3 = getelementptr inbounds %struct.parse, ptr %0, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !19
  %5 = icmp ult ptr %2, %4
  br i1 %5, label %9, label %6

6:                                                ; preds = %1
  tail call fastcc void @seterr(ptr noundef nonnull %0, i32 noundef 7) #28
  %7 = load ptr, ptr %0, align 8, !tbaa !18
  %8 = load ptr, ptr %3, align 8, !tbaa !19
  br label %9

9:                                                ; preds = %6, %1
  %10 = phi ptr [ %8, %6 ], [ %4, %1 ]
  %11 = phi ptr [ %7, %6 ], [ %2, %1 ]
  %12 = icmp ult ptr %11, %10
  br i1 %12, label %13, label %28

13:                                               ; preds = %9
  %14 = getelementptr inbounds i8, ptr %11, i64 1
  %15 = icmp ult ptr %14, %10
  br i1 %15, label %16, label %28

16:                                               ; preds = %13
  %17 = load i8, ptr %11, align 1, !tbaa !42
  %18 = icmp eq i8 %17, 91
  br i1 %18, label %19, label %28

19:                                               ; preds = %16
  %20 = load i8, ptr %14, align 1, !tbaa !42
  %21 = icmp eq i8 %20, 46
  br i1 %21, label %22, label %28

22:                                               ; preds = %19
  %23 = getelementptr inbounds i8, ptr %11, i64 2
  store ptr %23, ptr %0, align 8, !tbaa !18
  %24 = tail call fastcc signext i8 @p_b_coll_elem(ptr noundef nonnull %0, i32 noundef 46) #28
  %25 = load ptr, ptr %0, align 8, !tbaa !18
  %26 = load ptr, ptr %3, align 8, !tbaa !19
  %27 = icmp ult ptr %25, %26
  br i1 %27, label %31, label %42

28:                                               ; preds = %9, %13, %16, %19
  %29 = getelementptr inbounds i8, ptr %11, i64 1
  store ptr %29, ptr %0, align 8, !tbaa !18
  %30 = load i8, ptr %11, align 1, !tbaa !42
  br label %43

31:                                               ; preds = %22
  %32 = getelementptr inbounds i8, ptr %25, i64 1
  %33 = icmp ult ptr %32, %26
  br i1 %33, label %34, label %42

34:                                               ; preds = %31
  %35 = load i8, ptr %25, align 1, !tbaa !42
  %36 = icmp eq i8 %35, 46
  br i1 %36, label %37, label %42

37:                                               ; preds = %34
  %38 = load i8, ptr %32, align 1, !tbaa !42
  %39 = icmp eq i8 %38, 93
  br i1 %39, label %40, label %42

40:                                               ; preds = %37
  %41 = getelementptr inbounds i8, ptr %25, i64 2
  store ptr %41, ptr %0, align 8, !tbaa !18
  br label %43

42:                                               ; preds = %22, %31, %34, %37
  tail call fastcc void @seterr(ptr noundef nonnull %0, i32 noundef 3) #28
  br label %43

43:                                               ; preds = %42, %40, %28
  %44 = phi i8 [ %30, %28 ], [ %24, %40 ], [ %24, %42 ]
  ret i8 %44
}

; Function Attrs: mustprogress noinline nounwind optsize willreturn uwtable
define internal fastcc void @mcadd(ptr nocapture noundef %0, ptr nocapture noundef %1, ptr nocapture noundef readonly %2) unnamed_addr #6 {
  %4 = getelementptr inbounds %struct.cset, ptr %1, i64 0, i32 3
  %5 = load i64, ptr %4, align 8, !tbaa !89
  %6 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %2) #25
  %7 = add i64 %5, 1
  %8 = add i64 %7, %6
  store i64 %8, ptr %4, align 8, !tbaa !89
  %9 = getelementptr inbounds %struct.cset, ptr %1, i64 0, i32 4
  %10 = load ptr, ptr %9, align 8, !tbaa !90
  %11 = icmp eq ptr %10, null
  br i1 %11, label %12, label %14

12:                                               ; preds = %3
  %13 = tail call noalias ptr @malloc(i64 noundef %8) #26
  br label %16

14:                                               ; preds = %3
  %15 = tail call ptr @realloc(ptr noundef nonnull %10, i64 noundef %8) #29
  br label %16

16:                                               ; preds = %14, %12
  %17 = phi ptr [ %15, %14 ], [ %13, %12 ]
  store ptr %17, ptr %9, align 8, !tbaa !90
  %18 = icmp eq ptr %17, null
  br i1 %18, label %19, label %20

19:                                               ; preds = %16
  tail call fastcc void @seterr(ptr noundef %0, i32 noundef 12) #28
  br label %27

20:                                               ; preds = %16
  %21 = getelementptr inbounds i8, ptr %17, i64 %5
  %22 = getelementptr inbounds i8, ptr %21, i64 -1
  %23 = tail call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %22, ptr noundef nonnull dereferenceable(1) %2) #27
  %24 = load i64, ptr %4, align 8, !tbaa !89
  %25 = getelementptr i8, ptr %17, i64 %24
  %26 = getelementptr i8, ptr %25, i64 -1
  store i8 0, ptr %26, align 1, !tbaa !42
  br label %27

27:                                               ; preds = %20, %19
  ret void
}

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(argmem: readwrite)
declare ptr @strcpy(ptr noalias noundef returned writeonly, ptr noalias nocapture noundef readonly) local_unnamed_addr #20

; Function Attrs: nofree noinline nounwind optsize memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc signext i8 @p_b_coll_elem(ptr nocapture noundef %0, i32 noundef %1) unnamed_addr #19 {
  %3 = load ptr, ptr %0, align 8, !tbaa !18
  %4 = ptrtoint ptr %3 to i64
  %5 = getelementptr inbounds %struct.parse, ptr %0, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !19
  %7 = icmp ult ptr %3, %6
  br i1 %7, label %8, label %21

8:                                                ; preds = %2, %19
  %9 = phi ptr [ %10, %19 ], [ %3, %2 ]
  %10 = getelementptr inbounds i8, ptr %9, i64 1
  %11 = icmp ult ptr %10, %6
  br i1 %11, label %12, label %19

12:                                               ; preds = %8
  %13 = load i8, ptr %9, align 1, !tbaa !42
  %14 = sext i8 %13 to i32
  %15 = icmp eq i32 %14, %1
  br i1 %15, label %16, label %19

16:                                               ; preds = %12
  %17 = load i8, ptr %10, align 1, !tbaa !42
  %18 = icmp eq i8 %17, 93
  br i1 %18, label %22, label %19

19:                                               ; preds = %12, %8, %16
  store ptr %10, ptr %0, align 8, !tbaa !18
  %20 = icmp eq ptr %10, %6
  br i1 %20, label %21, label %8, !llvm.loop !91

21:                                               ; preds = %19, %2
  tail call fastcc void @seterr(ptr noundef nonnull %0, i32 noundef 7) #28
  br label %49

22:                                               ; preds = %16
  %23 = ptrtoint ptr %9 to i64
  %24 = sub i64 %23, %4
  %25 = shl i64 %24, 32
  %26 = ashr exact i64 %25, 32
  br label %27

27:                                               ; preds = %22, %39
  %28 = phi ptr [ @.str.27, %22 ], [ %41, %39 ]
  %29 = phi ptr [ @cnames, %22 ], [ %40, %39 ]
  %30 = tail call i32 @strncmp(ptr noundef nonnull %28, ptr noundef %3, i64 noundef %26) #25
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %32, label %39

32:                                               ; preds = %27
  %33 = getelementptr inbounds i8, ptr %28, i64 %26
  %34 = load i8, ptr %33, align 1, !tbaa !42
  %35 = icmp eq i8 %34, 0
  br i1 %35, label %36, label %39

36:                                               ; preds = %32
  %37 = getelementptr inbounds %struct.cname, ptr %29, i64 0, i32 1
  %38 = load i8, ptr %37, align 8, !tbaa !92
  br label %49

39:                                               ; preds = %27, %32
  %40 = getelementptr inbounds %struct.cname, ptr %29, i64 1
  %41 = load ptr, ptr %40, align 8, !tbaa !94
  %42 = icmp eq ptr %41, null
  br i1 %42, label %43, label %27, !llvm.loop !95

43:                                               ; preds = %39
  %44 = and i64 %24, 4294967295
  %45 = icmp eq i64 %44, 1
  br i1 %45, label %46, label %48

46:                                               ; preds = %43
  %47 = load i8, ptr %3, align 1, !tbaa !42
  br label %49

48:                                               ; preds = %43
  tail call fastcc void @seterr(ptr noundef nonnull %0, i32 noundef 3) #28
  br label %49

49:                                               ; preds = %48, %46, %36, %21
  %50 = phi i8 [ %38, %36 ], [ %47, %46 ], [ 0, %48 ], [ 0, %21 ]
  ret i8 %50
}

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(read)
declare i32 @tolower(i32 noundef) local_unnamed_addr #21

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(read)
declare i32 @toupper(i32 noundef) local_unnamed_addr #21

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @bothcases(ptr nocapture noundef %0, i32 noundef %1) unnamed_addr #0 {
  %3 = alloca [3 x i8], align 1
  %4 = getelementptr inbounds %struct.parse, ptr %0, i64 0, i32 1
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %3) #24
  %5 = getelementptr inbounds i8, ptr %3, i64 2
  %6 = trunc i32 %1 to i8
  store i8 %6, ptr %3, align 1, !tbaa !42
  %7 = getelementptr inbounds [3 x i8], ptr %3, i64 0, i64 1
  store i8 93, ptr %7, align 1, !tbaa !42
  store i8 0, ptr %5, align 1, !tbaa !42
  %8 = load <2 x ptr>, ptr %0, align 8, !tbaa !56
  store ptr %3, ptr %0, align 8, !tbaa !18
  store ptr %5, ptr %4, align 8, !tbaa !19
  call fastcc void @p_bracket(ptr noundef nonnull %0) #28
  store <2 x ptr> %8, ptr %0, align 8, !tbaa !56
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %3) #24
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize willreturn uwtable
define internal fastcc i64 @dupl(ptr nocapture noundef %0, i64 noundef %1, i64 noundef %2) unnamed_addr #6 {
  %4 = getelementptr inbounds %struct.parse, ptr %0, i64 0, i32 5
  %5 = load i64, ptr %4, align 8, !tbaa !16
  %6 = icmp eq i64 %2, %1
  br i1 %6, label %20, label %7

7:                                                ; preds = %3
  %8 = sub nsw i64 %2, %1
  %9 = getelementptr inbounds %struct.parse, ptr %0, i64 0, i32 4
  %10 = load i64, ptr %9, align 8, !tbaa !13
  %11 = add nsw i64 %10, %8
  tail call fastcc void @enlarge(ptr noundef nonnull %0, i64 noundef %11) #28
  %12 = getelementptr inbounds %struct.parse, ptr %0, i64 0, i32 3
  %13 = load ptr, ptr %12, align 8, !tbaa !15
  %14 = load i64, ptr %4, align 8, !tbaa !16
  %15 = getelementptr inbounds i64, ptr %13, i64 %14
  %16 = getelementptr inbounds i64, ptr %13, i64 %1
  %17 = shl i64 %8, 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %15, ptr align 1 %16, i64 %17, i1 false)
  %18 = load i64, ptr %4, align 8, !tbaa !16
  %19 = add nsw i64 %18, %8
  store i64 %19, ptr %4, align 8, !tbaa !16
  br label %20

20:                                               ; preds = %3, %7
  ret i64 %5
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #22

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr nocapture writeonly, ptr nocapture readonly, i64, i1 immarg) #22

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef i32 @p_simp_re(ptr nocapture noundef %0, i32 noundef %1) unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.parse, ptr %0, i64 0, i32 5
  %4 = load i64, ptr %3, align 8, !tbaa !16
  %5 = load ptr, ptr %0, align 8, !tbaa !18
  %6 = getelementptr inbounds i8, ptr %5, i64 1
  store ptr %6, ptr %0, align 8, !tbaa !18
  %7 = load i8, ptr %5, align 1, !tbaa !42
  %8 = sext i8 %7 to i32
  %9 = icmp eq i8 %7, 92
  br i1 %9, label %10, label %22

10:                                               ; preds = %2
  %11 = getelementptr inbounds %struct.parse, ptr %0, i64 0, i32 1
  %12 = load ptr, ptr %11, align 8, !tbaa !19
  %13 = icmp ult ptr %6, %12
  br i1 %13, label %16, label %14

14:                                               ; preds = %10
  tail call fastcc void @seterr(ptr noundef nonnull %0, i32 noundef 5) #28
  %15 = load ptr, ptr %0, align 8, !tbaa !18
  br label %16

16:                                               ; preds = %14, %10
  %17 = phi ptr [ %15, %14 ], [ %6, %10 ]
  %18 = getelementptr inbounds i8, ptr %17, i64 1
  store ptr %18, ptr %0, align 8, !tbaa !18
  %19 = load i8, ptr %17, align 1, !tbaa !42
  %20 = zext i8 %19 to i32
  %21 = or disjoint i32 %20, 256
  br label %22

22:                                               ; preds = %16, %2
  %23 = phi i32 [ %21, %16 ], [ %8, %2 ]
  switch i32 %23, label %102 [
    i32 46, label %24
    i32 91, label %33
    i32 379, label %34
    i32 296, label %35
    i32 297, label %80
    i32 381, label %80
    i32 305, label %81
    i32 306, label %81
    i32 307, label %81
    i32 308, label %81
    i32 309, label %81
    i32 310, label %81
    i32 311, label %81
    i32 312, label %81
    i32 313, label %81
    i32 42, label %99
  ]

24:                                               ; preds = %22
  %25 = getelementptr inbounds %struct.parse, ptr %0, i64 0, i32 7
  %26 = load ptr, ptr %25, align 8, !tbaa !17
  %27 = getelementptr inbounds %struct.re_guts, ptr %26, i64 0, i32 6
  %28 = load i32, ptr %27, align 8, !tbaa !24
  %29 = and i32 %28, 8
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %32, label %31

31:                                               ; preds = %24
  tail call fastcc void @nonnewline(ptr noundef nonnull %0) #28
  br label %105

32:                                               ; preds = %24
  tail call fastcc void @doemit(ptr noundef nonnull %0, i64 noundef 335544320, i64 noundef 0) #28
  br label %105

33:                                               ; preds = %22
  tail call fastcc void @p_bracket(ptr noundef nonnull %0) #28
  br label %105

34:                                               ; preds = %22
  tail call fastcc void @seterr(ptr noundef nonnull %0, i32 noundef 13) #28
  br label %105

35:                                               ; preds = %22
  %36 = getelementptr inbounds %struct.parse, ptr %0, i64 0, i32 7
  %37 = load ptr, ptr %36, align 8, !tbaa !17
  %38 = getelementptr inbounds %struct.re_guts, ptr %37, i64 0, i32 17
  %39 = load i64, ptr %38, align 8, !tbaa !30
  %40 = add i64 %39, 1
  store i64 %40, ptr %38, align 8, !tbaa !30
  %41 = icmp slt i64 %40, 10
  br i1 %41, label %42, label %45

42:                                               ; preds = %35
  %43 = load i64, ptr %3, align 8, !tbaa !16
  %44 = getelementptr inbounds %struct.parse, ptr %0, i64 0, i32 8, i64 %40
  store i64 %43, ptr %44, align 8, !tbaa !41
  br label %45

45:                                               ; preds = %42, %35
  tail call fastcc void @doemit(ptr noundef nonnull %0, i64 noundef 872415232, i64 noundef %40) #28
  %46 = load ptr, ptr %0, align 8, !tbaa !18
  %47 = getelementptr inbounds %struct.parse, ptr %0, i64 0, i32 1
  %48 = load ptr, ptr %47, align 8, !tbaa !19
  %49 = icmp ult ptr %46, %48
  br i1 %49, label %50, label %60

50:                                               ; preds = %45
  %51 = getelementptr inbounds i8, ptr %46, i64 1
  %52 = icmp ult ptr %51, %48
  br i1 %52, label %53, label %59

53:                                               ; preds = %50
  %54 = load i8, ptr %46, align 1, !tbaa !42
  %55 = icmp eq i8 %54, 92
  br i1 %55, label %56, label %59

56:                                               ; preds = %53
  %57 = load i8, ptr %51, align 1, !tbaa !42
  %58 = icmp eq i8 %57, 41
  br i1 %58, label %60, label %59

59:                                               ; preds = %56, %53, %50
  tail call fastcc void @p_bre(ptr noundef nonnull %0, i32 noundef 92, i32 noundef 41) #28
  br label %60

60:                                               ; preds = %59, %56, %45
  br i1 %41, label %61, label %64

61:                                               ; preds = %60
  %62 = load i64, ptr %3, align 8, !tbaa !16
  %63 = getelementptr inbounds %struct.parse, ptr %0, i64 0, i32 9, i64 %40
  store i64 %62, ptr %63, align 8, !tbaa !41
  br label %64

64:                                               ; preds = %61, %60
  tail call fastcc void @doemit(ptr noundef nonnull %0, i64 noundef 939524096, i64 noundef %40) #28
  %65 = load ptr, ptr %0, align 8, !tbaa !18
  %66 = load ptr, ptr %47, align 8, !tbaa !19
  %67 = icmp ult ptr %65, %66
  br i1 %67, label %68, label %79

68:                                               ; preds = %64
  %69 = getelementptr inbounds i8, ptr %65, i64 1
  %70 = icmp ult ptr %69, %66
  br i1 %70, label %71, label %79

71:                                               ; preds = %68
  %72 = load i8, ptr %65, align 1, !tbaa !42
  %73 = icmp eq i8 %72, 92
  br i1 %73, label %74, label %79

74:                                               ; preds = %71
  %75 = load i8, ptr %69, align 1, !tbaa !42
  %76 = icmp eq i8 %75, 41
  br i1 %76, label %77, label %79

77:                                               ; preds = %74
  %78 = getelementptr inbounds i8, ptr %65, i64 2
  store ptr %78, ptr %0, align 8, !tbaa !18
  br label %105

79:                                               ; preds = %64, %68, %71, %74
  tail call fastcc void @seterr(ptr noundef nonnull %0, i32 noundef 8) #28
  br label %105

80:                                               ; preds = %22, %22
  tail call fastcc void @seterr(ptr noundef nonnull %0, i32 noundef 8) #28
  br label %105

81:                                               ; preds = %22, %22, %22, %22, %22, %22, %22, %22, %22
  %82 = and i32 %23, -257
  %83 = add nsw i32 %82, -48
  %84 = zext nneg i32 %83 to i64
  %85 = getelementptr inbounds %struct.parse, ptr %0, i64 0, i32 9, i64 %84
  %86 = load i64, ptr %85, align 8, !tbaa !41
  %87 = icmp eq i64 %86, 0
  br i1 %87, label %94, label %88

88:                                               ; preds = %81
  tail call fastcc void @doemit(ptr noundef nonnull %0, i64 noundef 469762048, i64 noundef %84) #28
  %89 = getelementptr inbounds %struct.parse, ptr %0, i64 0, i32 8, i64 %84
  %90 = load i64, ptr %89, align 8, !tbaa !41
  %91 = add nsw i64 %90, 1
  %92 = load i64, ptr %85, align 8, !tbaa !41
  %93 = tail call fastcc i64 @dupl(ptr noundef nonnull %0, i64 noundef %91, i64 noundef %92) #28
  tail call fastcc void @doemit(ptr noundef nonnull %0, i64 noundef 536870912, i64 noundef %84) #28
  br label %95

94:                                               ; preds = %81
  tail call fastcc void @seterr(ptr noundef nonnull %0, i32 noundef 6) #28
  br label %95

95:                                               ; preds = %94, %88
  %96 = getelementptr inbounds %struct.parse, ptr %0, i64 0, i32 7
  %97 = load ptr, ptr %96, align 8, !tbaa !17
  %98 = getelementptr inbounds %struct.re_guts, ptr %97, i64 0, i32 18
  store i32 1, ptr %98, align 8, !tbaa !33
  br label %105

99:                                               ; preds = %22
  %100 = icmp eq i32 %1, 0
  br i1 %100, label %101, label %102

101:                                              ; preds = %99
  tail call fastcc void @seterr(ptr noundef nonnull %0, i32 noundef 13) #28
  br label %102

102:                                              ; preds = %99, %101, %22
  %103 = shl i32 %23, 24
  %104 = ashr exact i32 %103, 24
  tail call fastcc void @ordinary(ptr noundef nonnull %0, i32 noundef %104) #28
  br label %105

105:                                              ; preds = %79, %77, %31, %32, %102, %95, %80, %34, %33
  %106 = load ptr, ptr %0, align 8, !tbaa !18
  %107 = getelementptr inbounds %struct.parse, ptr %0, i64 0, i32 1
  %108 = load ptr, ptr %107, align 8, !tbaa !19
  %109 = icmp ult ptr %106, %108
  br i1 %109, label %110, label %188

110:                                              ; preds = %105
  %111 = load i8, ptr %106, align 1, !tbaa !42
  %112 = icmp eq i8 %111, 42
  %113 = getelementptr inbounds i8, ptr %106, i64 1
  br i1 %112, label %114, label %125

114:                                              ; preds = %110
  store ptr %113, ptr %0, align 8, !tbaa !18
  %115 = load i64, ptr %3, align 8, !tbaa !16
  %116 = sub i64 %115, %4
  %117 = add i64 %116, 1
  tail call fastcc void @doinsert(ptr noundef nonnull %0, i64 noundef 603979776, i64 noundef %117, i64 noundef %4) #28
  %118 = load i64, ptr %3, align 8, !tbaa !16
  %119 = sub nsw i64 %118, %4
  tail call fastcc void @doemit(ptr noundef nonnull %0, i64 noundef 671088640, i64 noundef %119) #28
  %120 = load i64, ptr %3, align 8, !tbaa !16
  %121 = sub i64 %120, %4
  %122 = add i64 %121, 1
  tail call fastcc void @doinsert(ptr noundef nonnull %0, i64 noundef 738197504, i64 noundef %122, i64 noundef %4) #28
  %123 = load i64, ptr %3, align 8, !tbaa !16
  %124 = sub nsw i64 %123, %4
  tail call fastcc void @doemit(ptr noundef nonnull %0, i64 noundef 805306368, i64 noundef %124) #28
  br label %190

125:                                              ; preds = %110
  %126 = icmp ult ptr %113, %108
  %127 = icmp eq i8 %111, 92
  %128 = and i1 %126, %127
  br i1 %128, label %129, label %188

129:                                              ; preds = %125
  %130 = load i8, ptr %113, align 1, !tbaa !42
  %131 = icmp eq i8 %130, 123
  br i1 %131, label %132, label %188

132:                                              ; preds = %129
  %133 = getelementptr inbounds i8, ptr %106, i64 2
  store ptr %133, ptr %0, align 8, !tbaa !18
  %134 = tail call fastcc i32 @p_count(ptr noundef nonnull %0) #28
  %135 = load ptr, ptr %0, align 8, !tbaa !18
  %136 = load ptr, ptr %107, align 8, !tbaa !19
  %137 = icmp ult ptr %135, %136
  br i1 %137, label %138, label %157

138:                                              ; preds = %132
  %139 = load i8, ptr %135, align 1, !tbaa !42
  %140 = icmp eq i8 %139, 44
  br i1 %140, label %141, label %157

141:                                              ; preds = %138
  %142 = getelementptr inbounds i8, ptr %135, i64 1
  store ptr %142, ptr %0, align 8, !tbaa !18
  %143 = icmp ult ptr %142, %136
  br i1 %143, label %144, label %157

144:                                              ; preds = %141
  %145 = tail call ptr @__ctype_b_loc() #30
  %146 = load ptr, ptr %145, align 8, !tbaa !56
  %147 = load i8, ptr %142, align 1, !tbaa !42
  %148 = sext i8 %147 to i64
  %149 = getelementptr inbounds i16, ptr %146, i64 %148
  %150 = load i16, ptr %149, align 2, !tbaa !57
  %151 = and i16 %150, 2048
  %152 = icmp eq i16 %151, 0
  br i1 %152, label %157, label %153

153:                                              ; preds = %144
  %154 = tail call fastcc i32 @p_count(ptr noundef nonnull %0) #28
  %155 = icmp sgt i32 %134, %154
  br i1 %155, label %156, label %157

156:                                              ; preds = %153
  tail call fastcc void @seterr(ptr noundef nonnull %0, i32 noundef 10) #28
  br label %157

157:                                              ; preds = %138, %132, %141, %144, %153, %156
  %158 = phi i32 [ %154, %156 ], [ %154, %153 ], [ 256, %144 ], [ 256, %141 ], [ %134, %132 ], [ %134, %138 ]
  tail call fastcc void @repeat(ptr noundef nonnull %0, i64 noundef %4, i32 noundef %134, i32 noundef %158) #28
  %159 = load ptr, ptr %0, align 8, !tbaa !18
  %160 = load ptr, ptr %107, align 8, !tbaa !19
  %161 = icmp ult ptr %159, %160
  br i1 %161, label %162, label %186

162:                                              ; preds = %157
  %163 = getelementptr inbounds i8, ptr %159, i64 1
  %164 = icmp ult ptr %163, %160
  br i1 %164, label %165, label %171

165:                                              ; preds = %162
  %166 = load i8, ptr %159, align 1, !tbaa !42
  %167 = icmp eq i8 %166, 92
  br i1 %167, label %168, label %171

168:                                              ; preds = %165
  %169 = load i8, ptr %163, align 1, !tbaa !42
  %170 = icmp eq i8 %169, 125
  br i1 %170, label %172, label %171

171:                                              ; preds = %162, %165, %168
  br label %174

172:                                              ; preds = %168
  %173 = getelementptr inbounds i8, ptr %159, i64 2
  store ptr %173, ptr %0, align 8, !tbaa !18
  br label %190

174:                                              ; preds = %171, %184
  %175 = phi ptr [ %176, %184 ], [ %159, %171 ]
  %176 = getelementptr inbounds i8, ptr %175, i64 1
  %177 = icmp ult ptr %176, %160
  br i1 %177, label %178, label %184

178:                                              ; preds = %174
  %179 = load i8, ptr %175, align 1, !tbaa !42
  %180 = icmp eq i8 %179, 92
  br i1 %180, label %181, label %184

181:                                              ; preds = %178
  %182 = load i8, ptr %176, align 1, !tbaa !42
  %183 = icmp eq i8 %182, 125
  br i1 %183, label %187, label %184

184:                                              ; preds = %178, %174, %181
  store ptr %176, ptr %0, align 8, !tbaa !18
  %185 = icmp eq ptr %176, %160
  br i1 %185, label %186, label %174, !llvm.loop !96

186:                                              ; preds = %184, %157
  tail call fastcc void @seterr(ptr noundef nonnull %0, i32 noundef 9) #28
  br label %187

187:                                              ; preds = %181, %186
  tail call fastcc void @seterr(ptr noundef nonnull %0, i32 noundef 10) #28
  br label %190

188:                                              ; preds = %105, %125, %129
  %189 = icmp eq i32 %23, 36
  br i1 %189, label %191, label %190

190:                                              ; preds = %172, %187, %188, %114
  br label %191

191:                                              ; preds = %188, %190
  %192 = phi i32 [ 0, %190 ], [ 1, %188 ]
  ret i32 %192
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable
define internal fastcc noundef i32 @isinsets(ptr nocapture noundef readonly %0, i32 noundef %1) unnamed_addr #17 {
  %3 = getelementptr inbounds %struct.re_guts, ptr %0, i64 0, i32 3
  %4 = load i32, ptr %3, align 4, !tbaa !69
  %5 = and i32 %1, 255
  %6 = zext nneg i32 %5 to i64
  %7 = icmp sgt i32 %4, 0
  br i1 %7, label %8, label %26

8:                                                ; preds = %2
  %9 = add nuw nsw i32 %4, 7
  %10 = lshr i32 %9, 3
  %11 = getelementptr inbounds %struct.re_guts, ptr %0, i64 0, i32 5
  %12 = load ptr, ptr %11, align 8, !tbaa !71
  %13 = getelementptr inbounds %struct.re_guts, ptr %0, i64 0, i32 2
  br label %14

14:                                               ; preds = %8, %20
  %15 = phi ptr [ %12, %8 ], [ %24, %20 ]
  %16 = phi i32 [ 0, %8 ], [ %21, %20 ]
  %17 = getelementptr inbounds i8, ptr %15, i64 %6
  %18 = load i8, ptr %17, align 1, !tbaa !42
  %19 = icmp eq i8 %18, 0
  br i1 %19, label %20, label %26

20:                                               ; preds = %14
  %21 = add nuw nsw i32 %16, 1
  %22 = load i32, ptr %13, align 8, !tbaa !22
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds i8, ptr %15, i64 %23
  %25 = icmp eq i32 %21, %10
  br i1 %25, label %26, label %14, !llvm.loop !97

26:                                               ; preds = %14, %20, %2
  %27 = phi i32 [ 0, %2 ], [ 0, %20 ], [ 1, %14 ]
  ret i32 %27
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable
define internal fastcc noundef i32 @samesets(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2) unnamed_addr #17 {
  %4 = getelementptr inbounds %struct.re_guts, ptr %0, i64 0, i32 3
  %5 = load i32, ptr %4, align 4, !tbaa !69
  %6 = and i32 %1, 255
  %7 = zext nneg i32 %6 to i64
  %8 = icmp sgt i32 %5, 0
  br i1 %8, label %9, label %31

9:                                                ; preds = %3
  %10 = add nuw nsw i32 %5, 7
  %11 = lshr i32 %10, 3
  %12 = getelementptr inbounds %struct.re_guts, ptr %0, i64 0, i32 5
  %13 = load ptr, ptr %12, align 8, !tbaa !71
  %14 = and i32 %2, 255
  %15 = zext nneg i32 %14 to i64
  %16 = getelementptr inbounds %struct.re_guts, ptr %0, i64 0, i32 2
  br label %17

17:                                               ; preds = %9, %25
  %18 = phi ptr [ %13, %9 ], [ %29, %25 ]
  %19 = phi i32 [ 0, %9 ], [ %26, %25 ]
  %20 = getelementptr inbounds i8, ptr %18, i64 %7
  %21 = load i8, ptr %20, align 1, !tbaa !42
  %22 = getelementptr inbounds i8, ptr %18, i64 %15
  %23 = load i8, ptr %22, align 1, !tbaa !42
  %24 = icmp eq i8 %21, %23
  br i1 %24, label %25, label %31

25:                                               ; preds = %17
  %26 = add nuw nsw i32 %19, 1
  %27 = load i32, ptr %16, align 8, !tbaa !22
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds i8, ptr %18, i64 %28
  %30 = icmp eq i32 %26, %11
  br i1 %30, label %31, label %17, !llvm.loop !98

31:                                               ; preds = %17, %25, %3
  %32 = phi i32 [ 1, %3 ], [ 1, %25 ], [ 0, %17 ]
  ret i32 %32
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smax.i64(i64, i64) #23

attributes #0 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nofree nounwind optsize willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree nounwind optsize willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nounwind optsize willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #6 = { mustprogress noinline nounwind optsize willreturn uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nofree noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nofree noinline norecurse nosync nounwind optsize memory(read, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { mustprogress nounwind optsize willreturn allockind("realloc") allocsize(1) memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { mustprogress nofree nosync nounwind optsize willreturn memory(none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { nofree noinline nosync nounwind optsize memory(read, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { mustprogress nofree noinline nounwind optsize willreturn memory(read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { nofree noinline norecurse nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { nofree noinline nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #19 = { nofree noinline nounwind optsize memory(read, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #20 = { mustprogress nofree nounwind optsize willreturn memory(argmem: readwrite) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #21 = { mustprogress nofree nounwind optsize willreturn memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #22 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #23 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #24 = { nounwind }
attributes #25 = { nounwind optsize willreturn memory(read) }
attributes #26 = { nounwind optsize allocsize(0) }
attributes #27 = { nounwind optsize }
attributes #28 = { optsize }
attributes #29 = { nounwind optsize allocsize(1) }
attributes #30 = { nounwind optsize willreturn memory(none) }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"openmp", i32 51}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"PIE Level", i32 2}
!4 = !{i32 7, !"uwtable", i32 2}
!5 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!6 = !{!7, !12, i64 16}
!7 = !{!"", !8, i64 0, !11, i64 8, !12, i64 16, !12, i64 24}
!8 = !{!"int", !9, i64 0}
!9 = !{!"omnipotent char", !10, i64 0}
!10 = !{!"Simple C/C++ TBAA"}
!11 = !{!"long", !9, i64 0}
!12 = !{!"any pointer", !9, i64 0}
!13 = !{!14, !11, i64 32}
!14 = !{!"parse", !12, i64 0, !12, i64 8, !8, i64 16, !12, i64 24, !11, i64 32, !11, i64 40, !8, i64 48, !12, i64 56, !9, i64 64, !9, i64 144}
!15 = !{!14, !12, i64 24}
!16 = !{!14, !11, i64 40}
!17 = !{!14, !12, i64 56}
!18 = !{!14, !12, i64 0}
!19 = !{!14, !12, i64 8}
!20 = !{!14, !8, i64 16}
!21 = !{!14, !8, i64 48}
!22 = !{!23, !8, i64 16}
!23 = !{!"re_guts", !8, i64 0, !12, i64 8, !8, i64 16, !8, i64 20, !12, i64 24, !12, i64 32, !8, i64 40, !11, i64 48, !11, i64 56, !11, i64 64, !8, i64 72, !8, i64 76, !8, i64 80, !8, i64 84, !12, i64 88, !12, i64 96, !8, i64 104, !11, i64 112, !8, i64 120, !11, i64 128, !9, i64 136}
!24 = !{!23, !8, i64 40}
!25 = !{!23, !8, i64 72}
!26 = !{!23, !8, i64 76}
!27 = !{!23, !8, i64 80}
!28 = !{!23, !12, i64 96}
!29 = !{!23, !8, i64 104}
!30 = !{!23, !11, i64 112}
!31 = !{!23, !8, i64 84}
!32 = !{!23, !12, i64 88}
!33 = !{!23, !8, i64 120}
!34 = !{!23, !11, i64 56}
!35 = !{!23, !11, i64 64}
!36 = !{!23, !11, i64 128}
!37 = !{!23, !8, i64 0}
!38 = !{!7, !11, i64 8}
!39 = !{!7, !12, i64 24}
!40 = !{!7, !8, i64 0}
!41 = !{!11, !11, i64 0}
!42 = !{!9, !9, i64 0}
!43 = distinct !{!43, !44}
!44 = !{!"llvm.loop.mustprogress"}
!45 = distinct !{!45, !44}
!46 = !{i32 0, i32 2}
!47 = distinct !{!47, !44}
!48 = distinct !{!48, !44}
!49 = distinct !{!49, !44}
!50 = !{!23, !11, i64 48}
!51 = !{!23, !12, i64 8}
!52 = distinct !{!52, !44}
!53 = distinct !{!53, !44}
!54 = distinct !{!54, !44}
!55 = distinct !{!55, !44}
!56 = !{!12, !12, i64 0}
!57 = !{!58, !58, i64 0}
!58 = !{!"short", !9, i64 0}
!59 = distinct !{!59, !44}
!60 = distinct !{!60, !44}
!61 = !{!62, !9, i64 8}
!62 = !{!"", !12, i64 0, !9, i64 8, !9, i64 9, !11, i64 16, !12, i64 24}
!63 = !{!62, !12, i64 0}
!64 = !{!62, !9, i64 9}
!65 = distinct !{!65, !44}
!66 = distinct !{!66, !44}
!67 = distinct !{!67, !44}
!68 = distinct !{!68, !44}
!69 = !{!23, !8, i64 20}
!70 = !{!23, !12, i64 24}
!71 = !{!23, !12, i64 32}
!72 = distinct !{!72, !44, !73, !74}
!73 = !{!"llvm.loop.isvectorized", i32 1}
!74 = !{!"llvm.loop.unroll.runtime.disable"}
!75 = distinct !{!75, !44}
!76 = distinct !{!76, !44}
!77 = distinct !{!77, !44}
!78 = distinct !{!78, !44}
!79 = distinct !{!79, !44}
!80 = distinct !{!80, !44}
!81 = distinct !{!81, !44}
!82 = !{!83, !12, i64 0}
!83 = !{!"cclass", !12, i64 0, !12, i64 8, !12, i64 16}
!84 = distinct !{!84, !44}
!85 = !{!83, !12, i64 8}
!86 = distinct !{!86, !44}
!87 = !{!83, !12, i64 16}
!88 = distinct !{!88, !44}
!89 = !{!62, !11, i64 16}
!90 = !{!62, !12, i64 24}
!91 = distinct !{!91, !44}
!92 = !{!93, !9, i64 8}
!93 = !{!"cname", !12, i64 0, !9, i64 8}
!94 = !{!93, !12, i64 0}
!95 = distinct !{!95, !44}
!96 = distinct !{!96, !44}
!97 = distinct !{!97, !44}
!98 = distinct !{!98, !44}
