; ModuleID = 'cpp_lex.c'
source_filename = "cpp_lex.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.token_spelling = type { i32, ptr }
%struct.cpp_token = type { i32, i8, i16, %union.cpp_token_u }
%union.cpp_token_u = type { %struct.cpp_string }
%struct.cpp_string = type { i32, ptr }
%struct.cpp_buffer = type { ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, i8, i8, i8, %struct.cpp_dir, %struct.cset_converter }
%struct.cpp_dir = type { ptr, ptr, i32, i8, i8, ptr, ptr, ptr, i64, i64 }
%struct.cset_converter = type { ptr, ptr, i32 }
%struct.cpp_reader = type { ptr, ptr, %struct.lexer_state, ptr, i32, ptr, ptr, ptr, %struct.cpp_context, ptr, ptr, %struct.cpp_token, i32, i8, ptr, ptr, %struct.cpp_dir, ptr, ptr, ptr, ptr, ptr, ptr, %struct.obstack, i8, i8, ptr, ptr, i8, ptr, %struct.tokenrun, ptr, i32, i32, ptr, i32, %struct.cset_converter, %struct.cset_converter, %struct.cset_converter, %struct.cset_converter, %struct.cset_converter, ptr, ptr, %struct.cpp_token, %struct.cpp_token, ptr, %struct.obstack, %struct.obstack, ptr, %struct.cpp_callbacks, ptr, ptr, ptr, %struct.cpp_options, %struct.spec_nodes, i8, %struct.anon.2, ptr, ptr, ptr, ptr, i32, %struct.cpp_comment_table, ptr }
%struct.lexer_state = type { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, i8, i8 }
%struct.cpp_context = type { ptr, ptr, %union.anon, ptr, ptr, i8 }
%union.anon = type { %struct.anon }
%struct.anon = type { %union.utoken, %union.utoken }
%union.utoken = type { ptr }
%struct.tokenrun = type { ptr, ptr, ptr, ptr }
%struct.obstack = type { i64, ptr, ptr, ptr, ptr, i64, i32, ptr, ptr, ptr, i8 }
%struct.cpp_callbacks = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.cpp_options = type { i32, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, ptr, ptr, ptr, i32, i8, i8, %struct.anon.1, i64, i64, i64, i64, i8, i8, i8, i8, i8 }
%struct.anon.1 = type { i32, i8, i8, i8, i8 }
%struct.spec_nodes = type { ptr, ptr, ptr, ptr }
%struct.anon.2 = type { ptr, ptr, ptr, i32 }
%struct.cpp_comment_table = type { ptr, i32, i32 }
%struct._cpp_line_note = type { ptr, i32 }
%struct.line_maps = type { ptr, i32, i32, i32, i32, i32, i8, i32, i32, i32, ptr }
%struct.line_map = type { ptr, i32, i32, i32, i8, i8, i8 }
%struct.cpp_hashnode = type { %struct.ht_identifier, i8, i8, i16, %union._cpp_hashnode_value }
%struct.ht_identifier = type { ptr, i32, i32 }
%union._cpp_hashnode_value = type { ptr }
%struct.normalize_state = type { i32, i8, i32 }
%struct._cpp_buff = type { ptr, ptr, ptr, ptr }
%struct.cpp_comment = type { ptr, i32 }

@_sch_istable = external local_unnamed_addr constant [256 x i16], align 16
@_cpp_trigraph_map = external local_unnamed_addr constant [256 x i8], align 16
@.str = private unnamed_addr constant [41 x i8] c"backslash and newline separated by space\00", align 1
@.str.1 = private unnamed_addr constant [33 x i8] c"backslash-newline at end of file\00", align 1
@.str.2 = private unnamed_addr constant [30 x i8] c"trigraph ??%c converted to %c\00", align 1
@.str.3 = private unnamed_addr constant [48 x i8] c"trigraph ??%c ignored, use -trigraphs to enable\00", align 1
@.str.4 = private unnamed_addr constant [20 x i8] c"\22/*\22 within comment\00", align 1
@.str.5 = private unnamed_addr constant [21 x i8] c"unterminated comment\00", align 1
@.str.6 = private unnamed_addr constant [46 x i8] c"C++ style comments are not allowed in ISO C90\00", align 1
@.str.7 = private unnamed_addr constant [49 x i8] c"(this will be reported only once per input file)\00", align 1
@.str.8 = private unnamed_addr constant [19 x i8] c"multi-line comment\00", align 1
@token_spellings = internal unnamed_addr constant [73 x %struct.token_spelling] [%struct.token_spelling { i32 0, ptr @.str.31 }, %struct.token_spelling { i32 0, ptr @.str.32 }, %struct.token_spelling { i32 0, ptr @.str.33 }, %struct.token_spelling { i32 0, ptr @.str.34 }, %struct.token_spelling { i32 0, ptr @.str.35 }, %struct.token_spelling { i32 0, ptr @.str.36 }, %struct.token_spelling { i32 0, ptr @.str.37 }, %struct.token_spelling { i32 0, ptr @.str.28 }, %struct.token_spelling { i32 0, ptr @.str.38 }, %struct.token_spelling { i32 0, ptr @.str.39 }, %struct.token_spelling { i32 0, ptr @.str.40 }, %struct.token_spelling { i32 0, ptr @.str.41 }, %struct.token_spelling { i32 0, ptr @.str.42 }, %struct.token_spelling { i32 0, ptr @.str.43 }, %struct.token_spelling { i32 0, ptr @.str.44 }, %struct.token_spelling { i32 0, ptr @.str.45 }, %struct.token_spelling { i32 0, ptr @.str.46 }, %struct.token_spelling { i32 0, ptr @.str.47 }, %struct.token_spelling { i32 0, ptr @.str.48 }, %struct.token_spelling { i32 0, ptr @.str.49 }, %struct.token_spelling { i32 0, ptr @.str.50 }, %struct.token_spelling { i32 0, ptr @.str.51 }, %struct.token_spelling { i32 3, ptr @.str.52 }, %struct.token_spelling { i32 0, ptr @.str.53 }, %struct.token_spelling { i32 0, ptr @.str.54 }, %struct.token_spelling { i32 0, ptr @.str.55 }, %struct.token_spelling { i32 0, ptr @.str.56 }, %struct.token_spelling { i32 0, ptr @.str.57 }, %struct.token_spelling { i32 0, ptr @.str.58 }, %struct.token_spelling { i32 0, ptr @.str.59 }, %struct.token_spelling { i32 0, ptr @.str.60 }, %struct.token_spelling { i32 0, ptr @.str.61 }, %struct.token_spelling { i32 0, ptr @.str.62 }, %struct.token_spelling { i32 0, ptr @.str.63 }, %struct.token_spelling { i32 0, ptr @.str.64 }, %struct.token_spelling { i32 0, ptr @.str.65 }, %struct.token_spelling { i32 0, ptr @.str.66 }, %struct.token_spelling { i32 0, ptr @.str.67 }, %struct.token_spelling { i32 0, ptr @.str.68 }, %struct.token_spelling { i32 0, ptr @.str.69 }, %struct.token_spelling { i32 0, ptr @.str.70 }, %struct.token_spelling { i32 0, ptr @.str.71 }, %struct.token_spelling { i32 0, ptr @.str.72 }, %struct.token_spelling { i32 0, ptr @.str.73 }, %struct.token_spelling { i32 0, ptr @.str.74 }, %struct.token_spelling { i32 0, ptr @.str.75 }, %struct.token_spelling { i32 0, ptr @.str.76 }, %struct.token_spelling { i32 0, ptr @.str.77 }, %struct.token_spelling { i32 0, ptr @.str.78 }, %struct.token_spelling { i32 0, ptr @.str.79 }, %struct.token_spelling { i32 0, ptr @.str.80 }, %struct.token_spelling { i32 0, ptr @.str.81 }, %struct.token_spelling { i32 0, ptr @.str.82 }, %struct.token_spelling { i32 1, ptr @.str.83 }, %struct.token_spelling { i32 1, ptr @.str.84 }, %struct.token_spelling { i32 2, ptr @.str.85 }, %struct.token_spelling { i32 2, ptr @.str.86 }, %struct.token_spelling { i32 2, ptr @.str.87 }, %struct.token_spelling { i32 2, ptr @.str.88 }, %struct.token_spelling { i32 2, ptr @.str.89 }, %struct.token_spelling { i32 2, ptr @.str.90 }, %struct.token_spelling { i32 2, ptr @.str.91 }, %struct.token_spelling { i32 2, ptr @.str.92 }, %struct.token_spelling { i32 2, ptr @.str.93 }, %struct.token_spelling { i32 2, ptr @.str.94 }, %struct.token_spelling { i32 2, ptr @.str.95 }, %struct.token_spelling { i32 2, ptr @.str.96 }, %struct.token_spelling { i32 2, ptr @.str.97 }, %struct.token_spelling { i32 2, ptr @.str.98 }, %struct.token_spelling { i32 3, ptr @.str.99 }, %struct.token_spelling { i32 3, ptr @.str.100 }, %struct.token_spelling { i32 3, ptr @.str.101 }, %struct.token_spelling { i32 3, ptr @.str.102 }], align 16
@.str.9 = private unnamed_addr constant [21 x i8] c"unspellable token %s\00", align 1
@digraph_spellings = internal unnamed_addr constant [6 x ptr] [ptr @.str.104, ptr @.str.105, ptr @.str.106, ptr @.str.107, ptr @.str.108, ptr @.str.109], align 16
@.str.10 = private unnamed_addr constant [5 x i8] c"#%s \00", align 1
@.str.11 = private unnamed_addr constant [29 x i8] c"attempt to use poisoned \22%s\22\00", align 1
@.str.12 = private unnamed_addr constant [69 x i8] c"__VA_ARGS__ can only appear in the expansion of a C99 variadic macro\00", align 1
@.str.13 = private unnamed_addr constant [50 x i8] c"identifier \22%s\22 is a special operator name in C++\00", align 1
@.str.14 = private unnamed_addr constant [30 x i8] c"%s in preprocessing directive\00", align 1
@.str.15 = private unnamed_addr constant [10 x i8] c"form feed\00", align 1
@.str.16 = private unnamed_addr constant [13 x i8] c"vertical tab\00", align 1
@.str.17 = private unnamed_addr constant [26 x i8] c"null character(s) ignored\00", align 1
@.str.18 = private unnamed_addr constant [22 x i8] c"`%.*s' is not in NFKC\00", align 1
@.str.19 = private unnamed_addr constant [21 x i8] c"`%.*s' is not in NFC\00", align 1
@.str.20 = private unnamed_addr constant [39 x i8] c"null character(s) preserved in literal\00", align 1
@.str.21 = private unnamed_addr constant [33 x i8] c"missing terminating %c character\00", align 1
@.str.22 = private unnamed_addr constant [47 x i8] c"raw string delimiter longer than 16 characters\00", align 1
@.str.23 = private unnamed_addr constant [47 x i8] c"invalid character '%c' in raw string delimiter\00", align 1
@.str.24 = private unnamed_addr constant [2 x i8] c"\\\00", align 1
@.str.25 = private unnamed_addr constant [2 x i8] c" \00", align 1
@.str.26 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.27 = private unnamed_addr constant [3 x i8] c"??\00", align 1
@.str.28 = private unnamed_addr constant [2 x i8] c"/\00", align 1
@.str.29 = private unnamed_addr constant [24 x i8] c"unterminated raw string\00", align 1
@.str.30 = private unnamed_addr constant [28 x i8] c"'$' in identifier or number\00", align 1
@.str.31 = private unnamed_addr constant [2 x i8] c"=\00", align 1
@.str.32 = private unnamed_addr constant [2 x i8] c"!\00", align 1
@.str.33 = private unnamed_addr constant [2 x i8] c">\00", align 1
@.str.34 = private unnamed_addr constant [2 x i8] c"<\00", align 1
@.str.35 = private unnamed_addr constant [2 x i8] c"+\00", align 1
@.str.36 = private unnamed_addr constant [2 x i8] c"-\00", align 1
@.str.37 = private unnamed_addr constant [2 x i8] c"*\00", align 1
@.str.38 = private unnamed_addr constant [2 x i8] c"%\00", align 1
@.str.39 = private unnamed_addr constant [2 x i8] c"&\00", align 1
@.str.40 = private unnamed_addr constant [2 x i8] c"|\00", align 1
@.str.41 = private unnamed_addr constant [2 x i8] c"^\00", align 1
@.str.42 = private unnamed_addr constant [3 x i8] c">>\00", align 1
@.str.43 = private unnamed_addr constant [3 x i8] c"<<\00", align 1
@.str.44 = private unnamed_addr constant [2 x i8] c"~\00", align 1
@.str.45 = private unnamed_addr constant [3 x i8] c"&&\00", align 1
@.str.46 = private unnamed_addr constant [3 x i8] c"||\00", align 1
@.str.47 = private unnamed_addr constant [2 x i8] c"?\00", align 1
@.str.48 = private unnamed_addr constant [2 x i8] c":\00", align 1
@.str.49 = private unnamed_addr constant [2 x i8] c",\00", align 1
@.str.50 = private unnamed_addr constant [2 x i8] c"(\00", align 1
@.str.51 = private unnamed_addr constant [2 x i8] c")\00", align 1
@.str.52 = private unnamed_addr constant [4 x i8] c"EOF\00", align 1
@.str.53 = private unnamed_addr constant [3 x i8] c"==\00", align 1
@.str.54 = private unnamed_addr constant [3 x i8] c"!=\00", align 1
@.str.55 = private unnamed_addr constant [3 x i8] c">=\00", align 1
@.str.56 = private unnamed_addr constant [3 x i8] c"<=\00", align 1
@.str.57 = private unnamed_addr constant [3 x i8] c"+=\00", align 1
@.str.58 = private unnamed_addr constant [3 x i8] c"-=\00", align 1
@.str.59 = private unnamed_addr constant [3 x i8] c"*=\00", align 1
@.str.60 = private unnamed_addr constant [3 x i8] c"/=\00", align 1
@.str.61 = private unnamed_addr constant [3 x i8] c"%=\00", align 1
@.str.62 = private unnamed_addr constant [3 x i8] c"&=\00", align 1
@.str.63 = private unnamed_addr constant [3 x i8] c"|=\00", align 1
@.str.64 = private unnamed_addr constant [3 x i8] c"^=\00", align 1
@.str.65 = private unnamed_addr constant [4 x i8] c">>=\00", align 1
@.str.66 = private unnamed_addr constant [4 x i8] c"<<=\00", align 1
@.str.67 = private unnamed_addr constant [2 x i8] c"#\00", align 1
@.str.68 = private unnamed_addr constant [3 x i8] c"##\00", align 1
@.str.69 = private unnamed_addr constant [2 x i8] c"[\00", align 1
@.str.70 = private unnamed_addr constant [2 x i8] c"]\00", align 1
@.str.71 = private unnamed_addr constant [2 x i8] c"{\00", align 1
@.str.72 = private unnamed_addr constant [2 x i8] c"}\00", align 1
@.str.73 = private unnamed_addr constant [2 x i8] c";\00", align 1
@.str.74 = private unnamed_addr constant [4 x i8] c"...\00", align 1
@.str.75 = private unnamed_addr constant [3 x i8] c"++\00", align 1
@.str.76 = private unnamed_addr constant [3 x i8] c"--\00", align 1
@.str.77 = private unnamed_addr constant [3 x i8] c"->\00", align 1
@.str.78 = private unnamed_addr constant [2 x i8] c".\00", align 1
@.str.79 = private unnamed_addr constant [3 x i8] c"::\00", align 1
@.str.80 = private unnamed_addr constant [4 x i8] c"->*\00", align 1
@.str.81 = private unnamed_addr constant [3 x i8] c".*\00", align 1
@.str.82 = private unnamed_addr constant [2 x i8] c"@\00", align 1
@.str.83 = private unnamed_addr constant [5 x i8] c"NAME\00", align 1
@.str.84 = private unnamed_addr constant [8 x i8] c"AT_NAME\00", align 1
@.str.85 = private unnamed_addr constant [7 x i8] c"NUMBER\00", align 1
@.str.86 = private unnamed_addr constant [5 x i8] c"CHAR\00", align 1
@.str.87 = private unnamed_addr constant [6 x i8] c"WCHAR\00", align 1
@.str.88 = private unnamed_addr constant [7 x i8] c"CHAR16\00", align 1
@.str.89 = private unnamed_addr constant [7 x i8] c"CHAR32\00", align 1
@.str.90 = private unnamed_addr constant [6 x i8] c"OTHER\00", align 1
@.str.91 = private unnamed_addr constant [7 x i8] c"STRING\00", align 1
@.str.92 = private unnamed_addr constant [8 x i8] c"WSTRING\00", align 1
@.str.93 = private unnamed_addr constant [9 x i8] c"STRING16\00", align 1
@.str.94 = private unnamed_addr constant [9 x i8] c"STRING32\00", align 1
@.str.95 = private unnamed_addr constant [11 x i8] c"UTF8STRING\00", align 1
@.str.96 = private unnamed_addr constant [12 x i8] c"OBJC_STRING\00", align 1
@.str.97 = private unnamed_addr constant [12 x i8] c"HEADER_NAME\00", align 1
@.str.98 = private unnamed_addr constant [8 x i8] c"COMMENT\00", align 1
@.str.99 = private unnamed_addr constant [10 x i8] c"MACRO_ARG\00", align 1
@.str.100 = private unnamed_addr constant [7 x i8] c"PRAGMA\00", align 1
@.str.101 = private unnamed_addr constant [11 x i8] c"PRAGMA_EOL\00", align 1
@.str.102 = private unnamed_addr constant [8 x i8] c"PADDING\00", align 1
@.str.103 = private unnamed_addr constant [17 x i8] c"0123456789abcdef\00", align 1
@.str.104 = private unnamed_addr constant [3 x i8] c"%:\00", align 1
@.str.105 = private unnamed_addr constant [5 x i8] c"%:%:\00", align 1
@.str.106 = private unnamed_addr constant [3 x i8] c"<:\00", align 1
@.str.107 = private unnamed_addr constant [3 x i8] c":>\00", align 1
@.str.108 = private unnamed_addr constant [3 x i8] c"<%\00", align 1
@.str.109 = private unnamed_addr constant [3 x i8] c"%>\00", align 1
@switch.table.cpp_token_val_index = private unnamed_addr constant [4 x i32] [i32 3, i32 5, i32 6, i32 1], align 4

; Function Attrs: cold inlinehint mustprogress nofree nounwind willreturn memory(read) uwtable
define dso_local i32 @tolower(i32 noundef %0) local_unnamed_addr #0 !prof !50 {
  %2 = add i32 %0, 128
  %3 = icmp ult i32 %2, 384
  br i1 %3, label %4, label %10

4:                                                ; preds = %1
  %5 = tail call ptr @__ctype_tolower_loc() #20
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
  %5 = tail call ptr @__ctype_toupper_loc() #20
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

; Function Attrs: cold mustprogress nofree nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @cpp_ideq(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) local_unnamed_addr #2 !prof !50 {
  %3 = getelementptr inbounds %struct.cpp_token, ptr %0, i64 0, i32 1
  %4 = load i8, ptr %3, align 4
  %5 = icmp eq i8 %4, 53
  br i1 %5, label %6, label %13

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.cpp_token, ptr %0, i64 0, i32 3
  %8 = load ptr, ptr %7, align 8, !tbaa !57
  %9 = load ptr, ptr %8, align 8, !tbaa !58
  %10 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %9, ptr noundef nonnull dereferenceable(1) %1) #21
  %11 = icmp eq i32 %10, 0
  %12 = zext i1 %11 to i32
  br label %13

13:                                               ; preds = %2, %6
  %14 = phi i32 [ %12, %6 ], [ 0, %2 ]
  ret i32 %14
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local void @_cpp_clean_line(ptr nocapture noundef readonly %0) local_unnamed_addr #3 !prof !61 {
  %2 = load ptr, ptr %0, align 8, !tbaa !62
  %3 = getelementptr inbounds %struct.cpp_buffer, ptr %2, i64 0, i32 7
  store i32 0, ptr %3, align 4, !tbaa !79
  %4 = getelementptr inbounds %struct.cpp_buffer, ptr %2, i64 0, i32 6
  store i32 0, ptr %4, align 8, !tbaa !81
  %5 = getelementptr inbounds %struct.cpp_buffer, ptr %2, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !82
  %7 = getelementptr inbounds %struct.cpp_buffer, ptr %2, i64 0, i32 1
  store ptr %6, ptr %7, align 8, !tbaa !83
  store ptr %6, ptr %2, align 8, !tbaa !84
  %8 = getelementptr inbounds %struct.cpp_buffer, ptr %2, i64 0, i32 13
  store i8 0, ptr %8, align 8, !tbaa !85
  %9 = getelementptr inbounds i8, ptr %6, i64 -1
  %10 = getelementptr inbounds %struct.cpp_buffer, ptr %2, i64 0, i32 14
  %11 = load i8, ptr %10, align 1
  %12 = and i8 %11, 2
  %13 = icmp eq i8 %12, 0
  br i1 %13, label %14, label %148, !prof !86

14:                                               ; preds = %17, %1
  %15 = phi ptr [ %9, %1 ], [ %19, %17 ]
  %16 = phi ptr [ null, %1 ], [ %19, %17 ]
  br label %17

17:                                               ; preds = %76, %14
  %18 = phi ptr [ %15, %14 ], [ %19, %76 ]
  %19 = getelementptr inbounds i8, ptr %18, i64 1
  %20 = load i8, ptr %19, align 1, !tbaa !57
  switch i8 %20, label %76 [
    i8 13, label %21
    i8 10, label %21
    i8 92, label %14
    i8 63, label %54
  ], !prof !87, !llvm.loop !88

21:                                               ; preds = %17, %17
  %22 = getelementptr inbounds %struct.cpp_buffer, ptr %2, i64 0, i32 4
  %23 = load ptr, ptr %22, align 8, !tbaa !90
  %24 = icmp eq ptr %19, %23
  br i1 %24, label %161, label %25, !prof !91

25:                                               ; preds = %21
  %26 = icmp eq i8 %20, 13
  br i1 %26, label %27, label %33, !prof !91

27:                                               ; preds = %25
  %28 = getelementptr inbounds i8, ptr %18, i64 2
  %29 = load i8, ptr %28, align 1, !tbaa !57
  %30 = icmp eq i8 %29, 10
  br i1 %30, label %31, label %33

31:                                               ; preds = %27
  %32 = icmp eq ptr %28, %23
  br i1 %32, label %161, label %33

33:                                               ; preds = %31, %27, %25
  %34 = phi ptr [ %28, %31 ], [ %19, %27 ], [ %19, %25 ]
  %35 = icmp eq ptr %16, null
  br i1 %35, label %161, label %36, !prof !92

36:                                               ; preds = %33, %36
  %37 = phi i64 [ %38, %36 ], [ 1, %33 ]
  %38 = add nsw i64 %37, -1
  %39 = getelementptr inbounds i8, ptr %18, i64 %38
  %40 = load i8, ptr %39, align 1, !tbaa !57
  %41 = zext i8 %40 to i64
  %42 = getelementptr inbounds [256 x i16], ptr @_sch_istable, i64 0, i64 %41
  %43 = load i16, ptr %42, align 2, !tbaa !93
  %44 = and i16 %43, 2048
  %45 = icmp eq i16 %44, 0
  br i1 %45, label %46, label %36, !prof !94, !llvm.loop !95

46:                                               ; preds = %36
  %47 = getelementptr inbounds i8, ptr %18, i64 %38
  %48 = icmp eq ptr %47, %16
  br i1 %48, label %49, label %161, !prof !97

49:                                               ; preds = %46
  %50 = getelementptr inbounds i8, ptr %18, i64 %37
  %51 = icmp eq i64 %37, 1
  %52 = select i1 %51, i32 92, i32 32
  tail call fastcc void @add_line_note(ptr noundef nonnull %2, ptr noundef nonnull %47, i32 noundef %52)
  %53 = getelementptr inbounds i8, ptr %50, i64 -2
  store ptr %47, ptr %5, align 8, !tbaa !82
  br label %77

54:                                               ; preds = %17
  %55 = getelementptr inbounds i8, ptr %18, i64 2
  %56 = load i8, ptr %55, align 1, !tbaa !57
  %57 = icmp eq i8 %56, 63
  br i1 %57, label %58, label %76, !prof !98

58:                                               ; preds = %54
  %59 = getelementptr inbounds i8, ptr %18, i64 3
  %60 = load i8, ptr %59, align 1, !tbaa !57
  %61 = zext i8 %60 to i64
  %62 = getelementptr inbounds [256 x i8], ptr @_cpp_trigraph_map, i64 0, i64 %61
  %63 = load i8, ptr %62, align 1, !tbaa !57
  %64 = icmp eq i8 %63, 0
  br i1 %64, label %76, label %65

65:                                               ; preds = %58
  %66 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 53, i32 7
  %67 = zext i8 %60 to i32
  tail call fastcc void @add_line_note(ptr noundef nonnull %2, ptr noundef nonnull %19, i32 noundef %67)
  %68 = load i8, ptr %66, align 1, !tbaa !99
  %69 = icmp eq i8 %68, 0
  br i1 %69, label %76, label %70

70:                                               ; preds = %65
  %71 = getelementptr inbounds i8, ptr %18, i64 3
  %72 = load i8, ptr %71, align 1, !tbaa !57
  %73 = zext i8 %72 to i64
  %74 = getelementptr inbounds [256 x i8], ptr @_cpp_trigraph_map, i64 0, i64 %73
  %75 = load i8, ptr %74, align 1, !tbaa !57
  store i8 %75, ptr %19, align 1, !tbaa !57
  br label %77

76:                                               ; preds = %17, %54, %58, %65
  br label %17, !llvm.loop !88

77:                                               ; preds = %70, %49
  %78 = phi ptr [ %34, %49 ], [ %71, %70 ]
  %79 = phi ptr [ %53, %49 ], [ %19, %70 ]
  %80 = getelementptr inbounds %struct.cpp_buffer, ptr %2, i64 0, i32 4
  br label %81

81:                                               ; preds = %87, %77
  %82 = phi ptr [ %78, %77 ], [ %88, %87 ]
  %83 = phi ptr [ %79, %77 ], [ %89, %87 ]
  %84 = getelementptr inbounds i8, ptr %82, i64 1
  %85 = load i8, ptr %84, align 1, !tbaa !57
  %86 = getelementptr inbounds i8, ptr %83, i64 1
  store i8 %85, ptr %86, align 1, !tbaa !57
  switch i8 %85, label %87 [
    i8 13, label %90
    i8 10, label %99
    i8 63, label %127
  ]

87:                                               ; preds = %81, %127, %131, %143, %138, %123
  %88 = phi ptr [ %100, %123 ], [ %132, %143 ], [ %84, %138 ], [ %84, %131 ], [ %84, %127 ], [ %84, %81 ]
  %89 = phi ptr [ %126, %123 ], [ %86, %143 ], [ %86, %138 ], [ %86, %131 ], [ %86, %127 ], [ %86, %81 ]
  br label %81, !llvm.loop !100

90:                                               ; preds = %81
  %91 = getelementptr inbounds %struct.cpp_buffer, ptr %2, i64 0, i32 4
  %92 = load ptr, ptr %91, align 8, !tbaa !90
  %93 = icmp eq ptr %84, %92
  br i1 %93, label %99, label %94

94:                                               ; preds = %90
  %95 = getelementptr inbounds i8, ptr %82, i64 2
  %96 = load i8, ptr %95, align 1, !tbaa !57
  %97 = icmp eq i8 %96, 10
  %98 = select i1 %97, ptr %95, ptr %84
  br label %99

99:                                               ; preds = %94, %81, %90
  %100 = phi ptr [ %84, %90 ], [ %84, %81 ], [ %98, %94 ]
  %101 = load ptr, ptr %80, align 8, !tbaa !90
  %102 = icmp eq ptr %100, %101
  br i1 %102, label %161, label %103

103:                                              ; preds = %99
  %104 = load ptr, ptr %5, align 8, !tbaa !82
  br label %105

105:                                              ; preds = %103, %109
  %106 = phi i64 [ %110, %109 ], [ 1, %103 ]
  %107 = getelementptr inbounds i8, ptr %83, i64 %106
  %108 = icmp eq ptr %107, %104
  br i1 %108, label %161, label %109

109:                                              ; preds = %105
  %110 = add nsw i64 %106, -1
  %111 = getelementptr inbounds i8, ptr %83, i64 %110
  %112 = load i8, ptr %111, align 1, !tbaa !57
  %113 = zext i8 %112 to i64
  %114 = getelementptr inbounds [256 x i16], ptr @_sch_istable, i64 0, i64 %113
  %115 = load i16, ptr %114, align 2, !tbaa !93
  %116 = and i16 %115, 2048
  %117 = icmp eq i16 %116, 0
  br i1 %117, label %118, label %105, !llvm.loop !101

118:                                              ; preds = %109
  br i1 %108, label %161, label %119

119:                                              ; preds = %118
  %120 = getelementptr inbounds i8, ptr %107, i64 -1
  %121 = load i8, ptr %120, align 1, !tbaa !57
  %122 = icmp eq i8 %121, 92
  br i1 %122, label %123, label %161

123:                                              ; preds = %119
  %124 = icmp eq i64 %106, 1
  %125 = select i1 %124, i32 92, i32 32
  tail call fastcc void @add_line_note(ptr noundef nonnull %2, ptr noundef nonnull %120, i32 noundef %125)
  %126 = getelementptr inbounds i8, ptr %107, i64 -2
  store ptr %120, ptr %5, align 8, !tbaa !82
  br label %87

127:                                              ; preds = %81
  %128 = getelementptr inbounds i8, ptr %82, i64 2
  %129 = load i8, ptr %128, align 1, !tbaa !57
  %130 = icmp eq i8 %129, 63
  br i1 %130, label %131, label %87

131:                                              ; preds = %127
  %132 = getelementptr inbounds i8, ptr %82, i64 3
  %133 = load i8, ptr %132, align 1, !tbaa !57
  %134 = zext i8 %133 to i64
  %135 = getelementptr inbounds [256 x i8], ptr @_cpp_trigraph_map, i64 0, i64 %134
  %136 = load i8, ptr %135, align 1, !tbaa !57
  %137 = icmp eq i8 %136, 0
  br i1 %137, label %87, label %138

138:                                              ; preds = %131
  %139 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 53, i32 7
  %140 = zext i8 %133 to i32
  tail call fastcc void @add_line_note(ptr noundef nonnull %2, ptr noundef nonnull %86, i32 noundef %140)
  %141 = load i8, ptr %139, align 1, !tbaa !99
  %142 = icmp eq i8 %141, 0
  br i1 %142, label %87, label %143

143:                                              ; preds = %138
  %144 = load i8, ptr %132, align 1, !tbaa !57
  %145 = zext i8 %144 to i64
  %146 = getelementptr inbounds [256 x i8], ptr @_cpp_trigraph_map, i64 0, i64 %145
  %147 = load i8, ptr %146, align 1, !tbaa !57
  store i8 %147, ptr %86, align 1, !tbaa !57
  br label %87

148:                                              ; preds = %1, %148
  %149 = phi ptr [ %150, %148 ], [ %9, %1 ]
  %150 = getelementptr inbounds i8, ptr %149, i64 1
  %151 = load i8, ptr %150, align 1, !tbaa !57
  switch i8 %151, label %148 [
    i8 13, label %152
    i8 10, label %161
  ], !prof !102

152:                                              ; preds = %148
  %153 = getelementptr inbounds %struct.cpp_buffer, ptr %2, i64 0, i32 4
  %154 = load ptr, ptr %153, align 8, !tbaa !90
  %155 = icmp eq ptr %150, %154
  br i1 %155, label %161, label %156

156:                                              ; preds = %152
  %157 = getelementptr inbounds i8, ptr %149, i64 2
  %158 = load i8, ptr %157, align 1, !tbaa !57
  %159 = icmp eq i8 %158, 10
  %160 = select i1 %159, ptr %157, ptr %150
  br label %161

161:                                              ; preds = %148, %118, %119, %99, %105, %31, %21, %156, %33, %46, %152
  %162 = phi ptr [ %150, %152 ], [ %34, %33 ], [ %34, %46 ], [ %160, %156 ], [ %19, %21 ], [ %28, %31 ], [ %100, %105 ], [ %100, %99 ], [ %100, %119 ], [ %100, %118 ], [ %150, %148 ]
  %163 = phi ptr [ %150, %152 ], [ %19, %33 ], [ %19, %46 ], [ %150, %156 ], [ %19, %21 ], [ %19, %31 ], [ %86, %105 ], [ %86, %99 ], [ %86, %119 ], [ %86, %118 ], [ %150, %148 ]
  store i8 10, ptr %163, align 1, !tbaa !57
  %164 = load i32, ptr %3, align 4, !tbaa !79
  %165 = getelementptr inbounds %struct.cpp_buffer, ptr %2, i64 0, i32 8
  %166 = load i32, ptr %165, align 8, !tbaa !103
  %167 = icmp eq i32 %164, %166
  br i1 %167, label %168, label %176, !prof !104

168:                                              ; preds = %161
  %169 = shl i32 %166, 1
  %170 = add i32 %169, 200
  store i32 %170, ptr %165, align 8, !tbaa !103
  %171 = getelementptr inbounds %struct.cpp_buffer, ptr %2, i64 0, i32 5
  %172 = load ptr, ptr %171, align 8, !tbaa !105
  %173 = zext i32 %170 to i64
  %174 = shl nuw nsw i64 %173, 4
  %175 = tail call ptr @xrealloc(ptr noundef %172, i64 noundef %174) #20
  store ptr %175, ptr %171, align 8, !tbaa !105
  br label %176

176:                                              ; preds = %161, %168
  %177 = getelementptr inbounds i8, ptr %163, i64 1
  %178 = getelementptr inbounds %struct.cpp_buffer, ptr %2, i64 0, i32 5
  %179 = load ptr, ptr %178, align 8, !tbaa !105
  %180 = load i32, ptr %3, align 4, !tbaa !79
  %181 = zext i32 %180 to i64
  %182 = getelementptr inbounds %struct._cpp_line_note, ptr %179, i64 %181
  store ptr %177, ptr %182, align 8, !tbaa !106
  %183 = getelementptr inbounds %struct._cpp_line_note, ptr %179, i64 %181, i32 1
  store i32 10, ptr %183, align 8, !tbaa !108
  %184 = add i32 %180, 1
  store i32 %184, ptr %3, align 4, !tbaa !79
  %185 = getelementptr inbounds i8, ptr %162, i64 1
  store ptr %185, ptr %5, align 8, !tbaa !82
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @add_line_note(ptr nocapture noundef %0, ptr noundef %1, i32 noundef %2) unnamed_addr #3 !prof !50 !PGOFuncName !109 {
  %4 = getelementptr inbounds %struct.cpp_buffer, ptr %0, i64 0, i32 7
  %5 = load i32, ptr %4, align 4, !tbaa !79
  %6 = getelementptr inbounds %struct.cpp_buffer, ptr %0, i64 0, i32 8
  %7 = load i32, ptr %6, align 8, !tbaa !103
  %8 = icmp eq i32 %5, %7
  br i1 %8, label %9, label %17, !prof !104

9:                                                ; preds = %3
  %10 = shl i32 %7, 1
  %11 = add i32 %10, 200
  store i32 %11, ptr %6, align 8, !tbaa !103
  %12 = getelementptr inbounds %struct.cpp_buffer, ptr %0, i64 0, i32 5
  %13 = load ptr, ptr %12, align 8, !tbaa !105
  %14 = zext i32 %11 to i64
  %15 = shl nuw nsw i64 %14, 4
  %16 = tail call ptr @xrealloc(ptr noundef %13, i64 noundef %15) #20
  store ptr %16, ptr %12, align 8, !tbaa !105
  br label %17

17:                                               ; preds = %9, %3
  %18 = getelementptr inbounds %struct.cpp_buffer, ptr %0, i64 0, i32 5
  %19 = load ptr, ptr %18, align 8, !tbaa !105
  %20 = load i32, ptr %4, align 4, !tbaa !79
  %21 = zext i32 %20 to i64
  %22 = getelementptr inbounds %struct._cpp_line_note, ptr %19, i64 %21
  store ptr %1, ptr %22, align 8, !tbaa !106
  %23 = getelementptr inbounds %struct._cpp_line_note, ptr %19, i64 %21, i32 1
  store i32 %2, ptr %23, align 8, !tbaa !108
  %24 = add i32 %20, 1
  store i32 %24, ptr %4, align 4, !tbaa !79
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: nounwind uwtable
define dso_local void @_cpp_process_line_notes(ptr noundef %0, i32 noundef %1) local_unnamed_addr #5 !prof !110 {
  %3 = load ptr, ptr %0, align 8, !tbaa !62
  %4 = getelementptr inbounds %struct.cpp_buffer, ptr %3, i64 0, i32 5
  %5 = getelementptr inbounds %struct.cpp_buffer, ptr %3, i64 0, i32 6
  br label %6

6:                                                ; preds = %131, %2
  %7 = load ptr, ptr %4, align 8, !tbaa !105
  %8 = load i32, ptr %5, align 8, !tbaa !81
  %9 = zext i32 %8 to i64
  %10 = getelementptr inbounds %struct._cpp_line_note, ptr %7, i64 %9
  %11 = load ptr, ptr %10, align 8, !tbaa !106
  %12 = load ptr, ptr %3, align 8, !tbaa !84
  %13 = icmp ugt ptr %11, %12
  br i1 %13, label %132, label %14, !prof !111

14:                                               ; preds = %6
  %15 = getelementptr inbounds %struct.cpp_buffer, ptr %3, i64 0, i32 1
  %16 = add i32 %8, 1
  store i32 %16, ptr %5, align 8, !tbaa !81
  %17 = getelementptr inbounds i8, ptr %11, i64 1
  %18 = load ptr, ptr %15, align 8, !tbaa !83
  %19 = ptrtoint ptr %17 to i64
  %20 = ptrtoint ptr %18 to i64
  %21 = sub i64 %19, %20
  %22 = trunc i64 %21 to i32
  %23 = getelementptr inbounds %struct._cpp_line_note, ptr %7, i64 %9, i32 1
  %24 = load i32, ptr %23, align 8, !tbaa !108
  switch i32 %24, label %71 [
    i32 92, label %25
    i32 32, label %25
  ]

25:                                               ; preds = %14, %14
  %26 = icmp ne i32 %1, 0
  %27 = getelementptr inbounds %struct.cpp_buffer, ptr %3, i64 0, i32 2
  %28 = getelementptr inbounds %struct.cpp_buffer, ptr %3, i64 0, i32 4
  %29 = icmp ne i32 %24, 32
  %30 = or i1 %26, %29
  br i1 %30, label %37, label %31

31:                                               ; preds = %25
  %32 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 3
  %33 = load ptr, ptr %32, align 8, !tbaa !112
  %34 = getelementptr inbounds %struct.line_maps, ptr %33, i64 0, i32 8
  %35 = load i32, ptr %34, align 4, !tbaa !113
  %36 = tail call zeroext i8 (ptr, i32, i32, i32, ptr, ...) @cpp_error_with_line(ptr noundef nonnull %0, i32 noundef 0, i32 noundef %35, i32 noundef %22, ptr noundef nonnull @.str) #20
  br label %37

37:                                               ; preds = %31, %25
  %38 = load ptr, ptr %27, align 8, !tbaa !82
  %39 = load ptr, ptr %28, align 8, !tbaa !90
  %40 = icmp ugt ptr %38, %39
  br i1 %40, label %41, label %48

41:                                               ; preds = %37
  %42 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 3
  %43 = load ptr, ptr %42, align 8, !tbaa !112
  %44 = getelementptr inbounds %struct.line_maps, ptr %43, i64 0, i32 8
  %45 = load i32, ptr %44, align 4, !tbaa !113
  %46 = tail call zeroext i8 (ptr, i32, i32, i32, ptr, ...) @cpp_error_with_line(ptr noundef nonnull %0, i32 noundef 2, i32 noundef %45, i32 noundef %22, ptr noundef nonnull @.str.1) #20
  %47 = load ptr, ptr %28, align 8, !tbaa !90
  store ptr %47, ptr %27, align 8, !tbaa !82
  br label %48

48:                                               ; preds = %41, %37
  %49 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 3
  %50 = load ptr, ptr %10, align 8, !tbaa !106
  store ptr %50, ptr %15, align 8, !tbaa !83
  %51 = load ptr, ptr %49, align 8, !tbaa !112
  %52 = load ptr, ptr %51, align 8, !tbaa !115
  %53 = getelementptr inbounds %struct.line_maps, ptr %51, i64 0, i32 2
  %54 = load i32, ptr %53, align 4, !tbaa !116
  %55 = add i32 %54, -1
  %56 = zext i32 %55 to i64
  %57 = getelementptr inbounds %struct.line_maps, ptr %51, i64 0, i32 8
  %58 = load i32, ptr %57, align 4, !tbaa !113
  %59 = getelementptr inbounds %struct.line_map, ptr %52, i64 %56, i32 2
  %60 = load i32, ptr %59, align 4, !tbaa !117
  %61 = sub i32 %58, %60
  %62 = getelementptr inbounds %struct.line_map, ptr %52, i64 %56, i32 6
  %63 = load i8, ptr %62, align 2
  %64 = zext nneg i8 %63 to i32
  %65 = lshr i32 %61, %64
  %66 = getelementptr inbounds %struct.line_map, ptr %52, i64 %56, i32 1
  %67 = load i32, ptr %66, align 8, !tbaa !119
  %68 = add i32 %67, 1
  %69 = add i32 %68, %65
  %70 = tail call i32 @linemap_line_start(ptr noundef nonnull %51, i32 noundef %69, i32 noundef 0) #20
  br label %131

71:                                               ; preds = %14
  %72 = zext i32 %24 to i64
  %73 = getelementptr inbounds [256 x i8], ptr @_cpp_trigraph_map, i64 0, i64 %72
  %74 = load i8, ptr %73, align 1, !tbaa !57
  %75 = icmp eq i8 %74, 0
  br i1 %75, label %128, label %76

76:                                               ; preds = %71
  %77 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 53, i32 15
  %78 = load i8, ptr %77, align 1, !tbaa !120
  %79 = icmp eq i8 %78, 0
  br i1 %79, label %131, label %80

80:                                               ; preds = %76
  %81 = icmp eq i32 %1, 0
  br i1 %81, label %111, label %82

82:                                               ; preds = %80
  %83 = icmp eq i32 %24, 47
  br i1 %83, label %84, label %131

84:                                               ; preds = %82
  %85 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 53, i32 7
  %86 = load i8, ptr %85, align 1, !tbaa !99
  %87 = icmp eq i8 %86, 0
  br i1 %87, label %92, label %88

88:                                               ; preds = %84
  %89 = getelementptr inbounds %struct._cpp_line_note, ptr %10, i64 1
  %90 = load ptr, ptr %89, align 8, !tbaa !106
  %91 = icmp eq ptr %90, %11
  br label %109

92:                                               ; preds = %84
  %93 = getelementptr inbounds i8, ptr %11, i64 3
  br label %94

94:                                               ; preds = %94, %92
  %95 = phi ptr [ %93, %92 ], [ %102, %94 ]
  %96 = load i8, ptr %95, align 1, !tbaa !57
  %97 = zext i8 %96 to i64
  %98 = getelementptr inbounds [256 x i16], ptr @_sch_istable, i64 0, i64 %97
  %99 = load i16, ptr %98, align 2, !tbaa !93
  %100 = and i16 %99, 2048
  %101 = icmp eq i16 %100, 0
  %102 = getelementptr inbounds i8, ptr %95, i64 1
  br i1 %101, label %103, label %94, !llvm.loop !121

103:                                              ; preds = %94
  %104 = icmp eq i8 %96, 10
  br i1 %104, label %105, label %131

105:                                              ; preds = %103
  %106 = getelementptr inbounds %struct._cpp_line_note, ptr %10, i64 1
  %107 = load ptr, ptr %106, align 8, !tbaa !106
  %108 = icmp ult ptr %95, %107
  br label %109

109:                                              ; preds = %88, %105
  %110 = phi i1 [ %91, %88 ], [ %108, %105 ]
  br i1 %110, label %111, label %131

111:                                              ; preds = %109, %80
  %112 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 53, i32 7
  %113 = load i8, ptr %112, align 1, !tbaa !99
  %114 = icmp eq i8 %113, 0
  br i1 %114, label %122, label %115

115:                                              ; preds = %111
  %116 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 3
  %117 = load ptr, ptr %116, align 8, !tbaa !112
  %118 = getelementptr inbounds %struct.line_maps, ptr %117, i64 0, i32 8
  %119 = load i32, ptr %118, align 4, !tbaa !113
  %120 = zext i8 %74 to i32
  %121 = tail call zeroext i8 (ptr, i32, i32, i32, ptr, ...) @cpp_error_with_line(ptr noundef nonnull %0, i32 noundef 0, i32 noundef %119, i32 noundef %22, ptr noundef nonnull @.str.2, i32 noundef %24, i32 noundef %120) #20
  br label %131

122:                                              ; preds = %111
  %123 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 3
  %124 = load ptr, ptr %123, align 8, !tbaa !112
  %125 = getelementptr inbounds %struct.line_maps, ptr %124, i64 0, i32 8
  %126 = load i32, ptr %125, align 4, !tbaa !113
  %127 = tail call zeroext i8 (ptr, i32, i32, i32, ptr, ...) @cpp_error_with_line(ptr noundef nonnull %0, i32 noundef 0, i32 noundef %126, i32 noundef %22, ptr noundef nonnull @.str.3, i32 noundef %24) #20
  br label %131

128:                                              ; preds = %71
  %129 = icmp eq i32 %24, 0
  br i1 %129, label %131, label %130

130:                                              ; preds = %128
  tail call void @abort() #22
  unreachable

131:                                              ; preds = %82, %103, %48, %128, %76, %109, %122, %115
  br i1 %13, label %132, label %6, !prof !111

132:                                              ; preds = %6, %131
  ret void
}

declare zeroext i8 @cpp_error_with_line(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

declare i32 @linemap_line_start(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: noreturn nounwind
declare void @abort() local_unnamed_addr #6

; Function Attrs: nounwind uwtable
define dso_local noundef zeroext i8 @_cpp_skip_block_comment(ptr noundef %0) local_unnamed_addr #5 !prof !110 {
  %2 = load ptr, ptr %0, align 8, !tbaa !62
  %3 = load ptr, ptr %2, align 8, !tbaa !84
  %4 = getelementptr inbounds i8, ptr %3, i64 1
  %5 = load i8, ptr %4, align 1, !tbaa !57
  %6 = icmp eq i8 %5, 47
  %7 = getelementptr inbounds i8, ptr %3, i64 2
  %8 = select i1 %6, ptr %7, ptr %4, !prof !122
  %9 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 53, i32 13
  br label %10

10:                                               ; preds = %14, %1
  %11 = phi ptr [ %8, %1 ], [ %15, %14 ]
  %12 = getelementptr inbounds i8, ptr %11, i64 1
  %13 = load i8, ptr %11, align 1, !tbaa !57
  switch i8 %13, label %14 [
    i8 47, label %16
    i8 10, label %42
  ], !prof !123

14:                                               ; preds = %10, %78, %20, %23, %26, %30
  %15 = phi ptr [ %12, %30 ], [ %12, %26 ], [ %12, %23 ], [ %12, %20 ], [ %79, %78 ], [ %12, %10 ]
  br label %10, !llvm.loop !124

16:                                               ; preds = %10
  %17 = getelementptr inbounds i8, ptr %11, i64 -1
  %18 = load i8, ptr %17, align 1, !tbaa !57
  %19 = icmp eq i8 %18, 42
  br i1 %19, label %80, label %20, !prof !125

20:                                               ; preds = %16
  %21 = load i8, ptr %9, align 1, !tbaa !126
  %22 = icmp eq i8 %21, 0
  br i1 %22, label %14, label %23, !prof !127

23:                                               ; preds = %20
  %24 = load i8, ptr %12, align 1, !tbaa !57
  %25 = icmp eq i8 %24, 42
  br i1 %25, label %26, label %14

26:                                               ; preds = %23
  %27 = getelementptr inbounds i8, ptr %11, i64 2
  %28 = load i8, ptr %27, align 1, !tbaa !57
  %29 = icmp eq i8 %28, 47
  br i1 %29, label %14, label %30

30:                                               ; preds = %26
  %31 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 3
  %32 = getelementptr inbounds %struct.cpp_buffer, ptr %2, i64 0, i32 1
  store ptr %12, ptr %2, align 8, !tbaa !84
  %33 = load ptr, ptr %31, align 8, !tbaa !112
  %34 = getelementptr inbounds %struct.line_maps, ptr %33, i64 0, i32 8
  %35 = load i32, ptr %34, align 4, !tbaa !113
  %36 = load ptr, ptr %32, align 8, !tbaa !83
  %37 = ptrtoint ptr %12 to i64
  %38 = ptrtoint ptr %36 to i64
  %39 = sub i64 %37, %38
  %40 = trunc i64 %39 to i32
  %41 = tail call zeroext i8 (ptr, i32, i32, i32, ptr, ...) @cpp_error_with_line(ptr noundef nonnull %0, i32 noundef 0, i32 noundef %35, i32 noundef %40, ptr noundef nonnull @.str.4) #20
  br label %14

42:                                               ; preds = %10
  %43 = getelementptr inbounds %struct.cpp_buffer, ptr %2, i64 0, i32 2
  %44 = getelementptr inbounds %struct.cpp_buffer, ptr %2, i64 0, i32 4
  store ptr %11, ptr %2, align 8, !tbaa !84
  tail call void @_cpp_process_line_notes(ptr noundef nonnull %0, i32 noundef 1)
  %45 = load ptr, ptr %43, align 8, !tbaa !82
  %46 = load ptr, ptr %44, align 8, !tbaa !90
  %47 = icmp ult ptr %45, %46
  br i1 %47, label %48, label %78

48:                                               ; preds = %42
  %49 = getelementptr inbounds %struct.cpp_buffer, ptr %2, i64 0, i32 1
  %50 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 3
  tail call void @_cpp_clean_line(ptr noundef nonnull %0)
  %51 = load ptr, ptr %43, align 8, !tbaa !82
  %52 = load ptr, ptr %49, align 8, !tbaa !83
  %53 = ptrtoint ptr %51 to i64
  %54 = ptrtoint ptr %52 to i64
  %55 = sub i64 %53, %54
  %56 = trunc i64 %55 to i32
  %57 = load ptr, ptr %50, align 8, !tbaa !112
  %58 = load ptr, ptr %57, align 8, !tbaa !115
  %59 = getelementptr inbounds %struct.line_maps, ptr %57, i64 0, i32 2
  %60 = load i32, ptr %59, align 4, !tbaa !116
  %61 = add i32 %60, -1
  %62 = zext i32 %61 to i64
  %63 = getelementptr inbounds %struct.line_maps, ptr %57, i64 0, i32 8
  %64 = load i32, ptr %63, align 4, !tbaa !113
  %65 = getelementptr inbounds %struct.line_map, ptr %58, i64 %62, i32 2
  %66 = load i32, ptr %65, align 4, !tbaa !117
  %67 = sub i32 %64, %66
  %68 = getelementptr inbounds %struct.line_map, ptr %58, i64 %62, i32 6
  %69 = load i8, ptr %68, align 2
  %70 = zext nneg i8 %69 to i32
  %71 = lshr i32 %67, %70
  %72 = getelementptr inbounds %struct.line_map, ptr %58, i64 %62, i32 1
  %73 = load i32, ptr %72, align 8, !tbaa !119
  %74 = add i32 %73, 1
  %75 = add i32 %74, %71
  %76 = tail call i32 @linemap_line_start(ptr noundef nonnull %57, i32 noundef %75, i32 noundef %56) #20
  %77 = load ptr, ptr %2, align 8, !tbaa !84
  br label %78

78:                                               ; preds = %42, %48
  %79 = phi ptr [ %77, %48 ], [ %12, %42 ]
  br i1 %47, label %14, label %81

80:                                               ; preds = %16
  store ptr %12, ptr %2, align 8, !tbaa !84
  tail call void @_cpp_process_line_notes(ptr noundef nonnull %0, i32 noundef 1)
  br label %81

81:                                               ; preds = %78, %80
  %82 = phi i8 [ 0, %80 ], [ 1, %78 ]
  ret i8 %82
}

; Function Attrs: cold nounwind uwtable
define dso_local ptr @_cpp_lex_identifier(ptr noundef %0, ptr noundef %1) local_unnamed_addr #7 !prof !50 {
  %3 = load i8, ptr %1, align 1, !tbaa !57
  %4 = zext i8 %3 to i32
  %5 = add nsw i32 %4, -113
  %6 = getelementptr inbounds i8, ptr %1, i64 1
  %7 = load i8, ptr %6, align 1, !tbaa !57
  %8 = zext i8 %7 to i64
  %9 = getelementptr inbounds [256 x i16], ptr @_sch_istable, i64 0, i64 %8
  %10 = load i16, ptr %9, align 2, !tbaa !93
  %11 = and i16 %10, 516
  %12 = icmp eq i16 %11, 0
  br i1 %12, label %28, label %13

13:                                               ; preds = %2, %13
  %14 = phi i8 [ %22, %13 ], [ %7, %2 ]
  %15 = phi ptr [ %21, %13 ], [ %6, %2 ]
  %16 = phi i32 [ %20, %13 ], [ %5, %2 ]
  %17 = zext i8 %14 to i32
  %18 = mul i32 %16, 67
  %19 = add i32 %18, -113
  %20 = add i32 %19, %17
  %21 = getelementptr inbounds i8, ptr %15, i64 1
  %22 = load i8, ptr %21, align 1, !tbaa !57
  %23 = zext i8 %22 to i64
  %24 = getelementptr inbounds [256 x i16], ptr @_sch_istable, i64 0, i64 %23
  %25 = load i16, ptr %24, align 2, !tbaa !93
  %26 = and i16 %25, 516
  %27 = icmp eq i16 %26, 0
  br i1 %27, label %28, label %13, !llvm.loop !128

28:                                               ; preds = %13, %2
  %29 = phi i32 [ %5, %2 ], [ %20, %13 ]
  %30 = phi ptr [ %6, %2 ], [ %21, %13 ]
  %31 = ptrtoint ptr %30 to i64
  %32 = ptrtoint ptr %1 to i64
  %33 = sub i64 %31, %32
  %34 = trunc i64 %33 to i32
  %35 = add i32 %29, %34
  %36 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 50
  %37 = load ptr, ptr %36, align 8, !tbaa !129
  %38 = and i64 %33, 4294967295
  %39 = tail call ptr @ht_lookup_with_hash(ptr noundef %37, ptr noundef nonnull %1, i64 noundef %38, i32 noundef %35, i32 noundef 1) #20
  %40 = getelementptr inbounds %struct.cpp_hashnode, ptr %39, i64 0, i32 3
  %41 = load i16, ptr %40, align 2
  %42 = lshr i16 %41, 6
  %43 = zext nneg i16 %42 to i32
  %44 = and i32 %43, 8
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %76, label %46

46:                                               ; preds = %28
  %47 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 2, i32 2
  %48 = load i8, ptr %47, align 2, !tbaa !130
  %49 = icmp eq i8 %48, 0
  br i1 %49, label %50, label %76

50:                                               ; preds = %46
  %51 = and i32 %43, 2
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %60, label %53

53:                                               ; preds = %50
  %54 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 2, i32 7
  %55 = load i8, ptr %54, align 1, !tbaa !131
  %56 = icmp eq i8 %55, 0
  br i1 %56, label %57, label %60

57:                                               ; preds = %53
  %58 = load ptr, ptr %39, align 8, !tbaa !58
  %59 = tail call zeroext i8 (ptr, i32, ptr, ...) @cpp_error(ptr noundef %0, i32 noundef 3, ptr noundef nonnull @.str.11, ptr noundef %58) #20
  br label %60

60:                                               ; preds = %57, %53, %50
  %61 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 54, i32 3
  %62 = load ptr, ptr %61, align 8, !tbaa !132
  %63 = icmp eq ptr %39, %62
  br i1 %63, label %64, label %70

64:                                               ; preds = %60
  %65 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 2, i32 6
  %66 = load i8, ptr %65, align 2, !tbaa !133
  %67 = icmp eq i8 %66, 0
  br i1 %67, label %68, label %70

68:                                               ; preds = %64
  %69 = tail call zeroext i8 (ptr, i32, ptr, ...) @cpp_error(ptr noundef %0, i32 noundef 2, ptr noundef nonnull @.str.12) #20
  br label %70

70:                                               ; preds = %68, %64, %60
  %71 = load i16, ptr %40, align 2
  %72 = icmp sgt i16 %71, -1
  br i1 %72, label %76, label %73

73:                                               ; preds = %70
  %74 = load ptr, ptr %39, align 8, !tbaa !58
  %75 = tail call zeroext i8 (ptr, i32, ptr, ...) @cpp_error(ptr noundef %0, i32 noundef 0, ptr noundef nonnull @.str.13, ptr noundef %74) #20
  br label %76

76:                                               ; preds = %28, %46, %70, %73
  ret ptr %39
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local nonnull ptr @cpp_get_comments(ptr noundef readnone %0) local_unnamed_addr #8 !prof !50 {
  %2 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 62
  ret ptr %2
}

; Function Attrs: cold nounwind uwtable
define dso_local void @_cpp_init_tokenrun(ptr nocapture noundef writeonly %0, i32 noundef %1) local_unnamed_addr #7 !prof !134 {
  %3 = zext i32 %1 to i64
  %4 = mul nuw nsw i64 %3, 24
  %5 = tail call ptr @xmalloc(i64 noundef %4) #20
  %6 = getelementptr inbounds %struct.tokenrun, ptr %0, i64 0, i32 2
  store ptr %5, ptr %6, align 8, !tbaa !135
  %7 = getelementptr inbounds %struct.cpp_token, ptr %5, i64 %3
  %8 = getelementptr inbounds %struct.tokenrun, ptr %0, i64 0, i32 3
  store ptr %7, ptr %8, align 8, !tbaa !136
  store ptr null, ptr %0, align 8, !tbaa !137
  ret void
}

declare ptr @xmalloc(i64 noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind uwtable
define dso_local ptr @cpp_peek_token(ptr noundef %0, i32 noundef %1) local_unnamed_addr #7 !prof !50 {
  %3 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 9
  %4 = load ptr, ptr %3, align 8, !tbaa !138
  br label %5

5:                                                ; preds = %42, %2
  %6 = phi ptr [ %4, %2 ], [ %43, %42 ]
  %7 = phi i32 [ %1, %2 ], [ %44, %42 ]
  %8 = phi ptr [ undef, %2 ], [ %45, %42 ]
  %9 = getelementptr inbounds %struct.cpp_context, ptr %6, i64 0, i32 1
  %10 = load ptr, ptr %9, align 8, !tbaa !139
  %11 = icmp eq ptr %10, null
  br i1 %11, label %46, label %12

12:                                               ; preds = %5
  %13 = getelementptr inbounds %struct.cpp_context, ptr %6, i64 0, i32 5
  %14 = load i8, ptr %13, align 8, !tbaa !140
  %15 = icmp eq i8 %14, 0
  %16 = getelementptr inbounds %struct.cpp_context, ptr %6, i64 0, i32 2
  %17 = getelementptr inbounds %struct.cpp_context, ptr %6, i64 0, i32 2, i32 0, i32 1
  %18 = load ptr, ptr %17, align 8, !tbaa !57
  %19 = load ptr, ptr %16, align 8, !tbaa !57
  %20 = ptrtoint ptr %18 to i64
  %21 = ptrtoint ptr %19 to i64
  %22 = sub i64 %20, %21
  br i1 %15, label %25, label %23

23:                                               ; preds = %12
  %24 = sdiv exact i64 %22, 24
  br label %27

25:                                               ; preds = %12
  %26 = ashr exact i64 %22, 3
  br label %27

27:                                               ; preds = %25, %23
  %28 = phi i64 [ %24, %23 ], [ %26, %25 ]
  %29 = trunc i64 %28 to i32
  %30 = icmp slt i32 %7, %29
  br i1 %30, label %31, label %40

31:                                               ; preds = %27
  %32 = getelementptr inbounds %struct.cpp_context, ptr %6, i64 0, i32 2
  %33 = load ptr, ptr %32, align 8, !tbaa !57
  %34 = sext i32 %7 to i64
  br i1 %15, label %37, label %35

35:                                               ; preds = %31
  %36 = getelementptr inbounds %struct.cpp_token, ptr %33, i64 %34
  br label %42

37:                                               ; preds = %31
  %38 = getelementptr inbounds ptr, ptr %33, i64 %34
  %39 = load ptr, ptr %38, align 8, !tbaa !51
  br label %42

40:                                               ; preds = %27
  %41 = sub nsw i32 %7, %29
  br label %42

42:                                               ; preds = %35, %37, %40
  %43 = phi ptr [ %10, %40 ], [ %6, %37 ], [ %6, %35 ]
  %44 = phi i32 [ %41, %40 ], [ %7, %37 ], [ %7, %35 ]
  %45 = phi ptr [ %8, %40 ], [ %39, %37 ], [ %36, %35 ]
  br i1 %30, label %63, label %5, !llvm.loop !141

46:                                               ; preds = %5
  %47 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 33
  %48 = load i32, ptr %47, align 4, !tbaa !142
  %49 = add i32 %48, 1
  store i32 %49, ptr %47, align 4, !tbaa !142
  br label %50

50:                                               ; preds = %56, %46
  %51 = phi i32 [ %7, %46 ], [ %57, %56 ]
  %52 = tail call ptr @_cpp_lex_token(ptr noundef %0)
  %53 = getelementptr inbounds %struct.cpp_token, ptr %52, i64 0, i32 1
  %54 = load i8, ptr %53, align 4
  %55 = icmp eq i8 %54, 22
  br i1 %55, label %63, label %56

56:                                               ; preds = %50
  %57 = add nsw i32 %51, -1
  %58 = icmp eq i32 %51, 0
  br i1 %58, label %59, label %50, !llvm.loop !143

59:                                               ; preds = %56
  %60 = add nsw i32 %7, 1
  tail call void @_cpp_backup_tokens_direct(ptr noundef %0, i32 noundef %60) #20
  %61 = load i32, ptr %47, align 4, !tbaa !142
  %62 = add i32 %61, -1
  store i32 %62, ptr %47, align 4, !tbaa !142
  br label %63

63:                                               ; preds = %42, %50, %59
  %64 = phi ptr [ %52, %59 ], [ %52, %50 ], [ %45, %42 ]
  ret ptr %64
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local ptr @_cpp_lex_token(ptr noundef %0) local_unnamed_addr #3 !prof !144 {
  %2 = alloca %struct.normalize_state, align 4
  %3 = alloca %struct.normalize_state, align 4
  %4 = alloca %struct.normalize_state, align 4
  %5 = alloca %struct.normalize_state, align 4
  %6 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 29
  %7 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 31
  br label %8

8:                                                ; preds = %1229, %1
  %9 = load ptr, ptr %6, align 8, !tbaa !145
  %10 = load ptr, ptr %7, align 8, !tbaa !146
  %11 = getelementptr inbounds %struct.tokenrun, ptr %10, i64 0, i32 3
  %12 = load ptr, ptr %11, align 8, !tbaa !136
  %13 = icmp eq ptr %9, %12
  br i1 %13, label %14, label %28, !prof !147

14:                                               ; preds = %8
  %15 = load ptr, ptr %10, align 8, !tbaa !137
  %16 = icmp eq ptr %15, null
  br i1 %16, label %17, label %24, !prof !148

17:                                               ; preds = %14
  %18 = call ptr @xmalloc(i64 noundef 32) #20
  store ptr %18, ptr %10, align 8, !tbaa !137
  %19 = getelementptr inbounds %struct.tokenrun, ptr %18, i64 0, i32 1
  store ptr %10, ptr %19, align 8, !tbaa !149
  %20 = call ptr @xmalloc(i64 noundef 6000) #20
  %21 = getelementptr inbounds %struct.tokenrun, ptr %18, i64 0, i32 2
  store ptr %20, ptr %21, align 8, !tbaa !135
  %22 = getelementptr inbounds %struct.cpp_token, ptr %20, i64 250
  %23 = getelementptr inbounds %struct.tokenrun, ptr %18, i64 0, i32 3
  store ptr %22, ptr %23, align 8, !tbaa !136
  store ptr null, ptr %18, align 8, !tbaa !137
  br label %24

24:                                               ; preds = %14, %17
  %25 = load ptr, ptr %10, align 8, !tbaa !137
  store ptr %25, ptr %7, align 8, !tbaa !146
  %26 = getelementptr inbounds %struct.tokenrun, ptr %25, i64 0, i32 2
  %27 = load ptr, ptr %26, align 8, !tbaa !135
  store ptr %27, ptr %6, align 8, !tbaa !145
  br label %28

28:                                               ; preds = %24, %8
  %29 = load ptr, ptr %6, align 8, !tbaa !145
  %30 = load ptr, ptr %7, align 8, !tbaa !146
  %31 = getelementptr inbounds %struct.tokenrun, ptr %30, i64 0, i32 2
  %32 = load ptr, ptr %31, align 8, !tbaa !135
  %33 = icmp ult ptr %29, %32
  br i1 %33, label %38, label %34, !prof !150

34:                                               ; preds = %28
  %35 = getelementptr inbounds %struct.tokenrun, ptr %30, i64 0, i32 3
  %36 = load ptr, ptr %35, align 8, !tbaa !136
  %37 = icmp ult ptr %29, %36
  br i1 %37, label %39, label %38, !prof !151

38:                                               ; preds = %34, %28
  call void @abort() #22
  unreachable

39:                                               ; preds = %34
  %40 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 32
  %41 = load i32, ptr %40, align 8, !tbaa !152
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %46, label %43, !prof !153

43:                                               ; preds = %39
  %44 = add i32 %41, -1
  store i32 %44, ptr %40, align 8, !tbaa !152
  %45 = getelementptr inbounds %struct.cpp_token, ptr %29, i64 1
  store ptr %45, ptr %6, align 8, !tbaa !145
  br label %1205

46:                                               ; preds = %39
  %47 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 3
  %48 = getelementptr inbounds %struct.cpp_token, ptr %29, i64 1
  store ptr %48, ptr %6, align 8, !tbaa !145
  br label %49

49:                                               ; preds = %440, %46
  %50 = phi ptr [ %29, %46 ], [ %316, %440 ]
  %51 = getelementptr inbounds %struct.cpp_token, ptr %50, i64 0, i32 2
  store i16 0, ptr %51, align 2, !tbaa !154
  %52 = load ptr, ptr %0, align 8, !tbaa !62
  %53 = getelementptr inbounds %struct.cpp_buffer, ptr %52, i64 0, i32 13
  %54 = load i8, ptr %53, align 8, !tbaa !85
  %55 = icmp eq i8 %54, 0
  br i1 %55, label %315, label %56, !prof !155

56:                                               ; preds = %49
  %57 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 2, i32 12
  %58 = load i8, ptr %57, align 8, !tbaa !156
  %59 = icmp eq i8 %58, 0
  br i1 %59, label %69, label %60, !prof !157

60:                                               ; preds = %56
  %61 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 2, i32 13
  %62 = getelementptr inbounds %struct.cpp_token, ptr %50, i64 0, i32 1
  store i8 71, ptr %62, align 4
  store i8 0, ptr %57, align 8, !tbaa !156
  %63 = load i8, ptr %61, align 1, !tbaa !158
  %64 = icmp eq i8 %63, 0
  br i1 %64, label %65, label %1205

65:                                               ; preds = %60
  %66 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 2, i32 8
  %67 = load i8, ptr %66, align 8, !tbaa !159
  %68 = add i8 %67, -1
  store i8 %68, ptr %66, align 8, !tbaa !159
  br label %1205

69:                                               ; preds = %56
  %70 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 2
  %71 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 2, i32 9
  %72 = load i8, ptr %70, align 8, !tbaa !160
  %73 = icmp eq i8 %72, 0
  br i1 %73, label %74, label %288, !prof !161

74:                                               ; preds = %69, %285
  %75 = phi i8 [ %287, %285 ], [ undef, %69 ]
  %76 = load ptr, ptr %0, align 8, !tbaa !62
  %77 = getelementptr inbounds %struct.cpp_buffer, ptr %76, i64 0, i32 13
  %78 = load i8, ptr %77, align 8, !tbaa !85
  %79 = icmp eq i8 %78, 0
  br i1 %79, label %285, label %80, !prof !162

80:                                               ; preds = %74
  %81 = getelementptr inbounds %struct.cpp_buffer, ptr %76, i64 0, i32 2
  %82 = load ptr, ptr %81, align 8, !tbaa !82
  %83 = getelementptr inbounds %struct.cpp_buffer, ptr %76, i64 0, i32 4
  %84 = load ptr, ptr %83, align 8, !tbaa !90
  %85 = icmp ult ptr %82, %84
  br i1 %85, label %86, label %261, !prof !163

86:                                               ; preds = %80
  %87 = getelementptr inbounds %struct.cpp_buffer, ptr %76, i64 0, i32 7
  store i32 0, ptr %87, align 4, !tbaa !79
  %88 = getelementptr inbounds %struct.cpp_buffer, ptr %76, i64 0, i32 6
  store i32 0, ptr %88, align 8, !tbaa !81
  %89 = getelementptr inbounds %struct.cpp_buffer, ptr %76, i64 0, i32 1
  store ptr %82, ptr %89, align 8, !tbaa !83
  store ptr %82, ptr %76, align 8, !tbaa !84
  store i8 0, ptr %77, align 8, !tbaa !85
  %90 = getelementptr inbounds i8, ptr %82, i64 -1
  %91 = getelementptr inbounds %struct.cpp_buffer, ptr %76, i64 0, i32 14
  %92 = load i8, ptr %91, align 1
  %93 = and i8 %92, 2
  %94 = icmp eq i8 %93, 0
  br i1 %94, label %95, label %225, !prof !86

95:                                               ; preds = %98, %86
  %96 = phi ptr [ %90, %86 ], [ %100, %98 ]
  %97 = phi ptr [ null, %86 ], [ %100, %98 ]
  br label %98

98:                                               ; preds = %159, %95
  %99 = phi ptr [ %96, %95 ], [ %100, %159 ]
  %100 = getelementptr inbounds i8, ptr %99, i64 1
  %101 = load i8, ptr %100, align 1, !tbaa !57
  switch i8 %101, label %159 [
    i8 13, label %102
    i8 10, label %102
    i8 92, label %95
    i8 63, label %137
  ], !prof !87, !llvm.loop !88

102:                                              ; preds = %98, %98
  %103 = load ptr, ptr %83, align 8, !tbaa !90
  %104 = icmp eq ptr %100, %103
  br i1 %104, label %236, label %105, !prof !91

105:                                              ; preds = %102
  %106 = icmp eq i8 %101, 13
  br i1 %106, label %107, label %113, !prof !91

107:                                              ; preds = %105
  %108 = getelementptr inbounds i8, ptr %99, i64 2
  %109 = load i8, ptr %108, align 1, !tbaa !57
  %110 = icmp eq i8 %109, 10
  br i1 %110, label %111, label %113

111:                                              ; preds = %107
  %112 = icmp eq ptr %108, %103
  br i1 %112, label %236, label %113

113:                                              ; preds = %111, %107, %105
  %114 = phi ptr [ %108, %111 ], [ %100, %107 ], [ %100, %105 ]
  %115 = icmp eq ptr %97, null
  br i1 %115, label %236, label %116, !prof !92

116:                                              ; preds = %113, %116
  %117 = phi i64 [ %118, %116 ], [ 1, %113 ]
  %118 = add nsw i64 %117, -1
  %119 = getelementptr inbounds i8, ptr %99, i64 %118
  %120 = load i8, ptr %119, align 1, !tbaa !57
  %121 = zext i8 %120 to i64
  %122 = getelementptr inbounds [256 x i16], ptr @_sch_istable, i64 0, i64 %121
  %123 = load i16, ptr %122, align 2, !tbaa !93
  %124 = and i16 %123, 2048
  %125 = icmp eq i16 %124, 0
  br i1 %125, label %126, label %116, !prof !94, !llvm.loop !95

126:                                              ; preds = %116
  %127 = getelementptr inbounds i8, ptr %99, i64 %118
  %128 = icmp eq ptr %127, %97
  br i1 %128, label %129, label %236, !prof !97

129:                                              ; preds = %126
  %130 = getelementptr inbounds i8, ptr %99, i64 %117
  %131 = icmp eq i64 %117, 1
  %132 = select i1 %131, i32 92, i32 32
  call fastcc void @add_line_note(ptr noundef nonnull %76, ptr noundef nonnull %127, i32 noundef %132)
  %133 = getelementptr inbounds i8, ptr %130, i64 -2
  store ptr %127, ptr %81, align 8, !tbaa !82
  br label %134

134:                                              ; preds = %153, %129
  %135 = phi ptr [ %154, %153 ], [ %114, %129 ]
  %136 = phi ptr [ %100, %153 ], [ %133, %129 ]
  br label %160

137:                                              ; preds = %98
  %138 = getelementptr inbounds i8, ptr %99, i64 2
  %139 = load i8, ptr %138, align 1, !tbaa !57
  %140 = icmp eq i8 %139, 63
  br i1 %140, label %141, label %159, !prof !98

141:                                              ; preds = %137
  %142 = getelementptr inbounds i8, ptr %99, i64 3
  %143 = load i8, ptr %142, align 1, !tbaa !57
  %144 = zext i8 %143 to i64
  %145 = getelementptr inbounds [256 x i8], ptr @_cpp_trigraph_map, i64 0, i64 %144
  %146 = load i8, ptr %145, align 1, !tbaa !57
  %147 = icmp eq i8 %146, 0
  br i1 %147, label %159, label %148

148:                                              ; preds = %141
  %149 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 53, i32 7
  %150 = zext i8 %143 to i32
  call fastcc void @add_line_note(ptr noundef nonnull %76, ptr noundef nonnull %100, i32 noundef %150)
  %151 = load i8, ptr %149, align 1, !tbaa !99
  %152 = icmp eq i8 %151, 0
  br i1 %152, label %159, label %153

153:                                              ; preds = %148
  %154 = getelementptr inbounds i8, ptr %99, i64 3
  %155 = load i8, ptr %154, align 1, !tbaa !57
  %156 = zext i8 %155 to i64
  %157 = getelementptr inbounds [256 x i8], ptr @_cpp_trigraph_map, i64 0, i64 %156
  %158 = load i8, ptr %157, align 1, !tbaa !57
  store i8 %158, ptr %100, align 1, !tbaa !57
  br label %134

159:                                              ; preds = %98, %148, %141, %137
  br label %98, !llvm.loop !88

160:                                              ; preds = %222, %134
  %161 = phi ptr [ %135, %134 ], [ %223, %222 ]
  %162 = phi ptr [ %136, %134 ], [ %224, %222 ]
  %163 = getelementptr inbounds i8, ptr %161, i64 1
  %164 = load i8, ptr %163, align 1, !tbaa !57
  %165 = getelementptr inbounds i8, ptr %162, i64 1
  store i8 %164, ptr %165, align 1, !tbaa !57
  switch i8 %164, label %222 [
    i8 13, label %166
    i8 10, label %174
    i8 63, label %201
  ]

166:                                              ; preds = %160
  %167 = load ptr, ptr %83, align 8, !tbaa !90
  %168 = icmp eq ptr %163, %167
  br i1 %168, label %174, label %169

169:                                              ; preds = %166
  %170 = getelementptr inbounds i8, ptr %161, i64 2
  %171 = load i8, ptr %170, align 1, !tbaa !57
  %172 = icmp eq i8 %171, 10
  %173 = select i1 %172, ptr %170, ptr %163
  br label %174

174:                                              ; preds = %169, %166, %160
  %175 = phi ptr [ %163, %166 ], [ %163, %160 ], [ %173, %169 ]
  %176 = load ptr, ptr %83, align 8, !tbaa !90
  %177 = icmp eq ptr %175, %176
  br i1 %177, label %236, label %178

178:                                              ; preds = %174
  %179 = load ptr, ptr %81, align 8, !tbaa !82
  br label %180

180:                                              ; preds = %184, %178
  %181 = phi i64 [ %185, %184 ], [ 1, %178 ]
  %182 = getelementptr inbounds i8, ptr %162, i64 %181
  %183 = icmp eq ptr %182, %179
  br i1 %183, label %236, label %184

184:                                              ; preds = %180
  %185 = add nsw i64 %181, -1
  %186 = getelementptr inbounds i8, ptr %162, i64 %185
  %187 = load i8, ptr %186, align 1, !tbaa !57
  %188 = zext i8 %187 to i64
  %189 = getelementptr inbounds [256 x i16], ptr @_sch_istable, i64 0, i64 %188
  %190 = load i16, ptr %189, align 2, !tbaa !93
  %191 = and i16 %190, 2048
  %192 = icmp eq i16 %191, 0
  br i1 %192, label %193, label %180, !llvm.loop !101

193:                                              ; preds = %184
  %194 = getelementptr inbounds i8, ptr %182, i64 -1
  %195 = load i8, ptr %194, align 1, !tbaa !57
  %196 = icmp eq i8 %195, 92
  br i1 %196, label %197, label %236

197:                                              ; preds = %193
  %198 = icmp eq i64 %181, 1
  %199 = select i1 %198, i32 92, i32 32
  call fastcc void @add_line_note(ptr noundef nonnull %76, ptr noundef nonnull %194, i32 noundef %199)
  %200 = getelementptr inbounds i8, ptr %182, i64 -2
  store ptr %194, ptr %81, align 8, !tbaa !82
  br label %222

201:                                              ; preds = %160
  %202 = getelementptr inbounds i8, ptr %161, i64 2
  %203 = load i8, ptr %202, align 1, !tbaa !57
  %204 = icmp eq i8 %203, 63
  br i1 %204, label %205, label %222

205:                                              ; preds = %201
  %206 = getelementptr inbounds i8, ptr %161, i64 3
  %207 = load i8, ptr %206, align 1, !tbaa !57
  %208 = zext i8 %207 to i64
  %209 = getelementptr inbounds [256 x i8], ptr @_cpp_trigraph_map, i64 0, i64 %208
  %210 = load i8, ptr %209, align 1, !tbaa !57
  %211 = icmp eq i8 %210, 0
  br i1 %211, label %222, label %212

212:                                              ; preds = %205
  %213 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 53, i32 7
  %214 = zext i8 %207 to i32
  call fastcc void @add_line_note(ptr noundef nonnull %76, ptr noundef nonnull %165, i32 noundef %214)
  %215 = load i8, ptr %213, align 1, !tbaa !99
  %216 = icmp eq i8 %215, 0
  br i1 %216, label %222, label %217

217:                                              ; preds = %212
  %218 = load i8, ptr %206, align 1, !tbaa !57
  %219 = zext i8 %218 to i64
  %220 = getelementptr inbounds [256 x i8], ptr @_cpp_trigraph_map, i64 0, i64 %219
  %221 = load i8, ptr %220, align 1, !tbaa !57
  store i8 %221, ptr %165, align 1, !tbaa !57
  br label %222

222:                                              ; preds = %217, %212, %205, %201, %197, %160
  %223 = phi ptr [ %175, %197 ], [ %206, %217 ], [ %163, %212 ], [ %163, %205 ], [ %163, %201 ], [ %163, %160 ]
  %224 = phi ptr [ %200, %197 ], [ %165, %217 ], [ %165, %212 ], [ %165, %205 ], [ %165, %201 ], [ %165, %160 ]
  br label %160, !llvm.loop !100

225:                                              ; preds = %86, %225
  %226 = phi ptr [ %227, %225 ], [ %90, %86 ]
  %227 = getelementptr inbounds i8, ptr %226, i64 1
  %228 = load i8, ptr %227, align 1, !tbaa !57
  switch i8 %228, label %225 [
    i8 13, label %229
    i8 10, label %236
  ], !prof !102

229:                                              ; preds = %225
  %230 = icmp eq ptr %227, %84
  br i1 %230, label %236, label %231

231:                                              ; preds = %229
  %232 = getelementptr inbounds i8, ptr %226, i64 2
  %233 = load i8, ptr %232, align 1, !tbaa !57
  %234 = icmp eq i8 %233, 10
  %235 = select i1 %234, ptr %232, ptr %227
  br label %236

236:                                              ; preds = %225, %193, %174, %180, %231, %229, %126, %113, %111, %102
  %237 = phi ptr [ %227, %229 ], [ %114, %113 ], [ %114, %126 ], [ %235, %231 ], [ %100, %102 ], [ %108, %111 ], [ %175, %180 ], [ %175, %174 ], [ %175, %193 ], [ %227, %225 ]
  %238 = phi ptr [ %227, %229 ], [ %100, %113 ], [ %100, %126 ], [ %227, %231 ], [ %100, %102 ], [ %100, %111 ], [ %165, %180 ], [ %165, %174 ], [ %165, %193 ], [ %227, %225 ]
  store i8 10, ptr %238, align 1, !tbaa !57
  %239 = load i32, ptr %87, align 4, !tbaa !79
  %240 = getelementptr inbounds %struct.cpp_buffer, ptr %76, i64 0, i32 8
  %241 = load i32, ptr %240, align 8, !tbaa !103
  %242 = icmp eq i32 %239, %241
  br i1 %242, label %243, label %251, !prof !104

243:                                              ; preds = %236
  %244 = shl i32 %241, 1
  %245 = add i32 %244, 200
  store i32 %245, ptr %240, align 8, !tbaa !103
  %246 = getelementptr inbounds %struct.cpp_buffer, ptr %76, i64 0, i32 5
  %247 = load ptr, ptr %246, align 8, !tbaa !105
  %248 = zext i32 %245 to i64
  %249 = shl nuw nsw i64 %248, 4
  %250 = call ptr @xrealloc(ptr noundef %247, i64 noundef %249) #20
  store ptr %250, ptr %246, align 8, !tbaa !105
  br label %251

251:                                              ; preds = %243, %236
  %252 = getelementptr inbounds i8, ptr %238, i64 1
  %253 = getelementptr inbounds %struct.cpp_buffer, ptr %76, i64 0, i32 5
  %254 = load ptr, ptr %253, align 8, !tbaa !105
  %255 = load i32, ptr %87, align 4, !tbaa !79
  %256 = zext i32 %255 to i64
  %257 = getelementptr inbounds %struct._cpp_line_note, ptr %254, i64 %256
  store ptr %252, ptr %257, align 8, !tbaa !106
  %258 = getelementptr inbounds %struct._cpp_line_note, ptr %254, i64 %256, i32 1
  store i32 10, ptr %258, align 8, !tbaa !108
  %259 = add i32 %255, 1
  store i32 %259, ptr %87, align 4, !tbaa !79
  %260 = getelementptr inbounds i8, ptr %237, i64 1
  store ptr %260, ptr %81, align 8, !tbaa !82
  br label %285

261:                                              ; preds = %80
  %262 = load i8, ptr %71, align 1, !tbaa !164
  %263 = icmp eq i8 %262, 0
  br i1 %263, label %264, label %285, !prof !165

264:                                              ; preds = %261
  %265 = getelementptr inbounds %struct.cpp_buffer, ptr %76, i64 0, i32 3
  %266 = load ptr, ptr %265, align 8, !tbaa !166
  %267 = icmp ne ptr %266, %84
  %268 = icmp ugt ptr %82, %84
  %269 = and i1 %268, %267
  br i1 %269, label %270, label %276, !prof !167

270:                                              ; preds = %264
  %271 = getelementptr inbounds %struct.cpp_buffer, ptr %76, i64 0, i32 14
  %272 = load i8, ptr %271, align 1
  %273 = and i8 %272, 2
  %274 = icmp eq i8 %273, 0
  br i1 %274, label %275, label %276

275:                                              ; preds = %270
  store ptr %84, ptr %81, align 8, !tbaa !82
  br label %276

276:                                              ; preds = %275, %270, %264
  %277 = getelementptr inbounds %struct.cpp_buffer, ptr %76, i64 0, i32 14
  %278 = load i8, ptr %277, align 1
  call void @_cpp_pop_buffer(ptr noundef nonnull %0) #20
  %279 = load ptr, ptr %0, align 8, !tbaa !62
  %280 = icmp ne ptr %279, null
  %281 = and i8 %278, 4
  %282 = icmp eq i8 %281, 0
  %283 = select i1 %280, i1 %282, i1 false, !prof !167
  %284 = select i1 %283, i8 %75, i8 0, !prof !167
  br label %285

285:                                              ; preds = %276, %261, %251, %74
  %286 = phi i1 [ false, %251 ], [ false, %261 ], [ %283, %276 ], [ false, %74 ]
  %287 = phi i8 [ 1, %251 ], [ 0, %261 ], [ %284, %276 ], [ 1, %74 ]
  br i1 %286, label %74, label %288, !prof !162, !llvm.loop !168

288:                                              ; preds = %285, %69
  %289 = phi i8 [ 0, %69 ], [ %287, %285 ]
  %290 = icmp eq i8 %289, 0
  br i1 %290, label %291, label %300, !prof !169

291:                                              ; preds = %288
  %292 = getelementptr inbounds %struct.cpp_token, ptr %50, i64 0, i32 1
  store i8 22, ptr %292, align 4
  %293 = load i8, ptr %70, align 8, !tbaa !160
  %294 = icmp eq i8 %293, 0
  br i1 %294, label %295, label %1205, !prof !170

295:                                              ; preds = %291
  %296 = getelementptr inbounds %struct.cpp_token, ptr %50, i64 0, i32 2
  %297 = load ptr, ptr %47, align 8, !tbaa !112
  %298 = getelementptr inbounds %struct.line_maps, ptr %297, i64 0, i32 8
  %299 = load i32, ptr %298, align 4, !tbaa !113
  store i32 %299, ptr %50, align 8, !tbaa !171
  store i16 64, ptr %296, align 2, !tbaa !154
  br label %1205

300:                                              ; preds = %288
  %301 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 33
  %302 = load i32, ptr %301, align 4, !tbaa !142
  %303 = icmp eq i32 %302, 0
  br i1 %303, label %304, label %309, !prof !172

304:                                              ; preds = %300
  %305 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 30
  %306 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 30, i32 2
  store ptr %305, ptr %7, align 8, !tbaa !146
  %307 = load ptr, ptr %306, align 8, !tbaa !173
  %308 = getelementptr inbounds %struct.cpp_token, ptr %307, i64 1
  store ptr %308, ptr %6, align 8, !tbaa !145
  br label %309

309:                                              ; preds = %304, %300
  %310 = phi ptr [ %50, %300 ], [ %307, %304 ]
  %311 = getelementptr inbounds %struct.cpp_token, ptr %310, i64 0, i32 2
  store i16 64, ptr %311, align 2, !tbaa !154
  %312 = load i8, ptr %71, align 1, !tbaa !164
  %313 = icmp eq i8 %312, 2
  %314 = select i1 %313, i16 65, i16 64, !prof !91
  store i16 %314, ptr %311, align 2
  br label %315

315:                                              ; preds = %309, %49
  %316 = phi ptr [ %50, %49 ], [ %310, %309 ]
  %317 = load ptr, ptr %0, align 8, !tbaa !62
  %318 = getelementptr inbounds %struct.cpp_buffer, ptr %317, i64 0, i32 5
  %319 = getelementptr inbounds %struct.cpp_buffer, ptr %317, i64 0, i32 6
  %320 = getelementptr inbounds %struct.cpp_buffer, ptr %317, i64 0, i32 1
  %321 = getelementptr inbounds %struct.cpp_token, ptr %316, i64 0, i32 2
  br label %322

322:                                              ; preds = %932, %315
  %323 = load ptr, ptr %47, align 8, !tbaa !112
  %324 = getelementptr inbounds %struct.line_maps, ptr %323, i64 0, i32 8
  %325 = load i32, ptr %324, align 4, !tbaa !113
  store i32 %325, ptr %316, align 8, !tbaa !171
  br label %326

326:                                              ; preds = %411, %322
  %327 = load ptr, ptr %317, align 8, !tbaa !84
  %328 = load ptr, ptr %318, align 8, !tbaa !105
  %329 = load i32, ptr %319, align 8, !tbaa !81
  %330 = zext i32 %329 to i64
  %331 = getelementptr inbounds %struct._cpp_line_note, ptr %328, i64 %330
  %332 = load ptr, ptr %331, align 8, !tbaa !106
  %333 = icmp ult ptr %327, %332
  br i1 %333, label %342, label %334, !prof !174

334:                                              ; preds = %326
  %335 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 1
  %336 = load ptr, ptr %335, align 8, !tbaa !175
  %337 = icmp eq ptr %336, null
  br i1 %337, label %338, label %342

338:                                              ; preds = %334
  call void @_cpp_process_line_notes(ptr noundef nonnull %0, i32 noundef 0)
  %339 = load ptr, ptr %47, align 8, !tbaa !112
  %340 = getelementptr inbounds %struct.line_maps, ptr %339, i64 0, i32 8
  %341 = load i32, ptr %340, align 4, !tbaa !113
  store i32 %341, ptr %316, align 8, !tbaa !171
  br label %342

342:                                              ; preds = %338, %334, %326
  %343 = load ptr, ptr %317, align 8, !tbaa !84
  %344 = getelementptr inbounds i8, ptr %343, i64 1
  store ptr %344, ptr %317, align 8, !tbaa !84
  %345 = load i8, ptr %343, align 1, !tbaa !57
  %346 = load ptr, ptr %320, align 8, !tbaa !83
  %347 = ptrtoint ptr %344 to i64
  %348 = ptrtoint ptr %346 to i64
  %349 = sub i64 %347, %348
  %350 = trunc i64 %349 to i32
  %351 = load ptr, ptr %47, align 8, !tbaa !112
  %352 = getelementptr inbounds %struct.line_maps, ptr %351, i64 0, i32 9
  %353 = load i32, ptr %352, align 8, !tbaa !176
  %354 = icmp ugt i32 %353, %350
  br i1 %354, label %357, label %355, !prof !177

355:                                              ; preds = %342
  %356 = call i32 @linemap_position_for_column(ptr noundef %351, i32 noundef %350) #20
  br label %365

357:                                              ; preds = %342
  %358 = getelementptr inbounds %struct.line_maps, ptr %351, i64 0, i32 8
  %359 = load i32, ptr %358, align 4, !tbaa !113
  %360 = add i32 %359, %350
  %361 = getelementptr inbounds %struct.line_maps, ptr %351, i64 0, i32 7
  %362 = load i32, ptr %361, align 8, !tbaa !178
  %363 = icmp ult i32 %360, %362
  br i1 %363, label %365, label %364, !prof !179

364:                                              ; preds = %357
  store i32 %360, ptr %361, align 8, !tbaa !178
  br label %365

365:                                              ; preds = %364, %357, %355
  %366 = phi i32 [ %356, %355 ], [ %360, %364 ], [ %360, %357 ]
  store i32 %366, ptr %316, align 8, !tbaa !171
  switch i8 %345, label %1177 [
    i8 32, label %367
    i8 9, label %367
    i8 12, label %367
    i8 11, label %367
    i8 0, label %367
    i8 10, label %414
    i8 48, label %442
    i8 49, label %442
    i8 50, label %442
    i8 51, label %442
    i8 52, label %442
    i8 53, label %442
    i8 54, label %442
    i8 55, label %442
    i8 56, label %442
    i8 57, label %442
    i8 76, label %622
    i8 117, label %622
    i8 85, label %622
    i8 82, label %622
    i8 95, label %660
    i8 97, label %660
    i8 98, label %660
    i8 99, label %660
    i8 100, label %660
    i8 101, label %660
    i8 102, label %660
    i8 103, label %660
    i8 104, label %660
    i8 105, label %660
    i8 106, label %660
    i8 107, label %660
    i8 108, label %660
    i8 109, label %660
    i8 110, label %660
    i8 111, label %660
    i8 112, label %660
    i8 113, label %660
    i8 114, label %660
    i8 115, label %660
    i8 116, label %660
    i8 118, label %660
    i8 119, label %660
    i8 120, label %660
    i8 121, label %660
    i8 122, label %660
    i8 65, label %660
    i8 66, label %660
    i8 67, label %660
    i8 68, label %660
    i8 69, label %660
    i8 70, label %660
    i8 71, label %660
    i8 72, label %660
    i8 73, label %660
    i8 74, label %660
    i8 75, label %660
    i8 77, label %660
    i8 78, label %660
    i8 79, label %660
    i8 80, label %660
    i8 81, label %660
    i8 83, label %660
    i8 84, label %660
    i8 86, label %660
    i8 87, label %660
    i8 88, label %660
    i8 89, label %660
    i8 90, label %660
    i8 39, label %854
    i8 34, label %854
    i8 47, label %857
    i8 60, label %937
    i8 62, label %973
    i8 37, label %986
    i8 46, label %1016
    i8 43, label %1042
    i8 45, label %1050
    i8 38, label %1069
    i8 124, label %1077
    i8 58, label %1085
    i8 42, label %1105
    i8 61, label %1112
    i8 33, label %1119
    i8 94, label %1126
    i8 35, label %1133
    i8 63, label %1142
    i8 126, label %1144
    i8 44, label %1146
    i8 40, label %1148
    i8 41, label %1150
    i8 91, label %1152
    i8 93, label %1154
    i8 123, label %1156
    i8 125, label %1158
    i8 59, label %1160
    i8 64, label %1162
    i8 36, label %1164
    i8 92, label %1164
  ], !prof !180

367:                                              ; preds = %365, %365, %365, %365, %365
  %368 = load i16, ptr %321, align 2, !tbaa !154
  %369 = or i16 %368, 1
  store i16 %369, ptr %321, align 2, !tbaa !154
  %370 = load ptr, ptr %0, align 8, !tbaa !62
  br label %371

371:                                              ; preds = %397, %367
  %372 = phi i8 [ %345, %367 ], [ %401, %397 ]
  %373 = phi i8 [ 0, %367 ], [ %398, %397 ]
  switch i8 %372, label %375 [
    i8 32, label %397
    i8 9, label %397
    i8 0, label %374
  ], !prof !181

374:                                              ; preds = %371
  br label %397

375:                                              ; preds = %371
  %376 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 2
  %377 = load i8, ptr %376, align 8, !tbaa !160
  %378 = icmp eq i8 %377, 0
  br i1 %378, label %397, label %379

379:                                              ; preds = %375
  %380 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 53, i32 31
  %381 = load i8, ptr %380, align 1, !tbaa !182
  %382 = icmp eq i8 %381, 0
  br i1 %382, label %397, label %383

383:                                              ; preds = %379
  %384 = getelementptr inbounds %struct.cpp_buffer, ptr %370, i64 0, i32 1
  %385 = load ptr, ptr %47, align 8, !tbaa !112
  %386 = getelementptr inbounds %struct.line_maps, ptr %385, i64 0, i32 8
  %387 = load i32, ptr %386, align 4, !tbaa !113
  %388 = load ptr, ptr %370, align 8, !tbaa !84
  %389 = load ptr, ptr %384, align 8, !tbaa !83
  %390 = ptrtoint ptr %388 to i64
  %391 = ptrtoint ptr %389 to i64
  %392 = sub i64 %390, %391
  %393 = trunc i64 %392 to i32
  %394 = icmp eq i8 %372, 12
  %395 = select i1 %394, ptr @.str.15, ptr @.str.16
  %396 = call zeroext i8 (ptr, i32, i32, i32, ptr, ...) @cpp_error_with_line(ptr noundef nonnull %0, i32 noundef 2, i32 noundef %387, i32 noundef %393, ptr noundef nonnull @.str.14, ptr noundef nonnull %395) #20
  br label %397

397:                                              ; preds = %383, %379, %375, %374, %371, %371
  %398 = phi i8 [ 1, %374 ], [ %373, %383 ], [ %373, %379 ], [ %373, %375 ], [ %373, %371 ], [ %373, %371 ]
  %399 = load ptr, ptr %370, align 8, !tbaa !84
  %400 = getelementptr inbounds i8, ptr %399, i64 1
  store ptr %400, ptr %370, align 8, !tbaa !84
  %401 = load i8, ptr %399, align 1, !tbaa !57
  %402 = zext i8 %401 to i64
  %403 = getelementptr inbounds [256 x i16], ptr @_sch_istable, i64 0, i64 %402
  %404 = load i16, ptr %403, align 2, !tbaa !93
  %405 = and i16 %404, 2048
  %406 = icmp eq i16 %405, 0
  br i1 %406, label %407, label %371, !prof !183, !llvm.loop !184

407:                                              ; preds = %397
  %408 = icmp eq i8 %398, 0
  br i1 %408, label %411, label %409, !prof !185

409:                                              ; preds = %407
  %410 = call zeroext i8 (ptr, i32, ptr, ...) @cpp_error(ptr noundef nonnull %0, i32 noundef 0, ptr noundef nonnull @.str.17) #20
  br label %411

411:                                              ; preds = %409, %407
  %412 = load ptr, ptr %370, align 8, !tbaa !84
  %413 = getelementptr inbounds i8, ptr %412, i64 -1
  store ptr %413, ptr %370, align 8, !tbaa !84
  br label %326

414:                                              ; preds = %365
  %415 = load ptr, ptr %317, align 8, !tbaa !84
  %416 = getelementptr inbounds %struct.cpp_buffer, ptr %317, i64 0, i32 4
  %417 = load ptr, ptr %416, align 8, !tbaa !90
  %418 = icmp ult ptr %415, %417
  br i1 %418, label %419, label %440, !prof !186

419:                                              ; preds = %414
  %420 = load ptr, ptr %47, align 8, !tbaa !112
  %421 = load ptr, ptr %420, align 8, !tbaa !115
  %422 = getelementptr inbounds %struct.line_maps, ptr %420, i64 0, i32 2
  %423 = load i32, ptr %422, align 4, !tbaa !116
  %424 = add i32 %423, -1
  %425 = zext i32 %424 to i64
  %426 = getelementptr inbounds %struct.line_maps, ptr %420, i64 0, i32 8
  %427 = load i32, ptr %426, align 4, !tbaa !113
  %428 = getelementptr inbounds %struct.line_map, ptr %421, i64 %425, i32 2
  %429 = load i32, ptr %428, align 4, !tbaa !117
  %430 = sub i32 %427, %429
  %431 = getelementptr inbounds %struct.line_map, ptr %421, i64 %425, i32 6
  %432 = load i8, ptr %431, align 2
  %433 = zext nneg i8 %432 to i32
  %434 = lshr i32 %430, %433
  %435 = getelementptr inbounds %struct.line_map, ptr %421, i64 %425, i32 1
  %436 = load i32, ptr %435, align 8, !tbaa !119
  %437 = add i32 %436, 1
  %438 = add i32 %437, %434
  %439 = call i32 @linemap_line_start(ptr noundef nonnull %420, i32 noundef %438, i32 noundef 0) #20
  br label %440

440:                                              ; preds = %419, %414
  %441 = getelementptr inbounds %struct.cpp_buffer, ptr %317, i64 0, i32 13
  store i8 1, ptr %441, align 8, !tbaa !85
  br label %49

442:                                              ; preds = %365, %365, %365, %365, %365, %365, %365, %365, %365, %365
  %443 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 53, i32 25
  %444 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 6
  %445 = getelementptr inbounds %struct.normalize_state, ptr %2, i64 0, i32 2
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %2) #20
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %2, i8 0, i64 12, i1 false)
  %446 = getelementptr inbounds %struct.cpp_token, ptr %316, i64 0, i32 1
  store i8 55, ptr %446, align 4
  %447 = getelementptr inbounds %struct.cpp_token, ptr %316, i64 0, i32 3
  %448 = load ptr, ptr %0, align 8, !tbaa !62
  %449 = load ptr, ptr %448, align 8, !tbaa !84
  br label %450

450:                                              ; preds = %506, %442
  %451 = load ptr, ptr %0, align 8, !tbaa !62
  %452 = load ptr, ptr %451, align 8, !tbaa !84
  br label %453

453:                                              ; preds = %471, %450
  %454 = phi ptr [ %452, %450 ], [ %473, %471 ]
  %455 = load i8, ptr %454, align 1, !tbaa !57
  %456 = zext i8 %455 to i64
  %457 = getelementptr inbounds [256 x i16], ptr @_sch_istable, i64 0, i64 %456
  %458 = load i16, ptr %457, align 2, !tbaa !93
  %459 = and i16 %458, 516
  %460 = icmp ne i16 %459, 0
  %461 = icmp eq i8 %455, 46
  %462 = or i1 %461, %460
  br i1 %462, label %471, label %463, !prof !187

463:                                              ; preds = %453
  switch i8 %455, label %474 [
    i8 43, label %464
    i8 45, label %464
  ], !prof !188

464:                                              ; preds = %463, %463
  %465 = getelementptr inbounds i8, ptr %454, i64 -1
  %466 = load i8, ptr %465, align 1, !tbaa !57
  switch i8 %466, label %474 [
    i8 101, label %471
    i8 69, label %471
    i8 112, label %467
    i8 80, label %467
  ], !prof !189

467:                                              ; preds = %464, %464
  %468 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 53, i32 9
  %469 = load i8, ptr %468, align 1, !tbaa !190
  %470 = icmp eq i8 %469, 0
  br i1 %470, label %474, label %471

471:                                              ; preds = %467, %464, %464, %453
  %472 = getelementptr inbounds %struct.normalize_state, ptr %2, i64 0, i32 1
  %473 = getelementptr inbounds i8, ptr %454, i64 1
  store i32 0, ptr %2, align 4, !tbaa !191
  store i8 0, ptr %472, align 4, !tbaa !193
  br label %453, !llvm.loop !194

474:                                              ; preds = %467, %464, %463
  store ptr %454, ptr %451, align 8, !tbaa !84
  %475 = load i8, ptr %454, align 1, !tbaa !57
  %476 = icmp eq i8 %475, 36
  br i1 %476, label %477, label %492, !prof !195

477:                                              ; preds = %474
  %478 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 53, i32 24
  %479 = load i8, ptr %478, align 2, !tbaa !196
  %480 = icmp eq i8 %479, 0
  br i1 %480, label %510, label %481

481:                                              ; preds = %477
  %482 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 53, i32 26
  %483 = getelementptr inbounds i8, ptr %454, i64 1
  store ptr %483, ptr %451, align 8, !tbaa !84
  %484 = load i8, ptr %482, align 8, !tbaa !197
  %485 = icmp eq i8 %484, 0
  br i1 %485, label %506, label %486

486:                                              ; preds = %481
  %487 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 2, i32 2
  %488 = load i8, ptr %487, align 2, !tbaa !130
  %489 = icmp eq i8 %488, 0
  br i1 %489, label %490, label %506

490:                                              ; preds = %486
  store i8 0, ptr %482, align 8, !tbaa !197
  %491 = call zeroext i8 (ptr, i32, ptr, ...) @cpp_error(ptr noundef nonnull %0, i32 noundef 2, ptr noundef nonnull @.str.30) #20
  br label %506

492:                                              ; preds = %474
  %493 = load i8, ptr %443, align 1, !tbaa !198
  %494 = icmp ne i8 %493, 0
  %495 = icmp eq i8 %475, 92
  %496 = and i1 %495, %494
  br i1 %496, label %497, label %510, !prof !195

497:                                              ; preds = %492
  %498 = getelementptr inbounds i8, ptr %454, i64 1
  %499 = load i8, ptr %498, align 1, !tbaa !57
  switch i8 %499, label %510 [
    i8 117, label %500
    i8 85, label %500
  ]

500:                                              ; preds = %497, %497
  %501 = getelementptr inbounds i8, ptr %454, i64 2
  store ptr %501, ptr %451, align 8, !tbaa !84
  %502 = getelementptr inbounds %struct.cpp_buffer, ptr %451, i64 0, i32 4
  %503 = load ptr, ptr %502, align 8, !tbaa !90
  %504 = call i32 @_cpp_valid_ucn(ptr noundef nonnull %0, ptr noundef nonnull %451, ptr noundef %503, i32 noundef 2, ptr noundef nonnull %2) #20
  %505 = icmp eq i32 %504, 0
  br i1 %505, label %507, label %506

506:                                              ; preds = %500, %490, %486, %481
  br label %450, !llvm.loop !199

507:                                              ; preds = %500
  %508 = load ptr, ptr %451, align 8, !tbaa !84
  %509 = getelementptr inbounds i8, ptr %508, i64 -2
  store ptr %509, ptr %451, align 8, !tbaa !84
  br label %510

510:                                              ; preds = %497, %492, %477, %507
  %511 = getelementptr inbounds i8, ptr %449, i64 -1
  %512 = ptrtoint ptr %454 to i64
  %513 = ptrtoint ptr %511 to i64
  %514 = sub i64 %512, %513
  %515 = trunc i64 %514 to i32
  store i32 %515, ptr %447, align 8, !tbaa !200
  %516 = add i64 %514, 1
  %517 = and i64 %516, 4294967295
  %518 = load ptr, ptr %444, align 8, !tbaa !202
  %519 = getelementptr inbounds %struct._cpp_buff, ptr %518, i64 0, i32 2
  %520 = load ptr, ptr %519, align 8, !tbaa !203
  %521 = getelementptr inbounds %struct._cpp_buff, ptr %518, i64 0, i32 3
  %522 = load ptr, ptr %521, align 8, !tbaa !205
  %523 = ptrtoint ptr %522 to i64
  %524 = ptrtoint ptr %520 to i64
  %525 = sub i64 %523, %524
  %526 = icmp ult i64 %525, %517
  br i1 %526, label %527, label %576, !prof !206

527:                                              ; preds = %510
  %528 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 7
  br label %529

529:                                              ; preds = %564, %527
  %530 = phi ptr [ undef, %527 ], [ %561, %564 ]
  %531 = phi ptr [ %528, %527 ], [ %565, %564 ]
  %532 = phi ptr [ undef, %527 ], [ %562, %564 ]
  %533 = load ptr, ptr %531, align 8, !tbaa !51
  %534 = icmp eq ptr %533, null
  br i1 %534, label %535, label %545, !prof !207

535:                                              ; preds = %529
  %536 = call i64 @llvm.umax.i64(i64 %517, i64 8000)
  %537 = add nuw nsw i64 %536, 7
  %538 = and i64 %537, 8589934584
  %539 = add nuw nsw i64 %538, 32
  %540 = call ptr @xmalloc(i64 noundef %539) #20
  %541 = getelementptr inbounds i8, ptr %540, i64 %538
  %542 = getelementptr inbounds %struct._cpp_buff, ptr %541, i64 0, i32 1
  store ptr %540, ptr %542, align 8, !tbaa !208
  %543 = getelementptr inbounds %struct._cpp_buff, ptr %541, i64 0, i32 2
  store ptr %540, ptr %543, align 8, !tbaa !203
  %544 = getelementptr inbounds %struct._cpp_buff, ptr %541, i64 0, i32 3
  store ptr %541, ptr %544, align 8, !tbaa !205
  store ptr null, ptr %541, align 8, !tbaa !209
  br label %560

545:                                              ; preds = %529
  %546 = mul nuw nsw i64 %517, 3
  %547 = lshr i64 %546, 1
  %548 = add nuw nsw i64 %547, 8000
  %549 = getelementptr inbounds %struct._cpp_buff, ptr %533, i64 0, i32 3
  %550 = load ptr, ptr %549, align 8, !tbaa !205
  %551 = getelementptr inbounds %struct._cpp_buff, ptr %533, i64 0, i32 1
  %552 = load ptr, ptr %551, align 8, !tbaa !208
  %553 = ptrtoint ptr %550 to i64
  %554 = ptrtoint ptr %552 to i64
  %555 = sub i64 %553, %554
  %556 = icmp ult i64 %555, %517
  %557 = icmp ugt i64 %555, %548
  %558 = select i1 %556, i1 true, i1 %557
  %559 = select i1 %558, i32 0, i32 2
  br label %560

560:                                              ; preds = %545, %535
  %561 = phi ptr [ %530, %535 ], [ %533, %545 ]
  %562 = phi ptr [ %541, %535 ], [ %532, %545 ]
  %563 = phi i32 [ 1, %535 ], [ %559, %545 ]
  switch i32 %563, label %571 [
    i32 0, label %564
    i32 2, label %566
  ], !prof !210

564:                                              ; preds = %560
  %565 = load ptr, ptr %531, align 8, !tbaa !51
  br label %529, !llvm.loop !211

566:                                              ; preds = %560
  %567 = load ptr, ptr %561, align 8, !tbaa !209
  store ptr %567, ptr %531, align 8, !tbaa !51
  store ptr null, ptr %561, align 8, !tbaa !209
  %568 = getelementptr inbounds %struct._cpp_buff, ptr %561, i64 0, i32 1
  %569 = load ptr, ptr %568, align 8, !tbaa !208
  %570 = getelementptr inbounds %struct._cpp_buff, ptr %561, i64 0, i32 2
  store ptr %569, ptr %570, align 8, !tbaa !203
  br label %571

571:                                              ; preds = %560, %566
  %572 = phi ptr [ %561, %566 ], [ %562, %560 ]
  %573 = load ptr, ptr %444, align 8, !tbaa !202
  store ptr %573, ptr %572, align 8, !tbaa !209
  store ptr %572, ptr %444, align 8, !tbaa !202
  %574 = getelementptr inbounds %struct._cpp_buff, ptr %572, i64 0, i32 2
  %575 = load ptr, ptr %574, align 8, !tbaa !203
  br label %576

576:                                              ; preds = %571, %510
  %577 = phi ptr [ %572, %571 ], [ %518, %510 ]
  %578 = phi ptr [ %575, %571 ], [ %520, %510 ]
  %579 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 53, i32 40
  %580 = getelementptr inbounds i8, ptr %578, i64 %517
  %581 = getelementptr inbounds %struct._cpp_buff, ptr %577, i64 0, i32 2
  store ptr %580, ptr %581, align 8, !tbaa !203
  %582 = load i32, ptr %447, align 8, !tbaa !200
  %583 = zext i32 %582 to i64
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %578, ptr nonnull align 1 %511, i64 %583, i1 false), !prof !212
  %584 = load i32, ptr %447, align 8, !tbaa !200
  %585 = zext i32 %584 to i64
  %586 = getelementptr inbounds i8, ptr %578, i64 %585
  store i8 0, ptr %586, align 1, !tbaa !57
  %587 = getelementptr inbounds %struct.cpp_token, ptr %316, i64 0, i32 3, i32 0, i32 1
  store ptr %578, ptr %587, align 8, !tbaa !213
  %588 = load i32, ptr %579, align 8, !tbaa !214
  %589 = load i32, ptr %445, align 4, !tbaa !215
  %590 = icmp ult i32 %588, %589
  br i1 %590, label %591, label %621, !prof !195

591:                                              ; preds = %576
  %592 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 2, i32 2
  %593 = load i8, ptr %592, align 2, !tbaa !130
  %594 = icmp eq i8 %593, 0
  br i1 %594, label %595, label %621

595:                                              ; preds = %591
  %596 = load i8, ptr %446, align 4
  %597 = zext i8 %596 to i64
  %598 = getelementptr inbounds [73 x %struct.token_spelling], ptr @token_spellings, i64 0, i64 %597
  %599 = load i32, ptr %598, align 16, !tbaa !216
  switch i32 %599, label %607 [
    i32 2, label %600
    i32 1, label %602
  ]

600:                                              ; preds = %595
  %601 = load i32, ptr %447, align 8, !tbaa !57
  br label %607

602:                                              ; preds = %595
  %603 = load ptr, ptr %447, align 8, !tbaa !57
  %604 = getelementptr inbounds %struct.ht_identifier, ptr %603, i64 0, i32 1
  %605 = load i32, ptr %604, align 8, !tbaa !218
  %606 = mul i32 %605, 10
  br label %607

607:                                              ; preds = %602, %600, %595
  %608 = phi i32 [ %606, %602 ], [ %601, %600 ], [ 6, %595 ]
  %609 = zext i32 %608 to i64
  %610 = call ptr @xmalloc(i64 noundef %609) #20
  %611 = call ptr @cpp_spell_token(ptr noundef nonnull %0, ptr noundef %316, ptr noundef %610, i8 noundef zeroext 0)
  %612 = ptrtoint ptr %611 to i64
  %613 = ptrtoint ptr %610 to i64
  %614 = sub i64 %612, %613
  %615 = load i32, ptr %445, align 4, !tbaa !215
  %616 = icmp eq i32 %615, 1
  %617 = load i32, ptr %316, align 8, !tbaa !171
  %618 = trunc i64 %614 to i32
  %619 = select i1 %616, ptr @.str.18, ptr @.str.19
  %620 = call zeroext i8 (ptr, i32, i32, i32, ptr, ...) @cpp_error_with_line(ptr noundef nonnull %0, i32 noundef 0, i32 noundef %617, i32 noundef 0, ptr noundef nonnull %619, i32 noundef %618, ptr noundef %610) #20
  br label %621

621:                                              ; preds = %607, %591, %576
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %2) #20
  br label %1205

622:                                              ; preds = %365, %365, %365, %365
  %623 = icmp eq i8 %345, 76
  br i1 %623, label %628, label %624, !prof !219

624:                                              ; preds = %622
  %625 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 53, i32 10
  %626 = load i8, ptr %625, align 8, !tbaa !220
  %627 = icmp eq i8 %626, 0
  br i1 %627, label %660, label %628, !prof !221

628:                                              ; preds = %624, %622
  %629 = load ptr, ptr %317, align 8, !tbaa !84
  %630 = load i8, ptr %629, align 1, !tbaa !57
  %631 = icmp eq i8 %630, 39
  %632 = icmp ne i8 %345, 82
  %633 = select i1 %631, i1 %632, i1 false, !prof !222
  %634 = icmp eq i8 %630, 34
  %635 = or i1 %634, %633
  br i1 %635, label %658, label %636, !prof !222

636:                                              ; preds = %628
  %637 = icmp eq i8 %630, 82
  %638 = select i1 %637, i1 %632, i1 false, !prof !223
  br i1 %638, label %639, label %647, !prof !223

639:                                              ; preds = %636
  %640 = getelementptr inbounds i8, ptr %629, i64 1
  %641 = load i8, ptr %640, align 1, !tbaa !57
  %642 = icmp eq i8 %641, 34
  br i1 %642, label %643, label %647, !prof !167

643:                                              ; preds = %639
  %644 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 53, i32 10
  %645 = load i8, ptr %644, align 8, !tbaa !220
  %646 = icmp eq i8 %645, 0
  br i1 %646, label %647, label %658

647:                                              ; preds = %643, %639, %636
  %648 = icmp eq i8 %630, 56
  %649 = icmp eq i8 %345, 117
  %650 = select i1 %648, i1 %649, i1 false, !prof !222
  br i1 %650, label %651, label %660, !prof !222

651:                                              ; preds = %647
  %652 = getelementptr inbounds i8, ptr %629, i64 1
  %653 = load i8, ptr %652, align 1, !tbaa !57
  switch i8 %653, label %660 [
    i8 34, label %658
    i8 82, label %654
  ]

654:                                              ; preds = %651
  %655 = getelementptr inbounds i8, ptr %629, i64 2
  %656 = load i8, ptr %655, align 1, !tbaa !57
  %657 = icmp eq i8 %656, 34
  br i1 %657, label %658, label %660

658:                                              ; preds = %654, %651, %643, %628
  %659 = getelementptr inbounds i8, ptr %629, i64 -1
  call fastcc void @lex_string(ptr noundef nonnull %0, ptr noundef nonnull %316, ptr noundef nonnull %659)
  br label %1205

660:                                              ; preds = %365, %365, %365, %365, %365, %365, %365, %365, %365, %365, %365, %365, %365, %365, %365, %365, %365, %365, %365, %365, %365, %365, %365, %365, %365, %365, %365, %365, %365, %365, %365, %365, %365, %365, %365, %365, %365, %365, %365, %365, %365, %365, %365, %365, %365, %365, %365, %365, %365, %654, %651, %647, %624
  %661 = getelementptr inbounds %struct.normalize_state, ptr %3, i64 0, i32 2
  %662 = getelementptr inbounds %struct.cpp_token, ptr %316, i64 0, i32 1
  store i8 53, ptr %662, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %3) #20
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %3, i8 0, i64 12, i1 false)
  %663 = load ptr, ptr %317, align 8, !tbaa !84
  %664 = getelementptr inbounds i8, ptr %663, i64 -1
  %665 = load i8, ptr %664, align 1, !tbaa !57
  %666 = zext i8 %665 to i32
  %667 = add nsw i32 %666, -113
  %668 = load ptr, ptr %0, align 8, !tbaa !62
  %669 = load ptr, ptr %668, align 8, !tbaa !84
  %670 = load i8, ptr %669, align 1, !tbaa !57
  %671 = zext i8 %670 to i64
  %672 = getelementptr inbounds [256 x i16], ptr @_sch_istable, i64 0, i64 %671
  %673 = load i16, ptr %672, align 2, !tbaa !93
  %674 = and i16 %673, 516
  %675 = icmp eq i16 %674, 0
  br i1 %675, label %691, label %676, !prof !224

676:                                              ; preds = %660, %676
  %677 = phi i8 [ %685, %676 ], [ %670, %660 ]
  %678 = phi i32 [ %683, %676 ], [ %667, %660 ]
  %679 = phi ptr [ %684, %676 ], [ %669, %660 ]
  %680 = zext i8 %677 to i32
  %681 = mul i32 %678, 67
  %682 = add nsw i32 %680, -113
  %683 = add i32 %682, %681
  %684 = getelementptr inbounds i8, ptr %679, i64 1
  %685 = load i8, ptr %684, align 1, !tbaa !57
  %686 = zext i8 %685 to i64
  %687 = getelementptr inbounds [256 x i16], ptr @_sch_istable, i64 0, i64 %686
  %688 = load i16, ptr %687, align 2, !tbaa !93
  %689 = and i16 %688, 516
  %690 = icmp eq i16 %689, 0
  br i1 %690, label %691, label %676, !prof !225, !llvm.loop !226

691:                                              ; preds = %676, %660
  %692 = phi ptr [ %669, %660 ], [ %684, %676 ]
  %693 = phi i32 [ %667, %660 ], [ %683, %676 ]
  store ptr %692, ptr %668, align 8, !tbaa !84
  %694 = load i8, ptr %692, align 1, !tbaa !57
  %695 = icmp eq i8 %694, 36
  br i1 %695, label %696, label %713, !prof !195

696:                                              ; preds = %691
  %697 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 53, i32 24
  %698 = load i8, ptr %697, align 2, !tbaa !196
  %699 = icmp eq i8 %698, 0
  br i1 %699, label %759, label %700

700:                                              ; preds = %696
  %701 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 53, i32 26
  %702 = getelementptr inbounds i8, ptr %692, i64 1
  store ptr %702, ptr %668, align 8, !tbaa !84
  %703 = load i8, ptr %701, align 8, !tbaa !197
  %704 = icmp eq i8 %703, 0
  br i1 %704, label %705, label %707

705:                                              ; preds = %722, %711, %707, %700
  %706 = getelementptr inbounds %struct.normalize_state, ptr %3, i64 0, i32 1
  br label %731

707:                                              ; preds = %700
  %708 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 2, i32 2
  %709 = load i8, ptr %708, align 2, !tbaa !130
  %710 = icmp eq i8 %709, 0
  br i1 %710, label %711, label %705

711:                                              ; preds = %707
  store i8 0, ptr %701, align 8, !tbaa !197
  %712 = call zeroext i8 (ptr, i32, ptr, ...) @cpp_error(ptr noundef nonnull %0, i32 noundef 2, ptr noundef nonnull @.str.30) #20
  br label %705

713:                                              ; preds = %691
  %714 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 53, i32 25
  %715 = load i8, ptr %714, align 1, !tbaa !198
  %716 = icmp ne i8 %715, 0
  %717 = icmp eq i8 %694, 92
  %718 = and i1 %717, %716
  br i1 %718, label %719, label %759, !prof !195

719:                                              ; preds = %713
  %720 = getelementptr inbounds i8, ptr %692, i64 1
  %721 = load i8, ptr %720, align 1, !tbaa !57
  switch i8 %721, label %759 [
    i8 117, label %722
    i8 85, label %722
  ]

722:                                              ; preds = %719, %719
  %723 = getelementptr inbounds i8, ptr %692, i64 2
  store ptr %723, ptr %668, align 8, !tbaa !84
  %724 = getelementptr inbounds %struct.cpp_buffer, ptr %668, i64 0, i32 4
  %725 = load ptr, ptr %724, align 8, !tbaa !90
  %726 = call i32 @_cpp_valid_ucn(ptr noundef nonnull %0, ptr noundef nonnull %668, ptr noundef %725, i32 noundef 2, ptr noundef nonnull %3) #20
  %727 = icmp eq i32 %726, 0
  br i1 %727, label %728, label %705

728:                                              ; preds = %722
  %729 = load ptr, ptr %668, align 8, !tbaa !84
  %730 = getelementptr inbounds i8, ptr %729, i64 -2
  store ptr %730, ptr %668, align 8, !tbaa !84
  br label %759

731:                                              ; preds = %705, %749
  %732 = load ptr, ptr %0, align 8, !tbaa !62
  %733 = load ptr, ptr %732, align 8, !tbaa !84
  %734 = load i8, ptr %733, align 1, !tbaa !57
  %735 = zext i8 %734 to i64
  %736 = getelementptr inbounds [256 x i16], ptr @_sch_istable, i64 0, i64 %735
  %737 = load i16, ptr %736, align 2, !tbaa !93
  %738 = and i16 %737, 516
  %739 = icmp eq i16 %738, 0
  br i1 %739, label %749, label %740

740:                                              ; preds = %731, %740
  %741 = phi ptr [ %742, %740 ], [ %733, %731 ]
  %742 = getelementptr inbounds i8, ptr %741, i64 1
  store ptr %742, ptr %732, align 8, !tbaa !84
  store i32 0, ptr %3, align 4, !tbaa !191
  store i8 0, ptr %706, align 4, !tbaa !193
  %743 = load i8, ptr %742, align 1, !tbaa !57
  %744 = zext i8 %743 to i64
  %745 = getelementptr inbounds [256 x i16], ptr @_sch_istable, i64 0, i64 %744
  %746 = load i16, ptr %745, align 2, !tbaa !93
  %747 = and i16 %746, 516
  %748 = icmp eq i16 %747, 0
  br i1 %748, label %749, label %740, !llvm.loop !227

749:                                              ; preds = %740, %731
  %750 = call fastcc zeroext i8 @forms_identifier_p(ptr noundef nonnull %0, i32 noundef 0, ptr noundef nonnull %3), !range !228
  %751 = icmp eq i8 %750, 0
  br i1 %751, label %752, label %731, !llvm.loop !229

752:                                              ; preds = %749
  %753 = load ptr, ptr %0, align 8, !tbaa !62
  %754 = load ptr, ptr %753, align 8, !tbaa !84
  %755 = ptrtoint ptr %754 to i64
  %756 = ptrtoint ptr %664 to i64
  %757 = sub i64 %755, %756
  %758 = call ptr @_cpp_interpret_identifier(ptr noundef nonnull %0, ptr noundef nonnull %664, i64 noundef %757) #20
  br label %769

759:                                              ; preds = %728, %719, %713, %696
  %760 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 50
  %761 = ptrtoint ptr %692 to i64
  %762 = ptrtoint ptr %664 to i64
  %763 = sub i64 %761, %762
  %764 = trunc i64 %763 to i32
  %765 = add i32 %693, %764
  %766 = load ptr, ptr %760, align 8, !tbaa !129
  %767 = and i64 %763, 4294967295
  %768 = call ptr @ht_lookup_with_hash(ptr noundef %766, ptr noundef nonnull %664, i64 noundef %767, i32 noundef %765, i32 noundef 1) #20
  br label %769

769:                                              ; preds = %759, %752
  %770 = phi ptr [ %758, %752 ], [ %768, %759 ]
  %771 = getelementptr inbounds %struct.cpp_hashnode, ptr %770, i64 0, i32 3
  %772 = load i16, ptr %771, align 2
  %773 = lshr i16 %772, 6
  %774 = zext nneg i16 %773 to i32
  %775 = and i32 %774, 8
  %776 = icmp eq i32 %775, 0
  br i1 %776, label %807, label %777, !prof !230

777:                                              ; preds = %769
  %778 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 2, i32 2
  %779 = load i8, ptr %778, align 2, !tbaa !130
  %780 = icmp eq i8 %779, 0
  br i1 %780, label %781, label %807

781:                                              ; preds = %777
  %782 = and i32 %774, 2
  %783 = icmp eq i32 %782, 0
  br i1 %783, label %791, label %784

784:                                              ; preds = %781
  %785 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 2, i32 7
  %786 = load i8, ptr %785, align 1, !tbaa !131
  %787 = icmp eq i8 %786, 0
  br i1 %787, label %788, label %791

788:                                              ; preds = %784
  %789 = load ptr, ptr %770, align 8, !tbaa !58
  %790 = call zeroext i8 (ptr, i32, ptr, ...) @cpp_error(ptr noundef nonnull %0, i32 noundef 3, ptr noundef nonnull @.str.11, ptr noundef %789) #20
  br label %791

791:                                              ; preds = %788, %784, %781
  %792 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 54, i32 3
  %793 = load ptr, ptr %792, align 8, !tbaa !132
  %794 = icmp eq ptr %770, %793
  br i1 %794, label %795, label %801

795:                                              ; preds = %791
  %796 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 2, i32 6
  %797 = load i8, ptr %796, align 2, !tbaa !133
  %798 = icmp eq i8 %797, 0
  br i1 %798, label %799, label %801

799:                                              ; preds = %795
  %800 = call zeroext i8 (ptr, i32, ptr, ...) @cpp_error(ptr noundef nonnull %0, i32 noundef 2, ptr noundef nonnull @.str.12) #20
  br label %801

801:                                              ; preds = %799, %795, %791
  %802 = load i16, ptr %771, align 2
  %803 = icmp sgt i16 %802, -1
  br i1 %803, label %807, label %804

804:                                              ; preds = %801
  %805 = load ptr, ptr %770, align 8, !tbaa !58
  %806 = call zeroext i8 (ptr, i32, ptr, ...) @cpp_error(ptr noundef nonnull %0, i32 noundef 0, ptr noundef nonnull @.str.13, ptr noundef %805) #20
  br label %807

807:                                              ; preds = %804, %801, %777, %769
  %808 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 53, i32 40
  %809 = getelementptr inbounds %struct.cpp_token, ptr %316, i64 0, i32 3
  store ptr %770, ptr %809, align 8, !tbaa !57
  %810 = load i32, ptr %808, align 8, !tbaa !214
  %811 = load i32, ptr %661, align 4, !tbaa !215
  %812 = icmp ult i32 %810, %811
  br i1 %812, label %813, label %842, !prof !195

813:                                              ; preds = %807
  %814 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 2, i32 2
  %815 = load i8, ptr %814, align 2, !tbaa !130
  %816 = icmp eq i8 %815, 0
  br i1 %816, label %817, label %842

817:                                              ; preds = %813
  %818 = load i8, ptr %662, align 4
  %819 = zext i8 %818 to i64
  %820 = getelementptr inbounds [73 x %struct.token_spelling], ptr @token_spellings, i64 0, i64 %819
  %821 = load i32, ptr %820, align 16, !tbaa !216
  switch i32 %821, label %828 [
    i32 2, label %822
    i32 1, label %824
  ]

822:                                              ; preds = %817
  %823 = load i32, ptr %809, align 8, !tbaa !57
  br label %828

824:                                              ; preds = %817
  %825 = getelementptr inbounds %struct.ht_identifier, ptr %770, i64 0, i32 1
  %826 = load i32, ptr %825, align 8, !tbaa !218
  %827 = mul i32 %826, 10
  br label %828

828:                                              ; preds = %824, %822, %817
  %829 = phi i32 [ %827, %824 ], [ %823, %822 ], [ 6, %817 ]
  %830 = zext i32 %829 to i64
  %831 = call ptr @xmalloc(i64 noundef %830) #20
  %832 = call ptr @cpp_spell_token(ptr noundef %0, ptr noundef %316, ptr noundef %831, i8 noundef zeroext 0)
  %833 = ptrtoint ptr %832 to i64
  %834 = ptrtoint ptr %831 to i64
  %835 = sub i64 %833, %834
  %836 = load i32, ptr %661, align 4, !tbaa !215
  %837 = icmp eq i32 %836, 1
  %838 = load i32, ptr %316, align 8, !tbaa !171
  %839 = trunc i64 %835 to i32
  %840 = select i1 %837, ptr @.str.18, ptr @.str.19
  %841 = call zeroext i8 (ptr, i32, i32, i32, ptr, ...) @cpp_error_with_line(ptr noundef %0, i32 noundef 0, i32 noundef %838, i32 noundef 0, ptr noundef nonnull %840, i32 noundef %839, ptr noundef %831) #20
  br label %842

842:                                              ; preds = %828, %813, %807
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %3) #20
  %843 = load ptr, ptr %809, align 8, !tbaa !57
  %844 = getelementptr inbounds %struct.cpp_hashnode, ptr %843, i64 0, i32 3
  %845 = load i16, ptr %844, align 2
  %846 = and i16 %845, 64
  %847 = icmp eq i16 %846, 0
  br i1 %847, label %1205, label %848, !prof !230

848:                                              ; preds = %842
  %849 = load i16, ptr %321, align 2, !tbaa !154
  %850 = or i16 %849, 16
  store i16 %850, ptr %321, align 2, !tbaa !154
  %851 = getelementptr inbounds %struct.cpp_hashnode, ptr %843, i64 0, i32 1
  %852 = load i8, ptr %851, align 8
  %853 = lshr i8 %852, 1
  store i8 %853, ptr %662, align 4
  br label %1205

854:                                              ; preds = %365, %365
  %855 = load ptr, ptr %317, align 8, !tbaa !84
  %856 = getelementptr inbounds i8, ptr %855, i64 -1
  call fastcc void @lex_string(ptr noundef nonnull %0, ptr noundef nonnull %316, ptr noundef nonnull %856)
  br label %1205

857:                                              ; preds = %365
  %858 = load ptr, ptr %317, align 8, !tbaa !84
  %859 = load i8, ptr %858, align 1, !tbaa !57
  switch i8 %859, label %926 [
    i8 42, label %860
    i8 47, label %865
    i8 61, label %923
  ], !prof !231

860:                                              ; preds = %857
  %861 = call zeroext i8 @_cpp_skip_block_comment(ptr noundef nonnull %0)
  %862 = icmp eq i8 %861, 0
  br i1 %862, label %928, label %863, !prof !111

863:                                              ; preds = %860
  %864 = call zeroext i8 (ptr, i32, ptr, ...) @cpp_error(ptr noundef nonnull %0, i32 noundef 3, ptr noundef nonnull @.str.5) #20
  br label %928

865:                                              ; preds = %857
  %866 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 53, i32 3
  %867 = load i8, ptr %866, align 1, !tbaa !232
  %868 = icmp eq i8 %867, 0
  br i1 %868, label %869, label %879

869:                                              ; preds = %865
  %870 = load ptr, ptr %0, align 8, !tbaa !62
  %871 = icmp eq ptr %870, null
  br i1 %871, label %876, label %872

872:                                              ; preds = %869
  %873 = getelementptr inbounds %struct.cpp_buffer, ptr %870, i64 0, i32 15
  %874 = load i8, ptr %873, align 2, !tbaa !233
  %875 = zext i8 %874 to i32
  br label %876

876:                                              ; preds = %872, %869
  %877 = phi i32 [ %875, %872 ], [ 0, %869 ]
  %878 = icmp eq i32 %877, 0
  br i1 %878, label %921, label %879

879:                                              ; preds = %876, %865
  %880 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 53, i32 1
  %881 = load i32, ptr %880, align 4, !tbaa !234
  %882 = icmp eq i32 %881, 0
  br i1 %882, label %883, label %897

883:                                              ; preds = %879
  %884 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 53, i32 31
  %885 = load i8, ptr %884, align 1, !tbaa !182
  %886 = icmp eq i8 %885, 0
  br i1 %886, label %897, label %887

887:                                              ; preds = %883
  %888 = getelementptr inbounds %struct.cpp_buffer, ptr %317, i64 0, i32 14
  %889 = load i8, ptr %888, align 1
  %890 = and i8 %889, 1
  %891 = icmp eq i8 %890, 0
  br i1 %891, label %892, label %897

892:                                              ; preds = %887
  %893 = call zeroext i8 (ptr, i32, ptr, ...) @cpp_error(ptr noundef nonnull %0, i32 noundef 2, ptr noundef nonnull @.str.6) #20
  %894 = call zeroext i8 (ptr, i32, ptr, ...) @cpp_error(ptr noundef nonnull %0, i32 noundef 2, ptr noundef nonnull @.str.7) #20
  %895 = load i8, ptr %888, align 1
  %896 = or i8 %895, 1
  store i8 %896, ptr %888, align 1
  br label %897

897:                                              ; preds = %892, %887, %883, %879
  %898 = load ptr, ptr %0, align 8, !tbaa !62
  %899 = load ptr, ptr %47, align 8, !tbaa !112
  %900 = getelementptr inbounds %struct.line_maps, ptr %899, i64 0, i32 8
  %901 = load i32, ptr %900, align 4, !tbaa !113
  %902 = load ptr, ptr %898, align 8, !tbaa !84
  %903 = load i8, ptr %902, align 1, !tbaa !57
  %904 = icmp eq i8 %903, 10
  br i1 %904, label %910, label %905

905:                                              ; preds = %897, %905
  %906 = phi ptr [ %907, %905 ], [ %902, %897 ]
  %907 = getelementptr inbounds i8, ptr %906, i64 1
  store ptr %907, ptr %898, align 8, !tbaa !84
  %908 = load i8, ptr %907, align 1, !tbaa !57
  %909 = icmp eq i8 %908, 10
  br i1 %909, label %910, label %905, !llvm.loop !235

910:                                              ; preds = %905, %897
  call void @_cpp_process_line_notes(ptr noundef nonnull %0, i32 noundef 1)
  %911 = load ptr, ptr %47, align 8, !tbaa !112
  %912 = getelementptr inbounds %struct.line_maps, ptr %911, i64 0, i32 8
  %913 = load i32, ptr %912, align 4, !tbaa !113
  %914 = icmp eq i32 %901, %913
  br i1 %914, label %928, label %915

915:                                              ; preds = %910
  %916 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 53, i32 13
  %917 = load i8, ptr %916, align 1, !tbaa !126
  %918 = icmp eq i8 %917, 0
  br i1 %918, label %928, label %919

919:                                              ; preds = %915
  %920 = call zeroext i8 (ptr, i32, ptr, ...) @cpp_error(ptr noundef nonnull %0, i32 noundef 0, ptr noundef nonnull @.str.8) #20
  br label %928

921:                                              ; preds = %876
  %922 = icmp eq i8 %859, 61
  br i1 %922, label %923, label %926

923:                                              ; preds = %857, %921
  %924 = getelementptr inbounds i8, ptr %858, i64 1
  store ptr %924, ptr %317, align 8, !tbaa !84
  %925 = getelementptr inbounds %struct.cpp_token, ptr %316, i64 0, i32 1
  store i8 30, ptr %925, align 4
  br label %1205

926:                                              ; preds = %857, %921
  %927 = getelementptr inbounds %struct.cpp_token, ptr %316, i64 0, i32 1
  store i8 7, ptr %927, align 4
  br label %1205

928:                                              ; preds = %919, %915, %910, %863, %860
  %929 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 2, i32 5
  %930 = load i8, ptr %929, align 1, !tbaa !236
  %931 = icmp eq i8 %930, 0
  br i1 %931, label %932, label %935, !prof !111

932:                                              ; preds = %928
  %933 = load i16, ptr %321, align 2, !tbaa !154
  %934 = or i16 %933, 1
  store i16 %934, ptr %321, align 2, !tbaa !154
  br label %322

935:                                              ; preds = %928
  %936 = zext i8 %859 to i32
  call fastcc void @save_comment(ptr noundef nonnull %0, ptr noundef nonnull %316, ptr noundef nonnull %858, i32 noundef %936)
  br label %1205

937:                                              ; preds = %365
  %938 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 2, i32 3
  %939 = load i8, ptr %938, align 1, !tbaa !237
  %940 = icmp eq i8 %939, 0
  br i1 %940, label %947, label %941, !prof !238

941:                                              ; preds = %937
  %942 = load ptr, ptr %317, align 8, !tbaa !84
  %943 = getelementptr inbounds i8, ptr %942, i64 -1
  call fastcc void @lex_string(ptr noundef nonnull %0, ptr noundef nonnull %316, ptr noundef nonnull %943)
  %944 = getelementptr inbounds %struct.cpp_token, ptr %316, i64 0, i32 1
  %945 = load i8, ptr %944, align 4
  %946 = icmp eq i8 %945, 3
  br i1 %946, label %947, label %1205

947:                                              ; preds = %941, %937
  %948 = getelementptr inbounds %struct.cpp_token, ptr %316, i64 0, i32 1
  store i8 3, ptr %948, align 4
  %949 = load ptr, ptr %317, align 8, !tbaa !84
  %950 = load i8, ptr %949, align 1, !tbaa !57
  switch i8 %950, label %960 [
    i8 61, label %951
    i8 60, label %953
  ], !prof !239

951:                                              ; preds = %947
  %952 = getelementptr inbounds i8, ptr %949, i64 1
  store ptr %952, ptr %317, align 8, !tbaa !84
  store i8 26, ptr %948, align 4
  br label %1205

953:                                              ; preds = %947
  %954 = getelementptr inbounds i8, ptr %949, i64 1
  store ptr %954, ptr %317, align 8, !tbaa !84
  store i8 13, ptr %948, align 4
  %955 = load ptr, ptr %317, align 8, !tbaa !84
  %956 = load i8, ptr %955, align 1, !tbaa !57
  %957 = icmp eq i8 %956, 61
  br i1 %957, label %958, label %1205, !prof !240

958:                                              ; preds = %953
  %959 = getelementptr inbounds i8, ptr %955, i64 1
  store ptr %959, ptr %317, align 8, !tbaa !84
  store i8 36, ptr %948, align 4
  br label %1205

960:                                              ; preds = %947
  %961 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 53, i32 8
  %962 = load i8, ptr %961, align 2, !tbaa !241
  %963 = icmp eq i8 %962, 0
  br i1 %963, label %1205, label %964, !prof !242

964:                                              ; preds = %960
  switch i8 %950, label %1205 [
    i8 58, label %965
    i8 37, label %969
  ], !prof !243

965:                                              ; preds = %964
  %966 = getelementptr inbounds i8, ptr %949, i64 1
  store ptr %966, ptr %317, align 8, !tbaa !84
  %967 = load i16, ptr %321, align 2, !tbaa !154
  %968 = or i16 %967, 2
  store i16 %968, ptr %321, align 2, !tbaa !154
  store i8 39, ptr %948, align 4
  br label %1205

969:                                              ; preds = %964
  %970 = getelementptr inbounds i8, ptr %949, i64 1
  store ptr %970, ptr %317, align 8, !tbaa !84
  %971 = load i16, ptr %321, align 2, !tbaa !154
  %972 = or i16 %971, 2
  store i16 %972, ptr %321, align 2, !tbaa !154
  store i8 41, ptr %948, align 4
  br label %1205

973:                                              ; preds = %365
  %974 = getelementptr inbounds %struct.cpp_token, ptr %316, i64 0, i32 1
  store i8 2, ptr %974, align 4
  %975 = load ptr, ptr %317, align 8, !tbaa !84
  %976 = load i8, ptr %975, align 1, !tbaa !57
  switch i8 %976, label %1205 [
    i8 61, label %977
    i8 62, label %979
  ], !prof !244

977:                                              ; preds = %973
  %978 = getelementptr inbounds i8, ptr %975, i64 1
  store ptr %978, ptr %317, align 8, !tbaa !84
  store i8 25, ptr %974, align 4
  br label %1205

979:                                              ; preds = %973
  %980 = getelementptr inbounds i8, ptr %975, i64 1
  store ptr %980, ptr %317, align 8, !tbaa !84
  store i8 12, ptr %974, align 4
  %981 = load ptr, ptr %317, align 8, !tbaa !84
  %982 = load i8, ptr %981, align 1, !tbaa !57
  %983 = icmp eq i8 %982, 61
  br i1 %983, label %984, label %1205, !prof !245

984:                                              ; preds = %979
  %985 = getelementptr inbounds i8, ptr %981, i64 1
  store ptr %985, ptr %317, align 8, !tbaa !84
  store i8 35, ptr %974, align 4
  br label %1205

986:                                              ; preds = %365
  %987 = getelementptr inbounds %struct.cpp_token, ptr %316, i64 0, i32 1
  store i8 8, ptr %987, align 4
  %988 = load ptr, ptr %317, align 8, !tbaa !84
  %989 = load i8, ptr %988, align 1, !tbaa !57
  %990 = icmp eq i8 %989, 61
  br i1 %990, label %991, label %993, !prof !246

991:                                              ; preds = %986
  %992 = getelementptr inbounds i8, ptr %988, i64 1
  store ptr %992, ptr %317, align 8, !tbaa !84
  store i8 31, ptr %987, align 4
  br label %1205

993:                                              ; preds = %986
  %994 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 53, i32 8
  %995 = load i8, ptr %994, align 2, !tbaa !241
  %996 = icmp eq i8 %995, 0
  br i1 %996, label %1205, label %997, !prof !246

997:                                              ; preds = %993
  switch i8 %989, label %1205 [
    i8 58, label %998
    i8 62, label %1012
  ], !prof !247

998:                                              ; preds = %997
  %999 = getelementptr inbounds i8, ptr %988, i64 1
  store ptr %999, ptr %317, align 8, !tbaa !84
  %1000 = load i16, ptr %321, align 2, !tbaa !154
  %1001 = or i16 %1000, 2
  store i16 %1001, ptr %321, align 2, !tbaa !154
  store i8 37, ptr %987, align 4
  %1002 = load ptr, ptr %317, align 8, !tbaa !84
  %1003 = load i8, ptr %1002, align 1, !tbaa !57
  %1004 = icmp eq i8 %1003, 37
  br i1 %1004, label %1005, label %1205

1005:                                             ; preds = %998
  %1006 = getelementptr inbounds i8, ptr %1002, i64 1
  %1007 = load i8, ptr %1006, align 1, !tbaa !57
  %1008 = icmp eq i8 %1007, 58
  br i1 %1008, label %1009, label %1205

1009:                                             ; preds = %1005
  %1010 = getelementptr inbounds i8, ptr %1002, i64 2
  store ptr %1010, ptr %317, align 8, !tbaa !84
  store i8 38, ptr %987, align 4
  %1011 = getelementptr inbounds %struct.cpp_token, ptr %316, i64 0, i32 3
  store i32 0, ptr %1011, align 8, !tbaa !57
  br label %1205

1012:                                             ; preds = %997
  %1013 = getelementptr inbounds i8, ptr %988, i64 1
  store ptr %1013, ptr %317, align 8, !tbaa !84
  %1014 = load i16, ptr %321, align 2, !tbaa !154
  %1015 = or i16 %1014, 2
  store i16 %1015, ptr %321, align 2, !tbaa !154
  store i8 42, ptr %987, align 4
  br label %1205

1016:                                             ; preds = %365
  %1017 = getelementptr inbounds %struct.cpp_token, ptr %316, i64 0, i32 1
  store i8 48, ptr %1017, align 4
  %1018 = load ptr, ptr %317, align 8, !tbaa !84
  %1019 = load i8, ptr %1018, align 1, !tbaa !57
  %1020 = zext i8 %1019 to i64
  %1021 = getelementptr inbounds [256 x i16], ptr @_sch_istable, i64 0, i64 %1020
  %1022 = load i16, ptr %1021, align 2, !tbaa !93
  %1023 = and i16 %1022, 4
  %1024 = icmp eq i16 %1023, 0
  br i1 %1024, label %1027, label %1025, !prof !248

1025:                                             ; preds = %1016
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %4) #20
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %4, i8 0, i64 12, i1 false)
  store i8 55, ptr %1017, align 4
  %1026 = getelementptr inbounds %struct.cpp_token, ptr %316, i64 0, i32 3
  call fastcc void @lex_number(ptr noundef nonnull %0, ptr noundef nonnull %1026, ptr noundef nonnull %4)
  call fastcc void @warn_about_normalization(ptr noundef nonnull %0, ptr noundef nonnull %316, ptr noundef nonnull %4)
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %4) #20
  br label %1205

1027:                                             ; preds = %1016
  switch i8 %1019, label %1205 [
    i8 46, label %1028
    i8 42, label %1036
  ], !prof !249

1028:                                             ; preds = %1027
  %1029 = getelementptr inbounds i8, ptr %1018, i64 1
  %1030 = load i8, ptr %1029, align 1, !tbaa !57
  %1031 = icmp eq i8 %1030, 46
  br i1 %1031, label %1032, label %1034, !prof !250

1032:                                             ; preds = %1028
  %1033 = getelementptr inbounds i8, ptr %1018, i64 2
  store ptr %1033, ptr %317, align 8, !tbaa !84
  store i8 44, ptr %1017, align 4
  br label %1205

1034:                                             ; preds = %1028
  %1035 = icmp eq i8 %1019, 42
  br i1 %1035, label %1036, label %1205, !prof !251

1036:                                             ; preds = %1034, %1027
  %1037 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 53, i32 2
  %1038 = load i8, ptr %1037, align 8, !tbaa !252
  %1039 = icmp eq i8 %1038, 0
  br i1 %1039, label %1205, label %1040

1040:                                             ; preds = %1036
  %1041 = getelementptr inbounds i8, ptr %1018, i64 1
  store ptr %1041, ptr %317, align 8, !tbaa !84
  store i8 51, ptr %1017, align 4
  br label %1205

1042:                                             ; preds = %365
  %1043 = getelementptr inbounds %struct.cpp_token, ptr %316, i64 0, i32 1
  store i8 4, ptr %1043, align 4
  %1044 = load ptr, ptr %317, align 8, !tbaa !84
  %1045 = load i8, ptr %1044, align 1, !tbaa !57
  switch i8 %1045, label %1205 [
    i8 43, label %1046
    i8 61, label %1048
  ], !prof !253

1046:                                             ; preds = %1042
  %1047 = getelementptr inbounds i8, ptr %1044, i64 1
  store ptr %1047, ptr %317, align 8, !tbaa !84
  store i8 45, ptr %1043, align 4
  br label %1205

1048:                                             ; preds = %1042
  %1049 = getelementptr inbounds i8, ptr %1044, i64 1
  store ptr %1049, ptr %317, align 8, !tbaa !84
  store i8 27, ptr %1043, align 4
  br label %1205

1050:                                             ; preds = %365
  %1051 = getelementptr inbounds %struct.cpp_token, ptr %316, i64 0, i32 1
  store i8 5, ptr %1051, align 4
  %1052 = load ptr, ptr %317, align 8, !tbaa !84
  %1053 = load i8, ptr %1052, align 1, !tbaa !57
  switch i8 %1053, label %1205 [
    i8 62, label %1054
    i8 45, label %1065
    i8 61, label %1067
  ], !prof !254

1054:                                             ; preds = %1050
  %1055 = getelementptr inbounds i8, ptr %1052, i64 1
  store ptr %1055, ptr %317, align 8, !tbaa !84
  store i8 47, ptr %1051, align 4
  %1056 = load ptr, ptr %317, align 8, !tbaa !84
  %1057 = load i8, ptr %1056, align 1, !tbaa !57
  %1058 = icmp eq i8 %1057, 42
  br i1 %1058, label %1059, label %1205, !prof !255

1059:                                             ; preds = %1054
  %1060 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 53, i32 2
  %1061 = load i8, ptr %1060, align 8, !tbaa !252
  %1062 = icmp eq i8 %1061, 0
  br i1 %1062, label %1205, label %1063

1063:                                             ; preds = %1059
  %1064 = getelementptr inbounds i8, ptr %1056, i64 1
  store ptr %1064, ptr %317, align 8, !tbaa !84
  store i8 50, ptr %1051, align 4
  br label %1205

1065:                                             ; preds = %1050
  %1066 = getelementptr inbounds i8, ptr %1052, i64 1
  store ptr %1066, ptr %317, align 8, !tbaa !84
  store i8 46, ptr %1051, align 4
  br label %1205

1067:                                             ; preds = %1050
  %1068 = getelementptr inbounds i8, ptr %1052, i64 1
  store ptr %1068, ptr %317, align 8, !tbaa !84
  store i8 28, ptr %1051, align 4
  br label %1205

1069:                                             ; preds = %365
  %1070 = getelementptr inbounds %struct.cpp_token, ptr %316, i64 0, i32 1
  store i8 9, ptr %1070, align 4
  %1071 = load ptr, ptr %317, align 8, !tbaa !84
  %1072 = load i8, ptr %1071, align 1, !tbaa !57
  switch i8 %1072, label %1205 [
    i8 38, label %1073
    i8 61, label %1075
  ], !prof !256

1073:                                             ; preds = %1069
  %1074 = getelementptr inbounds i8, ptr %1071, i64 1
  store ptr %1074, ptr %317, align 8, !tbaa !84
  store i8 15, ptr %1070, align 4
  br label %1205

1075:                                             ; preds = %1069
  %1076 = getelementptr inbounds i8, ptr %1071, i64 1
  store ptr %1076, ptr %317, align 8, !tbaa !84
  store i8 32, ptr %1070, align 4
  br label %1205

1077:                                             ; preds = %365
  %1078 = getelementptr inbounds %struct.cpp_token, ptr %316, i64 0, i32 1
  store i8 10, ptr %1078, align 4
  %1079 = load ptr, ptr %317, align 8, !tbaa !84
  %1080 = load i8, ptr %1079, align 1, !tbaa !57
  switch i8 %1080, label %1205 [
    i8 124, label %1081
    i8 61, label %1083
  ], !prof !257

1081:                                             ; preds = %1077
  %1082 = getelementptr inbounds i8, ptr %1079, i64 1
  store ptr %1082, ptr %317, align 8, !tbaa !84
  store i8 16, ptr %1078, align 4
  br label %1205

1083:                                             ; preds = %1077
  %1084 = getelementptr inbounds i8, ptr %1079, i64 1
  store ptr %1084, ptr %317, align 8, !tbaa !84
  store i8 33, ptr %1078, align 4
  br label %1205

1085:                                             ; preds = %365
  %1086 = getelementptr inbounds %struct.cpp_token, ptr %316, i64 0, i32 1
  store i8 18, ptr %1086, align 4
  %1087 = load ptr, ptr %317, align 8, !tbaa !84
  %1088 = load i8, ptr %1087, align 1, !tbaa !57
  switch i8 %1088, label %1205 [
    i8 58, label %1089
    i8 62, label %1097
  ], !prof !258

1089:                                             ; preds = %1085
  %1090 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 53, i32 2
  %1091 = load i8, ptr %1090, align 8, !tbaa !252
  %1092 = icmp eq i8 %1091, 0
  br i1 %1092, label %1095, label %1093

1093:                                             ; preds = %1089
  %1094 = getelementptr inbounds i8, ptr %1087, i64 1
  store ptr %1094, ptr %317, align 8, !tbaa !84
  store i8 49, ptr %1086, align 4
  br label %1205

1095:                                             ; preds = %1089
  %1096 = icmp eq i8 %1088, 62
  br i1 %1096, label %1097, label %1205, !prof !259

1097:                                             ; preds = %1095, %1085
  %1098 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 53, i32 8
  %1099 = load i8, ptr %1098, align 2, !tbaa !241
  %1100 = icmp eq i8 %1099, 0
  br i1 %1100, label %1205, label %1101

1101:                                             ; preds = %1097
  %1102 = getelementptr inbounds i8, ptr %1087, i64 1
  store ptr %1102, ptr %317, align 8, !tbaa !84
  %1103 = load i16, ptr %321, align 2, !tbaa !154
  %1104 = or i16 %1103, 2
  store i16 %1104, ptr %321, align 2, !tbaa !154
  store i8 40, ptr %1086, align 4
  br label %1205

1105:                                             ; preds = %365
  %1106 = getelementptr inbounds %struct.cpp_token, ptr %316, i64 0, i32 1
  store i8 6, ptr %1106, align 4
  %1107 = load ptr, ptr %317, align 8, !tbaa !84
  %1108 = load i8, ptr %1107, align 1, !tbaa !57
  %1109 = icmp eq i8 %1108, 61
  br i1 %1109, label %1110, label %1205, !prof !260

1110:                                             ; preds = %1105
  %1111 = getelementptr inbounds i8, ptr %1107, i64 1
  store ptr %1111, ptr %317, align 8, !tbaa !84
  store i8 29, ptr %1106, align 4
  br label %1205

1112:                                             ; preds = %365
  %1113 = getelementptr inbounds %struct.cpp_token, ptr %316, i64 0, i32 1
  store i8 0, ptr %1113, align 4
  %1114 = load ptr, ptr %317, align 8, !tbaa !84
  %1115 = load i8, ptr %1114, align 1, !tbaa !57
  %1116 = icmp eq i8 %1115, 61
  br i1 %1116, label %1117, label %1205, !prof !261

1117:                                             ; preds = %1112
  %1118 = getelementptr inbounds i8, ptr %1114, i64 1
  store ptr %1118, ptr %317, align 8, !tbaa !84
  store i8 23, ptr %1113, align 4
  br label %1205

1119:                                             ; preds = %365
  %1120 = getelementptr inbounds %struct.cpp_token, ptr %316, i64 0, i32 1
  store i8 1, ptr %1120, align 4
  %1121 = load ptr, ptr %317, align 8, !tbaa !84
  %1122 = load i8, ptr %1121, align 1, !tbaa !57
  %1123 = icmp eq i8 %1122, 61
  br i1 %1123, label %1124, label %1205, !prof !262

1124:                                             ; preds = %1119
  %1125 = getelementptr inbounds i8, ptr %1121, i64 1
  store ptr %1125, ptr %317, align 8, !tbaa !84
  store i8 24, ptr %1120, align 4
  br label %1205

1126:                                             ; preds = %365
  %1127 = getelementptr inbounds %struct.cpp_token, ptr %316, i64 0, i32 1
  store i8 11, ptr %1127, align 4
  %1128 = load ptr, ptr %317, align 8, !tbaa !84
  %1129 = load i8, ptr %1128, align 1, !tbaa !57
  %1130 = icmp eq i8 %1129, 61
  br i1 %1130, label %1131, label %1205

1131:                                             ; preds = %1126
  %1132 = getelementptr inbounds i8, ptr %1128, i64 1
  store ptr %1132, ptr %317, align 8, !tbaa !84
  store i8 34, ptr %1127, align 4
  br label %1205

1133:                                             ; preds = %365
  %1134 = getelementptr inbounds %struct.cpp_token, ptr %316, i64 0, i32 1
  store i8 37, ptr %1134, align 4
  %1135 = load ptr, ptr %317, align 8, !tbaa !84
  %1136 = load i8, ptr %1135, align 1, !tbaa !57
  %1137 = icmp eq i8 %1136, 35
  br i1 %1137, label %1138, label %1140, !prof !263

1138:                                             ; preds = %1133
  %1139 = getelementptr inbounds i8, ptr %1135, i64 1
  store ptr %1139, ptr %317, align 8, !tbaa !84
  store i8 38, ptr %1134, align 4
  br label %1140

1140:                                             ; preds = %1138, %1133
  %1141 = getelementptr inbounds %struct.cpp_token, ptr %316, i64 0, i32 3
  store i32 0, ptr %1141, align 8, !tbaa !57
  br label %1205

1142:                                             ; preds = %365
  %1143 = getelementptr inbounds %struct.cpp_token, ptr %316, i64 0, i32 1
  store i8 17, ptr %1143, align 4
  br label %1205

1144:                                             ; preds = %365
  %1145 = getelementptr inbounds %struct.cpp_token, ptr %316, i64 0, i32 1
  store i8 14, ptr %1145, align 4
  br label %1205

1146:                                             ; preds = %365
  %1147 = getelementptr inbounds %struct.cpp_token, ptr %316, i64 0, i32 1
  store i8 19, ptr %1147, align 4
  br label %1205

1148:                                             ; preds = %365
  %1149 = getelementptr inbounds %struct.cpp_token, ptr %316, i64 0, i32 1
  store i8 20, ptr %1149, align 4
  br label %1205

1150:                                             ; preds = %365
  %1151 = getelementptr inbounds %struct.cpp_token, ptr %316, i64 0, i32 1
  store i8 21, ptr %1151, align 4
  br label %1205

1152:                                             ; preds = %365
  %1153 = getelementptr inbounds %struct.cpp_token, ptr %316, i64 0, i32 1
  store i8 39, ptr %1153, align 4
  br label %1205

1154:                                             ; preds = %365
  %1155 = getelementptr inbounds %struct.cpp_token, ptr %316, i64 0, i32 1
  store i8 40, ptr %1155, align 4
  br label %1205

1156:                                             ; preds = %365
  %1157 = getelementptr inbounds %struct.cpp_token, ptr %316, i64 0, i32 1
  store i8 41, ptr %1157, align 4
  br label %1205

1158:                                             ; preds = %365
  %1159 = getelementptr inbounds %struct.cpp_token, ptr %316, i64 0, i32 1
  store i8 42, ptr %1159, align 4
  br label %1205

1160:                                             ; preds = %365
  %1161 = getelementptr inbounds %struct.cpp_token, ptr %316, i64 0, i32 1
  store i8 43, ptr %1161, align 4
  br label %1205

1162:                                             ; preds = %365
  %1163 = getelementptr inbounds %struct.cpp_token, ptr %316, i64 0, i32 1
  store i8 52, ptr %1163, align 4
  br label %1205

1164:                                             ; preds = %365, %365
  %1165 = load ptr, ptr %317, align 8, !tbaa !84
  %1166 = getelementptr inbounds i8, ptr %1165, i64 -1
  store ptr %1166, ptr %317, align 8, !tbaa !84
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %5) #20
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %5, i8 0, i64 12, i1 false)
  %1167 = call fastcc zeroext i8 @forms_identifier_p(ptr noundef nonnull %0, i32 noundef 1, ptr noundef nonnull %5), !range !228
  %1168 = icmp eq i8 %1167, 0
  br i1 %1168, label %1173, label %1169

1169:                                             ; preds = %1164
  %1170 = getelementptr inbounds %struct.cpp_token, ptr %316, i64 0, i32 1
  store i8 53, ptr %1170, align 4
  %1171 = call fastcc ptr @lex_identifier(ptr noundef nonnull %0, ptr noundef nonnull %1166, i8 noundef zeroext 1, ptr noundef nonnull %5)
  %1172 = getelementptr inbounds %struct.cpp_token, ptr %316, i64 0, i32 3
  store ptr %1171, ptr %1172, align 8, !tbaa !57
  call fastcc void @warn_about_normalization(ptr noundef nonnull %0, ptr noundef nonnull %316, ptr noundef nonnull %5)
  br label %1176

1173:                                             ; preds = %1164
  %1174 = load ptr, ptr %317, align 8, !tbaa !84
  %1175 = getelementptr inbounds i8, ptr %1174, i64 1
  store ptr %1175, ptr %317, align 8, !tbaa !84
  br label %1176

1176:                                             ; preds = %1173, %1169
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %5) #20
  br i1 %1168, label %1177, label %1205

1177:                                             ; preds = %365, %1176
  %1178 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 6
  %1179 = load ptr, ptr %317, align 8, !tbaa !84
  %1180 = getelementptr inbounds i8, ptr %1179, i64 -1
  %1181 = load ptr, ptr %1178, align 8, !tbaa !202
  %1182 = getelementptr inbounds %struct._cpp_buff, ptr %1181, i64 0, i32 2
  %1183 = load ptr, ptr %1182, align 8, !tbaa !203
  %1184 = getelementptr inbounds %struct._cpp_buff, ptr %1181, i64 0, i32 3
  %1185 = load ptr, ptr %1184, align 8, !tbaa !205
  %1186 = ptrtoint ptr %1185 to i64
  %1187 = ptrtoint ptr %1183 to i64
  %1188 = sub i64 %1186, %1187
  %1189 = icmp ult i64 %1188, 2
  br i1 %1189, label %1190, label %1195

1190:                                             ; preds = %1177
  %1191 = call ptr @_cpp_get_buff(ptr noundef %0, i64 noundef 2)
  %1192 = load ptr, ptr %1178, align 8, !tbaa !202
  store ptr %1192, ptr %1191, align 8, !tbaa !209
  store ptr %1191, ptr %1178, align 8, !tbaa !202
  %1193 = getelementptr inbounds %struct._cpp_buff, ptr %1191, i64 0, i32 2
  %1194 = load ptr, ptr %1193, align 8, !tbaa !203
  br label %1195

1195:                                             ; preds = %1190, %1177
  %1196 = phi ptr [ %1191, %1190 ], [ %1181, %1177 ]
  %1197 = phi ptr [ %1194, %1190 ], [ %1183, %1177 ]
  %1198 = getelementptr inbounds i8, ptr %1197, i64 2
  %1199 = getelementptr inbounds %struct._cpp_buff, ptr %1196, i64 0, i32 2
  store ptr %1198, ptr %1199, align 8, !tbaa !203
  %1200 = load i8, ptr %1180, align 1
  store i8 %1200, ptr %1197, align 1
  %1201 = getelementptr inbounds i8, ptr %1197, i64 1
  store i8 0, ptr %1201, align 1, !tbaa !57
  %1202 = getelementptr inbounds %struct.cpp_token, ptr %316, i64 0, i32 1
  store i8 60, ptr %1202, align 4
  %1203 = getelementptr inbounds %struct.cpp_token, ptr %316, i64 0, i32 3
  store i32 1, ptr %1203, align 8, !tbaa !57
  %1204 = getelementptr inbounds %struct.cpp_token, ptr %316, i64 0, i32 3, i32 0, i32 1
  store ptr %1197, ptr %1204, align 8, !tbaa !57
  br label %1205

1205:                                             ; preds = %1195, %1176, %1162, %1160, %1158, %1156, %1154, %1152, %1150, %1148, %1146, %1144, %1142, %1140, %1131, %1126, %1124, %1119, %1117, %1112, %1110, %1105, %1101, %1097, %1095, %1093, %1085, %1083, %1081, %1077, %1075, %1073, %1069, %1067, %1065, %1063, %1059, %1054, %1050, %1048, %1046, %1042, %1040, %1036, %1034, %1032, %1027, %1025, %1012, %1009, %1005, %998, %997, %993, %991, %984, %979, %977, %973, %969, %965, %964, %960, %958, %953, %951, %941, %935, %926, %923, %854, %848, %842, %658, %621, %295, %291, %65, %60, %43
  %1206 = phi ptr [ %29, %43 ], [ %50, %65 ], [ %50, %60 ], [ %50, %295 ], [ %50, %291 ], [ %316, %1176 ], [ %316, %1077 ], [ %316, %1069 ], [ %316, %1050 ], [ %316, %1042 ], [ %316, %997 ], [ %316, %973 ], [ %316, %964 ], [ %316, %1126 ], [ %316, %1131 ], [ %316, %1119 ], [ %316, %1124 ], [ %316, %1112 ], [ %316, %1117 ], [ %316, %1105 ], [ %316, %1110 ], [ %316, %1093 ], [ %316, %1101 ], [ %316, %1097 ], [ %316, %1095 ], [ %316, %1081 ], [ %316, %1083 ], [ %316, %1073 ], [ %316, %1075 ], [ %316, %1063 ], [ %316, %1059 ], [ %316, %1054 ], [ %316, %1067 ], [ %316, %1065 ], [ %316, %1046 ], [ %316, %1048 ], [ %316, %1025 ], [ %316, %1034 ], [ %316, %1036 ], [ %316, %1040 ], [ %316, %1032 ], [ %316, %991 ], [ %316, %1009 ], [ %316, %1005 ], [ %316, %998 ], [ %316, %1012 ], [ %316, %993 ], [ %316, %977 ], [ %316, %979 ], [ %316, %984 ], [ %316, %951 ], [ %316, %960 ], [ %316, %969 ], [ %316, %965 ], [ %316, %953 ], [ %316, %958 ], [ %316, %941 ], [ %316, %842 ], [ %316, %848 ], [ %316, %1195 ], [ %316, %1162 ], [ %316, %1160 ], [ %316, %1158 ], [ %316, %1156 ], [ %316, %1154 ], [ %316, %1152 ], [ %316, %1150 ], [ %316, %1148 ], [ %316, %1146 ], [ %316, %1144 ], [ %316, %1142 ], [ %316, %1140 ], [ %316, %935 ], [ %316, %926 ], [ %316, %923 ], [ %316, %854 ], [ %316, %658 ], [ %316, %621 ], [ %316, %1027 ], [ %316, %1085 ]
  %1207 = getelementptr inbounds %struct.cpp_token, ptr %1206, i64 0, i32 2
  %1208 = load i16, ptr %1207, align 2, !tbaa !154
  %1209 = zext i16 %1208 to i32
  %1210 = and i32 %1209, 64
  %1211 = icmp eq i32 %1210, 0
  br i1 %1211, label %1249, label %1212, !prof !264

1212:                                             ; preds = %1205
  %1213 = getelementptr inbounds %struct.cpp_token, ptr %1206, i64 0, i32 1
  %1214 = load i8, ptr %1213, align 4
  %1215 = icmp eq i8 %1214, 37
  br i1 %1215, label %1216, label %1230, !prof !265

1216:                                             ; preds = %1212
  %1217 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 2, i32 9
  %1218 = load i8, ptr %1217, align 1, !tbaa !164
  %1219 = icmp eq i8 %1218, 1
  br i1 %1219, label %1230, label %1220

1220:                                             ; preds = %1216
  %1221 = and i32 %1209, 1
  %1222 = call i32 @_cpp_handle_directive(ptr noundef %0, i32 noundef %1221) #20
  %1223 = icmp eq i32 %1222, 0
  br i1 %1223, label %1236, label %1224

1224:                                             ; preds = %1220
  %1225 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 11, i32 1
  %1226 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 11
  %1227 = load i8, ptr %1225, align 4
  %1228 = icmp eq i8 %1227, 72
  br i1 %1228, label %1229, label %1236

1229:                                             ; preds = %1224, %1263
  br label %8, !llvm.loop !266

1230:                                             ; preds = %1216, %1212
  %1231 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 2, i32 12
  %1232 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 11
  %1233 = load i8, ptr %1231, align 8, !tbaa !156
  %1234 = icmp eq i8 %1233, 0
  %1235 = select i1 %1234, ptr %1206, ptr %1232, !prof !267
  br label %1236

1236:                                             ; preds = %1224, %1230, %1220
  %1237 = phi ptr [ %1206, %1220 ], [ %1235, %1230 ], [ %1226, %1224 ]
  %1238 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 49
  %1239 = load ptr, ptr %1238, align 8, !tbaa !268
  %1240 = icmp eq ptr %1239, null
  br i1 %1240, label %1249, label %1241, !prof !265

1241:                                             ; preds = %1236
  %1242 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 2, i32 2
  %1243 = load i8, ptr %1242, align 2, !tbaa !130
  %1244 = icmp eq i8 %1243, 0
  br i1 %1244, label %1245, label %1249, !prof !267

1245:                                             ; preds = %1241
  %1246 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 2, i32 9
  %1247 = load i8, ptr %1246, align 1, !tbaa !164
  %1248 = zext i8 %1247 to i32
  call void %1239(ptr noundef %0, ptr noundef %1237, i32 noundef %1248) #20, !prof !269
  br label %1249

1249:                                             ; preds = %1236, %1241, %1245, %1205
  %1250 = phi ptr [ %1237, %1241 ], [ %1237, %1245 ], [ %1237, %1236 ], [ %1206, %1205 ]
  %1251 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 2
  %1252 = load i8, ptr %1251, align 8, !tbaa !160
  %1253 = icmp eq i8 %1252, 0
  br i1 %1253, label %1254, label %1267, !prof !270

1254:                                             ; preds = %1249
  %1255 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 2, i32 12
  %1256 = load i8, ptr %1255, align 8, !tbaa !156
  %1257 = icmp eq i8 %1256, 0
  br i1 %1257, label %1258, label %1267, !prof !271

1258:                                             ; preds = %1254
  %1259 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 28
  %1260 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 2, i32 2
  store i8 0, ptr %1259, align 8, !tbaa !272
  %1261 = load i8, ptr %1260, align 2, !tbaa !130
  %1262 = icmp eq i8 %1261, 0
  br i1 %1262, label %1267, label %1263, !prof !271

1263:                                             ; preds = %1258
  %1264 = getelementptr inbounds %struct.cpp_token, ptr %1250, i64 0, i32 1
  %1265 = load i8, ptr %1264, align 4
  %1266 = icmp eq i8 %1265, 22
  br i1 %1266, label %1267, label %1229

1267:                                             ; preds = %1258, %1263, %1249, %1254
  ret ptr %1250
}

declare void @_cpp_backup_tokens_direct(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind uwtable
define dso_local noundef ptr @_cpp_temp_token(ptr nocapture noundef %0) local_unnamed_addr #7 !prof !50 {
  %2 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 31
  %3 = load ptr, ptr %2, align 8, !tbaa !146
  %4 = getelementptr inbounds %struct.tokenrun, ptr %3, i64 0, i32 3
  %5 = load ptr, ptr %4, align 8, !tbaa !136
  %6 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 29
  %7 = load ptr, ptr %6, align 8, !tbaa !145
  %8 = ptrtoint ptr %5 to i64
  %9 = ptrtoint ptr %7 to i64
  %10 = sub i64 %8, %9
  %11 = sdiv exact i64 %10, 24
  %12 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 32
  %13 = load i32, ptr %12, align 8, !tbaa !152
  %14 = zext i32 %13 to i64
  %15 = icmp eq i32 %13, 0
  br i1 %15, label %42, label %16

16:                                               ; preds = %1
  %17 = icmp sgt i64 %11, %14
  br i1 %17, label %34, label %18

18:                                               ; preds = %16
  %19 = tail call fastcc ptr @next_tokenrun(ptr noundef %3)
  %20 = icmp slt i64 %11, %14
  br i1 %20, label %21, label %27

21:                                               ; preds = %18
  %22 = getelementptr inbounds %struct.tokenrun, ptr %19, i64 0, i32 2
  %23 = load ptr, ptr %22, align 8, !tbaa !135
  %24 = getelementptr inbounds %struct.cpp_token, ptr %23, i64 1
  %25 = sub nsw i64 %14, %11
  %26 = mul i64 %25, 24
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %24, ptr align 8 %23, i64 %26, i1 false)
  br label %27

27:                                               ; preds = %21, %18
  %28 = getelementptr inbounds %struct.tokenrun, ptr %19, i64 0, i32 2
  %29 = load ptr, ptr %28, align 8, !tbaa !135
  %30 = load ptr, ptr %2, align 8, !tbaa !146
  %31 = getelementptr inbounds %struct.tokenrun, ptr %30, i64 0, i32 3
  %32 = load ptr, ptr %31, align 8, !tbaa !136
  %33 = getelementptr inbounds %struct.cpp_token, ptr %32, i64 -1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %29, ptr noundef nonnull align 8 dereferenceable(24) %33, i64 24, i1 false), !tbaa.struct !273
  br label %34

34:                                               ; preds = %27, %16
  %35 = icmp sgt i64 %10, 24
  br i1 %35, label %36, label %42

36:                                               ; preds = %34
  %37 = load ptr, ptr %6, align 8, !tbaa !145
  %38 = getelementptr inbounds %struct.cpp_token, ptr %37, i64 1
  %39 = add nsw i64 %11, -1
  %40 = tail call i64 @llvm.smin.i64(i64 %39, i64 %14)
  %41 = mul nuw nsw i64 %40, 24
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %38, ptr align 8 %37, i64 %41, i1 false)
  br label %42

42:                                               ; preds = %34, %36, %1
  %43 = icmp eq ptr %5, %7
  br i1 %43, label %44, label %54

44:                                               ; preds = %42
  %45 = load ptr, ptr %6, align 8, !tbaa !145
  %46 = load ptr, ptr %2, align 8, !tbaa !146
  %47 = getelementptr inbounds %struct.tokenrun, ptr %46, i64 0, i32 3
  %48 = load ptr, ptr %47, align 8, !tbaa !136
  %49 = icmp eq ptr %45, %48
  br i1 %49, label %50, label %54

50:                                               ; preds = %44
  %51 = tail call fastcc ptr @next_tokenrun(ptr noundef %46)
  store ptr %51, ptr %2, align 8, !tbaa !146
  %52 = getelementptr inbounds %struct.tokenrun, ptr %51, i64 0, i32 2
  %53 = load ptr, ptr %52, align 8, !tbaa !135
  store ptr %53, ptr %6, align 8, !tbaa !145
  br label %54

54:                                               ; preds = %50, %44, %42
  %55 = getelementptr inbounds %struct.cpp_token, ptr %7, i64 -1
  %56 = load ptr, ptr %6, align 8, !tbaa !145
  %57 = getelementptr inbounds %struct.cpp_token, ptr %56, i64 1
  store ptr %57, ptr %6, align 8, !tbaa !145
  %58 = load i32, ptr %55, align 8, !tbaa !171
  store i32 %58, ptr %56, align 8, !tbaa !171
  ret ptr %56
}

; Function Attrs: nounwind uwtable
define internal fastcc ptr @next_tokenrun(ptr noundef %0) unnamed_addr #5 !prof !50 !PGOFuncName !274 {
  %2 = load ptr, ptr %0, align 8, !tbaa !137
  %3 = icmp eq ptr %2, null
  br i1 %3, label %4, label %11, !prof !148

4:                                                ; preds = %1
  %5 = tail call ptr @xmalloc(i64 noundef 32) #20
  store ptr %5, ptr %0, align 8, !tbaa !137
  %6 = getelementptr inbounds %struct.tokenrun, ptr %5, i64 0, i32 1
  store ptr %0, ptr %6, align 8, !tbaa !149
  %7 = tail call ptr @xmalloc(i64 noundef 6000) #20
  %8 = getelementptr inbounds %struct.tokenrun, ptr %5, i64 0, i32 2
  store ptr %7, ptr %8, align 8, !tbaa !135
  %9 = getelementptr inbounds %struct.cpp_token, ptr %7, i64 250
  %10 = getelementptr inbounds %struct.tokenrun, ptr %5, i64 0, i32 3
  store ptr %9, ptr %10, align 8, !tbaa !136
  store ptr null, ptr %5, align 8, !tbaa !137
  br label %11

11:                                               ; preds = %4, %1
  %12 = load ptr, ptr %0, align 8, !tbaa !137
  ret ptr %12
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr nocapture writeonly, ptr nocapture readonly, i64, i1 immarg) #9

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #9

; Function Attrs: inlinehint nounwind uwtable
define dso_local ptr @_cpp_lex_direct(ptr noundef %0) local_unnamed_addr #3 !prof !275 {
  %2 = alloca %struct.normalize_state, align 4
  %3 = alloca %struct.normalize_state, align 4
  %4 = alloca %struct.normalize_state, align 4
  %5 = alloca %struct.normalize_state, align 4
  %6 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 29
  %7 = load ptr, ptr %6, align 8, !tbaa !145
  %8 = getelementptr inbounds %struct.cpp_token, ptr %7, i64 1
  store ptr %8, ptr %6, align 8, !tbaa !145
  %9 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 2
  %10 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 3
  br label %11

11:                                               ; preds = %405, %1
  %12 = phi ptr [ %7, %1 ], [ %281, %405 ]
  %13 = getelementptr inbounds %struct.cpp_token, ptr %12, i64 0, i32 2
  store i16 0, ptr %13, align 2, !tbaa !154
  %14 = load ptr, ptr %0, align 8, !tbaa !62
  %15 = getelementptr inbounds %struct.cpp_buffer, ptr %14, i64 0, i32 13
  %16 = load i8, ptr %15, align 8, !tbaa !85
  %17 = icmp eq i8 %16, 0
  br i1 %17, label %280, label %18, !prof !155

18:                                               ; preds = %11
  %19 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 2, i32 12
  %20 = load i8, ptr %19, align 8, !tbaa !156
  %21 = icmp eq i8 %20, 0
  br i1 %21, label %32, label %22, !prof !157

22:                                               ; preds = %18
  %23 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 2, i32 12
  %24 = getelementptr inbounds %struct.cpp_token, ptr %12, i64 0, i32 1
  store i8 71, ptr %24, align 4
  store i8 0, ptr %23, align 8, !tbaa !156
  %25 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 2, i32 13
  %26 = load i8, ptr %25, align 1, !tbaa !158
  %27 = icmp eq i8 %26, 0
  br i1 %27, label %28, label %1176

28:                                               ; preds = %22
  %29 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 2, i32 8
  %30 = load i8, ptr %29, align 8, !tbaa !159
  %31 = add i8 %30, -1
  store i8 %31, ptr %29, align 8, !tbaa !159
  br label %1176

32:                                               ; preds = %18
  %33 = load i8, ptr %9, align 8, !tbaa !160
  %34 = icmp eq i8 %33, 0
  br i1 %34, label %35, label %250, !prof !161

35:                                               ; preds = %32, %247
  %36 = phi i8 [ %249, %247 ], [ undef, %32 ]
  %37 = load ptr, ptr %0, align 8, !tbaa !62
  %38 = getelementptr inbounds %struct.cpp_buffer, ptr %37, i64 0, i32 13
  %39 = load i8, ptr %38, align 8, !tbaa !85
  %40 = icmp eq i8 %39, 0
  br i1 %40, label %247, label %41, !prof !162

41:                                               ; preds = %35
  %42 = getelementptr inbounds %struct.cpp_buffer, ptr %37, i64 0, i32 2
  %43 = load ptr, ptr %42, align 8, !tbaa !82
  %44 = getelementptr inbounds %struct.cpp_buffer, ptr %37, i64 0, i32 4
  %45 = load ptr, ptr %44, align 8, !tbaa !90
  %46 = icmp ult ptr %43, %45
  br i1 %46, label %47, label %222, !prof !163

47:                                               ; preds = %41
  %48 = getelementptr inbounds %struct.cpp_buffer, ptr %37, i64 0, i32 7
  store i32 0, ptr %48, align 4, !tbaa !79
  %49 = getelementptr inbounds %struct.cpp_buffer, ptr %37, i64 0, i32 6
  store i32 0, ptr %49, align 8, !tbaa !81
  %50 = getelementptr inbounds %struct.cpp_buffer, ptr %37, i64 0, i32 1
  store ptr %43, ptr %50, align 8, !tbaa !83
  store ptr %43, ptr %37, align 8, !tbaa !84
  store i8 0, ptr %38, align 8, !tbaa !85
  %51 = getelementptr inbounds i8, ptr %43, i64 -1
  %52 = getelementptr inbounds %struct.cpp_buffer, ptr %37, i64 0, i32 14
  %53 = load i8, ptr %52, align 1
  %54 = and i8 %53, 2
  %55 = icmp eq i8 %54, 0
  br i1 %55, label %56, label %186, !prof !86

56:                                               ; preds = %59, %47
  %57 = phi ptr [ %51, %47 ], [ %61, %59 ]
  %58 = phi ptr [ null, %47 ], [ %61, %59 ]
  br label %59

59:                                               ; preds = %120, %56
  %60 = phi ptr [ %57, %56 ], [ %61, %120 ]
  %61 = getelementptr inbounds i8, ptr %60, i64 1
  %62 = load i8, ptr %61, align 1, !tbaa !57
  switch i8 %62, label %120 [
    i8 13, label %63
    i8 10, label %63
    i8 92, label %56
    i8 63, label %98
  ], !prof !87, !llvm.loop !88

63:                                               ; preds = %59, %59
  %64 = load ptr, ptr %44, align 8, !tbaa !90
  %65 = icmp eq ptr %61, %64
  br i1 %65, label %197, label %66, !prof !91

66:                                               ; preds = %63
  %67 = icmp eq i8 %62, 13
  br i1 %67, label %68, label %74, !prof !91

68:                                               ; preds = %66
  %69 = getelementptr inbounds i8, ptr %60, i64 2
  %70 = load i8, ptr %69, align 1, !tbaa !57
  %71 = icmp eq i8 %70, 10
  br i1 %71, label %72, label %74

72:                                               ; preds = %68
  %73 = icmp eq ptr %69, %64
  br i1 %73, label %197, label %74

74:                                               ; preds = %72, %68, %66
  %75 = phi ptr [ %69, %72 ], [ %61, %68 ], [ %61, %66 ]
  %76 = icmp eq ptr %58, null
  br i1 %76, label %197, label %77, !prof !92

77:                                               ; preds = %74, %77
  %78 = phi i64 [ %79, %77 ], [ 1, %74 ]
  %79 = add nsw i64 %78, -1
  %80 = getelementptr inbounds i8, ptr %60, i64 %79
  %81 = load i8, ptr %80, align 1, !tbaa !57
  %82 = zext i8 %81 to i64
  %83 = getelementptr inbounds [256 x i16], ptr @_sch_istable, i64 0, i64 %82
  %84 = load i16, ptr %83, align 2, !tbaa !93
  %85 = and i16 %84, 2048
  %86 = icmp eq i16 %85, 0
  br i1 %86, label %87, label %77, !prof !94, !llvm.loop !95

87:                                               ; preds = %77
  %88 = getelementptr inbounds i8, ptr %60, i64 %79
  %89 = icmp eq ptr %88, %58
  br i1 %89, label %90, label %197, !prof !97

90:                                               ; preds = %87
  %91 = getelementptr inbounds i8, ptr %60, i64 %78
  %92 = icmp eq i64 %78, 1
  %93 = select i1 %92, i32 92, i32 32
  tail call fastcc void @add_line_note(ptr noundef nonnull %37, ptr noundef nonnull %88, i32 noundef %93)
  %94 = getelementptr inbounds i8, ptr %91, i64 -2
  store ptr %88, ptr %42, align 8, !tbaa !82
  br label %95

95:                                               ; preds = %114, %90
  %96 = phi ptr [ %115, %114 ], [ %75, %90 ]
  %97 = phi ptr [ %61, %114 ], [ %94, %90 ]
  br label %121

98:                                               ; preds = %59
  %99 = getelementptr inbounds i8, ptr %60, i64 2
  %100 = load i8, ptr %99, align 1, !tbaa !57
  %101 = icmp eq i8 %100, 63
  br i1 %101, label %102, label %120, !prof !98

102:                                              ; preds = %98
  %103 = getelementptr inbounds i8, ptr %60, i64 3
  %104 = load i8, ptr %103, align 1, !tbaa !57
  %105 = zext i8 %104 to i64
  %106 = getelementptr inbounds [256 x i8], ptr @_cpp_trigraph_map, i64 0, i64 %105
  %107 = load i8, ptr %106, align 1, !tbaa !57
  %108 = icmp eq i8 %107, 0
  br i1 %108, label %120, label %109

109:                                              ; preds = %102
  %110 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 53, i32 7
  %111 = zext i8 %104 to i32
  tail call fastcc void @add_line_note(ptr noundef nonnull %37, ptr noundef nonnull %61, i32 noundef %111)
  %112 = load i8, ptr %110, align 1, !tbaa !99
  %113 = icmp eq i8 %112, 0
  br i1 %113, label %120, label %114

114:                                              ; preds = %109
  %115 = getelementptr inbounds i8, ptr %60, i64 3
  %116 = load i8, ptr %115, align 1, !tbaa !57
  %117 = zext i8 %116 to i64
  %118 = getelementptr inbounds [256 x i8], ptr @_cpp_trigraph_map, i64 0, i64 %117
  %119 = load i8, ptr %118, align 1, !tbaa !57
  store i8 %119, ptr %61, align 1, !tbaa !57
  br label %95

120:                                              ; preds = %59, %109, %102, %98
  br label %59, !llvm.loop !88

121:                                              ; preds = %183, %95
  %122 = phi ptr [ %96, %95 ], [ %184, %183 ]
  %123 = phi ptr [ %97, %95 ], [ %185, %183 ]
  %124 = getelementptr inbounds i8, ptr %122, i64 1
  %125 = load i8, ptr %124, align 1, !tbaa !57
  %126 = getelementptr inbounds i8, ptr %123, i64 1
  store i8 %125, ptr %126, align 1, !tbaa !57
  switch i8 %125, label %183 [
    i8 13, label %127
    i8 10, label %135
    i8 63, label %162
  ]

127:                                              ; preds = %121
  %128 = load ptr, ptr %44, align 8, !tbaa !90
  %129 = icmp eq ptr %124, %128
  br i1 %129, label %135, label %130

130:                                              ; preds = %127
  %131 = getelementptr inbounds i8, ptr %122, i64 2
  %132 = load i8, ptr %131, align 1, !tbaa !57
  %133 = icmp eq i8 %132, 10
  %134 = select i1 %133, ptr %131, ptr %124
  br label %135

135:                                              ; preds = %130, %127, %121
  %136 = phi ptr [ %124, %127 ], [ %124, %121 ], [ %134, %130 ]
  %137 = load ptr, ptr %44, align 8, !tbaa !90
  %138 = icmp eq ptr %136, %137
  br i1 %138, label %197, label %139

139:                                              ; preds = %135
  %140 = load ptr, ptr %42, align 8, !tbaa !82
  br label %141

141:                                              ; preds = %145, %139
  %142 = phi i64 [ %146, %145 ], [ 1, %139 ]
  %143 = getelementptr inbounds i8, ptr %123, i64 %142
  %144 = icmp eq ptr %143, %140
  br i1 %144, label %197, label %145

145:                                              ; preds = %141
  %146 = add nsw i64 %142, -1
  %147 = getelementptr inbounds i8, ptr %123, i64 %146
  %148 = load i8, ptr %147, align 1, !tbaa !57
  %149 = zext i8 %148 to i64
  %150 = getelementptr inbounds [256 x i16], ptr @_sch_istable, i64 0, i64 %149
  %151 = load i16, ptr %150, align 2, !tbaa !93
  %152 = and i16 %151, 2048
  %153 = icmp eq i16 %152, 0
  br i1 %153, label %154, label %141, !llvm.loop !101

154:                                              ; preds = %145
  %155 = getelementptr inbounds i8, ptr %143, i64 -1
  %156 = load i8, ptr %155, align 1, !tbaa !57
  %157 = icmp eq i8 %156, 92
  br i1 %157, label %158, label %197

158:                                              ; preds = %154
  %159 = icmp eq i64 %142, 1
  %160 = select i1 %159, i32 92, i32 32
  tail call fastcc void @add_line_note(ptr noundef nonnull %37, ptr noundef nonnull %155, i32 noundef %160)
  %161 = getelementptr inbounds i8, ptr %143, i64 -2
  store ptr %155, ptr %42, align 8, !tbaa !82
  br label %183

162:                                              ; preds = %121
  %163 = getelementptr inbounds i8, ptr %122, i64 2
  %164 = load i8, ptr %163, align 1, !tbaa !57
  %165 = icmp eq i8 %164, 63
  br i1 %165, label %166, label %183

166:                                              ; preds = %162
  %167 = getelementptr inbounds i8, ptr %122, i64 3
  %168 = load i8, ptr %167, align 1, !tbaa !57
  %169 = zext i8 %168 to i64
  %170 = getelementptr inbounds [256 x i8], ptr @_cpp_trigraph_map, i64 0, i64 %169
  %171 = load i8, ptr %170, align 1, !tbaa !57
  %172 = icmp eq i8 %171, 0
  br i1 %172, label %183, label %173

173:                                              ; preds = %166
  %174 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 53, i32 7
  %175 = zext i8 %168 to i32
  tail call fastcc void @add_line_note(ptr noundef nonnull %37, ptr noundef nonnull %126, i32 noundef %175)
  %176 = load i8, ptr %174, align 1, !tbaa !99
  %177 = icmp eq i8 %176, 0
  br i1 %177, label %183, label %178

178:                                              ; preds = %173
  %179 = load i8, ptr %167, align 1, !tbaa !57
  %180 = zext i8 %179 to i64
  %181 = getelementptr inbounds [256 x i8], ptr @_cpp_trigraph_map, i64 0, i64 %180
  %182 = load i8, ptr %181, align 1, !tbaa !57
  store i8 %182, ptr %126, align 1, !tbaa !57
  br label %183

183:                                              ; preds = %178, %173, %166, %162, %158, %121
  %184 = phi ptr [ %136, %158 ], [ %167, %178 ], [ %124, %173 ], [ %124, %166 ], [ %124, %162 ], [ %124, %121 ]
  %185 = phi ptr [ %161, %158 ], [ %126, %178 ], [ %126, %173 ], [ %126, %166 ], [ %126, %162 ], [ %126, %121 ]
  br label %121, !llvm.loop !100

186:                                              ; preds = %47, %186
  %187 = phi ptr [ %188, %186 ], [ %51, %47 ]
  %188 = getelementptr inbounds i8, ptr %187, i64 1
  %189 = load i8, ptr %188, align 1, !tbaa !57
  switch i8 %189, label %186 [
    i8 13, label %190
    i8 10, label %197
  ], !prof !102

190:                                              ; preds = %186
  %191 = icmp eq ptr %188, %45
  br i1 %191, label %197, label %192

192:                                              ; preds = %190
  %193 = getelementptr inbounds i8, ptr %187, i64 2
  %194 = load i8, ptr %193, align 1, !tbaa !57
  %195 = icmp eq i8 %194, 10
  %196 = select i1 %195, ptr %193, ptr %188
  br label %197

197:                                              ; preds = %186, %154, %135, %141, %192, %190, %87, %74, %72, %63
  %198 = phi ptr [ %188, %190 ], [ %75, %74 ], [ %75, %87 ], [ %196, %192 ], [ %61, %63 ], [ %69, %72 ], [ %136, %141 ], [ %136, %135 ], [ %136, %154 ], [ %188, %186 ]
  %199 = phi ptr [ %188, %190 ], [ %61, %74 ], [ %61, %87 ], [ %188, %192 ], [ %61, %63 ], [ %61, %72 ], [ %126, %141 ], [ %126, %135 ], [ %126, %154 ], [ %188, %186 ]
  store i8 10, ptr %199, align 1, !tbaa !57
  %200 = load i32, ptr %48, align 4, !tbaa !79
  %201 = getelementptr inbounds %struct.cpp_buffer, ptr %37, i64 0, i32 8
  %202 = load i32, ptr %201, align 8, !tbaa !103
  %203 = icmp eq i32 %200, %202
  br i1 %203, label %204, label %212, !prof !104

204:                                              ; preds = %197
  %205 = shl i32 %202, 1
  %206 = add i32 %205, 200
  store i32 %206, ptr %201, align 8, !tbaa !103
  %207 = getelementptr inbounds %struct.cpp_buffer, ptr %37, i64 0, i32 5
  %208 = load ptr, ptr %207, align 8, !tbaa !105
  %209 = zext i32 %206 to i64
  %210 = shl nuw nsw i64 %209, 4
  %211 = tail call ptr @xrealloc(ptr noundef %208, i64 noundef %210) #20
  store ptr %211, ptr %207, align 8, !tbaa !105
  br label %212

212:                                              ; preds = %204, %197
  %213 = getelementptr inbounds i8, ptr %199, i64 1
  %214 = getelementptr inbounds %struct.cpp_buffer, ptr %37, i64 0, i32 5
  %215 = load ptr, ptr %214, align 8, !tbaa !105
  %216 = load i32, ptr %48, align 4, !tbaa !79
  %217 = zext i32 %216 to i64
  %218 = getelementptr inbounds %struct._cpp_line_note, ptr %215, i64 %217
  store ptr %213, ptr %218, align 8, !tbaa !106
  %219 = getelementptr inbounds %struct._cpp_line_note, ptr %215, i64 %217, i32 1
  store i32 10, ptr %219, align 8, !tbaa !108
  %220 = add i32 %216, 1
  store i32 %220, ptr %48, align 4, !tbaa !79
  %221 = getelementptr inbounds i8, ptr %198, i64 1
  store ptr %221, ptr %42, align 8, !tbaa !82
  br label %247

222:                                              ; preds = %41
  %223 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 2, i32 9
  %224 = load i8, ptr %223, align 1, !tbaa !164
  %225 = icmp eq i8 %224, 0
  br i1 %225, label %226, label %247, !prof !165

226:                                              ; preds = %222
  %227 = getelementptr inbounds %struct.cpp_buffer, ptr %37, i64 0, i32 3
  %228 = load ptr, ptr %227, align 8, !tbaa !166
  %229 = icmp ne ptr %228, %45
  %230 = icmp ugt ptr %43, %45
  %231 = and i1 %230, %229
  br i1 %231, label %232, label %238, !prof !167

232:                                              ; preds = %226
  %233 = getelementptr inbounds %struct.cpp_buffer, ptr %37, i64 0, i32 14
  %234 = load i8, ptr %233, align 1
  %235 = and i8 %234, 2
  %236 = icmp eq i8 %235, 0
  br i1 %236, label %237, label %238

237:                                              ; preds = %232
  store ptr %45, ptr %42, align 8, !tbaa !82
  br label %238

238:                                              ; preds = %237, %232, %226
  %239 = getelementptr inbounds %struct.cpp_buffer, ptr %37, i64 0, i32 14
  %240 = load i8, ptr %239, align 1
  tail call void @_cpp_pop_buffer(ptr noundef nonnull %0) #20
  %241 = load ptr, ptr %0, align 8, !tbaa !62
  %242 = icmp ne ptr %241, null
  %243 = and i8 %240, 4
  %244 = icmp eq i8 %243, 0
  %245 = select i1 %242, i1 %244, i1 false, !prof !167
  %246 = select i1 %245, i8 %36, i8 0, !prof !167
  br label %247

247:                                              ; preds = %238, %222, %212, %35
  %248 = phi i1 [ false, %212 ], [ false, %222 ], [ %245, %238 ], [ false, %35 ]
  %249 = phi i8 [ 1, %212 ], [ 0, %222 ], [ %246, %238 ], [ 1, %35 ]
  br i1 %248, label %35, label %250, !prof !162, !llvm.loop !168

250:                                              ; preds = %247, %32
  %251 = phi i8 [ 0, %32 ], [ %249, %247 ]
  %252 = icmp eq i8 %251, 0
  br i1 %252, label %253, label %263, !prof !169

253:                                              ; preds = %250
  %254 = getelementptr inbounds %struct.cpp_token, ptr %12, i64 0, i32 1
  store i8 22, ptr %254, align 4
  %255 = load i8, ptr %9, align 8, !tbaa !160
  %256 = icmp eq i8 %255, 0
  br i1 %256, label %257, label %1176, !prof !170

257:                                              ; preds = %253
  %258 = getelementptr inbounds %struct.cpp_token, ptr %12, i64 0, i32 2
  %259 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 3
  %260 = load ptr, ptr %259, align 8, !tbaa !112
  %261 = getelementptr inbounds %struct.line_maps, ptr %260, i64 0, i32 8
  %262 = load i32, ptr %261, align 4, !tbaa !113
  store i32 %262, ptr %12, align 8, !tbaa !171
  store i16 64, ptr %258, align 2, !tbaa !154
  br label %1176

263:                                              ; preds = %250
  %264 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 33
  %265 = load i32, ptr %264, align 4, !tbaa !142
  %266 = icmp eq i32 %265, 0
  br i1 %266, label %267, label %273, !prof !172

267:                                              ; preds = %263
  %268 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 30
  %269 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 31
  %270 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 30, i32 2
  store ptr %268, ptr %269, align 8, !tbaa !146
  %271 = load ptr, ptr %270, align 8, !tbaa !173
  %272 = getelementptr inbounds %struct.cpp_token, ptr %271, i64 1
  store ptr %272, ptr %6, align 8, !tbaa !145
  br label %273

273:                                              ; preds = %267, %263
  %274 = phi ptr [ %12, %263 ], [ %271, %267 ]
  %275 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 2, i32 9
  %276 = getelementptr inbounds %struct.cpp_token, ptr %274, i64 0, i32 2
  store i16 64, ptr %276, align 2, !tbaa !154
  %277 = load i8, ptr %275, align 1, !tbaa !164
  %278 = icmp eq i8 %277, 2
  %279 = select i1 %278, i16 65, i16 64, !prof !91
  store i16 %279, ptr %276, align 2
  br label %280

280:                                              ; preds = %273, %11
  %281 = phi ptr [ %12, %11 ], [ %274, %273 ]
  %282 = load ptr, ptr %0, align 8, !tbaa !62
  %283 = getelementptr inbounds %struct.cpp_buffer, ptr %282, i64 0, i32 5
  %284 = getelementptr inbounds %struct.cpp_buffer, ptr %282, i64 0, i32 6
  %285 = getelementptr inbounds %struct.cpp_buffer, ptr %282, i64 0, i32 1
  br label %286

286:                                              ; preds = %897, %280
  %287 = load ptr, ptr %10, align 8, !tbaa !112
  %288 = getelementptr inbounds %struct.line_maps, ptr %287, i64 0, i32 8
  %289 = load i32, ptr %288, align 4, !tbaa !113
  store i32 %289, ptr %281, align 8, !tbaa !171
  br label %290

290:                                              ; preds = %376, %286
  %291 = load ptr, ptr %282, align 8, !tbaa !84
  %292 = load ptr, ptr %283, align 8, !tbaa !105
  %293 = load i32, ptr %284, align 8, !tbaa !81
  %294 = zext i32 %293 to i64
  %295 = getelementptr inbounds %struct._cpp_line_note, ptr %292, i64 %294
  %296 = load ptr, ptr %295, align 8, !tbaa !106
  %297 = icmp ult ptr %291, %296
  br i1 %297, label %306, label %298, !prof !174

298:                                              ; preds = %290
  %299 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 1
  %300 = load ptr, ptr %299, align 8, !tbaa !175
  %301 = icmp eq ptr %300, null
  br i1 %301, label %302, label %306

302:                                              ; preds = %298
  tail call void @_cpp_process_line_notes(ptr noundef nonnull %0, i32 noundef 0)
  %303 = load ptr, ptr %10, align 8, !tbaa !112
  %304 = getelementptr inbounds %struct.line_maps, ptr %303, i64 0, i32 8
  %305 = load i32, ptr %304, align 4, !tbaa !113
  store i32 %305, ptr %281, align 8, !tbaa !171
  br label %306

306:                                              ; preds = %302, %298, %290
  %307 = load ptr, ptr %282, align 8, !tbaa !84
  %308 = getelementptr inbounds i8, ptr %307, i64 1
  store ptr %308, ptr %282, align 8, !tbaa !84
  %309 = load i8, ptr %307, align 1, !tbaa !57
  %310 = load ptr, ptr %285, align 8, !tbaa !83
  %311 = ptrtoint ptr %308 to i64
  %312 = ptrtoint ptr %310 to i64
  %313 = sub i64 %311, %312
  %314 = trunc i64 %313 to i32
  %315 = load ptr, ptr %10, align 8, !tbaa !112
  %316 = getelementptr inbounds %struct.line_maps, ptr %315, i64 0, i32 9
  %317 = load i32, ptr %316, align 8, !tbaa !176
  %318 = icmp ugt i32 %317, %314
  br i1 %318, label %321, label %319, !prof !177

319:                                              ; preds = %306
  %320 = tail call i32 @linemap_position_for_column(ptr noundef %315, i32 noundef %314) #20
  br label %329

321:                                              ; preds = %306
  %322 = getelementptr inbounds %struct.line_maps, ptr %315, i64 0, i32 8
  %323 = load i32, ptr %322, align 4, !tbaa !113
  %324 = add i32 %323, %314
  %325 = getelementptr inbounds %struct.line_maps, ptr %315, i64 0, i32 7
  %326 = load i32, ptr %325, align 8, !tbaa !178
  %327 = icmp ult i32 %324, %326
  br i1 %327, label %329, label %328, !prof !179

328:                                              ; preds = %321
  store i32 %324, ptr %325, align 8, !tbaa !178
  br label %329

329:                                              ; preds = %321, %328, %319
  %330 = phi i32 [ %320, %319 ], [ %324, %328 ], [ %324, %321 ]
  store i32 %330, ptr %281, align 8, !tbaa !171
  switch i8 %309, label %1148 [
    i8 32, label %331
    i8 9, label %331
    i8 12, label %331
    i8 11, label %331
    i8 0, label %331
    i8 10, label %379
    i8 48, label %407
    i8 49, label %407
    i8 50, label %407
    i8 51, label %407
    i8 52, label %407
    i8 53, label %407
    i8 54, label %407
    i8 55, label %407
    i8 56, label %407
    i8 57, label %407
    i8 76, label %586
    i8 117, label %586
    i8 85, label %586
    i8 82, label %586
    i8 95, label %624
    i8 97, label %624
    i8 98, label %624
    i8 99, label %624
    i8 100, label %624
    i8 101, label %624
    i8 102, label %624
    i8 103, label %624
    i8 104, label %624
    i8 105, label %624
    i8 106, label %624
    i8 107, label %624
    i8 108, label %624
    i8 109, label %624
    i8 110, label %624
    i8 111, label %624
    i8 112, label %624
    i8 113, label %624
    i8 114, label %624
    i8 115, label %624
    i8 116, label %624
    i8 118, label %624
    i8 119, label %624
    i8 120, label %624
    i8 121, label %624
    i8 122, label %624
    i8 65, label %624
    i8 66, label %624
    i8 67, label %624
    i8 68, label %624
    i8 69, label %624
    i8 70, label %624
    i8 71, label %624
    i8 72, label %624
    i8 73, label %624
    i8 74, label %624
    i8 75, label %624
    i8 77, label %624
    i8 78, label %624
    i8 79, label %624
    i8 80, label %624
    i8 81, label %624
    i8 83, label %624
    i8 84, label %624
    i8 86, label %624
    i8 87, label %624
    i8 88, label %624
    i8 89, label %624
    i8 90, label %624
    i8 39, label %819
    i8 34, label %819
    i8 47, label %822
    i8 60, label %903
    i8 62, label %941
    i8 37, label %954
    i8 46, label %986
    i8 43, label %1012
    i8 45, label %1020
    i8 38, label %1039
    i8 124, label %1047
    i8 58, label %1055
    i8 42, label %1076
    i8 61, label %1083
    i8 33, label %1090
    i8 94, label %1097
    i8 35, label %1104
    i8 63, label %1113
    i8 126, label %1115
    i8 44, label %1117
    i8 40, label %1119
    i8 41, label %1121
    i8 91, label %1123
    i8 93, label %1125
    i8 123, label %1127
    i8 125, label %1129
    i8 59, label %1131
    i8 64, label %1133
    i8 36, label %1135
    i8 92, label %1135
  ], !prof !180

331:                                              ; preds = %329, %329, %329, %329, %329
  %332 = getelementptr inbounds %struct.cpp_token, ptr %281, i64 0, i32 2
  %333 = load i16, ptr %332, align 2, !tbaa !154
  %334 = or i16 %333, 1
  store i16 %334, ptr %332, align 2, !tbaa !154
  %335 = load ptr, ptr %0, align 8, !tbaa !62
  br label %336

336:                                              ; preds = %362, %331
  %337 = phi i8 [ %309, %331 ], [ %366, %362 ]
  %338 = phi i8 [ 0, %331 ], [ %363, %362 ]
  switch i8 %337, label %340 [
    i8 32, label %362
    i8 9, label %362
    i8 0, label %339
  ], !prof !181

339:                                              ; preds = %336
  br label %362

340:                                              ; preds = %336
  %341 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 2
  %342 = load i8, ptr %341, align 8, !tbaa !160
  %343 = icmp eq i8 %342, 0
  br i1 %343, label %362, label %344

344:                                              ; preds = %340
  %345 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 53, i32 31
  %346 = load i8, ptr %345, align 1, !tbaa !182
  %347 = icmp eq i8 %346, 0
  br i1 %347, label %362, label %348

348:                                              ; preds = %344
  %349 = getelementptr inbounds %struct.cpp_buffer, ptr %335, i64 0, i32 1
  %350 = load ptr, ptr %10, align 8, !tbaa !112
  %351 = getelementptr inbounds %struct.line_maps, ptr %350, i64 0, i32 8
  %352 = load i32, ptr %351, align 4, !tbaa !113
  %353 = load ptr, ptr %335, align 8, !tbaa !84
  %354 = load ptr, ptr %349, align 8, !tbaa !83
  %355 = ptrtoint ptr %353 to i64
  %356 = ptrtoint ptr %354 to i64
  %357 = sub i64 %355, %356
  %358 = trunc i64 %357 to i32
  %359 = icmp eq i8 %337, 12
  %360 = select i1 %359, ptr @.str.15, ptr @.str.16
  %361 = tail call zeroext i8 (ptr, i32, i32, i32, ptr, ...) @cpp_error_with_line(ptr noundef nonnull %0, i32 noundef 2, i32 noundef %352, i32 noundef %358, ptr noundef nonnull @.str.14, ptr noundef nonnull %360) #20
  br label %362

362:                                              ; preds = %336, %336, %348, %344, %340, %339
  %363 = phi i8 [ 1, %339 ], [ %338, %348 ], [ %338, %344 ], [ %338, %340 ], [ %338, %336 ], [ %338, %336 ]
  %364 = load ptr, ptr %335, align 8, !tbaa !84
  %365 = getelementptr inbounds i8, ptr %364, i64 1
  store ptr %365, ptr %335, align 8, !tbaa !84
  %366 = load i8, ptr %364, align 1, !tbaa !57
  %367 = zext i8 %366 to i64
  %368 = getelementptr inbounds [256 x i16], ptr @_sch_istable, i64 0, i64 %367
  %369 = load i16, ptr %368, align 2, !tbaa !93
  %370 = and i16 %369, 2048
  %371 = icmp eq i16 %370, 0
  br i1 %371, label %372, label %336, !prof !183, !llvm.loop !184

372:                                              ; preds = %362
  %373 = icmp eq i8 %363, 0
  br i1 %373, label %376, label %374, !prof !185

374:                                              ; preds = %372
  %375 = tail call zeroext i8 (ptr, i32, ptr, ...) @cpp_error(ptr noundef nonnull %0, i32 noundef 0, ptr noundef nonnull @.str.17) #20
  br label %376

376:                                              ; preds = %372, %374
  %377 = load ptr, ptr %335, align 8, !tbaa !84
  %378 = getelementptr inbounds i8, ptr %377, i64 -1
  store ptr %378, ptr %335, align 8, !tbaa !84
  br label %290

379:                                              ; preds = %329
  %380 = load ptr, ptr %282, align 8, !tbaa !84
  %381 = getelementptr inbounds %struct.cpp_buffer, ptr %282, i64 0, i32 4
  %382 = load ptr, ptr %381, align 8, !tbaa !90
  %383 = icmp ult ptr %380, %382
  br i1 %383, label %384, label %405, !prof !186

384:                                              ; preds = %379
  %385 = load ptr, ptr %10, align 8, !tbaa !112
  %386 = load ptr, ptr %385, align 8, !tbaa !115
  %387 = getelementptr inbounds %struct.line_maps, ptr %385, i64 0, i32 2
  %388 = load i32, ptr %387, align 4, !tbaa !116
  %389 = add i32 %388, -1
  %390 = zext i32 %389 to i64
  %391 = getelementptr inbounds %struct.line_maps, ptr %385, i64 0, i32 8
  %392 = load i32, ptr %391, align 4, !tbaa !113
  %393 = getelementptr inbounds %struct.line_map, ptr %386, i64 %390, i32 2
  %394 = load i32, ptr %393, align 4, !tbaa !117
  %395 = sub i32 %392, %394
  %396 = getelementptr inbounds %struct.line_map, ptr %386, i64 %390, i32 6
  %397 = load i8, ptr %396, align 2
  %398 = zext nneg i8 %397 to i32
  %399 = lshr i32 %395, %398
  %400 = getelementptr inbounds %struct.line_map, ptr %386, i64 %390, i32 1
  %401 = load i32, ptr %400, align 8, !tbaa !119
  %402 = add i32 %401, 1
  %403 = add i32 %402, %399
  %404 = tail call i32 @linemap_line_start(ptr noundef nonnull %385, i32 noundef %403, i32 noundef 0) #20
  br label %405

405:                                              ; preds = %384, %379
  %406 = getelementptr inbounds %struct.cpp_buffer, ptr %282, i64 0, i32 13
  store i8 1, ptr %406, align 8, !tbaa !85
  br label %11

407:                                              ; preds = %329, %329, %329, %329, %329, %329, %329, %329, %329, %329
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %2) #20
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %2, i8 0, i64 12, i1 false)
  %408 = getelementptr inbounds %struct.cpp_token, ptr %281, i64 0, i32 1
  store i8 55, ptr %408, align 4
  %409 = getelementptr inbounds %struct.cpp_token, ptr %281, i64 0, i32 3
  %410 = load ptr, ptr %0, align 8, !tbaa !62
  %411 = load ptr, ptr %410, align 8, !tbaa !84
  %412 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 53, i32 25
  %413 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 2, i32 2
  br label %414

414:                                              ; preds = %469, %407
  %415 = load ptr, ptr %0, align 8, !tbaa !62
  %416 = load ptr, ptr %415, align 8, !tbaa !84
  br label %417

417:                                              ; preds = %435, %414
  %418 = phi ptr [ %416, %414 ], [ %437, %435 ]
  %419 = load i8, ptr %418, align 1, !tbaa !57
  %420 = zext i8 %419 to i64
  %421 = getelementptr inbounds [256 x i16], ptr @_sch_istable, i64 0, i64 %420
  %422 = load i16, ptr %421, align 2, !tbaa !93
  %423 = and i16 %422, 516
  %424 = icmp ne i16 %423, 0
  %425 = icmp eq i8 %419, 46
  %426 = or i1 %425, %424
  br i1 %426, label %435, label %427, !prof !187

427:                                              ; preds = %417
  switch i8 %419, label %438 [
    i8 43, label %428
    i8 45, label %428
  ], !prof !188

428:                                              ; preds = %427, %427
  %429 = getelementptr inbounds i8, ptr %418, i64 -1
  %430 = load i8, ptr %429, align 1, !tbaa !57
  switch i8 %430, label %438 [
    i8 101, label %435
    i8 69, label %435
    i8 112, label %431
    i8 80, label %431
  ], !prof !189

431:                                              ; preds = %428, %428
  %432 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 53, i32 9
  %433 = load i8, ptr %432, align 1, !tbaa !190
  %434 = icmp eq i8 %433, 0
  br i1 %434, label %438, label %435

435:                                              ; preds = %431, %428, %428, %417
  %436 = getelementptr inbounds %struct.normalize_state, ptr %2, i64 0, i32 1
  %437 = getelementptr inbounds i8, ptr %418, i64 1
  store i32 0, ptr %2, align 4, !tbaa !191
  store i8 0, ptr %436, align 4, !tbaa !193
  br label %417, !llvm.loop !194

438:                                              ; preds = %431, %428, %427
  store ptr %418, ptr %415, align 8, !tbaa !84
  %439 = load i8, ptr %418, align 1, !tbaa !57
  %440 = icmp eq i8 %439, 36
  br i1 %440, label %441, label %455, !prof !195

441:                                              ; preds = %438
  %442 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 53, i32 24
  %443 = load i8, ptr %442, align 2, !tbaa !196
  %444 = icmp eq i8 %443, 0
  br i1 %444, label %473, label %445

445:                                              ; preds = %441
  %446 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 53, i32 26
  %447 = getelementptr inbounds i8, ptr %418, i64 1
  store ptr %447, ptr %415, align 8, !tbaa !84
  %448 = load i8, ptr %446, align 8, !tbaa !197
  %449 = icmp eq i8 %448, 0
  br i1 %449, label %469, label %450

450:                                              ; preds = %445
  %451 = load i8, ptr %413, align 2, !tbaa !130
  %452 = icmp eq i8 %451, 0
  br i1 %452, label %453, label %469

453:                                              ; preds = %450
  store i8 0, ptr %446, align 8, !tbaa !197
  %454 = call zeroext i8 (ptr, i32, ptr, ...) @cpp_error(ptr noundef nonnull %0, i32 noundef 2, ptr noundef nonnull @.str.30) #20
  br label %469

455:                                              ; preds = %438
  %456 = load i8, ptr %412, align 1, !tbaa !198
  %457 = icmp ne i8 %456, 0
  %458 = icmp eq i8 %439, 92
  %459 = and i1 %458, %457
  br i1 %459, label %460, label %473, !prof !195

460:                                              ; preds = %455
  %461 = getelementptr inbounds i8, ptr %418, i64 1
  %462 = load i8, ptr %461, align 1, !tbaa !57
  switch i8 %462, label %473 [
    i8 117, label %463
    i8 85, label %463
  ]

463:                                              ; preds = %460, %460
  %464 = getelementptr inbounds i8, ptr %418, i64 2
  store ptr %464, ptr %415, align 8, !tbaa !84
  %465 = getelementptr inbounds %struct.cpp_buffer, ptr %415, i64 0, i32 4
  %466 = load ptr, ptr %465, align 8, !tbaa !90
  %467 = call i32 @_cpp_valid_ucn(ptr noundef nonnull %0, ptr noundef nonnull %415, ptr noundef %466, i32 noundef 2, ptr noundef nonnull %2) #20
  %468 = icmp eq i32 %467, 0
  br i1 %468, label %470, label %469

469:                                              ; preds = %463, %453, %450, %445
  br label %414, !llvm.loop !199

470:                                              ; preds = %463
  %471 = load ptr, ptr %415, align 8, !tbaa !84
  %472 = getelementptr inbounds i8, ptr %471, i64 -2
  store ptr %472, ptr %415, align 8, !tbaa !84
  br label %473

473:                                              ; preds = %460, %455, %441, %470
  %474 = getelementptr inbounds i8, ptr %411, i64 -1
  %475 = ptrtoint ptr %418 to i64
  %476 = ptrtoint ptr %474 to i64
  %477 = sub i64 %475, %476
  %478 = trunc i64 %477 to i32
  store i32 %478, ptr %409, align 8, !tbaa !200
  %479 = add i64 %477, 1
  %480 = and i64 %479, 4294967295
  %481 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 6
  %482 = load ptr, ptr %481, align 8, !tbaa !202
  %483 = getelementptr inbounds %struct._cpp_buff, ptr %482, i64 0, i32 2
  %484 = load ptr, ptr %483, align 8, !tbaa !203
  %485 = getelementptr inbounds %struct._cpp_buff, ptr %482, i64 0, i32 3
  %486 = load ptr, ptr %485, align 8, !tbaa !205
  %487 = ptrtoint ptr %486 to i64
  %488 = ptrtoint ptr %484 to i64
  %489 = sub i64 %487, %488
  %490 = icmp ult i64 %489, %480
  br i1 %490, label %491, label %540, !prof !206

491:                                              ; preds = %473
  %492 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 7
  br label %493

493:                                              ; preds = %528, %491
  %494 = phi ptr [ undef, %491 ], [ %525, %528 ]
  %495 = phi ptr [ %492, %491 ], [ %529, %528 ]
  %496 = phi ptr [ undef, %491 ], [ %526, %528 ]
  %497 = load ptr, ptr %495, align 8, !tbaa !51
  %498 = icmp eq ptr %497, null
  br i1 %498, label %499, label %509, !prof !207

499:                                              ; preds = %493
  %500 = call i64 @llvm.umax.i64(i64 %480, i64 8000)
  %501 = add nuw nsw i64 %500, 7
  %502 = and i64 %501, 8589934584
  %503 = add nuw nsw i64 %502, 32
  %504 = call ptr @xmalloc(i64 noundef %503) #20
  %505 = getelementptr inbounds i8, ptr %504, i64 %502
  %506 = getelementptr inbounds %struct._cpp_buff, ptr %505, i64 0, i32 1
  store ptr %504, ptr %506, align 8, !tbaa !208
  %507 = getelementptr inbounds %struct._cpp_buff, ptr %505, i64 0, i32 2
  store ptr %504, ptr %507, align 8, !tbaa !203
  %508 = getelementptr inbounds %struct._cpp_buff, ptr %505, i64 0, i32 3
  store ptr %505, ptr %508, align 8, !tbaa !205
  store ptr null, ptr %505, align 8, !tbaa !209
  br label %524

509:                                              ; preds = %493
  %510 = mul nuw nsw i64 %480, 3
  %511 = lshr i64 %510, 1
  %512 = add nuw nsw i64 %511, 8000
  %513 = getelementptr inbounds %struct._cpp_buff, ptr %497, i64 0, i32 3
  %514 = load ptr, ptr %513, align 8, !tbaa !205
  %515 = getelementptr inbounds %struct._cpp_buff, ptr %497, i64 0, i32 1
  %516 = load ptr, ptr %515, align 8, !tbaa !208
  %517 = ptrtoint ptr %514 to i64
  %518 = ptrtoint ptr %516 to i64
  %519 = sub i64 %517, %518
  %520 = icmp ult i64 %519, %480
  %521 = icmp ugt i64 %519, %512
  %522 = select i1 %520, i1 true, i1 %521
  %523 = select i1 %522, i32 0, i32 2
  br label %524

524:                                              ; preds = %509, %499
  %525 = phi ptr [ %494, %499 ], [ %497, %509 ]
  %526 = phi ptr [ %505, %499 ], [ %496, %509 ]
  %527 = phi i32 [ 1, %499 ], [ %523, %509 ]
  switch i32 %527, label %535 [
    i32 0, label %528
    i32 2, label %530
  ], !prof !210

528:                                              ; preds = %524
  %529 = load ptr, ptr %495, align 8, !tbaa !51
  br label %493, !llvm.loop !211

530:                                              ; preds = %524
  %531 = load ptr, ptr %525, align 8, !tbaa !209
  store ptr %531, ptr %495, align 8, !tbaa !51
  store ptr null, ptr %525, align 8, !tbaa !209
  %532 = getelementptr inbounds %struct._cpp_buff, ptr %525, i64 0, i32 1
  %533 = load ptr, ptr %532, align 8, !tbaa !208
  %534 = getelementptr inbounds %struct._cpp_buff, ptr %525, i64 0, i32 2
  store ptr %533, ptr %534, align 8, !tbaa !203
  br label %535

535:                                              ; preds = %524, %530
  %536 = phi ptr [ %525, %530 ], [ %526, %524 ]
  %537 = load ptr, ptr %481, align 8, !tbaa !202
  store ptr %537, ptr %536, align 8, !tbaa !209
  store ptr %536, ptr %481, align 8, !tbaa !202
  %538 = getelementptr inbounds %struct._cpp_buff, ptr %536, i64 0, i32 2
  %539 = load ptr, ptr %538, align 8, !tbaa !203
  br label %540

540:                                              ; preds = %473, %535
  %541 = phi ptr [ %536, %535 ], [ %482, %473 ]
  %542 = phi ptr [ %539, %535 ], [ %484, %473 ]
  %543 = getelementptr inbounds i8, ptr %542, i64 %480
  %544 = getelementptr inbounds %struct._cpp_buff, ptr %541, i64 0, i32 2
  store ptr %543, ptr %544, align 8, !tbaa !203
  %545 = load i32, ptr %409, align 8, !tbaa !200
  %546 = zext i32 %545 to i64
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %542, ptr nonnull align 1 %474, i64 %546, i1 false), !prof !276
  %547 = load i32, ptr %409, align 8, !tbaa !200
  %548 = zext i32 %547 to i64
  %549 = getelementptr inbounds i8, ptr %542, i64 %548
  store i8 0, ptr %549, align 1, !tbaa !57
  %550 = getelementptr inbounds %struct.cpp_token, ptr %281, i64 0, i32 3, i32 0, i32 1
  store ptr %542, ptr %550, align 8, !tbaa !213
  %551 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 53, i32 40
  %552 = load i32, ptr %551, align 8, !tbaa !214
  %553 = getelementptr inbounds %struct.normalize_state, ptr %2, i64 0, i32 2
  %554 = load i32, ptr %553, align 4, !tbaa !215
  %555 = icmp ult i32 %552, %554
  br i1 %555, label %556, label %585, !prof !195

556:                                              ; preds = %540
  %557 = load i8, ptr %413, align 2, !tbaa !130
  %558 = icmp eq i8 %557, 0
  br i1 %558, label %559, label %585

559:                                              ; preds = %556
  %560 = load i8, ptr %408, align 4
  %561 = zext i8 %560 to i64
  %562 = getelementptr inbounds [73 x %struct.token_spelling], ptr @token_spellings, i64 0, i64 %561
  %563 = load i32, ptr %562, align 16, !tbaa !216
  switch i32 %563, label %571 [
    i32 2, label %564
    i32 1, label %566
  ]

564:                                              ; preds = %559
  %565 = load i32, ptr %409, align 8, !tbaa !57
  br label %571

566:                                              ; preds = %559
  %567 = load ptr, ptr %409, align 8, !tbaa !57
  %568 = getelementptr inbounds %struct.ht_identifier, ptr %567, i64 0, i32 1
  %569 = load i32, ptr %568, align 8, !tbaa !218
  %570 = mul i32 %569, 10
  br label %571

571:                                              ; preds = %566, %564, %559
  %572 = phi i32 [ %570, %566 ], [ %565, %564 ], [ 6, %559 ]
  %573 = zext i32 %572 to i64
  %574 = call ptr @xmalloc(i64 noundef %573) #20
  %575 = call ptr @cpp_spell_token(ptr noundef %0, ptr noundef %281, ptr noundef %574, i8 noundef zeroext 0)
  %576 = ptrtoint ptr %575 to i64
  %577 = ptrtoint ptr %574 to i64
  %578 = sub i64 %576, %577
  %579 = load i32, ptr %553, align 4, !tbaa !215
  %580 = icmp eq i32 %579, 1
  %581 = load i32, ptr %281, align 8, !tbaa !171
  %582 = trunc i64 %578 to i32
  %583 = select i1 %580, ptr @.str.18, ptr @.str.19
  %584 = call zeroext i8 (ptr, i32, i32, i32, ptr, ...) @cpp_error_with_line(ptr noundef %0, i32 noundef 0, i32 noundef %581, i32 noundef 0, ptr noundef nonnull %583, i32 noundef %582, ptr noundef %574) #20
  br label %585

585:                                              ; preds = %571, %540, %556
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %2) #20
  br label %1176

586:                                              ; preds = %329, %329, %329, %329
  %587 = icmp eq i8 %309, 76
  br i1 %587, label %592, label %588, !prof !219

588:                                              ; preds = %586
  %589 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 53, i32 10
  %590 = load i8, ptr %589, align 8, !tbaa !220
  %591 = icmp eq i8 %590, 0
  br i1 %591, label %624, label %592, !prof !221

592:                                              ; preds = %588, %586
  %593 = load ptr, ptr %282, align 8, !tbaa !84
  %594 = load i8, ptr %593, align 1, !tbaa !57
  %595 = icmp eq i8 %594, 39
  %596 = icmp ne i8 %309, 82
  %597 = select i1 %595, i1 %596, i1 false, !prof !222
  %598 = icmp eq i8 %594, 34
  %599 = or i1 %598, %597
  br i1 %599, label %622, label %600, !prof !222

600:                                              ; preds = %592
  %601 = icmp eq i8 %594, 82
  %602 = select i1 %601, i1 %596, i1 false, !prof !223
  br i1 %602, label %603, label %611, !prof !223

603:                                              ; preds = %600
  %604 = getelementptr inbounds i8, ptr %593, i64 1
  %605 = load i8, ptr %604, align 1, !tbaa !57
  %606 = icmp eq i8 %605, 34
  br i1 %606, label %607, label %611, !prof !167

607:                                              ; preds = %603
  %608 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 53, i32 10
  %609 = load i8, ptr %608, align 8, !tbaa !220
  %610 = icmp eq i8 %609, 0
  br i1 %610, label %611, label %622

611:                                              ; preds = %607, %603, %600
  %612 = icmp eq i8 %594, 56
  %613 = icmp eq i8 %309, 117
  %614 = select i1 %612, i1 %613, i1 false, !prof !222
  br i1 %614, label %615, label %624, !prof !222

615:                                              ; preds = %611
  %616 = getelementptr inbounds i8, ptr %593, i64 1
  %617 = load i8, ptr %616, align 1, !tbaa !57
  switch i8 %617, label %624 [
    i8 34, label %622
    i8 82, label %618
  ]

618:                                              ; preds = %615
  %619 = getelementptr inbounds i8, ptr %593, i64 2
  %620 = load i8, ptr %619, align 1, !tbaa !57
  %621 = icmp eq i8 %620, 34
  br i1 %621, label %622, label %624

622:                                              ; preds = %615, %592, %618, %607
  %623 = getelementptr inbounds i8, ptr %593, i64 -1
  tail call fastcc void @lex_string(ptr noundef nonnull %0, ptr noundef nonnull %281, ptr noundef nonnull %623)
  br label %1176

624:                                              ; preds = %329, %329, %329, %329, %329, %329, %329, %329, %329, %329, %329, %329, %329, %329, %329, %329, %329, %329, %329, %329, %329, %329, %329, %329, %329, %329, %329, %329, %329, %329, %329, %329, %329, %329, %329, %329, %329, %329, %329, %329, %329, %329, %329, %329, %329, %329, %329, %329, %329, %618, %588, %615, %611
  %625 = getelementptr inbounds %struct.cpp_token, ptr %281, i64 0, i32 1
  store i8 53, ptr %625, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %3) #20
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %3, i8 0, i64 12, i1 false)
  %626 = load ptr, ptr %282, align 8, !tbaa !84
  %627 = getelementptr inbounds i8, ptr %626, i64 -1
  %628 = load i8, ptr %627, align 1, !tbaa !57
  %629 = zext i8 %628 to i32
  %630 = add nsw i32 %629, -113
  %631 = load ptr, ptr %0, align 8, !tbaa !62
  %632 = load ptr, ptr %631, align 8, !tbaa !84
  %633 = load i8, ptr %632, align 1, !tbaa !57
  %634 = zext i8 %633 to i64
  %635 = getelementptr inbounds [256 x i16], ptr @_sch_istable, i64 0, i64 %634
  %636 = load i16, ptr %635, align 2, !tbaa !93
  %637 = and i16 %636, 516
  %638 = icmp eq i16 %637, 0
  br i1 %638, label %654, label %639, !prof !224

639:                                              ; preds = %624, %639
  %640 = phi i8 [ %648, %639 ], [ %633, %624 ]
  %641 = phi i32 [ %646, %639 ], [ %630, %624 ]
  %642 = phi ptr [ %647, %639 ], [ %632, %624 ]
  %643 = zext i8 %640 to i32
  %644 = mul i32 %641, 67
  %645 = add nsw i32 %643, -113
  %646 = add i32 %645, %644
  %647 = getelementptr inbounds i8, ptr %642, i64 1
  %648 = load i8, ptr %647, align 1, !tbaa !57
  %649 = zext i8 %648 to i64
  %650 = getelementptr inbounds [256 x i16], ptr @_sch_istable, i64 0, i64 %649
  %651 = load i16, ptr %650, align 2, !tbaa !93
  %652 = and i16 %651, 516
  %653 = icmp eq i16 %652, 0
  br i1 %653, label %654, label %639, !prof !225, !llvm.loop !226

654:                                              ; preds = %639, %624
  %655 = phi ptr [ %632, %624 ], [ %647, %639 ]
  %656 = phi i32 [ %630, %624 ], [ %646, %639 ]
  store ptr %655, ptr %631, align 8, !tbaa !84
  %657 = load i8, ptr %655, align 1, !tbaa !57
  %658 = icmp eq i8 %657, 36
  br i1 %658, label %659, label %674, !prof !195

659:                                              ; preds = %654
  %660 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 53, i32 24
  %661 = load i8, ptr %660, align 2, !tbaa !196
  %662 = icmp eq i8 %661, 0
  br i1 %662, label %722, label %663

663:                                              ; preds = %659
  %664 = getelementptr inbounds i8, ptr %655, i64 1
  store ptr %664, ptr %631, align 8, !tbaa !84
  %665 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 53, i32 26
  %666 = load i8, ptr %665, align 8, !tbaa !197
  %667 = icmp eq i8 %666, 0
  br i1 %667, label %692, label %668

668:                                              ; preds = %663
  %669 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 2, i32 2
  %670 = load i8, ptr %669, align 2, !tbaa !130
  %671 = icmp eq i8 %670, 0
  br i1 %671, label %672, label %692

672:                                              ; preds = %668
  store i8 0, ptr %665, align 8, !tbaa !197
  %673 = tail call zeroext i8 (ptr, i32, ptr, ...) @cpp_error(ptr noundef nonnull %0, i32 noundef 2, ptr noundef nonnull @.str.30) #20
  br label %692

674:                                              ; preds = %654
  %675 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 53, i32 25
  %676 = load i8, ptr %675, align 1, !tbaa !198
  %677 = icmp ne i8 %676, 0
  %678 = icmp eq i8 %657, 92
  %679 = and i1 %678, %677
  br i1 %679, label %680, label %722, !prof !195

680:                                              ; preds = %674
  %681 = getelementptr inbounds i8, ptr %655, i64 1
  %682 = load i8, ptr %681, align 1, !tbaa !57
  switch i8 %682, label %722 [
    i8 117, label %683
    i8 85, label %683
  ]

683:                                              ; preds = %680, %680
  %684 = getelementptr inbounds i8, ptr %655, i64 2
  store ptr %684, ptr %631, align 8, !tbaa !84
  %685 = getelementptr inbounds %struct.cpp_buffer, ptr %631, i64 0, i32 4
  %686 = load ptr, ptr %685, align 8, !tbaa !90
  %687 = call i32 @_cpp_valid_ucn(ptr noundef nonnull %0, ptr noundef nonnull %631, ptr noundef %686, i32 noundef 2, ptr noundef nonnull %3) #20
  %688 = icmp eq i32 %687, 0
  br i1 %688, label %689, label %692

689:                                              ; preds = %683
  %690 = load ptr, ptr %631, align 8, !tbaa !84
  %691 = getelementptr inbounds i8, ptr %690, i64 -2
  store ptr %691, ptr %631, align 8, !tbaa !84
  br label %722

692:                                              ; preds = %683, %672, %668, %663
  %693 = getelementptr inbounds %struct.normalize_state, ptr %3, i64 0, i32 1
  br label %694

694:                                              ; preds = %712, %692
  %695 = load ptr, ptr %0, align 8, !tbaa !62
  %696 = load ptr, ptr %695, align 8, !tbaa !84
  %697 = load i8, ptr %696, align 1, !tbaa !57
  %698 = zext i8 %697 to i64
  %699 = getelementptr inbounds [256 x i16], ptr @_sch_istable, i64 0, i64 %698
  %700 = load i16, ptr %699, align 2, !tbaa !93
  %701 = and i16 %700, 516
  %702 = icmp eq i16 %701, 0
  br i1 %702, label %712, label %703

703:                                              ; preds = %694, %703
  %704 = phi ptr [ %705, %703 ], [ %696, %694 ]
  %705 = getelementptr inbounds i8, ptr %704, i64 1
  store ptr %705, ptr %695, align 8, !tbaa !84
  store i32 0, ptr %3, align 4, !tbaa !191
  store i8 0, ptr %693, align 4, !tbaa !193
  %706 = load i8, ptr %705, align 1, !tbaa !57
  %707 = zext i8 %706 to i64
  %708 = getelementptr inbounds [256 x i16], ptr @_sch_istable, i64 0, i64 %707
  %709 = load i16, ptr %708, align 2, !tbaa !93
  %710 = and i16 %709, 516
  %711 = icmp eq i16 %710, 0
  br i1 %711, label %712, label %703, !llvm.loop !227

712:                                              ; preds = %703, %694
  %713 = call fastcc zeroext i8 @forms_identifier_p(ptr noundef nonnull %0, i32 noundef 0, ptr noundef nonnull %3), !range !228
  %714 = icmp eq i8 %713, 0
  br i1 %714, label %715, label %694, !llvm.loop !229

715:                                              ; preds = %712
  %716 = load ptr, ptr %0, align 8, !tbaa !62
  %717 = load ptr, ptr %716, align 8, !tbaa !84
  %718 = ptrtoint ptr %717 to i64
  %719 = ptrtoint ptr %627 to i64
  %720 = sub i64 %718, %719
  %721 = call ptr @_cpp_interpret_identifier(ptr noundef nonnull %0, ptr noundef nonnull %627, i64 noundef %720) #20
  br label %732

722:                                              ; preds = %689, %680, %674, %659
  %723 = ptrtoint ptr %655 to i64
  %724 = ptrtoint ptr %627 to i64
  %725 = sub i64 %723, %724
  %726 = trunc i64 %725 to i32
  %727 = add i32 %656, %726
  %728 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 50
  %729 = load ptr, ptr %728, align 8, !tbaa !129
  %730 = and i64 %725, 4294967295
  %731 = call ptr @ht_lookup_with_hash(ptr noundef %729, ptr noundef nonnull %627, i64 noundef %730, i32 noundef %727, i32 noundef 1) #20
  br label %732

732:                                              ; preds = %722, %715
  %733 = phi ptr [ %721, %715 ], [ %731, %722 ]
  %734 = getelementptr inbounds %struct.cpp_hashnode, ptr %733, i64 0, i32 3
  %735 = load i16, ptr %734, align 2
  %736 = lshr i16 %735, 6
  %737 = zext nneg i16 %736 to i32
  %738 = and i32 %737, 8
  %739 = icmp eq i32 %738, 0
  br i1 %739, label %770, label %740, !prof !230

740:                                              ; preds = %732
  %741 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 2, i32 2
  %742 = load i8, ptr %741, align 2, !tbaa !130
  %743 = icmp eq i8 %742, 0
  br i1 %743, label %744, label %770

744:                                              ; preds = %740
  %745 = and i32 %737, 2
  %746 = icmp eq i32 %745, 0
  br i1 %746, label %754, label %747

747:                                              ; preds = %744
  %748 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 2, i32 7
  %749 = load i8, ptr %748, align 1, !tbaa !131
  %750 = icmp eq i8 %749, 0
  br i1 %750, label %751, label %754

751:                                              ; preds = %747
  %752 = load ptr, ptr %733, align 8, !tbaa !58
  %753 = call zeroext i8 (ptr, i32, ptr, ...) @cpp_error(ptr noundef nonnull %0, i32 noundef 3, ptr noundef nonnull @.str.11, ptr noundef %752) #20
  br label %754

754:                                              ; preds = %751, %747, %744
  %755 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 54, i32 3
  %756 = load ptr, ptr %755, align 8, !tbaa !132
  %757 = icmp eq ptr %733, %756
  br i1 %757, label %758, label %764

758:                                              ; preds = %754
  %759 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 2, i32 6
  %760 = load i8, ptr %759, align 2, !tbaa !133
  %761 = icmp eq i8 %760, 0
  br i1 %761, label %762, label %764

762:                                              ; preds = %758
  %763 = call zeroext i8 (ptr, i32, ptr, ...) @cpp_error(ptr noundef nonnull %0, i32 noundef 2, ptr noundef nonnull @.str.12) #20
  br label %764

764:                                              ; preds = %762, %758, %754
  %765 = load i16, ptr %734, align 2
  %766 = icmp sgt i16 %765, -1
  br i1 %766, label %770, label %767

767:                                              ; preds = %764
  %768 = load ptr, ptr %733, align 8, !tbaa !58
  %769 = call zeroext i8 (ptr, i32, ptr, ...) @cpp_error(ptr noundef nonnull %0, i32 noundef 0, ptr noundef nonnull @.str.13, ptr noundef %768) #20
  br label %770

770:                                              ; preds = %732, %740, %764, %767
  %771 = getelementptr inbounds %struct.cpp_token, ptr %281, i64 0, i32 3
  store ptr %733, ptr %771, align 8, !tbaa !57
  %772 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 53, i32 40
  %773 = load i32, ptr %772, align 8, !tbaa !214
  %774 = getelementptr inbounds %struct.normalize_state, ptr %3, i64 0, i32 2
  %775 = load i32, ptr %774, align 4, !tbaa !215
  %776 = icmp ult i32 %773, %775
  br i1 %776, label %777, label %806, !prof !195

777:                                              ; preds = %770
  %778 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 2, i32 2
  %779 = load i8, ptr %778, align 2, !tbaa !130
  %780 = icmp eq i8 %779, 0
  br i1 %780, label %781, label %806

781:                                              ; preds = %777
  %782 = load i8, ptr %625, align 4
  %783 = zext i8 %782 to i64
  %784 = getelementptr inbounds [73 x %struct.token_spelling], ptr @token_spellings, i64 0, i64 %783
  %785 = load i32, ptr %784, align 16, !tbaa !216
  switch i32 %785, label %792 [
    i32 2, label %786
    i32 1, label %788
  ]

786:                                              ; preds = %781
  %787 = load i32, ptr %771, align 8, !tbaa !57
  br label %792

788:                                              ; preds = %781
  %789 = getelementptr inbounds %struct.ht_identifier, ptr %733, i64 0, i32 1
  %790 = load i32, ptr %789, align 8, !tbaa !218
  %791 = mul i32 %790, 10
  br label %792

792:                                              ; preds = %788, %786, %781
  %793 = phi i32 [ %791, %788 ], [ %787, %786 ], [ 6, %781 ]
  %794 = zext i32 %793 to i64
  %795 = call ptr @xmalloc(i64 noundef %794) #20
  %796 = call ptr @cpp_spell_token(ptr noundef %0, ptr noundef %281, ptr noundef %795, i8 noundef zeroext 0)
  %797 = ptrtoint ptr %796 to i64
  %798 = ptrtoint ptr %795 to i64
  %799 = sub i64 %797, %798
  %800 = load i32, ptr %774, align 4, !tbaa !215
  %801 = icmp eq i32 %800, 1
  %802 = load i32, ptr %281, align 8, !tbaa !171
  %803 = trunc i64 %799 to i32
  %804 = select i1 %801, ptr @.str.18, ptr @.str.19
  %805 = call zeroext i8 (ptr, i32, i32, i32, ptr, ...) @cpp_error_with_line(ptr noundef %0, i32 noundef 0, i32 noundef %802, i32 noundef 0, ptr noundef nonnull %804, i32 noundef %803, ptr noundef %795) #20
  br label %806

806:                                              ; preds = %792, %770, %777
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %3) #20
  %807 = load ptr, ptr %771, align 8, !tbaa !57
  %808 = getelementptr inbounds %struct.cpp_hashnode, ptr %807, i64 0, i32 3
  %809 = load i16, ptr %808, align 2
  %810 = and i16 %809, 64
  %811 = icmp eq i16 %810, 0
  br i1 %811, label %1176, label %812, !prof !230

812:                                              ; preds = %806
  %813 = getelementptr inbounds %struct.cpp_token, ptr %281, i64 0, i32 2
  %814 = load i16, ptr %813, align 2, !tbaa !154
  %815 = or i16 %814, 16
  store i16 %815, ptr %813, align 2, !tbaa !154
  %816 = getelementptr inbounds %struct.cpp_hashnode, ptr %807, i64 0, i32 1
  %817 = load i8, ptr %816, align 8
  %818 = lshr i8 %817, 1
  store i8 %818, ptr %625, align 4
  br label %1176

819:                                              ; preds = %329, %329
  %820 = load ptr, ptr %282, align 8, !tbaa !84
  %821 = getelementptr inbounds i8, ptr %820, i64 -1
  tail call fastcc void @lex_string(ptr noundef nonnull %0, ptr noundef nonnull %281, ptr noundef nonnull %821)
  br label %1176

822:                                              ; preds = %329
  %823 = load ptr, ptr %282, align 8, !tbaa !84
  %824 = load i8, ptr %823, align 1, !tbaa !57
  switch i8 %824, label %891 [
    i8 42, label %825
    i8 47, label %830
    i8 61, label %888
  ], !prof !231

825:                                              ; preds = %822
  %826 = tail call zeroext i8 @_cpp_skip_block_comment(ptr noundef nonnull %0)
  %827 = icmp eq i8 %826, 0
  br i1 %827, label %893, label %828, !prof !111

828:                                              ; preds = %825
  %829 = tail call zeroext i8 (ptr, i32, ptr, ...) @cpp_error(ptr noundef nonnull %0, i32 noundef 3, ptr noundef nonnull @.str.5) #20
  br label %893

830:                                              ; preds = %822
  %831 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 53, i32 3
  %832 = load i8, ptr %831, align 1, !tbaa !232
  %833 = icmp eq i8 %832, 0
  br i1 %833, label %834, label %844

834:                                              ; preds = %830
  %835 = load ptr, ptr %0, align 8, !tbaa !62
  %836 = icmp eq ptr %835, null
  br i1 %836, label %841, label %837

837:                                              ; preds = %834
  %838 = getelementptr inbounds %struct.cpp_buffer, ptr %835, i64 0, i32 15
  %839 = load i8, ptr %838, align 2, !tbaa !233
  %840 = zext i8 %839 to i32
  br label %841

841:                                              ; preds = %834, %837
  %842 = phi i32 [ %840, %837 ], [ 0, %834 ]
  %843 = icmp eq i32 %842, 0
  br i1 %843, label %886, label %844

844:                                              ; preds = %841, %830
  %845 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 53, i32 1
  %846 = load i32, ptr %845, align 4, !tbaa !234
  %847 = icmp eq i32 %846, 0
  br i1 %847, label %848, label %862

848:                                              ; preds = %844
  %849 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 53, i32 31
  %850 = load i8, ptr %849, align 1, !tbaa !182
  %851 = icmp eq i8 %850, 0
  br i1 %851, label %862, label %852

852:                                              ; preds = %848
  %853 = getelementptr inbounds %struct.cpp_buffer, ptr %282, i64 0, i32 14
  %854 = load i8, ptr %853, align 1
  %855 = and i8 %854, 1
  %856 = icmp eq i8 %855, 0
  br i1 %856, label %857, label %862

857:                                              ; preds = %852
  %858 = tail call zeroext i8 (ptr, i32, ptr, ...) @cpp_error(ptr noundef nonnull %0, i32 noundef 2, ptr noundef nonnull @.str.6) #20
  %859 = tail call zeroext i8 (ptr, i32, ptr, ...) @cpp_error(ptr noundef nonnull %0, i32 noundef 2, ptr noundef nonnull @.str.7) #20
  %860 = load i8, ptr %853, align 1
  %861 = or i8 %860, 1
  store i8 %861, ptr %853, align 1
  br label %862

862:                                              ; preds = %857, %852, %848, %844
  %863 = load ptr, ptr %0, align 8, !tbaa !62
  %864 = load ptr, ptr %10, align 8, !tbaa !112
  %865 = getelementptr inbounds %struct.line_maps, ptr %864, i64 0, i32 8
  %866 = load i32, ptr %865, align 4, !tbaa !113
  %867 = load ptr, ptr %863, align 8, !tbaa !84
  %868 = load i8, ptr %867, align 1, !tbaa !57
  %869 = icmp eq i8 %868, 10
  br i1 %869, label %875, label %870

870:                                              ; preds = %862, %870
  %871 = phi ptr [ %872, %870 ], [ %867, %862 ]
  %872 = getelementptr inbounds i8, ptr %871, i64 1
  store ptr %872, ptr %863, align 8, !tbaa !84
  %873 = load i8, ptr %872, align 1, !tbaa !57
  %874 = icmp eq i8 %873, 10
  br i1 %874, label %875, label %870, !llvm.loop !235

875:                                              ; preds = %870, %862
  tail call void @_cpp_process_line_notes(ptr noundef nonnull %0, i32 noundef 1)
  %876 = load ptr, ptr %10, align 8, !tbaa !112
  %877 = getelementptr inbounds %struct.line_maps, ptr %876, i64 0, i32 8
  %878 = load i32, ptr %877, align 4, !tbaa !113
  %879 = icmp eq i32 %866, %878
  br i1 %879, label %893, label %880

880:                                              ; preds = %875
  %881 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 53, i32 13
  %882 = load i8, ptr %881, align 1, !tbaa !126
  %883 = icmp eq i8 %882, 0
  br i1 %883, label %893, label %884

884:                                              ; preds = %880
  %885 = tail call zeroext i8 (ptr, i32, ptr, ...) @cpp_error(ptr noundef nonnull %0, i32 noundef 0, ptr noundef nonnull @.str.8) #20
  br label %893

886:                                              ; preds = %841
  %887 = icmp eq i8 %824, 61
  br i1 %887, label %888, label %891

888:                                              ; preds = %822, %886
  %889 = getelementptr inbounds i8, ptr %823, i64 1
  store ptr %889, ptr %282, align 8, !tbaa !84
  %890 = getelementptr inbounds %struct.cpp_token, ptr %281, i64 0, i32 1
  store i8 30, ptr %890, align 4
  br label %1176

891:                                              ; preds = %822, %886
  %892 = getelementptr inbounds %struct.cpp_token, ptr %281, i64 0, i32 1
  store i8 7, ptr %892, align 4
  br label %1176

893:                                              ; preds = %884, %880, %875, %825, %828
  %894 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 2, i32 5
  %895 = load i8, ptr %894, align 1, !tbaa !236
  %896 = icmp eq i8 %895, 0
  br i1 %896, label %897, label %901, !prof !111

897:                                              ; preds = %893
  %898 = getelementptr inbounds %struct.cpp_token, ptr %281, i64 0, i32 2
  %899 = load i16, ptr %898, align 2, !tbaa !154
  %900 = or i16 %899, 1
  store i16 %900, ptr %898, align 2, !tbaa !154
  br label %286

901:                                              ; preds = %893
  %902 = zext i8 %824 to i32
  tail call fastcc void @save_comment(ptr noundef nonnull %0, ptr noundef nonnull %281, ptr noundef nonnull %823, i32 noundef %902)
  br label %1176

903:                                              ; preds = %329
  %904 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 2, i32 3
  %905 = load i8, ptr %904, align 1, !tbaa !237
  %906 = icmp eq i8 %905, 0
  br i1 %906, label %913, label %907, !prof !238

907:                                              ; preds = %903
  %908 = load ptr, ptr %282, align 8, !tbaa !84
  %909 = getelementptr inbounds i8, ptr %908, i64 -1
  tail call fastcc void @lex_string(ptr noundef nonnull %0, ptr noundef nonnull %281, ptr noundef nonnull %909)
  %910 = getelementptr inbounds %struct.cpp_token, ptr %281, i64 0, i32 1
  %911 = load i8, ptr %910, align 4
  %912 = icmp eq i8 %911, 3
  br i1 %912, label %913, label %1176

913:                                              ; preds = %907, %903
  %914 = getelementptr inbounds %struct.cpp_token, ptr %281, i64 0, i32 1
  store i8 3, ptr %914, align 4
  %915 = load ptr, ptr %282, align 8, !tbaa !84
  %916 = load i8, ptr %915, align 1, !tbaa !57
  switch i8 %916, label %926 [
    i8 61, label %917
    i8 60, label %919
  ], !prof !239

917:                                              ; preds = %913
  %918 = getelementptr inbounds i8, ptr %915, i64 1
  store ptr %918, ptr %282, align 8, !tbaa !84
  store i8 26, ptr %914, align 4
  br label %1176

919:                                              ; preds = %913
  %920 = getelementptr inbounds i8, ptr %915, i64 1
  store ptr %920, ptr %282, align 8, !tbaa !84
  store i8 13, ptr %914, align 4
  %921 = load ptr, ptr %282, align 8, !tbaa !84
  %922 = load i8, ptr %921, align 1, !tbaa !57
  %923 = icmp eq i8 %922, 61
  br i1 %923, label %924, label %1176, !prof !240

924:                                              ; preds = %919
  %925 = getelementptr inbounds i8, ptr %921, i64 1
  store ptr %925, ptr %282, align 8, !tbaa !84
  store i8 36, ptr %914, align 4
  br label %1176

926:                                              ; preds = %913
  %927 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 53, i32 8
  %928 = load i8, ptr %927, align 2, !tbaa !241
  %929 = icmp eq i8 %928, 0
  br i1 %929, label %1176, label %930, !prof !242

930:                                              ; preds = %926
  switch i8 %916, label %1176 [
    i8 58, label %931
    i8 37, label %936
  ], !prof !243

931:                                              ; preds = %930
  %932 = getelementptr inbounds i8, ptr %915, i64 1
  store ptr %932, ptr %282, align 8, !tbaa !84
  %933 = getelementptr inbounds %struct.cpp_token, ptr %281, i64 0, i32 2
  %934 = load i16, ptr %933, align 2, !tbaa !154
  %935 = or i16 %934, 2
  store i16 %935, ptr %933, align 2, !tbaa !154
  store i8 39, ptr %914, align 4
  br label %1176

936:                                              ; preds = %930
  %937 = getelementptr inbounds i8, ptr %915, i64 1
  store ptr %937, ptr %282, align 8, !tbaa !84
  %938 = getelementptr inbounds %struct.cpp_token, ptr %281, i64 0, i32 2
  %939 = load i16, ptr %938, align 2, !tbaa !154
  %940 = or i16 %939, 2
  store i16 %940, ptr %938, align 2, !tbaa !154
  store i8 41, ptr %914, align 4
  br label %1176

941:                                              ; preds = %329
  %942 = getelementptr inbounds %struct.cpp_token, ptr %281, i64 0, i32 1
  store i8 2, ptr %942, align 4
  %943 = load ptr, ptr %282, align 8, !tbaa !84
  %944 = load i8, ptr %943, align 1, !tbaa !57
  switch i8 %944, label %1176 [
    i8 61, label %945
    i8 62, label %947
  ], !prof !244

945:                                              ; preds = %941
  %946 = getelementptr inbounds i8, ptr %943, i64 1
  store ptr %946, ptr %282, align 8, !tbaa !84
  store i8 25, ptr %942, align 4
  br label %1176

947:                                              ; preds = %941
  %948 = getelementptr inbounds i8, ptr %943, i64 1
  store ptr %948, ptr %282, align 8, !tbaa !84
  store i8 12, ptr %942, align 4
  %949 = load ptr, ptr %282, align 8, !tbaa !84
  %950 = load i8, ptr %949, align 1, !tbaa !57
  %951 = icmp eq i8 %950, 61
  br i1 %951, label %952, label %1176, !prof !245

952:                                              ; preds = %947
  %953 = getelementptr inbounds i8, ptr %949, i64 1
  store ptr %953, ptr %282, align 8, !tbaa !84
  store i8 35, ptr %942, align 4
  br label %1176

954:                                              ; preds = %329
  %955 = getelementptr inbounds %struct.cpp_token, ptr %281, i64 0, i32 1
  store i8 8, ptr %955, align 4
  %956 = load ptr, ptr %282, align 8, !tbaa !84
  %957 = load i8, ptr %956, align 1, !tbaa !57
  %958 = icmp eq i8 %957, 61
  br i1 %958, label %959, label %961, !prof !246

959:                                              ; preds = %954
  %960 = getelementptr inbounds i8, ptr %956, i64 1
  store ptr %960, ptr %282, align 8, !tbaa !84
  store i8 31, ptr %955, align 4
  br label %1176

961:                                              ; preds = %954
  %962 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 53, i32 8
  %963 = load i8, ptr %962, align 2, !tbaa !241
  %964 = icmp eq i8 %963, 0
  br i1 %964, label %1176, label %965, !prof !246

965:                                              ; preds = %961
  switch i8 %957, label %1176 [
    i8 58, label %966
    i8 62, label %981
  ], !prof !247

966:                                              ; preds = %965
  %967 = getelementptr inbounds i8, ptr %956, i64 1
  store ptr %967, ptr %282, align 8, !tbaa !84
  %968 = getelementptr inbounds %struct.cpp_token, ptr %281, i64 0, i32 2
  %969 = load i16, ptr %968, align 2, !tbaa !154
  %970 = or i16 %969, 2
  store i16 %970, ptr %968, align 2, !tbaa !154
  store i8 37, ptr %955, align 4
  %971 = load ptr, ptr %282, align 8, !tbaa !84
  %972 = load i8, ptr %971, align 1, !tbaa !57
  %973 = icmp eq i8 %972, 37
  br i1 %973, label %974, label %1176

974:                                              ; preds = %966
  %975 = getelementptr inbounds i8, ptr %971, i64 1
  %976 = load i8, ptr %975, align 1, !tbaa !57
  %977 = icmp eq i8 %976, 58
  br i1 %977, label %978, label %1176

978:                                              ; preds = %974
  %979 = getelementptr inbounds i8, ptr %971, i64 2
  store ptr %979, ptr %282, align 8, !tbaa !84
  store i8 38, ptr %955, align 4
  %980 = getelementptr inbounds %struct.cpp_token, ptr %281, i64 0, i32 3
  store i32 0, ptr %980, align 8, !tbaa !57
  br label %1176

981:                                              ; preds = %965
  %982 = getelementptr inbounds i8, ptr %956, i64 1
  store ptr %982, ptr %282, align 8, !tbaa !84
  %983 = getelementptr inbounds %struct.cpp_token, ptr %281, i64 0, i32 2
  %984 = load i16, ptr %983, align 2, !tbaa !154
  %985 = or i16 %984, 2
  store i16 %985, ptr %983, align 2, !tbaa !154
  store i8 42, ptr %955, align 4
  br label %1176

986:                                              ; preds = %329
  %987 = getelementptr inbounds %struct.cpp_token, ptr %281, i64 0, i32 1
  store i8 48, ptr %987, align 4
  %988 = load ptr, ptr %282, align 8, !tbaa !84
  %989 = load i8, ptr %988, align 1, !tbaa !57
  %990 = zext i8 %989 to i64
  %991 = getelementptr inbounds [256 x i16], ptr @_sch_istable, i64 0, i64 %990
  %992 = load i16, ptr %991, align 2, !tbaa !93
  %993 = and i16 %992, 4
  %994 = icmp eq i16 %993, 0
  br i1 %994, label %997, label %995, !prof !248

995:                                              ; preds = %986
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %4) #20
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %4, i8 0, i64 12, i1 false)
  store i8 55, ptr %987, align 4
  %996 = getelementptr inbounds %struct.cpp_token, ptr %281, i64 0, i32 3
  call fastcc void @lex_number(ptr noundef nonnull %0, ptr noundef nonnull %996, ptr noundef nonnull %4)
  call fastcc void @warn_about_normalization(ptr noundef nonnull %0, ptr noundef nonnull %281, ptr noundef nonnull %4)
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %4) #20
  br label %1176

997:                                              ; preds = %986
  switch i8 %989, label %1176 [
    i8 46, label %998
    i8 42, label %1006
  ], !prof !249

998:                                              ; preds = %997
  %999 = getelementptr inbounds i8, ptr %988, i64 1
  %1000 = load i8, ptr %999, align 1, !tbaa !57
  %1001 = icmp eq i8 %1000, 46
  br i1 %1001, label %1002, label %1004, !prof !250

1002:                                             ; preds = %998
  %1003 = getelementptr inbounds i8, ptr %988, i64 2
  store ptr %1003, ptr %282, align 8, !tbaa !84
  store i8 44, ptr %987, align 4
  br label %1176

1004:                                             ; preds = %998
  %1005 = icmp eq i8 %989, 42
  br i1 %1005, label %1006, label %1176, !prof !251

1006:                                             ; preds = %997, %1004
  %1007 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 53, i32 2
  %1008 = load i8, ptr %1007, align 8, !tbaa !252
  %1009 = icmp eq i8 %1008, 0
  br i1 %1009, label %1176, label %1010

1010:                                             ; preds = %1006
  %1011 = getelementptr inbounds i8, ptr %988, i64 1
  store ptr %1011, ptr %282, align 8, !tbaa !84
  store i8 51, ptr %987, align 4
  br label %1176

1012:                                             ; preds = %329
  %1013 = getelementptr inbounds %struct.cpp_token, ptr %281, i64 0, i32 1
  store i8 4, ptr %1013, align 4
  %1014 = load ptr, ptr %282, align 8, !tbaa !84
  %1015 = load i8, ptr %1014, align 1, !tbaa !57
  switch i8 %1015, label %1176 [
    i8 43, label %1016
    i8 61, label %1018
  ], !prof !253

1016:                                             ; preds = %1012
  %1017 = getelementptr inbounds i8, ptr %1014, i64 1
  store ptr %1017, ptr %282, align 8, !tbaa !84
  store i8 45, ptr %1013, align 4
  br label %1176

1018:                                             ; preds = %1012
  %1019 = getelementptr inbounds i8, ptr %1014, i64 1
  store ptr %1019, ptr %282, align 8, !tbaa !84
  store i8 27, ptr %1013, align 4
  br label %1176

1020:                                             ; preds = %329
  %1021 = getelementptr inbounds %struct.cpp_token, ptr %281, i64 0, i32 1
  store i8 5, ptr %1021, align 4
  %1022 = load ptr, ptr %282, align 8, !tbaa !84
  %1023 = load i8, ptr %1022, align 1, !tbaa !57
  switch i8 %1023, label %1176 [
    i8 62, label %1024
    i8 45, label %1035
    i8 61, label %1037
  ], !prof !254

1024:                                             ; preds = %1020
  %1025 = getelementptr inbounds i8, ptr %1022, i64 1
  store ptr %1025, ptr %282, align 8, !tbaa !84
  store i8 47, ptr %1021, align 4
  %1026 = load ptr, ptr %282, align 8, !tbaa !84
  %1027 = load i8, ptr %1026, align 1, !tbaa !57
  %1028 = icmp eq i8 %1027, 42
  br i1 %1028, label %1029, label %1176, !prof !255

1029:                                             ; preds = %1024
  %1030 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 53, i32 2
  %1031 = load i8, ptr %1030, align 8, !tbaa !252
  %1032 = icmp eq i8 %1031, 0
  br i1 %1032, label %1176, label %1033

1033:                                             ; preds = %1029
  %1034 = getelementptr inbounds i8, ptr %1026, i64 1
  store ptr %1034, ptr %282, align 8, !tbaa !84
  store i8 50, ptr %1021, align 4
  br label %1176

1035:                                             ; preds = %1020
  %1036 = getelementptr inbounds i8, ptr %1022, i64 1
  store ptr %1036, ptr %282, align 8, !tbaa !84
  store i8 46, ptr %1021, align 4
  br label %1176

1037:                                             ; preds = %1020
  %1038 = getelementptr inbounds i8, ptr %1022, i64 1
  store ptr %1038, ptr %282, align 8, !tbaa !84
  store i8 28, ptr %1021, align 4
  br label %1176

1039:                                             ; preds = %329
  %1040 = getelementptr inbounds %struct.cpp_token, ptr %281, i64 0, i32 1
  store i8 9, ptr %1040, align 4
  %1041 = load ptr, ptr %282, align 8, !tbaa !84
  %1042 = load i8, ptr %1041, align 1, !tbaa !57
  switch i8 %1042, label %1176 [
    i8 38, label %1043
    i8 61, label %1045
  ], !prof !256

1043:                                             ; preds = %1039
  %1044 = getelementptr inbounds i8, ptr %1041, i64 1
  store ptr %1044, ptr %282, align 8, !tbaa !84
  store i8 15, ptr %1040, align 4
  br label %1176

1045:                                             ; preds = %1039
  %1046 = getelementptr inbounds i8, ptr %1041, i64 1
  store ptr %1046, ptr %282, align 8, !tbaa !84
  store i8 32, ptr %1040, align 4
  br label %1176

1047:                                             ; preds = %329
  %1048 = getelementptr inbounds %struct.cpp_token, ptr %281, i64 0, i32 1
  store i8 10, ptr %1048, align 4
  %1049 = load ptr, ptr %282, align 8, !tbaa !84
  %1050 = load i8, ptr %1049, align 1, !tbaa !57
  switch i8 %1050, label %1176 [
    i8 124, label %1051
    i8 61, label %1053
  ], !prof !257

1051:                                             ; preds = %1047
  %1052 = getelementptr inbounds i8, ptr %1049, i64 1
  store ptr %1052, ptr %282, align 8, !tbaa !84
  store i8 16, ptr %1048, align 4
  br label %1176

1053:                                             ; preds = %1047
  %1054 = getelementptr inbounds i8, ptr %1049, i64 1
  store ptr %1054, ptr %282, align 8, !tbaa !84
  store i8 33, ptr %1048, align 4
  br label %1176

1055:                                             ; preds = %329
  %1056 = getelementptr inbounds %struct.cpp_token, ptr %281, i64 0, i32 1
  store i8 18, ptr %1056, align 4
  %1057 = load ptr, ptr %282, align 8, !tbaa !84
  %1058 = load i8, ptr %1057, align 1, !tbaa !57
  switch i8 %1058, label %1176 [
    i8 58, label %1059
    i8 62, label %1067
  ], !prof !258

1059:                                             ; preds = %1055
  %1060 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 53, i32 2
  %1061 = load i8, ptr %1060, align 8, !tbaa !252
  %1062 = icmp eq i8 %1061, 0
  br i1 %1062, label %1065, label %1063

1063:                                             ; preds = %1059
  %1064 = getelementptr inbounds i8, ptr %1057, i64 1
  store ptr %1064, ptr %282, align 8, !tbaa !84
  store i8 49, ptr %1056, align 4
  br label %1176

1065:                                             ; preds = %1059
  %1066 = icmp eq i8 %1058, 62
  br i1 %1066, label %1067, label %1176, !prof !259

1067:                                             ; preds = %1055, %1065
  %1068 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 53, i32 8
  %1069 = load i8, ptr %1068, align 2, !tbaa !241
  %1070 = icmp eq i8 %1069, 0
  br i1 %1070, label %1176, label %1071

1071:                                             ; preds = %1067
  %1072 = getelementptr inbounds i8, ptr %1057, i64 1
  store ptr %1072, ptr %282, align 8, !tbaa !84
  %1073 = getelementptr inbounds %struct.cpp_token, ptr %281, i64 0, i32 2
  %1074 = load i16, ptr %1073, align 2, !tbaa !154
  %1075 = or i16 %1074, 2
  store i16 %1075, ptr %1073, align 2, !tbaa !154
  store i8 40, ptr %1056, align 4
  br label %1176

1076:                                             ; preds = %329
  %1077 = getelementptr inbounds %struct.cpp_token, ptr %281, i64 0, i32 1
  store i8 6, ptr %1077, align 4
  %1078 = load ptr, ptr %282, align 8, !tbaa !84
  %1079 = load i8, ptr %1078, align 1, !tbaa !57
  %1080 = icmp eq i8 %1079, 61
  br i1 %1080, label %1081, label %1176, !prof !260

1081:                                             ; preds = %1076
  %1082 = getelementptr inbounds i8, ptr %1078, i64 1
  store ptr %1082, ptr %282, align 8, !tbaa !84
  store i8 29, ptr %1077, align 4
  br label %1176

1083:                                             ; preds = %329
  %1084 = getelementptr inbounds %struct.cpp_token, ptr %281, i64 0, i32 1
  store i8 0, ptr %1084, align 4
  %1085 = load ptr, ptr %282, align 8, !tbaa !84
  %1086 = load i8, ptr %1085, align 1, !tbaa !57
  %1087 = icmp eq i8 %1086, 61
  br i1 %1087, label %1088, label %1176, !prof !261

1088:                                             ; preds = %1083
  %1089 = getelementptr inbounds i8, ptr %1085, i64 1
  store ptr %1089, ptr %282, align 8, !tbaa !84
  store i8 23, ptr %1084, align 4
  br label %1176

1090:                                             ; preds = %329
  %1091 = getelementptr inbounds %struct.cpp_token, ptr %281, i64 0, i32 1
  store i8 1, ptr %1091, align 4
  %1092 = load ptr, ptr %282, align 8, !tbaa !84
  %1093 = load i8, ptr %1092, align 1, !tbaa !57
  %1094 = icmp eq i8 %1093, 61
  br i1 %1094, label %1095, label %1176, !prof !262

1095:                                             ; preds = %1090
  %1096 = getelementptr inbounds i8, ptr %1092, i64 1
  store ptr %1096, ptr %282, align 8, !tbaa !84
  store i8 24, ptr %1091, align 4
  br label %1176

1097:                                             ; preds = %329
  %1098 = getelementptr inbounds %struct.cpp_token, ptr %281, i64 0, i32 1
  store i8 11, ptr %1098, align 4
  %1099 = load ptr, ptr %282, align 8, !tbaa !84
  %1100 = load i8, ptr %1099, align 1, !tbaa !57
  %1101 = icmp eq i8 %1100, 61
  br i1 %1101, label %1102, label %1176

1102:                                             ; preds = %1097
  %1103 = getelementptr inbounds i8, ptr %1099, i64 1
  store ptr %1103, ptr %282, align 8, !tbaa !84
  store i8 34, ptr %1098, align 4
  br label %1176

1104:                                             ; preds = %329
  %1105 = getelementptr inbounds %struct.cpp_token, ptr %281, i64 0, i32 1
  store i8 37, ptr %1105, align 4
  %1106 = load ptr, ptr %282, align 8, !tbaa !84
  %1107 = load i8, ptr %1106, align 1, !tbaa !57
  %1108 = icmp eq i8 %1107, 35
  br i1 %1108, label %1109, label %1111, !prof !263

1109:                                             ; preds = %1104
  %1110 = getelementptr inbounds i8, ptr %1106, i64 1
  store ptr %1110, ptr %282, align 8, !tbaa !84
  store i8 38, ptr %1105, align 4
  br label %1111

1111:                                             ; preds = %1109, %1104
  %1112 = getelementptr inbounds %struct.cpp_token, ptr %281, i64 0, i32 3
  store i32 0, ptr %1112, align 8, !tbaa !57
  br label %1176

1113:                                             ; preds = %329
  %1114 = getelementptr inbounds %struct.cpp_token, ptr %281, i64 0, i32 1
  store i8 17, ptr %1114, align 4
  br label %1176

1115:                                             ; preds = %329
  %1116 = getelementptr inbounds %struct.cpp_token, ptr %281, i64 0, i32 1
  store i8 14, ptr %1116, align 4
  br label %1176

1117:                                             ; preds = %329
  %1118 = getelementptr inbounds %struct.cpp_token, ptr %281, i64 0, i32 1
  store i8 19, ptr %1118, align 4
  br label %1176

1119:                                             ; preds = %329
  %1120 = getelementptr inbounds %struct.cpp_token, ptr %281, i64 0, i32 1
  store i8 20, ptr %1120, align 4
  br label %1176

1121:                                             ; preds = %329
  %1122 = getelementptr inbounds %struct.cpp_token, ptr %281, i64 0, i32 1
  store i8 21, ptr %1122, align 4
  br label %1176

1123:                                             ; preds = %329
  %1124 = getelementptr inbounds %struct.cpp_token, ptr %281, i64 0, i32 1
  store i8 39, ptr %1124, align 4
  br label %1176

1125:                                             ; preds = %329
  %1126 = getelementptr inbounds %struct.cpp_token, ptr %281, i64 0, i32 1
  store i8 40, ptr %1126, align 4
  br label %1176

1127:                                             ; preds = %329
  %1128 = getelementptr inbounds %struct.cpp_token, ptr %281, i64 0, i32 1
  store i8 41, ptr %1128, align 4
  br label %1176

1129:                                             ; preds = %329
  %1130 = getelementptr inbounds %struct.cpp_token, ptr %281, i64 0, i32 1
  store i8 42, ptr %1130, align 4
  br label %1176

1131:                                             ; preds = %329
  %1132 = getelementptr inbounds %struct.cpp_token, ptr %281, i64 0, i32 1
  store i8 43, ptr %1132, align 4
  br label %1176

1133:                                             ; preds = %329
  %1134 = getelementptr inbounds %struct.cpp_token, ptr %281, i64 0, i32 1
  store i8 52, ptr %1134, align 4
  br label %1176

1135:                                             ; preds = %329, %329
  %1136 = load ptr, ptr %282, align 8, !tbaa !84
  %1137 = getelementptr inbounds i8, ptr %1136, i64 -1
  store ptr %1137, ptr %282, align 8, !tbaa !84
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %5) #20
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %5, i8 0, i64 12, i1 false)
  %1138 = call fastcc zeroext i8 @forms_identifier_p(ptr noundef nonnull %0, i32 noundef 1, ptr noundef nonnull %5), !range !228
  %1139 = icmp eq i8 %1138, 0
  br i1 %1139, label %1144, label %1140

1140:                                             ; preds = %1135
  %1141 = getelementptr inbounds %struct.cpp_token, ptr %281, i64 0, i32 1
  store i8 53, ptr %1141, align 4
  %1142 = call fastcc ptr @lex_identifier(ptr noundef nonnull %0, ptr noundef nonnull %1137, i8 noundef zeroext 1, ptr noundef nonnull %5)
  %1143 = getelementptr inbounds %struct.cpp_token, ptr %281, i64 0, i32 3
  store ptr %1142, ptr %1143, align 8, !tbaa !57
  call fastcc void @warn_about_normalization(ptr noundef nonnull %0, ptr noundef nonnull %281, ptr noundef nonnull %5)
  br label %1147

1144:                                             ; preds = %1135
  %1145 = load ptr, ptr %282, align 8, !tbaa !84
  %1146 = getelementptr inbounds i8, ptr %1145, i64 1
  store ptr %1146, ptr %282, align 8, !tbaa !84
  br label %1147

1147:                                             ; preds = %1144, %1140
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %5) #20
  br i1 %1139, label %1148, label %1176

1148:                                             ; preds = %329, %1147
  %1149 = load ptr, ptr %282, align 8, !tbaa !84
  %1150 = getelementptr inbounds i8, ptr %1149, i64 -1
  %1151 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 6
  %1152 = load ptr, ptr %1151, align 8, !tbaa !202
  %1153 = getelementptr inbounds %struct._cpp_buff, ptr %1152, i64 0, i32 2
  %1154 = load ptr, ptr %1153, align 8, !tbaa !203
  %1155 = getelementptr inbounds %struct._cpp_buff, ptr %1152, i64 0, i32 3
  %1156 = load ptr, ptr %1155, align 8, !tbaa !205
  %1157 = ptrtoint ptr %1156 to i64
  %1158 = ptrtoint ptr %1154 to i64
  %1159 = sub i64 %1157, %1158
  %1160 = icmp ult i64 %1159, 2
  br i1 %1160, label %1161, label %1166

1161:                                             ; preds = %1148
  %1162 = call ptr @_cpp_get_buff(ptr noundef %0, i64 noundef 2)
  %1163 = load ptr, ptr %1151, align 8, !tbaa !202
  store ptr %1163, ptr %1162, align 8, !tbaa !209
  store ptr %1162, ptr %1151, align 8, !tbaa !202
  %1164 = getelementptr inbounds %struct._cpp_buff, ptr %1162, i64 0, i32 2
  %1165 = load ptr, ptr %1164, align 8, !tbaa !203
  br label %1166

1166:                                             ; preds = %1148, %1161
  %1167 = phi ptr [ %1162, %1161 ], [ %1152, %1148 ]
  %1168 = phi ptr [ %1165, %1161 ], [ %1154, %1148 ]
  %1169 = getelementptr inbounds i8, ptr %1168, i64 2
  %1170 = getelementptr inbounds %struct._cpp_buff, ptr %1167, i64 0, i32 2
  store ptr %1169, ptr %1170, align 8, !tbaa !203
  %1171 = load i8, ptr %1150, align 1
  store i8 %1171, ptr %1168, align 1
  %1172 = getelementptr inbounds i8, ptr %1168, i64 1
  store i8 0, ptr %1172, align 1, !tbaa !57
  %1173 = getelementptr inbounds %struct.cpp_token, ptr %281, i64 0, i32 1
  store i8 60, ptr %1173, align 4
  %1174 = getelementptr inbounds %struct.cpp_token, ptr %281, i64 0, i32 3
  store i32 1, ptr %1174, align 8, !tbaa !57
  %1175 = getelementptr inbounds %struct.cpp_token, ptr %281, i64 0, i32 3, i32 0, i32 1
  store ptr %1168, ptr %1175, align 8, !tbaa !57
  br label %1176

1176:                                             ; preds = %1055, %997, %585, %622, %819, %888, %891, %901, %1111, %1113, %1115, %1117, %1119, %1121, %1123, %1125, %1127, %1129, %1131, %1133, %1166, %812, %806, %907, %924, %919, %931, %936, %926, %917, %952, %947, %945, %961, %981, %966, %974, %978, %959, %1002, %1010, %1006, %1004, %995, %1018, %1016, %1035, %1037, %1024, %1029, %1033, %1045, %1043, %1053, %1051, %1065, %1067, %1071, %1063, %1081, %1076, %1088, %1083, %1095, %1090, %1102, %1097, %930, %941, %965, %1012, %1020, %1039, %1047, %1147, %253, %257, %22, %28
  %1177 = phi ptr [ %12, %28 ], [ %12, %22 ], [ %12, %257 ], [ %12, %253 ], [ %281, %1147 ], [ %281, %1047 ], [ %281, %1039 ], [ %281, %1020 ], [ %281, %1012 ], [ %281, %965 ], [ %281, %941 ], [ %281, %930 ], [ %281, %1097 ], [ %281, %1102 ], [ %281, %1090 ], [ %281, %1095 ], [ %281, %1083 ], [ %281, %1088 ], [ %281, %1076 ], [ %281, %1081 ], [ %281, %1063 ], [ %281, %1071 ], [ %281, %1067 ], [ %281, %1065 ], [ %281, %1051 ], [ %281, %1053 ], [ %281, %1043 ], [ %281, %1045 ], [ %281, %1033 ], [ %281, %1029 ], [ %281, %1024 ], [ %281, %1037 ], [ %281, %1035 ], [ %281, %1016 ], [ %281, %1018 ], [ %281, %995 ], [ %281, %1004 ], [ %281, %1006 ], [ %281, %1010 ], [ %281, %1002 ], [ %281, %959 ], [ %281, %978 ], [ %281, %974 ], [ %281, %966 ], [ %281, %981 ], [ %281, %961 ], [ %281, %945 ], [ %281, %947 ], [ %281, %952 ], [ %281, %917 ], [ %281, %926 ], [ %281, %936 ], [ %281, %931 ], [ %281, %919 ], [ %281, %924 ], [ %281, %907 ], [ %281, %806 ], [ %281, %812 ], [ %281, %1166 ], [ %281, %1133 ], [ %281, %1131 ], [ %281, %1129 ], [ %281, %1127 ], [ %281, %1125 ], [ %281, %1123 ], [ %281, %1121 ], [ %281, %1119 ], [ %281, %1117 ], [ %281, %1115 ], [ %281, %1113 ], [ %281, %1111 ], [ %281, %901 ], [ %281, %891 ], [ %281, %888 ], [ %281, %819 ], [ %281, %622 ], [ %281, %585 ], [ %281, %997 ], [ %281, %1055 ]
  ret ptr %1177
}

declare i32 @_cpp_handle_directive(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local zeroext i8 @_cpp_get_fresh_line(ptr noundef %0) local_unnamed_addr #3 !prof !50 {
  %2 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 2
  %3 = load i8, ptr %2, align 8, !tbaa !160
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %5, label %220, !prof !161

5:                                                ; preds = %1, %217
  %6 = phi i8 [ %219, %217 ], [ undef, %1 ]
  %7 = load ptr, ptr %0, align 8, !tbaa !62
  %8 = getelementptr inbounds %struct.cpp_buffer, ptr %7, i64 0, i32 13
  %9 = load i8, ptr %8, align 8, !tbaa !85
  %10 = icmp eq i8 %9, 0
  br i1 %10, label %217, label %11, !prof !162

11:                                               ; preds = %5
  %12 = getelementptr inbounds %struct.cpp_buffer, ptr %7, i64 0, i32 2
  %13 = load ptr, ptr %12, align 8, !tbaa !82
  %14 = getelementptr inbounds %struct.cpp_buffer, ptr %7, i64 0, i32 4
  %15 = load ptr, ptr %14, align 8, !tbaa !90
  %16 = icmp ult ptr %13, %15
  br i1 %16, label %17, label %192, !prof !163

17:                                               ; preds = %11
  %18 = getelementptr inbounds %struct.cpp_buffer, ptr %7, i64 0, i32 7
  store i32 0, ptr %18, align 4, !tbaa !79
  %19 = getelementptr inbounds %struct.cpp_buffer, ptr %7, i64 0, i32 6
  store i32 0, ptr %19, align 8, !tbaa !81
  %20 = getelementptr inbounds %struct.cpp_buffer, ptr %7, i64 0, i32 1
  store ptr %13, ptr %20, align 8, !tbaa !83
  store ptr %13, ptr %7, align 8, !tbaa !84
  store i8 0, ptr %8, align 8, !tbaa !85
  %21 = getelementptr inbounds i8, ptr %13, i64 -1
  %22 = getelementptr inbounds %struct.cpp_buffer, ptr %7, i64 0, i32 14
  %23 = load i8, ptr %22, align 1
  %24 = and i8 %23, 2
  %25 = icmp eq i8 %24, 0
  br i1 %25, label %26, label %156, !prof !86

26:                                               ; preds = %29, %17
  %27 = phi ptr [ %21, %17 ], [ %31, %29 ]
  %28 = phi ptr [ null, %17 ], [ %31, %29 ]
  br label %29

29:                                               ; preds = %90, %26
  %30 = phi ptr [ %27, %26 ], [ %31, %90 ]
  %31 = getelementptr inbounds i8, ptr %30, i64 1
  %32 = load i8, ptr %31, align 1, !tbaa !57
  switch i8 %32, label %90 [
    i8 13, label %33
    i8 10, label %33
    i8 92, label %26
    i8 63, label %68
  ], !prof !87, !llvm.loop !88

33:                                               ; preds = %29, %29
  %34 = load ptr, ptr %14, align 8, !tbaa !90
  %35 = icmp eq ptr %31, %34
  br i1 %35, label %167, label %36, !prof !91

36:                                               ; preds = %33
  %37 = icmp eq i8 %32, 13
  br i1 %37, label %38, label %44, !prof !91

38:                                               ; preds = %36
  %39 = getelementptr inbounds i8, ptr %30, i64 2
  %40 = load i8, ptr %39, align 1, !tbaa !57
  %41 = icmp eq i8 %40, 10
  br i1 %41, label %42, label %44

42:                                               ; preds = %38
  %43 = icmp eq ptr %39, %34
  br i1 %43, label %167, label %44

44:                                               ; preds = %42, %38, %36
  %45 = phi ptr [ %39, %42 ], [ %31, %38 ], [ %31, %36 ]
  %46 = icmp eq ptr %28, null
  br i1 %46, label %167, label %47, !prof !92

47:                                               ; preds = %44, %47
  %48 = phi i64 [ %49, %47 ], [ 1, %44 ]
  %49 = add nsw i64 %48, -1
  %50 = getelementptr inbounds i8, ptr %30, i64 %49
  %51 = load i8, ptr %50, align 1, !tbaa !57
  %52 = zext i8 %51 to i64
  %53 = getelementptr inbounds [256 x i16], ptr @_sch_istable, i64 0, i64 %52
  %54 = load i16, ptr %53, align 2, !tbaa !93
  %55 = and i16 %54, 2048
  %56 = icmp eq i16 %55, 0
  br i1 %56, label %57, label %47, !prof !94, !llvm.loop !95

57:                                               ; preds = %47
  %58 = getelementptr inbounds i8, ptr %30, i64 %49
  %59 = icmp eq ptr %58, %28
  br i1 %59, label %60, label %167, !prof !97

60:                                               ; preds = %57
  %61 = getelementptr inbounds i8, ptr %30, i64 %48
  %62 = icmp eq i64 %48, 1
  %63 = select i1 %62, i32 92, i32 32
  tail call fastcc void @add_line_note(ptr noundef nonnull %7, ptr noundef nonnull %58, i32 noundef %63)
  %64 = getelementptr inbounds i8, ptr %61, i64 -2
  store ptr %58, ptr %12, align 8, !tbaa !82
  br label %65

65:                                               ; preds = %84, %60
  %66 = phi ptr [ %85, %84 ], [ %45, %60 ]
  %67 = phi ptr [ %31, %84 ], [ %64, %60 ]
  br label %91

68:                                               ; preds = %29
  %69 = getelementptr inbounds i8, ptr %30, i64 2
  %70 = load i8, ptr %69, align 1, !tbaa !57
  %71 = icmp eq i8 %70, 63
  br i1 %71, label %72, label %90, !prof !98

72:                                               ; preds = %68
  %73 = getelementptr inbounds i8, ptr %30, i64 3
  %74 = load i8, ptr %73, align 1, !tbaa !57
  %75 = zext i8 %74 to i64
  %76 = getelementptr inbounds [256 x i8], ptr @_cpp_trigraph_map, i64 0, i64 %75
  %77 = load i8, ptr %76, align 1, !tbaa !57
  %78 = icmp eq i8 %77, 0
  br i1 %78, label %90, label %79

79:                                               ; preds = %72
  %80 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 53, i32 7
  %81 = zext i8 %74 to i32
  tail call fastcc void @add_line_note(ptr noundef nonnull %7, ptr noundef nonnull %31, i32 noundef %81)
  %82 = load i8, ptr %80, align 1, !tbaa !99
  %83 = icmp eq i8 %82, 0
  br i1 %83, label %90, label %84

84:                                               ; preds = %79
  %85 = getelementptr inbounds i8, ptr %30, i64 3
  %86 = load i8, ptr %85, align 1, !tbaa !57
  %87 = zext i8 %86 to i64
  %88 = getelementptr inbounds [256 x i8], ptr @_cpp_trigraph_map, i64 0, i64 %87
  %89 = load i8, ptr %88, align 1, !tbaa !57
  store i8 %89, ptr %31, align 1, !tbaa !57
  br label %65

90:                                               ; preds = %29, %79, %72, %68
  br label %29, !llvm.loop !88

91:                                               ; preds = %153, %65
  %92 = phi ptr [ %66, %65 ], [ %154, %153 ]
  %93 = phi ptr [ %67, %65 ], [ %155, %153 ]
  %94 = getelementptr inbounds i8, ptr %92, i64 1
  %95 = load i8, ptr %94, align 1, !tbaa !57
  %96 = getelementptr inbounds i8, ptr %93, i64 1
  store i8 %95, ptr %96, align 1, !tbaa !57
  switch i8 %95, label %153 [
    i8 13, label %97
    i8 10, label %105
    i8 63, label %132
  ]

97:                                               ; preds = %91
  %98 = load ptr, ptr %14, align 8, !tbaa !90
  %99 = icmp eq ptr %94, %98
  br i1 %99, label %105, label %100

100:                                              ; preds = %97
  %101 = getelementptr inbounds i8, ptr %92, i64 2
  %102 = load i8, ptr %101, align 1, !tbaa !57
  %103 = icmp eq i8 %102, 10
  %104 = select i1 %103, ptr %101, ptr %94
  br label %105

105:                                              ; preds = %100, %97, %91
  %106 = phi ptr [ %94, %97 ], [ %94, %91 ], [ %104, %100 ]
  %107 = load ptr, ptr %14, align 8, !tbaa !90
  %108 = icmp eq ptr %106, %107
  br i1 %108, label %167, label %109

109:                                              ; preds = %105
  %110 = load ptr, ptr %12, align 8, !tbaa !82
  br label %111

111:                                              ; preds = %115, %109
  %112 = phi i64 [ %116, %115 ], [ 1, %109 ]
  %113 = getelementptr inbounds i8, ptr %93, i64 %112
  %114 = icmp eq ptr %113, %110
  br i1 %114, label %167, label %115

115:                                              ; preds = %111
  %116 = add nsw i64 %112, -1
  %117 = getelementptr inbounds i8, ptr %93, i64 %116
  %118 = load i8, ptr %117, align 1, !tbaa !57
  %119 = zext i8 %118 to i64
  %120 = getelementptr inbounds [256 x i16], ptr @_sch_istable, i64 0, i64 %119
  %121 = load i16, ptr %120, align 2, !tbaa !93
  %122 = and i16 %121, 2048
  %123 = icmp eq i16 %122, 0
  br i1 %123, label %124, label %111, !llvm.loop !101

124:                                              ; preds = %115
  %125 = getelementptr inbounds i8, ptr %113, i64 -1
  %126 = load i8, ptr %125, align 1, !tbaa !57
  %127 = icmp eq i8 %126, 92
  br i1 %127, label %128, label %167

128:                                              ; preds = %124
  %129 = icmp eq i64 %112, 1
  %130 = select i1 %129, i32 92, i32 32
  tail call fastcc void @add_line_note(ptr noundef nonnull %7, ptr noundef nonnull %125, i32 noundef %130)
  %131 = getelementptr inbounds i8, ptr %113, i64 -2
  store ptr %125, ptr %12, align 8, !tbaa !82
  br label %153

132:                                              ; preds = %91
  %133 = getelementptr inbounds i8, ptr %92, i64 2
  %134 = load i8, ptr %133, align 1, !tbaa !57
  %135 = icmp eq i8 %134, 63
  br i1 %135, label %136, label %153

136:                                              ; preds = %132
  %137 = getelementptr inbounds i8, ptr %92, i64 3
  %138 = load i8, ptr %137, align 1, !tbaa !57
  %139 = zext i8 %138 to i64
  %140 = getelementptr inbounds [256 x i8], ptr @_cpp_trigraph_map, i64 0, i64 %139
  %141 = load i8, ptr %140, align 1, !tbaa !57
  %142 = icmp eq i8 %141, 0
  br i1 %142, label %153, label %143

143:                                              ; preds = %136
  %144 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 53, i32 7
  %145 = zext i8 %138 to i32
  tail call fastcc void @add_line_note(ptr noundef nonnull %7, ptr noundef nonnull %96, i32 noundef %145)
  %146 = load i8, ptr %144, align 1, !tbaa !99
  %147 = icmp eq i8 %146, 0
  br i1 %147, label %153, label %148

148:                                              ; preds = %143
  %149 = load i8, ptr %137, align 1, !tbaa !57
  %150 = zext i8 %149 to i64
  %151 = getelementptr inbounds [256 x i8], ptr @_cpp_trigraph_map, i64 0, i64 %150
  %152 = load i8, ptr %151, align 1, !tbaa !57
  store i8 %152, ptr %96, align 1, !tbaa !57
  br label %153

153:                                              ; preds = %148, %143, %136, %132, %128, %91
  %154 = phi ptr [ %106, %128 ], [ %137, %148 ], [ %94, %143 ], [ %94, %136 ], [ %94, %132 ], [ %94, %91 ]
  %155 = phi ptr [ %131, %128 ], [ %96, %148 ], [ %96, %143 ], [ %96, %136 ], [ %96, %132 ], [ %96, %91 ]
  br label %91, !llvm.loop !100

156:                                              ; preds = %17, %156
  %157 = phi ptr [ %158, %156 ], [ %21, %17 ]
  %158 = getelementptr inbounds i8, ptr %157, i64 1
  %159 = load i8, ptr %158, align 1, !tbaa !57
  switch i8 %159, label %156 [
    i8 13, label %160
    i8 10, label %167
  ], !prof !102

160:                                              ; preds = %156
  %161 = icmp eq ptr %158, %15
  br i1 %161, label %167, label %162

162:                                              ; preds = %160
  %163 = getelementptr inbounds i8, ptr %157, i64 2
  %164 = load i8, ptr %163, align 1, !tbaa !57
  %165 = icmp eq i8 %164, 10
  %166 = select i1 %165, ptr %163, ptr %158
  br label %167

167:                                              ; preds = %156, %124, %105, %111, %162, %160, %57, %44, %42, %33
  %168 = phi ptr [ %158, %160 ], [ %45, %44 ], [ %45, %57 ], [ %166, %162 ], [ %31, %33 ], [ %39, %42 ], [ %106, %111 ], [ %106, %105 ], [ %106, %124 ], [ %158, %156 ]
  %169 = phi ptr [ %158, %160 ], [ %31, %44 ], [ %31, %57 ], [ %158, %162 ], [ %31, %33 ], [ %31, %42 ], [ %96, %111 ], [ %96, %105 ], [ %96, %124 ], [ %158, %156 ]
  store i8 10, ptr %169, align 1, !tbaa !57
  %170 = load i32, ptr %18, align 4, !tbaa !79
  %171 = getelementptr inbounds %struct.cpp_buffer, ptr %7, i64 0, i32 8
  %172 = load i32, ptr %171, align 8, !tbaa !103
  %173 = icmp eq i32 %170, %172
  br i1 %173, label %174, label %182, !prof !104

174:                                              ; preds = %167
  %175 = shl i32 %172, 1
  %176 = add i32 %175, 200
  store i32 %176, ptr %171, align 8, !tbaa !103
  %177 = getelementptr inbounds %struct.cpp_buffer, ptr %7, i64 0, i32 5
  %178 = load ptr, ptr %177, align 8, !tbaa !105
  %179 = zext i32 %176 to i64
  %180 = shl nuw nsw i64 %179, 4
  %181 = tail call ptr @xrealloc(ptr noundef %178, i64 noundef %180) #20
  store ptr %181, ptr %177, align 8, !tbaa !105
  br label %182

182:                                              ; preds = %167, %174
  %183 = getelementptr inbounds i8, ptr %169, i64 1
  %184 = getelementptr inbounds %struct.cpp_buffer, ptr %7, i64 0, i32 5
  %185 = load ptr, ptr %184, align 8, !tbaa !105
  %186 = load i32, ptr %18, align 4, !tbaa !79
  %187 = zext i32 %186 to i64
  %188 = getelementptr inbounds %struct._cpp_line_note, ptr %185, i64 %187
  store ptr %183, ptr %188, align 8, !tbaa !106
  %189 = getelementptr inbounds %struct._cpp_line_note, ptr %185, i64 %187, i32 1
  store i32 10, ptr %189, align 8, !tbaa !108
  %190 = add i32 %186, 1
  store i32 %190, ptr %18, align 4, !tbaa !79
  %191 = getelementptr inbounds i8, ptr %168, i64 1
  store ptr %191, ptr %12, align 8, !tbaa !82
  br label %217

192:                                              ; preds = %11
  %193 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 2, i32 9
  %194 = load i8, ptr %193, align 1, !tbaa !164
  %195 = icmp eq i8 %194, 0
  br i1 %195, label %196, label %217, !prof !165

196:                                              ; preds = %192
  %197 = getelementptr inbounds %struct.cpp_buffer, ptr %7, i64 0, i32 3
  %198 = load ptr, ptr %197, align 8, !tbaa !166
  %199 = icmp ne ptr %198, %15
  %200 = icmp ugt ptr %13, %15
  %201 = and i1 %200, %199
  br i1 %201, label %202, label %208, !prof !167

202:                                              ; preds = %196
  %203 = getelementptr inbounds %struct.cpp_buffer, ptr %7, i64 0, i32 14
  %204 = load i8, ptr %203, align 1
  %205 = and i8 %204, 2
  %206 = icmp eq i8 %205, 0
  br i1 %206, label %207, label %208

207:                                              ; preds = %202
  store ptr %15, ptr %12, align 8, !tbaa !82
  br label %208

208:                                              ; preds = %207, %202, %196
  %209 = getelementptr inbounds %struct.cpp_buffer, ptr %7, i64 0, i32 14
  %210 = load i8, ptr %209, align 1
  tail call void @_cpp_pop_buffer(ptr noundef nonnull %0) #20
  %211 = load ptr, ptr %0, align 8, !tbaa !62
  %212 = icmp ne ptr %211, null
  %213 = and i8 %210, 4
  %214 = icmp eq i8 %213, 0
  %215 = select i1 %212, i1 %214, i1 false, !prof !167
  %216 = select i1 %215, i8 %6, i8 0, !prof !167
  br label %217

217:                                              ; preds = %5, %208, %192, %182
  %218 = phi i1 [ false, %182 ], [ false, %192 ], [ %215, %208 ], [ false, %5 ]
  %219 = phi i8 [ 1, %182 ], [ 0, %192 ], [ %216, %208 ], [ 1, %5 ]
  br i1 %218, label %5, label %220, !prof !162, !llvm.loop !168

220:                                              ; preds = %217, %1
  %221 = phi i8 [ 0, %1 ], [ %219, %217 ]
  ret i8 %221
}

declare void @_cpp_pop_buffer(ptr noundef) local_unnamed_addr #1

declare i32 @linemap_position_for_column(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #10

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @lex_number(ptr noundef %0, ptr nocapture noundef %1, ptr noundef %2) unnamed_addr #3 !prof !50 !PGOFuncName !277 {
  %4 = load ptr, ptr %0, align 8, !tbaa !62
  %5 = load ptr, ptr %4, align 8, !tbaa !84
  %6 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 53, i32 25
  br label %7

7:                                                ; preds = %43, %3
  %8 = load ptr, ptr %0, align 8, !tbaa !62
  %9 = load ptr, ptr %8, align 8, !tbaa !84
  br label %10

10:                                               ; preds = %28, %7
  %11 = phi ptr [ %9, %7 ], [ %30, %28 ]
  %12 = load i8, ptr %11, align 1, !tbaa !57
  %13 = zext i8 %12 to i64
  %14 = getelementptr inbounds [256 x i16], ptr @_sch_istable, i64 0, i64 %13
  %15 = load i16, ptr %14, align 2, !tbaa !93
  %16 = and i16 %15, 516
  %17 = icmp ne i16 %16, 0
  %18 = icmp eq i8 %12, 46
  %19 = or i1 %18, %17
  br i1 %19, label %28, label %20, !prof !187

20:                                               ; preds = %10
  switch i8 %12, label %31 [
    i8 43, label %21
    i8 45, label %21
  ], !prof !188

21:                                               ; preds = %20, %20
  %22 = getelementptr inbounds i8, ptr %11, i64 -1
  %23 = load i8, ptr %22, align 1, !tbaa !57
  switch i8 %23, label %31 [
    i8 101, label %28
    i8 69, label %28
    i8 112, label %24
    i8 80, label %24
  ], !prof !189

24:                                               ; preds = %21, %21
  %25 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 53, i32 9
  %26 = load i8, ptr %25, align 1, !tbaa !190
  %27 = icmp eq i8 %26, 0
  br i1 %27, label %31, label %28

28:                                               ; preds = %24, %21, %21, %10
  %29 = getelementptr inbounds %struct.normalize_state, ptr %2, i64 0, i32 1
  %30 = getelementptr inbounds i8, ptr %11, i64 1
  store i32 0, ptr %2, align 4, !tbaa !191
  store i8 0, ptr %29, align 4, !tbaa !193
  br label %10, !llvm.loop !194

31:                                               ; preds = %24, %21, %20
  store ptr %11, ptr %8, align 8, !tbaa !84
  %32 = load i8, ptr %11, align 1, !tbaa !57
  %33 = icmp eq i8 %32, 36
  br i1 %33, label %34, label %50, !prof !195

34:                                               ; preds = %31
  %35 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 53, i32 24
  %36 = load i8, ptr %35, align 2, !tbaa !196
  %37 = icmp eq i8 %36, 0
  br i1 %37, label %67, label %38

38:                                               ; preds = %34
  %39 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 53, i32 26
  %40 = getelementptr inbounds i8, ptr %11, i64 1
  store ptr %40, ptr %8, align 8, !tbaa !84
  %41 = load i8, ptr %39, align 8, !tbaa !197
  %42 = icmp eq i8 %41, 0
  br i1 %42, label %43, label %44

43:                                               ; preds = %38, %44, %48, %58
  br label %7, !llvm.loop !199

44:                                               ; preds = %38
  %45 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 2, i32 2
  %46 = load i8, ptr %45, align 2, !tbaa !130
  %47 = icmp eq i8 %46, 0
  br i1 %47, label %48, label %43

48:                                               ; preds = %44
  store i8 0, ptr %39, align 8, !tbaa !197
  %49 = tail call zeroext i8 (ptr, i32, ptr, ...) @cpp_error(ptr noundef nonnull %0, i32 noundef 2, ptr noundef nonnull @.str.30) #20
  br label %43

50:                                               ; preds = %31
  %51 = load i8, ptr %6, align 1, !tbaa !198
  %52 = icmp ne i8 %51, 0
  %53 = icmp eq i8 %32, 92
  %54 = and i1 %53, %52
  br i1 %54, label %55, label %67, !prof !195

55:                                               ; preds = %50
  %56 = getelementptr inbounds i8, ptr %11, i64 1
  %57 = load i8, ptr %56, align 1, !tbaa !57
  switch i8 %57, label %67 [
    i8 117, label %58
    i8 85, label %58
  ]

58:                                               ; preds = %55, %55
  %59 = getelementptr inbounds i8, ptr %11, i64 2
  store ptr %59, ptr %8, align 8, !tbaa !84
  %60 = getelementptr inbounds %struct.cpp_buffer, ptr %8, i64 0, i32 4
  %61 = load ptr, ptr %60, align 8, !tbaa !90
  %62 = tail call i32 @_cpp_valid_ucn(ptr noundef nonnull %0, ptr noundef nonnull %8, ptr noundef %61, i32 noundef 2, ptr noundef %2) #20
  %63 = icmp eq i32 %62, 0
  br i1 %63, label %64, label %43

64:                                               ; preds = %58
  %65 = load ptr, ptr %8, align 8, !tbaa !84
  %66 = getelementptr inbounds i8, ptr %65, i64 -2
  store ptr %66, ptr %8, align 8, !tbaa !84
  br label %67

67:                                               ; preds = %55, %50, %34, %64
  %68 = getelementptr inbounds i8, ptr %5, i64 -1
  %69 = ptrtoint ptr %11 to i64
  %70 = ptrtoint ptr %68 to i64
  %71 = sub i64 %69, %70
  %72 = trunc i64 %71 to i32
  store i32 %72, ptr %1, align 8, !tbaa !200
  %73 = add i64 %71, 1
  %74 = and i64 %73, 4294967295
  %75 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 6
  %76 = load ptr, ptr %75, align 8, !tbaa !202
  %77 = getelementptr inbounds %struct._cpp_buff, ptr %76, i64 0, i32 2
  %78 = load ptr, ptr %77, align 8, !tbaa !203
  %79 = getelementptr inbounds %struct._cpp_buff, ptr %76, i64 0, i32 3
  %80 = load ptr, ptr %79, align 8, !tbaa !205
  %81 = ptrtoint ptr %80 to i64
  %82 = ptrtoint ptr %78 to i64
  %83 = sub i64 %81, %82
  %84 = icmp ult i64 %83, %74
  br i1 %84, label %85, label %134, !prof !206

85:                                               ; preds = %67
  %86 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 7
  br label %87

87:                                               ; preds = %122, %85
  %88 = phi ptr [ undef, %85 ], [ %119, %122 ]
  %89 = phi ptr [ %86, %85 ], [ %123, %122 ]
  %90 = phi ptr [ undef, %85 ], [ %120, %122 ]
  %91 = load ptr, ptr %89, align 8, !tbaa !51
  %92 = icmp eq ptr %91, null
  br i1 %92, label %93, label %103, !prof !207

93:                                               ; preds = %87
  %94 = tail call i64 @llvm.umax.i64(i64 %74, i64 8000)
  %95 = add nuw nsw i64 %94, 7
  %96 = and i64 %95, 8589934584
  %97 = add nuw nsw i64 %96, 32
  %98 = tail call ptr @xmalloc(i64 noundef %97) #20
  %99 = getelementptr inbounds i8, ptr %98, i64 %96
  %100 = getelementptr inbounds %struct._cpp_buff, ptr %99, i64 0, i32 1
  store ptr %98, ptr %100, align 8, !tbaa !208
  %101 = getelementptr inbounds %struct._cpp_buff, ptr %99, i64 0, i32 2
  store ptr %98, ptr %101, align 8, !tbaa !203
  %102 = getelementptr inbounds %struct._cpp_buff, ptr %99, i64 0, i32 3
  store ptr %99, ptr %102, align 8, !tbaa !205
  store ptr null, ptr %99, align 8, !tbaa !209
  br label %118

103:                                              ; preds = %87
  %104 = mul nuw nsw i64 %74, 3
  %105 = lshr i64 %104, 1
  %106 = add nuw nsw i64 %105, 8000
  %107 = getelementptr inbounds %struct._cpp_buff, ptr %91, i64 0, i32 3
  %108 = load ptr, ptr %107, align 8, !tbaa !205
  %109 = getelementptr inbounds %struct._cpp_buff, ptr %91, i64 0, i32 1
  %110 = load ptr, ptr %109, align 8, !tbaa !208
  %111 = ptrtoint ptr %108 to i64
  %112 = ptrtoint ptr %110 to i64
  %113 = sub i64 %111, %112
  %114 = icmp ult i64 %113, %74
  %115 = icmp ugt i64 %113, %106
  %116 = select i1 %114, i1 true, i1 %115
  %117 = select i1 %116, i32 0, i32 2
  br label %118

118:                                              ; preds = %103, %93
  %119 = phi ptr [ %88, %93 ], [ %91, %103 ]
  %120 = phi ptr [ %99, %93 ], [ %90, %103 ]
  %121 = phi i32 [ 1, %93 ], [ %117, %103 ]
  switch i32 %121, label %129 [
    i32 0, label %122
    i32 2, label %124
  ], !prof !210

122:                                              ; preds = %118
  %123 = load ptr, ptr %89, align 8, !tbaa !51
  br label %87, !llvm.loop !211

124:                                              ; preds = %118
  %125 = load ptr, ptr %119, align 8, !tbaa !209
  store ptr %125, ptr %89, align 8, !tbaa !51
  store ptr null, ptr %119, align 8, !tbaa !209
  %126 = getelementptr inbounds %struct._cpp_buff, ptr %119, i64 0, i32 1
  %127 = load ptr, ptr %126, align 8, !tbaa !208
  %128 = getelementptr inbounds %struct._cpp_buff, ptr %119, i64 0, i32 2
  store ptr %127, ptr %128, align 8, !tbaa !203
  br label %129

129:                                              ; preds = %118, %124
  %130 = phi ptr [ %119, %124 ], [ %120, %118 ]
  %131 = load ptr, ptr %75, align 8, !tbaa !202
  store ptr %131, ptr %130, align 8, !tbaa !209
  store ptr %130, ptr %75, align 8, !tbaa !202
  %132 = getelementptr inbounds %struct._cpp_buff, ptr %130, i64 0, i32 2
  %133 = load ptr, ptr %132, align 8, !tbaa !203
  br label %134

134:                                              ; preds = %67, %129
  %135 = phi ptr [ %130, %129 ], [ %76, %67 ]
  %136 = phi ptr [ %133, %129 ], [ %78, %67 ]
  %137 = getelementptr inbounds i8, ptr %136, i64 %74
  %138 = getelementptr inbounds %struct._cpp_buff, ptr %135, i64 0, i32 2
  store ptr %137, ptr %138, align 8, !tbaa !203
  %139 = load i32, ptr %1, align 8, !tbaa !200
  %140 = zext i32 %139 to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %136, ptr nonnull align 1 %68, i64 %140, i1 false), !prof !278
  %141 = load i32, ptr %1, align 8, !tbaa !200
  %142 = zext i32 %141 to i64
  %143 = getelementptr inbounds i8, ptr %136, i64 %142
  store i8 0, ptr %143, align 1, !tbaa !57
  %144 = getelementptr inbounds %struct.cpp_string, ptr %1, i64 0, i32 1
  store ptr %136, ptr %144, align 8, !tbaa !213
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @warn_about_normalization(ptr noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) unnamed_addr #3 !prof !50 !PGOFuncName !279 {
  %4 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 53, i32 40
  %5 = load i32, ptr %4, align 8, !tbaa !214
  %6 = getelementptr inbounds %struct.normalize_state, ptr %2, i64 0, i32 2
  %7 = load i32, ptr %6, align 4, !tbaa !215
  %8 = icmp ult i32 %5, %7
  br i1 %8, label %9, label %42, !prof !195

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 2, i32 2
  %11 = load i8, ptr %10, align 2, !tbaa !130
  %12 = icmp eq i8 %11, 0
  br i1 %12, label %13, label %42

13:                                               ; preds = %9
  %14 = getelementptr inbounds %struct.cpp_token, ptr %1, i64 0, i32 1
  %15 = load i8, ptr %14, align 4
  %16 = zext i8 %15 to i64
  %17 = getelementptr inbounds [73 x %struct.token_spelling], ptr @token_spellings, i64 0, i64 %16
  %18 = load i32, ptr %17, align 16, !tbaa !216
  switch i32 %18, label %28 [
    i32 2, label %19
    i32 1, label %22
  ]

19:                                               ; preds = %13
  %20 = getelementptr inbounds %struct.cpp_token, ptr %1, i64 0, i32 3
  %21 = load i32, ptr %20, align 8, !tbaa !57
  br label %28

22:                                               ; preds = %13
  %23 = getelementptr inbounds %struct.cpp_token, ptr %1, i64 0, i32 3
  %24 = load ptr, ptr %23, align 8, !tbaa !57
  %25 = getelementptr inbounds %struct.ht_identifier, ptr %24, i64 0, i32 1
  %26 = load i32, ptr %25, align 8, !tbaa !218
  %27 = mul i32 %26, 10
  br label %28

28:                                               ; preds = %13, %19, %22
  %29 = phi i32 [ %27, %22 ], [ %21, %19 ], [ 6, %13 ]
  %30 = zext i32 %29 to i64
  %31 = tail call ptr @xmalloc(i64 noundef %30) #20
  %32 = tail call ptr @cpp_spell_token(ptr noundef %0, ptr noundef %1, ptr noundef %31, i8 noundef zeroext 0)
  %33 = ptrtoint ptr %32 to i64
  %34 = ptrtoint ptr %31 to i64
  %35 = sub i64 %33, %34
  %36 = load i32, ptr %6, align 4, !tbaa !215
  %37 = icmp eq i32 %36, 1
  %38 = load i32, ptr %1, align 8, !tbaa !171
  %39 = trunc i64 %35 to i32
  %40 = select i1 %37, ptr @.str.18, ptr @.str.19
  %41 = tail call zeroext i8 (ptr, i32, i32, i32, ptr, ...) @cpp_error_with_line(ptr noundef %0, i32 noundef 0, i32 noundef %38, i32 noundef 0, ptr noundef nonnull %40, i32 noundef %39, ptr noundef %31) #20
  br label %42

42:                                               ; preds = %28, %9, %3
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @lex_string(ptr noundef %0, ptr nocapture noundef %1, ptr noundef %2) unnamed_addr #5 !prof !280 !PGOFuncName !281 {
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca i8, align 1
  %7 = getelementptr inbounds i8, ptr %2, i64 1
  %8 = load i8, ptr %2, align 1, !tbaa !57
  switch i8 %8, label %18 [
    i8 85, label %13
    i8 76, label %13
    i8 117, label %9
  ], !prof !282

9:                                                ; preds = %3
  %10 = getelementptr inbounds i8, ptr %2, i64 2
  %11 = load i8, ptr %7, align 1, !tbaa !57
  %12 = icmp eq i8 %11, 56
  br i1 %12, label %13, label %18

13:                                               ; preds = %9, %3, %3
  %14 = phi i64 [ 2, %3 ], [ 2, %3 ], [ 3, %9 ]
  %15 = phi ptr [ %7, %3 ], [ %7, %3 ], [ %10, %9 ]
  %16 = getelementptr inbounds i8, ptr %2, i64 %14
  %17 = load i8, ptr %15, align 1, !tbaa !57
  br label %18

18:                                               ; preds = %13, %3, %9
  %19 = phi ptr [ %10, %9 ], [ %7, %3 ], [ %16, %13 ]
  %20 = phi i8 [ %11, %9 ], [ %8, %3 ], [ %17, %13 ]
  switch i8 %20, label %454 [
    i8 82, label %21
    i8 34, label %442
    i8 39, label %449
  ], !prof !283

21:                                               ; preds = %18
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #20
  store ptr null, ptr %4, align 8, !tbaa !51
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #20
  store ptr null, ptr %5, align 8, !tbaa !51
  %22 = load ptr, ptr %0, align 8, !tbaa !62
  %23 = getelementptr inbounds %struct.cpp_buffer, ptr %22, i64 0, i32 5
  %24 = load ptr, ptr %23, align 8, !tbaa !105
  %25 = getelementptr inbounds %struct.cpp_buffer, ptr %22, i64 0, i32 6
  %26 = load i32, ptr %25, align 8, !tbaa !81
  %27 = zext i32 %26 to i64
  %28 = getelementptr inbounds %struct._cpp_line_note, ptr %24, i64 %27
  switch i8 %8, label %34 [
    i8 76, label %35
    i8 85, label %33
    i8 117, label %29
  ]

29:                                               ; preds = %21
  %30 = load i8, ptr %7, align 1, !tbaa !57
  %31 = icmp eq i8 %30, 56
  %32 = select i1 %31, i32 65, i32 63
  br label %35

33:                                               ; preds = %21
  br label %35

34:                                               ; preds = %21
  br label %35

35:                                               ; preds = %34, %33, %29, %21
  %36 = phi i32 [ 62, %21 ], [ %32, %29 ], [ 64, %33 ], [ 61, %34 ]
  %37 = getelementptr inbounds i8, ptr %19, i64 1
  br label %38

38:                                               ; preds = %35, %42
  %39 = phi i64 [ 0, %35 ], [ %43, %42 ]
  %40 = getelementptr inbounds i8, ptr %37, i64 %39
  %41 = load i8, ptr %40, align 1, !tbaa !57
  switch i8 %41, label %45 [
    i8 39, label %42
    i8 34, label %42
    i8 44, label %42
    i8 61, label %42
    i8 33, label %42
    i8 126, label %42
    i8 124, label %42
    i8 38, label %42
    i8 97, label %42
    i8 98, label %42
    i8 99, label %42
    i8 100, label %42
    i8 101, label %42
    i8 102, label %42
    i8 103, label %42
    i8 104, label %42
    i8 105, label %42
    i8 106, label %42
    i8 107, label %42
    i8 108, label %42
    i8 109, label %42
    i8 110, label %42
    i8 111, label %42
    i8 112, label %42
    i8 113, label %42
    i8 114, label %42
    i8 115, label %42
    i8 116, label %42
    i8 117, label %42
    i8 118, label %42
    i8 119, label %42
    i8 120, label %42
    i8 121, label %42
    i8 122, label %42
    i8 65, label %42
    i8 66, label %42
    i8 67, label %42
    i8 68, label %42
    i8 69, label %42
    i8 70, label %42
    i8 71, label %42
    i8 72, label %42
    i8 73, label %42
    i8 74, label %42
    i8 75, label %42
    i8 76, label %42
    i8 77, label %42
    i8 78, label %42
    i8 79, label %42
    i8 80, label %42
    i8 81, label %42
    i8 82, label %42
    i8 83, label %42
    i8 84, label %42
    i8 85, label %42
    i8 86, label %42
    i8 87, label %42
    i8 88, label %42
    i8 89, label %42
    i8 90, label %42
    i8 48, label %42
    i8 49, label %42
    i8 50, label %42
    i8 51, label %42
    i8 52, label %42
    i8 53, label %42
    i8 54, label %42
    i8 55, label %42
    i8 56, label %42
    i8 57, label %42
    i8 95, label %42
    i8 123, label %42
    i8 125, label %42
    i8 35, label %42
    i8 91, label %42
    i8 93, label %42
    i8 60, label %42
    i8 62, label %42
    i8 37, label %42
    i8 58, label %42
    i8 59, label %42
    i8 46, label %42
    i8 63, label %42
    i8 42, label %42
    i8 43, label %42
    i8 45, label %42
    i8 47, label %42
    i8 94, label %42
  ]

42:                                               ; preds = %38, %38, %38, %38, %38, %38, %38, %38, %38, %38, %38, %38, %38, %38, %38, %38, %38, %38, %38, %38, %38, %38, %38, %38, %38, %38, %38, %38, %38, %38, %38, %38, %38, %38, %38, %38, %38, %38, %38, %38, %38, %38, %38, %38, %38, %38, %38, %38, %38, %38, %38, %38, %38, %38, %38, %38, %38, %38, %38, %38, %38, %38, %38, %38, %38, %38, %38, %38, %38, %38, %38, %38, %38, %38, %38, %38, %38, %38, %38, %38, %38, %38, %38, %38, %38, %38, %38, %38
  %43 = add nuw nsw i64 %39, 1
  %44 = icmp eq i64 %43, 16
  br i1 %44, label %47, label %38, !llvm.loop !284

45:                                               ; preds = %38
  %46 = trunc i64 %39 to i32
  br label %47

47:                                               ; preds = %42, %45
  %48 = phi i32 [ %46, %45 ], [ 16, %42 ]
  %49 = zext nneg i32 %48 to i64
  %50 = getelementptr inbounds i8, ptr %37, i64 %49
  %51 = load i8, ptr %50, align 1, !tbaa !57
  %52 = zext i8 %51 to i32
  %53 = icmp eq i8 %51, 40
  br i1 %53, label %101, label %54

54:                                               ; preds = %47
  %55 = getelementptr inbounds %struct.cpp_buffer, ptr %22, i64 0, i32 1
  %56 = load ptr, ptr %55, align 8, !tbaa !83
  %57 = ptrtoint ptr %50 to i64
  %58 = ptrtoint ptr %56 to i64
  %59 = sub i64 %57, %58
  %60 = trunc i64 %59 to i32
  %61 = add i32 %60, 1
  %62 = icmp eq i32 %48, 16
  %63 = load i32, ptr %1, align 8, !tbaa !171
  br i1 %62, label %64, label %66

64:                                               ; preds = %54
  %65 = tail call zeroext i8 (ptr, i32, i32, i32, ptr, ...) @cpp_error_with_line(ptr noundef nonnull %0, i32 noundef 3, i32 noundef %63, i32 noundef %61, ptr noundef nonnull @.str.22) #20
  br label %68

66:                                               ; preds = %54
  %67 = tail call zeroext i8 (ptr, i32, i32, i32, ptr, ...) @cpp_error_with_line(ptr noundef nonnull %0, i32 noundef 3, i32 noundef %63, i32 noundef %61, ptr noundef nonnull @.str.23, i32 noundef %52) #20
  br label %68

68:                                               ; preds = %66, %64
  %69 = load ptr, ptr %0, align 8, !tbaa !62
  store ptr %19, ptr %69, align 8, !tbaa !84
  %70 = ptrtoint ptr %19 to i64
  %71 = ptrtoint ptr %2 to i64
  %72 = sub i64 %70, %71
  %73 = trunc i64 %72 to i32
  %74 = add i64 %72, 1
  %75 = and i64 %74, 4294967295
  %76 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 6
  %77 = load ptr, ptr %76, align 8, !tbaa !202
  %78 = getelementptr inbounds %struct._cpp_buff, ptr %77, i64 0, i32 2
  %79 = load ptr, ptr %78, align 8, !tbaa !203
  %80 = getelementptr inbounds %struct._cpp_buff, ptr %77, i64 0, i32 3
  %81 = load ptr, ptr %80, align 8, !tbaa !205
  %82 = ptrtoint ptr %81 to i64
  %83 = ptrtoint ptr %79 to i64
  %84 = sub i64 %82, %83
  %85 = icmp ult i64 %84, %75
  br i1 %85, label %86, label %91

86:                                               ; preds = %68
  %87 = tail call ptr @_cpp_get_buff(ptr noundef nonnull %0, i64 noundef %75)
  %88 = load ptr, ptr %76, align 8, !tbaa !202
  store ptr %88, ptr %87, align 8, !tbaa !209
  store ptr %87, ptr %76, align 8, !tbaa !202
  %89 = getelementptr inbounds %struct._cpp_buff, ptr %87, i64 0, i32 2
  %90 = load ptr, ptr %89, align 8, !tbaa !203
  br label %91

91:                                               ; preds = %86, %68
  %92 = phi ptr [ %87, %86 ], [ %77, %68 ]
  %93 = phi ptr [ %90, %86 ], [ %79, %68 ]
  %94 = getelementptr inbounds i8, ptr %93, i64 %75
  %95 = getelementptr inbounds %struct._cpp_buff, ptr %92, i64 0, i32 2
  store ptr %94, ptr %95, align 8, !tbaa !203
  %96 = and i64 %72, 4294967295
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %93, ptr nonnull align 1 %2, i64 %96, i1 false)
  %97 = getelementptr inbounds i8, ptr %93, i64 %96
  store i8 0, ptr %97, align 1, !tbaa !57
  %98 = getelementptr inbounds %struct.cpp_token, ptr %1, i64 0, i32 1
  store i8 60, ptr %98, align 4
  %99 = getelementptr inbounds %struct.cpp_token, ptr %1, i64 0, i32 3
  store i32 %73, ptr %99, align 8, !tbaa !57
  %100 = getelementptr inbounds %struct.cpp_token, ptr %1, i64 0, i32 3, i32 0, i32 1
  store ptr %93, ptr %100, align 8, !tbaa !57
  br label %441

101:                                              ; preds = %47
  %102 = getelementptr inbounds i8, ptr %50, i64 1
  %103 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 53, i32 7
  %104 = add nuw nsw i32 %48, 1
  %105 = zext nneg i32 %104 to i64
  %106 = add nuw nsw i32 %48, 2
  %107 = zext nneg i32 %106 to i64
  %108 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 2
  %109 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 2, i32 9
  %110 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 3
  br label %111

111:                                              ; preds = %329, %101
  %112 = phi ptr [ %28, %101 ], [ %331, %329 ]
  %113 = phi i64 [ 0, %101 ], [ %332, %329 ]
  %114 = phi i32 [ %36, %101 ], [ %333, %329 ]
  %115 = phi i32 [ 0, %101 ], [ %334, %329 ]
  %116 = phi ptr [ %102, %101 ], [ %335, %329 ]
  %117 = phi ptr [ %2, %101 ], [ %336, %329 ]
  br label %118

118:                                              ; preds = %118, %111
  %119 = phi ptr [ %112, %111 ], [ %122, %118 ]
  %120 = load ptr, ptr %119, align 8, !tbaa !106
  %121 = icmp ult ptr %120, %116
  %122 = getelementptr inbounds %struct._cpp_line_note, ptr %119, i64 1
  br i1 %121, label %118, label %123, !llvm.loop !285

123:                                              ; preds = %118
  %124 = load ptr, ptr %119, align 8, !tbaa !106
  %125 = icmp eq ptr %124, %116
  br i1 %125, label %126, label %207

126:                                              ; preds = %123, %199
  %127 = phi ptr [ %203, %199 ], [ %117, %123 ]
  %128 = phi ptr [ %202, %199 ], [ %116, %123 ]
  %129 = phi i64 [ %201, %199 ], [ %113, %123 ]
  %130 = phi ptr [ %204, %199 ], [ %119, %123 ]
  %131 = getelementptr inbounds %struct._cpp_line_note, ptr %130, i64 0, i32 1
  %132 = load i32, ptr %131, align 8, !tbaa !108
  switch i32 %132, label %152 [
    i32 92, label %133
    i32 32, label %133
    i32 0, label %199
  ]

133:                                              ; preds = %126, %126
  %134 = ptrtoint ptr %128 to i64
  %135 = ptrtoint ptr %127 to i64
  %136 = sub i64 %134, %135
  call fastcc void @bufring_append(ptr noundef nonnull %0, ptr noundef %127, i64 noundef %136, ptr noundef nonnull %4, ptr noundef nonnull %5)
  call fastcc void @bufring_append(ptr noundef nonnull %0, ptr noundef nonnull @.str.24, i64 noundef 1, ptr noundef nonnull %4, ptr noundef nonnull %5)
  %137 = add i64 %129, 1
  %138 = add i64 %137, %136
  br label %139

139:                                              ; preds = %192, %133
  %140 = phi ptr [ %194, %192 ], [ %130, %133 ]
  %141 = phi i64 [ %195, %192 ], [ %138, %133 ]
  %142 = phi ptr [ %196, %192 ], [ %128, %133 ]
  %143 = phi ptr [ %197, %192 ], [ %128, %133 ]
  %144 = getelementptr inbounds %struct._cpp_line_note, ptr %140, i64 0, i32 1
  %145 = load i32, ptr %144, align 8, !tbaa !108
  %146 = icmp eq i32 %145, 32
  br i1 %146, label %147, label %149

147:                                              ; preds = %139
  call fastcc void @bufring_append(ptr noundef nonnull %0, ptr noundef nonnull @.str.25, i64 noundef 1, ptr noundef nonnull %4, ptr noundef nonnull %5)
  %148 = add i64 %141, 1
  br label %149

149:                                              ; preds = %147, %139
  %150 = phi i64 [ %148, %147 ], [ %141, %139 ]
  call fastcc void @bufring_append(ptr noundef nonnull %0, ptr noundef nonnull @.str.26, i64 noundef 1, ptr noundef nonnull %4, ptr noundef nonnull %5)
  %151 = add i64 %150, 1
  br label %199

152:                                              ; preds = %126
  %153 = zext i32 %132 to i64
  %154 = getelementptr inbounds [256 x i8], ptr @_cpp_trigraph_map, i64 0, i64 %153
  %155 = load i8, ptr %154, align 1, !tbaa !57
  %156 = icmp eq i8 %155, 0
  br i1 %156, label %198, label %157

157:                                              ; preds = %152
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %6) #20
  %158 = trunc i32 %132 to i8
  store i8 %158, ptr %6, align 1, !tbaa !57
  store i32 0, ptr %131, align 8, !tbaa !108
  %159 = load i8, ptr %103, align 1, !tbaa !99
  %160 = icmp eq i8 %159, 0
  br i1 %160, label %192, label %161

161:                                              ; preds = %157
  %162 = ptrtoint ptr %128 to i64
  %163 = ptrtoint ptr %127 to i64
  %164 = sub i64 %162, %163
  call fastcc void @bufring_append(ptr noundef nonnull %0, ptr noundef %127, i64 noundef %164, ptr noundef nonnull %4, ptr noundef nonnull %5)
  %165 = add i64 %164, %129
  call fastcc void @bufring_append(ptr noundef nonnull %0, ptr noundef nonnull @.str.27, i64 noundef 2, ptr noundef nonnull %4, ptr noundef nonnull %5)
  %166 = add i64 %165, 2
  switch i8 %158, label %189 [
    i8 47, label %167
    i8 41, label %179
  ]

167:                                              ; preds = %161
  %168 = getelementptr inbounds %struct._cpp_line_note, ptr %130, i64 1
  %169 = load ptr, ptr %168, align 8, !tbaa !106
  %170 = icmp eq ptr %169, %128
  br i1 %170, label %171, label %177

171:                                              ; preds = %167
  %172 = getelementptr inbounds %struct._cpp_line_note, ptr %130, i64 1, i32 1
  %173 = load i32, ptr %172, align 8, !tbaa !108
  switch i32 %173, label %174 [
    i32 92, label %175
    i32 32, label %175
  ]

174:                                              ; preds = %171
  tail call void @abort() #22
  unreachable

175:                                              ; preds = %171, %171
  call fastcc void @bufring_append(ptr noundef nonnull %0, ptr noundef nonnull @.str.28, i64 noundef 1, ptr noundef nonnull %4, ptr noundef nonnull %5)
  %176 = add i64 %165, 3
  br label %192

177:                                              ; preds = %167
  %178 = icmp eq i8 %158, 41
  br i1 %178, label %179, label %189

179:                                              ; preds = %161, %177
  %180 = getelementptr inbounds i8, ptr %128, i64 1
  %181 = tail call i32 @strncmp(ptr noundef nonnull %180, ptr noundef nonnull %37, i64 noundef %49) #21
  %182 = icmp eq i32 %181, 0
  br i1 %182, label %183, label %189

183:                                              ; preds = %179
  %184 = getelementptr inbounds i8, ptr %128, i64 %105
  %185 = load i8, ptr %184, align 1, !tbaa !57
  %186 = icmp eq i8 %185, 34
  br i1 %186, label %187, label %189

187:                                              ; preds = %183
  %188 = getelementptr inbounds i8, ptr %128, i64 %107
  br label %192

189:                                              ; preds = %161, %183, %179, %177
  %190 = getelementptr inbounds i8, ptr %128, i64 1
  call fastcc void @bufring_append(ptr noundef nonnull %0, ptr noundef nonnull %6, i64 noundef 1, ptr noundef nonnull %4, ptr noundef nonnull %5)
  %191 = add i64 %165, 3
  br label %192

192:                                              ; preds = %189, %187, %175, %157
  %193 = phi i32 [ 17, %175 ], [ 28, %187 ], [ 0, %189 ], [ 12, %157 ]
  %194 = phi ptr [ %168, %175 ], [ %130, %187 ], [ %130, %189 ], [ %130, %157 ]
  %195 = phi i64 [ %176, %175 ], [ %166, %187 ], [ %191, %189 ], [ %129, %157 ]
  %196 = phi ptr [ %128, %175 ], [ %188, %187 ], [ %190, %189 ], [ %128, %157 ]
  %197 = phi ptr [ %128, %175 ], [ %128, %187 ], [ %190, %189 ], [ %127, %157 ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %6) #20
  switch i32 %193, label %329 [
    i32 0, label %199
    i32 12, label %199
    i32 17, label %139
  ]

198:                                              ; preds = %152
  tail call void @abort() #22
  unreachable

199:                                              ; preds = %192, %192, %149, %126
  %200 = phi ptr [ %140, %149 ], [ %194, %192 ], [ %130, %126 ], [ %194, %192 ]
  %201 = phi i64 [ %151, %149 ], [ %195, %192 ], [ %129, %126 ], [ %195, %192 ]
  %202 = phi ptr [ %142, %149 ], [ %196, %192 ], [ %128, %126 ], [ %196, %192 ]
  %203 = phi ptr [ %143, %149 ], [ %197, %192 ], [ %127, %126 ], [ %197, %192 ]
  %204 = getelementptr inbounds %struct._cpp_line_note, ptr %200, i64 1
  %205 = load ptr, ptr %204, align 8, !tbaa !106
  %206 = icmp eq ptr %205, %202
  br i1 %206, label %126, label %207, !llvm.loop !286

207:                                              ; preds = %199, %123
  %208 = phi ptr [ %119, %123 ], [ %204, %199 ]
  %209 = phi i64 [ %113, %123 ], [ %201, %199 ]
  %210 = phi ptr [ %116, %123 ], [ %202, %199 ]
  %211 = phi ptr [ %117, %123 ], [ %203, %199 ]
  %212 = getelementptr inbounds i8, ptr %210, i64 1
  %213 = load i8, ptr %210, align 1, !tbaa !57
  switch i8 %213, label %303 [
    i8 41, label %214
    i8 10, label %225
  ]

214:                                              ; preds = %207
  %215 = tail call i32 @strncmp(ptr noundef nonnull %212, ptr noundef nonnull %37, i64 noundef %49) #21
  %216 = icmp eq i32 %215, 0
  br i1 %216, label %217, label %223

217:                                              ; preds = %214
  %218 = getelementptr inbounds i8, ptr %212, i64 %49
  %219 = load i8, ptr %218, align 1, !tbaa !57
  %220 = icmp eq i8 %219, 34
  br i1 %220, label %221, label %223

221:                                              ; preds = %217
  %222 = getelementptr i8, ptr %218, i64 1
  br label %329

223:                                              ; preds = %217, %214
  %224 = icmp eq i8 %213, 10
  br i1 %224, label %225, label %303

225:                                              ; preds = %223, %207
  %226 = load i8, ptr %108, align 8, !tbaa !160
  %227 = icmp eq i8 %226, 0
  br i1 %227, label %228, label %235

228:                                              ; preds = %225
  %229 = load i8, ptr %109, align 1, !tbaa !164
  %230 = icmp eq i8 %229, 0
  br i1 %230, label %231, label %235

231:                                              ; preds = %228
  %232 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 2, i32 12
  %233 = load i8, ptr %232, align 8, !tbaa !156
  %234 = icmp eq i8 %233, 0
  br i1 %234, label %238, label %235

235:                                              ; preds = %231, %228, %225
  %236 = load i32, ptr %1, align 8, !tbaa !171
  %237 = tail call zeroext i8 (ptr, i32, i32, i32, ptr, ...) @cpp_error_with_line(ptr noundef nonnull %0, i32 noundef 3, i32 noundef %236, i32 noundef 0, ptr noundef nonnull @.str.29) #20
  br label %329

238:                                              ; preds = %231
  %239 = ptrtoint ptr %212 to i64
  %240 = ptrtoint ptr %211 to i64
  %241 = sub i64 %239, %240
  call fastcc void @bufring_append(ptr noundef nonnull %0, ptr noundef %211, i64 noundef %241, ptr noundef nonnull %4, ptr noundef nonnull %5)
  %242 = add i64 %241, %209
  %243 = load ptr, ptr %0, align 8, !tbaa !62
  %244 = load ptr, ptr %243, align 8, !tbaa !84
  %245 = getelementptr inbounds %struct.cpp_buffer, ptr %243, i64 0, i32 4
  %246 = load ptr, ptr %245, align 8, !tbaa !90
  %247 = icmp ult ptr %244, %246
  br i1 %247, label %248, label %270

248:                                              ; preds = %238
  %249 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 3
  %250 = load ptr, ptr %249, align 8, !tbaa !112
  %251 = load ptr, ptr %250, align 8, !tbaa !115
  %252 = getelementptr inbounds %struct.line_maps, ptr %250, i64 0, i32 2
  %253 = load i32, ptr %252, align 4, !tbaa !116
  %254 = add i32 %253, -1
  %255 = zext i32 %254 to i64
  %256 = getelementptr inbounds %struct.line_maps, ptr %250, i64 0, i32 8
  %257 = load i32, ptr %256, align 4, !tbaa !113
  %258 = getelementptr inbounds %struct.line_map, ptr %251, i64 %255, i32 2
  %259 = load i32, ptr %258, align 4, !tbaa !117
  %260 = sub i32 %257, %259
  %261 = getelementptr inbounds %struct.line_map, ptr %251, i64 %255, i32 6
  %262 = load i8, ptr %261, align 2
  %263 = zext nneg i8 %262 to i32
  %264 = lshr i32 %260, %263
  %265 = getelementptr inbounds %struct.line_map, ptr %251, i64 %255, i32 1
  %266 = load i32, ptr %265, align 8, !tbaa !119
  %267 = add i32 %266, 1
  %268 = add i32 %267, %264
  %269 = tail call i32 @linemap_line_start(ptr noundef nonnull %250, i32 noundef %268, i32 noundef 0) #20
  br label %270

270:                                              ; preds = %248, %238
  %271 = load ptr, ptr %0, align 8, !tbaa !62
  %272 = getelementptr inbounds %struct.cpp_buffer, ptr %271, i64 0, i32 13
  store i8 1, ptr %272, align 8, !tbaa !85
  store ptr %210, ptr %271, align 8, !tbaa !84
  tail call void @_cpp_process_line_notes(ptr noundef nonnull %0, i32 noundef 0)
  %273 = tail call zeroext i8 @_cpp_get_fresh_line(ptr noundef nonnull %0)
  %274 = icmp eq i8 %273, 0
  br i1 %274, label %275, label %294

275:                                              ; preds = %270
  %276 = getelementptr inbounds %struct.cpp_token, ptr %1, i64 0, i32 1
  %277 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 3
  %278 = getelementptr inbounds %struct.cpp_token, ptr %1, i64 0, i32 2
  %279 = load i32, ptr %1, align 8, !tbaa !171
  store i8 22, ptr %276, align 4
  %280 = load ptr, ptr %277, align 8, !tbaa !112
  %281 = getelementptr inbounds %struct.line_maps, ptr %280, i64 0, i32 8
  %282 = load i32, ptr %281, align 4, !tbaa !113
  store i32 %282, ptr %1, align 8, !tbaa !171
  store i16 64, ptr %278, align 2, !tbaa !154
  %283 = load ptr, ptr %4, align 8, !tbaa !51
  %284 = icmp eq ptr %283, null
  br i1 %284, label %292, label %285

285:                                              ; preds = %275, %285
  %286 = phi ptr [ %287, %285 ], [ %283, %275 ]
  %287 = load ptr, ptr %286, align 8, !tbaa !209
  %288 = icmp eq ptr %287, null
  br i1 %288, label %289, label %285, !llvm.loop !287

289:                                              ; preds = %285
  %290 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 7
  %291 = load ptr, ptr %290, align 8, !tbaa !288
  store ptr %291, ptr %286, align 8, !tbaa !209
  store ptr %283, ptr %290, align 8, !tbaa !288
  br label %292

292:                                              ; preds = %289, %275
  %293 = tail call zeroext i8 (ptr, i32, i32, i32, ptr, ...) @cpp_error_with_line(ptr noundef nonnull %0, i32 noundef 3, i32 noundef %279, i32 noundef 0, ptr noundef nonnull @.str.29) #20
  br label %329

294:                                              ; preds = %270
  %295 = load ptr, ptr %0, align 8, !tbaa !62
  %296 = load ptr, ptr %295, align 8, !tbaa !84
  %297 = getelementptr inbounds %struct.cpp_buffer, ptr %295, i64 0, i32 5
  %298 = load ptr, ptr %297, align 8, !tbaa !105
  %299 = getelementptr inbounds %struct.cpp_buffer, ptr %295, i64 0, i32 6
  %300 = load i32, ptr %299, align 8, !tbaa !81
  %301 = zext i32 %300 to i64
  %302 = getelementptr inbounds %struct._cpp_line_note, ptr %298, i64 %301
  br label %329

303:                                              ; preds = %223, %207
  %304 = icmp ne i8 %213, 0
  %305 = icmp ne i32 %115, 0
  %306 = select i1 %304, i1 true, i1 %305
  br i1 %306, label %329, label %307

307:                                              ; preds = %303
  %308 = load ptr, ptr %0, align 8, !tbaa !62
  %309 = getelementptr inbounds %struct.cpp_buffer, ptr %308, i64 0, i32 1
  %310 = load ptr, ptr %309, align 8, !tbaa !83
  %311 = ptrtoint ptr %212 to i64
  %312 = ptrtoint ptr %310 to i64
  %313 = sub i64 %311, %312
  %314 = trunc i64 %313 to i32
  %315 = load ptr, ptr %110, align 8, !tbaa !112
  %316 = getelementptr inbounds %struct.line_maps, ptr %315, i64 0, i32 9
  %317 = load i32, ptr %316, align 8, !tbaa !176
  %318 = icmp ugt i32 %317, %314
  br i1 %318, label %321, label %319

319:                                              ; preds = %307
  %320 = tail call i32 @linemap_position_for_column(ptr noundef %315, i32 noundef %314) #20
  br label %329

321:                                              ; preds = %307
  %322 = getelementptr inbounds %struct.line_maps, ptr %315, i64 0, i32 8
  %323 = load i32, ptr %322, align 4, !tbaa !113
  %324 = add i32 %323, %314
  %325 = getelementptr inbounds %struct.line_maps, ptr %315, i64 0, i32 7
  %326 = load i32, ptr %325, align 8, !tbaa !178
  %327 = icmp ult i32 %324, %326
  br i1 %327, label %329, label %328

328:                                              ; preds = %321
  store i32 %324, ptr %325, align 8, !tbaa !178
  br label %329

329:                                              ; preds = %192, %328, %321, %319, %303, %294, %292, %235, %221
  %330 = phi i32 [ 5, %221 ], [ 5, %235 ], [ 1, %292 ], [ 0, %319 ], [ 0, %328 ], [ 0, %321 ], [ 0, %294 ], [ 0, %303 ], [ %193, %192 ]
  %331 = phi ptr [ %208, %221 ], [ %208, %235 ], [ %208, %292 ], [ %208, %319 ], [ %208, %328 ], [ %208, %321 ], [ %302, %294 ], [ %208, %303 ], [ %194, %192 ]
  %332 = phi i64 [ %209, %221 ], [ %209, %235 ], [ %242, %292 ], [ %209, %319 ], [ %209, %328 ], [ %209, %321 ], [ %242, %294 ], [ %209, %303 ], [ %195, %192 ]
  %333 = phi i32 [ %114, %221 ], [ 60, %235 ], [ %114, %292 ], [ %114, %319 ], [ %114, %328 ], [ %114, %321 ], [ %114, %294 ], [ %114, %303 ], [ %114, %192 ]
  %334 = phi i32 [ %115, %221 ], [ %115, %235 ], [ %115, %292 ], [ %320, %319 ], [ %324, %328 ], [ %324, %321 ], [ %115, %294 ], [ %115, %303 ], [ %115, %192 ]
  %335 = phi ptr [ %222, %221 ], [ %210, %235 ], [ %212, %292 ], [ %212, %319 ], [ %212, %328 ], [ %212, %321 ], [ %296, %294 ], [ %212, %303 ], [ %196, %192 ]
  %336 = phi ptr [ %211, %221 ], [ %211, %235 ], [ %211, %292 ], [ %211, %319 ], [ %211, %328 ], [ %211, %321 ], [ %296, %294 ], [ %211, %303 ], [ %197, %192 ]
  switch i32 %330, label %441 [
    i32 0, label %111
    i32 5, label %337
    i32 28, label %337
  ], !llvm.loop !289

337:                                              ; preds = %329, %329
  %338 = icmp eq i32 %334, 0
  br i1 %338, label %345, label %339

339:                                              ; preds = %337
  %340 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 2, i32 2
  %341 = load i8, ptr %340, align 2, !tbaa !130
  %342 = icmp eq i8 %341, 0
  br i1 %342, label %343, label %345

343:                                              ; preds = %339
  %344 = tail call zeroext i8 (ptr, i32, i32, i32, ptr, ...) @cpp_error_with_line(ptr noundef nonnull %0, i32 noundef 0, i32 noundef %334, i32 noundef 0, ptr noundef nonnull @.str.20) #20
  br label %345

345:                                              ; preds = %343, %339, %337
  %346 = load ptr, ptr %0, align 8, !tbaa !62
  store ptr %335, ptr %346, align 8, !tbaa !84
  %347 = load ptr, ptr %4, align 8, !tbaa !51
  %348 = icmp eq ptr %347, null
  %349 = ptrtoint ptr %335 to i64
  %350 = ptrtoint ptr %336 to i64
  %351 = sub i64 %349, %350
  br i1 %348, label %352, label %382

352:                                              ; preds = %345
  %353 = trunc i64 %351 to i32
  %354 = add i64 %351, 1
  %355 = and i64 %354, 4294967295
  %356 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 6
  %357 = load ptr, ptr %356, align 8, !tbaa !202
  %358 = getelementptr inbounds %struct._cpp_buff, ptr %357, i64 0, i32 2
  %359 = load ptr, ptr %358, align 8, !tbaa !203
  %360 = getelementptr inbounds %struct._cpp_buff, ptr %357, i64 0, i32 3
  %361 = load ptr, ptr %360, align 8, !tbaa !205
  %362 = ptrtoint ptr %361 to i64
  %363 = ptrtoint ptr %359 to i64
  %364 = sub i64 %362, %363
  %365 = icmp ult i64 %364, %355
  br i1 %365, label %366, label %371

366:                                              ; preds = %352
  %367 = tail call ptr @_cpp_get_buff(ptr noundef nonnull %0, i64 noundef %355)
  %368 = load ptr, ptr %356, align 8, !tbaa !202
  store ptr %368, ptr %367, align 8, !tbaa !209
  store ptr %367, ptr %356, align 8, !tbaa !202
  %369 = getelementptr inbounds %struct._cpp_buff, ptr %367, i64 0, i32 2
  %370 = load ptr, ptr %369, align 8, !tbaa !203
  br label %371

371:                                              ; preds = %366, %352
  %372 = phi ptr [ %367, %366 ], [ %357, %352 ]
  %373 = phi ptr [ %370, %366 ], [ %359, %352 ]
  %374 = getelementptr inbounds i8, ptr %373, i64 %355
  %375 = getelementptr inbounds %struct._cpp_buff, ptr %372, i64 0, i32 2
  store ptr %374, ptr %375, align 8, !tbaa !203
  %376 = and i64 %351, 4294967295
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %373, ptr align 1 %336, i64 %376, i1 false)
  %377 = getelementptr inbounds i8, ptr %373, i64 %376
  store i8 0, ptr %377, align 1, !tbaa !57
  %378 = getelementptr inbounds %struct.cpp_token, ptr %1, i64 0, i32 1
  %379 = trunc i32 %333 to i8
  store i8 %379, ptr %378, align 4
  %380 = getelementptr inbounds %struct.cpp_token, ptr %1, i64 0, i32 3
  store i32 %353, ptr %380, align 8, !tbaa !57
  %381 = getelementptr inbounds %struct.cpp_token, ptr %1, i64 0, i32 3, i32 0, i32 1
  store ptr %373, ptr %381, align 8, !tbaa !57
  br label %441

382:                                              ; preds = %345
  %383 = add i64 %351, %332
  %384 = add i64 %383, 1
  %385 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 6
  %386 = load ptr, ptr %385, align 8, !tbaa !202
  %387 = getelementptr inbounds %struct._cpp_buff, ptr %386, i64 0, i32 2
  %388 = load ptr, ptr %387, align 8, !tbaa !203
  %389 = getelementptr inbounds %struct._cpp_buff, ptr %386, i64 0, i32 3
  %390 = load ptr, ptr %389, align 8, !tbaa !205
  %391 = ptrtoint ptr %390 to i64
  %392 = ptrtoint ptr %388 to i64
  %393 = sub i64 %391, %392
  %394 = icmp ult i64 %393, %384
  br i1 %394, label %395, label %400

395:                                              ; preds = %382
  %396 = tail call ptr @_cpp_get_buff(ptr noundef nonnull %0, i64 noundef %384)
  %397 = load ptr, ptr %385, align 8, !tbaa !202
  store ptr %397, ptr %396, align 8, !tbaa !209
  store ptr %396, ptr %385, align 8, !tbaa !202
  %398 = getelementptr inbounds %struct._cpp_buff, ptr %396, i64 0, i32 2
  %399 = load ptr, ptr %398, align 8, !tbaa !203
  br label %400

400:                                              ; preds = %395, %382
  %401 = phi ptr [ %396, %395 ], [ %386, %382 ]
  %402 = phi ptr [ %399, %395 ], [ %388, %382 ]
  %403 = getelementptr inbounds i8, ptr %402, i64 %384
  %404 = getelementptr inbounds %struct._cpp_buff, ptr %401, i64 0, i32 2
  store ptr %403, ptr %404, align 8, !tbaa !203
  %405 = getelementptr inbounds %struct.cpp_token, ptr %1, i64 0, i32 1
  %406 = trunc i32 %333 to i8
  store i8 %406, ptr %405, align 4
  %407 = trunc i64 %383 to i32
  %408 = getelementptr inbounds %struct.cpp_token, ptr %1, i64 0, i32 3
  store i32 %407, ptr %408, align 8, !tbaa !57
  %409 = getelementptr inbounds %struct.cpp_token, ptr %1, i64 0, i32 3, i32 0, i32 1
  store ptr %402, ptr %409, align 8, !tbaa !57
  %410 = load ptr, ptr %4, align 8, !tbaa !51
  %411 = icmp eq ptr %410, null
  br i1 %411, label %412, label %415

412:                                              ; preds = %415, %400
  %413 = phi ptr [ %410, %400 ], [ %431, %415 ]
  %414 = phi ptr [ %402, %400 ], [ %430, %415 ]
  store ptr %413, ptr %5, align 8, !tbaa !51
  br label %433

415:                                              ; preds = %400, %415
  %416 = phi ptr [ %431, %415 ], [ %410, %400 ]
  %417 = phi ptr [ %430, %415 ], [ %402, %400 ]
  %418 = getelementptr inbounds %struct._cpp_buff, ptr %416, i64 0, i32 1
  %419 = load ptr, ptr %418, align 8, !tbaa !208
  %420 = getelementptr inbounds %struct._cpp_buff, ptr %416, i64 0, i32 2
  %421 = load ptr, ptr %420, align 8, !tbaa !203
  %422 = ptrtoint ptr %421 to i64
  %423 = ptrtoint ptr %419 to i64
  %424 = sub i64 %422, %423
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %417, ptr align 1 %419, i64 %424, i1 false)
  %425 = load ptr, ptr %420, align 8, !tbaa !203
  %426 = load ptr, ptr %418, align 8, !tbaa !208
  %427 = ptrtoint ptr %425 to i64
  %428 = ptrtoint ptr %426 to i64
  %429 = sub i64 %427, %428
  %430 = getelementptr inbounds i8, ptr %417, i64 %429
  %431 = load ptr, ptr %416, align 8, !tbaa !51
  %432 = icmp eq ptr %431, null
  br i1 %432, label %412, label %415, !llvm.loop !290

433:                                              ; preds = %412, %433
  %434 = phi ptr [ %435, %433 ], [ %347, %412 ]
  %435 = load ptr, ptr %434, align 8, !tbaa !209
  %436 = icmp eq ptr %435, null
  br i1 %436, label %437, label %433, !llvm.loop !287

437:                                              ; preds = %433
  %438 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 7
  %439 = load ptr, ptr %438, align 8, !tbaa !288
  store ptr %439, ptr %434, align 8, !tbaa !209
  store ptr %347, ptr %438, align 8, !tbaa !288
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %414, ptr align 1 %336, i64 %351, i1 false)
  %440 = getelementptr inbounds i8, ptr %414, i64 %351
  store i8 0, ptr %440, align 1, !tbaa !57
  br label %441

441:                                              ; preds = %329, %91, %371, %437
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #20
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #20
  br label %537

442:                                              ; preds = %18
  switch i8 %8, label %448 [
    i8 76, label %454
    i8 85, label %447
    i8 117, label %443
  ], !prof !291

443:                                              ; preds = %442
  %444 = load i8, ptr %7, align 1, !tbaa !57
  %445 = icmp eq i8 %444, 56
  %446 = select i1 %445, i32 65, i32 63
  br label %454

447:                                              ; preds = %442
  br label %454

448:                                              ; preds = %442
  br label %454

449:                                              ; preds = %18
  switch i8 %8, label %450 [
    i8 76, label %454
    i8 85, label %453
  ], !prof !292

450:                                              ; preds = %449
  %451 = icmp eq i8 %8, 117
  %452 = select i1 %451, i32 58, i32 56, !prof !293
  br label %454

453:                                              ; preds = %449
  br label %454

454:                                              ; preds = %18, %450, %453, %449, %443, %447, %448, %442
  %455 = phi i1 [ false, %442 ], [ false, %448 ], [ false, %447 ], [ false, %443 ], [ false, %449 ], [ false, %453 ], [ false, %450 ], [ true, %18 ]
  %456 = phi i32 [ 34, %442 ], [ 34, %448 ], [ 34, %447 ], [ 34, %443 ], [ 39, %449 ], [ 39, %453 ], [ 39, %450 ], [ 62, %18 ]
  %457 = phi i32 [ 62, %442 ], [ 61, %448 ], [ 64, %447 ], [ %446, %443 ], [ 57, %449 ], [ 59, %453 ], [ %452, %450 ], [ 67, %18 ]
  br label %458

458:                                              ; preds = %482, %454
  %459 = phi ptr [ %19, %454 ], [ %483, %482 ]
  %460 = phi i32 [ %457, %454 ], [ %484, %482 ]
  %461 = phi i8 [ 0, %454 ], [ %486, %482 ]
  %462 = getelementptr inbounds i8, ptr %459, i64 1
  %463 = load i8, ptr %459, align 1, !tbaa !57
  %464 = zext i8 %463 to i32
  %465 = icmp eq i8 %463, 92
  br i1 %465, label %466, label %475, !prof !294

466:                                              ; preds = %458
  %467 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 2, i32 3
  %468 = load i8, ptr %467, align 1, !tbaa !237
  %469 = icmp eq i8 %468, 0
  br i1 %469, label %470, label %475, !prof !94

470:                                              ; preds = %466
  %471 = load i8, ptr %462, align 1, !tbaa !57
  %472 = icmp eq i8 %471, 10
  br i1 %472, label %475, label %473, !prof !97

473:                                              ; preds = %470
  %474 = getelementptr inbounds i8, ptr %459, i64 2
  br label %482

475:                                              ; preds = %470, %466, %458
  %476 = icmp eq i32 %456, %464
  br i1 %476, label %482, label %477, !prof !295

477:                                              ; preds = %475
  switch i8 %463, label %482 [
    i8 10, label %478
    i8 0, label %481
  ], !prof !296

478:                                              ; preds = %477
  br i1 %455, label %479, label %482

479:                                              ; preds = %478
  %480 = getelementptr inbounds %struct.cpp_token, ptr %1, i64 0, i32 1
  store i8 3, ptr %480, align 4
  br label %482

481:                                              ; preds = %477
  br label %482

482:                                              ; preds = %475, %473, %481, %477, %478, %479
  %483 = phi ptr [ %459, %479 ], [ %459, %478 ], [ %462, %481 ], [ %474, %473 ], [ %462, %477 ], [ %462, %475 ]
  %484 = phi i32 [ %460, %479 ], [ 60, %478 ], [ %460, %481 ], [ %460, %473 ], [ %460, %477 ], [ %460, %475 ]
  %485 = phi i32 [ 1, %479 ], [ 2, %478 ], [ 0, %481 ], [ 0, %473 ], [ 0, %477 ], [ 2, %475 ]
  %486 = phi i8 [ %461, %479 ], [ %461, %478 ], [ 1, %481 ], [ %461, %473 ], [ %461, %477 ], [ %461, %475 ]
  switch i32 %485, label %537 [
    i32 0, label %458
    i32 2, label %487
  ], !prof !297, !llvm.loop !298

487:                                              ; preds = %482
  %488 = icmp eq i8 %486, 0
  br i1 %488, label %495, label %489, !prof !299

489:                                              ; preds = %487
  %490 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 2, i32 2
  %491 = load i8, ptr %490, align 2, !tbaa !130
  %492 = icmp eq i8 %491, 0
  br i1 %492, label %493, label %495

493:                                              ; preds = %489
  %494 = tail call zeroext i8 (ptr, i32, ptr, ...) @cpp_error(ptr noundef %0, i32 noundef 0, ptr noundef nonnull @.str.20) #20
  br label %495

495:                                              ; preds = %493, %489, %487
  %496 = icmp eq i32 %484, 60
  br i1 %496, label %497, label %503, !prof !300

497:                                              ; preds = %495
  %498 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 53, i32 1
  %499 = load i32, ptr %498, align 4, !tbaa !234
  %500 = icmp eq i32 %499, 9
  br i1 %500, label %503, label %501

501:                                              ; preds = %497
  %502 = tail call zeroext i8 (ptr, i32, ptr, ...) @cpp_error(ptr noundef %0, i32 noundef 2, ptr noundef nonnull @.str.21, i32 noundef %456) #20
  br label %503

503:                                              ; preds = %501, %497, %495
  %504 = load ptr, ptr %0, align 8, !tbaa !62
  store ptr %483, ptr %504, align 8, !tbaa !84
  %505 = ptrtoint ptr %483 to i64
  %506 = ptrtoint ptr %2 to i64
  %507 = sub i64 %505, %506
  %508 = trunc i64 %507 to i32
  %509 = add i64 %507, 1
  %510 = and i64 %509, 4294967295
  %511 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 6
  %512 = load ptr, ptr %511, align 8, !tbaa !202
  %513 = getelementptr inbounds %struct._cpp_buff, ptr %512, i64 0, i32 2
  %514 = load ptr, ptr %513, align 8, !tbaa !203
  %515 = getelementptr inbounds %struct._cpp_buff, ptr %512, i64 0, i32 3
  %516 = load ptr, ptr %515, align 8, !tbaa !205
  %517 = ptrtoint ptr %516 to i64
  %518 = ptrtoint ptr %514 to i64
  %519 = sub i64 %517, %518
  %520 = icmp ult i64 %519, %510
  br i1 %520, label %521, label %526, !prof !300

521:                                              ; preds = %503
  %522 = tail call ptr @_cpp_get_buff(ptr noundef %0, i64 noundef %510)
  %523 = load ptr, ptr %511, align 8, !tbaa !202
  store ptr %523, ptr %522, align 8, !tbaa !209
  store ptr %522, ptr %511, align 8, !tbaa !202
  %524 = getelementptr inbounds %struct._cpp_buff, ptr %522, i64 0, i32 2
  %525 = load ptr, ptr %524, align 8, !tbaa !203
  br label %526

526:                                              ; preds = %503, %521
  %527 = phi ptr [ %522, %521 ], [ %512, %503 ]
  %528 = phi ptr [ %525, %521 ], [ %514, %503 ]
  %529 = getelementptr inbounds i8, ptr %528, i64 %510
  %530 = getelementptr inbounds %struct._cpp_buff, ptr %527, i64 0, i32 2
  store ptr %529, ptr %530, align 8, !tbaa !203
  %531 = and i64 %507, 4294967295
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %528, ptr nonnull align 1 %2, i64 %531, i1 false), !prof !301
  %532 = getelementptr inbounds i8, ptr %528, i64 %531
  store i8 0, ptr %532, align 1, !tbaa !57
  %533 = getelementptr inbounds %struct.cpp_token, ptr %1, i64 0, i32 1
  %534 = trunc i32 %484 to i8
  store i8 %534, ptr %533, align 4
  %535 = getelementptr inbounds %struct.cpp_token, ptr %1, i64 0, i32 3
  store i32 %508, ptr %535, align 8, !tbaa !57
  %536 = getelementptr inbounds %struct.cpp_token, ptr %1, i64 0, i32 3, i32 0, i32 1
  store ptr %528, ptr %536, align 8, !tbaa !57
  br label %537

537:                                              ; preds = %482, %526, %441
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc ptr @lex_identifier(ptr noundef %0, ptr noundef %1, i8 noundef zeroext %2, ptr noundef %3) unnamed_addr #3 !prof !50 !PGOFuncName !302 {
  %5 = load i8, ptr %1, align 1, !tbaa !57
  %6 = zext i8 %5 to i32
  %7 = add nsw i32 %6, -113
  %8 = load ptr, ptr %0, align 8, !tbaa !62
  %9 = load ptr, ptr %8, align 8, !tbaa !84
  %10 = icmp eq i8 %2, 0
  br i1 %10, label %11, label %33, !prof !230

11:                                               ; preds = %4
  %12 = load i8, ptr %9, align 1, !tbaa !57
  %13 = zext i8 %12 to i64
  %14 = getelementptr inbounds [256 x i16], ptr @_sch_istable, i64 0, i64 %13
  %15 = load i16, ptr %14, align 2, !tbaa !93
  %16 = and i16 %15, 516
  %17 = icmp eq i16 %16, 0
  br i1 %17, label %33, label %18, !prof !224

18:                                               ; preds = %11, %18
  %19 = phi i8 [ %27, %18 ], [ %12, %11 ]
  %20 = phi i32 [ %25, %18 ], [ %7, %11 ]
  %21 = phi ptr [ %26, %18 ], [ %9, %11 ]
  %22 = zext i8 %19 to i32
  %23 = mul i32 %20, 67
  %24 = add i32 %23, -113
  %25 = add i32 %24, %22
  %26 = getelementptr inbounds i8, ptr %21, i64 1
  %27 = load i8, ptr %26, align 1, !tbaa !57
  %28 = zext i8 %27 to i64
  %29 = getelementptr inbounds [256 x i16], ptr @_sch_istable, i64 0, i64 %28
  %30 = load i16, ptr %29, align 2, !tbaa !93
  %31 = and i16 %30, 516
  %32 = icmp eq i16 %31, 0
  br i1 %32, label %33, label %18, !prof !225, !llvm.loop !226

33:                                               ; preds = %18, %11, %4
  %34 = phi ptr [ %9, %4 ], [ %9, %11 ], [ %26, %18 ]
  %35 = phi i32 [ %7, %4 ], [ %7, %11 ], [ %25, %18 ]
  store ptr %34, ptr %8, align 8, !tbaa !84
  br i1 %10, label %36, label %72, !prof !230

36:                                               ; preds = %33
  %37 = load i8, ptr %34, align 1, !tbaa !57
  %38 = icmp eq i8 %37, 36
  br i1 %38, label %39, label %54, !prof !195

39:                                               ; preds = %36
  %40 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 53, i32 24
  %41 = load i8, ptr %40, align 2, !tbaa !196
  %42 = icmp eq i8 %41, 0
  br i1 %42, label %102, label %43

43:                                               ; preds = %39
  %44 = getelementptr inbounds i8, ptr %34, i64 1
  store ptr %44, ptr %8, align 8, !tbaa !84
  %45 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 53, i32 26
  %46 = load i8, ptr %45, align 8, !tbaa !197
  %47 = icmp eq i8 %46, 0
  br i1 %47, label %72, label %48

48:                                               ; preds = %43
  %49 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 2, i32 2
  %50 = load i8, ptr %49, align 2, !tbaa !130
  %51 = icmp eq i8 %50, 0
  br i1 %51, label %52, label %72

52:                                               ; preds = %48
  store i8 0, ptr %45, align 8, !tbaa !197
  %53 = tail call zeroext i8 (ptr, i32, ptr, ...) @cpp_error(ptr noundef nonnull %0, i32 noundef 2, ptr noundef nonnull @.str.30) #20
  br label %72

54:                                               ; preds = %36
  %55 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 53, i32 25
  %56 = load i8, ptr %55, align 1, !tbaa !198
  %57 = icmp ne i8 %56, 0
  %58 = icmp eq i8 %37, 92
  %59 = and i1 %58, %57
  br i1 %59, label %60, label %102, !prof !195

60:                                               ; preds = %54
  %61 = getelementptr inbounds i8, ptr %34, i64 1
  %62 = load i8, ptr %61, align 1, !tbaa !57
  switch i8 %62, label %102 [
    i8 117, label %63
    i8 85, label %63
  ]

63:                                               ; preds = %60, %60
  %64 = getelementptr inbounds i8, ptr %34, i64 2
  store ptr %64, ptr %8, align 8, !tbaa !84
  %65 = getelementptr inbounds %struct.cpp_buffer, ptr %8, i64 0, i32 4
  %66 = load ptr, ptr %65, align 8, !tbaa !90
  %67 = tail call i32 @_cpp_valid_ucn(ptr noundef nonnull %0, ptr noundef nonnull %8, ptr noundef %66, i32 noundef 2, ptr noundef %3) #20
  %68 = icmp eq i32 %67, 0
  br i1 %68, label %69, label %72

69:                                               ; preds = %63
  %70 = load ptr, ptr %8, align 8, !tbaa !84
  %71 = getelementptr inbounds i8, ptr %70, i64 -2
  store ptr %71, ptr %8, align 8, !tbaa !84
  br label %102

72:                                               ; preds = %63, %52, %48, %43, %33
  %73 = getelementptr inbounds %struct.normalize_state, ptr %3, i64 0, i32 1
  br label %74

74:                                               ; preds = %92, %72
  %75 = load ptr, ptr %0, align 8, !tbaa !62
  %76 = load ptr, ptr %75, align 8, !tbaa !84
  %77 = load i8, ptr %76, align 1, !tbaa !57
  %78 = zext i8 %77 to i64
  %79 = getelementptr inbounds [256 x i16], ptr @_sch_istable, i64 0, i64 %78
  %80 = load i16, ptr %79, align 2, !tbaa !93
  %81 = and i16 %80, 516
  %82 = icmp eq i16 %81, 0
  br i1 %82, label %92, label %83

83:                                               ; preds = %74, %83
  %84 = phi ptr [ %85, %83 ], [ %76, %74 ]
  %85 = getelementptr inbounds i8, ptr %84, i64 1
  store ptr %85, ptr %75, align 8, !tbaa !84
  store i32 0, ptr %3, align 4, !tbaa !191
  store i8 0, ptr %73, align 4, !tbaa !193
  %86 = load i8, ptr %85, align 1, !tbaa !57
  %87 = zext i8 %86 to i64
  %88 = getelementptr inbounds [256 x i16], ptr @_sch_istable, i64 0, i64 %87
  %89 = load i16, ptr %88, align 2, !tbaa !93
  %90 = and i16 %89, 516
  %91 = icmp eq i16 %90, 0
  br i1 %91, label %92, label %83, !llvm.loop !227

92:                                               ; preds = %83, %74
  %93 = tail call fastcc zeroext i8 @forms_identifier_p(ptr noundef nonnull %0, i32 noundef 0, ptr noundef %3), !range !228
  %94 = icmp eq i8 %93, 0
  br i1 %94, label %95, label %74, !llvm.loop !229

95:                                               ; preds = %92
  %96 = load ptr, ptr %0, align 8, !tbaa !62
  %97 = load ptr, ptr %96, align 8, !tbaa !84
  %98 = ptrtoint ptr %97 to i64
  %99 = ptrtoint ptr %1 to i64
  %100 = sub i64 %98, %99
  %101 = tail call ptr @_cpp_interpret_identifier(ptr noundef nonnull %0, ptr noundef nonnull %1, i64 noundef %100) #20
  br label %112

102:                                              ; preds = %39, %69, %54, %60
  %103 = ptrtoint ptr %34 to i64
  %104 = ptrtoint ptr %1 to i64
  %105 = sub i64 %103, %104
  %106 = trunc i64 %105 to i32
  %107 = add i32 %35, %106
  %108 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 50
  %109 = load ptr, ptr %108, align 8, !tbaa !129
  %110 = and i64 %105, 4294967295
  %111 = tail call ptr @ht_lookup_with_hash(ptr noundef %109, ptr noundef nonnull %1, i64 noundef %110, i32 noundef %107, i32 noundef 1) #20
  br label %112

112:                                              ; preds = %102, %95
  %113 = phi ptr [ %101, %95 ], [ %111, %102 ]
  %114 = getelementptr inbounds %struct.cpp_hashnode, ptr %113, i64 0, i32 3
  %115 = load i16, ptr %114, align 2
  %116 = lshr i16 %115, 6
  %117 = zext nneg i16 %116 to i32
  %118 = and i32 %117, 8
  %119 = icmp eq i32 %118, 0
  br i1 %119, label %150, label %120, !prof !230

120:                                              ; preds = %112
  %121 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 2, i32 2
  %122 = load i8, ptr %121, align 2, !tbaa !130
  %123 = icmp eq i8 %122, 0
  br i1 %123, label %124, label %150

124:                                              ; preds = %120
  %125 = and i32 %117, 2
  %126 = icmp eq i32 %125, 0
  br i1 %126, label %134, label %127

127:                                              ; preds = %124
  %128 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 2, i32 7
  %129 = load i8, ptr %128, align 1, !tbaa !131
  %130 = icmp eq i8 %129, 0
  br i1 %130, label %131, label %134

131:                                              ; preds = %127
  %132 = load ptr, ptr %113, align 8, !tbaa !58
  %133 = tail call zeroext i8 (ptr, i32, ptr, ...) @cpp_error(ptr noundef nonnull %0, i32 noundef 3, ptr noundef nonnull @.str.11, ptr noundef %132) #20
  br label %134

134:                                              ; preds = %131, %127, %124
  %135 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 54, i32 3
  %136 = load ptr, ptr %135, align 8, !tbaa !132
  %137 = icmp eq ptr %113, %136
  br i1 %137, label %138, label %144

138:                                              ; preds = %134
  %139 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 2, i32 6
  %140 = load i8, ptr %139, align 2, !tbaa !133
  %141 = icmp eq i8 %140, 0
  br i1 %141, label %142, label %144

142:                                              ; preds = %138
  %143 = tail call zeroext i8 (ptr, i32, ptr, ...) @cpp_error(ptr noundef nonnull %0, i32 noundef 2, ptr noundef nonnull @.str.12) #20
  br label %144

144:                                              ; preds = %142, %138, %134
  %145 = load i16, ptr %114, align 2
  %146 = icmp sgt i16 %145, -1
  br i1 %146, label %150, label %147

147:                                              ; preds = %144
  %148 = load ptr, ptr %113, align 8, !tbaa !58
  %149 = tail call zeroext i8 (ptr, i32, ptr, ...) @cpp_error(ptr noundef nonnull %0, i32 noundef 0, ptr noundef nonnull @.str.13, ptr noundef %148) #20
  br label %150

150:                                              ; preds = %144, %147, %120, %112
  ret ptr %113
}

declare zeroext i8 @cpp_error(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: cold nounwind uwtable
define internal fastcc void @save_comment(ptr nocapture noundef %0, ptr nocapture noundef %1, ptr noundef %2, i32 noundef %3) unnamed_addr #7 !prof !50 {
  %5 = load ptr, ptr %0, align 8, !tbaa !62
  %6 = load ptr, ptr %5, align 8, !tbaa !84
  %7 = ptrtoint ptr %6 to i64
  %8 = ptrtoint ptr %2 to i64
  %9 = sub i64 %7, %8
  %10 = trunc i64 %9 to i32
  %11 = getelementptr inbounds i8, ptr %6, i64 -1
  %12 = load i8, ptr %11, align 1, !tbaa !57
  %13 = zext i8 %12 to i64
  %14 = getelementptr inbounds [256 x i16], ptr @_sch_istable, i64 0, i64 %13
  %15 = load i16, ptr %14, align 2, !tbaa !93
  %16 = and i16 %15, 1024
  %17 = icmp eq i16 %16, 0
  %18 = zext i1 %17 to i32
  %19 = add i32 %18, %10
  %20 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 2
  %21 = load i8, ptr %20, align 8, !tbaa !160
  %22 = icmp ne i8 %21, 0
  %23 = icmp eq i32 %3, 47
  %24 = and i1 %23, %22
  %25 = add i32 %19, 2
  %26 = select i1 %24, i32 %25, i32 %19
  %27 = zext i32 %26 to i64
  %28 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 6
  %29 = load ptr, ptr %28, align 8, !tbaa !202
  %30 = getelementptr inbounds %struct._cpp_buff, ptr %29, i64 0, i32 2
  %31 = load ptr, ptr %30, align 8, !tbaa !203
  %32 = getelementptr inbounds %struct._cpp_buff, ptr %29, i64 0, i32 3
  %33 = load ptr, ptr %32, align 8, !tbaa !205
  %34 = ptrtoint ptr %33 to i64
  %35 = ptrtoint ptr %31 to i64
  %36 = sub i64 %34, %35
  %37 = icmp ult i64 %36, %27
  br i1 %37, label %38, label %43

38:                                               ; preds = %4
  %39 = tail call ptr @_cpp_get_buff(ptr noundef nonnull %0, i64 noundef %27)
  %40 = load ptr, ptr %28, align 8, !tbaa !202
  store ptr %40, ptr %39, align 8, !tbaa !209
  store ptr %39, ptr %28, align 8, !tbaa !202
  %41 = getelementptr inbounds %struct._cpp_buff, ptr %39, i64 0, i32 2
  %42 = load ptr, ptr %41, align 8, !tbaa !203
  br label %43

43:                                               ; preds = %4, %38
  %44 = phi ptr [ %39, %38 ], [ %29, %4 ]
  %45 = phi ptr [ %42, %38 ], [ %31, %4 ]
  %46 = getelementptr inbounds i8, ptr %45, i64 %27
  %47 = getelementptr inbounds %struct._cpp_buff, ptr %44, i64 0, i32 2
  store ptr %46, ptr %47, align 8, !tbaa !203
  %48 = getelementptr inbounds %struct.cpp_token, ptr %1, i64 0, i32 1
  store i8 68, ptr %48, align 4
  %49 = getelementptr inbounds %struct.cpp_token, ptr %1, i64 0, i32 3
  store i32 %26, ptr %49, align 8, !tbaa !57
  %50 = getelementptr inbounds %struct.cpp_token, ptr %1, i64 0, i32 3, i32 0, i32 1
  store ptr %45, ptr %50, align 8, !tbaa !57
  store i8 47, ptr %45, align 1, !tbaa !57
  %51 = getelementptr inbounds i8, ptr %45, i64 1
  %52 = add i32 %19, -1
  %53 = zext i32 %52 to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %51, ptr align 1 %2, i64 %53, i1 false)
  %54 = load i8, ptr %20, align 8, !tbaa !160
  %55 = icmp ne i8 %54, 0
  %56 = and i1 %23, %55
  br i1 %56, label %57, label %64

57:                                               ; preds = %43
  store i8 42, ptr %51, align 1, !tbaa !57
  %58 = add i32 %26, -2
  %59 = zext i32 %58 to i64
  %60 = getelementptr inbounds i8, ptr %45, i64 %59
  store i8 42, ptr %60, align 1, !tbaa !57
  %61 = add i32 %26, -1
  %62 = zext i32 %61 to i64
  %63 = getelementptr inbounds i8, ptr %45, i64 %62
  store i8 47, ptr %63, align 1, !tbaa !57
  br label %64

64:                                               ; preds = %57, %43
  %65 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 62
  %66 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 62, i32 2
  %67 = load i32, ptr %66, align 4, !tbaa !303
  %68 = icmp eq i32 %67, 0
  br i1 %68, label %69, label %71

69:                                               ; preds = %64
  store i32 256, ptr %66, align 4, !tbaa !303
  %70 = tail call ptr @xmalloc(i64 noundef 4096) #20
  store ptr %70, ptr %65, align 8, !tbaa !304
  br label %71

71:                                               ; preds = %69, %64
  %72 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 62, i32 1
  %73 = load i32, ptr %72, align 8, !tbaa !305
  %74 = load i32, ptr %66, align 4, !tbaa !303
  %75 = icmp eq i32 %73, %74
  br i1 %75, label %76, label %82

76:                                               ; preds = %71
  %77 = shl nsw i32 %74, 1
  store i32 %77, ptr %66, align 4, !tbaa !303
  %78 = load ptr, ptr %65, align 8, !tbaa !304
  %79 = sext i32 %77 to i64
  %80 = shl nsw i64 %79, 4
  %81 = tail call ptr @xrealloc(ptr noundef %78, i64 noundef %80) #20
  store ptr %81, ptr %65, align 8, !tbaa !304
  br label %82

82:                                               ; preds = %71, %76
  %83 = load i32, ptr %49, align 8, !tbaa !57
  %84 = add nsw i32 %83, 1
  %85 = sext i32 %84 to i64
  %86 = tail call ptr @xmalloc(i64 noundef %85) #20
  %87 = load ptr, ptr %65, align 8, !tbaa !304
  %88 = load i32, ptr %72, align 8, !tbaa !305
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds %struct.cpp_comment, ptr %87, i64 %89
  store ptr %86, ptr %90, align 8, !tbaa !306
  %91 = load ptr, ptr %50, align 8, !tbaa !57
  %92 = sext i32 %83 to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %86, ptr align 1 %91, i64 %92, i1 false)
  %93 = load ptr, ptr %65, align 8, !tbaa !304
  %94 = load i32, ptr %72, align 8, !tbaa !305
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds %struct.cpp_comment, ptr %93, i64 %95
  %97 = load ptr, ptr %96, align 8, !tbaa !306
  %98 = getelementptr inbounds i8, ptr %97, i64 %92
  store i8 0, ptr %98, align 1, !tbaa !57
  %99 = load i32, ptr %1, align 8, !tbaa !171
  %100 = load ptr, ptr %65, align 8, !tbaa !304
  %101 = load i32, ptr %72, align 8, !tbaa !305
  %102 = sext i32 %101 to i64
  %103 = getelementptr inbounds %struct.cpp_comment, ptr %100, i64 %102, i32 1
  store i32 %99, ptr %103, align 8, !tbaa !308
  %104 = add nsw i32 %101, 1
  store i32 %104, ptr %72, align 8, !tbaa !305
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc noundef zeroext i8 @forms_identifier_p(ptr noundef %0, i32 noundef %1, ptr noundef %2) unnamed_addr #3 !prof !50 !PGOFuncName !309 {
  %4 = load ptr, ptr %0, align 8, !tbaa !62
  %5 = load ptr, ptr %4, align 8, !tbaa !84
  %6 = load i8, ptr %5, align 1, !tbaa !57
  %7 = icmp eq i8 %6, 36
  br i1 %7, label %8, label %23, !prof !195

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 53, i32 24
  %10 = load i8, ptr %9, align 2, !tbaa !196
  %11 = icmp eq i8 %10, 0
  br i1 %11, label %43, label %12

12:                                               ; preds = %8
  %13 = getelementptr inbounds i8, ptr %5, i64 1
  store ptr %13, ptr %4, align 8, !tbaa !84
  %14 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 53, i32 26
  %15 = load i8, ptr %14, align 8, !tbaa !197
  %16 = icmp eq i8 %15, 0
  br i1 %16, label %43, label %17

17:                                               ; preds = %12
  %18 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 2, i32 2
  %19 = load i8, ptr %18, align 2, !tbaa !130
  %20 = icmp eq i8 %19, 0
  br i1 %20, label %21, label %43

21:                                               ; preds = %17
  store i8 0, ptr %14, align 8, !tbaa !197
  %22 = tail call zeroext i8 (ptr, i32, ptr, ...) @cpp_error(ptr noundef nonnull %0, i32 noundef 2, ptr noundef nonnull @.str.30) #20
  br label %43

23:                                               ; preds = %3
  %24 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 53, i32 25
  %25 = load i8, ptr %24, align 1, !tbaa !198
  %26 = icmp ne i8 %25, 0
  %27 = icmp eq i8 %6, 92
  %28 = and i1 %27, %26
  br i1 %28, label %29, label %43, !prof !195

29:                                               ; preds = %23
  %30 = getelementptr inbounds i8, ptr %5, i64 1
  %31 = load i8, ptr %30, align 1, !tbaa !57
  switch i8 %31, label %43 [
    i8 117, label %32
    i8 85, label %32
  ]

32:                                               ; preds = %29, %29
  %33 = getelementptr inbounds i8, ptr %5, i64 2
  store ptr %33, ptr %4, align 8, !tbaa !84
  %34 = getelementptr inbounds %struct.cpp_buffer, ptr %4, i64 0, i32 4
  %35 = load ptr, ptr %34, align 8, !tbaa !90
  %36 = icmp eq i32 %1, 0
  %37 = select i1 %36, i32 2, i32 1
  %38 = tail call i32 @_cpp_valid_ucn(ptr noundef nonnull %0, ptr noundef nonnull %4, ptr noundef %35, i32 noundef %37, ptr noundef %2) #20
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %40, label %43

40:                                               ; preds = %32
  %41 = load ptr, ptr %4, align 8, !tbaa !84
  %42 = getelementptr inbounds i8, ptr %41, i64 -2
  store ptr %42, ptr %4, align 8, !tbaa !84
  br label %43

43:                                               ; preds = %29, %23, %40, %32, %12, %17, %21, %8
  %44 = phi i8 [ 0, %8 ], [ 1, %21 ], [ 1, %17 ], [ 1, %12 ], [ 1, %32 ], [ 0, %40 ], [ 0, %23 ], [ 0, %29 ]
  ret i8 %44
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @cpp_token_len(ptr nocapture noundef readonly %0) local_unnamed_addr #11 !prof !50 {
  %2 = getelementptr inbounds %struct.cpp_token, ptr %0, i64 0, i32 1
  %3 = load i8, ptr %2, align 4
  %4 = zext i8 %3 to i64
  %5 = getelementptr inbounds [73 x %struct.token_spelling], ptr @token_spellings, i64 0, i64 %4
  %6 = load i32, ptr %5, align 16, !tbaa !216
  switch i32 %6, label %16 [
    i32 2, label %7
    i32 1, label %10
  ]

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.cpp_token, ptr %0, i64 0, i32 3
  %9 = load i32, ptr %8, align 8, !tbaa !57
  br label %16

10:                                               ; preds = %1
  %11 = getelementptr inbounds %struct.cpp_token, ptr %0, i64 0, i32 3
  %12 = load ptr, ptr %11, align 8, !tbaa !57
  %13 = getelementptr inbounds %struct.ht_identifier, ptr %12, i64 0, i32 1
  %14 = load i32, ptr %13, align 8, !tbaa !218
  %15 = mul i32 %14, 10
  br label %16

16:                                               ; preds = %1, %10, %7
  %17 = phi i32 [ %15, %10 ], [ %9, %7 ], [ 6, %1 ]
  ret i32 %17
}

; Function Attrs: cold nounwind uwtable
define dso_local ptr @cpp_spell_token(ptr noundef %0, ptr nocapture noundef readonly %1, ptr noundef writeonly %2, i8 noundef zeroext %3) local_unnamed_addr #7 !prof !50 {
  %5 = getelementptr inbounds %struct.cpp_token, ptr %1, i64 0, i32 1
  %6 = load i8, ptr %5, align 4
  %7 = zext i8 %6 to i64
  %8 = getelementptr inbounds [73 x %struct.token_spelling], ptr @token_spellings, i64 0, i64 %7
  %9 = load i32, ptr %8, align 16, !tbaa !216
  switch i32 %9, label %96 [
    i32 0, label %10
    i32 1, label %40
    i32 2, label %83
    i32 3, label %92
  ]

10:                                               ; preds = %4
  %11 = getelementptr inbounds %struct.cpp_token, ptr %1, i64 0, i32 2
  %12 = load i16, ptr %11, align 2, !tbaa !154
  %13 = zext i16 %12 to i32
  %14 = and i32 %13, 2
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %19, label %16

16:                                               ; preds = %10
  %17 = add nsw i64 %7, -37
  %18 = getelementptr inbounds [6 x ptr], ptr @digraph_spellings, i64 0, i64 %17
  br label %24

19:                                               ; preds = %10
  %20 = and i32 %13, 16
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %37

22:                                               ; preds = %19
  %23 = getelementptr inbounds [73 x %struct.token_spelling], ptr @token_spellings, i64 0, i64 %7, i32 1
  br label %24

24:                                               ; preds = %22, %16
  %25 = phi ptr [ %18, %16 ], [ %23, %22 ]
  %26 = load ptr, ptr %25, align 8, !tbaa !51
  %27 = load i8, ptr %26, align 1, !tbaa !57
  %28 = icmp eq i8 %27, 0
  br i1 %28, label %37, label %29

29:                                               ; preds = %24, %29
  %30 = phi i8 [ %35, %29 ], [ %27, %24 ]
  %31 = phi ptr [ %34, %29 ], [ %2, %24 ]
  %32 = phi ptr [ %33, %29 ], [ %26, %24 ]
  %33 = getelementptr inbounds i8, ptr %32, i64 1
  %34 = getelementptr inbounds i8, ptr %31, i64 1
  store i8 %30, ptr %31, align 1, !tbaa !57
  %35 = load i8, ptr %33, align 1, !tbaa !57
  %36 = icmp eq i8 %35, 0
  br i1 %36, label %37, label %29, !llvm.loop !310

37:                                               ; preds = %29, %24, %19
  %38 = phi i1 [ false, %19 ], [ true, %24 ], [ true, %29 ]
  %39 = phi ptr [ %2, %19 ], [ %2, %24 ], [ %34, %29 ]
  br i1 %38, label %96, label %40

40:                                               ; preds = %37, %4
  %41 = phi ptr [ %2, %4 ], [ %39, %37 ]
  %42 = icmp eq i8 %3, 0
  %43 = getelementptr inbounds %struct.cpp_token, ptr %1, i64 0, i32 3
  %44 = load ptr, ptr %43, align 8, !tbaa !57
  %45 = load ptr, ptr %44, align 8, !tbaa !58
  %46 = getelementptr inbounds %struct.ht_identifier, ptr %44, i64 0, i32 1
  %47 = load i32, ptr %46, align 8, !tbaa !218
  br i1 %42, label %55, label %48

48:                                               ; preds = %40
  %49 = zext i32 %47 to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %41, ptr align 1 %45, i64 %49, i1 false)
  %50 = load ptr, ptr %43, align 8, !tbaa !57
  %51 = getelementptr inbounds %struct.ht_identifier, ptr %50, i64 0, i32 1
  %52 = load i32, ptr %51, align 8, !tbaa !218
  %53 = zext i32 %52 to i64
  %54 = getelementptr inbounds i8, ptr %41, i64 %53
  br label %96

55:                                               ; preds = %40
  %56 = icmp eq i32 %47, 0
  br i1 %56, label %96, label %57

57:                                               ; preds = %55, %74
  %58 = phi ptr [ %78, %74 ], [ %44, %55 ]
  %59 = phi ptr [ %76, %74 ], [ %41, %55 ]
  %60 = phi i64 [ %77, %74 ], [ 0, %55 ]
  %61 = getelementptr inbounds i8, ptr %45, i64 %60
  %62 = load i8, ptr %61, align 1, !tbaa !57
  %63 = icmp sgt i8 %62, -1
  br i1 %63, label %69, label %64

64:                                               ; preds = %57
  %65 = tail call fastcc i64 @utf8_to_ucn(ptr noundef %59, ptr noundef nonnull %61), !range !311
  %66 = add i64 %60, -1
  %67 = add i64 %66, %65
  %68 = getelementptr inbounds i8, ptr %59, i64 10
  br label %74

69:                                               ; preds = %57
  %70 = load ptr, ptr %58, align 8, !tbaa !58
  %71 = getelementptr inbounds i8, ptr %70, i64 %60
  %72 = load i8, ptr %71, align 1, !tbaa !57
  %73 = getelementptr inbounds i8, ptr %59, i64 1
  store i8 %72, ptr %59, align 1, !tbaa !57
  br label %74

74:                                               ; preds = %64, %69
  %75 = phi i64 [ %67, %64 ], [ %60, %69 ]
  %76 = phi ptr [ %68, %64 ], [ %73, %69 ]
  %77 = add i64 %75, 1
  %78 = load ptr, ptr %43, align 8, !tbaa !57
  %79 = getelementptr inbounds %struct.ht_identifier, ptr %78, i64 0, i32 1
  %80 = load i32, ptr %79, align 8, !tbaa !218
  %81 = zext i32 %80 to i64
  %82 = icmp ult i64 %77, %81
  br i1 %82, label %57, label %96, !llvm.loop !312

83:                                               ; preds = %4
  %84 = getelementptr inbounds %struct.cpp_token, ptr %1, i64 0, i32 3
  %85 = getelementptr inbounds %struct.cpp_token, ptr %1, i64 0, i32 3, i32 0, i32 1
  %86 = load ptr, ptr %85, align 8, !tbaa !57
  %87 = load i32, ptr %84, align 8, !tbaa !57
  %88 = zext i32 %87 to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %2, ptr align 1 %86, i64 %88, i1 false)
  %89 = load i32, ptr %84, align 8, !tbaa !57
  %90 = zext i32 %89 to i64
  %91 = getelementptr inbounds i8, ptr %2, i64 %90
  br label %96

92:                                               ; preds = %4
  %93 = getelementptr inbounds [73 x %struct.token_spelling], ptr @token_spellings, i64 0, i64 %7, i32 1
  %94 = load ptr, ptr %93, align 8, !tbaa !313
  %95 = tail call zeroext i8 (ptr, i32, ptr, ...) @cpp_error(ptr noundef %0, i32 noundef 4, ptr noundef nonnull @.str.9, ptr noundef %94) #20
  br label %96

96:                                               ; preds = %74, %55, %37, %48, %4, %92, %83
  %97 = phi ptr [ %2, %4 ], [ %2, %92 ], [ %91, %83 ], [ %54, %48 ], [ %39, %37 ], [ %41, %55 ], [ %76, %74 ]
  ret ptr %97
}

; Function Attrs: cold nounwind uwtable
define internal fastcc i64 @utf8_to_ucn(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1) unnamed_addr #7 !prof !50 {
  %3 = load i8, ptr %1, align 1, !tbaa !57
  %4 = zext i8 %3 to i32
  %5 = icmp sgt i8 %3, -1
  br i1 %5, label %13, label %6

6:                                                ; preds = %2, %6
  %7 = phi i32 [ %10, %6 ], [ %4, %2 ]
  %8 = phi i32 [ %9, %6 ], [ 0, %2 ]
  %9 = add nuw nsw i32 %8, 1
  %10 = shl i32 %7, 1
  %11 = and i32 %7, 64
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %6, !llvm.loop !314

13:                                               ; preds = %6, %2
  %14 = phi i32 [ 0, %2 ], [ %9, %6 ]
  %15 = lshr i32 127, %14
  %16 = and i32 %15, %4
  %17 = zext nneg i32 %16 to i64
  %18 = icmp ugt i32 %14, 1
  br i1 %18, label %19, label %36

19:                                               ; preds = %13, %29
  %20 = phi i64 [ %33, %29 ], [ %17, %13 ]
  %21 = phi i32 [ %34, %29 ], [ 1, %13 ]
  %22 = phi ptr [ %23, %29 ], [ %1, %13 ]
  %23 = getelementptr inbounds i8, ptr %22, i64 1
  %24 = load i8, ptr %23, align 1, !tbaa !57
  %25 = zext i8 %24 to i32
  %26 = and i32 %25, 192
  %27 = icmp eq i32 %26, 128
  br i1 %27, label %29, label %28

28:                                               ; preds = %19
  tail call void @abort() #22
  unreachable

29:                                               ; preds = %19
  %30 = shl i64 %20, 6
  %31 = and i32 %25, 63
  %32 = zext nneg i32 %31 to i64
  %33 = or disjoint i64 %30, %32
  %34 = add nuw i32 %21, 1
  %35 = icmp eq i32 %34, %14
  br i1 %35, label %36, label %19, !llvm.loop !315

36:                                               ; preds = %29, %13
  %37 = phi i64 [ %17, %13 ], [ %33, %29 ]
  %38 = getelementptr inbounds i8, ptr %0, i64 1
  store i8 92, ptr %0, align 1, !tbaa !57
  %39 = getelementptr inbounds i8, ptr %0, i64 2
  store i8 85, ptr %38, align 1, !tbaa !57
  br label %40

40:                                               ; preds = %36, %40
  %41 = phi i64 [ 7, %36 ], [ %49, %40 ]
  %42 = phi ptr [ %39, %36 ], [ %48, %40 ]
  %43 = shl nsw i64 %41, 2
  %44 = lshr i64 %37, %43
  %45 = and i64 %44, 15
  %46 = getelementptr inbounds [17 x i8], ptr @.str.103, i64 0, i64 %45
  %47 = load i8, ptr %46, align 1, !tbaa !57
  %48 = getelementptr inbounds i8, ptr %42, i64 1
  store i8 %47, ptr %42, align 1, !tbaa !57
  %49 = add nsw i64 %41, -1
  %50 = icmp eq i64 %41, 0
  br i1 %50, label %51, label %40, !llvm.loop !316

51:                                               ; preds = %40
  %52 = zext nneg i32 %14 to i64
  ret i64 %52
}

; Function Attrs: cold nounwind uwtable
define dso_local noundef ptr @cpp_token_as_text(ptr noundef %0, ptr nocapture noundef readonly %1) local_unnamed_addr #7 !prof !50 {
  %3 = getelementptr inbounds %struct.cpp_token, ptr %1, i64 0, i32 1
  %4 = load i8, ptr %3, align 4
  %5 = zext i8 %4 to i64
  %6 = getelementptr inbounds [73 x %struct.token_spelling], ptr @token_spellings, i64 0, i64 %5
  %7 = load i32, ptr %6, align 16, !tbaa !216
  switch i32 %7, label %17 [
    i32 2, label %8
    i32 1, label %11
  ]

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.cpp_token, ptr %1, i64 0, i32 3
  %10 = load i32, ptr %9, align 8, !tbaa !57
  br label %17

11:                                               ; preds = %2
  %12 = getelementptr inbounds %struct.cpp_token, ptr %1, i64 0, i32 3
  %13 = load ptr, ptr %12, align 8, !tbaa !57
  %14 = getelementptr inbounds %struct.ht_identifier, ptr %13, i64 0, i32 1
  %15 = load i32, ptr %14, align 8, !tbaa !218
  %16 = mul i32 %15, 10
  br label %17

17:                                               ; preds = %2, %8, %11
  %18 = phi i32 [ %16, %11 ], [ %10, %8 ], [ 6, %2 ]
  %19 = add i32 %18, 1
  %20 = zext i32 %19 to i64
  %21 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 6
  %22 = load ptr, ptr %21, align 8, !tbaa !202
  %23 = getelementptr inbounds %struct._cpp_buff, ptr %22, i64 0, i32 2
  %24 = load ptr, ptr %23, align 8, !tbaa !203
  %25 = getelementptr inbounds %struct._cpp_buff, ptr %22, i64 0, i32 3
  %26 = load ptr, ptr %25, align 8, !tbaa !205
  %27 = ptrtoint ptr %26 to i64
  %28 = ptrtoint ptr %24 to i64
  %29 = sub i64 %27, %28
  %30 = icmp ult i64 %29, %20
  br i1 %30, label %31, label %36

31:                                               ; preds = %17
  %32 = tail call ptr @_cpp_get_buff(ptr noundef %0, i64 noundef %20)
  %33 = load ptr, ptr %21, align 8, !tbaa !202
  store ptr %33, ptr %32, align 8, !tbaa !209
  store ptr %32, ptr %21, align 8, !tbaa !202
  %34 = getelementptr inbounds %struct._cpp_buff, ptr %32, i64 0, i32 2
  %35 = load ptr, ptr %34, align 8, !tbaa !203
  br label %36

36:                                               ; preds = %17, %31
  %37 = phi ptr [ %32, %31 ], [ %22, %17 ]
  %38 = phi ptr [ %35, %31 ], [ %24, %17 ]
  %39 = getelementptr inbounds i8, ptr %38, i64 %20
  %40 = getelementptr inbounds %struct._cpp_buff, ptr %37, i64 0, i32 2
  store ptr %39, ptr %40, align 8, !tbaa !203
  %41 = tail call ptr @cpp_spell_token(ptr noundef %0, ptr noundef %1, ptr noundef %38, i8 noundef zeroext 0)
  store i8 0, ptr %41, align 1, !tbaa !57
  ret ptr %38
}

; Function Attrs: cold nounwind uwtable
define dso_local ptr @_cpp_unaligned_alloc(ptr nocapture noundef %0, i64 noundef %1) local_unnamed_addr #7 !prof !50 {
  %3 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 6
  %4 = load ptr, ptr %3, align 8, !tbaa !202
  %5 = getelementptr inbounds %struct._cpp_buff, ptr %4, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !203
  %7 = getelementptr inbounds %struct._cpp_buff, ptr %4, i64 0, i32 3
  %8 = load ptr, ptr %7, align 8, !tbaa !205
  %9 = ptrtoint ptr %8 to i64
  %10 = ptrtoint ptr %6 to i64
  %11 = sub i64 %9, %10
  %12 = icmp ult i64 %11, %1
  br i1 %12, label %13, label %18

13:                                               ; preds = %2
  %14 = tail call ptr @_cpp_get_buff(ptr noundef %0, i64 noundef %1)
  %15 = load ptr, ptr %3, align 8, !tbaa !202
  store ptr %15, ptr %14, align 8, !tbaa !209
  store ptr %14, ptr %3, align 8, !tbaa !202
  %16 = getelementptr inbounds %struct._cpp_buff, ptr %14, i64 0, i32 2
  %17 = load ptr, ptr %16, align 8, !tbaa !203
  br label %18

18:                                               ; preds = %13, %2
  %19 = phi ptr [ %14, %13 ], [ %4, %2 ]
  %20 = phi ptr [ %17, %13 ], [ %6, %2 ]
  %21 = getelementptr inbounds i8, ptr %20, i64 %1
  %22 = getelementptr inbounds %struct._cpp_buff, ptr %19, i64 0, i32 2
  store ptr %21, ptr %22, align 8, !tbaa !203
  ret ptr %20
}

; Function Attrs: cold nounwind uwtable
define dso_local ptr @cpp_type2name(i32 noundef %0, i8 noundef zeroext %1) local_unnamed_addr #7 !prof !50 {
  %3 = zext i8 %1 to i32
  %4 = and i32 %3, 2
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %11, label %6

6:                                                ; preds = %2
  %7 = add nsw i32 %0, -37
  %8 = sext i32 %7 to i64
  %9 = getelementptr inbounds [6 x ptr], ptr @digraph_spellings, i64 0, i64 %8
  %10 = load ptr, ptr %9, align 8, !tbaa !51
  br label %20

11:                                               ; preds = %2
  %12 = and i32 %3, 16
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %16, label %14

14:                                               ; preds = %11
  %15 = tail call ptr @cpp_named_operator2name(i32 noundef %0) #20
  br label %20

16:                                               ; preds = %11
  %17 = zext i32 %0 to i64
  %18 = getelementptr inbounds [73 x %struct.token_spelling], ptr @token_spellings, i64 0, i64 %17, i32 1
  %19 = load ptr, ptr %18, align 8, !tbaa !313
  br label %20

20:                                               ; preds = %16, %14, %6
  %21 = phi ptr [ %10, %6 ], [ %15, %14 ], [ %19, %16 ]
  ret ptr %21
}

declare ptr @cpp_named_operator2name(i32 noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind uwtable
define dso_local void @cpp_output_token(ptr nocapture noundef readonly %0, ptr nocapture noundef %1) local_unnamed_addr #7 !prof !50 {
  %3 = alloca [10 x i8], align 1
  %4 = getelementptr inbounds %struct.cpp_token, ptr %0, i64 0, i32 1
  %5 = load i8, ptr %4, align 4
  %6 = zext i8 %5 to i64
  %7 = getelementptr inbounds [73 x %struct.token_spelling], ptr @token_spellings, i64 0, i64 %6
  %8 = load i32, ptr %7, align 16, !tbaa !216
  switch i32 %8, label %74 [
    i32 0, label %9
    i32 1, label %35
    i32 2, label %67
  ]

9:                                                ; preds = %2
  %10 = getelementptr inbounds %struct.cpp_token, ptr %0, i64 0, i32 2
  %11 = load i16, ptr %10, align 2, !tbaa !154
  %12 = zext i16 %11 to i32
  %13 = and i32 %12, 2
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %18, label %15

15:                                               ; preds = %9
  %16 = add nsw i64 %6, -37
  %17 = getelementptr inbounds [6 x ptr], ptr @digraph_spellings, i64 0, i64 %16
  br label %23

18:                                               ; preds = %9
  %19 = and i32 %12, 16
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %35

21:                                               ; preds = %18
  %22 = getelementptr inbounds [73 x %struct.token_spelling], ptr @token_spellings, i64 0, i64 %6, i32 1
  br label %23

23:                                               ; preds = %21, %15
  %24 = phi ptr [ %17, %15 ], [ %22, %21 ]
  %25 = load ptr, ptr %24, align 8, !tbaa !51
  %26 = load i8, ptr %25, align 1, !tbaa !57
  br label %27

27:                                               ; preds = %27, %23
  %28 = phi i8 [ %26, %23 ], [ %33, %27 ]
  %29 = phi ptr [ %25, %23 ], [ %32, %27 ]
  %30 = zext i8 %28 to i32
  %31 = tail call i32 @putc(i32 noundef %30, ptr noundef %1)
  %32 = getelementptr inbounds i8, ptr %29, i64 1
  %33 = load i8, ptr %32, align 1, !tbaa !57
  %34 = icmp eq i8 %33, 0
  br i1 %34, label %74, label %27, !llvm.loop !317

35:                                               ; preds = %18, %2
  %36 = getelementptr inbounds %struct.cpp_token, ptr %0, i64 0, i32 3
  %37 = load ptr, ptr %36, align 8, !tbaa !57
  %38 = load ptr, ptr %37, align 8, !tbaa !58
  %39 = getelementptr inbounds %struct.ht_identifier, ptr %37, i64 0, i32 1
  %40 = load i32, ptr %39, align 8, !tbaa !218
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %74, label %42

42:                                               ; preds = %35, %59
  %43 = phi ptr [ %62, %59 ], [ %37, %35 ]
  %44 = phi i64 [ %61, %59 ], [ 0, %35 ]
  %45 = getelementptr inbounds i8, ptr %38, i64 %44
  %46 = load i8, ptr %45, align 1, !tbaa !57
  %47 = icmp sgt i8 %46, -1
  br i1 %47, label %53, label %48

48:                                               ; preds = %42
  call void @llvm.lifetime.start.p0(i64 10, ptr nonnull %3) #20
  %49 = call fastcc i64 @utf8_to_ucn(ptr noundef nonnull %3, ptr noundef nonnull %45), !range !311
  %50 = add i64 %44, -1
  %51 = add i64 %50, %49
  %52 = call i64 @fwrite(ptr noundef nonnull %3, i64 noundef 1, i64 noundef 10, ptr noundef %1)
  call void @llvm.lifetime.end.p0(i64 10, ptr nonnull %3) #20
  br label %59

53:                                               ; preds = %42
  %54 = load ptr, ptr %43, align 8, !tbaa !58
  %55 = getelementptr inbounds i8, ptr %54, i64 %44
  %56 = load i8, ptr %55, align 1, !tbaa !57
  %57 = zext i8 %56 to i32
  %58 = tail call i32 @fputc(i32 noundef %57, ptr noundef %1)
  br label %59

59:                                               ; preds = %48, %53
  %60 = phi i64 [ %51, %48 ], [ %44, %53 ]
  %61 = add i64 %60, 1
  %62 = load ptr, ptr %36, align 8, !tbaa !57
  %63 = getelementptr inbounds %struct.ht_identifier, ptr %62, i64 0, i32 1
  %64 = load i32, ptr %63, align 8, !tbaa !218
  %65 = zext i32 %64 to i64
  %66 = icmp ult i64 %61, %65
  br i1 %66, label %42, label %74, !llvm.loop !318

67:                                               ; preds = %2
  %68 = getelementptr inbounds %struct.cpp_token, ptr %0, i64 0, i32 3
  %69 = getelementptr inbounds %struct.cpp_token, ptr %0, i64 0, i32 3, i32 0, i32 1
  %70 = load ptr, ptr %69, align 8, !tbaa !57
  %71 = load i32, ptr %68, align 8, !tbaa !57
  %72 = zext i32 %71 to i64
  %73 = tail call i64 @fwrite(ptr noundef %70, i64 noundef 1, i64 noundef %72, ptr noundef %1)
  br label %74

74:                                               ; preds = %59, %27, %35, %2, %67
  ret void
}

; Function Attrs: nofree nounwind
declare noundef i32 @putc(i32 noundef, ptr nocapture noundef) local_unnamed_addr #12

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr nocapture noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #12

; Function Attrs: nofree nounwind
declare noundef i32 @fputc(i32 noundef, ptr nocapture noundef) local_unnamed_addr #12

; Function Attrs: cold mustprogress nofree nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @_cpp_equiv_tokens(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) local_unnamed_addr #2 !prof !319 {
  %3 = getelementptr inbounds %struct.cpp_token, ptr %0, i64 0, i32 1
  %4 = load i8, ptr %3, align 4
  %5 = getelementptr inbounds %struct.cpp_token, ptr %1, i64 0, i32 1
  %6 = load i8, ptr %5, align 4
  %7 = icmp eq i8 %4, %6
  br i1 %7, label %8, label %54, !prof !320

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.cpp_token, ptr %0, i64 0, i32 2
  %10 = load i16, ptr %9, align 2, !tbaa !154
  %11 = getelementptr inbounds %struct.cpp_token, ptr %1, i64 0, i32 2
  %12 = load i16, ptr %11, align 2, !tbaa !154
  %13 = icmp eq i16 %10, %12
  br i1 %13, label %14, label %54, !prof !320

14:                                               ; preds = %8
  %15 = zext i8 %4 to i64
  %16 = getelementptr inbounds [73 x %struct.token_spelling], ptr @token_spellings, i64 0, i64 %15
  %17 = load i32, ptr %16, align 16, !tbaa !216
  switch i32 %17, label %18 [
    i32 2, label %40
    i32 3, label %26
    i32 1, label %34
  ], !prof !321

18:                                               ; preds = %14
  %19 = icmp eq i8 %4, 38
  br i1 %19, label %20, label %54

20:                                               ; preds = %18
  %21 = getelementptr inbounds %struct.cpp_token, ptr %0, i64 0, i32 3
  %22 = load i32, ptr %21, align 8, !tbaa !57
  %23 = getelementptr inbounds %struct.cpp_token, ptr %1, i64 0, i32 3
  %24 = load i32, ptr %23, align 8, !tbaa !57
  %25 = icmp eq i32 %22, %24
  br label %54

26:                                               ; preds = %14
  %27 = icmp eq i8 %4, 69
  br i1 %27, label %28, label %54

28:                                               ; preds = %26
  %29 = getelementptr inbounds %struct.cpp_token, ptr %0, i64 0, i32 3
  %30 = load i32, ptr %29, align 8, !tbaa !57
  %31 = getelementptr inbounds %struct.cpp_token, ptr %1, i64 0, i32 3
  %32 = load i32, ptr %31, align 8, !tbaa !57
  %33 = icmp eq i32 %30, %32
  br label %54

34:                                               ; preds = %14
  %35 = getelementptr inbounds %struct.cpp_token, ptr %0, i64 0, i32 3
  %36 = load ptr, ptr %35, align 8, !tbaa !57
  %37 = getelementptr inbounds %struct.cpp_token, ptr %1, i64 0, i32 3
  %38 = load ptr, ptr %37, align 8, !tbaa !57
  %39 = icmp eq ptr %36, %38
  br label %54

40:                                               ; preds = %14
  %41 = getelementptr inbounds %struct.cpp_token, ptr %0, i64 0, i32 3
  %42 = load i32, ptr %41, align 8, !tbaa !57
  %43 = getelementptr inbounds %struct.cpp_token, ptr %1, i64 0, i32 3
  %44 = load i32, ptr %43, align 8, !tbaa !57
  %45 = icmp eq i32 %42, %44
  br i1 %45, label %46, label %54

46:                                               ; preds = %40
  %47 = getelementptr inbounds %struct.cpp_token, ptr %0, i64 0, i32 3, i32 0, i32 1
  %48 = load ptr, ptr %47, align 8, !tbaa !57
  %49 = getelementptr inbounds %struct.cpp_token, ptr %1, i64 0, i32 3, i32 0, i32 1
  %50 = load ptr, ptr %49, align 8, !tbaa !57
  %51 = zext i32 %42 to i64
  %52 = tail call i32 @bcmp(ptr %48, ptr %50, i64 %51)
  %53 = icmp eq i32 %52, 0
  br label %54

54:                                               ; preds = %2, %8, %40, %46, %26, %28, %18, %20, %34
  %55 = phi i1 [ %39, %34 ], [ true, %18 ], [ %25, %20 ], [ true, %26 ], [ %33, %28 ], [ false, %40 ], [ %53, %46 ], [ false, %8 ], [ false, %2 ]
  %56 = zext i1 %55 to i32
  ret i32 %56
}

; Function Attrs: cold nofree norecurse nosync nounwind memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @cpp_avoid_paste(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) local_unnamed_addr #13 !prof !50 {
  %4 = getelementptr inbounds %struct.cpp_token, ptr %1, i64 0, i32 1
  %5 = load i8, ptr %4, align 4
  %6 = zext i8 %5 to i32
  %7 = getelementptr inbounds %struct.cpp_token, ptr %2, i64 0, i32 1
  %8 = load i8, ptr %7, align 4
  %9 = zext i8 %8 to i32
  %10 = getelementptr inbounds %struct.cpp_token, ptr %1, i64 0, i32 2
  %11 = load i16, ptr %10, align 2, !tbaa !154
  %12 = and i16 %11, 16
  %13 = icmp eq i16 %12, 0
  %14 = select i1 %13, i32 %6, i32 53
  %15 = getelementptr inbounds %struct.cpp_token, ptr %2, i64 0, i32 2
  %16 = load i16, ptr %15, align 2, !tbaa !154
  %17 = and i16 %16, 16
  %18 = icmp eq i16 %17, 0
  %19 = select i1 %18, i32 %9, i32 53
  %20 = and i16 %16, 2
  %21 = icmp eq i16 %20, 0
  br i1 %21, label %26, label %22

22:                                               ; preds = %3
  %23 = add nsw i32 %19, -37
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds [6 x ptr], ptr @digraph_spellings, i64 0, i64 %24
  br label %33

26:                                               ; preds = %3
  %27 = zext nneg i32 %19 to i64
  %28 = getelementptr inbounds [73 x %struct.token_spelling], ptr @token_spellings, i64 0, i64 %27
  %29 = load i32, ptr %28, align 16, !tbaa !216
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %31, label %38

31:                                               ; preds = %26
  %32 = getelementptr inbounds [73 x %struct.token_spelling], ptr @token_spellings, i64 0, i64 %27, i32 1
  br label %33

33:                                               ; preds = %22, %31
  %34 = phi ptr [ %32, %31 ], [ %25, %22 ]
  %35 = load ptr, ptr %34, align 8, !tbaa !51
  %36 = load i8, ptr %35, align 1, !tbaa !57
  %37 = zext i8 %36 to i32
  br label %38

38:                                               ; preds = %33, %26
  %39 = phi i32 [ -1, %26 ], [ %37, %33 ]
  %40 = icmp ult i32 %14, 14
  %41 = icmp eq i32 %39, 61
  %42 = select i1 %40, i1 %41, i1 false
  br i1 %42, label %145, label %43

43:                                               ; preds = %38
  %44 = trunc i32 %14 to i8
  switch i8 %44, label %145 [
    i8 2, label %45
    i8 3, label %47
    i8 4, label %49
    i8 5, label %51
    i8 7, label %55
    i8 8, label %59
    i8 9, label %62
    i8 10, label %64
    i8 18, label %66
    i8 47, label %69
    i8 48, label %71
    i8 37, label %74
    i8 53, label %78
    i8 55, label %115
    i8 60, label %124
  ]

45:                                               ; preds = %43
  %46 = icmp eq i32 %39, 62
  br label %145

47:                                               ; preds = %43
  %48 = icmp ult i32 %39, 61
  br i1 %48, label %140, label %145

49:                                               ; preds = %43
  %50 = icmp eq i32 %39, 43
  br label %145

51:                                               ; preds = %43
  %52 = icmp eq i32 %39, 45
  %53 = icmp eq i32 %39, 62
  %54 = or i1 %52, %53
  br label %145

55:                                               ; preds = %43
  %56 = icmp eq i32 %39, 47
  %57 = icmp eq i32 %39, 42
  %58 = or i1 %56, %57
  br label %145

59:                                               ; preds = %43
  %60 = and i32 %39, -5
  %61 = icmp eq i32 %60, 58
  br label %145

62:                                               ; preds = %43
  %63 = icmp eq i32 %39, 38
  br label %145

64:                                               ; preds = %43
  %65 = icmp eq i32 %39, 124
  br label %145

66:                                               ; preds = %43
  %67 = and i32 %39, -5
  %68 = icmp eq i32 %67, 58
  br label %145

69:                                               ; preds = %43
  %70 = icmp eq i32 %39, 42
  br label %145

71:                                               ; preds = %43
  switch i32 %39, label %72 [
    i32 46, label %145
    i32 37, label %145
  ]

72:                                               ; preds = %71
  %73 = icmp eq i32 %19, 55
  br label %145

74:                                               ; preds = %43
  %75 = icmp eq i32 %39, 35
  %76 = icmp eq i32 %39, 37
  %77 = or i1 %75, %76
  br label %145

78:                                               ; preds = %43
  %79 = trunc i32 %19 to i8
  switch i8 %79, label %113 [
    i8 55, label %80
    i8 53, label %145
    i8 56, label %145
  ]

80:                                               ; preds = %78
  %81 = getelementptr inbounds %struct.cpp_token, ptr %2, i64 0, i32 3
  %82 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 53, i32 24
  %83 = load i32, ptr %81, align 8, !tbaa !200
  %84 = icmp eq i32 %83, 0
  br i1 %84, label %109, label %85

85:                                               ; preds = %80
  %86 = getelementptr inbounds %struct.cpp_token, ptr %2, i64 0, i32 3, i32 0, i32 1
  %87 = load ptr, ptr %86, align 8, !tbaa !213
  %88 = zext i32 %83 to i64
  %89 = zext i32 %83 to i64
  br label %90

90:                                               ; preds = %85, %105
  %91 = phi i64 [ 0, %85 ], [ %106, %105 ]
  %92 = phi i1 [ %84, %85 ], [ %107, %105 ]
  %93 = getelementptr inbounds i8, ptr %87, i64 %91
  %94 = load i8, ptr %93, align 1, !tbaa !57
  %95 = zext i8 %94 to i64
  %96 = getelementptr inbounds [256 x i16], ptr @_sch_istable, i64 0, i64 %95
  %97 = load i16, ptr %96, align 2, !tbaa !93
  %98 = and i16 %97, 516
  %99 = icmp eq i16 %98, 0
  br i1 %99, label %100, label %105

100:                                              ; preds = %90
  %101 = icmp eq i8 %94, 36
  br i1 %101, label %102, label %109

102:                                              ; preds = %100
  %103 = load i8, ptr %82, align 2, !tbaa !196
  %104 = icmp eq i8 %103, 0
  br i1 %104, label %109, label %105

105:                                              ; preds = %102, %90
  %106 = add nuw nsw i64 %91, 1
  %107 = icmp uge i64 %106, %88
  %108 = icmp eq i64 %106, %89
  br i1 %108, label %109, label %90, !llvm.loop !322

109:                                              ; preds = %102, %100, %105, %80
  %110 = phi i1 [ %84, %80 ], [ %92, %102 ], [ %92, %100 ], [ %107, %105 ]
  %111 = icmp eq i32 %19, 56
  %112 = select i1 %110, i1 true, i1 %111
  br i1 %112, label %145, label %113

113:                                              ; preds = %109, %78
  %114 = icmp eq i32 %19, 61
  br label %145

115:                                              ; preds = %43
  %116 = and i32 %19, 253
  %117 = icmp eq i32 %116, 53
  %118 = icmp eq i32 %39, 46
  %119 = select i1 %117, i1 true, i1 %118
  %120 = icmp eq i32 %39, 43
  %121 = select i1 %119, i1 true, i1 %120
  %122 = icmp eq i32 %39, 45
  %123 = select i1 %121, i1 true, i1 %122
  br label %145

124:                                              ; preds = %43
  %125 = getelementptr inbounds %struct.cpp_token, ptr %1, i64 0, i32 3, i32 0, i32 1
  %126 = load ptr, ptr %125, align 8, !tbaa !57
  %127 = load i8, ptr %126, align 1, !tbaa !57
  %128 = icmp eq i8 %127, 92
  %129 = icmp eq i32 %19, 53
  %130 = select i1 %128, i1 %129, i1 false
  br i1 %130, label %145, label %131

131:                                              ; preds = %124
  %132 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 53, i32 4
  %133 = load i8, ptr %132, align 2, !tbaa !323
  %134 = icmp ne i8 %133, 0
  %135 = icmp eq i8 %127, 64
  %136 = and i1 %135, %134
  br i1 %136, label %137, label %145

137:                                              ; preds = %131
  %138 = icmp eq i32 %19, 61
  %139 = or i1 %129, %138
  br label %145

140:                                              ; preds = %47
  %141 = zext nneg i32 %39 to i61
  %142 = lshr i61 -864690991016181760, %141
  %143 = and i61 %142, 1
  %144 = icmp ne i61 %143, 0
  br label %145

145:                                              ; preds = %47, %140, %78, %71, %43, %124, %137, %131, %109, %113, %78, %72, %71, %38, %115, %74, %69, %66, %64, %62, %59, %55, %51, %49, %45
  %146 = phi i1 [ %123, %115 ], [ %77, %74 ], [ %70, %69 ], [ %68, %66 ], [ %65, %64 ], [ %63, %62 ], [ %61, %59 ], [ %58, %55 ], [ %54, %51 ], [ %50, %49 ], [ %46, %45 ], [ true, %38 ], [ %73, %72 ], [ true, %71 ], [ true, %109 ], [ %114, %113 ], [ true, %78 ], [ true, %124 ], [ false, %131 ], [ %139, %137 ], [ false, %43 ], [ true, %71 ], [ true, %78 ], [ %144, %140 ], [ false, %47 ]
  %147 = zext i1 %146 to i32
  ret i32 %147
}

; Function Attrs: cold nounwind uwtable
define dso_local void @cpp_output_line(ptr noundef %0, ptr nocapture noundef %1) local_unnamed_addr #7 !prof !50 {
  %3 = tail call ptr @cpp_get_token(ptr noundef %0) #20
  %4 = getelementptr inbounds %struct.cpp_token, ptr %3, i64 0, i32 1
  %5 = load i8, ptr %4, align 4
  %6 = icmp eq i8 %5, 22
  br i1 %6, label %20, label %7

7:                                                ; preds = %2, %16
  %8 = phi ptr [ %9, %16 ], [ %3, %2 ]
  tail call void @cpp_output_token(ptr noundef %8, ptr noundef %1)
  %9 = tail call ptr @cpp_get_token(ptr noundef %0) #20
  %10 = getelementptr inbounds %struct.cpp_token, ptr %9, i64 0, i32 2
  %11 = load i16, ptr %10, align 2, !tbaa !154
  %12 = and i16 %11, 1
  %13 = icmp eq i16 %12, 0
  br i1 %13, label %16, label %14

14:                                               ; preds = %7
  %15 = tail call i32 @putc(i32 noundef 32, ptr noundef %1)
  br label %16

16:                                               ; preds = %14, %7
  %17 = getelementptr inbounds %struct.cpp_token, ptr %9, i64 0, i32 1
  %18 = load i8, ptr %17, align 4
  %19 = icmp eq i8 %18, 22
  br i1 %19, label %20, label %7, !llvm.loop !324

20:                                               ; preds = %16, %2
  %21 = tail call i32 @putc(i32 noundef 10, ptr noundef %1)
  ret void
}

declare ptr @cpp_get_token(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind uwtable
define dso_local ptr @cpp_output_line_to_string(ptr noundef %0, ptr noundef %1) local_unnamed_addr #7 !prof !50 {
  %3 = icmp eq ptr %1, null
  br i1 %3, label %7, label %4

4:                                                ; preds = %2
  %5 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #21
  %6 = trunc i64 %5 to i32
  br label %7

7:                                                ; preds = %2, %4
  %8 = phi i32 [ %6, %4 ], [ 0, %2 ]
  %9 = add i32 %8, 120
  %10 = zext i32 %9 to i64
  %11 = tail call ptr @xmalloc(i64 noundef %10) #20
  br i1 %3, label %15, label %12

12:                                               ; preds = %7
  %13 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %11, ptr noundef nonnull dereferenceable(1) @.str.10, ptr noundef nonnull %1) #20
  %14 = add i32 %8, 2
  br label %15

15:                                               ; preds = %12, %7
  %16 = phi i32 [ %14, %12 ], [ %8, %7 ]
  %17 = tail call ptr @cpp_get_token(ptr noundef %0) #20
  %18 = getelementptr inbounds %struct.cpp_token, ptr %17, i64 0, i32 1
  %19 = load i8, ptr %18, align 4
  %20 = icmp eq i8 %19, 22
  br i1 %20, label %73, label %21

21:                                               ; preds = %15, %68
  %22 = phi i8 [ %71, %68 ], [ %19, %15 ]
  %23 = phi ptr [ %59, %68 ], [ %17, %15 ]
  %24 = phi i32 [ %69, %68 ], [ %16, %15 ]
  %25 = phi ptr [ %51, %68 ], [ %11, %15 ]
  %26 = phi i32 [ %50, %68 ], [ %9, %15 ]
  %27 = zext i8 %22 to i64
  %28 = getelementptr inbounds [73 x %struct.token_spelling], ptr @token_spellings, i64 0, i64 %27
  %29 = load i32, ptr %28, align 16, !tbaa !216
  switch i32 %29, label %39 [
    i32 2, label %30
    i32 1, label %33
  ]

30:                                               ; preds = %21
  %31 = getelementptr inbounds %struct.cpp_token, ptr %23, i64 0, i32 3
  %32 = load i32, ptr %31, align 8, !tbaa !57
  br label %39

33:                                               ; preds = %21
  %34 = getelementptr inbounds %struct.cpp_token, ptr %23, i64 0, i32 3
  %35 = load ptr, ptr %34, align 8, !tbaa !57
  %36 = getelementptr inbounds %struct.ht_identifier, ptr %35, i64 0, i32 1
  %37 = load i32, ptr %36, align 8, !tbaa !218
  %38 = mul i32 %37, 10
  br label %39

39:                                               ; preds = %21, %30, %33
  %40 = phi i32 [ %38, %33 ], [ %32, %30 ], [ 6, %21 ]
  %41 = add i32 %24, 2
  %42 = add i32 %41, %40
  %43 = icmp ugt i32 %42, %26
  br i1 %43, label %44, label %49

44:                                               ; preds = %39
  %45 = shl i32 %26, 1
  %46 = tail call i32 @llvm.umax.i32(i32 %42, i32 %45)
  %47 = zext i32 %46 to i64
  %48 = tail call ptr @xrealloc(ptr noundef %25, i64 noundef %47) #20
  br label %49

49:                                               ; preds = %44, %39
  %50 = phi i32 [ %46, %44 ], [ %26, %39 ]
  %51 = phi ptr [ %48, %44 ], [ %25, %39 ]
  %52 = zext i32 %24 to i64
  %53 = getelementptr inbounds i8, ptr %51, i64 %52
  %54 = tail call ptr @cpp_spell_token(ptr noundef %0, ptr noundef %23, ptr noundef %53, i8 noundef zeroext 0)
  %55 = ptrtoint ptr %54 to i64
  %56 = ptrtoint ptr %51 to i64
  %57 = sub i64 %55, %56
  %58 = trunc i64 %57 to i32
  %59 = tail call ptr @cpp_get_token(ptr noundef %0) #20
  %60 = getelementptr inbounds %struct.cpp_token, ptr %59, i64 0, i32 2
  %61 = load i16, ptr %60, align 2, !tbaa !154
  %62 = and i16 %61, 1
  %63 = icmp eq i16 %62, 0
  br i1 %63, label %68, label %64

64:                                               ; preds = %49
  %65 = add i32 %58, 1
  %66 = and i64 %57, 4294967295
  %67 = getelementptr inbounds i8, ptr %51, i64 %66
  store i8 32, ptr %67, align 1, !tbaa !57
  br label %68

68:                                               ; preds = %64, %49
  %69 = phi i32 [ %65, %64 ], [ %58, %49 ]
  %70 = getelementptr inbounds %struct.cpp_token, ptr %59, i64 0, i32 1
  %71 = load i8, ptr %70, align 4
  %72 = icmp eq i8 %71, 22
  br i1 %72, label %73, label %21, !llvm.loop !325

73:                                               ; preds = %68, %15
  %74 = phi ptr [ %11, %15 ], [ %51, %68 ]
  %75 = phi i32 [ %16, %15 ], [ %69, %68 ]
  %76 = zext i32 %75 to i64
  %77 = getelementptr inbounds i8, ptr %74, i64 %76
  store i8 0, ptr %77, align 1, !tbaa !57
  ret ptr %74
}

; Function Attrs: nofree nounwind
declare noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #12

declare ptr @xrealloc(ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: cold nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @_cpp_release_buff(ptr nocapture noundef %0, ptr noundef %1) local_unnamed_addr #14 !prof !50 {
  br label %3

3:                                                ; preds = %3, %2
  %4 = phi ptr [ %1, %2 ], [ %5, %3 ]
  %5 = load ptr, ptr %4, align 8, !tbaa !209
  %6 = icmp eq ptr %5, null
  br i1 %6, label %7, label %3, !llvm.loop !287

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 7
  %9 = load ptr, ptr %8, align 8, !tbaa !288
  store ptr %9, ptr %4, align 8, !tbaa !209
  store ptr %1, ptr %8, align 8, !tbaa !288
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local ptr @_cpp_get_buff(ptr nocapture noundef %0, i64 noundef %1) local_unnamed_addr #5 !prof !326 {
  %3 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 7
  br label %4

4:                                                ; preds = %39, %2
  %5 = phi ptr [ undef, %2 ], [ %36, %39 ]
  %6 = phi ptr [ %3, %2 ], [ %40, %39 ]
  %7 = phi ptr [ undef, %2 ], [ %37, %39 ]
  %8 = load ptr, ptr %6, align 8, !tbaa !51
  %9 = icmp eq ptr %8, null
  br i1 %9, label %10, label %20, !prof !207

10:                                               ; preds = %4
  %11 = tail call i64 @llvm.umax.i64(i64 %1, i64 8000)
  %12 = add i64 %11, 7
  %13 = and i64 %12, -8
  %14 = add i64 %13, 32
  %15 = tail call ptr @xmalloc(i64 noundef %14) #20
  %16 = getelementptr inbounds i8, ptr %15, i64 %13
  %17 = getelementptr inbounds %struct._cpp_buff, ptr %16, i64 0, i32 1
  store ptr %15, ptr %17, align 8, !tbaa !208
  %18 = getelementptr inbounds %struct._cpp_buff, ptr %16, i64 0, i32 2
  store ptr %15, ptr %18, align 8, !tbaa !203
  %19 = getelementptr inbounds %struct._cpp_buff, ptr %16, i64 0, i32 3
  store ptr %16, ptr %19, align 8, !tbaa !205
  store ptr null, ptr %16, align 8, !tbaa !209
  br label %35

20:                                               ; preds = %4
  %21 = mul i64 %1, 3
  %22 = lshr i64 %21, 1
  %23 = add nuw i64 %22, 8000
  %24 = getelementptr inbounds %struct._cpp_buff, ptr %8, i64 0, i32 3
  %25 = load ptr, ptr %24, align 8, !tbaa !205
  %26 = getelementptr inbounds %struct._cpp_buff, ptr %8, i64 0, i32 1
  %27 = load ptr, ptr %26, align 8, !tbaa !208
  %28 = ptrtoint ptr %25 to i64
  %29 = ptrtoint ptr %27 to i64
  %30 = sub i64 %28, %29
  %31 = icmp ult i64 %30, %1
  %32 = icmp ugt i64 %30, %23
  %33 = select i1 %31, i1 true, i1 %32
  %34 = select i1 %33, i32 0, i32 2
  br label %35

35:                                               ; preds = %20, %10
  %36 = phi ptr [ %5, %10 ], [ %8, %20 ]
  %37 = phi ptr [ %16, %10 ], [ %7, %20 ]
  %38 = phi i32 [ 1, %10 ], [ %34, %20 ]
  switch i32 %38, label %46 [
    i32 0, label %39
    i32 2, label %41
  ], !prof !210

39:                                               ; preds = %35
  %40 = load ptr, ptr %6, align 8, !tbaa !51
  br label %4, !llvm.loop !211

41:                                               ; preds = %35
  %42 = load ptr, ptr %36, align 8, !tbaa !209
  store ptr %42, ptr %6, align 8, !tbaa !51
  store ptr null, ptr %36, align 8, !tbaa !209
  %43 = getelementptr inbounds %struct._cpp_buff, ptr %36, i64 0, i32 1
  %44 = load ptr, ptr %43, align 8, !tbaa !208
  %45 = getelementptr inbounds %struct._cpp_buff, ptr %36, i64 0, i32 2
  store ptr %44, ptr %45, align 8, !tbaa !203
  br label %46

46:                                               ; preds = %35, %41
  %47 = phi ptr [ %36, %41 ], [ %37, %35 ]
  ret ptr %47
}

; Function Attrs: cold nounwind uwtable
define dso_local ptr @_cpp_append_extend_buff(ptr nocapture noundef %0, ptr nocapture noundef %1, i64 noundef %2) local_unnamed_addr #7 !prof !50 {
  %4 = getelementptr inbounds %struct._cpp_buff, ptr %1, i64 0, i32 3
  %5 = load ptr, ptr %4, align 8, !tbaa !205
  %6 = getelementptr inbounds %struct._cpp_buff, ptr %1, i64 0, i32 2
  %7 = load ptr, ptr %6, align 8, !tbaa !203
  %8 = ptrtoint ptr %5 to i64
  %9 = ptrtoint ptr %7 to i64
  %10 = sub i64 %8, %9
  %11 = shl nsw i64 %10, 1
  %12 = add i64 %11, %2
  %13 = tail call ptr @_cpp_get_buff(ptr noundef %0, i64 noundef %12)
  store ptr %13, ptr %1, align 8, !tbaa !209
  %14 = getelementptr inbounds %struct._cpp_buff, ptr %13, i64 0, i32 1
  %15 = load ptr, ptr %14, align 8, !tbaa !208
  %16 = load ptr, ptr %6, align 8, !tbaa !203
  %17 = load ptr, ptr %4, align 8, !tbaa !205
  %18 = ptrtoint ptr %17 to i64
  %19 = ptrtoint ptr %16 to i64
  %20 = sub i64 %18, %19
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %15, ptr align 1 %16, i64 %20, i1 false)
  ret ptr %13
}

; Function Attrs: cold nounwind uwtable
define dso_local void @_cpp_extend_buff(ptr nocapture noundef %0, ptr nocapture noundef %1, i64 noundef %2) local_unnamed_addr #7 !prof !50 {
  %4 = load ptr, ptr %1, align 8, !tbaa !51
  %5 = getelementptr inbounds %struct._cpp_buff, ptr %4, i64 0, i32 3
  %6 = load ptr, ptr %5, align 8, !tbaa !205
  %7 = getelementptr inbounds %struct._cpp_buff, ptr %4, i64 0, i32 2
  %8 = load ptr, ptr %7, align 8, !tbaa !203
  %9 = ptrtoint ptr %6 to i64
  %10 = ptrtoint ptr %8 to i64
  %11 = sub i64 %9, %10
  %12 = shl nsw i64 %11, 1
  %13 = add i64 %12, %2
  %14 = tail call ptr @_cpp_get_buff(ptr noundef %0, i64 noundef %13)
  %15 = getelementptr inbounds %struct._cpp_buff, ptr %14, i64 0, i32 1
  %16 = load ptr, ptr %15, align 8, !tbaa !208
  %17 = load ptr, ptr %7, align 8, !tbaa !203
  %18 = load ptr, ptr %5, align 8, !tbaa !205
  %19 = ptrtoint ptr %18 to i64
  %20 = ptrtoint ptr %17 to i64
  %21 = sub i64 %19, %20
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %16, ptr align 1 %17, i64 %21, i1 false)
  store ptr %4, ptr %14, align 8, !tbaa !209
  store ptr %14, ptr %1, align 8, !tbaa !51
  ret void
}

; Function Attrs: cold nounwind uwtable
define dso_local void @_cpp_free_buff(ptr noundef readonly %0) local_unnamed_addr #7 !prof !50 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %9, label %3

3:                                                ; preds = %1, %3
  %4 = phi ptr [ %5, %3 ], [ %0, %1 ]
  %5 = load ptr, ptr %4, align 8, !tbaa !209
  %6 = getelementptr inbounds %struct._cpp_buff, ptr %4, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !208
  tail call void @free(ptr noundef %7) #20
  %8 = icmp eq ptr %5, null
  br i1 %8, label %9, label %3, !llvm.loop !327

9:                                                ; preds = %3, %1
  ret void
}

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr nocapture noundef) local_unnamed_addr #15

; Function Attrs: nounwind uwtable
define dso_local ptr @_cpp_aligned_alloc(ptr nocapture noundef %0, i64 noundef %1) local_unnamed_addr #5 !prof !328 {
  %3 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 5
  %4 = load ptr, ptr %3, align 8, !tbaa !329
  %5 = getelementptr inbounds %struct._cpp_buff, ptr %4, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !203
  %7 = getelementptr inbounds %struct._cpp_buff, ptr %4, i64 0, i32 3
  %8 = load ptr, ptr %7, align 8, !tbaa !205
  %9 = ptrtoint ptr %8 to i64
  %10 = ptrtoint ptr %6 to i64
  %11 = sub i64 %9, %10
  %12 = icmp ult i64 %11, %1
  br i1 %12, label %13, label %18, !prof !330

13:                                               ; preds = %2
  %14 = tail call ptr @_cpp_get_buff(ptr noundef %0, i64 noundef %1)
  %15 = load ptr, ptr %3, align 8, !tbaa !329
  store ptr %15, ptr %14, align 8, !tbaa !209
  store ptr %14, ptr %3, align 8, !tbaa !329
  %16 = getelementptr inbounds %struct._cpp_buff, ptr %14, i64 0, i32 2
  %17 = load ptr, ptr %16, align 8, !tbaa !203
  br label %18

18:                                               ; preds = %13, %2
  %19 = phi ptr [ %14, %13 ], [ %4, %2 ]
  %20 = phi ptr [ %17, %13 ], [ %6, %2 ]
  %21 = getelementptr inbounds i8, ptr %20, i64 %1
  %22 = getelementptr inbounds %struct._cpp_buff, ptr %19, i64 0, i32 2
  store ptr %21, ptr %22, align 8, !tbaa !203
  ret ptr %20
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local i32 @cpp_token_val_index(ptr nocapture noundef readonly %0) local_unnamed_addr #16 !prof !50 {
  %2 = getelementptr inbounds %struct.cpp_token, ptr %0, i64 0, i32 1
  %3 = load i8, ptr %2, align 4
  %4 = zext i8 %3 to i64
  %5 = getelementptr inbounds [73 x %struct.token_spelling], ptr @token_spellings, i64 0, i64 %4
  %6 = load i32, ptr %5, align 16, !tbaa !216
  switch i32 %6, label %14 [
    i32 1, label %19
    i32 2, label %7
    i32 0, label %8
    i32 3, label %11
  ]

7:                                                ; preds = %1
  br label %19

8:                                                ; preds = %1
  %9 = icmp eq i8 %3, 38
  %10 = select i1 %9, i32 4, i32 6
  br label %19

11:                                               ; preds = %1
  %12 = add i8 %3, -69
  %13 = icmp ult i8 %12, 4
  br i1 %13, label %15, label %14

14:                                               ; preds = %11, %1
  br label %19

15:                                               ; preds = %11
  %16 = zext nneg i8 %12 to i64
  %17 = getelementptr inbounds [4 x i32], ptr @switch.table.cpp_token_val_index, i64 0, i64 %16
  %18 = load i32, ptr %17, align 4
  br label %19

19:                                               ; preds = %15, %8, %1, %14, %7
  %20 = phi i32 [ 6, %14 ], [ 2, %7 ], [ 0, %1 ], [ %10, %8 ], [ %18, %15 ]
  ret i32 %20
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #17

declare ptr @ht_lookup_with_hash(ptr noundef, ptr noundef, i64 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind uwtable
define internal fastcc void @bufring_append(ptr nocapture noundef %0, ptr nocapture noundef readonly %1, i64 noundef %2, ptr nocapture noundef %3, ptr nocapture noundef %4) unnamed_addr #7 !prof !50 {
  %6 = load ptr, ptr %3, align 8, !tbaa !51
  %7 = load ptr, ptr %4, align 8, !tbaa !51
  %8 = icmp eq ptr %6, null
  br i1 %8, label %9, label %11

9:                                                ; preds = %5
  %10 = tail call ptr @_cpp_get_buff(ptr noundef %0, i64 noundef %2)
  br label %39

11:                                               ; preds = %5
  %12 = getelementptr inbounds %struct._cpp_buff, ptr %7, i64 0, i32 3
  %13 = load ptr, ptr %12, align 8, !tbaa !205
  %14 = getelementptr inbounds %struct._cpp_buff, ptr %7, i64 0, i32 2
  %15 = load ptr, ptr %14, align 8, !tbaa !203
  %16 = ptrtoint ptr %13 to i64
  %17 = ptrtoint ptr %15 to i64
  %18 = sub i64 %16, %17
  %19 = icmp ult i64 %18, %2
  br i1 %19, label %20, label %39

20:                                               ; preds = %11
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %15, ptr align 1 %1, i64 %18, i1 false)
  %21 = load ptr, ptr %14, align 8, !tbaa !203
  %22 = getelementptr inbounds i8, ptr %21, i64 %18
  store ptr %22, ptr %14, align 8, !tbaa !203
  %23 = getelementptr inbounds i8, ptr %1, i64 %18
  %24 = sub i64 %2, %18
  %25 = load ptr, ptr %12, align 8, !tbaa !205
  %26 = ptrtoint ptr %25 to i64
  %27 = ptrtoint ptr %22 to i64
  %28 = sub i64 %26, %27
  %29 = shl nsw i64 %28, 1
  %30 = add i64 %29, %24
  %31 = tail call ptr @_cpp_get_buff(ptr noundef %0, i64 noundef %30)
  store ptr %31, ptr %7, align 8, !tbaa !209
  %32 = getelementptr inbounds %struct._cpp_buff, ptr %31, i64 0, i32 1
  %33 = load ptr, ptr %32, align 8, !tbaa !208
  %34 = load ptr, ptr %14, align 8, !tbaa !203
  %35 = load ptr, ptr %12, align 8, !tbaa !205
  %36 = ptrtoint ptr %35 to i64
  %37 = ptrtoint ptr %34 to i64
  %38 = sub i64 %36, %37
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %33, ptr align 1 %34, i64 %38, i1 false)
  br label %39

39:                                               ; preds = %11, %20, %9
  %40 = phi i64 [ %2, %9 ], [ %24, %20 ], [ %2, %11 ]
  %41 = phi ptr [ %10, %9 ], [ %6, %20 ], [ %6, %11 ]
  %42 = phi ptr [ %10, %9 ], [ %31, %20 ], [ %7, %11 ]
  %43 = phi ptr [ %1, %9 ], [ %23, %20 ], [ %1, %11 ]
  %44 = getelementptr inbounds %struct._cpp_buff, ptr %42, i64 0, i32 2
  %45 = load ptr, ptr %44, align 8, !tbaa !203
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %45, ptr align 1 %43, i64 %40, i1 false)
  %46 = load ptr, ptr %44, align 8, !tbaa !203
  %47 = getelementptr inbounds i8, ptr %46, i64 %40
  store ptr %47, ptr %44, align 8, !tbaa !203
  store ptr %41, ptr %3, align 8, !tbaa !51
  store ptr %42, ptr %4, align 8, !tbaa !51
  ret void
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare i32 @strncmp(ptr nocapture noundef, ptr nocapture noundef, i64 noundef) local_unnamed_addr #17

declare ptr @_cpp_interpret_identifier(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #1

declare i32 @_cpp_valid_ucn(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr nocapture noundef) local_unnamed_addr #17

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smin.i64(i64, i64) #18

; Function Attrs: nofree nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr nocapture, ptr nocapture, i64) local_unnamed_addr #19

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #18

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #18

attributes #0 = { cold inlinehint mustprogress nofree nounwind willreturn memory(read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { cold mustprogress nofree nounwind willreturn memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { inlinehint nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #5 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { cold nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { cold mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #10 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #11 = { cold mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { cold nofree norecurse nosync nounwind memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { cold nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { cold mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { mustprogress nofree nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #19 = { nofree nounwind willreturn memory(argmem: read) }
attributes #20 = { nounwind }
attributes #21 = { nounwind willreturn memory(read) }
attributes #22 = { noreturn nounwind }

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
!35 = !{ptr @_cpp_skip_block_comment, ptr @_cpp_process_line_notes, i64 69385}
!36 = !{ptr @_cpp_init_tokenrun, ptr @xmalloc, i64 1}
!37 = !{ptr @_cpp_lex_token, ptr @xmalloc, i64 52}
!38 = !{ptr @_cpp_lex_token, ptr @xrealloc, i64 195}
!39 = !{ptr @_cpp_lex_token, ptr @_cpp_pop_buffer, i64 1}
!40 = !{ptr @_cpp_lex_token, ptr @linemap_position_for_column, i64 2862}
!41 = !{ptr @_cpp_lex_token, ptr @linemap_line_start, i64 427054}
!42 = !{ptr @_cpp_lex_token, ptr @ht_lookup_with_hash, i64 581492}
!43 = !{ptr @_cpp_lex_token, ptr @lex_string, i64 74}
!44 = !{ptr @_cpp_lex_token, ptr @_cpp_skip_block_comment, i64 69377}
!45 = !{ptr @_cpp_lex_direct, ptr @linemap_line_start, i64 49}
!46 = !{ptr @_cpp_lex_direct, ptr @ht_lookup_with_hash, i64 67}
!47 = !{ptr @_cpp_lex_direct, ptr @_cpp_skip_block_comment, i64 8}
!48 = !{ptr @_cpp_get_buff, ptr @xmalloc, i64 2}
!49 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!50 = !{!"function_entry_count", i64 0}
!51 = !{!52, !52, i64 0}
!52 = !{!"any pointer", !53, i64 0}
!53 = !{!"omnipotent char", !54, i64 0}
!54 = !{!"Simple C/C++ TBAA"}
!55 = !{!56, !56, i64 0}
!56 = !{!"int", !53, i64 0}
!57 = !{!53, !53, i64 0}
!58 = !{!59, !52, i64 0}
!59 = !{!"cpp_hashnode", !60, i64 0, !56, i64 16, !56, i64 16, !53, i64 17, !56, i64 18, !56, i64 18, !53, i64 24}
!60 = !{!"ht_identifier", !52, i64 0, !56, i64 8, !56, i64 12}
!61 = !{!"function_entry_count", i64 194}
!62 = !{!63, !52, i64 0}
!63 = !{!"cpp_reader", !52, i64 0, !52, i64 8, !64, i64 16, !52, i64 40, !56, i64 48, !52, i64 56, !52, i64 64, !52, i64 72, !65, i64 80, !52, i64 136, !52, i64 144, !66, i64 152, !56, i64 176, !53, i64 180, !52, i64 184, !52, i64 192, !68, i64 200, !52, i64 264, !52, i64 272, !52, i64 280, !52, i64 288, !52, i64 296, !52, i64 304, !70, i64 312, !53, i64 400, !53, i64 401, !52, i64 408, !52, i64 416, !53, i64 424, !52, i64 432, !71, i64 440, !52, i64 472, !56, i64 480, !56, i64 484, !52, i64 488, !56, i64 496, !72, i64 504, !72, i64 528, !72, i64 552, !72, i64 576, !72, i64 600, !52, i64 624, !52, i64 632, !66, i64 640, !66, i64 664, !52, i64 688, !70, i64 696, !70, i64 784, !52, i64 872, !73, i64 880, !52, i64 1016, !52, i64 1024, !52, i64 1032, !74, i64 1040, !76, i64 1168, !53, i64 1200, !77, i64 1208, !52, i64 1240, !52, i64 1248, !52, i64 1256, !52, i64 1264, !56, i64 1272, !78, i64 1280, !52, i64 1296}
!64 = !{!"lexer_state", !53, i64 0, !53, i64 1, !53, i64 2, !53, i64 3, !53, i64 4, !53, i64 5, !53, i64 6, !53, i64 7, !53, i64 8, !53, i64 9, !53, i64 10, !56, i64 12, !53, i64 16, !53, i64 17}
!65 = !{!"cpp_context", !52, i64 0, !52, i64 8, !53, i64 16, !52, i64 32, !52, i64 40, !53, i64 48}
!66 = !{!"cpp_token", !56, i64 0, !56, i64 4, !67, i64 6, !53, i64 8}
!67 = !{!"short", !53, i64 0}
!68 = !{!"cpp_dir", !52, i64 0, !52, i64 8, !56, i64 16, !53, i64 20, !53, i64 21, !52, i64 24, !52, i64 32, !52, i64 40, !69, i64 48, !69, i64 56}
!69 = !{!"long", !53, i64 0}
!70 = !{!"obstack", !69, i64 0, !52, i64 8, !52, i64 16, !52, i64 24, !52, i64 32, !69, i64 40, !56, i64 48, !52, i64 56, !52, i64 64, !52, i64 72, !56, i64 80, !56, i64 80, !56, i64 80}
!71 = !{!"tokenrun", !52, i64 0, !52, i64 8, !52, i64 16, !52, i64 24}
!72 = !{!"cset_converter", !52, i64 0, !52, i64 8, !56, i64 16}
!73 = !{!"cpp_callbacks", !52, i64 0, !52, i64 8, !52, i64 16, !52, i64 24, !52, i64 32, !52, i64 40, !52, i64 48, !52, i64 56, !52, i64 64, !52, i64 72, !52, i64 80, !52, i64 88, !52, i64 96, !52, i64 104, !52, i64 112, !52, i64 120, !52, i64 128}
!74 = !{!"cpp_options", !56, i64 0, !56, i64 4, !53, i64 8, !53, i64 9, !53, i64 10, !53, i64 11, !53, i64 12, !53, i64 13, !53, i64 14, !53, i64 15, !53, i64 16, !53, i64 17, !53, i64 18, !53, i64 19, !53, i64 20, !53, i64 21, !53, i64 22, !53, i64 23, !53, i64 24, !53, i64 25, !53, i64 26, !53, i64 27, !53, i64 28, !53, i64 29, !53, i64 30, !53, i64 31, !53, i64 32, !53, i64 33, !53, i64 34, !53, i64 35, !53, i64 36, !53, i64 37, !53, i64 38, !53, i64 39, !53, i64 40, !53, i64 41, !53, i64 42, !52, i64 48, !52, i64 56, !52, i64 64, !56, i64 72, !53, i64 76, !53, i64 77, !75, i64 80, !69, i64 88, !69, i64 96, !69, i64 104, !69, i64 112, !53, i64 120, !53, i64 121, !53, i64 122, !53, i64 123, !53, i64 124}
!75 = !{!"", !56, i64 0, !53, i64 4, !53, i64 5, !53, i64 6, !53, i64 7}
!76 = !{!"spec_nodes", !52, i64 0, !52, i64 8, !52, i64 16, !52, i64 24}
!77 = !{!"", !52, i64 0, !52, i64 8, !52, i64 16, !56, i64 24}
!78 = !{!"", !52, i64 0, !56, i64 8, !56, i64 12}
!79 = !{!80, !56, i64 52}
!80 = !{!"cpp_buffer", !52, i64 0, !52, i64 8, !52, i64 16, !52, i64 24, !52, i64 32, !52, i64 40, !56, i64 48, !56, i64 52, !56, i64 56, !52, i64 64, !52, i64 72, !52, i64 80, !52, i64 88, !53, i64 96, !56, i64 97, !56, i64 97, !56, i64 97, !53, i64 98, !68, i64 104, !72, i64 168}
!81 = !{!80, !56, i64 48}
!82 = !{!80, !52, i64 16}
!83 = !{!80, !52, i64 8}
!84 = !{!80, !52, i64 0}
!85 = !{!80, !53, i64 96}
!86 = !{!"branch_weights", i32 427104, i32 194}
!87 = !{!"branch_weights", i32 12771015, i32 0, i32 427104, i32 2, i32 347}
!88 = distinct !{!88, !89}
!89 = !{!"llvm.loop.unroll.disable"}
!90 = !{!80, !52, i64 32}
!91 = !{!"branch_weights", i32 0, i32 427104}
!92 = !{!"branch_weights", i32 427102, i32 2}
!93 = !{!67, !67, i64 0}
!94 = !{!"branch_weights", i32 2, i32 0}
!95 = distinct !{!95, !96, !89}
!96 = !{!"llvm.loop.mustprogress"}
!97 = !{!"branch_weights", i32 0, i32 2}
!98 = !{!"branch_weights", i32 0, i32 347}
!99 = !{!63, !53, i64 1053}
!100 = distinct !{!100, !89}
!101 = distinct !{!101, !96, !89}
!102 = !{!"branch_weights", i32 4887, i32 0, i32 194}
!103 = !{!80, !56, i64 56}
!104 = !{!"branch_weights", i32 195, i32 427103}
!105 = !{!80, !52, i64 40}
!106 = !{!107, !52, i64 0}
!107 = !{!"_cpp_line_note", !52, i64 0, !56, i64 8}
!108 = !{!107, !56, i64 8}
!109 = !{!"cpp_lex.c;add_line_note"}
!110 = !{!"function_entry_count", i64 69385}
!111 = !{!"branch_weights", i32 69385, i32 0}
!112 = !{!63, !52, i64 40}
!113 = !{!114, !56, i64 36}
!114 = !{!"line_maps", !52, i64 0, !56, i64 8, !56, i64 12, !56, i64 16, !56, i64 20, !56, i64 24, !53, i64 28, !56, i64 32, !56, i64 36, !56, i64 40, !52, i64 48}
!115 = !{!114, !52, i64 0}
!116 = !{!114, !56, i64 12}
!117 = !{!118, !56, i64 12}
!118 = !{!"line_map", !52, i64 0, !56, i64 8, !56, i64 12, !56, i64 16, !56, i64 20, !53, i64 21, !56, i64 22}
!119 = !{!118, !56, i64 8}
!120 = !{!63, !53, i64 1061}
!121 = distinct !{!121, !96, !89}
!122 = !{!"branch_weights", i32 0, i32 69385}
!123 = !{!"branch_weights", i32 2447959, i32 410225, i32 0}
!124 = distinct !{!124, !89}
!125 = !{!"branch_weights", i32 69385, i32 340840}
!126 = !{!63, !53, i64 1059}
!127 = !{!"branch_weights", i32 340840, i32 0}
!128 = distinct !{!128, !96, !89}
!129 = !{!63, !52, i64 1016}
!130 = !{!63, !53, i64 18}
!131 = !{!63, !53, i64 23}
!132 = !{!63, !52, i64 1192}
!133 = !{!63, !53, i64 22}
!134 = !{!"function_entry_count", i64 1}
!135 = !{!71, !52, i64 16}
!136 = !{!71, !52, i64 24}
!137 = !{!71, !52, i64 0}
!138 = !{!63, !52, i64 136}
!139 = !{!65, !52, i64 8}
!140 = !{!65, !53, i64 48}
!141 = distinct !{!141, !96, !89}
!142 = !{!63, !56, i64 484}
!143 = distinct !{!143, !96, !89}
!144 = !{!"function_entry_count", i64 2661029}
!145 = !{!63, !52, i64 432}
!146 = !{!63, !52, i64 472}
!147 = !{!"branch_weights", i32 117, i32 2660912}
!148 = !{!"branch_weights", i32 3, i32 114}
!149 = !{!71, !52, i64 8}
!150 = !{!"branch_weights", i32 0, i32 2661029}
!151 = !{!"branch_weights", i32 2661029, i32 0}
!152 = !{!63, !56, i64 480}
!153 = !{!"branch_weights", i32 2660961, i32 68}
!154 = !{!66, !67, i64 6}
!155 = !{!"branch_weights", i32 2661080, i32 427486}
!156 = !{!63, !53, i64 32}
!157 = !{!"branch_weights", i32 427486, i32 0}
!158 = !{!63, !53, i64 33}
!159 = !{!63, !53, i64 24}
!160 = !{!63, !53, i64 16}
!161 = !{!"branch_weights", i32 427105, i32 381}
!162 = !{!"branch_weights", i32 0, i32 427105}
!163 = !{!"branch_weights", i32 427104, i32 1}
!164 = !{!63, !53, i64 25}
!165 = !{!"branch_weights", i32 1, i32 0}
!166 = !{!80, !52, i64 24}
!167 = !{!"branch_weights", i32 0, i32 1}
!168 = distinct !{!168, !89}
!169 = !{!"branch_weights", i32 382, i32 427104}
!170 = !{!"branch_weights", i32 1, i32 381}
!171 = !{!66, !56, i64 0}
!172 = !{!"branch_weights", i32 427104, i32 0}
!173 = !{!63, !52, i64 456}
!174 = !{!"branch_weights", i32 4225805, i32 0}
!175 = !{!63, !52, i64 8}
!176 = !{!114, !56, i64 40}
!177 = !{!"branch_weights", i32 4222943, i32 2862}
!178 = !{!114, !56, i64 32}
!179 = !{!"branch_weights", i32 941, i32 4222002}
!180 = !{!"branch_weights", i32 0, i32 1068236, i32 0, i32 0, i32 0, i32 0, i32 427298, i32 29399, i32 44811, i32 17214, i32 11874, i32 7368, i32 4491, i32 4160, i32 2213, i32 2156, i32 1908, i32 62, i32 1973, i32 1211, i32 104, i32 7022, i32 1134, i32 1183, i32 31228, i32 503, i32 49354, i32 1068, i32 55275, i32 283, i32 168091, i32 7, i32 5, i32 1138, i32 6681, i32 1055, i32 14671, i32 566, i32 19, i32 69729, i32 3583, i32 1867, i32 4101, i32 24412, i32 137, i32 6, i32 1, i32 678, i32 759, i32 62062, i32 2572, i32 18, i32 221, i32 30, i32 565, i32 1544, i32 1, i32 0, i32 41725, i32 46, i32 919, i32 823, i32 451, i32 2188, i32 8030, i32 9506, i32 9, i32 2941, i32 0, i32 2, i32 5, i32 69, i32 69434, i32 8863, i32 149, i32 17, i32 12735, i32 2658, i32 1678, i32 85054, i32 40235, i32 26233, i32 4269, i32 130571, i32 19435, i32 0, i32 5, i32 347, i32 21, i32 23862, i32 711021, i32 711021, i32 15471, i32 15471, i32 44588, i32 44588, i32 55318, i32 0, i32 0, i32 0}
!181 = !{!"branch_weights", i32 0, i32 2080349, i32 0, i32 0}
!182 = !{!63, !53, i64 1077}
!183 = !{!"branch_weights", i32 1068236, i32 1012113}
!184 = distinct !{!184, !96, !89}
!185 = !{!"branch_weights", i32 1068236, i32 0}
!186 = !{!"branch_weights", i32 427103, i32 195}
!187 = !{!"branch_weights", i32 121256, i32 125615}
!188 = !{!"branch_weights", i32 125594, i32 3, i32 18}
!189 = !{!"branch_weights", i32 0, i32 12, i32 9, i32 0, i32 0}
!190 = !{!63, !53, i64 1055}
!191 = !{!192, !56, i64 0}
!192 = !{!"normalize_state", !56, i64 0, !53, i64 4, !56, i64 8}
!193 = !{!192, !53, i64 4}
!194 = distinct !{!194, !96, !89}
!195 = !{!"branch_weights", i32 0, i32 707153}
!196 = !{!63, !53, i64 1070}
!197 = !{!63, !53, i64 1072}
!198 = !{!63, !53, i64 1071}
!199 = distinct !{!199, !96, !89}
!200 = !{!201, !56, i64 0}
!201 = !{!"cpp_string", !56, i64 0, !52, i64 8}
!202 = !{!63, !52, i64 64}
!203 = !{!204, !52, i64 16}
!204 = !{!"_cpp_buff", !52, i64 0, !52, i64 8, !52, i64 16, !52, i64 24}
!205 = !{!204, !52, i64 24}
!206 = !{!"branch_weights", i32 46, i32 125548}
!207 = !{!"branch_weights", i32 48, i32 0}
!208 = !{!204, !52, i64 8}
!209 = !{!204, !52, i64 0}
!210 = !{!"branch_weights", i32 48, i32 0, i32 0}
!211 = distinct !{!211, !89}
!212 = !{!"VP", i32 1, i64 125579, i64 1, i64 68131, i64 3, i64 35725, i64 4, i64 11464, i64 2, i64 8806}
!213 = !{!201, !52, i64 8}
!214 = !{!63, !56, i64 1112}
!215 = !{!192, !56, i64 8}
!216 = !{!217, !56, i64 0}
!217 = !{!"token_spelling", !56, i64 0, !52, i64 8}
!218 = !{!59, !56, i64 8}
!219 = !{!"branch_weights", i32 62, i32 3288}
!220 = !{!63, !53, i64 1056}
!221 = !{!"branch_weights", i32 3288, i32 0}
!222 = !{!"branch_weights", i32 0, i32 62}
!223 = !{!"branch_weights", i32 1, i32 61}
!224 = !{!"branch_weights", i32 1, i32 581558}
!225 = !{!"branch_weights", i32 581558, i32 4067564}
!226 = distinct !{!226, !96, !89}
!227 = distinct !{!227, !96, !89}
!228 = !{i8 0, i8 2}
!229 = distinct !{!229, !96, !89}
!230 = !{!"branch_weights", i32 581559, i32 0}
!231 = !{!"branch_weights", i32 49, i32 69385, i32 0, i32 0}
!232 = !{!63, !53, i64 1049}
!233 = !{!80, !53, i64 98}
!234 = !{!63, !56, i64 1044}
!235 = distinct !{!235, !96, !89}
!236 = !{!63, !53, i64 21}
!237 = !{!63, !53, i64 19}
!238 = !{!"branch_weights", i32 8863, i32 0}
!239 = !{!"branch_weights", i32 177, i32 63, i32 8623}
!240 = !{!"branch_weights", i32 0, i32 8623}
!241 = !{!63, !53, i64 1054}
!242 = !{!"branch_weights", i32 0, i32 177}
!243 = !{!"branch_weights", i32 177, i32 0, i32 0}
!244 = !{!"branch_weights", i32 17, i32 87, i32 45}
!245 = !{!"branch_weights", i32 12, i32 33}
!246 = !{!"branch_weights", i32 0, i32 17}
!247 = !{!"branch_weights", i32 17, i32 0, i32 0}
!248 = !{!"branch_weights", i32 12735, i32 0}
!249 = !{!"branch_weights", i32 160528900, i32 823550, i32 0}
!250 = !{!"branch_weights", i32 65, i32 0}
!251 = !{!"branch_weights", i32 0, i32 12670}
!252 = !{!63, !53, i64 1048}
!253 = !{!"branch_weights", i32 2556, i32 75, i32 27}
!254 = !{!"branch_weights", i32 255, i32 1367, i32 42, i32 14}
!255 = !{!"branch_weights", i32 0, i32 1367}
!256 = !{!"branch_weights", i32 8885, i32 76164, i32 5}
!257 = !{!"branch_weights", i32 11, i32 40221, i32 3}
!258 = !{!"branch_weights", i32 688170289, i32 0, i32 0}
!259 = !{!"branch_weights", i32 0, i32 26233}
!260 = !{!"branch_weights", i32 0, i32 4269}
!261 = !{!"branch_weights", i32 129691, i32 880}
!262 = !{!"branch_weights", i32 9194, i32 10241}
!263 = !{!"branch_weights", i32 5, i32 0}
!264 = !{!"branch_weights", i32 2315802, i32 345227}
!265 = !{!"branch_weights", i32 0, i32 345227}
!266 = distinct !{!266, !89}
!267 = !{!"branch_weights", i32 345227, i32 0}
!268 = !{!63, !52, i64 880}
!269 = !{!"VP", i32 0, i64 345227, i64 -1603361673744732709, i64 345227}
!270 = !{!"branch_weights", i32 2660419, i32 610}
!271 = !{!"branch_weights", i32 2660419, i32 0}
!272 = !{!63, !53, i64 424}
!273 = !{i64 0, i64 4, !55, i64 4, i64 4, !55, i64 6, i64 2, !93, i64 8, i64 8, !51, i64 8, i64 8, !51, i64 8, i64 4, !55, i64 16, i64 8, !51, i64 8, i64 4, !55, i64 8, i64 4, !55, i64 8, i64 4, !55}
!274 = !{!"cpp_lex.c;next_tokenrun"}
!275 = !{!"function_entry_count", i64 307}
!276 = !{!"VP", i32 1, i64 14, i64 1, i64 7, i64 3, i64 4, i64 4, i64 1, i64 2, i64 1}
!277 = !{!"cpp_lex.c;lex_number"}
!278 = !{!"VP", i32 1, i64 0, i64 1, i64 0, i64 3, i64 0, i64 4, i64 0, i64 2, i64 0}
!279 = !{!"cpp_lex.c;warn_about_normalization"}
!280 = !{!"function_entry_count", i64 74}
!281 = !{!"cpp_lex.c;lex_string"}
!282 = !{!"branch_weights", i32 74, i32 0, i32 0, i32 0}
!283 = !{!"branch_weights", i32 0, i32 0, i32 69, i32 5}
!284 = distinct !{!284, !96, !89}
!285 = distinct !{!285, !96, !89}
!286 = distinct !{!286, !96, !89}
!287 = distinct !{!287, !96, !89}
!288 = !{!63, !52, i64 72}
!289 = distinct !{!289, !89}
!290 = distinct !{!290, !96, !89}
!291 = !{!"branch_weights", i32 69, i32 0, i32 0, i32 0}
!292 = !{!"branch_weights", i32 5, i32 0, i32 0}
!293 = !{!"branch_weights", i32 0, i32 5}
!294 = !{!"branch_weights", i32 2, i32 1891}
!295 = !{!"branch_weights", i32 74, i32 1817}
!296 = !{!"branch_weights", i32 1817, i32 0, i32 0}
!297 = !{!"branch_weights", i32 0, i32 1819, i32 74}
!298 = distinct !{!298, !89}
!299 = !{!"branch_weights", i32 74, i32 0}
!300 = !{!"branch_weights", i32 0, i32 74}
!301 = !{!"VP", i32 1, i64 74, i64 17, i64 59, i64 9, i64 6, i64 3, i64 3, i64 4, i64 2}
!302 = !{!"cpp_lex.c;lex_identifier"}
!303 = !{!63, !56, i64 1292}
!304 = !{!63, !52, i64 1280}
!305 = !{!63, !56, i64 1288}
!306 = !{!307, !52, i64 0}
!307 = !{!"", !52, i64 0, !56, i64 8}
!308 = !{!307, !56, i64 8}
!309 = !{!"cpp_lex.c;forms_identifier_p"}
!310 = distinct !{!310, !96, !89}
!311 = !{i64 -2147483648, i64 2147483648}
!312 = distinct !{!312, !96, !89}
!313 = !{!217, !52, i64 8}
!314 = distinct !{!314, !96, !89}
!315 = distinct !{!315, !96, !89}
!316 = distinct !{!316, !96, !89}
!317 = distinct !{!317, !96, !89}
!318 = distinct !{!318, !96, !89}
!319 = !{!"function_entry_count", i64 3}
!320 = !{!"branch_weights", i32 3, i32 0}
!321 = !{!"branch_weights", i32 0, i32 0, i32 0, i32 3}
!322 = distinct !{!322, !96, !89}
!323 = !{!63, !53, i64 1050}
!324 = distinct !{!324, !96, !89}
!325 = distinct !{!325, !96, !89}
!326 = !{!"function_entry_count", i64 2}
!327 = distinct !{!327, !96, !89}
!328 = !{!"function_entry_count", i64 22}
!329 = !{!63, !52, i64 56}
!330 = !{!"branch_weights", i32 0, i32 22}
