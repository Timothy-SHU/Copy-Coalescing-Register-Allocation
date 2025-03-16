; ModuleID = 'src/z36.c'
source_filename = "src/z36.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.word_type = type { [2 x %struct.LIST], %union.FIRST_UNION, %union.SECOND_UNION, %union.THIRD_UNION, [4 x i8] }
%struct.LIST = type { ptr, ptr }
%union.FIRST_UNION = type { %struct.FILE_POS }
%struct.FILE_POS = type { i8, i8, i16, i32 }
%union.SECOND_UNION = type { %struct.anon.1 }
%struct.anon.1 = type { i32 }
%union.THIRD_UNION = type { ptr, [8 x i8] }
%struct.trie_rec = type { i32, i32, [256 x i8], ptr, i32, i32, ptr, i32, i32 }
%struct.gapobj_type = type { [2 x %struct.LIST], %union.FIRST_UNION, %union.SECOND_UNION, %struct.GAP, i32, i16, i16, ptr, ptr }
%struct.GAP = type { i16, i16 }
%struct.font_rec = type { ptr, ptr, ptr, ptr, i32, ptr, ptr, i16, i16, ptr, ptr, ptr, ptr }

@.str = private unnamed_addr constant [20 x i8] c"assert failed in %s\00", align 1
@no_fpos = external local_unnamed_addr global ptr, align 8
@.str.1 = private unnamed_addr constant [26 x i8] c"ReadHyphTable: lnum <= 0!\00", align 1
@HyphTables = internal unnamed_addr global [64 x ptr] zeroinitializer, align 16
@TriedFile = internal unnamed_addr global [64 x i32] zeroinitializer, align 16
@.str.2 = private unnamed_addr constant [15 x i8] c"ReadHyphTable!\00", align 1
@.str.3 = private unnamed_addr constant [28 x i8] c"Hyphenate: type(x) != ACAT!\00", align 1
@.str.4 = private unnamed_addr constant [32 x i8] c"no current language for word %s\00", align 1
@zz_lengths = external local_unnamed_addr global [0 x i8], align 1
@zz_size = external local_unnamed_addr global i32, align 4
@zz_free = external local_unnamed_addr global [0 x ptr], align 8
@zz_hold = external local_unnamed_addr global ptr, align 8
@xx_link = external local_unnamed_addr global ptr, align 8
@zz_res = external local_unnamed_addr global ptr, align 8
@zz_tmp = external local_unnamed_addr global ptr, align 8
@.str.6 = private unnamed_addr constant [4 x i8] c"0ch\00", align 1
@finfo = external local_unnamed_addr global ptr, align 8
@.str.7 = private unnamed_addr constant [17 x i8] c"TrieRead: fname!\00", align 1
@.str.8 = private unnamed_addr constant [4 x i8] c".lp\00", align 1
@InitializeAll = external local_unnamed_addr global i32, align 4
@.str.9 = private unnamed_addr constant [4 x i8] c".lh\00", align 1
@.str.10 = private unnamed_addr constant [32 x i8] c"cannot open hyphenation file %s\00", align 1
@.str.11 = private unnamed_addr constant [30 x i8] c"Lout hyphenation information\0A\00", align 1
@.str.12 = private unnamed_addr constant [30 x i8] c"Lout hyphenation placeholder\0A\00", align 1
@.str.13 = private unnamed_addr constant [43 x i8] c"header line of hyphenation file %s missing\00", align 1
@.str.14 = private unnamed_addr constant [5 x i8] c"%s%n\00", align 1
@.str.15 = private unnamed_addr constant [9 x i8] c"Classes:\00", align 1
@.str.16 = private unnamed_addr constant [47 x i8] c"Classes heading of hyphenation file %s missing\00", align 1
@.str.17 = private unnamed_addr constant [12 x i8] c"Exceptions:\00", align 1
@.str.18 = private unnamed_addr constant [10 x i8] c"Patterns:\00", align 1
@.str.19 = private unnamed_addr constant [13 x i8] c"LengthLimit:\00", align 1
@.str.20 = private unnamed_addr constant [48 x i8] c"hyphenation file %s%s is too large (at line %d)\00", align 1
@.str.21 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.22 = private unnamed_addr constant [51 x i8] c"bad LengthLimit in hyphenation file %s%s (line %d)\00", align 1
@.str.23 = private unnamed_addr constant [16 x i8] c"TrieRead: state\00", align 1
@.str.24 = private unnamed_addr constant [36 x i8] c"format error in hyphenation file %s\00", align 1
@.str.25 = private unnamed_addr constant [2 x i8] c"w\00", align 1
@.str.26 = private unnamed_addr constant [36 x i8] c"cannot write to hyphenation file %s\00", align 1
@.str.27 = private unnamed_addr constant [50 x i8] c"run out of memory while reading hyphenation table\00", align 1
@.str.28 = private unnamed_addr constant [46 x i8] c"error on read from packed hyphenation file %s\00", align 1
@.str.29 = private unnamed_addr constant [40 x i8] c"bad magic number in hyphenation file %s\00", align 1
@.str.30 = private unnamed_addr constant [55 x i8] c"run out of memory while constructing hyphenation table\00", align 1
@tex_codes = internal unnamed_addr constant [138 x ptr] [ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @.str.68, ptr @.str.69, ptr @.str.70, ptr @.str.71, ptr @.str.72, ptr @.str.73, ptr @.str.74, ptr @.str.75, ptr @.str.76, ptr @.str.77, ptr @.str.78, ptr @.str.79, ptr @.str.80, ptr @.str.81, ptr @.str.82, ptr @.str.83, ptr @.str.84, ptr @.str.85, ptr @.str.86, ptr @.str.87, ptr @.str.88, ptr @.str.89, ptr @.str.90, ptr @.str.91, ptr @.str.92, ptr @.str.93, ptr @.str.94, ptr @.str.95, ptr @.str.96, ptr @.str.97, ptr @.str.98, ptr @.str.99, ptr @.str.100, ptr @.str.101, ptr @.str.102, ptr @.str.103, ptr @.str.104, ptr @.str.105, ptr @.str.106, ptr @.str.107, ptr @.str.108, ptr @.str.109, ptr @.str.110, ptr @.str.111, ptr @.str.112, ptr @.str.113, ptr @.str.114, ptr @.str.115, ptr @.str.116, ptr @.str.117, ptr @.str.118, ptr @.str.119, ptr @.str.120, ptr @.str.121, ptr @.str.122, ptr @.str.123, ptr @.str.124, ptr @.str.125, ptr @.str.126, ptr @.str.127, ptr @.str.128, ptr @.str.129, ptr @.str.130, ptr @.str.131, ptr @.str.132, ptr @.str.133, ptr @.str.134, ptr @.str.135, ptr @.str.136, ptr @.str.137, ptr @.str.138, ptr @.str.139, ptr @.str.140, ptr @.str.141, ptr @.str.142, ptr @.str.143, ptr @.str.144, ptr @.str.145, ptr @.str.146, ptr @.str.147, ptr @.str.148, ptr @.str.149, ptr @.str.150, ptr @.str.151, ptr @.str.152, ptr @.str.153, ptr @.str.154, ptr @.str.155, ptr @.str.156, ptr @.str.157, ptr @.str.158, ptr @.str.159, ptr @.str.160, ptr @.str.161, ptr @.str.162, ptr @.str.163, ptr @.str.164, ptr @.str.165, ptr @.str.166, ptr @.str.167, ptr @.str.167, ptr @.str.167], align 16
@.str.31 = private unnamed_addr constant [58 x i8] c"in hyphenation file %s, unknown escape sequence (line %d)\00", align 1
@.str.32 = private unnamed_addr constant [7 x i8] c"Agrave\00", align 1
@.str.33 = private unnamed_addr constant [3 x i8] c"`A\00", align 1
@.str.34 = private unnamed_addr constant [2 x i8] c"\C0\00", align 1
@.str.35 = private unnamed_addr constant [7 x i8] c"Aacute\00", align 1
@.str.36 = private unnamed_addr constant [3 x i8] c"'A\00", align 1
@.str.37 = private unnamed_addr constant [2 x i8] c"\C1\00", align 1
@.str.38 = private unnamed_addr constant [12 x i8] c"Acircumflex\00", align 1
@.str.39 = private unnamed_addr constant [3 x i8] c"^A\00", align 1
@.str.40 = private unnamed_addr constant [2 x i8] c"\C2\00", align 1
@.str.41 = private unnamed_addr constant [7 x i8] c"Atilde\00", align 1
@.str.42 = private unnamed_addr constant [3 x i8] c"~A\00", align 1
@.str.43 = private unnamed_addr constant [2 x i8] c"\C3\00", align 1
@.str.44 = private unnamed_addr constant [10 x i8] c"Adieresis\00", align 1
@.str.45 = private unnamed_addr constant [3 x i8] c"\22A\00", align 1
@.str.46 = private unnamed_addr constant [2 x i8] c"\C4\00", align 1
@.str.47 = private unnamed_addr constant [7 x i8] c"agrave\00", align 1
@.str.48 = private unnamed_addr constant [3 x i8] c"`a\00", align 1
@.str.49 = private unnamed_addr constant [2 x i8] c"\E0\00", align 1
@.str.50 = private unnamed_addr constant [7 x i8] c"aacute\00", align 1
@.str.51 = private unnamed_addr constant [3 x i8] c"'a\00", align 1
@.str.52 = private unnamed_addr constant [2 x i8] c"\E1\00", align 1
@.str.53 = private unnamed_addr constant [12 x i8] c"acircumflex\00", align 1
@.str.54 = private unnamed_addr constant [3 x i8] c"^a\00", align 1
@.str.55 = private unnamed_addr constant [2 x i8] c"\E2\00", align 1
@.str.56 = private unnamed_addr constant [7 x i8] c"atilde\00", align 1
@.str.57 = private unnamed_addr constant [3 x i8] c"~a\00", align 1
@.str.58 = private unnamed_addr constant [2 x i8] c"\E3\00", align 1
@.str.59 = private unnamed_addr constant [10 x i8] c"adieresis\00", align 1
@.str.60 = private unnamed_addr constant [3 x i8] c"\22a\00", align 1
@.str.61 = private unnamed_addr constant [2 x i8] c"\E4\00", align 1
@.str.62 = private unnamed_addr constant [9 x i8] c"ccedilla\00", align 1
@.str.63 = private unnamed_addr constant [3 x i8] c"cc\00", align 1
@.str.64 = private unnamed_addr constant [2 x i8] c"\E7\00", align 1
@.str.65 = private unnamed_addr constant [7 x i8] c"Egrave\00", align 1
@.str.66 = private unnamed_addr constant [3 x i8] c"`E\00", align 1
@.str.67 = private unnamed_addr constant [2 x i8] c"\C8\00", align 1
@.str.68 = private unnamed_addr constant [7 x i8] c"Eacute\00", align 1
@.str.69 = private unnamed_addr constant [3 x i8] c"'E\00", align 1
@.str.70 = private unnamed_addr constant [2 x i8] c"\C9\00", align 1
@.str.71 = private unnamed_addr constant [12 x i8] c"Ecircumflex\00", align 1
@.str.72 = private unnamed_addr constant [3 x i8] c"^E\00", align 1
@.str.73 = private unnamed_addr constant [2 x i8] c"\CA\00", align 1
@.str.74 = private unnamed_addr constant [10 x i8] c"Edieresis\00", align 1
@.str.75 = private unnamed_addr constant [3 x i8] c"\22E\00", align 1
@.str.76 = private unnamed_addr constant [2 x i8] c"\CB\00", align 1
@.str.77 = private unnamed_addr constant [7 x i8] c"egrave\00", align 1
@.str.78 = private unnamed_addr constant [3 x i8] c"`e\00", align 1
@.str.79 = private unnamed_addr constant [2 x i8] c"\E8\00", align 1
@.str.80 = private unnamed_addr constant [7 x i8] c"eacute\00", align 1
@.str.81 = private unnamed_addr constant [3 x i8] c"'e\00", align 1
@.str.82 = private unnamed_addr constant [2 x i8] c"\E9\00", align 1
@.str.83 = private unnamed_addr constant [12 x i8] c"ecircumflex\00", align 1
@.str.84 = private unnamed_addr constant [3 x i8] c"^e\00", align 1
@.str.85 = private unnamed_addr constant [2 x i8] c"\EA\00", align 1
@.str.86 = private unnamed_addr constant [10 x i8] c"edieresis\00", align 1
@.str.87 = private unnamed_addr constant [3 x i8] c"\22e\00", align 1
@.str.88 = private unnamed_addr constant [2 x i8] c"\EB\00", align 1
@.str.89 = private unnamed_addr constant [7 x i8] c"Igrave\00", align 1
@.str.90 = private unnamed_addr constant [3 x i8] c"`I\00", align 1
@.str.91 = private unnamed_addr constant [2 x i8] c"\CC\00", align 1
@.str.92 = private unnamed_addr constant [7 x i8] c"Iacute\00", align 1
@.str.93 = private unnamed_addr constant [3 x i8] c"'I\00", align 1
@.str.94 = private unnamed_addr constant [2 x i8] c"\CD\00", align 1
@.str.95 = private unnamed_addr constant [12 x i8] c"Icircumflex\00", align 1
@.str.96 = private unnamed_addr constant [3 x i8] c"^I\00", align 1
@.str.97 = private unnamed_addr constant [2 x i8] c"\CE\00", align 1
@.str.98 = private unnamed_addr constant [10 x i8] c"Idieresis\00", align 1
@.str.99 = private unnamed_addr constant [3 x i8] c"\22I\00", align 1
@.str.100 = private unnamed_addr constant [2 x i8] c"\CF\00", align 1
@.str.101 = private unnamed_addr constant [7 x i8] c"igrave\00", align 1
@.str.102 = private unnamed_addr constant [4 x i8] c"`\\i\00", align 1
@.str.103 = private unnamed_addr constant [2 x i8] c"\EC\00", align 1
@.str.104 = private unnamed_addr constant [7 x i8] c"iacute\00", align 1
@.str.105 = private unnamed_addr constant [4 x i8] c"'\\i\00", align 1
@.str.106 = private unnamed_addr constant [2 x i8] c"\ED\00", align 1
@.str.107 = private unnamed_addr constant [12 x i8] c"icircumflex\00", align 1
@.str.108 = private unnamed_addr constant [4 x i8] c"^\\i\00", align 1
@.str.109 = private unnamed_addr constant [2 x i8] c"\EE\00", align 1
@.str.110 = private unnamed_addr constant [10 x i8] c"idieresis\00", align 1
@.str.111 = private unnamed_addr constant [4 x i8] c"\22\\i\00", align 1
@.str.112 = private unnamed_addr constant [2 x i8] c"\EF\00", align 1
@.str.113 = private unnamed_addr constant [7 x i8] c"Ograve\00", align 1
@.str.114 = private unnamed_addr constant [3 x i8] c"`O\00", align 1
@.str.115 = private unnamed_addr constant [2 x i8] c"\D2\00", align 1
@.str.116 = private unnamed_addr constant [7 x i8] c"Oacute\00", align 1
@.str.117 = private unnamed_addr constant [3 x i8] c"'O\00", align 1
@.str.118 = private unnamed_addr constant [2 x i8] c"\D3\00", align 1
@.str.119 = private unnamed_addr constant [12 x i8] c"Ocircumflex\00", align 1
@.str.120 = private unnamed_addr constant [3 x i8] c"^O\00", align 1
@.str.121 = private unnamed_addr constant [2 x i8] c"\D4\00", align 1
@.str.122 = private unnamed_addr constant [7 x i8] c"Otilde\00", align 1
@.str.123 = private unnamed_addr constant [3 x i8] c"~O\00", align 1
@.str.124 = private unnamed_addr constant [2 x i8] c"\D5\00", align 1
@.str.125 = private unnamed_addr constant [10 x i8] c"Odieresis\00", align 1
@.str.126 = private unnamed_addr constant [3 x i8] c"\22O\00", align 1
@.str.127 = private unnamed_addr constant [2 x i8] c"\D6\00", align 1
@.str.128 = private unnamed_addr constant [7 x i8] c"ograve\00", align 1
@.str.129 = private unnamed_addr constant [3 x i8] c"`o\00", align 1
@.str.130 = private unnamed_addr constant [2 x i8] c"\F2\00", align 1
@.str.131 = private unnamed_addr constant [7 x i8] c"oacute\00", align 1
@.str.132 = private unnamed_addr constant [3 x i8] c"'o\00", align 1
@.str.133 = private unnamed_addr constant [2 x i8] c"\F3\00", align 1
@.str.134 = private unnamed_addr constant [12 x i8] c"ocircumflex\00", align 1
@.str.135 = private unnamed_addr constant [3 x i8] c"^o\00", align 1
@.str.136 = private unnamed_addr constant [2 x i8] c"\F4\00", align 1
@.str.137 = private unnamed_addr constant [7 x i8] c"otilde\00", align 1
@.str.138 = private unnamed_addr constant [3 x i8] c"~o\00", align 1
@.str.139 = private unnamed_addr constant [2 x i8] c"\F5\00", align 1
@.str.140 = private unnamed_addr constant [10 x i8] c"odieresis\00", align 1
@.str.141 = private unnamed_addr constant [3 x i8] c"\22o\00", align 1
@.str.142 = private unnamed_addr constant [2 x i8] c"\F6\00", align 1
@.str.143 = private unnamed_addr constant [7 x i8] c"Ugrave\00", align 1
@.str.144 = private unnamed_addr constant [3 x i8] c"`U\00", align 1
@.str.145 = private unnamed_addr constant [2 x i8] c"\D9\00", align 1
@.str.146 = private unnamed_addr constant [7 x i8] c"Uacute\00", align 1
@.str.147 = private unnamed_addr constant [3 x i8] c"'U\00", align 1
@.str.148 = private unnamed_addr constant [2 x i8] c"\DA\00", align 1
@.str.149 = private unnamed_addr constant [12 x i8] c"Ucircumflex\00", align 1
@.str.150 = private unnamed_addr constant [3 x i8] c"^U\00", align 1
@.str.151 = private unnamed_addr constant [2 x i8] c"\DB\00", align 1
@.str.152 = private unnamed_addr constant [10 x i8] c"Udieresis\00", align 1
@.str.153 = private unnamed_addr constant [3 x i8] c"\22U\00", align 1
@.str.154 = private unnamed_addr constant [2 x i8] c"\DC\00", align 1
@.str.155 = private unnamed_addr constant [7 x i8] c"ugrave\00", align 1
@.str.156 = private unnamed_addr constant [3 x i8] c"`u\00", align 1
@.str.157 = private unnamed_addr constant [2 x i8] c"\F9\00", align 1
@.str.158 = private unnamed_addr constant [7 x i8] c"uacute\00", align 1
@.str.159 = private unnamed_addr constant [3 x i8] c"'u\00", align 1
@.str.160 = private unnamed_addr constant [2 x i8] c"\FA\00", align 1
@.str.161 = private unnamed_addr constant [12 x i8] c"ucircumflex\00", align 1
@.str.162 = private unnamed_addr constant [3 x i8] c"^u\00", align 1
@.str.163 = private unnamed_addr constant [2 x i8] c"\FB\00", align 1
@.str.164 = private unnamed_addr constant [10 x i8] c"udieresis\00", align 1
@.str.165 = private unnamed_addr constant [3 x i8] c"\22u\00", align 1
@.str.166 = private unnamed_addr constant [2 x i8] c"\FC\00", align 1
@.str.167 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.168 = private unnamed_addr constant [32 x i8] c"AddClassToTrie: after insertion\00", align 1
@.str.169 = private unnamed_addr constant [43 x i8] c"hyphenation class of %c may not be changed\00", align 1
@.str.170 = private unnamed_addr constant [74 x i8] c"in hyphenation file %s, line %d: character (octal %o) is not in any class\00", align 1
@.str.171 = private unnamed_addr constant [39 x i8] c"hyphenation string %s already inserted\00", align 1
@.str.172 = private unnamed_addr constant [37 x i8] c"hyphenation trie node limit exceeded\00", align 1

; Function Attrs: nounwind uwtable
define dso_local i32 @ReadHyphTable(i32 noundef %0) local_unnamed_addr #0 {
  %2 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #14
  %3 = icmp eq i32 %0, 0
  br i1 %3, label %4, label %7

4:                                                ; preds = %1
  %5 = load ptr, ptr @no_fpos, align 8, !tbaa !5
  %6 = tail call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 1, i32 noundef 2, ptr noundef nonnull @.str, i32 noundef 0, ptr noundef %5, ptr noundef nonnull @.str.1) #14
  br label %7

7:                                                ; preds = %4, %1
  %8 = zext i32 %0 to i64
  %9 = getelementptr inbounds [64 x ptr], ptr @HyphTables, i64 0, i64 %8
  %10 = load ptr, ptr %9, align 8, !tbaa !5
  %11 = icmp eq ptr %10, null
  br i1 %11, label %12, label %16

12:                                               ; preds = %7
  %13 = getelementptr inbounds [64 x i32], ptr @TriedFile, i64 0, i64 %8
  %14 = load i32, ptr %13, align 4, !tbaa !9
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %19, label %16

16:                                               ; preds = %12, %7
  %17 = load ptr, ptr @no_fpos, align 8, !tbaa !5
  %18 = tail call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 1, i32 noundef 2, ptr noundef nonnull @.str, i32 noundef 0, ptr noundef %17, ptr noundef nonnull @.str.2) #14
  br label %19

19:                                               ; preds = %16, %12
  %20 = call fastcc ptr @TrieRead(i32 noundef %0, ptr noundef nonnull %2)
  store ptr %20, ptr %9, align 8, !tbaa !5
  %21 = getelementptr inbounds [64 x i32], ptr @TriedFile, i64 0, i64 %8
  store i32 1, ptr %21, align 4, !tbaa !9
  %22 = load i32, ptr %2, align 4, !tbaa !9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #14
  ret i32 %22
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

declare ptr @Error(i32 noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc noundef ptr @TrieRead(i32 noundef %0, ptr nocapture noundef writeonly %1) unnamed_addr #0 {
  %3 = alloca i32, align 4
  %4 = alloca [512 x i8], align 16
  %5 = alloca [512 x i8], align 16
  %6 = alloca [512 x i8], align 16
  %7 = alloca [522 x i8], align 16
  %8 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #14
  %9 = tail call ptr @LanguageHyph(i32 noundef %0) #14
  %10 = icmp eq ptr %9, null
  br i1 %10, label %19, label %11

11:                                               ; preds = %2
  %12 = getelementptr inbounds %struct.word_type, ptr %9, i64 0, i32 1
  %13 = load i8, ptr %12, align 8, !tbaa !11
  %14 = add i8 %13, -11
  %15 = icmp ult i8 %14, 2
  br i1 %15, label %20, label %16

16:                                               ; preds = %11
  %17 = load ptr, ptr @no_fpos, align 8, !tbaa !5
  %18 = tail call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 1, i32 noundef 2, ptr noundef nonnull @.str, i32 noundef 0, ptr noundef %17, ptr noundef nonnull @.str.7) #14
  br label %20

19:                                               ; preds = %2
  store i32 0, ptr %1, align 4, !tbaa !9
  br label %615

20:                                               ; preds = %16, %11
  %21 = getelementptr inbounds %struct.word_type, ptr %9, i64 0, i32 4
  %22 = tail call zeroext i16 @DefineFile(ptr noundef nonnull %21, ptr noundef nonnull @.str.8, ptr noundef nonnull %12, i32 noundef 8, i32 noundef 6) #14
  %23 = load i32, ptr @InitializeAll, align 4, !tbaa !9
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %25, label %28

25:                                               ; preds = %20
  %26 = tail call ptr @OpenFile(i16 noundef zeroext %22, i32 noundef 0, i32 noundef 0) #14
  %27 = icmp eq ptr %26, null
  br i1 %27, label %28, label %374

28:                                               ; preds = %20, %25
  call void @llvm.lifetime.start.p0(i64 512, ptr nonnull %4) #14
  call void @llvm.lifetime.start.p0(i64 512, ptr nonnull %5) #14
  call void @llvm.lifetime.start.p0(i64 512, ptr nonnull %6) #14
  call void @llvm.lifetime.start.p0(i64 522, ptr nonnull %7) #14
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %8) #14
  %29 = tail call zeroext i16 @DefineFile(ptr noundef nonnull %21, ptr noundef nonnull @.str.9, ptr noundef nonnull %12, i32 noundef 7, i32 noundef 6) #14
  %30 = tail call ptr @OpenFile(i16 noundef zeroext %29, i32 noundef 0, i32 noundef 0) #14
  %31 = icmp eq ptr %30, null
  br i1 %31, label %32, label %36

32:                                               ; preds = %28
  %33 = load ptr, ptr @no_fpos, align 8, !tbaa !5
  %34 = tail call ptr @FileName(i16 noundef zeroext %29) #14
  %35 = tail call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 36, i32 noundef 8, ptr noundef nonnull @.str.10, i32 noundef 2, ptr noundef %33, ptr noundef %34) #14
  br label %371

36:                                               ; preds = %28
  %37 = call ptr @fgets(ptr noundef nonnull %4, i32 noundef 512, ptr noundef nonnull %30)
  %38 = icmp eq ptr %37, null
  br i1 %38, label %45, label %39

39:                                               ; preds = %36
  %40 = call i32 @bcmp(ptr noundef nonnull dereferenceable(30) %4, ptr noundef nonnull dereferenceable(30) @.str.11, i64 30)
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %49, label %42

42:                                               ; preds = %39
  %43 = call i32 @bcmp(ptr noundef nonnull dereferenceable(30) %4, ptr noundef nonnull dereferenceable(30) @.str.12, i64 30)
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %49, label %45

45:                                               ; preds = %42, %36
  %46 = load ptr, ptr @no_fpos, align 8, !tbaa !5
  %47 = call ptr @FileName(i16 noundef zeroext %29) #14
  %48 = call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 36, i32 noundef 9, ptr noundef nonnull @.str.13, i32 noundef 1, ptr noundef %46, ptr noundef %47) #14
  br label %49

49:                                               ; preds = %45, %42, %39
  %50 = call i32 @bcmp(ptr noundef nonnull dereferenceable(30) %4, ptr noundef nonnull dereferenceable(30) @.str.11, i64 30)
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %52, label %371

52:                                               ; preds = %49
  %53 = call noalias dereferenceable_or_null(273063) ptr @malloc(i64 noundef 273063) #15
  %54 = icmp eq ptr %53, null
  br i1 %54, label %55, label %58

55:                                               ; preds = %52
  %56 = load ptr, ptr @no_fpos, align 8, !tbaa !5
  %57 = call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 36, i32 noundef 4, ptr noundef nonnull @.str.30, i32 noundef 1, ptr noundef %56) #14
  br label %58

58:                                               ; preds = %52, %55
  store i32 5361534, ptr %53, align 8, !tbaa !12
  %59 = getelementptr inbounds %struct.trie_rec, ptr %53, i64 0, i32 1
  store i32 1, ptr %59, align 4, !tbaa !14
  %60 = getelementptr i8, ptr %53, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(256) %60, i8 0, i64 256, i1 false), !tbaa !11
  %61 = getelementptr inbounds i8, ptr %53, i64 296
  %62 = getelementptr inbounds %struct.trie_rec, ptr %53, i64 0, i32 3
  store ptr %61, ptr %62, align 8, !tbaa !15
  %63 = getelementptr inbounds %struct.trie_rec, ptr %53, i64 0, i32 4
  store i32 120000, ptr %63, align 8, !tbaa !16
  %64 = getelementptr inbounds %struct.trie_rec, ptr %53, i64 0, i32 5
  store i32 0, ptr %64, align 4, !tbaa !17
  %65 = getelementptr inbounds i8, ptr %53, i64 240296
  %66 = getelementptr inbounds %struct.trie_rec, ptr %53, i64 0, i32 6
  store ptr %65, ptr %66, align 8, !tbaa !18
  %67 = getelementptr inbounds %struct.trie_rec, ptr %53, i64 0, i32 8
  store i32 32767, ptr %67, align 4, !tbaa !19
  %68 = getelementptr inbounds %struct.trie_rec, ptr %53, i64 0, i32 7
  store i32 32767, ptr %68, align 8, !tbaa !20
  store i32 0, ptr %3, align 4, !tbaa !9
  %69 = call ptr @fgets(ptr noundef nonnull %7, i32 noundef 512, ptr noundef nonnull %30)
  %70 = icmp eq ptr %69, null
  br i1 %70, label %294, label %75

71:                                               ; preds = %283, %75
  %72 = phi i32 [ %77, %75 ], [ %284, %283 ]
  %73 = call ptr @fgets(ptr noundef nonnull %7, i32 noundef 512, ptr noundef nonnull %30)
  %74 = icmp eq ptr %73, null
  br i1 %74, label %292, label %75

75:                                               ; preds = %58, %71
  %76 = phi i32 [ %78, %71 ], [ 1, %58 ]
  %77 = phi i32 [ %72, %71 ], [ 0, %58 ]
  %78 = add nuw nsw i32 %76, 1
  %79 = call i32 (ptr, ptr, ...) @__isoc99_sscanf(ptr noundef nonnull %7, ptr noundef nonnull @.str.14, ptr noundef nonnull %4, ptr noundef nonnull %8) #14
  %80 = icmp eq i32 %79, 1
  %81 = load i8, ptr %4, align 16
  %82 = icmp ne i8 %81, 37
  %83 = select i1 %80, i1 %82, i1 false
  br i1 %83, label %84, label %71

84:                                               ; preds = %75, %283
  %85 = phi i8 [ %289, %283 ], [ %81, %75 ]
  %86 = phi i32 [ %141, %283 ], [ 0, %75 ]
  %87 = phi i32 [ %284, %283 ], [ %77, %75 ]
  %88 = load i32, ptr %8, align 4, !tbaa !9
  br label %89

89:                                               ; preds = %136, %84
  %90 = phi i8 [ %85, %84 ], [ %139, %136 ]
  %91 = phi ptr [ %4, %84 ], [ %137, %136 ]
  %92 = phi ptr [ %4, %84 ], [ %138, %136 ]
  switch i8 %90, label %133 [
    i8 0, label %140
    i8 92, label %93
  ]

93:                                               ; preds = %89
  %94 = getelementptr inbounds i8, ptr %92, i64 1
  %95 = call i32 @StringBeginsWith(ptr noundef nonnull %94, ptr noundef nonnull @.str.33) #14
  %96 = icmp eq i32 %95, 0
  br i1 %96, label %103, label %110

97:                                               ; preds = %103
  %98 = add nuw nsw i64 %104, 4
  %99 = getelementptr inbounds [138 x ptr], ptr @tex_codes, i64 0, i64 %98
  %100 = load ptr, ptr %99, align 8, !tbaa !5
  %101 = call i32 @StringBeginsWith(ptr noundef nonnull %94, ptr noundef %100) #14
  %102 = icmp eq i32 %101, 0
  br i1 %102, label %103, label %110

103:                                              ; preds = %93, %97
  %104 = phi i64 [ %105, %97 ], [ 0, %93 ]
  %105 = add nuw nsw i64 %104, 3
  %106 = getelementptr inbounds [138 x ptr], ptr @tex_codes, i64 0, i64 %105
  %107 = load ptr, ptr %106, align 8, !tbaa !5
  %108 = load i8, ptr %107, align 1, !tbaa !11
  %109 = icmp eq i8 %108, 0
  br i1 %109, label %130, label %97

110:                                              ; preds = %97, %93
  %111 = phi i64 [ 0, %93 ], [ %105, %97 ]
  %112 = phi ptr [ @.str.32, %93 ], [ %107, %97 ]
  %113 = phi i64 [ 1, %93 ], [ %98, %97 ]
  %114 = load i8, ptr %112, align 1, !tbaa !11
  %115 = icmp eq i8 %114, 0
  br i1 %115, label %130, label %116

116:                                              ; preds = %110
  %117 = add nuw i64 %111, 2
  %118 = and i64 %117, 4294967295
  %119 = getelementptr inbounds [138 x ptr], ptr @tex_codes, i64 0, i64 %118
  %120 = load ptr, ptr %119, align 8, !tbaa !5
  %121 = call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %91, ptr noundef nonnull dereferenceable(1) %120) #14
  %122 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %120) #16
  %123 = getelementptr inbounds i8, ptr %91, i64 %122
  %124 = and i64 %113, 4294967295
  %125 = getelementptr inbounds [138 x ptr], ptr @tex_codes, i64 0, i64 %124
  %126 = load ptr, ptr %125, align 8, !tbaa !5
  %127 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %126) #16
  %128 = add i64 %127, 1
  %129 = getelementptr inbounds i8, ptr %92, i64 %128
  br label %136

130:                                              ; preds = %103, %110
  %131 = load ptr, ptr @no_fpos, align 8, !tbaa !5
  %132 = call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 36, i32 noundef 1, ptr noundef nonnull @.str.31, i32 noundef 1, ptr noundef %131, ptr noundef nonnull %21, i32 noundef %78) #14
  br label %136

133:                                              ; preds = %89
  %134 = getelementptr inbounds i8, ptr %92, i64 1
  %135 = getelementptr inbounds i8, ptr %91, i64 1
  store i8 %90, ptr %91, align 1, !tbaa !11
  br label %136

136:                                              ; preds = %133, %130, %116
  %137 = phi ptr [ %123, %116 ], [ %91, %130 ], [ %135, %133 ]
  %138 = phi ptr [ %129, %116 ], [ %92, %130 ], [ %134, %133 ]
  %139 = load i8, ptr %138, align 1, !tbaa !11
  br label %89

140:                                              ; preds = %89
  %141 = add nsw i32 %88, %86
  store i8 0, ptr %91, align 1, !tbaa !11
  switch i32 %87, label %280 [
    i32 0, label %145
    i32 1, label %152
    i32 2, label %193
    i32 3, label %232
    i32 4, label %142
  ]

142:                                              ; preds = %140
  %143 = load i8, ptr %4, align 16, !tbaa !11
  %144 = icmp eq i8 %143, 0
  br i1 %144, label %261, label %240

145:                                              ; preds = %140
  %146 = call i32 @bcmp(ptr noundef nonnull dereferenceable(9) %4, ptr noundef nonnull dereferenceable(9) @.str.15, i64 9)
  %147 = icmp eq i32 %146, 0
  br i1 %147, label %283, label %148

148:                                              ; preds = %145
  %149 = load ptr, ptr @no_fpos, align 8, !tbaa !5
  %150 = call ptr @FileName(i16 noundef zeroext %29) #14
  %151 = call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 36, i32 noundef 10, ptr noundef nonnull @.str.16, i32 noundef 1, ptr noundef %149, ptr noundef %150) #14
  br label %283

152:                                              ; preds = %140
  %153 = call i32 @bcmp(ptr noundef nonnull dereferenceable(12) %4, ptr noundef nonnull dereferenceable(12) @.str.17, i64 12)
  %154 = icmp eq i32 %153, 0
  br i1 %154, label %283, label %155

155:                                              ; preds = %152
  %156 = call i32 @bcmp(ptr noundef nonnull dereferenceable(10) %4, ptr noundef nonnull dereferenceable(10) @.str.18, i64 10)
  %157 = icmp eq i32 %156, 0
  br i1 %157, label %283, label %158

158:                                              ; preds = %155
  %159 = call i32 @bcmp(ptr noundef nonnull dereferenceable(13) %4, ptr noundef nonnull dereferenceable(13) @.str.19, i64 13)
  %160 = icmp eq i32 %159, 0
  br i1 %160, label %283, label %161

161:                                              ; preds = %158
  %162 = load i32, ptr %67, align 4, !tbaa !19
  %163 = load i32, ptr %68, align 8, !tbaa !20
  %164 = icmp eq i32 %162, %163
  br i1 %164, label %168, label %165

165:                                              ; preds = %161
  %166 = load ptr, ptr @no_fpos, align 8, !tbaa !5
  %167 = call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 1, i32 noundef 2, ptr noundef nonnull @.str, i32 noundef 0, ptr noundef %166, ptr noundef nonnull @.str.168) #14
  br label %168

168:                                              ; preds = %165, %161
  %169 = load i8, ptr %4, align 16, !tbaa !11
  %170 = icmp eq i8 %169, 0
  br i1 %170, label %190, label %171

171:                                              ; preds = %168, %185
  %172 = phi i64 [ %186, %185 ], [ 0, %168 ]
  %173 = phi i8 [ %188, %185 ], [ %169, %168 ]
  %174 = zext i8 %173 to i64
  %175 = getelementptr inbounds %struct.trie_rec, ptr %53, i64 0, i32 2, i64 %174
  %176 = load i8, ptr %175, align 1, !tbaa !11
  %177 = icmp eq i8 %176, 0
  br i1 %177, label %178, label %181

178:                                              ; preds = %171
  %179 = load i32, ptr %59, align 4, !tbaa !14
  %180 = trunc i32 %179 to i8
  store i8 %180, ptr %175, align 1, !tbaa !11
  br label %185

181:                                              ; preds = %171
  %182 = zext i8 %173 to i32
  %183 = load ptr, ptr @no_fpos, align 8, !tbaa !5
  %184 = call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 36, i32 noundef 6, ptr noundef nonnull @.str.169, i32 noundef 0, ptr noundef %183, i32 noundef %182) #14
  br label %185

185:                                              ; preds = %181, %178
  %186 = add nuw i64 %172, 1
  %187 = getelementptr inbounds i8, ptr %4, i64 %186
  %188 = load i8, ptr %187, align 1, !tbaa !11
  %189 = icmp eq i8 %188, 0
  br i1 %189, label %190, label %171

190:                                              ; preds = %185, %168
  %191 = load i32, ptr %59, align 4, !tbaa !14
  %192 = add nsw i32 %191, 1
  store i32 %192, ptr %59, align 4, !tbaa !14
  br label %283

193:                                              ; preds = %140
  %194 = call i32 @bcmp(ptr noundef nonnull dereferenceable(10) %4, ptr noundef nonnull dereferenceable(10) @.str.18, i64 10)
  %195 = icmp eq i32 %194, 0
  br i1 %195, label %283, label %196

196:                                              ; preds = %193
  %197 = call i32 @bcmp(ptr noundef nonnull dereferenceable(13) %4, ptr noundef nonnull dereferenceable(13) @.str.19, i64 13)
  %198 = icmp eq i32 %197, 0
  br i1 %198, label %283, label %199

199:                                              ; preds = %196
  store i8 46, ptr %5, align 16, !tbaa !11
  store i8 56, ptr %6, align 16, !tbaa !11
  br label %200

200:                                              ; preds = %212, %199
  %201 = phi i64 [ %215, %212 ], [ 0, %199 ]
  %202 = phi i32 [ %213, %212 ], [ 56, %199 ]
  %203 = phi i32 [ %214, %212 ], [ 1, %199 ]
  %204 = getelementptr inbounds [512 x i8], ptr %4, i64 0, i64 %201
  %205 = load i8, ptr %204, align 1, !tbaa !11
  switch i8 %205, label %206 [
    i8 0, label %216
    i8 45, label %212
  ]

206:                                              ; preds = %200
  %207 = sext i32 %203 to i64
  %208 = getelementptr inbounds [512 x i8], ptr %5, i64 0, i64 %207
  store i8 %205, ptr %208, align 1, !tbaa !11
  %209 = trunc i32 %202 to i8
  %210 = add nsw i32 %203, 1
  %211 = getelementptr inbounds [512 x i8], ptr %6, i64 0, i64 %207
  store i8 %209, ptr %211, align 1, !tbaa !11
  br label %212

212:                                              ; preds = %200, %206
  %213 = phi i32 [ 56, %206 ], [ 57, %200 ]
  %214 = phi i32 [ %210, %206 ], [ %203, %200 ]
  %215 = add nuw i64 %201, 1
  br label %200

216:                                              ; preds = %200
  %217 = sext i32 %203 to i64
  %218 = getelementptr inbounds [512 x i8], ptr %5, i64 0, i64 %217
  store i8 46, ptr %218, align 1, !tbaa !11
  %219 = trunc i32 %202 to i8
  %220 = add nsw i32 %203, 1
  %221 = getelementptr inbounds [512 x i8], ptr %6, i64 0, i64 %217
  store i8 %219, ptr %221, align 1, !tbaa !11
  %222 = sext i32 %220 to i64
  %223 = getelementptr inbounds [512 x i8], ptr %5, i64 0, i64 %222
  store i8 0, ptr %223, align 1, !tbaa !11
  %224 = getelementptr inbounds [512 x i8], ptr %6, i64 0, i64 %222
  store i8 56, ptr %224, align 1, !tbaa !11
  %225 = add nsw i32 %203, 2
  %226 = sext i32 %225 to i64
  %227 = getelementptr inbounds [512 x i8], ptr %6, i64 0, i64 %226
  store i8 0, ptr %227, align 1, !tbaa !11
  %228 = call fastcc i32 @TrieInsert(ptr noundef nonnull %5, ptr noundef nonnull %6, ptr noundef nonnull %53, ptr noundef nonnull %21, i32 noundef %78), !range !21
  %229 = icmp eq i32 %228, 0
  br i1 %229, label %230, label %283

230:                                              ; preds = %216
  %231 = call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 36, i32 noundef 11, ptr noundef nonnull @.str.20, i32 noundef 2, ptr noundef nonnull %12, ptr noundef nonnull %21, ptr noundef nonnull @.str.9, i32 noundef %78) #14
  br label %371

232:                                              ; preds = %140
  %233 = call i32 @bcmp(ptr noundef nonnull dereferenceable(10) %4, ptr noundef nonnull dereferenceable(10) @.str.18, i64 10)
  %234 = icmp eq i32 %233, 0
  br i1 %234, label %283, label %235

235:                                              ; preds = %232
  %236 = call i32 (ptr, ptr, ...) @__isoc99_sscanf(ptr noundef nonnull %4, ptr noundef nonnull @.str.21, ptr noundef nonnull %3) #14
  %237 = icmp eq i32 %236, 1
  br i1 %237, label %283, label %238

238:                                              ; preds = %235
  %239 = call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 36, i32 noundef 20, ptr noundef nonnull @.str.22, i32 noundef 2, ptr noundef nonnull %12, ptr noundef nonnull %21, ptr noundef nonnull @.str.9, i32 noundef %78) #14
  br label %371

240:                                              ; preds = %142, %254
  %241 = phi i64 [ %257, %254 ], [ 0, %142 ]
  %242 = phi i8 [ %259, %254 ], [ %143, %142 ]
  %243 = phi i32 [ %256, %254 ], [ 0, %142 ]
  %244 = phi i32 [ %255, %254 ], [ 48, %142 ]
  %245 = zext nneg i8 %242 to i32
  %246 = add i8 %242, -48
  %247 = icmp ult i8 %246, 10
  br i1 %247, label %254, label %248

248:                                              ; preds = %240
  %249 = sext i32 %243 to i64
  %250 = getelementptr inbounds [512 x i8], ptr %5, i64 0, i64 %249
  store i8 %242, ptr %250, align 1, !tbaa !11
  %251 = trunc i32 %244 to i8
  %252 = add nsw i32 %243, 1
  %253 = getelementptr inbounds [512 x i8], ptr %6, i64 0, i64 %249
  store i8 %251, ptr %253, align 1, !tbaa !11
  br label %254

254:                                              ; preds = %240, %248
  %255 = phi i32 [ 48, %248 ], [ %245, %240 ]
  %256 = phi i32 [ %252, %248 ], [ %243, %240 ]
  %257 = add nuw nsw i64 %241, 1
  %258 = getelementptr inbounds [512 x i8], ptr %4, i64 0, i64 %257
  %259 = load i8, ptr %258, align 1, !tbaa !11
  %260 = icmp eq i8 %259, 0
  br i1 %260, label %261, label %240

261:                                              ; preds = %254, %142
  %262 = phi i32 [ 48, %142 ], [ %255, %254 ]
  %263 = phi i32 [ 0, %142 ], [ %256, %254 ]
  %264 = sext i32 %263 to i64
  %265 = getelementptr inbounds [512 x i8], ptr %5, i64 0, i64 %264
  store i8 0, ptr %265, align 1, !tbaa !11
  %266 = trunc i32 %262 to i8
  %267 = getelementptr inbounds [512 x i8], ptr %6, i64 0, i64 %264
  store i8 %266, ptr %267, align 1, !tbaa !11
  %268 = add nsw i32 %263, 1
  %269 = sext i32 %268 to i64
  %270 = getelementptr inbounds [512 x i8], ptr %6, i64 0, i64 %269
  store i8 0, ptr %270, align 1, !tbaa !11
  %271 = load i32, ptr %3, align 4, !tbaa !9
  %272 = icmp ne i32 %271, 0
  %273 = icmp sgt i32 %263, %271
  %274 = and i1 %272, %273
  br i1 %274, label %283, label %275

275:                                              ; preds = %261
  %276 = call fastcc i32 @TrieInsert(ptr noundef nonnull %5, ptr noundef nonnull %6, ptr noundef nonnull %53, ptr noundef nonnull %21, i32 noundef %78), !range !21
  %277 = icmp eq i32 %276, 0
  br i1 %277, label %278, label %283

278:                                              ; preds = %275
  %279 = call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 36, i32 noundef 12, ptr noundef nonnull @.str.20, i32 noundef 2, ptr noundef nonnull %12, ptr noundef nonnull %21, ptr noundef nonnull @.str.9, i32 noundef %78) #14
  br label %371

280:                                              ; preds = %140
  %281 = load ptr, ptr @no_fpos, align 8, !tbaa !5
  %282 = call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 1, i32 noundef 2, ptr noundef nonnull @.str, i32 noundef 0, ptr noundef %281, ptr noundef nonnull @.str.23) #14
  br label %283

283:                                              ; preds = %261, %232, %196, %193, %158, %155, %152, %145, %148, %275, %235, %216, %190, %280
  %284 = phi i32 [ %87, %280 ], [ 4, %275 ], [ 3, %235 ], [ 2, %216 ], [ 1, %190 ], [ 1, %148 ], [ 1, %145 ], [ 2, %152 ], [ 4, %155 ], [ 3, %158 ], [ 4, %193 ], [ 3, %196 ], [ 4, %232 ], [ 4, %261 ]
  %285 = sext i32 %141 to i64
  %286 = getelementptr inbounds [522 x i8], ptr %7, i64 0, i64 %285
  %287 = call i32 (ptr, ptr, ...) @__isoc99_sscanf(ptr noundef nonnull %286, ptr noundef nonnull @.str.14, ptr noundef nonnull %4, ptr noundef nonnull %8) #14
  %288 = icmp eq i32 %287, 1
  %289 = load i8, ptr %4, align 16
  %290 = icmp ne i8 %289, 37
  %291 = select i1 %288, i1 %290, i1 false
  br i1 %291, label %84, label %71

292:                                              ; preds = %71
  %293 = icmp eq i32 %72, 4
  br i1 %293, label %298, label %294

294:                                              ; preds = %58, %292
  %295 = load ptr, ptr @no_fpos, align 8, !tbaa !5
  %296 = call ptr @FileName(i16 noundef zeroext %29) #14
  %297 = call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 36, i32 noundef 13, ptr noundef nonnull @.str.24, i32 noundef 1, ptr noundef %295, ptr noundef %296) #14
  br label %298

298:                                              ; preds = %294, %292
  %299 = call i32 @fclose(ptr noundef nonnull %30)
  call fastcc void @CompressTrie(ptr noundef nonnull %53)
  %300 = call ptr @FileName(i16 noundef zeroext %29) #14
  %301 = call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %7, ptr noundef nonnull dereferenceable(1) %300) #14
  %302 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %7) #16
  %303 = add i64 %302, -3
  %304 = getelementptr inbounds [522 x i8], ptr %7, i64 0, i64 %303
  store i32 7367726, ptr %304, align 1
  %305 = call noalias ptr @fopen(ptr noundef nonnull %7, ptr noundef nonnull @.str.25)
  %306 = icmp eq ptr %305, null
  br i1 %306, label %310, label %307

307:                                              ; preds = %298
  %308 = load i32, ptr %53, align 8, !tbaa !12
  call fastcc void @BePutInt(ptr noundef nonnull %305, i32 noundef %308)
  %309 = load i32, ptr %59, align 4, !tbaa !14
  call fastcc void @BePutInt(ptr noundef nonnull %305, i32 noundef %309)
  br label %315

310:                                              ; preds = %298
  %311 = load ptr, ptr @no_fpos, align 8, !tbaa !5
  %312 = call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 36, i32 noundef 14, ptr noundef nonnull @.str.26, i32 noundef 1, ptr noundef %311, ptr noundef nonnull %7) #14
  %313 = load i32, ptr %53, align 8, !tbaa !12
  call fastcc void @BePutInt(ptr noundef null, i32 noundef %313)
  %314 = load i32, ptr %59, align 4, !tbaa !14
  call fastcc void @BePutInt(ptr noundef null, i32 noundef %314)
  br label %315

315:                                              ; preds = %307, %310
  br label %316

316:                                              ; preds = %315, %316
  %317 = phi i64 [ %322, %316 ], [ 0, %315 ]
  %318 = getelementptr inbounds %struct.trie_rec, ptr %53, i64 0, i32 2, i64 %317
  %319 = load i8, ptr %318, align 1, !tbaa !11
  %320 = sext i8 %319 to i32
  %321 = call i32 @putc(i32 noundef %320, ptr noundef %305)
  %322 = add nuw nsw i64 %317, 1
  %323 = icmp eq i64 %322, 256
  br i1 %323, label %324, label %316

324:                                              ; preds = %316
  %325 = load i32, ptr %63, align 8, !tbaa !16
  call fastcc void @BePutInt(ptr noundef %305, i32 noundef %325)
  %326 = load i32, ptr %64, align 4, !tbaa !17
  call fastcc void @BePutInt(ptr noundef %305, i32 noundef %326)
  %327 = load i32, ptr %68, align 8, !tbaa !20
  call fastcc void @BePutInt(ptr noundef %305, i32 noundef %327)
  %328 = load i32, ptr %67, align 4, !tbaa !19
  call fastcc void @BePutInt(ptr noundef %305, i32 noundef %328)
  %329 = load i32, ptr %64, align 4, !tbaa !17
  %330 = icmp sgt i32 %329, 0
  br i1 %330, label %334, label %331

331:                                              ; preds = %334, %324
  %332 = load i32, ptr %68, align 8, !tbaa !20
  %333 = icmp sgt i32 %332, 0
  br i1 %333, label %352, label %363

334:                                              ; preds = %324, %334
  %335 = phi i64 [ %348, %334 ], [ 0, %324 ]
  %336 = load ptr, ptr %62, align 8, !tbaa !15
  %337 = getelementptr inbounds i16, ptr %336, i64 %335
  %338 = load i16, ptr %337, align 2, !tbaa !22
  %339 = lshr i16 %338, 8
  %340 = zext nneg i16 %339 to i32
  %341 = call i32 @putc(i32 noundef %340, ptr noundef %305)
  %342 = load ptr, ptr %62, align 8, !tbaa !15
  %343 = getelementptr inbounds i16, ptr %342, i64 %335
  %344 = load i16, ptr %343, align 2, !tbaa !22
  %345 = and i16 %344, 255
  %346 = zext nneg i16 %345 to i32
  %347 = call i32 @putc(i32 noundef %346, ptr noundef %305)
  %348 = add nuw nsw i64 %335, 1
  %349 = load i32, ptr %64, align 4, !tbaa !17
  %350 = sext i32 %349 to i64
  %351 = icmp slt i64 %348, %350
  br i1 %351, label %334, label %331

352:                                              ; preds = %331, %352
  %353 = phi i64 [ %359, %352 ], [ 0, %331 ]
  %354 = load ptr, ptr %66, align 8, !tbaa !18
  %355 = getelementptr inbounds i8, ptr %354, i64 %353
  %356 = load i8, ptr %355, align 1, !tbaa !11
  %357 = sext i8 %356 to i32
  %358 = call i32 @putc(i32 noundef %357, ptr noundef %305)
  %359 = add nuw nsw i64 %353, 1
  %360 = load i32, ptr %68, align 8, !tbaa !20
  %361 = sext i32 %360 to i64
  %362 = icmp slt i64 %359, %361
  br i1 %362, label %352, label %363

363:                                              ; preds = %352, %331
  %364 = call i32 @fclose(ptr noundef %305)
  call void @free(ptr noundef nonnull %53) #14
  %365 = call ptr @OpenFile(i16 noundef zeroext %22, i32 noundef 0, i32 noundef 0) #14
  %366 = icmp eq ptr %365, null
  br i1 %366, label %367, label %373

367:                                              ; preds = %363
  %368 = load ptr, ptr @no_fpos, align 8, !tbaa !5
  %369 = call ptr @FileName(i16 noundef zeroext %22) #14
  %370 = call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 36, i32 noundef 15, ptr noundef nonnull @.str.10, i32 noundef 1, ptr noundef %368, ptr noundef %369) #14
  br label %373

371:                                              ; preds = %49, %32, %278, %238, %230
  %372 = phi i32 [ 0, %32 ], [ 0, %278 ], [ 0, %238 ], [ 0, %230 ], [ 1, %49 ]
  store i32 %372, ptr %1, align 4, !tbaa !9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %8) #14
  call void @llvm.lifetime.end.p0(i64 522, ptr nonnull %7) #14
  call void @llvm.lifetime.end.p0(i64 512, ptr nonnull %6) #14
  call void @llvm.lifetime.end.p0(i64 512, ptr nonnull %5) #14
  call void @llvm.lifetime.end.p0(i64 512, ptr nonnull %4) #14
  br label %615

373:                                              ; preds = %363, %367
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %8) #14
  call void @llvm.lifetime.end.p0(i64 522, ptr nonnull %7) #14
  call void @llvm.lifetime.end.p0(i64 512, ptr nonnull %6) #14
  call void @llvm.lifetime.end.p0(i64 512, ptr nonnull %5) #14
  call void @llvm.lifetime.end.p0(i64 512, ptr nonnull %4) #14
  br label %374

374:                                              ; preds = %373, %25
  %375 = phi ptr [ %365, %373 ], [ %26, %25 ]
  %376 = call i32 @fseek(ptr noundef %375, i64 noundef 0, i32 noundef 2)
  %377 = call i64 @ftell(ptr noundef %375)
  call void @rewind(ptr noundef %375)
  %378 = and i64 %377, 4294967295
  %379 = add nuw nsw i64 %378, 16
  %380 = call noalias ptr @malloc(i64 noundef %379) #15
  %381 = icmp eq ptr %380, null
  br i1 %381, label %407, label %382

382:                                              ; preds = %374
  %383 = call i32 @getc(ptr noundef %375)
  %384 = icmp eq i32 %383, -1
  br i1 %384, label %412, label %385

385:                                              ; preds = %382
  %386 = shl i32 %383, 24
  store i32 %386, ptr %380, align 4, !tbaa !9
  %387 = call i32 @getc(ptr noundef %375)
  %388 = icmp eq i32 %387, -1
  br i1 %388, label %412, label %389

389:                                              ; preds = %385
  %390 = shl i32 %387, 16
  %391 = and i32 %390, 16711680
  %392 = load i32, ptr %380, align 4, !tbaa !9
  %393 = or i32 %392, %391
  store i32 %393, ptr %380, align 4, !tbaa !9
  %394 = call i32 @getc(ptr noundef %375)
  %395 = icmp eq i32 %394, -1
  br i1 %395, label %412, label %396

396:                                              ; preds = %389
  %397 = shl i32 %394, 8
  %398 = and i32 %397, 65280
  %399 = load i32, ptr %380, align 4, !tbaa !9
  %400 = or i32 %399, %398
  store i32 %400, ptr %380, align 4, !tbaa !9
  %401 = call i32 @getc(ptr noundef %375)
  %402 = icmp eq i32 %401, -1
  br i1 %402, label %412, label %403

403:                                              ; preds = %396
  %404 = and i32 %401, 255
  %405 = load i32, ptr %380, align 4, !tbaa !9
  %406 = or i32 %405, %404
  store i32 %406, ptr %380, align 4, !tbaa !9
  br label %417

407:                                              ; preds = %374
  %408 = load ptr, ptr @no_fpos, align 8, !tbaa !5
  %409 = call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 36, i32 noundef 16, ptr noundef nonnull @.str.27, i32 noundef 1, ptr noundef %408) #14
  %410 = call i32 @getc(ptr noundef %375)
  %411 = icmp eq i32 %410, -1
  call void @llvm.assume(i1 %411)
  br label %412

412:                                              ; preds = %407, %382, %385, %389, %396
  %413 = load ptr, ptr @no_fpos, align 8, !tbaa !5
  %414 = call ptr @FileName(i16 noundef zeroext %22) #14
  %415 = call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 36, i32 noundef 17, ptr noundef nonnull @.str.28, i32 noundef 1, ptr noundef %413, ptr noundef %414) #14
  %416 = load i32, ptr %380, align 8, !tbaa !12
  br label %417

417:                                              ; preds = %412, %403
  %418 = phi i32 [ %416, %412 ], [ %406, %403 ]
  %419 = icmp eq i32 %418, 5361534
  br i1 %419, label %424, label %420

420:                                              ; preds = %417
  %421 = load ptr, ptr @no_fpos, align 8, !tbaa !5
  %422 = call ptr @FileName(i16 noundef zeroext %22) #14
  %423 = call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 36, i32 noundef 18, ptr noundef nonnull @.str.29, i32 noundef 1, ptr noundef %421, ptr noundef %422) #14
  br label %424

424:                                              ; preds = %420, %417
  %425 = getelementptr inbounds %struct.trie_rec, ptr %380, i64 0, i32 1
  %426 = call i32 @getc(ptr noundef %375)
  %427 = icmp eq i32 %426, -1
  br i1 %427, label %450, label %428

428:                                              ; preds = %424
  %429 = shl i32 %426, 24
  store i32 %429, ptr %425, align 4, !tbaa !9
  %430 = call i32 @getc(ptr noundef %375)
  %431 = icmp eq i32 %430, -1
  br i1 %431, label %450, label %432

432:                                              ; preds = %428
  %433 = shl i32 %430, 16
  %434 = and i32 %433, 16711680
  %435 = load i32, ptr %425, align 4, !tbaa !9
  %436 = or i32 %435, %434
  store i32 %436, ptr %425, align 4, !tbaa !9
  %437 = call i32 @getc(ptr noundef %375)
  %438 = icmp eq i32 %437, -1
  br i1 %438, label %450, label %439

439:                                              ; preds = %432
  %440 = shl i32 %437, 8
  %441 = and i32 %440, 65280
  %442 = load i32, ptr %425, align 4, !tbaa !9
  %443 = or i32 %442, %441
  store i32 %443, ptr %425, align 4, !tbaa !9
  %444 = call i32 @getc(ptr noundef %375)
  %445 = icmp eq i32 %444, -1
  br i1 %445, label %450, label %446

446:                                              ; preds = %439
  %447 = and i32 %444, 255
  %448 = load i32, ptr %425, align 4, !tbaa !9
  %449 = or i32 %448, %447
  store i32 %449, ptr %425, align 4, !tbaa !9
  br label %450

450:                                              ; preds = %424, %428, %432, %439, %446
  br label %451

451:                                              ; preds = %450, %458
  %452 = phi i64 [ %459, %458 ], [ 0, %450 ]
  %453 = call i32 @getc(ptr noundef %375)
  %454 = icmp eq i32 %453, -1
  br i1 %454, label %458, label %455

455:                                              ; preds = %451
  %456 = trunc i32 %453 to i8
  %457 = getelementptr inbounds %struct.trie_rec, ptr %380, i64 0, i32 2, i64 %452
  store i8 %456, ptr %457, align 1, !tbaa !11
  br label %458

458:                                              ; preds = %455, %451
  %459 = add nuw nsw i64 %452, 1
  %460 = icmp eq i64 %459, 256
  br i1 %460, label %461, label %451

461:                                              ; preds = %458
  %462 = getelementptr inbounds %struct.trie_rec, ptr %380, i64 0, i32 4
  %463 = call i32 @getc(ptr noundef %375)
  %464 = icmp eq i32 %463, -1
  br i1 %464, label %487, label %465

465:                                              ; preds = %461
  %466 = shl i32 %463, 24
  store i32 %466, ptr %462, align 4, !tbaa !9
  %467 = call i32 @getc(ptr noundef %375)
  %468 = icmp eq i32 %467, -1
  br i1 %468, label %487, label %469

469:                                              ; preds = %465
  %470 = shl i32 %467, 16
  %471 = and i32 %470, 16711680
  %472 = load i32, ptr %462, align 4, !tbaa !9
  %473 = or i32 %472, %471
  store i32 %473, ptr %462, align 4, !tbaa !9
  %474 = call i32 @getc(ptr noundef %375)
  %475 = icmp eq i32 %474, -1
  br i1 %475, label %487, label %476

476:                                              ; preds = %469
  %477 = shl i32 %474, 8
  %478 = and i32 %477, 65280
  %479 = load i32, ptr %462, align 4, !tbaa !9
  %480 = or i32 %479, %478
  store i32 %480, ptr %462, align 4, !tbaa !9
  %481 = call i32 @getc(ptr noundef %375)
  %482 = icmp eq i32 %481, -1
  br i1 %482, label %487, label %483

483:                                              ; preds = %476
  %484 = and i32 %481, 255
  %485 = load i32, ptr %462, align 4, !tbaa !9
  %486 = or i32 %485, %484
  store i32 %486, ptr %462, align 4, !tbaa !9
  br label %487

487:                                              ; preds = %461, %465, %469, %476, %483
  %488 = getelementptr inbounds %struct.trie_rec, ptr %380, i64 0, i32 5
  %489 = call i32 @getc(ptr noundef %375)
  %490 = icmp eq i32 %489, -1
  br i1 %490, label %513, label %491

491:                                              ; preds = %487
  %492 = shl i32 %489, 24
  store i32 %492, ptr %488, align 4, !tbaa !9
  %493 = call i32 @getc(ptr noundef %375)
  %494 = icmp eq i32 %493, -1
  br i1 %494, label %513, label %495

495:                                              ; preds = %491
  %496 = shl i32 %493, 16
  %497 = and i32 %496, 16711680
  %498 = load i32, ptr %488, align 4, !tbaa !9
  %499 = or i32 %498, %497
  store i32 %499, ptr %488, align 4, !tbaa !9
  %500 = call i32 @getc(ptr noundef %375)
  %501 = icmp eq i32 %500, -1
  br i1 %501, label %513, label %502

502:                                              ; preds = %495
  %503 = shl i32 %500, 8
  %504 = and i32 %503, 65280
  %505 = load i32, ptr %488, align 4, !tbaa !9
  %506 = or i32 %505, %504
  store i32 %506, ptr %488, align 4, !tbaa !9
  %507 = call i32 @getc(ptr noundef %375)
  %508 = icmp eq i32 %507, -1
  br i1 %508, label %513, label %509

509:                                              ; preds = %502
  %510 = and i32 %507, 255
  %511 = load i32, ptr %488, align 4, !tbaa !9
  %512 = or i32 %511, %510
  store i32 %512, ptr %488, align 4, !tbaa !9
  br label %513

513:                                              ; preds = %487, %491, %495, %502, %509
  %514 = getelementptr inbounds %struct.trie_rec, ptr %380, i64 0, i32 7
  %515 = call i32 @getc(ptr noundef %375)
  %516 = icmp eq i32 %515, -1
  br i1 %516, label %539, label %517

517:                                              ; preds = %513
  %518 = shl i32 %515, 24
  store i32 %518, ptr %514, align 4, !tbaa !9
  %519 = call i32 @getc(ptr noundef %375)
  %520 = icmp eq i32 %519, -1
  br i1 %520, label %539, label %521

521:                                              ; preds = %517
  %522 = shl i32 %519, 16
  %523 = and i32 %522, 16711680
  %524 = load i32, ptr %514, align 4, !tbaa !9
  %525 = or i32 %524, %523
  store i32 %525, ptr %514, align 4, !tbaa !9
  %526 = call i32 @getc(ptr noundef %375)
  %527 = icmp eq i32 %526, -1
  br i1 %527, label %539, label %528

528:                                              ; preds = %521
  %529 = shl i32 %526, 8
  %530 = and i32 %529, 65280
  %531 = load i32, ptr %514, align 4, !tbaa !9
  %532 = or i32 %531, %530
  store i32 %532, ptr %514, align 4, !tbaa !9
  %533 = call i32 @getc(ptr noundef %375)
  %534 = icmp eq i32 %533, -1
  br i1 %534, label %539, label %535

535:                                              ; preds = %528
  %536 = and i32 %533, 255
  %537 = load i32, ptr %514, align 4, !tbaa !9
  %538 = or i32 %537, %536
  store i32 %538, ptr %514, align 4, !tbaa !9
  br label %539

539:                                              ; preds = %513, %517, %521, %528, %535
  %540 = getelementptr inbounds %struct.trie_rec, ptr %380, i64 0, i32 8
  %541 = call i32 @getc(ptr noundef %375)
  %542 = icmp eq i32 %541, -1
  br i1 %542, label %565, label %543

543:                                              ; preds = %539
  %544 = shl i32 %541, 24
  store i32 %544, ptr %540, align 4, !tbaa !9
  %545 = call i32 @getc(ptr noundef %375)
  %546 = icmp eq i32 %545, -1
  br i1 %546, label %565, label %547

547:                                              ; preds = %543
  %548 = shl i32 %545, 16
  %549 = and i32 %548, 16711680
  %550 = load i32, ptr %540, align 4, !tbaa !9
  %551 = or i32 %550, %549
  store i32 %551, ptr %540, align 4, !tbaa !9
  %552 = call i32 @getc(ptr noundef %375)
  %553 = icmp eq i32 %552, -1
  br i1 %553, label %565, label %554

554:                                              ; preds = %547
  %555 = shl i32 %552, 8
  %556 = and i32 %555, 65280
  %557 = load i32, ptr %540, align 4, !tbaa !9
  %558 = or i32 %557, %556
  store i32 %558, ptr %540, align 4, !tbaa !9
  %559 = call i32 @getc(ptr noundef %375)
  %560 = icmp eq i32 %559, -1
  br i1 %560, label %565, label %561

561:                                              ; preds = %554
  %562 = and i32 %559, 255
  %563 = load i32, ptr %540, align 4, !tbaa !9
  %564 = or i32 %563, %562
  store i32 %564, ptr %540, align 4, !tbaa !9
  br label %565

565:                                              ; preds = %539, %543, %547, %554, %561
  %566 = getelementptr inbounds i8, ptr %380, i64 296
  %567 = getelementptr inbounds %struct.trie_rec, ptr %380, i64 0, i32 3
  store ptr %566, ptr %567, align 8, !tbaa !15
  %568 = load i32, ptr %462, align 8, !tbaa !16
  %569 = sext i32 %568 to i64
  %570 = getelementptr inbounds i16, ptr %566, i64 %569
  %571 = getelementptr inbounds %struct.trie_rec, ptr %380, i64 0, i32 6
  store ptr %570, ptr %571, align 8, !tbaa !18
  %572 = load i32, ptr %488, align 4, !tbaa !17
  %573 = icmp sgt i32 %572, 0
  br i1 %573, label %577, label %574

574:                                              ; preds = %595, %565
  %575 = load i32, ptr %514, align 8, !tbaa !20
  %576 = icmp sgt i32 %575, 0
  br i1 %576, label %600, label %613

577:                                              ; preds = %565, %595
  %578 = phi i64 [ %596, %595 ], [ 0, %565 ]
  %579 = call i32 @getc(ptr noundef %375)
  %580 = icmp eq i32 %579, -1
  br i1 %580, label %595, label %581

581:                                              ; preds = %577
  %582 = trunc i32 %579 to i16
  %583 = shl i16 %582, 8
  %584 = load ptr, ptr %567, align 8, !tbaa !15
  %585 = getelementptr inbounds i16, ptr %584, i64 %578
  store i16 %583, ptr %585, align 2, !tbaa !22
  %586 = call i32 @getc(ptr noundef %375)
  %587 = icmp eq i32 %586, -1
  br i1 %587, label %595, label %588

588:                                              ; preds = %581
  %589 = load ptr, ptr %567, align 8, !tbaa !15
  %590 = getelementptr inbounds i16, ptr %589, i64 %578
  %591 = load i16, ptr %590, align 2, !tbaa !22
  %592 = trunc i32 %586 to i16
  %593 = and i16 %592, 255
  %594 = or i16 %591, %593
  store i16 %594, ptr %590, align 2, !tbaa !22
  br label %595

595:                                              ; preds = %577, %581, %588
  %596 = add nuw nsw i64 %578, 1
  %597 = load i32, ptr %488, align 4, !tbaa !17
  %598 = sext i32 %597 to i64
  %599 = icmp slt i64 %596, %598
  br i1 %599, label %577, label %574

600:                                              ; preds = %574, %608
  %601 = phi i64 [ %609, %608 ], [ 0, %574 ]
  %602 = call i32 @getc(ptr noundef %375)
  %603 = icmp eq i32 %602, -1
  br i1 %603, label %608, label %604

604:                                              ; preds = %600
  %605 = trunc i32 %602 to i8
  %606 = load ptr, ptr %571, align 8, !tbaa !18
  %607 = getelementptr inbounds i8, ptr %606, i64 %601
  store i8 %605, ptr %607, align 1, !tbaa !11
  br label %608

608:                                              ; preds = %604, %600
  %609 = add nuw nsw i64 %601, 1
  %610 = load i32, ptr %514, align 8, !tbaa !20
  %611 = sext i32 %610 to i64
  %612 = icmp slt i64 %609, %611
  br i1 %612, label %600, label %613

613:                                              ; preds = %608, %574
  %614 = call i32 @fclose(ptr noundef %375)
  store i32 1, ptr %1, align 4, !tbaa !9
  br label %615

615:                                              ; preds = %371, %613, %19
  %616 = phi ptr [ null, %19 ], [ %380, %613 ], [ null, %371 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #14
  ret ptr %616
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @Hyphenate(ptr noundef readonly returned %0) local_unnamed_addr #0 {
  %2 = alloca [2050 x i8], align 16
  %3 = alloca [2051 x i8], align 16
  %4 = alloca [2051 x i8], align 16
  %5 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 2050, ptr nonnull %2) #14
  call void @llvm.lifetime.start.p0(i64 2051, ptr nonnull %3) #14
  call void @llvm.lifetime.start.p0(i64 2051, ptr nonnull %4) #14
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #14
  %6 = getelementptr inbounds %struct.word_type, ptr %0, i64 0, i32 1
  %7 = load i8, ptr %6, align 8, !tbaa !11
  %8 = icmp eq i8 %7, 17
  br i1 %8, label %12, label %9

9:                                                ; preds = %1
  %10 = load ptr, ptr @no_fpos, align 8, !tbaa !5
  %11 = tail call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 1, i32 noundef 2, ptr noundef nonnull @.str, i32 noundef 0, ptr noundef %10, ptr noundef nonnull @.str.3) #14
  br label %12

12:                                               ; preds = %9, %1
  %13 = getelementptr inbounds %struct.LIST, ptr %0, i64 0, i32 1
  %14 = load ptr, ptr %13, align 8, !tbaa !11
  %15 = icmp eq ptr %14, %0
  br i1 %15, label %764, label %16

16:                                               ; preds = %12
  %17 = ptrtoint ptr %2 to i64
  %18 = getelementptr inbounds i8, ptr %3, i64 1
  br label %19

19:                                               ; preds = %16, %759
  %20 = phi ptr [ %14, %16 ], [ %762, %759 ]
  br label %21

21:                                               ; preds = %19, %21
  %22 = phi ptr [ %24, %21 ], [ %20, %19 ]
  %23 = getelementptr inbounds [2 x %struct.LIST], ptr %22, i64 0, i64 1
  %24 = load ptr, ptr %23, align 8, !tbaa !11
  %25 = getelementptr inbounds %struct.word_type, ptr %24, i64 0, i32 1
  %26 = load i8, ptr %25, align 8, !tbaa !11
  switch i8 %26, label %759 [
    i8 0, label %21
    i8 11, label %27
    i8 12, label %27
    i8 1, label %36
  ]

27:                                               ; preds = %21, %21
  %28 = getelementptr inbounds %struct.word_type, ptr %24, i64 0, i32 1
  %29 = getelementptr inbounds %struct.word_type, ptr %24, i64 0, i32 4
  %30 = load i8, ptr %29, align 8, !tbaa !11
  %31 = icmp eq i8 %30, 0
  br i1 %31, label %759, label %32

32:                                               ; preds = %27
  %33 = getelementptr inbounds %struct.word_type, ptr %24, i64 0, i32 2
  %34 = load i32, ptr %33, align 8
  %35 = icmp sgt i32 %34, -1
  br i1 %35, label %759, label %43

36:                                               ; preds = %21
  %37 = getelementptr inbounds %struct.gapobj_type, ptr %24, i64 0, i32 3
  %38 = load i16, ptr %37, align 4
  %39 = and i16 %38, -8192
  %40 = icmp eq i16 %39, 16384
  br i1 %40, label %41, label %759

41:                                               ; preds = %36
  %42 = and i16 %38, 24447
  store i16 %42, ptr %37, align 4
  br label %759

43:                                               ; preds = %32
  %44 = lshr i32 %34, 23
  %45 = and i32 %44, 63
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %47, label %49

47:                                               ; preds = %43
  %48 = call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 36, i32 noundef 19, ptr noundef nonnull @.str.4, i32 noundef 1, ptr noundef nonnull %28, ptr noundef nonnull %29) #14
  br label %49

49:                                               ; preds = %47, %43
  %50 = zext nneg i32 %45 to i64
  %51 = getelementptr inbounds [64 x ptr], ptr @HyphTables, i64 0, i64 %50
  %52 = load ptr, ptr %51, align 8, !tbaa !5
  %53 = icmp eq ptr %52, null
  br i1 %53, label %54, label %61

54:                                               ; preds = %49
  %55 = getelementptr inbounds [64 x i32], ptr @TriedFile, i64 0, i64 %50
  %56 = load i32, ptr %55, align 4, !tbaa !9
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %58, label %759

58:                                               ; preds = %54
  %59 = call fastcc ptr @TrieRead(i32 noundef %45, ptr noundef nonnull %5)
  store ptr %59, ptr %51, align 8, !tbaa !5
  store i32 1, ptr %55, align 4, !tbaa !9
  %60 = icmp eq ptr %59, null
  br i1 %60, label %759, label %61

61:                                               ; preds = %58, %49
  %62 = phi ptr [ %59, %58 ], [ %52, %49 ]
  %63 = getelementptr inbounds %struct.trie_rec, ptr %62, i64 0, i32 2
  br label %64

64:                                               ; preds = %64, %61
  %65 = phi i64 [ %72, %64 ], [ 0, %61 ]
  %66 = getelementptr inbounds i8, ptr %29, i64 %65
  %67 = load i8, ptr %66, align 1, !tbaa !11
  %68 = zext i8 %67 to i64
  %69 = getelementptr inbounds i8, ptr %63, i64 %68
  %70 = load i8, ptr %69, align 1, !tbaa !11
  %71 = icmp eq i8 %70, 1
  %72 = add nuw i64 %65, 1
  br i1 %71, label %64, label %73

73:                                               ; preds = %64, %73
  %74 = phi i32 [ %85, %73 ], [ 0, %64 ]
  %75 = phi i64 [ %84, %73 ], [ 0, %64 ]
  %76 = phi i64 [ %83, %73 ], [ %65, %64 ]
  %77 = getelementptr inbounds i8, ptr %29, i64 %76
  %78 = load i8, ptr %77, align 1, !tbaa !11
  %79 = zext i8 %78 to i64
  %80 = getelementptr inbounds i8, ptr %63, i64 %79
  %81 = load i8, ptr %80, align 1, !tbaa !11
  %82 = icmp ugt i8 %81, 1
  %83 = add nuw i64 %76, 1
  %84 = add i64 %75, 1
  %85 = add i32 %74, 1
  br i1 %82, label %73, label %86

86:                                               ; preds = %73
  %87 = icmp eq i8 %78, 45
  br i1 %87, label %88, label %278

88:                                               ; preds = %86
  %89 = getelementptr inbounds i8, ptr %29, i64 %76
  %90 = getelementptr i8, ptr %89, i64 1
  %91 = load i8, ptr %90, align 1, !tbaa !11
  %92 = icmp eq i8 %91, 0
  br i1 %92, label %759, label %93

93:                                               ; preds = %88
  %94 = getelementptr inbounds %struct.LIST, ptr %20, i64 0, i32 1
  %95 = call ptr @MakeWord(i32 noundef 11, ptr noundef nonnull %90, ptr noundef nonnull %28) #14
  %96 = load i32, ptr %33, align 8
  %97 = and i32 %96, 4095
  %98 = getelementptr inbounds %struct.word_type, ptr %95, i64 0, i32 2
  %99 = load i32, ptr %98, align 8
  %100 = and i32 %99, -4096
  %101 = or disjoint i32 %100, %97
  store i32 %101, ptr %98, align 8
  %102 = load i32, ptr %33, align 8
  %103 = and i32 %102, 4190208
  %104 = and i32 %101, -4190209
  %105 = or disjoint i32 %104, %103
  store i32 %105, ptr %98, align 8
  %106 = load i32, ptr %33, align 8
  %107 = and i32 %106, 4194304
  %108 = and i32 %105, -4194305
  %109 = or disjoint i32 %108, %107
  store i32 %109, ptr %98, align 8
  %110 = load i32, ptr %33, align 8
  %111 = and i32 %110, 528482304
  %112 = and i32 %109, -528482305
  %113 = or disjoint i32 %112, %111
  store i32 %113, ptr %98, align 8
  %114 = load i32, ptr %33, align 8
  %115 = and i32 %114, -2147483648
  %116 = and i32 %113, 2147483647
  %117 = or disjoint i32 %116, %115
  store i32 %117, ptr %98, align 8
  %118 = load i32, ptr %33, align 8
  %119 = and i32 %118, 1610612736
  %120 = and i32 %117, -1610612737
  %121 = or disjoint i32 %120, %119
  store i32 %121, ptr %98, align 8
  call void @FontWordSize(ptr noundef %95) #14
  %122 = load i8, ptr @zz_lengths, align 1, !tbaa !11
  %123 = zext i8 %122 to i32
  store i32 %123, ptr @zz_size, align 4, !tbaa !9
  %124 = zext i8 %122 to i64
  %125 = getelementptr inbounds [0 x ptr], ptr @zz_free, i64 0, i64 %124
  %126 = load ptr, ptr %125, align 8, !tbaa !5
  %127 = icmp eq ptr %126, null
  br i1 %127, label %128, label %131

128:                                              ; preds = %93
  %129 = load ptr, ptr @no_fpos, align 8, !tbaa !5
  %130 = call ptr @GetMemory(i32 noundef %123, ptr noundef %129) #14
  br label %133

131:                                              ; preds = %93
  store ptr %126, ptr @zz_hold, align 8, !tbaa !5
  %132 = load ptr, ptr %126, align 8, !tbaa !11
  store ptr %132, ptr %125, align 8, !tbaa !5
  br label %133

133:                                              ; preds = %128, %131
  %134 = phi ptr [ %130, %128 ], [ %126, %131 ]
  %135 = getelementptr inbounds %struct.word_type, ptr %134, i64 0, i32 1
  store i8 0, ptr %135, align 8, !tbaa !11
  %136 = getelementptr inbounds [2 x %struct.LIST], ptr %134, i64 0, i64 1, i32 1
  store ptr %134, ptr %136, align 8, !tbaa !11
  %137 = getelementptr inbounds [2 x %struct.LIST], ptr %134, i64 0, i64 1
  store ptr %134, ptr %137, align 8, !tbaa !11
  %138 = getelementptr inbounds %struct.LIST, ptr %134, i64 0, i32 1
  store ptr %134, ptr %138, align 8, !tbaa !11
  store ptr %134, ptr %134, align 8, !tbaa !11
  store ptr %134, ptr @xx_link, align 8, !tbaa !5
  store ptr %134, ptr @zz_res, align 8, !tbaa !5
  %139 = load ptr, ptr %94, align 8, !tbaa !11
  store ptr %139, ptr @zz_hold, align 8, !tbaa !5
  %140 = icmp eq ptr %139, null
  br i1 %140, label %141, label %142

141:                                              ; preds = %133
  store ptr %95, ptr @zz_hold, align 8, !tbaa !5
  br label %154

142:                                              ; preds = %133
  %143 = load ptr, ptr %139, align 8, !tbaa !11
  store ptr %143, ptr @zz_tmp, align 8, !tbaa !5
  %144 = load ptr, ptr %134, align 8, !tbaa !11
  store ptr %144, ptr %139, align 8, !tbaa !11
  %145 = load ptr, ptr @zz_hold, align 8, !tbaa !5
  %146 = load ptr, ptr @zz_res, align 8, !tbaa !5
  %147 = load ptr, ptr %146, align 8, !tbaa !11
  %148 = getelementptr inbounds %struct.LIST, ptr %147, i64 0, i32 1
  store ptr %145, ptr %148, align 8, !tbaa !11
  %149 = load ptr, ptr @zz_tmp, align 8, !tbaa !5
  store ptr %149, ptr %146, align 8, !tbaa !11
  %150 = load ptr, ptr @zz_res, align 8, !tbaa !5
  %151 = getelementptr inbounds %struct.LIST, ptr %149, i64 0, i32 1
  store ptr %150, ptr %151, align 8, !tbaa !11
  %152 = load ptr, ptr @xx_link, align 8, !tbaa !5
  store ptr %152, ptr @zz_res, align 8, !tbaa !5
  store ptr %95, ptr @zz_hold, align 8, !tbaa !5
  %153 = icmp eq ptr %152, null
  br i1 %153, label %162, label %154

154:                                              ; preds = %141, %142
  %155 = phi ptr [ %134, %141 ], [ %152, %142 ]
  %156 = getelementptr inbounds [2 x %struct.LIST], ptr %95, i64 0, i64 1
  %157 = load ptr, ptr %156, align 8, !tbaa !11
  store ptr %157, ptr @zz_tmp, align 8, !tbaa !5
  %158 = getelementptr inbounds [2 x %struct.LIST], ptr %155, i64 0, i64 1
  %159 = load ptr, ptr %158, align 8, !tbaa !11
  store ptr %159, ptr %156, align 8, !tbaa !11
  %160 = getelementptr inbounds [2 x %struct.LIST], ptr %159, i64 0, i64 1, i32 1
  store ptr %95, ptr %160, align 8, !tbaa !11
  store ptr %157, ptr %158, align 8, !tbaa !11
  %161 = getelementptr inbounds [2 x %struct.LIST], ptr %157, i64 0, i64 1, i32 1
  store ptr %155, ptr %161, align 8, !tbaa !11
  br label %162

162:                                              ; preds = %142, %154
  %163 = load i8, ptr getelementptr inbounds ([0 x i8], ptr @zz_lengths, i64 0, i64 1), align 1, !tbaa !11
  %164 = zext i8 %163 to i32
  store i32 %164, ptr @zz_size, align 4, !tbaa !9
  %165 = zext i8 %163 to i64
  %166 = getelementptr inbounds [0 x ptr], ptr @zz_free, i64 0, i64 %165
  %167 = load ptr, ptr %166, align 8, !tbaa !5
  %168 = icmp eq ptr %167, null
  br i1 %168, label %169, label %172

169:                                              ; preds = %162
  %170 = load ptr, ptr @no_fpos, align 8, !tbaa !5
  %171 = call ptr @GetMemory(i32 noundef %164, ptr noundef %170) #14
  store ptr %171, ptr @zz_hold, align 8, !tbaa !5
  br label %174

172:                                              ; preds = %162
  store ptr %167, ptr @zz_hold, align 8, !tbaa !5
  %173 = load ptr, ptr %167, align 8, !tbaa !11
  store ptr %173, ptr %166, align 8, !tbaa !5
  br label %174

174:                                              ; preds = %169, %172
  %175 = phi ptr [ %171, %169 ], [ %167, %172 ]
  %176 = getelementptr inbounds %struct.word_type, ptr %175, i64 0, i32 1
  store i8 1, ptr %176, align 8, !tbaa !11
  %177 = getelementptr inbounds [2 x %struct.LIST], ptr %175, i64 0, i64 1
  %178 = getelementptr inbounds [2 x %struct.LIST], ptr %175, i64 0, i64 1, i32 1
  store ptr %175, ptr %178, align 8, !tbaa !11
  store ptr %175, ptr %177, align 8, !tbaa !11
  %179 = getelementptr inbounds %struct.LIST, ptr %175, i64 0, i32 1
  store ptr %175, ptr %179, align 8, !tbaa !11
  store ptr %175, ptr %175, align 8, !tbaa !11
  %180 = getelementptr inbounds %struct.word_type, ptr %175, i64 0, i32 2
  %181 = getelementptr inbounds i8, ptr %175, i64 42
  store i8 0, ptr %181, align 2, !tbaa !11
  %182 = getelementptr inbounds i8, ptr %175, i64 41
  store i8 0, ptr %182, align 1, !tbaa !11
  %183 = getelementptr inbounds %struct.gapobj_type, ptr %175, i64 0, i32 3
  %184 = load i16, ptr %183, align 4
  %185 = and i16 %184, 127
  %186 = or disjoint i16 %185, 17920
  store i16 %186, ptr %183, align 4
  %187 = getelementptr inbounds %struct.gapobj_type, ptr %175, i64 0, i32 3, i32 1
  store i16 0, ptr %187, align 2, !tbaa !11
  %188 = load i32, ptr %33, align 8
  %189 = and i32 %188, 1610612736
  %190 = load i32, ptr %180, align 8
  %191 = and i32 %190, -1610612737
  %192 = or disjoint i32 %191, %189
  store i32 %192, ptr %180, align 8
  %193 = load i8, ptr @zz_lengths, align 1, !tbaa !11
  %194 = zext i8 %193 to i32
  store i32 %194, ptr @zz_size, align 4, !tbaa !9
  %195 = zext i8 %193 to i64
  %196 = getelementptr inbounds [0 x ptr], ptr @zz_free, i64 0, i64 %195
  %197 = load ptr, ptr %196, align 8, !tbaa !5
  %198 = icmp eq ptr %197, null
  br i1 %198, label %199, label %202

199:                                              ; preds = %174
  %200 = load ptr, ptr @no_fpos, align 8, !tbaa !5
  %201 = call ptr @GetMemory(i32 noundef %194, ptr noundef %200) #14
  br label %204

202:                                              ; preds = %174
  store ptr %197, ptr @zz_hold, align 8, !tbaa !5
  %203 = load ptr, ptr %197, align 8, !tbaa !11
  store ptr %203, ptr %196, align 8, !tbaa !5
  br label %204

204:                                              ; preds = %199, %202
  %205 = phi ptr [ %201, %199 ], [ %197, %202 ]
  %206 = getelementptr inbounds %struct.word_type, ptr %205, i64 0, i32 1
  store i8 0, ptr %206, align 8, !tbaa !11
  %207 = getelementptr inbounds [2 x %struct.LIST], ptr %205, i64 0, i64 1, i32 1
  store ptr %205, ptr %207, align 8, !tbaa !11
  %208 = getelementptr inbounds [2 x %struct.LIST], ptr %205, i64 0, i64 1
  store ptr %205, ptr %208, align 8, !tbaa !11
  %209 = getelementptr inbounds %struct.LIST, ptr %205, i64 0, i32 1
  store ptr %205, ptr %209, align 8, !tbaa !11
  store ptr %205, ptr %205, align 8, !tbaa !11
  store ptr %205, ptr @xx_link, align 8, !tbaa !5
  store ptr %205, ptr @zz_res, align 8, !tbaa !5
  %210 = load ptr, ptr %94, align 8, !tbaa !11
  store ptr %210, ptr @zz_hold, align 8, !tbaa !5
  %211 = icmp eq ptr %210, null
  br i1 %211, label %212, label %213

212:                                              ; preds = %204
  store ptr %175, ptr @zz_hold, align 8, !tbaa !5
  br label %228

213:                                              ; preds = %204
  %214 = load ptr, ptr %210, align 8, !tbaa !11
  store ptr %214, ptr @zz_tmp, align 8, !tbaa !5
  %215 = load ptr, ptr %205, align 8, !tbaa !11
  store ptr %215, ptr %210, align 8, !tbaa !11
  %216 = load ptr, ptr @zz_hold, align 8, !tbaa !5
  %217 = load ptr, ptr @zz_res, align 8, !tbaa !5
  %218 = load ptr, ptr %217, align 8, !tbaa !11
  %219 = getelementptr inbounds %struct.LIST, ptr %218, i64 0, i32 1
  store ptr %216, ptr %219, align 8, !tbaa !11
  %220 = load ptr, ptr @zz_tmp, align 8, !tbaa !5
  store ptr %220, ptr %217, align 8, !tbaa !11
  %221 = load ptr, ptr @zz_res, align 8, !tbaa !5
  %222 = getelementptr inbounds %struct.LIST, ptr %220, i64 0, i32 1
  store ptr %221, ptr %222, align 8, !tbaa !11
  %223 = load ptr, ptr @xx_link, align 8, !tbaa !5
  store ptr %223, ptr @zz_res, align 8, !tbaa !5
  store ptr %175, ptr @zz_hold, align 8, !tbaa !5
  %224 = icmp eq ptr %223, null
  br i1 %224, label %236, label %225

225:                                              ; preds = %213
  %226 = getelementptr inbounds [2 x %struct.LIST], ptr %223, i64 0, i64 1
  %227 = load ptr, ptr %226, align 8, !tbaa !11
  br label %228

228:                                              ; preds = %225, %212
  %229 = phi ptr [ %205, %212 ], [ %227, %225 ]
  %230 = phi ptr [ %205, %212 ], [ %223, %225 ]
  %231 = load ptr, ptr %177, align 8, !tbaa !11
  store ptr %231, ptr @zz_tmp, align 8, !tbaa !5
  %232 = getelementptr inbounds [2 x %struct.LIST], ptr %230, i64 0, i64 1
  store ptr %229, ptr %177, align 8, !tbaa !11
  %233 = load ptr, ptr %232, align 8, !tbaa !11
  %234 = getelementptr inbounds [2 x %struct.LIST], ptr %233, i64 0, i64 1, i32 1
  store ptr %175, ptr %234, align 8, !tbaa !11
  store ptr %231, ptr %232, align 8, !tbaa !11
  %235 = getelementptr inbounds [2 x %struct.LIST], ptr %231, i64 0, i64 1, i32 1
  store ptr %230, ptr %235, align 8, !tbaa !11
  br label %236

236:                                              ; preds = %213, %228
  %237 = load i8, ptr @zz_lengths, align 1, !tbaa !11
  %238 = zext i8 %237 to i32
  store i32 %238, ptr @zz_size, align 4, !tbaa !9
  %239 = zext i8 %237 to i64
  %240 = getelementptr inbounds [0 x ptr], ptr @zz_free, i64 0, i64 %239
  %241 = load ptr, ptr %240, align 8, !tbaa !5
  %242 = icmp eq ptr %241, null
  br i1 %242, label %243, label %246

243:                                              ; preds = %236
  %244 = load ptr, ptr @no_fpos, align 8, !tbaa !5
  %245 = call ptr @GetMemory(i32 noundef %238, ptr noundef %244) #14
  br label %248

246:                                              ; preds = %236
  store ptr %241, ptr @zz_hold, align 8, !tbaa !5
  %247 = load ptr, ptr %241, align 8, !tbaa !11
  store ptr %247, ptr %240, align 8, !tbaa !5
  br label %248

248:                                              ; preds = %243, %246
  %249 = phi ptr [ %245, %243 ], [ %241, %246 ]
  %250 = getelementptr inbounds %struct.word_type, ptr %249, i64 0, i32 1
  store i8 0, ptr %250, align 8, !tbaa !11
  %251 = getelementptr inbounds [2 x %struct.LIST], ptr %249, i64 0, i64 1, i32 1
  store ptr %249, ptr %251, align 8, !tbaa !11
  %252 = getelementptr inbounds [2 x %struct.LIST], ptr %249, i64 0, i64 1
  store ptr %249, ptr %252, align 8, !tbaa !11
  %253 = getelementptr inbounds %struct.LIST, ptr %249, i64 0, i32 1
  store ptr %249, ptr %253, align 8, !tbaa !11
  store ptr %249, ptr %249, align 8, !tbaa !11
  store ptr %249, ptr @xx_link, align 8, !tbaa !5
  store ptr %249, ptr @zz_res, align 8, !tbaa !5
  store ptr %175, ptr @zz_hold, align 8, !tbaa !5
  %254 = load ptr, ptr %175, align 8, !tbaa !11
  store ptr %254, ptr @zz_tmp, align 8, !tbaa !5
  %255 = load ptr, ptr %249, align 8, !tbaa !11
  store ptr %255, ptr %175, align 8, !tbaa !11
  %256 = load ptr, ptr @zz_hold, align 8, !tbaa !5
  %257 = load ptr, ptr @zz_res, align 8, !tbaa !5
  %258 = load ptr, ptr %257, align 8, !tbaa !11
  %259 = getelementptr inbounds %struct.LIST, ptr %258, i64 0, i32 1
  store ptr %256, ptr %259, align 8, !tbaa !11
  %260 = load ptr, ptr @zz_tmp, align 8, !tbaa !5
  store ptr %260, ptr %257, align 8, !tbaa !11
  %261 = load ptr, ptr @zz_res, align 8, !tbaa !5
  %262 = getelementptr inbounds %struct.LIST, ptr %260, i64 0, i32 1
  store ptr %261, ptr %262, align 8, !tbaa !11
  %263 = load ptr, ptr @xx_link, align 8, !tbaa !5
  store ptr %263, ptr @zz_res, align 8, !tbaa !5
  %264 = call ptr @MakeWord(i32 noundef 11, ptr noundef nonnull @.str.6, ptr noundef nonnull %28) #14
  store ptr %264, ptr @zz_hold, align 8, !tbaa !5
  %265 = icmp eq ptr %264, null
  %266 = load ptr, ptr @zz_res, align 8
  %267 = icmp eq ptr %266, null
  %268 = select i1 %265, i1 true, i1 %267
  br i1 %268, label %276, label %269

269:                                              ; preds = %248
  %270 = getelementptr inbounds [2 x %struct.LIST], ptr %264, i64 0, i64 1
  %271 = load ptr, ptr %270, align 8, !tbaa !11
  store ptr %271, ptr @zz_tmp, align 8, !tbaa !5
  %272 = getelementptr inbounds [2 x %struct.LIST], ptr %266, i64 0, i64 1
  %273 = load ptr, ptr %272, align 8, !tbaa !11
  store ptr %273, ptr %270, align 8, !tbaa !11
  %274 = getelementptr inbounds [2 x %struct.LIST], ptr %273, i64 0, i64 1, i32 1
  store ptr %264, ptr %274, align 8, !tbaa !11
  store ptr %271, ptr %272, align 8, !tbaa !11
  %275 = getelementptr inbounds [2 x %struct.LIST], ptr %271, i64 0, i64 1, i32 1
  store ptr %266, ptr %275, align 8, !tbaa !11
  br label %276

276:                                              ; preds = %248, %269
  store i8 0, ptr %90, align 1, !tbaa !11
  call void @FontWordSize(ptr noundef nonnull %24) #14
  %277 = load ptr, ptr %94, align 8, !tbaa !11
  br label %759

278:                                              ; preds = %86
  %279 = trunc i64 %65 to i32
  %280 = trunc i64 %76 to i32
  %281 = sub nsw i32 %280, %279
  %282 = icmp slt i32 %281, 5
  br i1 %282, label %759, label %283

283:                                              ; preds = %278
  %284 = icmp ne i8 %78, 0
  %285 = icmp eq i8 %81, 0
  %286 = and i1 %284, %285
  br i1 %286, label %759, label %287

287:                                              ; preds = %283
  store i8 1, ptr %2, align 16, !tbaa !11
  store i8 48, ptr %3, align 16, !tbaa !11
  call void @llvm.memset.p0.i64(ptr nonnull align 1 %18, i8 48, i64 %75, i1 false), !tbaa !11
  %288 = and i64 %65, 4294967295
  %289 = zext i32 %74 to i64
  %290 = getelementptr i8, ptr %29, i64 %288
  %291 = add nsw i64 %289, -1
  %292 = and i64 %289, 3
  %293 = icmp ult i64 %291, 3
  br i1 %293, label %329, label %294

294:                                              ; preds = %287
  %295 = and i64 %289, 4294967292
  br label %296

296:                                              ; preds = %296, %294
  %297 = phi i64 [ 0, %294 ], [ %325, %296 ]
  %298 = phi i64 [ 0, %294 ], [ %327, %296 ]
  %299 = getelementptr i8, ptr %290, i64 %297
  %300 = load i8, ptr %299, align 1, !tbaa !11
  %301 = zext i8 %300 to i64
  %302 = getelementptr inbounds i8, ptr %63, i64 %301
  %303 = load i8, ptr %302, align 1, !tbaa !11
  %304 = or disjoint i64 %297, 1
  %305 = getelementptr inbounds [2050 x i8], ptr %2, i64 0, i64 %304
  store i8 %303, ptr %305, align 1, !tbaa !11
  %306 = getelementptr i8, ptr %290, i64 %304
  %307 = load i8, ptr %306, align 1, !tbaa !11
  %308 = zext i8 %307 to i64
  %309 = getelementptr inbounds i8, ptr %63, i64 %308
  %310 = load i8, ptr %309, align 1, !tbaa !11
  %311 = or disjoint i64 %297, 2
  %312 = getelementptr inbounds [2050 x i8], ptr %2, i64 0, i64 %311
  store i8 %310, ptr %312, align 2, !tbaa !11
  %313 = getelementptr i8, ptr %290, i64 %311
  %314 = load i8, ptr %313, align 1, !tbaa !11
  %315 = zext i8 %314 to i64
  %316 = getelementptr inbounds i8, ptr %63, i64 %315
  %317 = load i8, ptr %316, align 1, !tbaa !11
  %318 = or disjoint i64 %297, 3
  %319 = getelementptr inbounds [2050 x i8], ptr %2, i64 0, i64 %318
  store i8 %317, ptr %319, align 1, !tbaa !11
  %320 = getelementptr i8, ptr %290, i64 %318
  %321 = load i8, ptr %320, align 1, !tbaa !11
  %322 = zext i8 %321 to i64
  %323 = getelementptr inbounds i8, ptr %63, i64 %322
  %324 = load i8, ptr %323, align 1, !tbaa !11
  %325 = add nuw nsw i64 %297, 4
  %326 = getelementptr inbounds [2050 x i8], ptr %2, i64 0, i64 %325
  store i8 %324, ptr %326, align 4, !tbaa !11
  %327 = add i64 %298, 4
  %328 = icmp eq i64 %327, %295
  br i1 %328, label %329, label %296

329:                                              ; preds = %296, %287
  %330 = phi i64 [ 0, %287 ], [ %325, %296 ]
  %331 = icmp eq i64 %292, 0
  br i1 %331, label %344, label %332

332:                                              ; preds = %329, %332
  %333 = phi i64 [ %340, %332 ], [ %330, %329 ]
  %334 = phi i64 [ %342, %332 ], [ 0, %329 ]
  %335 = getelementptr i8, ptr %290, i64 %333
  %336 = load i8, ptr %335, align 1, !tbaa !11
  %337 = zext i8 %336 to i64
  %338 = getelementptr inbounds i8, ptr %63, i64 %337
  %339 = load i8, ptr %338, align 1, !tbaa !11
  %340 = add nuw nsw i64 %333, 1
  %341 = getelementptr inbounds [2050 x i8], ptr %2, i64 0, i64 %340
  store i8 %339, ptr %341, align 1, !tbaa !11
  %342 = add i64 %334, 1
  %343 = icmp eq i64 %342, %292
  br i1 %343, label %344, label %332, !llvm.loop !24

344:                                              ; preds = %332, %329
  %345 = zext nneg i32 %85 to i64
  %346 = getelementptr inbounds [2050 x i8], ptr %2, i64 0, i64 %345
  store i8 1, ptr %346, align 1, !tbaa !11
  %347 = getelementptr inbounds [2051 x i8], ptr %3, i64 0, i64 %345
  store i8 48, ptr %347, align 1, !tbaa !11
  %348 = add nuw nsw i32 %74, 2
  %349 = zext nneg i32 %348 to i64
  %350 = getelementptr inbounds [2050 x i8], ptr %2, i64 0, i64 %349
  store i8 0, ptr %350, align 1, !tbaa !11
  %351 = getelementptr inbounds [2051 x i8], ptr %3, i64 0, i64 %349
  store i8 48, ptr %351, align 1, !tbaa !11
  %352 = add nuw nsw i32 %74, 3
  %353 = zext nneg i32 %352 to i64
  %354 = getelementptr inbounds [2051 x i8], ptr %3, i64 0, i64 %353
  store i8 0, ptr %354, align 1, !tbaa !11
  %355 = getelementptr inbounds %struct.trie_rec, ptr %62, i64 0, i32 3
  %356 = getelementptr inbounds %struct.trie_rec, ptr %62, i64 0, i32 6
  br label %357

357:                                              ; preds = %488, %344
  %358 = phi ptr [ %2, %344 ], [ %489, %488 ]
  %359 = ptrtoint ptr %358 to i64
  %360 = sub i64 %359, %17
  %361 = getelementptr inbounds i8, ptr %3, i64 %360
  %362 = load ptr, ptr %355, align 8, !tbaa !15
  br label %363

363:                                              ; preds = %485, %357
  %364 = phi ptr [ %362, %357 ], [ %420, %485 ]
  %365 = phi ptr [ %358, %357 ], [ %487, %485 ]
  %366 = phi i32 [ 0, %357 ], [ %486, %485 ]
  %367 = zext nneg i32 %366 to i64
  %368 = getelementptr inbounds i16, ptr %364, i64 %367
  %369 = load i16, ptr %368, align 2, !tbaa !22
  %370 = icmp slt i16 %369, 0
  br i1 %370, label %371, label %415

371:                                              ; preds = %363
  %372 = sext i16 %369 to i64
  %373 = load ptr, ptr %356, align 8, !tbaa !18
  %374 = sub nsw i64 0, %372
  %375 = getelementptr inbounds i8, ptr %373, i64 %374
  %376 = load i8, ptr %375, align 1, !tbaa !11
  %377 = icmp eq i8 %376, 0
  br i1 %377, label %399, label %378

378:                                              ; preds = %371, %392
  %379 = phi i8 [ %397, %392 ], [ %376, %371 ]
  %380 = phi ptr [ %395, %392 ], [ %4, %371 ]
  %381 = phi ptr [ %396, %392 ], [ %375, %371 ]
  %382 = and i8 %379, 15
  %383 = icmp ult i8 %379, 16
  br i1 %383, label %392, label %384

384:                                              ; preds = %378
  %385 = lshr i8 %379, 4
  %386 = zext nneg i8 %385 to i64
  %387 = add nuw nsw i64 %386, 4294967295
  %388 = and i64 %387, 4294967295
  %389 = add nuw nsw i64 %388, 1
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %380, i8 48, i64 %389, i1 false), !tbaa !11
  %390 = getelementptr i8, ptr %380, i64 1
  %391 = getelementptr i8, ptr %390, i64 %388
  br label %392

392:                                              ; preds = %384, %378
  %393 = phi ptr [ %380, %378 ], [ %391, %384 ]
  %394 = add nuw nsw i8 %382, 46
  %395 = getelementptr inbounds i8, ptr %393, i64 1
  store i8 %394, ptr %393, align 1, !tbaa !11
  %396 = getelementptr inbounds i8, ptr %381, i64 1
  %397 = load i8, ptr %396, align 1, !tbaa !11
  %398 = icmp eq i8 %397, 0
  br i1 %398, label %399, label %378

399:                                              ; preds = %392, %371
  %400 = phi ptr [ %4, %371 ], [ %395, %392 ]
  store i8 0, ptr %400, align 1, !tbaa !11
  %401 = load i8, ptr %4, align 16, !tbaa !11
  %402 = icmp eq i8 %401, 0
  br i1 %402, label %415, label %403

403:                                              ; preds = %399, %410
  %404 = phi i8 [ %413, %410 ], [ %401, %399 ]
  %405 = phi ptr [ %412, %410 ], [ %361, %399 ]
  %406 = phi ptr [ %411, %410 ], [ %4, %399 ]
  %407 = load i8, ptr %405, align 1, !tbaa !11
  %408 = icmp ugt i8 %404, %407
  br i1 %408, label %409, label %410

409:                                              ; preds = %403
  store i8 %404, ptr %405, align 1, !tbaa !11
  br label %410

410:                                              ; preds = %409, %403
  %411 = getelementptr inbounds i8, ptr %406, i64 1
  %412 = getelementptr inbounds i8, ptr %405, i64 1
  %413 = load i8, ptr %411, align 1, !tbaa !11
  %414 = icmp eq i8 %413, 0
  br i1 %414, label %415, label %403

415:                                              ; preds = %410, %399, %363
  %416 = load i8, ptr %365, align 1, !tbaa !11
  %417 = icmp eq i8 %416, 0
  br i1 %417, label %488, label %418

418:                                              ; preds = %415
  %419 = zext i8 %416 to i32
  %420 = load ptr, ptr %355, align 8, !tbaa !15
  %421 = add nuw nsw i32 %366, %419
  %422 = zext nneg i32 %421 to i64
  %423 = getelementptr inbounds i16, ptr %420, i64 %422
  %424 = load i16, ptr %423, align 2, !tbaa !22
  %425 = sext i16 %424 to i32
  %426 = icmp eq i16 %424, 0
  br i1 %426, label %488, label %427

427:                                              ; preds = %418
  %428 = icmp slt i16 %424, 0
  br i1 %428, label %429, label %485

429:                                              ; preds = %427
  %430 = load ptr, ptr %356, align 8, !tbaa !18
  %431 = sub nsw i32 0, %425
  %432 = zext nneg i32 %431 to i64
  %433 = getelementptr inbounds i8, ptr %430, i64 %432
  br label %434

434:                                              ; preds = %480, %429
  %435 = phi ptr [ %433, %429 ], [ %483, %480 ]
  %436 = phi ptr [ %365, %429 ], [ %481, %480 ]
  %437 = load i8, ptr %435, align 1, !tbaa !11
  %438 = icmp eq i8 %437, 0
  br i1 %438, label %439, label %480

439:                                              ; preds = %434
  %440 = getelementptr inbounds i8, ptr %435, i64 1
  %441 = load i8, ptr %440, align 1, !tbaa !11
  %442 = icmp eq i8 %441, 0
  br i1 %442, label %464, label %443

443:                                              ; preds = %439, %457
  %444 = phi i8 [ %462, %457 ], [ %441, %439 ]
  %445 = phi ptr [ %461, %457 ], [ %440, %439 ]
  %446 = phi ptr [ %460, %457 ], [ %4, %439 ]
  %447 = and i8 %444, 15
  %448 = icmp ult i8 %444, 16
  br i1 %448, label %457, label %449

449:                                              ; preds = %443
  %450 = lshr i8 %444, 4
  %451 = zext nneg i8 %450 to i64
  %452 = add nuw nsw i64 %451, 4294967295
  %453 = and i64 %452, 4294967295
  %454 = add nuw nsw i64 %453, 1
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %446, i8 48, i64 %454, i1 false), !tbaa !11
  %455 = getelementptr i8, ptr %446, i64 1
  %456 = getelementptr i8, ptr %455, i64 %453
  br label %457

457:                                              ; preds = %449, %443
  %458 = phi ptr [ %446, %443 ], [ %456, %449 ]
  %459 = add nuw nsw i8 %447, 46
  %460 = getelementptr inbounds i8, ptr %458, i64 1
  store i8 %459, ptr %458, align 1, !tbaa !11
  %461 = getelementptr inbounds i8, ptr %445, i64 1
  %462 = load i8, ptr %461, align 1, !tbaa !11
  %463 = icmp eq i8 %462, 0
  br i1 %463, label %464, label %443

464:                                              ; preds = %457, %439
  %465 = phi ptr [ %4, %439 ], [ %460, %457 ]
  store i8 0, ptr %465, align 1, !tbaa !11
  %466 = load i8, ptr %4, align 16, !tbaa !11
  %467 = icmp eq i8 %466, 0
  br i1 %467, label %488, label %468

468:                                              ; preds = %464, %475
  %469 = phi i8 [ %478, %475 ], [ %466, %464 ]
  %470 = phi ptr [ %477, %475 ], [ %361, %464 ]
  %471 = phi ptr [ %476, %475 ], [ %4, %464 ]
  %472 = load i8, ptr %470, align 1, !tbaa !11
  %473 = icmp ugt i8 %469, %472
  br i1 %473, label %474, label %475

474:                                              ; preds = %468
  store i8 %469, ptr %470, align 1, !tbaa !11
  br label %475

475:                                              ; preds = %474, %468
  %476 = getelementptr inbounds i8, ptr %471, i64 1
  %477 = getelementptr inbounds i8, ptr %470, i64 1
  %478 = load i8, ptr %476, align 1, !tbaa !11
  %479 = icmp eq i8 %478, 0
  br i1 %479, label %488, label %468

480:                                              ; preds = %434
  %481 = getelementptr inbounds i8, ptr %436, i64 1
  %482 = load i8, ptr %481, align 1, !tbaa !11
  %483 = getelementptr inbounds i8, ptr %435, i64 1
  %484 = icmp eq i8 %482, %437
  br i1 %484, label %434, label %488

485:                                              ; preds = %427
  %486 = shl nuw nsw i32 %425, 2
  %487 = getelementptr inbounds i8, ptr %365, i64 1
  br label %363

488:                                              ; preds = %415, %418, %480, %475, %464
  %489 = getelementptr inbounds i8, ptr %358, i64 1
  %490 = getelementptr inbounds i8, ptr %358, i64 2
  %491 = load i8, ptr %490, align 1, !tbaa !11
  %492 = icmp eq i8 %491, 1
  br i1 %492, label %493, label %357

493:                                              ; preds = %488
  %494 = load ptr, ptr @finfo, align 8, !tbaa !5
  %495 = load i32, ptr %33, align 8
  %496 = and i32 %495, 4095
  %497 = zext nneg i32 %496 to i64
  %498 = getelementptr inbounds %struct.font_rec, ptr %494, i64 %497, i32 1
  %499 = load ptr, ptr %498, align 8, !tbaa !26
  %500 = load i8, ptr %29, align 1, !tbaa !11
  %501 = icmp eq i8 %500, 0
  br i1 %501, label %551, label %502

502:                                              ; preds = %493, %546
  %503 = phi i64 [ %548, %546 ], [ 2, %493 ]
  %504 = phi i8 [ %549, %546 ], [ %500, %493 ]
  %505 = phi ptr [ %547, %546 ], [ %29, %493 ]
  %506 = zext i8 %504 to i64
  %507 = getelementptr inbounds i8, ptr %499, i64 %506
  %508 = load i8, ptr %507, align 1, !tbaa !11
  %509 = icmp ugt i8 %508, 1
  br i1 %509, label %510, label %546

510:                                              ; preds = %502
  %511 = zext i8 %508 to i64
  %512 = or disjoint i64 %511, 256
  %513 = getelementptr inbounds i8, ptr %499, i64 %512
  %514 = load i8, ptr %513, align 1, !tbaa !11
  %515 = icmp eq i8 %514, %504
  br i1 %515, label %516, label %546

516:                                              ; preds = %510, %542
  %517 = phi ptr [ %543, %542 ], [ %513, %510 ]
  %518 = getelementptr inbounds i8, ptr %517, i64 1
  %519 = load i8, ptr %518, align 1, !tbaa !11
  br label %520

520:                                              ; preds = %529, %516
  %521 = phi i8 [ %519, %516 ], [ %528, %529 ]
  %522 = phi ptr [ %518, %516 ], [ %527, %529 ]
  %523 = phi ptr [ %505, %516 ], [ %524, %529 ]
  %524 = getelementptr inbounds i8, ptr %523, i64 1
  %525 = load i8, ptr %524, align 1, !tbaa !11
  %526 = icmp eq i8 %521, %525
  %527 = getelementptr inbounds i8, ptr %522, i64 1
  %528 = load i8, ptr %527, align 1, !tbaa !11
  br i1 %526, label %529, label %533

529:                                              ; preds = %520
  %530 = icmp eq i8 %528, 0
  %531 = icmp eq i8 %521, 0
  %532 = or i1 %531, %530
  br i1 %532, label %533, label %520

533:                                              ; preds = %529, %520
  %534 = icmp eq i8 %528, 0
  br i1 %534, label %535, label %537

535:                                              ; preds = %533
  %536 = getelementptr inbounds [2051 x i8], ptr %3, i64 0, i64 %503
  store i8 48, ptr %536, align 1, !tbaa !11
  br label %546

537:                                              ; preds = %533, %537
  %538 = phi ptr [ %539, %537 ], [ %522, %533 ]
  %539 = getelementptr inbounds i8, ptr %538, i64 1
  %540 = load i8, ptr %539, align 1, !tbaa !11
  %541 = icmp eq i8 %540, 0
  br i1 %541, label %542, label %537

542:                                              ; preds = %537
  %543 = getelementptr inbounds i8, ptr %538, i64 2
  %544 = load i8, ptr %543, align 1, !tbaa !11
  %545 = icmp eq i8 %544, %504
  br i1 %545, label %516, label %546

546:                                              ; preds = %542, %510, %502, %535
  %547 = getelementptr inbounds i8, ptr %505, i64 1
  %548 = add nuw i64 %503, 1
  %549 = load i8, ptr %547, align 1, !tbaa !11
  %550 = icmp eq i8 %549, 0
  br i1 %550, label %551, label %502

551:                                              ; preds = %546, %493
  %552 = getelementptr inbounds %struct.LIST, ptr %20, i64 0, i32 1
  %553 = load ptr, ptr %552, align 8, !tbaa !11
  %554 = getelementptr %struct.word_type, ptr %24, i64 0, i32 3, i32 1, i64 7
  %555 = sext i32 %74 to i64
  %556 = shl i64 %65, 32
  %557 = ashr exact i64 %556, 32
  %558 = getelementptr i8, ptr %554, i64 %557
  br label %559

559:                                              ; preds = %754, %551
  %560 = phi i64 [ %564, %754 ], [ %555, %551 ]
  %561 = phi i1 [ false, %754 ], [ true, %551 ]
  br label %562

562:                                              ; preds = %559, %752
  %563 = phi i64 [ %564, %752 ], [ %560, %559 ]
  %564 = add nsw i64 %563, -1
  %565 = getelementptr inbounds [2051 x i8], ptr %3, i64 0, i64 %564
  %566 = load i8, ptr %565, align 1, !tbaa !11
  %567 = and i8 %566, 1
  %568 = icmp eq i8 %567, 0
  br i1 %568, label %752, label %569

569:                                              ; preds = %562
  %570 = getelementptr i8, ptr %558, i64 %564
  %571 = call ptr @MakeWord(i32 noundef 11, ptr noundef %570, ptr noundef nonnull %28) #14
  %572 = load i32, ptr %33, align 8
  %573 = and i32 %572, 4095
  %574 = getelementptr inbounds %struct.word_type, ptr %571, i64 0, i32 2
  %575 = load i32, ptr %574, align 8
  %576 = and i32 %575, -4096
  %577 = or disjoint i32 %576, %573
  store i32 %577, ptr %574, align 8
  %578 = load i32, ptr %33, align 8
  %579 = and i32 %578, 4190208
  %580 = and i32 %577, -4190209
  %581 = or disjoint i32 %580, %579
  store i32 %581, ptr %574, align 8
  %582 = load i32, ptr %33, align 8
  %583 = and i32 %582, 4194304
  %584 = and i32 %581, -4194305
  %585 = or disjoint i32 %584, %583
  store i32 %585, ptr %574, align 8
  %586 = load i32, ptr %33, align 8
  %587 = and i32 %586, 528482304
  %588 = and i32 %585, -528482305
  %589 = or disjoint i32 %588, %587
  store i32 %589, ptr %574, align 8
  %590 = load i32, ptr %33, align 8
  %591 = and i32 %590, -2147483648
  %592 = and i32 %589, 2147483647
  %593 = or disjoint i32 %592, %591
  store i32 %593, ptr %574, align 8
  %594 = load i32, ptr %33, align 8
  %595 = and i32 %594, 1610612736
  %596 = and i32 %593, -1610612737
  %597 = or disjoint i32 %596, %595
  store i32 %597, ptr %574, align 8
  call void @FontWordSize(ptr noundef %571) #14
  %598 = load i8, ptr @zz_lengths, align 1, !tbaa !11
  %599 = zext i8 %598 to i32
  store i32 %599, ptr @zz_size, align 4, !tbaa !9
  %600 = zext i8 %598 to i64
  %601 = getelementptr inbounds [0 x ptr], ptr @zz_free, i64 0, i64 %600
  %602 = load ptr, ptr %601, align 8, !tbaa !5
  %603 = icmp eq ptr %602, null
  br i1 %603, label %604, label %607

604:                                              ; preds = %569
  %605 = load ptr, ptr @no_fpos, align 8, !tbaa !5
  %606 = call ptr @GetMemory(i32 noundef %599, ptr noundef %605) #14
  br label %609

607:                                              ; preds = %569
  store ptr %602, ptr @zz_hold, align 8, !tbaa !5
  %608 = load ptr, ptr %602, align 8, !tbaa !11
  store ptr %608, ptr %601, align 8, !tbaa !5
  br label %609

609:                                              ; preds = %604, %607
  %610 = phi ptr [ %606, %604 ], [ %602, %607 ]
  %611 = getelementptr inbounds %struct.word_type, ptr %610, i64 0, i32 1
  store i8 0, ptr %611, align 8, !tbaa !11
  %612 = getelementptr inbounds [2 x %struct.LIST], ptr %610, i64 0, i64 1, i32 1
  store ptr %610, ptr %612, align 8, !tbaa !11
  %613 = getelementptr inbounds [2 x %struct.LIST], ptr %610, i64 0, i64 1
  store ptr %610, ptr %613, align 8, !tbaa !11
  %614 = getelementptr inbounds %struct.LIST, ptr %610, i64 0, i32 1
  store ptr %610, ptr %614, align 8, !tbaa !11
  store ptr %610, ptr %610, align 8, !tbaa !11
  store ptr %610, ptr @xx_link, align 8, !tbaa !5
  store ptr %610, ptr @zz_res, align 8, !tbaa !5
  %615 = load ptr, ptr %552, align 8, !tbaa !11
  store ptr %615, ptr @zz_hold, align 8, !tbaa !5
  %616 = icmp eq ptr %615, null
  br i1 %616, label %617, label %618

617:                                              ; preds = %609
  store ptr %571, ptr @zz_hold, align 8, !tbaa !5
  br label %630

618:                                              ; preds = %609
  %619 = load ptr, ptr %615, align 8, !tbaa !11
  store ptr %619, ptr @zz_tmp, align 8, !tbaa !5
  %620 = load ptr, ptr %610, align 8, !tbaa !11
  store ptr %620, ptr %615, align 8, !tbaa !11
  %621 = load ptr, ptr @zz_hold, align 8, !tbaa !5
  %622 = load ptr, ptr @zz_res, align 8, !tbaa !5
  %623 = load ptr, ptr %622, align 8, !tbaa !11
  %624 = getelementptr inbounds %struct.LIST, ptr %623, i64 0, i32 1
  store ptr %621, ptr %624, align 8, !tbaa !11
  %625 = load ptr, ptr @zz_tmp, align 8, !tbaa !5
  store ptr %625, ptr %622, align 8, !tbaa !11
  %626 = load ptr, ptr @zz_res, align 8, !tbaa !5
  %627 = getelementptr inbounds %struct.LIST, ptr %625, i64 0, i32 1
  store ptr %626, ptr %627, align 8, !tbaa !11
  %628 = load ptr, ptr @xx_link, align 8, !tbaa !5
  store ptr %628, ptr @zz_res, align 8, !tbaa !5
  store ptr %571, ptr @zz_hold, align 8, !tbaa !5
  %629 = icmp eq ptr %628, null
  br i1 %629, label %638, label %630

630:                                              ; preds = %617, %618
  %631 = phi ptr [ %610, %617 ], [ %628, %618 ]
  %632 = getelementptr inbounds [2 x %struct.LIST], ptr %571, i64 0, i64 1
  %633 = load ptr, ptr %632, align 8, !tbaa !11
  store ptr %633, ptr @zz_tmp, align 8, !tbaa !5
  %634 = getelementptr inbounds [2 x %struct.LIST], ptr %631, i64 0, i64 1
  %635 = load ptr, ptr %634, align 8, !tbaa !11
  store ptr %635, ptr %632, align 8, !tbaa !11
  %636 = getelementptr inbounds [2 x %struct.LIST], ptr %635, i64 0, i64 1, i32 1
  store ptr %571, ptr %636, align 8, !tbaa !11
  store ptr %633, ptr %634, align 8, !tbaa !11
  %637 = getelementptr inbounds [2 x %struct.LIST], ptr %633, i64 0, i64 1, i32 1
  store ptr %631, ptr %637, align 8, !tbaa !11
  br label %638

638:                                              ; preds = %618, %630
  %639 = load i8, ptr getelementptr inbounds ([0 x i8], ptr @zz_lengths, i64 0, i64 1), align 1, !tbaa !11
  %640 = zext i8 %639 to i32
  store i32 %640, ptr @zz_size, align 4, !tbaa !9
  %641 = zext i8 %639 to i64
  %642 = getelementptr inbounds [0 x ptr], ptr @zz_free, i64 0, i64 %641
  %643 = load ptr, ptr %642, align 8, !tbaa !5
  %644 = icmp eq ptr %643, null
  br i1 %644, label %645, label %648

645:                                              ; preds = %638
  %646 = load ptr, ptr @no_fpos, align 8, !tbaa !5
  %647 = call ptr @GetMemory(i32 noundef %640, ptr noundef %646) #14
  store ptr %647, ptr @zz_hold, align 8, !tbaa !5
  br label %650

648:                                              ; preds = %638
  store ptr %643, ptr @zz_hold, align 8, !tbaa !5
  %649 = load ptr, ptr %643, align 8, !tbaa !11
  store ptr %649, ptr %642, align 8, !tbaa !5
  br label %650

650:                                              ; preds = %645, %648
  %651 = phi ptr [ %647, %645 ], [ %643, %648 ]
  %652 = getelementptr inbounds %struct.word_type, ptr %651, i64 0, i32 1
  store i8 1, ptr %652, align 8, !tbaa !11
  %653 = getelementptr inbounds [2 x %struct.LIST], ptr %651, i64 0, i64 1
  %654 = getelementptr inbounds [2 x %struct.LIST], ptr %651, i64 0, i64 1, i32 1
  store ptr %651, ptr %654, align 8, !tbaa !11
  store ptr %651, ptr %653, align 8, !tbaa !11
  %655 = getelementptr inbounds %struct.LIST, ptr %651, i64 0, i32 1
  store ptr %651, ptr %655, align 8, !tbaa !11
  store ptr %651, ptr %651, align 8, !tbaa !11
  %656 = getelementptr inbounds %struct.word_type, ptr %651, i64 0, i32 2
  %657 = getelementptr inbounds i8, ptr %651, i64 42
  store i8 0, ptr %657, align 2, !tbaa !11
  %658 = getelementptr inbounds i8, ptr %651, i64 41
  store i8 0, ptr %658, align 1, !tbaa !11
  %659 = getelementptr inbounds %struct.gapobj_type, ptr %651, i64 0, i32 3
  %660 = load i16, ptr %659, align 4
  %661 = and i16 %660, 127
  %662 = or disjoint i16 %661, 17920
  store i16 %662, ptr %659, align 4
  %663 = getelementptr inbounds %struct.gapobj_type, ptr %651, i64 0, i32 3, i32 1
  store i16 0, ptr %663, align 2, !tbaa !11
  %664 = load i32, ptr %33, align 8
  %665 = and i32 %664, 1610612736
  %666 = load i32, ptr %656, align 8
  %667 = and i32 %666, -1610612737
  %668 = or disjoint i32 %667, %665
  store i32 %668, ptr %656, align 8
  %669 = load i8, ptr @zz_lengths, align 1, !tbaa !11
  %670 = zext i8 %669 to i32
  store i32 %670, ptr @zz_size, align 4, !tbaa !9
  %671 = zext i8 %669 to i64
  %672 = getelementptr inbounds [0 x ptr], ptr @zz_free, i64 0, i64 %671
  %673 = load ptr, ptr %672, align 8, !tbaa !5
  %674 = icmp eq ptr %673, null
  br i1 %674, label %675, label %678

675:                                              ; preds = %650
  %676 = load ptr, ptr @no_fpos, align 8, !tbaa !5
  %677 = call ptr @GetMemory(i32 noundef %670, ptr noundef %676) #14
  br label %680

678:                                              ; preds = %650
  store ptr %673, ptr @zz_hold, align 8, !tbaa !5
  %679 = load ptr, ptr %673, align 8, !tbaa !11
  store ptr %679, ptr %672, align 8, !tbaa !5
  br label %680

680:                                              ; preds = %675, %678
  %681 = phi ptr [ %677, %675 ], [ %673, %678 ]
  %682 = getelementptr inbounds %struct.word_type, ptr %681, i64 0, i32 1
  store i8 0, ptr %682, align 8, !tbaa !11
  %683 = getelementptr inbounds [2 x %struct.LIST], ptr %681, i64 0, i64 1, i32 1
  store ptr %681, ptr %683, align 8, !tbaa !11
  %684 = getelementptr inbounds [2 x %struct.LIST], ptr %681, i64 0, i64 1
  store ptr %681, ptr %684, align 8, !tbaa !11
  %685 = getelementptr inbounds %struct.LIST, ptr %681, i64 0, i32 1
  store ptr %681, ptr %685, align 8, !tbaa !11
  store ptr %681, ptr %681, align 8, !tbaa !11
  store ptr %681, ptr @xx_link, align 8, !tbaa !5
  store ptr %681, ptr @zz_res, align 8, !tbaa !5
  %686 = load ptr, ptr %552, align 8, !tbaa !11
  store ptr %686, ptr @zz_hold, align 8, !tbaa !5
  %687 = icmp eq ptr %686, null
  br i1 %687, label %688, label %689

688:                                              ; preds = %680
  store ptr %651, ptr @zz_hold, align 8, !tbaa !5
  br label %704

689:                                              ; preds = %680
  %690 = load ptr, ptr %686, align 8, !tbaa !11
  store ptr %690, ptr @zz_tmp, align 8, !tbaa !5
  %691 = load ptr, ptr %681, align 8, !tbaa !11
  store ptr %691, ptr %686, align 8, !tbaa !11
  %692 = load ptr, ptr @zz_hold, align 8, !tbaa !5
  %693 = load ptr, ptr @zz_res, align 8, !tbaa !5
  %694 = load ptr, ptr %693, align 8, !tbaa !11
  %695 = getelementptr inbounds %struct.LIST, ptr %694, i64 0, i32 1
  store ptr %692, ptr %695, align 8, !tbaa !11
  %696 = load ptr, ptr @zz_tmp, align 8, !tbaa !5
  store ptr %696, ptr %693, align 8, !tbaa !11
  %697 = load ptr, ptr @zz_res, align 8, !tbaa !5
  %698 = getelementptr inbounds %struct.LIST, ptr %696, i64 0, i32 1
  store ptr %697, ptr %698, align 8, !tbaa !11
  %699 = load ptr, ptr @xx_link, align 8, !tbaa !5
  store ptr %699, ptr @zz_res, align 8, !tbaa !5
  store ptr %651, ptr @zz_hold, align 8, !tbaa !5
  %700 = icmp eq ptr %699, null
  br i1 %700, label %712, label %701

701:                                              ; preds = %689
  %702 = getelementptr inbounds [2 x %struct.LIST], ptr %699, i64 0, i64 1
  %703 = load ptr, ptr %702, align 8, !tbaa !11
  br label %704

704:                                              ; preds = %701, %688
  %705 = phi ptr [ %681, %688 ], [ %703, %701 ]
  %706 = phi ptr [ %681, %688 ], [ %699, %701 ]
  %707 = load ptr, ptr %653, align 8, !tbaa !11
  store ptr %707, ptr @zz_tmp, align 8, !tbaa !5
  %708 = getelementptr inbounds [2 x %struct.LIST], ptr %706, i64 0, i64 1
  store ptr %705, ptr %653, align 8, !tbaa !11
  %709 = load ptr, ptr %708, align 8, !tbaa !11
  %710 = getelementptr inbounds [2 x %struct.LIST], ptr %709, i64 0, i64 1, i32 1
  store ptr %651, ptr %710, align 8, !tbaa !11
  store ptr %707, ptr %708, align 8, !tbaa !11
  %711 = getelementptr inbounds [2 x %struct.LIST], ptr %707, i64 0, i64 1, i32 1
  store ptr %706, ptr %711, align 8, !tbaa !11
  br label %712

712:                                              ; preds = %689, %704
  %713 = load i8, ptr @zz_lengths, align 1, !tbaa !11
  %714 = zext i8 %713 to i32
  store i32 %714, ptr @zz_size, align 4, !tbaa !9
  %715 = zext i8 %713 to i64
  %716 = getelementptr inbounds [0 x ptr], ptr @zz_free, i64 0, i64 %715
  %717 = load ptr, ptr %716, align 8, !tbaa !5
  %718 = icmp eq ptr %717, null
  br i1 %718, label %719, label %722

719:                                              ; preds = %712
  %720 = load ptr, ptr @no_fpos, align 8, !tbaa !5
  %721 = call ptr @GetMemory(i32 noundef %714, ptr noundef %720) #14
  br label %724

722:                                              ; preds = %712
  store ptr %717, ptr @zz_hold, align 8, !tbaa !5
  %723 = load ptr, ptr %717, align 8, !tbaa !11
  store ptr %723, ptr %716, align 8, !tbaa !5
  br label %724

724:                                              ; preds = %719, %722
  %725 = phi ptr [ %721, %719 ], [ %717, %722 ]
  %726 = getelementptr inbounds %struct.word_type, ptr %725, i64 0, i32 1
  store i8 0, ptr %726, align 8, !tbaa !11
  %727 = getelementptr inbounds [2 x %struct.LIST], ptr %725, i64 0, i64 1, i32 1
  store ptr %725, ptr %727, align 8, !tbaa !11
  %728 = getelementptr inbounds [2 x %struct.LIST], ptr %725, i64 0, i64 1
  store ptr %725, ptr %728, align 8, !tbaa !11
  %729 = getelementptr inbounds %struct.LIST, ptr %725, i64 0, i32 1
  store ptr %725, ptr %729, align 8, !tbaa !11
  store ptr %725, ptr %725, align 8, !tbaa !11
  store ptr %725, ptr @xx_link, align 8, !tbaa !5
  store ptr %725, ptr @zz_res, align 8, !tbaa !5
  store ptr %651, ptr @zz_hold, align 8, !tbaa !5
  %730 = load ptr, ptr %651, align 8, !tbaa !11
  store ptr %730, ptr @zz_tmp, align 8, !tbaa !5
  %731 = load ptr, ptr %725, align 8, !tbaa !11
  store ptr %731, ptr %651, align 8, !tbaa !11
  %732 = load ptr, ptr @zz_hold, align 8, !tbaa !5
  %733 = load ptr, ptr @zz_res, align 8, !tbaa !5
  %734 = load ptr, ptr %733, align 8, !tbaa !11
  %735 = getelementptr inbounds %struct.LIST, ptr %734, i64 0, i32 1
  store ptr %732, ptr %735, align 8, !tbaa !11
  %736 = load ptr, ptr @zz_tmp, align 8, !tbaa !5
  store ptr %736, ptr %733, align 8, !tbaa !11
  %737 = load ptr, ptr @zz_res, align 8, !tbaa !5
  %738 = getelementptr inbounds %struct.LIST, ptr %736, i64 0, i32 1
  store ptr %737, ptr %738, align 8, !tbaa !11
  %739 = load ptr, ptr @xx_link, align 8, !tbaa !5
  store ptr %739, ptr @zz_res, align 8, !tbaa !5
  %740 = call ptr @MakeWord(i32 noundef 11, ptr noundef nonnull @.str.6, ptr noundef nonnull %28) #14
  store ptr %740, ptr @zz_hold, align 8, !tbaa !5
  %741 = icmp eq ptr %740, null
  %742 = load ptr, ptr @zz_res, align 8
  %743 = icmp eq ptr %742, null
  %744 = select i1 %741, i1 true, i1 %743
  br i1 %744, label %754, label %745

745:                                              ; preds = %724
  %746 = getelementptr inbounds [2 x %struct.LIST], ptr %740, i64 0, i64 1
  %747 = load ptr, ptr %746, align 8, !tbaa !11
  store ptr %747, ptr @zz_tmp, align 8, !tbaa !5
  %748 = getelementptr inbounds [2 x %struct.LIST], ptr %742, i64 0, i64 1
  %749 = load ptr, ptr %748, align 8, !tbaa !11
  store ptr %749, ptr %746, align 8, !tbaa !11
  %750 = getelementptr inbounds [2 x %struct.LIST], ptr %749, i64 0, i64 1, i32 1
  store ptr %740, ptr %750, align 8, !tbaa !11
  store ptr %747, ptr %748, align 8, !tbaa !11
  %751 = getelementptr inbounds [2 x %struct.LIST], ptr %747, i64 0, i64 1, i32 1
  store ptr %742, ptr %751, align 8, !tbaa !11
  br label %754

752:                                              ; preds = %562
  %753 = icmp sgt i64 %563, 4
  br i1 %753, label %562, label %756

754:                                              ; preds = %745, %724
  store i8 0, ptr %570, align 1, !tbaa !11
  %755 = icmp sgt i64 %563, 4
  br i1 %755, label %559, label %757

756:                                              ; preds = %752
  br i1 %561, label %759, label %757

757:                                              ; preds = %754, %756
  call void @FontWordSize(ptr noundef %24) #14
  %758 = load ptr, ptr %553, align 8, !tbaa !11
  br label %759

759:                                              ; preds = %21, %54, %27, %32, %283, %756, %757, %278, %88, %58, %36, %41, %276
  %760 = phi ptr [ %20, %41 ], [ %20, %36 ], [ %20, %58 ], [ %20, %88 ], [ %277, %276 ], [ %20, %278 ], [ %758, %757 ], [ %20, %756 ], [ %20, %283 ], [ %20, %32 ], [ %20, %27 ], [ %20, %54 ], [ %20, %21 ]
  %761 = getelementptr inbounds %struct.LIST, ptr %760, i64 0, i32 1
  %762 = load ptr, ptr %761, align 8, !tbaa !11
  %763 = icmp eq ptr %762, %0
  br i1 %763, label %764, label %19

764:                                              ; preds = %759, %12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #14
  call void @llvm.lifetime.end.p0(i64 2051, ptr nonnull %4) #14
  call void @llvm.lifetime.end.p0(i64 2051, ptr nonnull %3) #14
  call void @llvm.lifetime.end.p0(i64 2050, ptr nonnull %2) #14
  ret ptr %0
}

declare ptr @MakeWord(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @FontWordSize(ptr noundef) local_unnamed_addr #2

declare ptr @GetMemory(i32 noundef, ptr noundef) local_unnamed_addr #2

declare ptr @LanguageHyph(i32 noundef) local_unnamed_addr #2

declare zeroext i16 @DefineFile(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

declare ptr @OpenFile(i16 noundef zeroext, i32 noundef, i32 noundef) local_unnamed_addr #2

declare ptr @FileName(i16 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare noundef ptr @fgets(ptr noundef, i32 noundef, ptr nocapture noundef) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare noundef i32 @__isoc99_sscanf(ptr nocapture noundef readonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal fastcc noundef i32 @TrieInsert(ptr noundef %0, ptr noundef %1, ptr nocapture noundef %2, ptr noundef %3, i32 noundef %4) unnamed_addr #0 {
  %6 = alloca [512 x i8], align 16
  %7 = alloca [512 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 512, ptr nonnull %6) #14
  call void @llvm.lifetime.start.p0(i64 512, ptr nonnull %7) #14
  %8 = getelementptr inbounds %struct.trie_rec, ptr %2, i64 0, i32 5
  %9 = load i32, ptr %8, align 4, !tbaa !17
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %45

11:                                               ; preds = %5
  %12 = getelementptr inbounds %struct.trie_rec, ptr %2, i64 0, i32 1
  %13 = load i32, ptr %12, align 4, !tbaa !14
  %14 = add nsw i32 %13, -1
  %15 = sdiv i32 %14, 4
  %16 = shl nsw i32 %15, 2
  %17 = add i32 %16, 4
  store i32 %17, ptr %12, align 4, !tbaa !14
  %18 = getelementptr inbounds %struct.trie_rec, ptr %2, i64 0, i32 4
  %19 = load i32, ptr %18, align 8, !tbaa !16
  %20 = icmp sgt i32 %17, %19
  br i1 %20, label %21, label %27

21:                                               ; preds = %11
  %22 = load ptr, ptr @no_fpos, align 8, !tbaa !5
  %23 = tail call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 36, i32 noundef 5, ptr noundef nonnull @.str.172, i32 noundef 0, ptr noundef %22) #14
  %24 = load i32, ptr %8, align 4, !tbaa !17
  %25 = load i32, ptr %12, align 4, !tbaa !14
  %26 = add i32 %25, %24
  br label %27

27:                                               ; preds = %21, %11
  %28 = phi i32 [ %26, %21 ], [ %17, %11 ]
  %29 = phi i32 [ %25, %21 ], [ %17, %11 ]
  %30 = phi i32 [ %24, %21 ], [ 0, %11 ]
  store i32 %28, ptr %8, align 4, !tbaa !17
  %31 = icmp sgt i32 %29, 0
  br i1 %31, label %32, label %45

32:                                               ; preds = %27
  %33 = getelementptr inbounds %struct.trie_rec, ptr %2, i64 0, i32 3
  %34 = load ptr, ptr %33, align 8, !tbaa !15
  %35 = sext i32 %30 to i64
  %36 = shl nsw i64 %35, 1
  %37 = getelementptr i8, ptr %34, i64 %36
  %38 = add i32 %30, 1
  %39 = tail call i32 @llvm.smax.i32(i32 %28, i32 %38)
  %40 = xor i32 %30, -1
  %41 = add i32 %39, %40
  %42 = zext i32 %41 to i64
  %43 = shl nuw nsw i64 %42, 1
  %44 = add nuw nsw i64 %43, 2
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 2 dereferenceable(1) %37, i8 0, i64 %44, i1 false), !tbaa !22
  br label %45

45:                                               ; preds = %32, %27, %5
  %46 = getelementptr inbounds i8, ptr %1, i64 -1
  br label %47

47:                                               ; preds = %71, %45
  %48 = phi ptr [ %7, %45 ], [ %72, %71 ]
  %49 = phi ptr [ %1, %45 ], [ %74, %71 ]
  %50 = phi ptr [ %46, %45 ], [ %73, %71 ]
  %51 = load i8, ptr %49, align 1, !tbaa !11
  switch i8 %51, label %52 [
    i8 0, label %75
    i8 48, label %55
  ]

52:                                               ; preds = %47
  %53 = ptrtoint ptr %49 to i64
  %54 = ptrtoint ptr %50 to i64
  br label %60

55:                                               ; preds = %47
  %56 = ptrtoint ptr %49 to i64
  %57 = ptrtoint ptr %50 to i64
  %58 = sub i64 %57, %56
  %59 = icmp slt i64 %58, -15
  br i1 %59, label %60, label %71

60:                                               ; preds = %52, %55
  %61 = phi i64 [ %54, %52 ], [ %57, %55 ]
  %62 = phi i64 [ %53, %52 ], [ %56, %55 ]
  %63 = xor i64 %61, -1
  %64 = add i64 %62, %63
  %65 = shl i64 %64, 4
  %66 = zext i8 %51 to i64
  %67 = add nuw nsw i64 %66, 210
  %68 = or i64 %65, %67
  %69 = trunc i64 %68 to i8
  %70 = getelementptr inbounds i8, ptr %48, i64 1
  store i8 %69, ptr %48, align 1, !tbaa !11
  br label %71

71:                                               ; preds = %55, %60
  %72 = phi ptr [ %70, %60 ], [ %48, %55 ]
  %73 = phi ptr [ %49, %60 ], [ %50, %55 ]
  %74 = getelementptr inbounds i8, ptr %49, i64 1
  br label %47

75:                                               ; preds = %47
  store i8 0, ptr %48, align 1, !tbaa !11
  %76 = load i8, ptr %0, align 1, !tbaa !11
  %77 = icmp eq i8 %76, 0
  br i1 %77, label %96, label %78

78:                                               ; preds = %75, %91
  %79 = phi i64 [ %92, %91 ], [ 0, %75 ]
  %80 = phi i8 [ %94, %91 ], [ %76, %75 ]
  %81 = zext i8 %80 to i64
  %82 = getelementptr inbounds %struct.trie_rec, ptr %2, i64 0, i32 2, i64 %81
  %83 = load i8, ptr %82, align 1, !tbaa !11
  %84 = icmp eq i8 %83, 0
  br i1 %84, label %87, label %85

85:                                               ; preds = %78
  %86 = getelementptr inbounds [512 x i8], ptr %6, i64 0, i64 %79
  store i8 %83, ptr %86, align 1, !tbaa !11
  br label %91

87:                                               ; preds = %78
  %88 = zext i8 %80 to i32
  %89 = load ptr, ptr @no_fpos, align 8, !tbaa !5
  %90 = tail call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 36, i32 noundef 2, ptr noundef nonnull @.str.170, i32 noundef 1, ptr noundef %89, ptr noundef %3, i32 noundef %4, i32 noundef %88) #14
  br label %91

91:                                               ; preds = %85, %87
  %92 = add nuw i64 %79, 1
  %93 = getelementptr inbounds i8, ptr %0, i64 %92
  %94 = load i8, ptr %93, align 1, !tbaa !11
  %95 = icmp eq i8 %94, 0
  br i1 %95, label %96, label %78

96:                                               ; preds = %91, %75
  %97 = phi i64 [ 0, %75 ], [ %92, %91 ]
  %98 = getelementptr inbounds [512 x i8], ptr %6, i64 0, i64 %97
  store i8 0, ptr %98, align 1, !tbaa !11
  %99 = load i8, ptr %6, align 16, !tbaa !11
  %100 = icmp eq i8 %99, 0
  %101 = getelementptr inbounds %struct.trie_rec, ptr %2, i64 0, i32 3
  br i1 %100, label %102, label %104

102:                                              ; preds = %96
  %103 = load ptr, ptr %101, align 8, !tbaa !15
  br label %112

104:                                              ; preds = %96
  %105 = getelementptr inbounds %struct.trie_rec, ptr %2, i64 0, i32 6
  %106 = getelementptr inbounds %struct.trie_rec, ptr %2, i64 0, i32 8
  %107 = getelementptr inbounds %struct.trie_rec, ptr %2, i64 0, i32 1
  %108 = getelementptr inbounds %struct.trie_rec, ptr %2, i64 0, i32 4
  %109 = load ptr, ptr %101, align 8, !tbaa !15
  br label %142

110:                                              ; preds = %244
  %111 = sext i32 %245 to i64
  br label %112

112:                                              ; preds = %102, %110
  %113 = phi ptr [ %103, %102 ], [ %247, %110 ]
  %114 = phi i64 [ 0, %102 ], [ %111, %110 ]
  %115 = getelementptr inbounds %struct.trie_rec, ptr %2, i64 0, i32 3
  %116 = getelementptr inbounds i16, ptr %113, i64 %114
  %117 = load i16, ptr %116, align 2, !tbaa !22
  %118 = icmp eq i16 %117, 0
  br i1 %118, label %122, label %119

119:                                              ; preds = %112
  %120 = load ptr, ptr @no_fpos, align 8, !tbaa !5
  %121 = tail call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 36, i32 noundef 7, ptr noundef nonnull @.str.171, i32 noundef 0, ptr noundef %120, ptr noundef nonnull %0) #14
  br label %252

122:                                              ; preds = %112
  %123 = getelementptr inbounds %struct.trie_rec, ptr %2, i64 0, i32 8
  %124 = load i32, ptr %123, align 4, !tbaa !19
  %125 = zext i32 %124 to i64
  %126 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %7) #16
  %127 = xor i64 %126, -1
  %128 = add i64 %127, %125
  %129 = trunc i64 %128 to i16
  %130 = icmp sgt i16 %129, -1
  br i1 %130, label %131, label %252

131:                                              ; preds = %122
  %132 = trunc i64 %128 to i32
  %133 = and i32 %132, 65535
  store i32 %133, ptr %123, align 4, !tbaa !19
  %134 = getelementptr inbounds %struct.trie_rec, ptr %2, i64 0, i32 6
  %135 = load ptr, ptr %134, align 8, !tbaa !18
  %136 = and i64 %128, 65535
  %137 = getelementptr inbounds i8, ptr %135, i64 %136
  %138 = call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %137, ptr noundef nonnull dereferenceable(1) %7) #14
  %139 = sub nsw i16 0, %129
  %140 = load ptr, ptr %115, align 8, !tbaa !15
  %141 = getelementptr inbounds i16, ptr %140, i64 %114
  store i16 %139, ptr %141, align 2, !tbaa !22
  br label %252

142:                                              ; preds = %104, %244
  %143 = phi ptr [ %109, %104 ], [ %246, %244 ]
  %144 = phi ptr [ %109, %104 ], [ %247, %244 ]
  %145 = phi i64 [ 0, %104 ], [ %248, %244 ]
  %146 = phi i8 [ %99, %104 ], [ %250, %244 ]
  %147 = phi i32 [ 0, %104 ], [ %245, %244 ]
  %148 = zext i8 %146 to i32
  %149 = add nsw i32 %147, %148
  %150 = sext i32 %149 to i64
  %151 = getelementptr inbounds i16, ptr %144, i64 %150
  %152 = load i16, ptr %151, align 2, !tbaa !22
  %153 = sext i16 %152 to i32
  %154 = icmp eq i16 %152, 0
  br i1 %154, label %155, label %190

155:                                              ; preds = %142
  %156 = load i32, ptr %106, align 4, !tbaa !19
  %157 = zext i32 %156 to i64
  %158 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %7) #16
  %159 = xor i64 %158, -1
  %160 = add i64 %159, %157
  %161 = and i64 %160, 32768
  %162 = icmp eq i64 %161, 0
  br i1 %162, label %163, label %252

163:                                              ; preds = %155
  %164 = trunc i64 %160 to i32
  %165 = and i32 %164, 32767
  store i32 %165, ptr %106, align 4, !tbaa !19
  %166 = load ptr, ptr %105, align 8, !tbaa !18
  %167 = and i64 %160, 32767
  %168 = getelementptr inbounds i8, ptr %166, i64 %167
  %169 = call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %168, ptr noundef nonnull dereferenceable(1) %7) #14
  %170 = add i64 %145, 1
  %171 = and i64 %170, 4294967295
  %172 = getelementptr inbounds [512 x i8], ptr %6, i64 0, i64 %171
  %173 = load i32, ptr %106, align 4, !tbaa !19
  %174 = zext i32 %173 to i64
  %175 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %172) #16
  %176 = xor i64 %175, -1
  %177 = add i64 %176, %174
  %178 = trunc i64 %177 to i16
  %179 = icmp sgt i16 %178, -1
  br i1 %179, label %180, label %252

180:                                              ; preds = %163
  %181 = trunc i64 %177 to i32
  %182 = and i32 %181, 65535
  store i32 %182, ptr %106, align 4, !tbaa !19
  %183 = load ptr, ptr %105, align 8, !tbaa !18
  %184 = and i64 %177, 65535
  %185 = getelementptr inbounds i8, ptr %183, i64 %184
  %186 = call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %185, ptr noundef nonnull dereferenceable(1) %172) #14
  %187 = sub nsw i16 0, %178
  %188 = load ptr, ptr %101, align 8, !tbaa !15
  %189 = getelementptr inbounds i16, ptr %188, i64 %150
  store i16 %187, ptr %189, align 2, !tbaa !22
  br label %252

190:                                              ; preds = %142
  %191 = icmp slt i16 %152, 0
  br i1 %191, label %194, label %192

192:                                              ; preds = %190
  %193 = shl nuw nsw i32 %153, 2
  br label %244

194:                                              ; preds = %190
  %195 = sub nsw i32 0, %153
  %196 = load ptr, ptr %105, align 8, !tbaa !18
  %197 = zext nneg i32 %195 to i64
  %198 = getelementptr inbounds i8, ptr %196, i64 %197
  %199 = load i8, ptr %198, align 1, !tbaa !11
  %200 = zext i8 %199 to i32
  %201 = load i32, ptr %106, align 4, !tbaa !19
  %202 = icmp eq i32 %201, %195
  br i1 %202, label %203, label %205

203:                                              ; preds = %194
  %204 = sub nsw i32 1, %153
  store i32 %204, ptr %106, align 4, !tbaa !19
  br label %205

205:                                              ; preds = %203, %194
  %206 = load i32, ptr %8, align 4, !tbaa !17
  %207 = load i32, ptr %107, align 4, !tbaa !14
  %208 = add i32 %207, %206
  %209 = load i32, ptr %108, align 8, !tbaa !16
  %210 = icmp sgt i32 %208, %209
  br i1 %210, label %211, label %218

211:                                              ; preds = %205
  %212 = load ptr, ptr @no_fpos, align 8, !tbaa !5
  %213 = tail call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 36, i32 noundef 5, ptr noundef nonnull @.str.172, i32 noundef 0, ptr noundef %212) #14
  %214 = load i32, ptr %8, align 4, !tbaa !17
  %215 = load i32, ptr %107, align 4, !tbaa !14
  %216 = add i32 %215, %214
  %217 = load ptr, ptr %101, align 8, !tbaa !15
  br label %218

218:                                              ; preds = %211, %205
  %219 = phi ptr [ %217, %211 ], [ %143, %205 ]
  %220 = phi i32 [ %216, %211 ], [ %208, %205 ]
  %221 = phi i32 [ %215, %211 ], [ %207, %205 ]
  %222 = phi i32 [ %214, %211 ], [ %206, %205 ]
  store i32 %220, ptr %8, align 4, !tbaa !17
  %223 = icmp sgt i32 %221, 0
  br i1 %223, label %224, label %235

224:                                              ; preds = %218
  %225 = sext i32 %222 to i64
  %226 = shl nsw i64 %225, 1
  %227 = getelementptr i8, ptr %219, i64 %226
  %228 = add i32 %222, 1
  %229 = tail call i32 @llvm.smax.i32(i32 %220, i32 %228)
  %230 = xor i32 %222, -1
  %231 = add i32 %229, %230
  %232 = zext i32 %231 to i64
  %233 = shl nuw nsw i64 %232, 1
  %234 = add nuw nsw i64 %233, 2
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 2 dereferenceable(1) %227, i8 0, i64 %234, i1 false), !tbaa !22
  br label %235

235:                                              ; preds = %218, %224
  %236 = sdiv i32 %222, 4
  %237 = trunc i32 %236 to i16
  %238 = getelementptr inbounds i16, ptr %219, i64 %150
  store i16 %237, ptr %238, align 2, !tbaa !22
  %239 = add i16 %152, -1
  %240 = shl nsw i32 %236, 2
  %241 = add nsw i32 %240, %200
  %242 = sext i32 %241 to i64
  %243 = getelementptr inbounds i16, ptr %219, i64 %242
  store i16 %239, ptr %243, align 2, !tbaa !22
  br label %244

244:                                              ; preds = %192, %235
  %245 = phi i32 [ %193, %192 ], [ %240, %235 ]
  %246 = phi ptr [ %143, %192 ], [ %219, %235 ]
  %247 = phi ptr [ %144, %192 ], [ %219, %235 ]
  %248 = add nuw i64 %145, 1
  %249 = getelementptr inbounds [512 x i8], ptr %6, i64 0, i64 %248
  %250 = load i8, ptr %249, align 1, !tbaa !11
  %251 = icmp eq i8 %250, 0
  br i1 %251, label %110, label %142

252:                                              ; preds = %163, %155, %122, %119, %131, %180
  %253 = phi i32 [ 1, %180 ], [ 1, %131 ], [ 1, %119 ], [ 0, %122 ], [ 0, %155 ], [ 0, %163 ]
  call void @llvm.lifetime.end.p0(i64 512, ptr nonnull %7) #14
  call void @llvm.lifetime.end.p0(i64 512, ptr nonnull %6) #14
  ret i32 %253
}

; Function Attrs: nofree nounwind
declare noundef i32 @fclose(ptr nocapture noundef) local_unnamed_addr #3

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @CompressTrie(ptr nocapture noundef %0) unnamed_addr #4 {
  %2 = getelementptr inbounds %struct.trie_rec, ptr %0, i64 0, i32 5
  %3 = load i32, ptr %2, align 4, !tbaa !17
  %4 = getelementptr inbounds %struct.trie_rec, ptr %0, i64 0, i32 4
  store i32 %3, ptr %4, align 8, !tbaa !16
  %5 = icmp sgt i32 %3, 0
  %6 = getelementptr inbounds %struct.trie_rec, ptr %0, i64 0, i32 3
  %7 = load ptr, ptr %6, align 8, !tbaa !15
  %8 = ptrtoint ptr %7 to i64
  br i1 %5, label %9, label %50

9:                                                ; preds = %1
  %10 = getelementptr inbounds %struct.trie_rec, ptr %0, i64 0, i32 8
  %11 = zext nneg i32 %3 to i64
  %12 = and i64 %11, 1
  %13 = icmp eq i32 %3, 1
  br i1 %13, label %39, label %14

14:                                               ; preds = %9
  %15 = and i64 %11, 2147483646
  br label %16

16:                                               ; preds = %35, %14
  %17 = phi i64 [ 0, %14 ], [ %36, %35 ]
  %18 = phi i64 [ 0, %14 ], [ %37, %35 ]
  %19 = getelementptr inbounds i16, ptr %7, i64 %17
  %20 = load i16, ptr %19, align 2, !tbaa !22
  %21 = icmp slt i16 %20, 0
  br i1 %21, label %22, label %26

22:                                               ; preds = %16
  %23 = load i32, ptr %10, align 4, !tbaa !19
  %24 = trunc i32 %23 to i16
  %25 = add i16 %20, %24
  store i16 %25, ptr %19, align 2, !tbaa !22
  br label %26

26:                                               ; preds = %16, %22
  %27 = or disjoint i64 %17, 1
  %28 = getelementptr inbounds i16, ptr %7, i64 %27
  %29 = load i16, ptr %28, align 2, !tbaa !22
  %30 = icmp slt i16 %29, 0
  br i1 %30, label %31, label %35

31:                                               ; preds = %26
  %32 = load i32, ptr %10, align 4, !tbaa !19
  %33 = trunc i32 %32 to i16
  %34 = add i16 %29, %33
  store i16 %34, ptr %28, align 2, !tbaa !22
  br label %35

35:                                               ; preds = %31, %26
  %36 = add nuw nsw i64 %17, 2
  %37 = add i64 %18, 2
  %38 = icmp eq i64 %37, %15
  br i1 %38, label %39, label %16

39:                                               ; preds = %35, %9
  %40 = phi i64 [ 0, %9 ], [ %36, %35 ]
  %41 = icmp eq i64 %12, 0
  br i1 %41, label %50, label %42

42:                                               ; preds = %39
  %43 = getelementptr inbounds i16, ptr %7, i64 %40
  %44 = load i16, ptr %43, align 2, !tbaa !22
  %45 = icmp slt i16 %44, 0
  br i1 %45, label %46, label %50

46:                                               ; preds = %42
  %47 = load i32, ptr %10, align 4, !tbaa !19
  %48 = trunc i32 %47 to i16
  %49 = add i16 %44, %48
  store i16 %49, ptr %43, align 2, !tbaa !22
  br label %50

50:                                               ; preds = %39, %46, %42, %1
  %51 = getelementptr inbounds %struct.trie_rec, ptr %0, i64 0, i32 3
  %52 = sext i32 %3 to i64
  %53 = getelementptr inbounds %struct.trie_rec, ptr %0, i64 0, i32 6
  %54 = getelementptr inbounds %struct.trie_rec, ptr %0, i64 0, i32 8
  %55 = load i32, ptr %54, align 4, !tbaa !19
  %56 = getelementptr inbounds %struct.trie_rec, ptr %0, i64 0, i32 7
  %57 = load i32, ptr %56, align 8, !tbaa !20
  %58 = sub nsw i32 %57, %55
  %59 = icmp sgt i32 %58, 0
  br i1 %59, label %60, label %174

60:                                               ; preds = %50
  %61 = load ptr, ptr %53, align 8, !tbaa !18
  %62 = sext i32 %55 to i64
  %63 = getelementptr i8, ptr %61, i64 %62
  %64 = getelementptr i16, ptr %7, i64 %52
  %65 = xor i32 %55, -1
  %66 = add i32 %57, %65
  %67 = zext i32 %66 to i64
  %68 = add nuw nsw i64 %67, 1
  %69 = icmp ult i32 %66, 7
  br i1 %69, label %114, label %70

70:                                               ; preds = %60
  %71 = ptrtoint ptr %61 to i64
  %72 = shl nsw i64 %52, 1
  %73 = add i64 %72, %8
  %74 = add i64 %71, %62
  %75 = sub i64 %73, %74
  %76 = icmp ult i64 %75, 32
  br i1 %76, label %114, label %77

77:                                               ; preds = %70
  %78 = icmp ult i32 %66, 31
  br i1 %78, label %99, label %79

79:                                               ; preds = %77
  %80 = and i64 %68, 8589934560
  br label %81

81:                                               ; preds = %81, %79
  %82 = phi i64 [ 0, %79 ], [ %89, %81 ]
  %83 = getelementptr i8, ptr %63, i64 %82
  %84 = getelementptr i8, ptr %64, i64 %82
  %85 = getelementptr i8, ptr %83, i64 16
  %86 = load <16 x i8>, ptr %83, align 1, !tbaa !11
  %87 = load <16 x i8>, ptr %85, align 1, !tbaa !11
  %88 = getelementptr i8, ptr %84, i64 16
  store <16 x i8> %86, ptr %84, align 1, !tbaa !11
  store <16 x i8> %87, ptr %88, align 1, !tbaa !11
  %89 = add nuw i64 %82, 32
  %90 = icmp eq i64 %89, %80
  br i1 %90, label %91, label %81, !llvm.loop !28

91:                                               ; preds = %81
  %92 = icmp eq i64 %68, %80
  br i1 %92, label %170, label %93

93:                                               ; preds = %91
  %94 = getelementptr i8, ptr %64, i64 %80
  %95 = getelementptr i8, ptr %63, i64 %80
  %96 = trunc i64 %80 to i32
  %97 = and i64 %68, 24
  %98 = icmp eq i64 %97, 0
  br i1 %98, label %114, label %99

99:                                               ; preds = %77, %93
  %100 = phi i64 [ %80, %93 ], [ 0, %77 ]
  %101 = and i64 %68, 8589934584
  %102 = trunc i64 %101 to i32
  %103 = getelementptr i8, ptr %63, i64 %101
  %104 = getelementptr i8, ptr %64, i64 %101
  br label %105

105:                                              ; preds = %105, %99
  %106 = phi i64 [ %100, %99 ], [ %110, %105 ]
  %107 = getelementptr i8, ptr %63, i64 %106
  %108 = getelementptr i8, ptr %64, i64 %106
  %109 = load <8 x i8>, ptr %107, align 1, !tbaa !11
  store <8 x i8> %109, ptr %108, align 1, !tbaa !11
  %110 = add nuw i64 %106, 8
  %111 = icmp eq i64 %110, %101
  br i1 %111, label %112, label %105, !llvm.loop !31

112:                                              ; preds = %105
  %113 = icmp eq i64 %68, %101
  br i1 %113, label %170, label %114

114:                                              ; preds = %70, %60, %93, %112
  %115 = phi i32 [ 0, %60 ], [ 0, %70 ], [ %96, %93 ], [ %102, %112 ]
  %116 = phi ptr [ %63, %60 ], [ %63, %70 ], [ %95, %93 ], [ %103, %112 ]
  %117 = phi ptr [ %64, %60 ], [ %64, %70 ], [ %94, %93 ], [ %104, %112 ]
  %118 = add i32 %115, %55
  %119 = sub i32 %57, %118
  %120 = and i32 %119, 7
  %121 = icmp eq i32 %120, 0
  br i1 %121, label %133, label %122

122:                                              ; preds = %114, %122
  %123 = phi i32 [ %130, %122 ], [ %115, %114 ]
  %124 = phi ptr [ %127, %122 ], [ %116, %114 ]
  %125 = phi ptr [ %129, %122 ], [ %117, %114 ]
  %126 = phi i32 [ %131, %122 ], [ 0, %114 ]
  %127 = getelementptr inbounds i8, ptr %124, i64 1
  %128 = load i8, ptr %124, align 1, !tbaa !11
  %129 = getelementptr inbounds i8, ptr %125, i64 1
  store i8 %128, ptr %125, align 1, !tbaa !11
  %130 = add nuw nsw i32 %123, 1
  %131 = add i32 %126, 1
  %132 = icmp eq i32 %131, %120
  br i1 %132, label %133, label %122, !llvm.loop !32

133:                                              ; preds = %122, %114
  %134 = phi i32 [ %115, %114 ], [ %130, %122 ]
  %135 = phi ptr [ %116, %114 ], [ %127, %122 ]
  %136 = phi ptr [ %117, %114 ], [ %129, %122 ]
  %137 = sub i32 %115, %57
  %138 = add i32 %137, %55
  %139 = icmp ugt i32 %138, -8
  br i1 %139, label %170, label %140

140:                                              ; preds = %133, %140
  %141 = phi i32 [ %168, %140 ], [ %134, %133 ]
  %142 = phi ptr [ %165, %140 ], [ %135, %133 ]
  %143 = phi ptr [ %167, %140 ], [ %136, %133 ]
  %144 = getelementptr inbounds i8, ptr %142, i64 1
  %145 = load i8, ptr %142, align 1, !tbaa !11
  %146 = getelementptr inbounds i8, ptr %143, i64 1
  store i8 %145, ptr %143, align 1, !tbaa !11
  %147 = getelementptr inbounds i8, ptr %142, i64 2
  %148 = load i8, ptr %144, align 1, !tbaa !11
  %149 = getelementptr inbounds i8, ptr %143, i64 2
  store i8 %148, ptr %146, align 1, !tbaa !11
  %150 = getelementptr inbounds i8, ptr %142, i64 3
  %151 = load i8, ptr %147, align 1, !tbaa !11
  %152 = getelementptr inbounds i8, ptr %143, i64 3
  store i8 %151, ptr %149, align 1, !tbaa !11
  %153 = getelementptr inbounds i8, ptr %142, i64 4
  %154 = load i8, ptr %150, align 1, !tbaa !11
  %155 = getelementptr inbounds i8, ptr %143, i64 4
  store i8 %154, ptr %152, align 1, !tbaa !11
  %156 = getelementptr inbounds i8, ptr %142, i64 5
  %157 = load i8, ptr %153, align 1, !tbaa !11
  %158 = getelementptr inbounds i8, ptr %143, i64 5
  store i8 %157, ptr %155, align 1, !tbaa !11
  %159 = getelementptr inbounds i8, ptr %142, i64 6
  %160 = load i8, ptr %156, align 1, !tbaa !11
  %161 = getelementptr inbounds i8, ptr %143, i64 6
  store i8 %160, ptr %158, align 1, !tbaa !11
  %162 = getelementptr inbounds i8, ptr %142, i64 7
  %163 = load i8, ptr %159, align 1, !tbaa !11
  %164 = getelementptr inbounds i8, ptr %143, i64 7
  store i8 %163, ptr %161, align 1, !tbaa !11
  %165 = getelementptr inbounds i8, ptr %142, i64 8
  %166 = load i8, ptr %162, align 1, !tbaa !11
  %167 = getelementptr inbounds i8, ptr %143, i64 8
  store i8 %166, ptr %164, align 1, !tbaa !11
  %168 = add nuw nsw i32 %141, 8
  %169 = icmp eq i32 %168, %58
  br i1 %169, label %170, label %140, !llvm.loop !33

170:                                              ; preds = %133, %140, %112, %91
  %171 = load ptr, ptr %51, align 8, !tbaa !15
  %172 = load i32, ptr %4, align 8, !tbaa !16
  %173 = sext i32 %172 to i64
  br label %174

174:                                              ; preds = %170, %50
  %175 = phi i64 [ %173, %170 ], [ %52, %50 ]
  %176 = phi ptr [ %171, %170 ], [ %7, %50 ]
  %177 = getelementptr inbounds i16, ptr %176, i64 %175
  store ptr %177, ptr %53, align 8, !tbaa !18
  store i32 0, ptr %54, align 4, !tbaa !19
  store i32 %58, ptr %56, align 8, !tbaa !20
  ret void
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: readwrite)
declare ptr @strcpy(ptr noalias noundef returned writeonly, ptr noalias nocapture noundef readonly) local_unnamed_addr #5

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: nofree nounwind
declare noalias noundef ptr @fopen(ptr nocapture noundef readonly, ptr nocapture noundef readonly) local_unnamed_addr #3

; Function Attrs: nofree nounwind uwtable
define internal fastcc void @BePutInt(ptr nocapture noundef %0, i32 noundef %1) unnamed_addr #7 {
  %3 = lshr i32 %1, 24
  %4 = tail call i32 @putc(i32 noundef %3, ptr noundef %0)
  %5 = lshr i32 %1, 16
  %6 = and i32 %5, 255
  %7 = tail call i32 @putc(i32 noundef %6, ptr noundef %0)
  %8 = lshr i32 %1, 8
  %9 = and i32 %8, 255
  %10 = tail call i32 @putc(i32 noundef %9, ptr noundef %0)
  %11 = and i32 %1, 255
  %12 = tail call i32 @putc(i32 noundef %11, ptr noundef %0)
  ret void
}

; Function Attrs: nofree nounwind
declare noundef i32 @putc(i32 noundef, ptr nocapture noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr nocapture noundef) local_unnamed_addr #8

; Function Attrs: nofree nounwind
declare noundef i32 @fseek(ptr nocapture noundef, i64 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare noundef i64 @ftell(ptr nocapture noundef) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare void @rewind(ptr nocapture noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #9

; Function Attrs: nofree nounwind
declare noundef i32 @getc(ptr nocapture noundef) local_unnamed_addr #3

declare i32 @StringBeginsWith(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr nocapture, ptr nocapture, i64) local_unnamed_addr #10

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #11

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #12

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #13

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree nounwind willreturn memory(argmem: readwrite) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nofree nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nofree nounwind willreturn memory(argmem: read) }
attributes #11 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #12 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #13 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #14 = { nounwind }
attributes #15 = { nounwind allocsize(0) }
attributes #16 = { nounwind willreturn memory(read) }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!5 = !{!6, !6, i64 0}
!6 = !{!"any pointer", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C/C++ TBAA"}
!9 = !{!10, !10, i64 0}
!10 = !{!"int", !7, i64 0}
!11 = !{!7, !7, i64 0}
!12 = !{!13, !10, i64 0}
!13 = !{!"trie_rec", !10, i64 0, !10, i64 4, !7, i64 8, !6, i64 264, !10, i64 272, !10, i64 276, !6, i64 280, !10, i64 288, !10, i64 292}
!14 = !{!13, !10, i64 4}
!15 = !{!13, !6, i64 264}
!16 = !{!13, !10, i64 272}
!17 = !{!13, !10, i64 276}
!18 = !{!13, !6, i64 280}
!19 = !{!13, !10, i64 292}
!20 = !{!13, !10, i64 288}
!21 = !{i32 0, i32 2}
!22 = !{!23, !23, i64 0}
!23 = !{!"short", !7, i64 0}
!24 = distinct !{!24, !25}
!25 = !{!"llvm.loop.unroll.disable"}
!26 = !{!27, !6, i64 8}
!27 = !{!"font_rec", !6, i64 0, !6, i64 8, !6, i64 16, !6, i64 24, !10, i64 32, !6, i64 40, !6, i64 48, !23, i64 56, !23, i64 58, !6, i64 64, !6, i64 72, !6, i64 80, !6, i64 88}
!28 = distinct !{!28, !29, !30}
!29 = !{!"llvm.loop.isvectorized", i32 1}
!30 = !{!"llvm.loop.unroll.runtime.disable"}
!31 = distinct !{!31, !29, !30}
!32 = distinct !{!32, !25}
!33 = distinct !{!33, !29}
