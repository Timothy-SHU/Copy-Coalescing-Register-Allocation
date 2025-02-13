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
@.str.5 = private unnamed_addr constant [29 x i8] c"attempt to use poisoned \22%s\22\00", align 1
@.str.6 = private unnamed_addr constant [69 x i8] c"__VA_ARGS__ can only appear in the expansion of a C99 variadic macro\00", align 1
@.str.7 = private unnamed_addr constant [50 x i8] c"identifier \22%s\22 is a special operator name in C++\00", align 1
@.str.8 = private unnamed_addr constant [21 x i8] c"unterminated comment\00", align 1
@.str.9 = private unnamed_addr constant [46 x i8] c"C++ style comments are not allowed in ISO C90\00", align 1
@.str.10 = private unnamed_addr constant [49 x i8] c"(this will be reported only once per input file)\00", align 1
@.str.11 = private unnamed_addr constant [19 x i8] c"multi-line comment\00", align 1
@.str.12 = private unnamed_addr constant [30 x i8] c"%s in preprocessing directive\00", align 1
@.str.13 = private unnamed_addr constant [10 x i8] c"form feed\00", align 1
@.str.14 = private unnamed_addr constant [13 x i8] c"vertical tab\00", align 1
@.str.15 = private unnamed_addr constant [26 x i8] c"null character(s) ignored\00", align 1
@.str.16 = private unnamed_addr constant [22 x i8] c"`%.*s' is not in NFKC\00", align 1
@.str.17 = private unnamed_addr constant [21 x i8] c"`%.*s' is not in NFC\00", align 1
@.str.18 = private unnamed_addr constant [39 x i8] c"null character(s) preserved in literal\00", align 1
@.str.19 = private unnamed_addr constant [33 x i8] c"missing terminating %c character\00", align 1
@.str.20 = private unnamed_addr constant [47 x i8] c"raw string delimiter longer than 16 characters\00", align 1
@.str.21 = private unnamed_addr constant [47 x i8] c"invalid character '%c' in raw string delimiter\00", align 1
@.str.22 = private unnamed_addr constant [2 x i8] c"\\\00", align 1
@.str.23 = private unnamed_addr constant [2 x i8] c" \00", align 1
@.str.24 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.25 = private unnamed_addr constant [3 x i8] c"??\00", align 1
@.str.26 = private unnamed_addr constant [2 x i8] c"/\00", align 1
@.str.27 = private unnamed_addr constant [24 x i8] c"unterminated raw string\00", align 1
@.str.28 = private unnamed_addr constant [28 x i8] c"'$' in identifier or number\00", align 1
@token_spellings = internal unnamed_addr constant [73 x %struct.token_spelling] [%struct.token_spelling { i32 0, ptr @.str.29 }, %struct.token_spelling { i32 0, ptr @.str.30 }, %struct.token_spelling { i32 0, ptr @.str.31 }, %struct.token_spelling { i32 0, ptr @.str.32 }, %struct.token_spelling { i32 0, ptr @.str.33 }, %struct.token_spelling { i32 0, ptr @.str.34 }, %struct.token_spelling { i32 0, ptr @.str.35 }, %struct.token_spelling { i32 0, ptr @.str.26 }, %struct.token_spelling { i32 0, ptr @.str.36 }, %struct.token_spelling { i32 0, ptr @.str.37 }, %struct.token_spelling { i32 0, ptr @.str.38 }, %struct.token_spelling { i32 0, ptr @.str.39 }, %struct.token_spelling { i32 0, ptr @.str.40 }, %struct.token_spelling { i32 0, ptr @.str.41 }, %struct.token_spelling { i32 0, ptr @.str.42 }, %struct.token_spelling { i32 0, ptr @.str.43 }, %struct.token_spelling { i32 0, ptr @.str.44 }, %struct.token_spelling { i32 0, ptr @.str.45 }, %struct.token_spelling { i32 0, ptr @.str.46 }, %struct.token_spelling { i32 0, ptr @.str.47 }, %struct.token_spelling { i32 0, ptr @.str.48 }, %struct.token_spelling { i32 0, ptr @.str.49 }, %struct.token_spelling { i32 3, ptr @.str.50 }, %struct.token_spelling { i32 0, ptr @.str.51 }, %struct.token_spelling { i32 0, ptr @.str.52 }, %struct.token_spelling { i32 0, ptr @.str.53 }, %struct.token_spelling { i32 0, ptr @.str.54 }, %struct.token_spelling { i32 0, ptr @.str.55 }, %struct.token_spelling { i32 0, ptr @.str.56 }, %struct.token_spelling { i32 0, ptr @.str.57 }, %struct.token_spelling { i32 0, ptr @.str.58 }, %struct.token_spelling { i32 0, ptr @.str.59 }, %struct.token_spelling { i32 0, ptr @.str.60 }, %struct.token_spelling { i32 0, ptr @.str.61 }, %struct.token_spelling { i32 0, ptr @.str.62 }, %struct.token_spelling { i32 0, ptr @.str.63 }, %struct.token_spelling { i32 0, ptr @.str.64 }, %struct.token_spelling { i32 0, ptr @.str.65 }, %struct.token_spelling { i32 0, ptr @.str.66 }, %struct.token_spelling { i32 0, ptr @.str.67 }, %struct.token_spelling { i32 0, ptr @.str.68 }, %struct.token_spelling { i32 0, ptr @.str.69 }, %struct.token_spelling { i32 0, ptr @.str.70 }, %struct.token_spelling { i32 0, ptr @.str.71 }, %struct.token_spelling { i32 0, ptr @.str.72 }, %struct.token_spelling { i32 0, ptr @.str.73 }, %struct.token_spelling { i32 0, ptr @.str.74 }, %struct.token_spelling { i32 0, ptr @.str.75 }, %struct.token_spelling { i32 0, ptr @.str.76 }, %struct.token_spelling { i32 0, ptr @.str.77 }, %struct.token_spelling { i32 0, ptr @.str.78 }, %struct.token_spelling { i32 0, ptr @.str.79 }, %struct.token_spelling { i32 0, ptr @.str.80 }, %struct.token_spelling { i32 1, ptr @.str.81 }, %struct.token_spelling { i32 1, ptr @.str.82 }, %struct.token_spelling { i32 2, ptr @.str.83 }, %struct.token_spelling { i32 2, ptr @.str.84 }, %struct.token_spelling { i32 2, ptr @.str.85 }, %struct.token_spelling { i32 2, ptr @.str.86 }, %struct.token_spelling { i32 2, ptr @.str.87 }, %struct.token_spelling { i32 2, ptr @.str.88 }, %struct.token_spelling { i32 2, ptr @.str.89 }, %struct.token_spelling { i32 2, ptr @.str.90 }, %struct.token_spelling { i32 2, ptr @.str.91 }, %struct.token_spelling { i32 2, ptr @.str.92 }, %struct.token_spelling { i32 2, ptr @.str.93 }, %struct.token_spelling { i32 2, ptr @.str.94 }, %struct.token_spelling { i32 2, ptr @.str.95 }, %struct.token_spelling { i32 2, ptr @.str.96 }, %struct.token_spelling { i32 3, ptr @.str.97 }, %struct.token_spelling { i32 3, ptr @.str.98 }, %struct.token_spelling { i32 3, ptr @.str.99 }, %struct.token_spelling { i32 3, ptr @.str.100 }], align 16
@.str.29 = private unnamed_addr constant [2 x i8] c"=\00", align 1
@.str.30 = private unnamed_addr constant [2 x i8] c"!\00", align 1
@.str.31 = private unnamed_addr constant [2 x i8] c">\00", align 1
@.str.32 = private unnamed_addr constant [2 x i8] c"<\00", align 1
@.str.33 = private unnamed_addr constant [2 x i8] c"+\00", align 1
@.str.34 = private unnamed_addr constant [2 x i8] c"-\00", align 1
@.str.35 = private unnamed_addr constant [2 x i8] c"*\00", align 1
@.str.36 = private unnamed_addr constant [2 x i8] c"%\00", align 1
@.str.37 = private unnamed_addr constant [2 x i8] c"&\00", align 1
@.str.38 = private unnamed_addr constant [2 x i8] c"|\00", align 1
@.str.39 = private unnamed_addr constant [2 x i8] c"^\00", align 1
@.str.40 = private unnamed_addr constant [3 x i8] c">>\00", align 1
@.str.41 = private unnamed_addr constant [3 x i8] c"<<\00", align 1
@.str.42 = private unnamed_addr constant [2 x i8] c"~\00", align 1
@.str.43 = private unnamed_addr constant [3 x i8] c"&&\00", align 1
@.str.44 = private unnamed_addr constant [3 x i8] c"||\00", align 1
@.str.45 = private unnamed_addr constant [2 x i8] c"?\00", align 1
@.str.46 = private unnamed_addr constant [2 x i8] c":\00", align 1
@.str.47 = private unnamed_addr constant [2 x i8] c",\00", align 1
@.str.48 = private unnamed_addr constant [2 x i8] c"(\00", align 1
@.str.49 = private unnamed_addr constant [2 x i8] c")\00", align 1
@.str.50 = private unnamed_addr constant [4 x i8] c"EOF\00", align 1
@.str.51 = private unnamed_addr constant [3 x i8] c"==\00", align 1
@.str.52 = private unnamed_addr constant [3 x i8] c"!=\00", align 1
@.str.53 = private unnamed_addr constant [3 x i8] c">=\00", align 1
@.str.54 = private unnamed_addr constant [3 x i8] c"<=\00", align 1
@.str.55 = private unnamed_addr constant [3 x i8] c"+=\00", align 1
@.str.56 = private unnamed_addr constant [3 x i8] c"-=\00", align 1
@.str.57 = private unnamed_addr constant [3 x i8] c"*=\00", align 1
@.str.58 = private unnamed_addr constant [3 x i8] c"/=\00", align 1
@.str.59 = private unnamed_addr constant [3 x i8] c"%=\00", align 1
@.str.60 = private unnamed_addr constant [3 x i8] c"&=\00", align 1
@.str.61 = private unnamed_addr constant [3 x i8] c"|=\00", align 1
@.str.62 = private unnamed_addr constant [3 x i8] c"^=\00", align 1
@.str.63 = private unnamed_addr constant [4 x i8] c">>=\00", align 1
@.str.64 = private unnamed_addr constant [4 x i8] c"<<=\00", align 1
@.str.65 = private unnamed_addr constant [2 x i8] c"#\00", align 1
@.str.66 = private unnamed_addr constant [3 x i8] c"##\00", align 1
@.str.67 = private unnamed_addr constant [2 x i8] c"[\00", align 1
@.str.68 = private unnamed_addr constant [2 x i8] c"]\00", align 1
@.str.69 = private unnamed_addr constant [2 x i8] c"{\00", align 1
@.str.70 = private unnamed_addr constant [2 x i8] c"}\00", align 1
@.str.71 = private unnamed_addr constant [2 x i8] c";\00", align 1
@.str.72 = private unnamed_addr constant [4 x i8] c"...\00", align 1
@.str.73 = private unnamed_addr constant [3 x i8] c"++\00", align 1
@.str.74 = private unnamed_addr constant [3 x i8] c"--\00", align 1
@.str.75 = private unnamed_addr constant [3 x i8] c"->\00", align 1
@.str.76 = private unnamed_addr constant [2 x i8] c".\00", align 1
@.str.77 = private unnamed_addr constant [3 x i8] c"::\00", align 1
@.str.78 = private unnamed_addr constant [4 x i8] c"->*\00", align 1
@.str.79 = private unnamed_addr constant [3 x i8] c".*\00", align 1
@.str.80 = private unnamed_addr constant [2 x i8] c"@\00", align 1
@.str.81 = private unnamed_addr constant [5 x i8] c"NAME\00", align 1
@.str.82 = private unnamed_addr constant [8 x i8] c"AT_NAME\00", align 1
@.str.83 = private unnamed_addr constant [7 x i8] c"NUMBER\00", align 1
@.str.84 = private unnamed_addr constant [5 x i8] c"CHAR\00", align 1
@.str.85 = private unnamed_addr constant [6 x i8] c"WCHAR\00", align 1
@.str.86 = private unnamed_addr constant [7 x i8] c"CHAR16\00", align 1
@.str.87 = private unnamed_addr constant [7 x i8] c"CHAR32\00", align 1
@.str.88 = private unnamed_addr constant [6 x i8] c"OTHER\00", align 1
@.str.89 = private unnamed_addr constant [7 x i8] c"STRING\00", align 1
@.str.90 = private unnamed_addr constant [8 x i8] c"WSTRING\00", align 1
@.str.91 = private unnamed_addr constant [9 x i8] c"STRING16\00", align 1
@.str.92 = private unnamed_addr constant [9 x i8] c"STRING32\00", align 1
@.str.93 = private unnamed_addr constant [11 x i8] c"UTF8STRING\00", align 1
@.str.94 = private unnamed_addr constant [12 x i8] c"OBJC_STRING\00", align 1
@.str.95 = private unnamed_addr constant [12 x i8] c"HEADER_NAME\00", align 1
@.str.96 = private unnamed_addr constant [8 x i8] c"COMMENT\00", align 1
@.str.97 = private unnamed_addr constant [10 x i8] c"MACRO_ARG\00", align 1
@.str.98 = private unnamed_addr constant [7 x i8] c"PRAGMA\00", align 1
@.str.99 = private unnamed_addr constant [11 x i8] c"PRAGMA_EOL\00", align 1
@.str.100 = private unnamed_addr constant [8 x i8] c"PADDING\00", align 1
@.str.101 = private unnamed_addr constant [21 x i8] c"unspellable token %s\00", align 1
@digraph_spellings = internal unnamed_addr constant [6 x ptr] [ptr @.str.102, ptr @.str.103, ptr @.str.104, ptr @.str.105, ptr @.str.106, ptr @.str.107], align 16
@.str.102 = private unnamed_addr constant [3 x i8] c"%:\00", align 1
@.str.103 = private unnamed_addr constant [5 x i8] c"%:%:\00", align 1
@.str.104 = private unnamed_addr constant [3 x i8] c"<:\00", align 1
@.str.105 = private unnamed_addr constant [3 x i8] c":>\00", align 1
@.str.106 = private unnamed_addr constant [3 x i8] c"<%\00", align 1
@.str.107 = private unnamed_addr constant [3 x i8] c"%>\00", align 1
@.str.108 = private unnamed_addr constant [17 x i8] c"0123456789abcdef\00", align 1
@.str.109 = private unnamed_addr constant [5 x i8] c"#%s \00", align 1
@switch.table.cpp_token_val_index = private unnamed_addr constant [4 x i32] [i32 3, i32 5, i32 6, i32 1], align 4

; Function Attrs: mustprogress nofree noinline nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @cpp_ideq(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) local_unnamed_addr #0 !prof !78 {
  %3 = getelementptr inbounds %struct.cpp_token, ptr %0, i64 0, i32 1
  %4 = load i8, ptr %3, align 4
  %5 = icmp eq i8 %4, 53
  br i1 %5, label %6, label %13

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.cpp_token, ptr %0, i64 0, i32 3
  %8 = load ptr, ptr %7, align 8, !tbaa !79
  %9 = load ptr, ptr %8, align 8, !tbaa !82
  %10 = tail call fastcc i32 @ustrcmp(ptr noundef %9, ptr noundef %1) #18
  %11 = icmp eq i32 %10, 0
  %12 = zext i1 %11 to i32
  br label %13

13:                                               ; preds = %2, %6
  %14 = phi i32 [ %12, %6 ], [ 0, %2 ]
  ret i32 %14
}

; Function Attrs: mustprogress nofree noinline nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @ustrcmp(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) unnamed_addr #1 !prof !78 !PGOFuncName !87 {
  %3 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(1) %1) #19
  ret i32 %3
}

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(argmem: read)
declare i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @_cpp_clean_line(ptr nocapture noundef readonly %0) local_unnamed_addr #3 !prof !88 {
  %2 = load ptr, ptr %0, align 8, !tbaa !89
  %3 = getelementptr inbounds %struct.cpp_buffer, ptr %2, i64 0, i32 7
  store i32 0, ptr %3, align 4, !tbaa !106
  %4 = getelementptr inbounds %struct.cpp_buffer, ptr %2, i64 0, i32 6
  store i32 0, ptr %4, align 8, !tbaa !108
  %5 = getelementptr inbounds %struct.cpp_buffer, ptr %2, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !109
  %7 = getelementptr inbounds %struct.cpp_buffer, ptr %2, i64 0, i32 1
  store ptr %6, ptr %7, align 8, !tbaa !110
  store ptr %6, ptr %2, align 8, !tbaa !111
  %8 = getelementptr inbounds %struct.cpp_buffer, ptr %2, i64 0, i32 13
  store i8 0, ptr %8, align 8, !tbaa !112
  %9 = getelementptr inbounds i8, ptr %6, i64 -1
  %10 = getelementptr inbounds %struct.cpp_buffer, ptr %2, i64 0, i32 14
  %11 = load i8, ptr %10, align 1
  %12 = and i8 %11, 2
  %13 = icmp eq i8 %12, 0
  br i1 %13, label %14, label %147, !prof !113

14:                                               ; preds = %1
  %15 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 53, i32 7
  br label %16

16:                                               ; preds = %19, %14
  %17 = phi ptr [ %9, %14 ], [ %21, %19 ]
  %18 = phi ptr [ null, %14 ], [ %21, %19 ]
  br label %19

19:                                               ; preds = %77, %16
  %20 = phi ptr [ %17, %16 ], [ %21, %77 ]
  %21 = getelementptr inbounds i8, ptr %20, i64 1
  %22 = load i8, ptr %21, align 1, !tbaa !79
  switch i8 %22, label %77 [
    i8 13, label %23
    i8 10, label %23
    i8 92, label %16
    i8 63, label %56
  ], !prof !114

23:                                               ; preds = %19, %19
  %24 = getelementptr inbounds %struct.cpp_buffer, ptr %2, i64 0, i32 4
  %25 = load ptr, ptr %24, align 8, !tbaa !115
  %26 = icmp eq ptr %21, %25
  br i1 %26, label %160, label %27, !prof !116

27:                                               ; preds = %23
  %28 = icmp eq i8 %22, 13
  br i1 %28, label %29, label %35, !prof !116

29:                                               ; preds = %27
  %30 = getelementptr inbounds i8, ptr %20, i64 2
  %31 = load i8, ptr %30, align 1, !tbaa !79
  %32 = icmp eq i8 %31, 10
  br i1 %32, label %33, label %35

33:                                               ; preds = %29
  %34 = icmp eq ptr %30, %25
  br i1 %34, label %160, label %35

35:                                               ; preds = %33, %29, %27
  %36 = phi ptr [ %30, %33 ], [ %21, %29 ], [ %21, %27 ]
  %37 = icmp eq ptr %18, null
  br i1 %37, label %160, label %38, !prof !117

38:                                               ; preds = %35, %38
  %39 = phi i64 [ %40, %38 ], [ 1, %35 ]
  %40 = add nsw i64 %39, -1
  %41 = getelementptr inbounds i8, ptr %20, i64 %40
  %42 = load i8, ptr %41, align 1, !tbaa !79
  %43 = zext i8 %42 to i64
  %44 = getelementptr inbounds [256 x i16], ptr @_sch_istable, i64 0, i64 %43
  %45 = load i16, ptr %44, align 2, !tbaa !118
  %46 = and i16 %45, 2048
  %47 = icmp eq i16 %46, 0
  br i1 %47, label %48, label %38, !prof !119, !llvm.loop !120

48:                                               ; preds = %38
  %49 = getelementptr inbounds i8, ptr %20, i64 %40
  %50 = icmp eq ptr %49, %18
  br i1 %50, label %51, label %160, !prof !122

51:                                               ; preds = %48
  %52 = getelementptr inbounds i8, ptr %20, i64 %39
  %53 = icmp eq i64 %39, 1
  %54 = select i1 %53, i32 92, i32 32
  tail call fastcc void @add_line_note(ptr noundef nonnull %2, ptr noundef nonnull %18, i32 noundef %54) #18
  %55 = getelementptr inbounds i8, ptr %52, i64 -2
  store ptr %18, ptr %5, align 8, !tbaa !109
  br label %78

56:                                               ; preds = %19
  %57 = getelementptr inbounds i8, ptr %20, i64 2
  %58 = load i8, ptr %57, align 1, !tbaa !79
  %59 = icmp eq i8 %58, 63
  br i1 %59, label %60, label %77, !prof !123

60:                                               ; preds = %56
  %61 = getelementptr inbounds i8, ptr %20, i64 3
  %62 = load i8, ptr %61, align 1, !tbaa !79
  %63 = zext i8 %62 to i64
  %64 = getelementptr inbounds [256 x i8], ptr @_cpp_trigraph_map, i64 0, i64 %63
  %65 = load i8, ptr %64, align 1, !tbaa !79
  %66 = icmp eq i8 %65, 0
  br i1 %66, label %77, label %67, !prof !124

67:                                               ; preds = %60
  %68 = zext i8 %62 to i32
  tail call fastcc void @add_line_note(ptr noundef nonnull %2, ptr noundef nonnull %21, i32 noundef %68) #18
  %69 = load i8, ptr %15, align 1, !tbaa !125
  %70 = icmp eq i8 %69, 0
  br i1 %70, label %77, label %71

71:                                               ; preds = %67
  %72 = getelementptr inbounds i8, ptr %20, i64 3
  %73 = load i8, ptr %72, align 1, !tbaa !79
  %74 = zext i8 %73 to i64
  %75 = getelementptr inbounds [256 x i8], ptr @_cpp_trigraph_map, i64 0, i64 %74
  %76 = load i8, ptr %75, align 1, !tbaa !79
  store i8 %76, ptr %21, align 1, !tbaa !79
  br label %78

77:                                               ; preds = %19, %56, %60, %67
  br label %19

78:                                               ; preds = %71, %51
  %79 = phi ptr [ %36, %51 ], [ %72, %71 ]
  %80 = phi ptr [ %55, %51 ], [ %21, %71 ]
  %81 = getelementptr inbounds %struct.cpp_buffer, ptr %2, i64 0, i32 4
  br label %82

82:                                               ; preds = %88, %78
  %83 = phi ptr [ %79, %78 ], [ %89, %88 ]
  %84 = phi ptr [ %80, %78 ], [ %90, %88 ]
  %85 = getelementptr inbounds i8, ptr %83, i64 1
  %86 = load i8, ptr %85, align 1, !tbaa !79
  %87 = getelementptr inbounds i8, ptr %84, i64 1
  store i8 %86, ptr %87, align 1, !tbaa !79
  switch i8 %86, label %88 [
    i8 13, label %93
    i8 10, label %91
    i8 63, label %127
  ]

88:                                               ; preds = %82, %127, %131, %142, %138, %122
  %89 = phi ptr [ %103, %122 ], [ %132, %142 ], [ %85, %138 ], [ %85, %131 ], [ %85, %127 ], [ %85, %82 ]
  %90 = phi ptr [ %126, %122 ], [ %87, %142 ], [ %87, %138 ], [ %87, %131 ], [ %87, %127 ], [ %87, %82 ]
  br label %82

91:                                               ; preds = %82
  %92 = load ptr, ptr %81, align 8, !tbaa !115
  br label %101

93:                                               ; preds = %82
  %94 = load ptr, ptr %81, align 8, !tbaa !115
  %95 = icmp eq ptr %85, %94
  br i1 %95, label %160, label %96

96:                                               ; preds = %93
  %97 = getelementptr inbounds i8, ptr %83, i64 2
  %98 = load i8, ptr %97, align 1, !tbaa !79
  %99 = icmp eq i8 %98, 10
  %100 = select i1 %99, ptr %97, ptr %85
  br label %101

101:                                              ; preds = %91, %96
  %102 = phi ptr [ %92, %91 ], [ %94, %96 ]
  %103 = phi ptr [ %85, %91 ], [ %100, %96 ]
  %104 = icmp eq ptr %103, %102
  br i1 %104, label %160, label %105

105:                                              ; preds = %101
  %106 = load ptr, ptr %5, align 8, !tbaa !109
  br label %107

107:                                              ; preds = %105, %111
  %108 = phi i64 [ %112, %111 ], [ 1, %105 ]
  %109 = getelementptr inbounds i8, ptr %84, i64 %108
  %110 = icmp eq ptr %109, %106
  br i1 %110, label %160, label %111

111:                                              ; preds = %107
  %112 = add nsw i64 %108, -1
  %113 = getelementptr inbounds i8, ptr %84, i64 %112
  %114 = load i8, ptr %113, align 1, !tbaa !79
  %115 = zext i8 %114 to i64
  %116 = getelementptr inbounds [256 x i16], ptr @_sch_istable, i64 0, i64 %115
  %117 = load i16, ptr %116, align 2, !tbaa !118
  %118 = and i16 %117, 2048
  %119 = icmp eq i16 %118, 0
  br i1 %119, label %120, label %107, !llvm.loop !126

120:                                              ; preds = %111
  %121 = icmp eq i8 %114, 92
  br i1 %121, label %122, label %160

122:                                              ; preds = %120
  %123 = getelementptr inbounds i8, ptr %109, i64 -1
  %124 = icmp eq i64 %108, 1
  %125 = select i1 %124, i32 92, i32 32
  tail call fastcc void @add_line_note(ptr noundef nonnull %2, ptr noundef nonnull %123, i32 noundef %125) #18
  %126 = getelementptr inbounds i8, ptr %109, i64 -2
  store ptr %123, ptr %5, align 8, !tbaa !109
  br label %88

127:                                              ; preds = %82
  %128 = getelementptr inbounds i8, ptr %83, i64 2
  %129 = load i8, ptr %128, align 1, !tbaa !79
  %130 = icmp eq i8 %129, 63
  br i1 %130, label %131, label %88

131:                                              ; preds = %127
  %132 = getelementptr inbounds i8, ptr %83, i64 3
  %133 = load i8, ptr %132, align 1, !tbaa !79
  %134 = zext i8 %133 to i64
  %135 = getelementptr inbounds [256 x i8], ptr @_cpp_trigraph_map, i64 0, i64 %134
  %136 = load i8, ptr %135, align 1, !tbaa !79
  %137 = icmp eq i8 %136, 0
  br i1 %137, label %88, label %138

138:                                              ; preds = %131
  %139 = zext i8 %133 to i32
  tail call fastcc void @add_line_note(ptr noundef nonnull %2, ptr noundef nonnull %87, i32 noundef %139) #18
  %140 = load i8, ptr %15, align 1, !tbaa !125
  %141 = icmp eq i8 %140, 0
  br i1 %141, label %88, label %142

142:                                              ; preds = %138
  %143 = load i8, ptr %132, align 1, !tbaa !79
  %144 = zext i8 %143 to i64
  %145 = getelementptr inbounds [256 x i8], ptr @_cpp_trigraph_map, i64 0, i64 %144
  %146 = load i8, ptr %145, align 1, !tbaa !79
  store i8 %146, ptr %87, align 1, !tbaa !79
  br label %88

147:                                              ; preds = %1, %147
  %148 = phi ptr [ %149, %147 ], [ %9, %1 ]
  %149 = getelementptr inbounds i8, ptr %148, i64 1
  %150 = load i8, ptr %149, align 1, !tbaa !79
  switch i8 %150, label %147 [
    i8 13, label %151
    i8 10, label %160
  ], !prof !127

151:                                              ; preds = %147
  %152 = getelementptr inbounds %struct.cpp_buffer, ptr %2, i64 0, i32 4
  %153 = load ptr, ptr %152, align 8, !tbaa !115
  %154 = icmp eq ptr %149, %153
  br i1 %154, label %160, label %155

155:                                              ; preds = %151
  %156 = getelementptr inbounds i8, ptr %148, i64 2
  %157 = load i8, ptr %156, align 1, !tbaa !79
  %158 = icmp eq i8 %157, 10
  %159 = select i1 %158, ptr %156, ptr %149
  br label %160

160:                                              ; preds = %147, %93, %120, %101, %107, %155, %23, %33, %35, %48, %151
  %161 = phi ptr [ %149, %151 ], [ %21, %23 ], [ %30, %33 ], [ %36, %35 ], [ %36, %48 ], [ %159, %155 ], [ %103, %107 ], [ %85, %93 ], [ %103, %120 ], [ %103, %101 ], [ %149, %147 ]
  %162 = phi ptr [ %149, %151 ], [ %21, %23 ], [ %21, %33 ], [ %21, %35 ], [ %21, %48 ], [ %149, %155 ], [ %87, %107 ], [ %87, %101 ], [ %87, %120 ], [ %87, %93 ], [ %149, %147 ]
  store i8 10, ptr %162, align 1, !tbaa !79
  %163 = getelementptr inbounds i8, ptr %162, i64 1
  tail call fastcc void @add_line_note(ptr noundef nonnull %2, ptr noundef nonnull %163, i32 noundef 10) #18
  %164 = getelementptr inbounds i8, ptr %161, i64 1
  store ptr %164, ptr %5, align 8, !tbaa !109
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @add_line_note(ptr nocapture noundef %0, ptr noundef %1, i32 noundef %2) unnamed_addr #3 !prof !88 !PGOFuncName !128 {
  %4 = getelementptr inbounds %struct.cpp_buffer, ptr %0, i64 0, i32 7
  %5 = load i32, ptr %4, align 4, !tbaa !106
  %6 = getelementptr inbounds %struct.cpp_buffer, ptr %0, i64 0, i32 8
  %7 = load i32, ptr %6, align 8, !tbaa !129
  %8 = icmp eq i32 %5, %7
  br i1 %8, label %12, label %9, !prof !130

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct.cpp_buffer, ptr %0, i64 0, i32 5
  %11 = load ptr, ptr %10, align 8, !tbaa !131
  br label %21

12:                                               ; preds = %3
  %13 = shl i32 %5, 1
  %14 = add i32 %13, 200
  store i32 %14, ptr %6, align 8, !tbaa !129
  %15 = getelementptr inbounds %struct.cpp_buffer, ptr %0, i64 0, i32 5
  %16 = load ptr, ptr %15, align 8, !tbaa !131
  %17 = zext i32 %14 to i64
  %18 = shl nuw nsw i64 %17, 4
  %19 = tail call ptr @xrealloc(ptr noundef %16, i64 noundef %18) #20
  store ptr %19, ptr %15, align 8, !tbaa !131
  %20 = load i32, ptr %4, align 4, !tbaa !106
  br label %21

21:                                               ; preds = %9, %12
  %22 = phi i32 [ %5, %9 ], [ %20, %12 ]
  %23 = phi ptr [ %11, %9 ], [ %19, %12 ]
  %24 = zext i32 %22 to i64
  %25 = getelementptr inbounds %struct._cpp_line_note, ptr %23, i64 %24
  store ptr %1, ptr %25, align 8, !tbaa !132
  %26 = getelementptr inbounds %struct._cpp_line_note, ptr %23, i64 %24, i32 1
  store i32 %2, ptr %26, align 8, !tbaa !134
  %27 = add i32 %22, 1
  store i32 %27, ptr %4, align 4, !tbaa !106
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: optsize
declare ptr @xrealloc(ptr noundef, i64 noundef) local_unnamed_addr #5

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @_cpp_process_line_notes(ptr noundef %0, i32 noundef %1) local_unnamed_addr #3 !prof !135 {
  %3 = load ptr, ptr %0, align 8, !tbaa !89
  %4 = getelementptr inbounds %struct.cpp_buffer, ptr %3, i64 0, i32 5
  %5 = getelementptr inbounds %struct.cpp_buffer, ptr %3, i64 0, i32 6
  %6 = load ptr, ptr %4, align 8, !tbaa !131
  %7 = load i32, ptr %5, align 8, !tbaa !108
  %8 = zext i32 %7 to i64
  %9 = getelementptr inbounds %struct._cpp_line_note, ptr %6, i64 %8
  %10 = load ptr, ptr %9, align 8, !tbaa !132
  %11 = load ptr, ptr %3, align 8, !tbaa !111
  %12 = icmp ugt ptr %10, %11
  br i1 %12, label %112, label %13, !prof !136

13:                                               ; preds = %2
  %14 = getelementptr inbounds %struct.cpp_buffer, ptr %3, i64 0, i32 1
  br label %15

15:                                               ; preds = %13, %104
  %16 = phi ptr [ %10, %13 ], [ %109, %104 ]
  %17 = phi ptr [ %9, %13 ], [ %108, %104 ]
  %18 = phi i64 [ %8, %13 ], [ %107, %104 ]
  %19 = phi i32 [ %7, %13 ], [ %106, %104 ]
  %20 = phi ptr [ %6, %13 ], [ %105, %104 ]
  %21 = add i32 %19, 1
  store i32 %21, ptr %5, align 8, !tbaa !108
  %22 = getelementptr inbounds i8, ptr %16, i64 1
  %23 = load ptr, ptr %14, align 8, !tbaa !110
  %24 = ptrtoint ptr %22 to i64
  %25 = ptrtoint ptr %23 to i64
  %26 = sub i64 %24, %25
  %27 = trunc i64 %26 to i32
  %28 = getelementptr inbounds %struct._cpp_line_note, ptr %20, i64 %18, i32 1
  %29 = load i32, ptr %28, align 8, !tbaa !134
  switch i32 %29, label %74 [
    i32 92, label %30
    i32 32, label %30
  ]

30:                                               ; preds = %15, %15
  %31 = icmp ne i32 %1, 0
  %32 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 3
  %33 = getelementptr inbounds %struct.cpp_buffer, ptr %3, i64 0, i32 2
  %34 = getelementptr inbounds %struct.cpp_buffer, ptr %3, i64 0, i32 4
  %35 = icmp ne i32 %29, 32
  %36 = or i1 %31, %35
  br i1 %36, label %42, label %37

37:                                               ; preds = %30
  %38 = load ptr, ptr %32, align 8, !tbaa !137
  %39 = getelementptr inbounds %struct.line_maps, ptr %38, i64 0, i32 8
  %40 = load i32, ptr %39, align 4, !tbaa !138
  %41 = tail call zeroext i8 (ptr, i32, i32, i32, ptr, ...) @cpp_error_with_line(ptr noundef nonnull %0, i32 noundef 0, i32 noundef %40, i32 noundef %27, ptr noundef nonnull @.str) #20
  br label %42

42:                                               ; preds = %37, %30
  %43 = load ptr, ptr %33, align 8, !tbaa !109
  %44 = load ptr, ptr %34, align 8, !tbaa !115
  %45 = icmp ugt ptr %43, %44
  br i1 %45, label %46, label %52

46:                                               ; preds = %42
  %47 = load ptr, ptr %32, align 8, !tbaa !137
  %48 = getelementptr inbounds %struct.line_maps, ptr %47, i64 0, i32 8
  %49 = load i32, ptr %48, align 4, !tbaa !138
  %50 = tail call zeroext i8 (ptr, i32, i32, i32, ptr, ...) @cpp_error_with_line(ptr noundef nonnull %0, i32 noundef 2, i32 noundef %49, i32 noundef %27, ptr noundef nonnull @.str.1) #20
  %51 = load ptr, ptr %34, align 8, !tbaa !115
  store ptr %51, ptr %33, align 8, !tbaa !109
  br label %52

52:                                               ; preds = %46, %42
  %53 = load ptr, ptr %17, align 8, !tbaa !132
  store ptr %53, ptr %14, align 8, !tbaa !110
  %54 = load ptr, ptr %32, align 8, !tbaa !137
  %55 = load ptr, ptr %54, align 8, !tbaa !140
  %56 = getelementptr inbounds %struct.line_maps, ptr %54, i64 0, i32 2
  %57 = load i32, ptr %56, align 4, !tbaa !141
  %58 = add i32 %57, -1
  %59 = zext i32 %58 to i64
  %60 = getelementptr inbounds %struct.line_maps, ptr %54, i64 0, i32 8
  %61 = load i32, ptr %60, align 4, !tbaa !138
  %62 = getelementptr inbounds %struct.line_map, ptr %55, i64 %59, i32 2
  %63 = load i32, ptr %62, align 4, !tbaa !142
  %64 = sub i32 %61, %63
  %65 = getelementptr inbounds %struct.line_map, ptr %55, i64 %59, i32 6
  %66 = load i8, ptr %65, align 2
  %67 = zext nneg i8 %66 to i32
  %68 = lshr i32 %64, %67
  %69 = getelementptr inbounds %struct.line_map, ptr %55, i64 %59, i32 1
  %70 = load i32, ptr %69, align 8, !tbaa !144
  %71 = add i32 %70, 1
  %72 = add i32 %71, %68
  %73 = tail call i32 @linemap_line_start(ptr noundef nonnull %54, i32 noundef %72, i32 noundef 0) #20
  br label %104

74:                                               ; preds = %15
  %75 = zext i32 %29 to i64
  %76 = getelementptr inbounds [256 x i8], ptr @_cpp_trigraph_map, i64 0, i64 %75
  %77 = load i8, ptr %76, align 1, !tbaa !79
  %78 = icmp eq i8 %77, 0
  br i1 %78, label %101, label %79

79:                                               ; preds = %74
  %80 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 53, i32 15
  %81 = load i8, ptr %80, align 1, !tbaa !145
  %82 = icmp eq i8 %81, 0
  br i1 %82, label %104, label %83

83:                                               ; preds = %79
  %84 = icmp eq i32 %1, 0
  br i1 %84, label %88, label %85

85:                                               ; preds = %83
  %86 = tail call fastcc zeroext i8 @warn_in_comment(ptr noundef nonnull %0, ptr noundef nonnull %17) #18, !range !146
  %87 = icmp eq i8 %86, 0
  br i1 %87, label %104, label %88

88:                                               ; preds = %85, %83
  %89 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 3
  %90 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 53, i32 7
  %91 = load i8, ptr %90, align 1, !tbaa !125
  %92 = icmp eq i8 %91, 0
  %93 = load ptr, ptr %89, align 8, !tbaa !137
  %94 = getelementptr inbounds %struct.line_maps, ptr %93, i64 0, i32 8
  %95 = load i32, ptr %94, align 4, !tbaa !138
  br i1 %92, label %99, label %96

96:                                               ; preds = %88
  %97 = zext i8 %77 to i32
  %98 = tail call zeroext i8 (ptr, i32, i32, i32, ptr, ...) @cpp_error_with_line(ptr noundef nonnull %0, i32 noundef 0, i32 noundef %95, i32 noundef %27, ptr noundef nonnull @.str.2, i32 noundef %29, i32 noundef %97) #20
  br label %104

99:                                               ; preds = %88
  %100 = tail call zeroext i8 (ptr, i32, i32, i32, ptr, ...) @cpp_error_with_line(ptr noundef nonnull %0, i32 noundef 0, i32 noundef %95, i32 noundef %27, ptr noundef nonnull @.str.3, i32 noundef %29) #20
  br label %104

101:                                              ; preds = %74
  %102 = icmp eq i32 %29, 0
  br i1 %102, label %104, label %103

103:                                              ; preds = %101
  tail call void @abort() #21
  unreachable

104:                                              ; preds = %52, %101, %79, %85, %99, %96
  %105 = load ptr, ptr %4, align 8, !tbaa !131
  %106 = load i32, ptr %5, align 8, !tbaa !108
  %107 = zext i32 %106 to i64
  %108 = getelementptr inbounds %struct._cpp_line_note, ptr %105, i64 %107
  %109 = load ptr, ptr %108, align 8, !tbaa !132
  %110 = load ptr, ptr %3, align 8, !tbaa !111
  %111 = icmp ugt ptr %109, %110
  br i1 %111, label %112, label %15, !prof !147

112:                                              ; preds = %104, %2
  ret void
}

; Function Attrs: optsize
declare zeroext i8 @cpp_error_with_line(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: optsize
declare i32 @linemap_line_start(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable
define internal fastcc zeroext i8 @warn_in_comment(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) unnamed_addr #6 !prof !78 !PGOFuncName !148 {
  %3 = getelementptr inbounds %struct._cpp_line_note, ptr %1, i64 0, i32 1
  %4 = load i32, ptr %3, align 8, !tbaa !134
  %5 = icmp eq i32 %4, 47
  br i1 %5, label %6, label %33

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 53, i32 7
  %8 = load i8, ptr %7, align 1, !tbaa !125
  %9 = icmp eq i8 %8, 0
  br i1 %9, label %15, label %10

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct._cpp_line_note, ptr %1, i64 1
  %12 = load ptr, ptr %11, align 8, !tbaa !132
  %13 = load ptr, ptr %1, align 8, !tbaa !132
  %14 = icmp eq ptr %12, %13
  br label %33

15:                                               ; preds = %6
  %16 = load ptr, ptr %1, align 8, !tbaa !132
  %17 = getelementptr inbounds i8, ptr %16, i64 3
  br label %18

18:                                               ; preds = %18, %15
  %19 = phi ptr [ %17, %15 ], [ %26, %18 ]
  %20 = load i8, ptr %19, align 1, !tbaa !79
  %21 = zext i8 %20 to i64
  %22 = getelementptr inbounds [256 x i16], ptr @_sch_istable, i64 0, i64 %21
  %23 = load i16, ptr %22, align 2, !tbaa !118
  %24 = and i16 %23, 2048
  %25 = icmp eq i16 %24, 0
  %26 = getelementptr inbounds i8, ptr %19, i64 1
  br i1 %25, label %27, label %18, !llvm.loop !149

27:                                               ; preds = %18
  %28 = icmp eq i8 %20, 10
  br i1 %28, label %29, label %33

29:                                               ; preds = %27
  %30 = getelementptr inbounds %struct._cpp_line_note, ptr %1, i64 1
  %31 = load ptr, ptr %30, align 8, !tbaa !132
  %32 = icmp ult ptr %19, %31
  br label %33

33:                                               ; preds = %27, %29, %2, %10
  %34 = phi i1 [ %14, %10 ], [ false, %2 ], [ false, %27 ], [ %32, %29 ]
  %35 = zext i1 %34 to i8
  ret i8 %35
}

; Function Attrs: noreturn nounwind optsize
declare void @abort() local_unnamed_addr #7

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef zeroext i8 @_cpp_skip_block_comment(ptr noundef %0) local_unnamed_addr #3 !prof !135 {
  %2 = load ptr, ptr %0, align 8, !tbaa !89
  %3 = load ptr, ptr %2, align 8, !tbaa !111
  %4 = getelementptr inbounds i8, ptr %3, i64 1
  %5 = load i8, ptr %4, align 1, !tbaa !79
  %6 = icmp eq i8 %5, 47
  br i1 %6, label %7, label %9, !prof !150

7:                                                ; preds = %1
  %8 = getelementptr inbounds i8, ptr %3, i64 2
  br label %9

9:                                                ; preds = %7, %1
  %10 = phi ptr [ %8, %7 ], [ %4, %1 ]
  br label %11

11:                                               ; preds = %78, %9
  %12 = phi ptr [ %10, %9 ], [ %79, %78 ]
  %13 = getelementptr inbounds i8, ptr %12, i64 1
  %14 = load i8, ptr %12, align 1, !tbaa !79
  switch i8 %14, label %78 [
    i8 47, label %15
    i8 10, label %42
  ], !prof !151

15:                                               ; preds = %11
  %16 = getelementptr inbounds i8, ptr %12, i64 -1
  %17 = load i8, ptr %16, align 1, !tbaa !79
  %18 = icmp eq i8 %17, 42
  br i1 %18, label %80, label %19, !prof !152

19:                                               ; preds = %15
  %20 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 53, i32 13
  %21 = load i8, ptr %20, align 1, !tbaa !153
  %22 = icmp eq i8 %21, 0
  br i1 %22, label %78, label %23, !prof !154

23:                                               ; preds = %19
  %24 = load i8, ptr %13, align 1, !tbaa !79
  %25 = icmp eq i8 %24, 42
  br i1 %25, label %26, label %78

26:                                               ; preds = %23
  %27 = getelementptr inbounds i8, ptr %12, i64 2
  %28 = load i8, ptr %27, align 1, !tbaa !79
  %29 = icmp eq i8 %28, 47
  br i1 %29, label %78, label %30

30:                                               ; preds = %26
  %31 = getelementptr inbounds %struct.cpp_buffer, ptr %2, i64 0, i32 1
  %32 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 3
  store ptr %13, ptr %2, align 8, !tbaa !111
  %33 = load ptr, ptr %32, align 8, !tbaa !137
  %34 = getelementptr inbounds %struct.line_maps, ptr %33, i64 0, i32 8
  %35 = load i32, ptr %34, align 4, !tbaa !138
  %36 = load ptr, ptr %31, align 8, !tbaa !110
  %37 = ptrtoint ptr %13 to i64
  %38 = ptrtoint ptr %36 to i64
  %39 = sub i64 %37, %38
  %40 = trunc i64 %39 to i32
  %41 = tail call zeroext i8 (ptr, i32, i32, i32, ptr, ...) @cpp_error_with_line(ptr noundef nonnull %0, i32 noundef 0, i32 noundef %35, i32 noundef %40, ptr noundef nonnull @.str.4) #20
  br label %78

42:                                               ; preds = %11
  %43 = getelementptr inbounds %struct.cpp_buffer, ptr %2, i64 0, i32 2
  %44 = getelementptr inbounds %struct.cpp_buffer, ptr %2, i64 0, i32 4
  store ptr %12, ptr %2, align 8, !tbaa !111
  tail call void @_cpp_process_line_notes(ptr noundef nonnull %0, i32 noundef 1) #18
  %45 = load ptr, ptr %43, align 8, !tbaa !109
  %46 = load ptr, ptr %44, align 8, !tbaa !115
  %47 = icmp ult ptr %45, %46
  br i1 %47, label %48, label %81

48:                                               ; preds = %42
  %49 = getelementptr inbounds %struct.cpp_buffer, ptr %2, i64 0, i32 1
  %50 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 3
  tail call void @_cpp_clean_line(ptr noundef nonnull %0) #18
  %51 = load ptr, ptr %43, align 8, !tbaa !109
  %52 = load ptr, ptr %49, align 8, !tbaa !110
  %53 = ptrtoint ptr %51 to i64
  %54 = ptrtoint ptr %52 to i64
  %55 = sub i64 %53, %54
  %56 = trunc i64 %55 to i32
  %57 = load ptr, ptr %50, align 8, !tbaa !137
  %58 = load ptr, ptr %57, align 8, !tbaa !140
  %59 = getelementptr inbounds %struct.line_maps, ptr %57, i64 0, i32 2
  %60 = load i32, ptr %59, align 4, !tbaa !141
  %61 = add i32 %60, -1
  %62 = zext i32 %61 to i64
  %63 = getelementptr inbounds %struct.line_maps, ptr %57, i64 0, i32 8
  %64 = load i32, ptr %63, align 4, !tbaa !138
  %65 = getelementptr inbounds %struct.line_map, ptr %58, i64 %62, i32 2
  %66 = load i32, ptr %65, align 4, !tbaa !142
  %67 = sub i32 %64, %66
  %68 = getelementptr inbounds %struct.line_map, ptr %58, i64 %62, i32 6
  %69 = load i8, ptr %68, align 2
  %70 = zext nneg i8 %69 to i32
  %71 = lshr i32 %67, %70
  %72 = getelementptr inbounds %struct.line_map, ptr %58, i64 %62, i32 1
  %73 = load i32, ptr %72, align 8, !tbaa !144
  %74 = add i32 %73, 1
  %75 = add i32 %74, %71
  %76 = tail call i32 @linemap_line_start(ptr noundef nonnull %57, i32 noundef %75, i32 noundef %56) #20
  %77 = load ptr, ptr %2, align 8, !tbaa !111
  br label %78

78:                                               ; preds = %48, %11, %19, %23, %26, %30
  %79 = phi ptr [ %13, %30 ], [ %13, %26 ], [ %13, %23 ], [ %13, %19 ], [ %13, %11 ], [ %77, %48 ]
  br label %11

80:                                               ; preds = %15
  store ptr %13, ptr %2, align 8, !tbaa !111
  tail call void @_cpp_process_line_notes(ptr noundef nonnull %0, i32 noundef 1) #18
  br label %81

81:                                               ; preds = %42, %80
  %82 = phi i8 [ 0, %80 ], [ 1, %42 ]
  ret i8 %82
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @_cpp_lex_identifier(ptr noundef %0, ptr noundef %1) local_unnamed_addr #3 !prof !78 {
  %3 = tail call fastcc ptr @lex_identifier_intern(ptr noundef %0, ptr noundef %1) #18
  ret ptr %3
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @lex_identifier_intern(ptr noundef %0, ptr noundef %1) unnamed_addr #3 !prof !78 !PGOFuncName !155 {
  %3 = load i8, ptr %1, align 1, !tbaa !79
  %4 = zext i8 %3 to i32
  %5 = add nsw i32 %4, -113
  %6 = getelementptr inbounds i8, ptr %1, i64 1
  %7 = load i8, ptr %6, align 1, !tbaa !79
  %8 = zext i8 %7 to i64
  %9 = getelementptr inbounds [256 x i16], ptr @_sch_istable, i64 0, i64 %8
  %10 = load i16, ptr %9, align 2, !tbaa !118
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
  %22 = load i8, ptr %21, align 1, !tbaa !79
  %23 = zext i8 %22 to i64
  %24 = getelementptr inbounds [256 x i16], ptr @_sch_istable, i64 0, i64 %23
  %25 = load i16, ptr %24, align 2, !tbaa !118
  %26 = and i16 %25, 516
  %27 = icmp eq i16 %26, 0
  br i1 %27, label %28, label %13, !llvm.loop !156

28:                                               ; preds = %13, %2
  %29 = phi i32 [ %5, %2 ], [ %20, %13 ]
  %30 = phi ptr [ %6, %2 ], [ %21, %13 ]
  %31 = ptrtoint ptr %30 to i64
  %32 = ptrtoint ptr %1 to i64
  %33 = sub i64 %31, %32
  %34 = trunc i64 %33 to i32
  %35 = add i32 %29, %34
  %36 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 50
  %37 = load ptr, ptr %36, align 8, !tbaa !157
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
  %48 = load i8, ptr %47, align 2, !tbaa !158
  %49 = icmp eq i8 %48, 0
  br i1 %49, label %50, label %76

50:                                               ; preds = %46
  %51 = and i32 %43, 2
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %60, label %53

53:                                               ; preds = %50
  %54 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 2, i32 7
  %55 = load i8, ptr %54, align 1, !tbaa !159
  %56 = icmp eq i8 %55, 0
  br i1 %56, label %57, label %60

57:                                               ; preds = %53
  %58 = load ptr, ptr %39, align 8, !tbaa !82
  %59 = tail call zeroext i8 (ptr, i32, ptr, ...) @cpp_error(ptr noundef nonnull %0, i32 noundef 3, ptr noundef nonnull @.str.5, ptr noundef %58) #20
  br label %60

60:                                               ; preds = %57, %53, %50
  %61 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 54, i32 3
  %62 = load ptr, ptr %61, align 8, !tbaa !160
  %63 = icmp eq ptr %39, %62
  br i1 %63, label %64, label %70

64:                                               ; preds = %60
  %65 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 2, i32 6
  %66 = load i8, ptr %65, align 2, !tbaa !161
  %67 = icmp eq i8 %66, 0
  br i1 %67, label %68, label %70

68:                                               ; preds = %64
  %69 = tail call zeroext i8 (ptr, i32, ptr, ...) @cpp_error(ptr noundef nonnull %0, i32 noundef 2, ptr noundef nonnull @.str.6) #20
  br label %70

70:                                               ; preds = %68, %64, %60
  %71 = load i16, ptr %40, align 2
  %72 = icmp sgt i16 %71, -1
  br i1 %72, label %76, label %73

73:                                               ; preds = %70
  %74 = load ptr, ptr %39, align 8, !tbaa !82
  %75 = tail call zeroext i8 (ptr, i32, ptr, ...) @cpp_error(ptr noundef nonnull %0, i32 noundef 0, ptr noundef nonnull @.str.7, ptr noundef %74) #20
  br label %76

76:                                               ; preds = %70, %73, %46, %28
  ret ptr %39
}

; Function Attrs: optsize
declare ptr @ht_lookup_with_hash(ptr noundef, ptr noundef, i64 noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: optsize
declare zeroext i8 @cpp_error(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local nonnull ptr @cpp_get_comments(ptr noundef readnone %0) local_unnamed_addr #8 !prof !78 {
  %2 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 62
  ret ptr %2
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @_cpp_init_tokenrun(ptr nocapture noundef writeonly %0, i32 noundef %1) local_unnamed_addr #3 !prof !162 {
  %3 = zext i32 %1 to i64
  %4 = mul nuw nsw i64 %3, 24
  %5 = tail call ptr @xmalloc(i64 noundef %4) #20
  %6 = getelementptr inbounds %struct.tokenrun, ptr %0, i64 0, i32 2
  store ptr %5, ptr %6, align 8, !tbaa !163
  %7 = getelementptr inbounds %struct.cpp_token, ptr %5, i64 %3
  %8 = getelementptr inbounds %struct.tokenrun, ptr %0, i64 0, i32 3
  store ptr %7, ptr %8, align 8, !tbaa !164
  store ptr null, ptr %0, align 8, !tbaa !165
  ret void
}

; Function Attrs: optsize
declare ptr @xmalloc(i64 noundef) local_unnamed_addr #5

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @cpp_peek_token(ptr noundef %0, i32 noundef %1) local_unnamed_addr #3 !prof !78 {
  %3 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 9
  %4 = load ptr, ptr %3, align 8, !tbaa !166
  %5 = getelementptr inbounds %struct.cpp_context, ptr %4, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !167
  %7 = icmp eq ptr %6, null
  br i1 %7, label %43, label %8

8:                                                ; preds = %2, %37
  %9 = phi ptr [ %41, %37 ], [ %6, %2 ]
  %10 = phi i32 [ %39, %37 ], [ %1, %2 ]
  %11 = phi ptr [ %9, %37 ], [ %4, %2 ]
  %12 = getelementptr inbounds %struct.cpp_context, ptr %11, i64 0, i32 5
  %13 = load i8, ptr %12, align 8, !tbaa !168
  %14 = icmp eq i8 %13, 0
  %15 = getelementptr inbounds %struct.cpp_context, ptr %11, i64 0, i32 2
  %16 = getelementptr inbounds %struct.cpp_context, ptr %11, i64 0, i32 2, i32 0, i32 1
  %17 = load ptr, ptr %16, align 8, !tbaa !79
  %18 = load ptr, ptr %15, align 8, !tbaa !79
  %19 = ptrtoint ptr %17 to i64
  %20 = ptrtoint ptr %18 to i64
  %21 = sub i64 %19, %20
  br i1 %14, label %22, label %26

22:                                               ; preds = %8
  %23 = lshr exact i64 %21, 3
  %24 = trunc i64 %23 to i32
  %25 = icmp slt i32 %10, %24
  br i1 %25, label %33, label %37

26:                                               ; preds = %8
  %27 = sdiv exact i64 %21, 24
  %28 = trunc i64 %27 to i32
  %29 = icmp slt i32 %10, %28
  br i1 %29, label %30, label %37

30:                                               ; preds = %26
  %31 = sext i32 %10 to i64
  %32 = getelementptr inbounds %struct.cpp_token, ptr %18, i64 %31
  br label %61

33:                                               ; preds = %22
  %34 = sext i32 %10 to i64
  %35 = getelementptr inbounds ptr, ptr %18, i64 %34
  %36 = load ptr, ptr %35, align 8, !tbaa !169
  br label %61

37:                                               ; preds = %22, %26
  %38 = phi i32 [ %28, %26 ], [ %24, %22 ]
  %39 = sub nsw i32 %10, %38
  %40 = getelementptr inbounds %struct.cpp_context, ptr %9, i64 0, i32 1
  %41 = load ptr, ptr %40, align 8, !tbaa !167
  %42 = icmp eq ptr %41, null
  br i1 %42, label %43, label %8

43:                                               ; preds = %37, %2
  %44 = phi i32 [ %1, %2 ], [ %39, %37 ]
  %45 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 33
  %46 = load i32, ptr %45, align 4, !tbaa !170
  %47 = add i32 %46, 1
  store i32 %47, ptr %45, align 4, !tbaa !170
  br label %48

48:                                               ; preds = %54, %43
  %49 = phi i32 [ %44, %43 ], [ %55, %54 ]
  %50 = tail call ptr @_cpp_lex_token(ptr noundef %0) #18
  %51 = getelementptr inbounds %struct.cpp_token, ptr %50, i64 0, i32 1
  %52 = load i8, ptr %51, align 4
  %53 = icmp eq i8 %52, 22
  br i1 %53, label %61, label %54

54:                                               ; preds = %48
  %55 = add nsw i32 %49, -1
  %56 = icmp eq i32 %49, 0
  br i1 %56, label %57, label %48, !llvm.loop !171

57:                                               ; preds = %54
  %58 = add nsw i32 %44, 1
  tail call void @_cpp_backup_tokens_direct(ptr noundef %0, i32 noundef %58) #20
  %59 = load i32, ptr %45, align 4, !tbaa !170
  %60 = add i32 %59, -1
  store i32 %60, ptr %45, align 4, !tbaa !170
  br label %61

61:                                               ; preds = %48, %30, %33, %57
  %62 = phi ptr [ %50, %57 ], [ %36, %33 ], [ %32, %30 ], [ %50, %48 ]
  ret ptr %62
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @_cpp_lex_token(ptr noundef %0) local_unnamed_addr #3 !prof !172 {
  %2 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 29
  %3 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 31
  br label %4

4:                                                ; preds = %60, %1
  %5 = load ptr, ptr %2, align 8, !tbaa !173
  %6 = load ptr, ptr %3, align 8, !tbaa !174
  %7 = getelementptr inbounds %struct.tokenrun, ptr %6, i64 0, i32 3
  %8 = load ptr, ptr %7, align 8, !tbaa !164
  %9 = icmp eq ptr %5, %8
  br i1 %9, label %10, label %14, !prof !175

10:                                               ; preds = %4
  %11 = tail call fastcc ptr @next_tokenrun(ptr noundef nonnull %6) #18
  store ptr %11, ptr %3, align 8, !tbaa !174
  %12 = getelementptr inbounds %struct.tokenrun, ptr %11, i64 0, i32 2
  %13 = load ptr, ptr %12, align 8, !tbaa !163
  store ptr %13, ptr %2, align 8, !tbaa !173
  br label %18

14:                                               ; preds = %4
  %15 = getelementptr inbounds %struct.tokenrun, ptr %6, i64 0, i32 2
  %16 = load ptr, ptr %15, align 8, !tbaa !163
  %17 = icmp ult ptr %5, %16
  br i1 %17, label %24, label %18, !prof !176

18:                                               ; preds = %10, %14
  %19 = phi ptr [ %13, %10 ], [ %5, %14 ]
  %20 = phi ptr [ %11, %10 ], [ %6, %14 ]
  %21 = getelementptr inbounds %struct.tokenrun, ptr %20, i64 0, i32 3
  %22 = load ptr, ptr %21, align 8, !tbaa !164
  %23 = icmp ult ptr %19, %22
  br i1 %23, label %25, label %24, !prof !177

24:                                               ; preds = %18, %14
  tail call void @abort() #21
  unreachable

25:                                               ; preds = %18
  %26 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 32
  %27 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 2, i32 12
  %28 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 2, i32 2
  %29 = load i32, ptr %26, align 8, !tbaa !178
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %34, label %31, !prof !179

31:                                               ; preds = %25
  %32 = add i32 %29, -1
  store i32 %32, ptr %26, align 8, !tbaa !178
  %33 = getelementptr inbounds %struct.cpp_token, ptr %19, i64 1
  store ptr %33, ptr %2, align 8, !tbaa !173
  br label %36

34:                                               ; preds = %25
  %35 = tail call ptr @_cpp_lex_direct(ptr noundef nonnull %0) #18
  br label %36

36:                                               ; preds = %34, %31
  %37 = phi ptr [ %19, %31 ], [ %35, %34 ]
  %38 = getelementptr inbounds %struct.cpp_token, ptr %37, i64 0, i32 2
  %39 = load i16, ptr %38, align 2, !tbaa !180
  %40 = zext i16 %39 to i32
  %41 = and i32 %40, 64
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %77, label %43, !prof !181

43:                                               ; preds = %36
  %44 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 2, i32 9
  %45 = getelementptr inbounds %struct.cpp_token, ptr %37, i64 0, i32 1
  %46 = load i8, ptr %45, align 4
  %47 = icmp eq i8 %46, 37
  br i1 %47, label %48, label %61, !prof !182

48:                                               ; preds = %43
  %49 = load i8, ptr %44, align 1, !tbaa !183
  %50 = icmp eq i8 %49, 1
  br i1 %50, label %61, label %51

51:                                               ; preds = %48
  %52 = and i32 %40, 1
  %53 = tail call i32 @_cpp_handle_directive(ptr noundef nonnull %0, i32 noundef %52) #20
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %66, label %55

55:                                               ; preds = %51
  %56 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 11, i32 1
  %57 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 11
  %58 = load i8, ptr %56, align 4
  %59 = icmp eq i8 %58, 72
  br i1 %59, label %60, label %66

60:                                               ; preds = %55, %89
  br label %4

61:                                               ; preds = %48, %43
  %62 = load i8, ptr %27, align 8, !tbaa !184
  %63 = icmp eq i8 %62, 0
  br i1 %63, label %66, label %64, !prof !185

64:                                               ; preds = %61
  %65 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 11
  br label %66

66:                                               ; preds = %55, %61, %64, %51
  %67 = phi ptr [ %37, %51 ], [ %65, %64 ], [ %37, %61 ], [ %57, %55 ]
  %68 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 49
  %69 = load ptr, ptr %68, align 8, !tbaa !186
  %70 = icmp eq ptr %69, null
  br i1 %70, label %77, label %71, !prof !182

71:                                               ; preds = %66
  %72 = load i8, ptr %28, align 2, !tbaa !158
  %73 = icmp eq i8 %72, 0
  br i1 %73, label %74, label %77, !prof !185

74:                                               ; preds = %71
  %75 = load i8, ptr %44, align 1, !tbaa !183
  %76 = zext i8 %75 to i32
  tail call void %69(ptr noundef nonnull %0, ptr noundef nonnull %67, i32 noundef %76) #20
  br label %77

77:                                               ; preds = %66, %71, %74, %36
  %78 = phi ptr [ %67, %71 ], [ %67, %74 ], [ %67, %66 ], [ %37, %36 ]
  %79 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 2
  %80 = load i8, ptr %79, align 8, !tbaa !187
  %81 = icmp eq i8 %80, 0
  br i1 %81, label %82, label %93, !prof !188

82:                                               ; preds = %77
  %83 = load i8, ptr %27, align 8, !tbaa !184
  %84 = icmp eq i8 %83, 0
  br i1 %84, label %85, label %93, !prof !189

85:                                               ; preds = %82
  %86 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 28
  store i8 0, ptr %86, align 8, !tbaa !190
  %87 = load i8, ptr %28, align 2, !tbaa !158
  %88 = icmp eq i8 %87, 0
  br i1 %88, label %93, label %89, !prof !189

89:                                               ; preds = %85
  %90 = getelementptr inbounds %struct.cpp_token, ptr %78, i64 0, i32 1
  %91 = load i8, ptr %90, align 4
  %92 = icmp eq i8 %91, 22
  br i1 %92, label %93, label %60

93:                                               ; preds = %85, %89, %77, %82
  ret ptr %78
}

; Function Attrs: optsize
declare void @_cpp_backup_tokens_direct(ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef ptr @_cpp_temp_token(ptr nocapture noundef %0) local_unnamed_addr #3 !prof !78 {
  %2 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 31
  %3 = load ptr, ptr %2, align 8, !tbaa !174
  %4 = getelementptr inbounds %struct.tokenrun, ptr %3, i64 0, i32 3
  %5 = load ptr, ptr %4, align 8, !tbaa !164
  %6 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 29
  %7 = load ptr, ptr %6, align 8, !tbaa !173
  %8 = ptrtoint ptr %5 to i64
  %9 = ptrtoint ptr %7 to i64
  %10 = sub i64 %8, %9
  %11 = sdiv exact i64 %10, 24
  %12 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 32
  %13 = load i32, ptr %12, align 8, !tbaa !178
  %14 = zext i32 %13 to i64
  %15 = icmp eq i32 %13, 0
  br i1 %15, label %44, label %16

16:                                               ; preds = %1
  %17 = icmp sgt i64 %11, %14
  br i1 %17, label %35, label %18

18:                                               ; preds = %16
  %19 = tail call fastcc ptr @next_tokenrun(ptr noundef nonnull %3) #18
  %20 = icmp slt i64 %11, %14
  br i1 %20, label %21, label %27

21:                                               ; preds = %18
  %22 = getelementptr inbounds %struct.tokenrun, ptr %19, i64 0, i32 2
  %23 = load ptr, ptr %22, align 8, !tbaa !163
  %24 = getelementptr inbounds %struct.cpp_token, ptr %23, i64 1
  %25 = sub nsw i64 %14, %11
  %26 = mul i64 %25, 24
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %24, ptr align 8 %23, i64 %26, i1 false)
  br label %27

27:                                               ; preds = %21, %18
  %28 = getelementptr inbounds %struct.tokenrun, ptr %19, i64 0, i32 2
  %29 = load ptr, ptr %28, align 8, !tbaa !163
  %30 = load ptr, ptr %2, align 8, !tbaa !174
  %31 = getelementptr inbounds %struct.tokenrun, ptr %30, i64 0, i32 3
  %32 = load ptr, ptr %31, align 8, !tbaa !164
  %33 = getelementptr inbounds %struct.cpp_token, ptr %32, i64 -1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %29, ptr noundef nonnull align 8 dereferenceable(24) %33, i64 24, i1 false), !tbaa.struct !191
  %34 = load ptr, ptr %6, align 8, !tbaa !173
  br label %35

35:                                               ; preds = %27, %16
  %36 = phi ptr [ %34, %27 ], [ %7, %16 ]
  %37 = icmp sgt i64 %10, 24
  br i1 %37, label %38, label %44

38:                                               ; preds = %35
  %39 = getelementptr inbounds %struct.cpp_token, ptr %36, i64 1
  %40 = add nsw i64 %11, -1
  %41 = tail call i64 @llvm.smin.i64(i64 %40, i64 %14)
  %42 = mul nuw nsw i64 %41, 24
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %39, ptr align 8 %36, i64 %42, i1 false)
  %43 = load ptr, ptr %6, align 8, !tbaa !173
  br label %44

44:                                               ; preds = %35, %38, %1
  %45 = phi ptr [ %36, %35 ], [ %43, %38 ], [ %7, %1 ]
  %46 = icmp eq ptr %5, %7
  br i1 %46, label %47, label %56

47:                                               ; preds = %44
  %48 = load ptr, ptr %2, align 8, !tbaa !174
  %49 = getelementptr inbounds %struct.tokenrun, ptr %48, i64 0, i32 3
  %50 = load ptr, ptr %49, align 8, !tbaa !164
  %51 = icmp eq ptr %45, %50
  br i1 %51, label %52, label %56

52:                                               ; preds = %47
  %53 = tail call fastcc ptr @next_tokenrun(ptr noundef nonnull %48) #18
  store ptr %53, ptr %2, align 8, !tbaa !174
  %54 = getelementptr inbounds %struct.tokenrun, ptr %53, i64 0, i32 2
  %55 = load ptr, ptr %54, align 8, !tbaa !163
  br label %56

56:                                               ; preds = %52, %47, %44
  %57 = phi ptr [ %55, %52 ], [ %45, %47 ], [ %45, %44 ]
  %58 = getelementptr inbounds %struct.cpp_token, ptr %7, i64 -1
  %59 = getelementptr inbounds %struct.cpp_token, ptr %57, i64 1
  store ptr %59, ptr %6, align 8, !tbaa !173
  %60 = load i32, ptr %58, align 8, !tbaa !193
  store i32 %60, ptr %57, align 8, !tbaa !193
  ret ptr %57
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @next_tokenrun(ptr noundef %0) unnamed_addr #3 !prof !194 !PGOFuncName !195 {
  %2 = load ptr, ptr %0, align 8, !tbaa !165
  %3 = icmp eq ptr %2, null
  br i1 %3, label %4, label %8, !prof !196

4:                                                ; preds = %1
  %5 = tail call ptr @xmalloc(i64 noundef 32) #20
  store ptr %5, ptr %0, align 8, !tbaa !165
  %6 = getelementptr inbounds %struct.tokenrun, ptr %5, i64 0, i32 1
  store ptr %0, ptr %6, align 8, !tbaa !197
  tail call void @_cpp_init_tokenrun(ptr noundef %5, i32 noundef 250) #18
  %7 = load ptr, ptr %0, align 8, !tbaa !165
  br label %8

8:                                                ; preds = %4, %1
  %9 = phi ptr [ %7, %4 ], [ %2, %1 ]
  ret ptr %9
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr nocapture writeonly, ptr nocapture readonly, i64, i1 immarg) #9

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #9

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @_cpp_lex_direct(ptr noundef %0) local_unnamed_addr #3 !prof !198 {
  %2 = alloca %struct.normalize_state, align 4
  %3 = alloca %struct.normalize_state, align 4
  %4 = alloca %struct.normalize_state, align 4
  %5 = alloca %struct.normalize_state, align 4
  %6 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 29
  %7 = load ptr, ptr %6, align 8, !tbaa !173
  %8 = getelementptr inbounds %struct.cpp_token, ptr %7, i64 1
  store ptr %8, ptr %6, align 8, !tbaa !173
  %9 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 2, i32 12
  %10 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 3
  br label %11

11:                                               ; preds = %143, %1
  %12 = phi ptr [ %7, %1 ], [ %61, %143 ]
  %13 = getelementptr inbounds %struct.cpp_token, ptr %12, i64 0, i32 2
  store i16 0, ptr %13, align 2, !tbaa !180
  %14 = load ptr, ptr %0, align 8, !tbaa !89
  %15 = getelementptr inbounds %struct.cpp_buffer, ptr %14, i64 0, i32 13
  %16 = load i8, ptr %15, align 8, !tbaa !112
  %17 = icmp eq i8 %16, 0
  br i1 %17, label %60, label %18, !prof !199

18:                                               ; preds = %11
  %19 = load i8, ptr %9, align 8, !tbaa !184
  %20 = icmp eq i8 %19, 0
  br i1 %20, label %30, label %21, !prof !200

21:                                               ; preds = %18
  %22 = getelementptr inbounds %struct.cpp_token, ptr %12, i64 0, i32 1
  store i8 71, ptr %22, align 4
  store i8 0, ptr %9, align 8, !tbaa !184
  %23 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 2, i32 13
  %24 = load i8, ptr %23, align 1, !tbaa !201
  %25 = icmp eq i8 %24, 0
  br i1 %25, label %26, label %507

26:                                               ; preds = %21
  %27 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 2, i32 8
  %28 = load i8, ptr %27, align 8, !tbaa !202
  %29 = add i8 %28, -1
  store i8 %29, ptr %27, align 8, !tbaa !202
  br label %507

30:                                               ; preds = %18
  %31 = tail call zeroext i8 @_cpp_get_fresh_line(ptr noundef nonnull %0) #18
  %32 = icmp eq i8 %31, 0
  br i1 %32, label %33, label %43, !prof !203

33:                                               ; preds = %30
  %34 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 2
  %35 = getelementptr inbounds %struct.cpp_token, ptr %12, i64 0, i32 1
  store i8 22, ptr %35, align 4
  %36 = load i8, ptr %34, align 8, !tbaa !187
  %37 = icmp eq i8 %36, 0
  br i1 %37, label %38, label %507, !prof !204

38:                                               ; preds = %33
  %39 = getelementptr inbounds %struct.cpp_token, ptr %12, i64 0, i32 2
  %40 = load ptr, ptr %10, align 8, !tbaa !137
  %41 = getelementptr inbounds %struct.line_maps, ptr %40, i64 0, i32 8
  %42 = load i32, ptr %41, align 4, !tbaa !138
  store i32 %42, ptr %12, align 8, !tbaa !193
  store i16 64, ptr %39, align 2, !tbaa !180
  br label %507

43:                                               ; preds = %30
  %44 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 33
  %45 = load i32, ptr %44, align 4, !tbaa !170
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %47, label %53, !prof !205

47:                                               ; preds = %43
  %48 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 30
  %49 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 31
  %50 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 30, i32 2
  store ptr %48, ptr %49, align 8, !tbaa !174
  %51 = load ptr, ptr %50, align 8, !tbaa !206
  %52 = getelementptr inbounds %struct.cpp_token, ptr %51, i64 1
  store ptr %52, ptr %6, align 8, !tbaa !173
  br label %53

53:                                               ; preds = %47, %43
  %54 = phi ptr [ %12, %43 ], [ %51, %47 ]
  %55 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 2, i32 9
  %56 = getelementptr inbounds %struct.cpp_token, ptr %54, i64 0, i32 2
  store i16 64, ptr %56, align 2, !tbaa !180
  %57 = load i8, ptr %55, align 1, !tbaa !183
  %58 = icmp eq i8 %57, 2
  br i1 %58, label %59, label %60, !prof !116

59:                                               ; preds = %53
  store i16 65, ptr %56, align 2, !tbaa !180
  br label %60

60:                                               ; preds = %53, %59, %11
  %61 = phi ptr [ %54, %59 ], [ %54, %53 ], [ %12, %11 ]
  %62 = load ptr, ptr %0, align 8, !tbaa !89
  %63 = getelementptr inbounds %struct.cpp_buffer, ptr %62, i64 0, i32 5
  %64 = getelementptr inbounds %struct.cpp_buffer, ptr %62, i64 0, i32 6
  %65 = getelementptr inbounds %struct.cpp_buffer, ptr %62, i64 0, i32 1
  %66 = getelementptr inbounds %struct.cpp_token, ptr %61, i64 0, i32 2
  br label %67

67:                                               ; preds = %262, %60
  %68 = load ptr, ptr %10, align 8, !tbaa !137
  %69 = getelementptr inbounds %struct.line_maps, ptr %68, i64 0, i32 8
  %70 = load i32, ptr %69, align 4, !tbaa !138
  store i32 %70, ptr %61, align 8, !tbaa !193
  br label %71

71:                                               ; preds = %114, %67
  %72 = load ptr, ptr %62, align 8, !tbaa !111
  %73 = load ptr, ptr %63, align 8, !tbaa !131
  %74 = load i32, ptr %64, align 8, !tbaa !108
  %75 = zext i32 %74 to i64
  %76 = getelementptr inbounds %struct._cpp_line_note, ptr %73, i64 %75
  %77 = load ptr, ptr %76, align 8, !tbaa !132
  %78 = icmp ult ptr %72, %77
  br i1 %78, label %88, label %79, !prof !207

79:                                               ; preds = %71
  %80 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 1
  %81 = load ptr, ptr %80, align 8, !tbaa !208
  %82 = icmp eq ptr %81, null
  br i1 %82, label %83, label %88

83:                                               ; preds = %79
  tail call void @_cpp_process_line_notes(ptr noundef nonnull %0, i32 noundef 0) #18
  %84 = load ptr, ptr %10, align 8, !tbaa !137
  %85 = getelementptr inbounds %struct.line_maps, ptr %84, i64 0, i32 8
  %86 = load i32, ptr %85, align 4, !tbaa !138
  store i32 %86, ptr %61, align 8, !tbaa !193
  %87 = load ptr, ptr %62, align 8, !tbaa !111
  br label %88

88:                                               ; preds = %83, %79, %71
  %89 = phi ptr [ %87, %83 ], [ %72, %79 ], [ %72, %71 ]
  %90 = getelementptr inbounds i8, ptr %89, i64 1
  store ptr %90, ptr %62, align 8, !tbaa !111
  %91 = load i8, ptr %89, align 1, !tbaa !79
  %92 = zext i8 %91 to i32
  %93 = load ptr, ptr %65, align 8, !tbaa !110
  %94 = ptrtoint ptr %90 to i64
  %95 = ptrtoint ptr %93 to i64
  %96 = sub i64 %94, %95
  %97 = trunc i64 %96 to i32
  %98 = load ptr, ptr %10, align 8, !tbaa !137
  %99 = getelementptr inbounds %struct.line_maps, ptr %98, i64 0, i32 9
  %100 = load i32, ptr %99, align 8, !tbaa !209
  %101 = icmp ugt i32 %100, %97
  br i1 %101, label %104, label %102, !prof !210

102:                                              ; preds = %88
  %103 = tail call i32 @linemap_position_for_column(ptr noundef nonnull %98, i32 noundef %97) #20
  br label %112

104:                                              ; preds = %88
  %105 = getelementptr inbounds %struct.line_maps, ptr %98, i64 0, i32 8
  %106 = load i32, ptr %105, align 4, !tbaa !138
  %107 = add i32 %106, %97
  %108 = getelementptr inbounds %struct.line_maps, ptr %98, i64 0, i32 7
  %109 = load i32, ptr %108, align 8, !tbaa !211
  %110 = icmp ult i32 %107, %109
  br i1 %110, label %112, label %111, !prof !212

111:                                              ; preds = %104
  store i32 %107, ptr %108, align 8, !tbaa !211
  br label %112

112:                                              ; preds = %104, %111, %102
  %113 = phi i32 [ %103, %102 ], [ %107, %111 ], [ %107, %104 ]
  store i32 %113, ptr %61, align 8, !tbaa !193
  switch i8 %91, label %502 [
    i8 32, label %114
    i8 9, label %114
    i8 12, label %114
    i8 11, label %114
    i8 0, label %114
    i8 10, label %117
    i8 48, label %145
    i8 49, label %145
    i8 50, label %145
    i8 51, label %145
    i8 52, label %145
    i8 53, label %145
    i8 54, label %145
    i8 55, label %145
    i8 56, label %145
    i8 57, label %145
    i8 76, label %148
    i8 117, label %148
    i8 85, label %148
    i8 82, label %148
    i8 95, label %191
    i8 97, label %191
    i8 98, label %191
    i8 99, label %191
    i8 100, label %191
    i8 101, label %191
    i8 102, label %191
    i8 103, label %191
    i8 104, label %191
    i8 105, label %191
    i8 106, label %191
    i8 107, label %191
    i8 108, label %191
    i8 109, label %191
    i8 110, label %191
    i8 111, label %191
    i8 112, label %191
    i8 113, label %191
    i8 114, label %191
    i8 115, label %191
    i8 116, label %191
    i8 118, label %191
    i8 119, label %191
    i8 120, label %191
    i8 121, label %191
    i8 122, label %191
    i8 65, label %191
    i8 66, label %191
    i8 67, label %191
    i8 68, label %191
    i8 69, label %191
    i8 70, label %191
    i8 71, label %191
    i8 72, label %191
    i8 73, label %191
    i8 74, label %191
    i8 75, label %191
    i8 77, label %191
    i8 78, label %191
    i8 79, label %191
    i8 80, label %191
    i8 81, label %191
    i8 83, label %191
    i8 84, label %191
    i8 86, label %191
    i8 87, label %191
    i8 88, label %191
    i8 89, label %191
    i8 90, label %191
    i8 39, label %208
    i8 34, label %208
    i8 47, label %211
    i8 60, label %267
    i8 62, label %303
    i8 37, label %316
    i8 46, label %346
    i8 43, label %370
    i8 45, label %378
    i8 38, label %397
    i8 124, label %405
    i8 58, label %413
    i8 42, label %431
    i8 61, label %438
    i8 33, label %445
    i8 94, label %452
    i8 35, label %459
    i8 63, label %468
    i8 126, label %470
    i8 44, label %472
    i8 40, label %474
    i8 41, label %476
    i8 91, label %478
    i8 93, label %480
    i8 123, label %482
    i8 125, label %484
    i8 59, label %486
    i8 64, label %488
    i8 36, label %490
    i8 92, label %490
  ], !prof !213

114:                                              ; preds = %112, %112, %112, %112, %112
  %115 = load i16, ptr %66, align 2, !tbaa !180
  %116 = or i16 %115, 1
  store i16 %116, ptr %66, align 2, !tbaa !180
  tail call fastcc void @skip_whitespace(ptr noundef nonnull %0, i32 noundef %92) #18
  br label %71

117:                                              ; preds = %112
  %118 = load ptr, ptr %62, align 8, !tbaa !111
  %119 = getelementptr inbounds %struct.cpp_buffer, ptr %62, i64 0, i32 4
  %120 = load ptr, ptr %119, align 8, !tbaa !115
  %121 = icmp ult ptr %118, %120
  br i1 %121, label %122, label %143, !prof !214

122:                                              ; preds = %117
  %123 = load ptr, ptr %10, align 8, !tbaa !137
  %124 = load ptr, ptr %123, align 8, !tbaa !140
  %125 = getelementptr inbounds %struct.line_maps, ptr %123, i64 0, i32 2
  %126 = load i32, ptr %125, align 4, !tbaa !141
  %127 = add i32 %126, -1
  %128 = zext i32 %127 to i64
  %129 = getelementptr inbounds %struct.line_maps, ptr %123, i64 0, i32 8
  %130 = load i32, ptr %129, align 4, !tbaa !138
  %131 = getelementptr inbounds %struct.line_map, ptr %124, i64 %128, i32 2
  %132 = load i32, ptr %131, align 4, !tbaa !142
  %133 = sub i32 %130, %132
  %134 = getelementptr inbounds %struct.line_map, ptr %124, i64 %128, i32 6
  %135 = load i8, ptr %134, align 2
  %136 = zext nneg i8 %135 to i32
  %137 = lshr i32 %133, %136
  %138 = getelementptr inbounds %struct.line_map, ptr %124, i64 %128, i32 1
  %139 = load i32, ptr %138, align 8, !tbaa !144
  %140 = add i32 %139, 1
  %141 = add i32 %140, %137
  %142 = tail call i32 @linemap_line_start(ptr noundef nonnull %123, i32 noundef %141, i32 noundef 0) #20
  br label %143

143:                                              ; preds = %122, %117
  %144 = getelementptr inbounds %struct.cpp_buffer, ptr %62, i64 0, i32 13
  store i8 1, ptr %144, align 8, !tbaa !112
  br label %11

145:                                              ; preds = %112, %112, %112, %112, %112, %112, %112, %112, %112, %112
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %2) #22
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %2, i8 0, i64 12, i1 false)
  %146 = getelementptr inbounds %struct.cpp_token, ptr %61, i64 0, i32 1
  store i8 55, ptr %146, align 4
  %147 = getelementptr inbounds %struct.cpp_token, ptr %61, i64 0, i32 3
  call fastcc void @lex_number(ptr noundef nonnull %0, ptr noundef nonnull %147, ptr noundef nonnull %2) #18
  call fastcc void @warn_about_normalization(ptr noundef nonnull %0, ptr noundef nonnull %61, ptr noundef nonnull %2) #18
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %2) #22
  br label %507

148:                                              ; preds = %112, %112, %112, %112
  %149 = icmp eq i8 %91, 76
  br i1 %149, label %158, label %150, !prof !215

150:                                              ; preds = %148
  %151 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 53, i32 10
  %152 = load i8, ptr %151, align 8, !tbaa !216
  %153 = icmp eq i8 %152, 0
  br i1 %153, label %191, label %154, !prof !217

154:                                              ; preds = %150
  %155 = load ptr, ptr %62, align 8, !tbaa !111
  %156 = load i8, ptr %155, align 1, !tbaa !79
  %157 = icmp eq i8 %156, 39
  br i1 %157, label %162, label %164, !prof !218

158:                                              ; preds = %148
  %159 = load ptr, ptr %62, align 8, !tbaa !111
  %160 = load i8, ptr %159, align 1, !tbaa !79
  %161 = icmp eq i8 %160, 39
  br i1 %161, label %188, label %164, !prof !218

162:                                              ; preds = %154
  %163 = icmp eq i8 %91, 82
  br i1 %163, label %191, label %188

164:                                              ; preds = %158, %154
  %165 = phi i8 [ %160, %158 ], [ %156, %154 ]
  %166 = phi ptr [ %159, %158 ], [ %155, %154 ]
  switch i8 %165, label %177 [
    i8 34, label %188
    i8 82, label %167
  ], !prof !219

167:                                              ; preds = %164
  %168 = icmp eq i8 %91, 82
  br i1 %168, label %191, label %169, !prof !220

169:                                              ; preds = %167
  %170 = getelementptr inbounds i8, ptr %166, i64 1
  %171 = load i8, ptr %170, align 1, !tbaa !79
  %172 = icmp eq i8 %171, 34
  br i1 %172, label %173, label %191, !prof !220

173:                                              ; preds = %169
  %174 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 53, i32 10
  %175 = load i8, ptr %174, align 8, !tbaa !216
  %176 = icmp eq i8 %175, 0
  br i1 %176, label %191, label %188

177:                                              ; preds = %164
  %178 = icmp eq i8 %165, 56
  %179 = icmp eq i8 %91, 117
  %180 = select i1 %178, i1 %179, i1 false
  br i1 %180, label %181, label %191, !prof !221

181:                                              ; preds = %177
  %182 = getelementptr inbounds i8, ptr %166, i64 1
  %183 = load i8, ptr %182, align 1, !tbaa !79
  switch i8 %183, label %191 [
    i8 34, label %188
    i8 82, label %184
  ]

184:                                              ; preds = %181
  %185 = getelementptr inbounds i8, ptr %166, i64 2
  %186 = load i8, ptr %185, align 1, !tbaa !79
  %187 = icmp eq i8 %186, 34
  br i1 %187, label %188, label %191

188:                                              ; preds = %158, %181, %164, %184, %173, %162
  %189 = phi ptr [ %166, %181 ], [ %166, %164 ], [ %166, %184 ], [ %166, %173 ], [ %155, %162 ], [ %159, %158 ]
  %190 = getelementptr inbounds i8, ptr %189, i64 -1
  tail call fastcc void @lex_string(ptr noundef nonnull %0, ptr noundef nonnull %61, ptr noundef nonnull %190) #18
  br label %507

191:                                              ; preds = %112, %112, %112, %112, %112, %112, %112, %112, %112, %112, %112, %112, %112, %112, %112, %112, %112, %112, %112, %112, %112, %112, %112, %112, %112, %112, %112, %112, %112, %112, %112, %112, %112, %112, %112, %112, %112, %112, %112, %112, %112, %112, %112, %112, %112, %112, %112, %112, %112, %162, %167, %169, %173, %181, %150, %184, %177
  %192 = getelementptr inbounds %struct.cpp_token, ptr %61, i64 0, i32 1
  store i8 53, ptr %192, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %3) #22
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %3, i8 0, i64 12, i1 false)
  %193 = load ptr, ptr %62, align 8, !tbaa !111
  %194 = getelementptr inbounds i8, ptr %193, i64 -1
  %195 = call fastcc ptr @lex_identifier(ptr noundef nonnull %0, ptr noundef nonnull %194, i8 noundef zeroext 0, ptr noundef nonnull %3) #18
  %196 = getelementptr inbounds %struct.cpp_token, ptr %61, i64 0, i32 3
  store ptr %195, ptr %196, align 8, !tbaa !79
  call fastcc void @warn_about_normalization(ptr noundef nonnull %0, ptr noundef nonnull %61, ptr noundef nonnull %3) #18
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %3) #22
  %197 = load ptr, ptr %196, align 8, !tbaa !79
  %198 = getelementptr inbounds %struct.cpp_hashnode, ptr %197, i64 0, i32 3
  %199 = load i16, ptr %198, align 2
  %200 = and i16 %199, 64
  %201 = icmp eq i16 %200, 0
  br i1 %201, label %507, label %202, !prof !222

202:                                              ; preds = %191
  %203 = load i16, ptr %66, align 2, !tbaa !180
  %204 = or i16 %203, 16
  store i16 %204, ptr %66, align 2, !tbaa !180
  %205 = getelementptr inbounds %struct.cpp_hashnode, ptr %197, i64 0, i32 1
  %206 = load i8, ptr %205, align 8
  %207 = lshr i8 %206, 1
  store i8 %207, ptr %192, align 4
  br label %507

208:                                              ; preds = %112, %112
  %209 = load ptr, ptr %62, align 8, !tbaa !111
  %210 = getelementptr inbounds i8, ptr %209, i64 -1
  tail call fastcc void @lex_string(ptr noundef nonnull %0, ptr noundef nonnull %61, ptr noundef nonnull %210) #18
  br label %507

211:                                              ; preds = %112
  %212 = load ptr, ptr %62, align 8, !tbaa !111
  %213 = load i8, ptr %212, align 1, !tbaa !79
  switch i8 %213, label %256 [
    i8 42, label %214
    i8 47, label %219
    i8 61, label %253
  ], !prof !223

214:                                              ; preds = %211
  %215 = tail call zeroext i8 @_cpp_skip_block_comment(ptr noundef nonnull %0) #18
  %216 = icmp eq i8 %215, 0
  br i1 %216, label %258, label %217, !prof !224

217:                                              ; preds = %214
  %218 = tail call zeroext i8 (ptr, i32, ptr, ...) @cpp_error(ptr noundef nonnull %0, i32 noundef 3, ptr noundef nonnull @.str.8) #20
  br label %258

219:                                              ; preds = %211
  %220 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 53, i32 3
  %221 = load i8, ptr %220, align 1, !tbaa !225
  %222 = icmp eq i8 %221, 0
  br i1 %222, label %223, label %226

223:                                              ; preds = %219
  %224 = tail call fastcc i32 @cpp_in_system_header(ptr noundef nonnull %0) #18, !range !226
  %225 = icmp eq i32 %224, 0
  br i1 %225, label %256, label %226

226:                                              ; preds = %223, %219
  %227 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 53, i32 1
  %228 = load i32, ptr %227, align 4, !tbaa !227
  %229 = icmp eq i32 %228, 0
  br i1 %229, label %230, label %244

230:                                              ; preds = %226
  %231 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 53, i32 31
  %232 = load i8, ptr %231, align 1, !tbaa !228
  %233 = icmp eq i8 %232, 0
  br i1 %233, label %244, label %234

234:                                              ; preds = %230
  %235 = getelementptr inbounds %struct.cpp_buffer, ptr %62, i64 0, i32 14
  %236 = load i8, ptr %235, align 1
  %237 = and i8 %236, 1
  %238 = icmp eq i8 %237, 0
  br i1 %238, label %239, label %244

239:                                              ; preds = %234
  %240 = tail call zeroext i8 (ptr, i32, ptr, ...) @cpp_error(ptr noundef nonnull %0, i32 noundef 2, ptr noundef nonnull @.str.9) #20
  %241 = tail call zeroext i8 (ptr, i32, ptr, ...) @cpp_error(ptr noundef nonnull %0, i32 noundef 2, ptr noundef nonnull @.str.10) #20
  %242 = load i8, ptr %235, align 1
  %243 = or i8 %242, 1
  store i8 %243, ptr %235, align 1
  br label %244

244:                                              ; preds = %239, %234, %230, %226
  %245 = tail call fastcc i32 @skip_line_comment(ptr noundef nonnull %0) #18, !range !229
  %246 = icmp eq i32 %245, 0
  br i1 %246, label %258, label %247

247:                                              ; preds = %244
  %248 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 53, i32 13
  %249 = load i8, ptr %248, align 1, !tbaa !153
  %250 = icmp eq i8 %249, 0
  br i1 %250, label %258, label %251

251:                                              ; preds = %247
  %252 = tail call zeroext i8 (ptr, i32, ptr, ...) @cpp_error(ptr noundef nonnull %0, i32 noundef 0, ptr noundef nonnull @.str.11) #20
  br label %258

253:                                              ; preds = %211
  %254 = getelementptr inbounds i8, ptr %212, i64 1
  store ptr %254, ptr %62, align 8, !tbaa !111
  %255 = getelementptr inbounds %struct.cpp_token, ptr %61, i64 0, i32 1
  store i8 30, ptr %255, align 4
  br label %507

256:                                              ; preds = %223, %211
  %257 = getelementptr inbounds %struct.cpp_token, ptr %61, i64 0, i32 1
  store i8 7, ptr %257, align 4
  br label %507

258:                                              ; preds = %251, %247, %244, %214, %217
  %259 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 2, i32 5
  %260 = load i8, ptr %259, align 1, !tbaa !230
  %261 = icmp eq i8 %260, 0
  br i1 %261, label %262, label %265, !prof !224

262:                                              ; preds = %258
  %263 = load i16, ptr %66, align 2, !tbaa !180
  %264 = or i16 %263, 1
  store i16 %264, ptr %66, align 2, !tbaa !180
  br label %67

265:                                              ; preds = %258
  %266 = zext nneg i8 %213 to i32
  tail call fastcc void @save_comment(ptr noundef nonnull %0, ptr noundef nonnull %61, ptr noundef nonnull %212, i32 noundef %266) #18
  br label %507

267:                                              ; preds = %112
  %268 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 2, i32 3
  %269 = load i8, ptr %268, align 1, !tbaa !231
  %270 = icmp eq i8 %269, 0
  br i1 %270, label %277, label %271, !prof !232

271:                                              ; preds = %267
  %272 = load ptr, ptr %62, align 8, !tbaa !111
  %273 = getelementptr inbounds i8, ptr %272, i64 -1
  tail call fastcc void @lex_string(ptr noundef nonnull %0, ptr noundef nonnull %61, ptr noundef nonnull %273) #18
  %274 = getelementptr inbounds %struct.cpp_token, ptr %61, i64 0, i32 1
  %275 = load i8, ptr %274, align 4
  %276 = icmp eq i8 %275, 3
  br i1 %276, label %277, label %507

277:                                              ; preds = %271, %267
  %278 = getelementptr inbounds %struct.cpp_token, ptr %61, i64 0, i32 1
  store i8 3, ptr %278, align 4
  %279 = load ptr, ptr %62, align 8, !tbaa !111
  %280 = load i8, ptr %279, align 1, !tbaa !79
  switch i8 %280, label %290 [
    i8 61, label %281
    i8 60, label %283
  ], !prof !233

281:                                              ; preds = %277
  %282 = getelementptr inbounds i8, ptr %279, i64 1
  store ptr %282, ptr %62, align 8, !tbaa !111
  store i8 26, ptr %278, align 4
  br label %507

283:                                              ; preds = %277
  %284 = getelementptr inbounds i8, ptr %279, i64 1
  store ptr %284, ptr %62, align 8, !tbaa !111
  store i8 13, ptr %278, align 4
  %285 = load ptr, ptr %62, align 8, !tbaa !111
  %286 = load i8, ptr %285, align 1, !tbaa !79
  %287 = icmp eq i8 %286, 61
  br i1 %287, label %288, label %507, !prof !234

288:                                              ; preds = %283
  %289 = getelementptr inbounds i8, ptr %285, i64 1
  store ptr %289, ptr %62, align 8, !tbaa !111
  store i8 36, ptr %278, align 4
  br label %507

290:                                              ; preds = %277
  %291 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 53, i32 8
  %292 = load i8, ptr %291, align 2, !tbaa !235
  %293 = icmp eq i8 %292, 0
  br i1 %293, label %507, label %294, !prof !236

294:                                              ; preds = %290
  switch i8 %280, label %507 [
    i8 58, label %295
    i8 37, label %299
  ], !prof !237

295:                                              ; preds = %294
  %296 = getelementptr inbounds i8, ptr %279, i64 1
  store ptr %296, ptr %62, align 8, !tbaa !111
  %297 = load i16, ptr %66, align 2, !tbaa !180
  %298 = or i16 %297, 2
  store i16 %298, ptr %66, align 2, !tbaa !180
  store i8 39, ptr %278, align 4
  br label %507

299:                                              ; preds = %294
  %300 = getelementptr inbounds i8, ptr %279, i64 1
  store ptr %300, ptr %62, align 8, !tbaa !111
  %301 = load i16, ptr %66, align 2, !tbaa !180
  %302 = or i16 %301, 2
  store i16 %302, ptr %66, align 2, !tbaa !180
  store i8 41, ptr %278, align 4
  br label %507

303:                                              ; preds = %112
  %304 = getelementptr inbounds %struct.cpp_token, ptr %61, i64 0, i32 1
  store i8 2, ptr %304, align 4
  %305 = load ptr, ptr %62, align 8, !tbaa !111
  %306 = load i8, ptr %305, align 1, !tbaa !79
  switch i8 %306, label %507 [
    i8 61, label %307
    i8 62, label %309
  ], !prof !238

307:                                              ; preds = %303
  %308 = getelementptr inbounds i8, ptr %305, i64 1
  store ptr %308, ptr %62, align 8, !tbaa !111
  store i8 25, ptr %304, align 4
  br label %507

309:                                              ; preds = %303
  %310 = getelementptr inbounds i8, ptr %305, i64 1
  store ptr %310, ptr %62, align 8, !tbaa !111
  store i8 12, ptr %304, align 4
  %311 = load ptr, ptr %62, align 8, !tbaa !111
  %312 = load i8, ptr %311, align 1, !tbaa !79
  %313 = icmp eq i8 %312, 61
  br i1 %313, label %314, label %507, !prof !239

314:                                              ; preds = %309
  %315 = getelementptr inbounds i8, ptr %311, i64 1
  store ptr %315, ptr %62, align 8, !tbaa !111
  store i8 35, ptr %304, align 4
  br label %507

316:                                              ; preds = %112
  %317 = getelementptr inbounds %struct.cpp_token, ptr %61, i64 0, i32 1
  store i8 8, ptr %317, align 4
  %318 = load ptr, ptr %62, align 8, !tbaa !111
  %319 = load i8, ptr %318, align 1, !tbaa !79
  %320 = icmp eq i8 %319, 61
  br i1 %320, label %321, label %323, !prof !240

321:                                              ; preds = %316
  %322 = getelementptr inbounds i8, ptr %318, i64 1
  store ptr %322, ptr %62, align 8, !tbaa !111
  store i8 31, ptr %317, align 4
  br label %507

323:                                              ; preds = %316
  %324 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 53, i32 8
  %325 = load i8, ptr %324, align 2, !tbaa !235
  %326 = icmp eq i8 %325, 0
  br i1 %326, label %507, label %327, !prof !241

327:                                              ; preds = %323
  switch i8 %319, label %507 [
    i8 58, label %328
    i8 62, label %342
  ], !prof !242

328:                                              ; preds = %327
  %329 = getelementptr inbounds i8, ptr %318, i64 1
  store ptr %329, ptr %62, align 8, !tbaa !111
  %330 = load i16, ptr %66, align 2, !tbaa !180
  %331 = or i16 %330, 2
  store i16 %331, ptr %66, align 2, !tbaa !180
  store i8 37, ptr %317, align 4
  %332 = load ptr, ptr %62, align 8, !tbaa !111
  %333 = load i8, ptr %332, align 1, !tbaa !79
  %334 = icmp eq i8 %333, 37
  br i1 %334, label %335, label %507

335:                                              ; preds = %328
  %336 = getelementptr inbounds i8, ptr %332, i64 1
  %337 = load i8, ptr %336, align 1, !tbaa !79
  %338 = icmp eq i8 %337, 58
  br i1 %338, label %339, label %507

339:                                              ; preds = %335
  %340 = getelementptr inbounds i8, ptr %332, i64 2
  store ptr %340, ptr %62, align 8, !tbaa !111
  store i8 38, ptr %317, align 4
  %341 = getelementptr inbounds %struct.cpp_token, ptr %61, i64 0, i32 3
  store i32 0, ptr %341, align 8, !tbaa !79
  br label %507

342:                                              ; preds = %327
  %343 = getelementptr inbounds i8, ptr %318, i64 1
  store ptr %343, ptr %62, align 8, !tbaa !111
  %344 = load i16, ptr %66, align 2, !tbaa !180
  %345 = or i16 %344, 2
  store i16 %345, ptr %66, align 2, !tbaa !180
  store i8 42, ptr %317, align 4
  br label %507

346:                                              ; preds = %112
  %347 = getelementptr inbounds %struct.cpp_token, ptr %61, i64 0, i32 1
  store i8 48, ptr %347, align 4
  %348 = load ptr, ptr %62, align 8, !tbaa !111
  %349 = load i8, ptr %348, align 1, !tbaa !79
  %350 = zext i8 %349 to i64
  %351 = getelementptr inbounds [256 x i16], ptr @_sch_istable, i64 0, i64 %350
  %352 = load i16, ptr %351, align 2, !tbaa !118
  %353 = and i16 %352, 4
  %354 = icmp eq i16 %353, 0
  br i1 %354, label %357, label %355, !prof !243

355:                                              ; preds = %346
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %4) #22
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %4, i8 0, i64 12, i1 false)
  store i8 55, ptr %347, align 4
  %356 = getelementptr inbounds %struct.cpp_token, ptr %61, i64 0, i32 3
  call fastcc void @lex_number(ptr noundef nonnull %0, ptr noundef nonnull %356, ptr noundef nonnull %4) #18
  call fastcc void @warn_about_normalization(ptr noundef nonnull %0, ptr noundef nonnull %61, ptr noundef nonnull %4) #18
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %4) #22
  br label %507

357:                                              ; preds = %346
  switch i8 %349, label %507 [
    i8 46, label %358
    i8 42, label %364
  ], !prof !244

358:                                              ; preds = %357
  %359 = getelementptr inbounds i8, ptr %348, i64 1
  %360 = load i8, ptr %359, align 1, !tbaa !79
  %361 = icmp eq i8 %360, 46
  br i1 %361, label %362, label %507, !prof !245

362:                                              ; preds = %358
  %363 = getelementptr inbounds i8, ptr %348, i64 2
  store ptr %363, ptr %62, align 8, !tbaa !111
  store i8 44, ptr %347, align 4
  br label %507

364:                                              ; preds = %357
  %365 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 53, i32 2
  %366 = load i8, ptr %365, align 8, !tbaa !246
  %367 = icmp eq i8 %366, 0
  br i1 %367, label %507, label %368

368:                                              ; preds = %364
  %369 = getelementptr inbounds i8, ptr %348, i64 1
  store ptr %369, ptr %62, align 8, !tbaa !111
  store i8 51, ptr %347, align 4
  br label %507

370:                                              ; preds = %112
  %371 = getelementptr inbounds %struct.cpp_token, ptr %61, i64 0, i32 1
  store i8 4, ptr %371, align 4
  %372 = load ptr, ptr %62, align 8, !tbaa !111
  %373 = load i8, ptr %372, align 1, !tbaa !79
  switch i8 %373, label %507 [
    i8 43, label %374
    i8 61, label %376
  ], !prof !247

374:                                              ; preds = %370
  %375 = getelementptr inbounds i8, ptr %372, i64 1
  store ptr %375, ptr %62, align 8, !tbaa !111
  store i8 45, ptr %371, align 4
  br label %507

376:                                              ; preds = %370
  %377 = getelementptr inbounds i8, ptr %372, i64 1
  store ptr %377, ptr %62, align 8, !tbaa !111
  store i8 27, ptr %371, align 4
  br label %507

378:                                              ; preds = %112
  %379 = getelementptr inbounds %struct.cpp_token, ptr %61, i64 0, i32 1
  store i8 5, ptr %379, align 4
  %380 = load ptr, ptr %62, align 8, !tbaa !111
  %381 = load i8, ptr %380, align 1, !tbaa !79
  switch i8 %381, label %507 [
    i8 62, label %382
    i8 45, label %393
    i8 61, label %395
  ], !prof !248

382:                                              ; preds = %378
  %383 = getelementptr inbounds i8, ptr %380, i64 1
  store ptr %383, ptr %62, align 8, !tbaa !111
  store i8 47, ptr %379, align 4
  %384 = load ptr, ptr %62, align 8, !tbaa !111
  %385 = load i8, ptr %384, align 1, !tbaa !79
  %386 = icmp eq i8 %385, 42
  br i1 %386, label %387, label %507, !prof !249

387:                                              ; preds = %382
  %388 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 53, i32 2
  %389 = load i8, ptr %388, align 8, !tbaa !246
  %390 = icmp eq i8 %389, 0
  br i1 %390, label %507, label %391

391:                                              ; preds = %387
  %392 = getelementptr inbounds i8, ptr %384, i64 1
  store ptr %392, ptr %62, align 8, !tbaa !111
  store i8 50, ptr %379, align 4
  br label %507

393:                                              ; preds = %378
  %394 = getelementptr inbounds i8, ptr %380, i64 1
  store ptr %394, ptr %62, align 8, !tbaa !111
  store i8 46, ptr %379, align 4
  br label %507

395:                                              ; preds = %378
  %396 = getelementptr inbounds i8, ptr %380, i64 1
  store ptr %396, ptr %62, align 8, !tbaa !111
  store i8 28, ptr %379, align 4
  br label %507

397:                                              ; preds = %112
  %398 = getelementptr inbounds %struct.cpp_token, ptr %61, i64 0, i32 1
  store i8 9, ptr %398, align 4
  %399 = load ptr, ptr %62, align 8, !tbaa !111
  %400 = load i8, ptr %399, align 1, !tbaa !79
  switch i8 %400, label %507 [
    i8 38, label %401
    i8 61, label %403
  ], !prof !250

401:                                              ; preds = %397
  %402 = getelementptr inbounds i8, ptr %399, i64 1
  store ptr %402, ptr %62, align 8, !tbaa !111
  store i8 15, ptr %398, align 4
  br label %507

403:                                              ; preds = %397
  %404 = getelementptr inbounds i8, ptr %399, i64 1
  store ptr %404, ptr %62, align 8, !tbaa !111
  store i8 32, ptr %398, align 4
  br label %507

405:                                              ; preds = %112
  %406 = getelementptr inbounds %struct.cpp_token, ptr %61, i64 0, i32 1
  store i8 10, ptr %406, align 4
  %407 = load ptr, ptr %62, align 8, !tbaa !111
  %408 = load i8, ptr %407, align 1, !tbaa !79
  switch i8 %408, label %507 [
    i8 124, label %409
    i8 61, label %411
  ], !prof !251

409:                                              ; preds = %405
  %410 = getelementptr inbounds i8, ptr %407, i64 1
  store ptr %410, ptr %62, align 8, !tbaa !111
  store i8 16, ptr %406, align 4
  br label %507

411:                                              ; preds = %405
  %412 = getelementptr inbounds i8, ptr %407, i64 1
  store ptr %412, ptr %62, align 8, !tbaa !111
  store i8 33, ptr %406, align 4
  br label %507

413:                                              ; preds = %112
  %414 = getelementptr inbounds %struct.cpp_token, ptr %61, i64 0, i32 1
  store i8 18, ptr %414, align 4
  %415 = load ptr, ptr %62, align 8, !tbaa !111
  %416 = load i8, ptr %415, align 1, !tbaa !79
  switch i8 %416, label %507 [
    i8 58, label %417
    i8 62, label %423
  ], !prof !252

417:                                              ; preds = %413
  %418 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 53, i32 2
  %419 = load i8, ptr %418, align 8, !tbaa !246
  %420 = icmp eq i8 %419, 0
  br i1 %420, label %507, label %421

421:                                              ; preds = %417
  %422 = getelementptr inbounds i8, ptr %415, i64 1
  store ptr %422, ptr %62, align 8, !tbaa !111
  store i8 49, ptr %414, align 4
  br label %507

423:                                              ; preds = %413
  %424 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 53, i32 8
  %425 = load i8, ptr %424, align 2, !tbaa !235
  %426 = icmp eq i8 %425, 0
  br i1 %426, label %507, label %427

427:                                              ; preds = %423
  %428 = getelementptr inbounds i8, ptr %415, i64 1
  store ptr %428, ptr %62, align 8, !tbaa !111
  %429 = load i16, ptr %66, align 2, !tbaa !180
  %430 = or i16 %429, 2
  store i16 %430, ptr %66, align 2, !tbaa !180
  store i8 40, ptr %414, align 4
  br label %507

431:                                              ; preds = %112
  %432 = getelementptr inbounds %struct.cpp_token, ptr %61, i64 0, i32 1
  store i8 6, ptr %432, align 4
  %433 = load ptr, ptr %62, align 8, !tbaa !111
  %434 = load i8, ptr %433, align 1, !tbaa !79
  %435 = icmp eq i8 %434, 61
  br i1 %435, label %436, label %507, !prof !253

436:                                              ; preds = %431
  %437 = getelementptr inbounds i8, ptr %433, i64 1
  store ptr %437, ptr %62, align 8, !tbaa !111
  store i8 29, ptr %432, align 4
  br label %507

438:                                              ; preds = %112
  %439 = getelementptr inbounds %struct.cpp_token, ptr %61, i64 0, i32 1
  store i8 0, ptr %439, align 4
  %440 = load ptr, ptr %62, align 8, !tbaa !111
  %441 = load i8, ptr %440, align 1, !tbaa !79
  %442 = icmp eq i8 %441, 61
  br i1 %442, label %443, label %507, !prof !254

443:                                              ; preds = %438
  %444 = getelementptr inbounds i8, ptr %440, i64 1
  store ptr %444, ptr %62, align 8, !tbaa !111
  store i8 23, ptr %439, align 4
  br label %507

445:                                              ; preds = %112
  %446 = getelementptr inbounds %struct.cpp_token, ptr %61, i64 0, i32 1
  store i8 1, ptr %446, align 4
  %447 = load ptr, ptr %62, align 8, !tbaa !111
  %448 = load i8, ptr %447, align 1, !tbaa !79
  %449 = icmp eq i8 %448, 61
  br i1 %449, label %450, label %507, !prof !255

450:                                              ; preds = %445
  %451 = getelementptr inbounds i8, ptr %447, i64 1
  store ptr %451, ptr %62, align 8, !tbaa !111
  store i8 24, ptr %446, align 4
  br label %507

452:                                              ; preds = %112
  %453 = getelementptr inbounds %struct.cpp_token, ptr %61, i64 0, i32 1
  store i8 11, ptr %453, align 4
  %454 = load ptr, ptr %62, align 8, !tbaa !111
  %455 = load i8, ptr %454, align 1, !tbaa !79
  %456 = icmp eq i8 %455, 61
  br i1 %456, label %457, label %507, !prof !256

457:                                              ; preds = %452
  %458 = getelementptr inbounds i8, ptr %454, i64 1
  store ptr %458, ptr %62, align 8, !tbaa !111
  store i8 34, ptr %453, align 4
  br label %507

459:                                              ; preds = %112
  %460 = getelementptr inbounds %struct.cpp_token, ptr %61, i64 0, i32 1
  store i8 37, ptr %460, align 4
  %461 = load ptr, ptr %62, align 8, !tbaa !111
  %462 = load i8, ptr %461, align 1, !tbaa !79
  %463 = icmp eq i8 %462, 35
  br i1 %463, label %464, label %466, !prof !257

464:                                              ; preds = %459
  %465 = getelementptr inbounds i8, ptr %461, i64 1
  store ptr %465, ptr %62, align 8, !tbaa !111
  store i8 38, ptr %460, align 4
  br label %466

466:                                              ; preds = %464, %459
  %467 = getelementptr inbounds %struct.cpp_token, ptr %61, i64 0, i32 3
  store i32 0, ptr %467, align 8, !tbaa !79
  br label %507

468:                                              ; preds = %112
  %469 = getelementptr inbounds %struct.cpp_token, ptr %61, i64 0, i32 1
  store i8 17, ptr %469, align 4
  br label %507

470:                                              ; preds = %112
  %471 = getelementptr inbounds %struct.cpp_token, ptr %61, i64 0, i32 1
  store i8 14, ptr %471, align 4
  br label %507

472:                                              ; preds = %112
  %473 = getelementptr inbounds %struct.cpp_token, ptr %61, i64 0, i32 1
  store i8 19, ptr %473, align 4
  br label %507

474:                                              ; preds = %112
  %475 = getelementptr inbounds %struct.cpp_token, ptr %61, i64 0, i32 1
  store i8 20, ptr %475, align 4
  br label %507

476:                                              ; preds = %112
  %477 = getelementptr inbounds %struct.cpp_token, ptr %61, i64 0, i32 1
  store i8 21, ptr %477, align 4
  br label %507

478:                                              ; preds = %112
  %479 = getelementptr inbounds %struct.cpp_token, ptr %61, i64 0, i32 1
  store i8 39, ptr %479, align 4
  br label %507

480:                                              ; preds = %112
  %481 = getelementptr inbounds %struct.cpp_token, ptr %61, i64 0, i32 1
  store i8 40, ptr %481, align 4
  br label %507

482:                                              ; preds = %112
  %483 = getelementptr inbounds %struct.cpp_token, ptr %61, i64 0, i32 1
  store i8 41, ptr %483, align 4
  br label %507

484:                                              ; preds = %112
  %485 = getelementptr inbounds %struct.cpp_token, ptr %61, i64 0, i32 1
  store i8 42, ptr %485, align 4
  br label %507

486:                                              ; preds = %112
  %487 = getelementptr inbounds %struct.cpp_token, ptr %61, i64 0, i32 1
  store i8 43, ptr %487, align 4
  br label %507

488:                                              ; preds = %112
  %489 = getelementptr inbounds %struct.cpp_token, ptr %61, i64 0, i32 1
  store i8 52, ptr %489, align 4
  br label %507

490:                                              ; preds = %112, %112
  %491 = load ptr, ptr %62, align 8, !tbaa !111
  %492 = getelementptr inbounds i8, ptr %491, i64 -1
  store ptr %492, ptr %62, align 8, !tbaa !111
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %5) #22
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %5, i8 0, i64 12, i1 false)
  %493 = call fastcc zeroext i8 @forms_identifier_p(ptr noundef nonnull %0, i32 noundef 1, ptr noundef nonnull %5) #18, !range !146
  %494 = icmp eq i8 %493, 0
  br i1 %494, label %495, label %498

495:                                              ; preds = %490
  %496 = load ptr, ptr %62, align 8, !tbaa !111
  %497 = getelementptr inbounds i8, ptr %496, i64 1
  store ptr %497, ptr %62, align 8, !tbaa !111
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %5) #22
  br label %504

498:                                              ; preds = %490
  %499 = getelementptr inbounds %struct.cpp_token, ptr %61, i64 0, i32 1
  store i8 53, ptr %499, align 4
  %500 = call fastcc ptr @lex_identifier(ptr noundef nonnull %0, ptr noundef nonnull %492, i8 noundef zeroext 1, ptr noundef nonnull %5) #18
  %501 = getelementptr inbounds %struct.cpp_token, ptr %61, i64 0, i32 3
  store ptr %500, ptr %501, align 8, !tbaa !79
  call fastcc void @warn_about_normalization(ptr noundef nonnull %0, ptr noundef nonnull %61, ptr noundef nonnull %5) #18
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %5) #22
  br label %507

502:                                              ; preds = %112
  %503 = load ptr, ptr %62, align 8, !tbaa !111
  br label %504

504:                                              ; preds = %502, %495
  %505 = phi ptr [ %503, %502 ], [ %497, %495 ]
  %506 = getelementptr inbounds i8, ptr %505, i64 -1
  call fastcc void @create_literal(ptr noundef nonnull %0, ptr noundef nonnull %61, ptr noundef nonnull %506, i32 noundef 1, i32 noundef 60) #18
  br label %507

507:                                              ; preds = %413, %357, %417, %358, %498, %145, %188, %208, %253, %256, %265, %466, %468, %470, %472, %474, %476, %478, %480, %482, %484, %486, %488, %504, %202, %191, %271, %288, %283, %295, %299, %290, %281, %314, %309, %307, %323, %342, %328, %335, %339, %321, %362, %368, %364, %355, %376, %374, %393, %395, %382, %387, %391, %403, %401, %411, %409, %423, %427, %421, %436, %431, %443, %438, %450, %445, %457, %452, %294, %303, %327, %370, %378, %397, %405, %33, %38, %21, %26
  %508 = phi ptr [ %12, %26 ], [ %12, %21 ], [ %12, %38 ], [ %12, %33 ], [ %61, %498 ], [ %61, %405 ], [ %61, %397 ], [ %61, %378 ], [ %61, %370 ], [ %61, %327 ], [ %61, %303 ], [ %61, %294 ], [ %61, %452 ], [ %61, %457 ], [ %61, %445 ], [ %61, %450 ], [ %61, %438 ], [ %61, %443 ], [ %61, %431 ], [ %61, %436 ], [ %61, %421 ], [ %61, %427 ], [ %61, %423 ], [ %61, %409 ], [ %61, %411 ], [ %61, %401 ], [ %61, %403 ], [ %61, %391 ], [ %61, %387 ], [ %61, %382 ], [ %61, %395 ], [ %61, %393 ], [ %61, %374 ], [ %61, %376 ], [ %61, %355 ], [ %61, %364 ], [ %61, %368 ], [ %61, %362 ], [ %61, %321 ], [ %61, %339 ], [ %61, %335 ], [ %61, %328 ], [ %61, %342 ], [ %61, %323 ], [ %61, %307 ], [ %61, %309 ], [ %61, %314 ], [ %61, %281 ], [ %61, %290 ], [ %61, %299 ], [ %61, %295 ], [ %61, %283 ], [ %61, %288 ], [ %61, %271 ], [ %61, %191 ], [ %61, %202 ], [ %61, %504 ], [ %61, %488 ], [ %61, %486 ], [ %61, %484 ], [ %61, %482 ], [ %61, %480 ], [ %61, %478 ], [ %61, %476 ], [ %61, %474 ], [ %61, %472 ], [ %61, %470 ], [ %61, %468 ], [ %61, %466 ], [ %61, %265 ], [ %61, %256 ], [ %61, %253 ], [ %61, %208 ], [ %61, %188 ], [ %61, %145 ], [ %61, %358 ], [ %61, %417 ], [ %61, %357 ], [ %61, %413 ]
  ret ptr %508
}

; Function Attrs: optsize
declare i32 @_cpp_handle_directive(ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef zeroext i8 @_cpp_get_fresh_line(ptr noundef %0) local_unnamed_addr #3 !prof !258 {
  %2 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 2
  %3 = load i8, ptr %2, align 8, !tbaa !187
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %5, label %41, !prof !259

5:                                                ; preds = %1
  %6 = load ptr, ptr %0, align 8, !tbaa !89
  br label %7

7:                                                ; preds = %5, %35
  %8 = phi ptr [ %36, %35 ], [ %6, %5 ]
  %9 = getelementptr inbounds %struct.cpp_buffer, ptr %8, i64 0, i32 13
  %10 = load i8, ptr %9, align 8, !tbaa !112
  %11 = icmp eq i8 %10, 0
  br i1 %11, label %41, label %12, !prof !260

12:                                               ; preds = %7
  %13 = getelementptr inbounds %struct.cpp_buffer, ptr %8, i64 0, i32 2
  %14 = load ptr, ptr %13, align 8, !tbaa !109
  %15 = getelementptr inbounds %struct.cpp_buffer, ptr %8, i64 0, i32 4
  %16 = load ptr, ptr %15, align 8, !tbaa !115
  %17 = icmp ult ptr %14, %16
  br i1 %17, label %18, label %19, !prof !261

18:                                               ; preds = %12
  tail call void @_cpp_clean_line(ptr noundef nonnull %0) #18
  br label %41

19:                                               ; preds = %12
  %20 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 2, i32 9
  %21 = load i8, ptr %20, align 1, !tbaa !183
  %22 = icmp eq i8 %21, 0
  br i1 %22, label %23, label %41, !prof !262

23:                                               ; preds = %19
  %24 = getelementptr inbounds %struct.cpp_buffer, ptr %8, i64 0, i32 3
  %25 = load ptr, ptr %24, align 8, !tbaa !263
  %26 = icmp ne ptr %25, %16
  %27 = icmp ugt ptr %14, %16
  %28 = and i1 %27, %26
  %29 = getelementptr inbounds %struct.cpp_buffer, ptr %8, i64 0, i32 14
  %30 = load i8, ptr %29, align 1
  %31 = and i8 %30, 2
  %32 = icmp eq i8 %31, 0
  %33 = select i1 %28, i1 %32, i1 false
  br i1 %33, label %34, label %35, !prof !264

34:                                               ; preds = %23
  store ptr %16, ptr %13, align 8, !tbaa !109
  br label %35

35:                                               ; preds = %23, %34
  tail call void @_cpp_pop_buffer(ptr noundef nonnull %0) #20
  %36 = load ptr, ptr %0, align 8, !tbaa !89
  %37 = icmp ne ptr %36, null
  %38 = and i8 %30, 4
  %39 = icmp eq i8 %38, 0
  %40 = select i1 %37, i1 %39, i1 false
  br i1 %40, label %7, label %41

41:                                               ; preds = %19, %7, %35, %18, %1
  %42 = phi i8 [ 0, %1 ], [ 1, %18 ], [ 1, %7 ], [ 0, %19 ], [ 0, %35 ]
  ret i8 %42
}

; Function Attrs: optsize
declare void @_cpp_pop_buffer(ptr noundef) local_unnamed_addr #5

; Function Attrs: optsize
declare i32 @linemap_position_for_column(ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @skip_whitespace(ptr noundef %0, i32 noundef %1) unnamed_addr #3 !prof !265 !PGOFuncName !266 {
  %3 = load ptr, ptr %0, align 8, !tbaa !89
  br label %4

4:                                                ; preds = %31, %2
  %5 = phi i32 [ %1, %2 ], [ %36, %31 ]
  %6 = phi i8 [ 0, %2 ], [ %32, %31 ]
  switch i32 %5, label %8 [
    i32 32, label %31
    i32 9, label %31
    i32 0, label %7
  ], !prof !267

7:                                                ; preds = %4
  br label %31

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 2
  %10 = load i8, ptr %9, align 8, !tbaa !187
  %11 = icmp eq i8 %10, 0
  br i1 %11, label %31, label %12

12:                                               ; preds = %8
  %13 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 53, i32 31
  %14 = load i8, ptr %13, align 1, !tbaa !228
  %15 = icmp eq i8 %14, 0
  br i1 %15, label %31, label %16

16:                                               ; preds = %12
  %17 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 3
  %18 = getelementptr inbounds %struct.cpp_buffer, ptr %3, i64 0, i32 1
  %19 = load ptr, ptr %17, align 8, !tbaa !137
  %20 = getelementptr inbounds %struct.line_maps, ptr %19, i64 0, i32 8
  %21 = load i32, ptr %20, align 4, !tbaa !138
  %22 = load ptr, ptr %3, align 8, !tbaa !111
  %23 = load ptr, ptr %18, align 8, !tbaa !110
  %24 = ptrtoint ptr %22 to i64
  %25 = ptrtoint ptr %23 to i64
  %26 = sub i64 %24, %25
  %27 = trunc i64 %26 to i32
  %28 = icmp eq i32 %5, 12
  %29 = select i1 %28, ptr @.str.13, ptr @.str.14
  %30 = tail call zeroext i8 (ptr, i32, i32, i32, ptr, ...) @cpp_error_with_line(ptr noundef nonnull %0, i32 noundef 2, i32 noundef %21, i32 noundef %27, ptr noundef nonnull @.str.12, ptr noundef nonnull %29) #20
  br label %31

31:                                               ; preds = %4, %4, %7, %16, %12, %8
  %32 = phi i8 [ %6, %4 ], [ 1, %7 ], [ %6, %16 ], [ %6, %12 ], [ %6, %8 ], [ %6, %4 ]
  %33 = load ptr, ptr %3, align 8, !tbaa !111
  %34 = getelementptr inbounds i8, ptr %33, i64 1
  store ptr %34, ptr %3, align 8, !tbaa !111
  %35 = load i8, ptr %33, align 1, !tbaa !79
  %36 = zext i8 %35 to i32
  %37 = zext i8 %35 to i64
  %38 = getelementptr inbounds [256 x i16], ptr @_sch_istable, i64 0, i64 %37
  %39 = load i16, ptr %38, align 2, !tbaa !118
  %40 = and i16 %39, 2048
  %41 = icmp eq i16 %40, 0
  br i1 %41, label %42, label %4, !prof !268, !llvm.loop !269

42:                                               ; preds = %31
  %43 = getelementptr inbounds i8, ptr %33, i64 1
  %44 = icmp eq i8 %32, 0
  br i1 %44, label %48, label %45, !prof !270

45:                                               ; preds = %42
  %46 = tail call zeroext i8 (ptr, i32, ptr, ...) @cpp_error(ptr noundef nonnull %0, i32 noundef 0, ptr noundef nonnull @.str.15) #20
  %47 = load ptr, ptr %3, align 8, !tbaa !111
  br label %48

48:                                               ; preds = %45, %42
  %49 = phi ptr [ %47, %45 ], [ %43, %42 ]
  %50 = getelementptr inbounds i8, ptr %49, i64 -1
  store ptr %50, ptr %3, align 8, !tbaa !111
  ret void
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #10

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @lex_number(ptr noundef %0, ptr nocapture noundef %1, ptr noundef %2) unnamed_addr #3 !prof !271 !PGOFuncName !272 {
  %4 = load ptr, ptr %0, align 8, !tbaa !89
  %5 = load ptr, ptr %4, align 8, !tbaa !111
  br label %6

6:                                                ; preds = %30, %3
  %7 = load ptr, ptr %0, align 8, !tbaa !89
  %8 = load ptr, ptr %7, align 8, !tbaa !111
  br label %9

9:                                                ; preds = %27, %6
  %10 = phi ptr [ %8, %6 ], [ %29, %27 ]
  %11 = load i8, ptr %10, align 1, !tbaa !79
  %12 = zext i8 %11 to i64
  %13 = getelementptr inbounds [256 x i16], ptr @_sch_istable, i64 0, i64 %12
  %14 = load i16, ptr %13, align 2, !tbaa !118
  %15 = and i16 %14, 516
  %16 = icmp ne i16 %15, 0
  %17 = icmp eq i8 %11, 46
  %18 = or i1 %17, %16
  br i1 %18, label %27, label %19, !prof !273

19:                                               ; preds = %9
  switch i8 %11, label %30 [
    i8 43, label %20
    i8 45, label %20
  ], !prof !274

20:                                               ; preds = %19, %19
  %21 = getelementptr inbounds i8, ptr %10, i64 -1
  %22 = load i8, ptr %21, align 1, !tbaa !79
  switch i8 %22, label %30 [
    i8 101, label %27
    i8 69, label %27
    i8 112, label %23
    i8 80, label %23
  ], !prof !275

23:                                               ; preds = %20, %20
  %24 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 53, i32 9
  %25 = load i8, ptr %24, align 1, !tbaa !276
  %26 = icmp eq i8 %25, 0
  br i1 %26, label %30, label %27, !prof !277

27:                                               ; preds = %20, %20, %9, %23
  %28 = getelementptr inbounds %struct.normalize_state, ptr %2, i64 0, i32 1
  %29 = getelementptr inbounds i8, ptr %10, i64 1
  store i32 0, ptr %2, align 4, !tbaa !278
  store i8 0, ptr %28, align 4, !tbaa !280
  br label %9, !llvm.loop !281

30:                                               ; preds = %20, %19, %23
  store ptr %10, ptr %7, align 8, !tbaa !111
  %31 = tail call fastcc zeroext i8 @forms_identifier_p(ptr noundef nonnull %0, i32 noundef 0, ptr noundef %2) #18, !range !146
  %32 = icmp eq i8 %31, 0
  br i1 %32, label %33, label %6, !prof !282, !llvm.loop !283

33:                                               ; preds = %30
  %34 = getelementptr inbounds i8, ptr %5, i64 -1
  %35 = ptrtoint ptr %10 to i64
  %36 = ptrtoint ptr %34 to i64
  %37 = sub i64 %35, %36
  %38 = trunc i64 %37 to i32
  store i32 %38, ptr %1, align 8, !tbaa !284
  %39 = add i64 %37, 1
  %40 = and i64 %39, 4294967295
  %41 = tail call ptr @_cpp_unaligned_alloc(ptr noundef nonnull %0, i64 noundef %40) #18
  %42 = load i32, ptr %1, align 8, !tbaa !284
  %43 = zext i32 %42 to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %41, ptr nonnull align 1 %34, i64 %43, i1 false)
  %44 = load i32, ptr %1, align 8, !tbaa !284
  %45 = zext i32 %44 to i64
  %46 = getelementptr inbounds i8, ptr %41, i64 %45
  store i8 0, ptr %46, align 1, !tbaa !79
  %47 = getelementptr inbounds %struct.cpp_string, ptr %1, i64 0, i32 1
  store ptr %41, ptr %47, align 8, !tbaa !286
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @warn_about_normalization(ptr noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) unnamed_addr #3 !prof !287 !PGOFuncName !288 {
  %4 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 53, i32 40
  %5 = load i32, ptr %4, align 8, !tbaa !289
  %6 = getelementptr inbounds %struct.normalize_state, ptr %2, i64 0, i32 2
  %7 = load i32, ptr %6, align 4, !tbaa !290
  %8 = icmp ult i32 %5, %7
  br i1 %8, label %9, label %27, !prof !291

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 2, i32 2
  %11 = load i8, ptr %10, align 2, !tbaa !158
  %12 = icmp eq i8 %11, 0
  br i1 %12, label %13, label %27

13:                                               ; preds = %9
  %14 = tail call i32 @cpp_token_len(ptr noundef %1) #18
  %15 = zext i32 %14 to i64
  %16 = tail call ptr @xmalloc(i64 noundef %15) #20
  %17 = tail call ptr @cpp_spell_token(ptr noundef nonnull %0, ptr noundef %1, ptr noundef %16, i8 noundef zeroext 0) #18
  %18 = ptrtoint ptr %17 to i64
  %19 = ptrtoint ptr %16 to i64
  %20 = sub i64 %18, %19
  %21 = load i32, ptr %6, align 4, !tbaa !290
  %22 = icmp eq i32 %21, 1
  %23 = load i32, ptr %1, align 8, !tbaa !193
  %24 = trunc i64 %20 to i32
  %25 = select i1 %22, ptr @.str.16, ptr @.str.17
  %26 = tail call zeroext i8 (ptr, i32, i32, i32, ptr, ...) @cpp_error_with_line(ptr noundef nonnull %0, i32 noundef 0, i32 noundef %23, i32 noundef 0, ptr noundef nonnull %25, i32 noundef %24, ptr noundef %16) #20
  br label %27

27:                                               ; preds = %13, %9, %3
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @lex_string(ptr noundef %0, ptr nocapture noundef %1, ptr noundef %2) unnamed_addr #3 !prof !292 !PGOFuncName !293 {
  %4 = getelementptr inbounds i8, ptr %2, i64 1
  %5 = load i8, ptr %2, align 1, !tbaa !79
  switch i8 %5, label %15 [
    i8 85, label %10
    i8 76, label %10
    i8 117, label %6
  ], !prof !294

6:                                                ; preds = %3
  %7 = getelementptr inbounds i8, ptr %2, i64 2
  %8 = load i8, ptr %4, align 1, !tbaa !79
  %9 = icmp eq i8 %8, 56
  br i1 %9, label %10, label %15

10:                                               ; preds = %6, %3, %3
  %11 = phi i64 [ 2, %3 ], [ 2, %3 ], [ 3, %6 ]
  %12 = phi ptr [ %4, %3 ], [ %4, %3 ], [ %7, %6 ]
  %13 = getelementptr inbounds i8, ptr %2, i64 %11
  %14 = load i8, ptr %12, align 1, !tbaa !79
  br label %15

15:                                               ; preds = %10, %3, %6
  %16 = phi ptr [ %7, %6 ], [ %4, %3 ], [ %13, %10 ]
  %17 = phi i8 [ %8, %6 ], [ %5, %3 ], [ %14, %10 ]
  switch i8 %17, label %31 [
    i8 82, label %18
    i8 34, label %19
    i8 39, label %26
  ], !prof !295

18:                                               ; preds = %15
  tail call fastcc void @lex_raw_string(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %2, ptr noundef nonnull %16) #18
  br label %84

19:                                               ; preds = %15
  switch i8 %5, label %25 [
    i8 76, label %31
    i8 85, label %24
    i8 117, label %20
  ], !prof !296

20:                                               ; preds = %19
  %21 = load i8, ptr %4, align 1, !tbaa !79
  %22 = icmp eq i8 %21, 56
  %23 = select i1 %22, i32 65, i32 63
  br label %31

24:                                               ; preds = %19
  br label %31

25:                                               ; preds = %19
  br label %31

26:                                               ; preds = %15
  switch i8 %5, label %27 [
    i8 76, label %31
    i8 85, label %30
  ], !prof !297

27:                                               ; preds = %26
  %28 = icmp eq i8 %5, 117
  %29 = select i1 %28, i32 58, i32 56
  br label %31

30:                                               ; preds = %26
  br label %31

31:                                               ; preds = %15, %27, %30, %26, %20, %24, %25, %19
  %32 = phi i1 [ false, %19 ], [ false, %25 ], [ false, %24 ], [ false, %20 ], [ false, %26 ], [ false, %30 ], [ false, %27 ], [ true, %15 ]
  %33 = phi i32 [ 34, %19 ], [ 34, %25 ], [ 34, %24 ], [ 34, %20 ], [ 39, %26 ], [ 39, %30 ], [ 39, %27 ], [ 62, %15 ]
  %34 = phi i32 [ 62, %19 ], [ 61, %25 ], [ 64, %24 ], [ %23, %20 ], [ 57, %26 ], [ 59, %30 ], [ %29, %27 ], [ 67, %15 ]
  br label %35

35:                                               ; preds = %57, %31
  %36 = phi ptr [ %16, %31 ], [ %40, %57 ]
  %37 = phi i1 [ true, %31 ], [ false, %57 ]
  br label %38

38:                                               ; preds = %53, %35
  %39 = phi ptr [ %36, %35 ], [ %54, %53 ]
  %40 = getelementptr inbounds i8, ptr %39, i64 1
  %41 = load i8, ptr %39, align 1, !tbaa !79
  %42 = zext i8 %41 to i32
  %43 = icmp eq i8 %41, 92
  br i1 %43, label %44, label %55, !prof !298

44:                                               ; preds = %38
  %45 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 2, i32 3
  %46 = load i8, ptr %45, align 1, !tbaa !231
  %47 = icmp eq i8 %46, 0
  br i1 %47, label %48, label %55, !prof !299

48:                                               ; preds = %44
  %49 = load i8, ptr %40, align 1, !tbaa !79
  %50 = icmp eq i8 %49, 10
  br i1 %50, label %55, label %51, !prof !300

51:                                               ; preds = %48
  %52 = getelementptr inbounds i8, ptr %39, i64 2
  br label %53

53:                                               ; preds = %51, %57
  %54 = phi ptr [ %52, %51 ], [ %40, %57 ]
  br label %38

55:                                               ; preds = %48, %44, %38
  %56 = icmp eq i32 %33, %42
  br i1 %56, label %61, label %57, !prof !301

57:                                               ; preds = %55
  switch i8 %41, label %53 [
    i8 10, label %58
    i8 0, label %35
  ], !prof !302

58:                                               ; preds = %57
  br i1 %32, label %59, label %61

59:                                               ; preds = %58
  %60 = getelementptr inbounds %struct.cpp_token, ptr %1, i64 0, i32 1
  store i8 3, ptr %60, align 4
  br label %84

61:                                               ; preds = %55, %58
  %62 = phi ptr [ %39, %58 ], [ %40, %55 ]
  %63 = phi i32 [ 60, %58 ], [ %34, %55 ]
  br i1 %37, label %70, label %64, !prof !303

64:                                               ; preds = %61
  %65 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 2, i32 2
  %66 = load i8, ptr %65, align 2, !tbaa !158
  %67 = icmp eq i8 %66, 0
  br i1 %67, label %68, label %70

68:                                               ; preds = %64
  %69 = tail call zeroext i8 (ptr, i32, ptr, ...) @cpp_error(ptr noundef nonnull %0, i32 noundef 0, ptr noundef nonnull @.str.18) #20
  br label %70

70:                                               ; preds = %68, %64, %61
  %71 = icmp eq i32 %63, 60
  br i1 %71, label %72, label %78, !prof !304

72:                                               ; preds = %70
  %73 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 53, i32 1
  %74 = load i32, ptr %73, align 4, !tbaa !227
  %75 = icmp eq i32 %74, 9
  br i1 %75, label %78, label %76

76:                                               ; preds = %72
  %77 = tail call zeroext i8 (ptr, i32, ptr, ...) @cpp_error(ptr noundef nonnull %0, i32 noundef 2, ptr noundef nonnull @.str.19, i32 noundef %33) #20
  br label %78

78:                                               ; preds = %76, %72, %70
  %79 = load ptr, ptr %0, align 8, !tbaa !89
  store ptr %62, ptr %79, align 8, !tbaa !111
  %80 = ptrtoint ptr %62 to i64
  %81 = ptrtoint ptr %2 to i64
  %82 = sub i64 %80, %81
  %83 = trunc i64 %82 to i32
  tail call fastcc void @create_literal(ptr noundef nonnull %0, ptr noundef %1, ptr noundef nonnull %2, i32 noundef %83, i32 noundef %63) #18
  br label %84

84:                                               ; preds = %59, %78, %18
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @lex_identifier(ptr noundef %0, ptr noundef %1, i8 noundef zeroext %2, ptr noundef %3) unnamed_addr #3 !prof !305 !PGOFuncName !306 {
  %5 = load ptr, ptr %0, align 8, !tbaa !89
  %6 = icmp eq i8 %2, 0
  br i1 %6, label %7, label %38, !prof !222

7:                                                ; preds = %4
  %8 = load ptr, ptr %5, align 8, !tbaa !111
  %9 = load i8, ptr %1, align 1, !tbaa !79
  %10 = zext i8 %9 to i32
  %11 = add nsw i32 %10, -113
  %12 = load i8, ptr %8, align 1, !tbaa !79
  %13 = zext i8 %12 to i64
  %14 = getelementptr inbounds [256 x i16], ptr @_sch_istable, i64 0, i64 %13
  %15 = load i16, ptr %14, align 2, !tbaa !118
  %16 = and i16 %15, 516
  %17 = icmp eq i16 %16, 0
  br i1 %17, label %33, label %18, !prof !307

18:                                               ; preds = %7, %18
  %19 = phi i8 [ %27, %18 ], [ %12, %7 ]
  %20 = phi i32 [ %25, %18 ], [ %11, %7 ]
  %21 = phi ptr [ %26, %18 ], [ %8, %7 ]
  %22 = zext i8 %19 to i32
  %23 = mul i32 %20, 67
  %24 = add i32 %23, -113
  %25 = add i32 %24, %22
  %26 = getelementptr inbounds i8, ptr %21, i64 1
  %27 = load i8, ptr %26, align 1, !tbaa !79
  %28 = zext i8 %27 to i64
  %29 = getelementptr inbounds [256 x i16], ptr @_sch_istable, i64 0, i64 %28
  %30 = load i16, ptr %29, align 2, !tbaa !118
  %31 = and i16 %30, 516
  %32 = icmp eq i16 %31, 0
  br i1 %32, label %33, label %18, !prof !308, !llvm.loop !309

33:                                               ; preds = %18, %7
  %34 = phi ptr [ %8, %7 ], [ %26, %18 ]
  %35 = phi i32 [ %11, %7 ], [ %25, %18 ]
  store ptr %34, ptr %5, align 8, !tbaa !111
  %36 = tail call fastcc zeroext i8 @forms_identifier_p(ptr noundef nonnull %0, i32 noundef 0, ptr noundef %3) #18, !range !146
  %37 = icmp eq i8 %36, 0
  br i1 %37, label %68, label %38, !prof !222

38:                                               ; preds = %4, %33
  %39 = getelementptr inbounds %struct.normalize_state, ptr %3, i64 0, i32 1
  br label %40

40:                                               ; preds = %58, %38
  %41 = load ptr, ptr %0, align 8, !tbaa !89
  %42 = load ptr, ptr %41, align 8, !tbaa !111
  %43 = load i8, ptr %42, align 1, !tbaa !79
  %44 = zext i8 %43 to i64
  %45 = getelementptr inbounds [256 x i16], ptr @_sch_istable, i64 0, i64 %44
  %46 = load i16, ptr %45, align 2, !tbaa !118
  %47 = and i16 %46, 516
  %48 = icmp eq i16 %47, 0
  br i1 %48, label %58, label %49

49:                                               ; preds = %40, %49
  %50 = phi ptr [ %51, %49 ], [ %42, %40 ]
  %51 = getelementptr inbounds i8, ptr %50, i64 1
  store ptr %51, ptr %41, align 8, !tbaa !111
  store i32 0, ptr %3, align 4, !tbaa !278
  store i8 0, ptr %39, align 4, !tbaa !280
  %52 = load i8, ptr %51, align 1, !tbaa !79
  %53 = zext i8 %52 to i64
  %54 = getelementptr inbounds [256 x i16], ptr @_sch_istable, i64 0, i64 %53
  %55 = load i16, ptr %54, align 2, !tbaa !118
  %56 = and i16 %55, 516
  %57 = icmp eq i16 %56, 0
  br i1 %57, label %58, label %49, !llvm.loop !310

58:                                               ; preds = %49, %40
  %59 = tail call fastcc zeroext i8 @forms_identifier_p(ptr noundef nonnull %0, i32 noundef 0, ptr noundef %3) #18, !range !146
  %60 = icmp eq i8 %59, 0
  br i1 %60, label %61, label %40, !llvm.loop !311

61:                                               ; preds = %58
  %62 = load ptr, ptr %0, align 8, !tbaa !89
  %63 = load ptr, ptr %62, align 8, !tbaa !111
  %64 = ptrtoint ptr %63 to i64
  %65 = ptrtoint ptr %1 to i64
  %66 = sub i64 %64, %65
  %67 = tail call ptr @_cpp_interpret_identifier(ptr noundef nonnull %0, ptr noundef nonnull %1, i64 noundef %66) #20
  br label %78

68:                                               ; preds = %33
  %69 = ptrtoint ptr %34 to i64
  %70 = ptrtoint ptr %1 to i64
  %71 = sub i64 %69, %70
  %72 = trunc i64 %71 to i32
  %73 = add i32 %35, %72
  %74 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 50
  %75 = load ptr, ptr %74, align 8, !tbaa !157
  %76 = and i64 %71, 4294967295
  %77 = tail call ptr @ht_lookup_with_hash(ptr noundef %75, ptr noundef nonnull %1, i64 noundef %76, i32 noundef %73, i32 noundef 1) #20
  br label %78

78:                                               ; preds = %68, %61
  %79 = phi ptr [ %67, %61 ], [ %77, %68 ]
  %80 = getelementptr inbounds %struct.cpp_hashnode, ptr %79, i64 0, i32 3
  %81 = load i16, ptr %80, align 2
  %82 = lshr i16 %81, 6
  %83 = zext nneg i16 %82 to i32
  %84 = and i32 %83, 8
  %85 = icmp eq i32 %84, 0
  br i1 %85, label %116, label %86, !prof !222

86:                                               ; preds = %78
  %87 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 2, i32 2
  %88 = load i8, ptr %87, align 2, !tbaa !158
  %89 = icmp eq i8 %88, 0
  br i1 %89, label %90, label %116

90:                                               ; preds = %86
  %91 = and i32 %83, 2
  %92 = icmp eq i32 %91, 0
  br i1 %92, label %100, label %93

93:                                               ; preds = %90
  %94 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 2, i32 7
  %95 = load i8, ptr %94, align 1, !tbaa !159
  %96 = icmp eq i8 %95, 0
  br i1 %96, label %97, label %100

97:                                               ; preds = %93
  %98 = load ptr, ptr %79, align 8, !tbaa !82
  %99 = tail call zeroext i8 (ptr, i32, ptr, ...) @cpp_error(ptr noundef nonnull %0, i32 noundef 3, ptr noundef nonnull @.str.5, ptr noundef %98) #20
  br label %100

100:                                              ; preds = %97, %93, %90
  %101 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 54, i32 3
  %102 = load ptr, ptr %101, align 8, !tbaa !160
  %103 = icmp eq ptr %79, %102
  br i1 %103, label %104, label %110

104:                                              ; preds = %100
  %105 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 2, i32 6
  %106 = load i8, ptr %105, align 2, !tbaa !161
  %107 = icmp eq i8 %106, 0
  br i1 %107, label %108, label %110

108:                                              ; preds = %104
  %109 = tail call zeroext i8 (ptr, i32, ptr, ...) @cpp_error(ptr noundef nonnull %0, i32 noundef 2, ptr noundef nonnull @.str.6) #20
  br label %110

110:                                              ; preds = %108, %104, %100
  %111 = load i16, ptr %80, align 2
  %112 = icmp sgt i16 %111, -1
  br i1 %112, label %116, label %113

113:                                              ; preds = %110
  %114 = load ptr, ptr %79, align 8, !tbaa !82
  %115 = tail call zeroext i8 (ptr, i32, ptr, ...) @cpp_error(ptr noundef nonnull %0, i32 noundef 0, ptr noundef nonnull @.str.7, ptr noundef %114) #20
  br label %116

116:                                              ; preds = %110, %113, %86, %78
  ret ptr %79
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc i32 @cpp_in_system_header(ptr nocapture noundef readonly %0) unnamed_addr #11 !prof !78 !PGOFuncName !312 {
  %2 = load ptr, ptr %0, align 8, !tbaa !89
  %3 = icmp eq ptr %2, null
  br i1 %3, label %8, label %4

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.cpp_buffer, ptr %2, i64 0, i32 15
  %6 = load i8, ptr %5, align 2, !tbaa !313
  %7 = zext i8 %6 to i32
  br label %8

8:                                                ; preds = %1, %4
  %9 = phi i32 [ %7, %4 ], [ 0, %1 ]
  ret i32 %9
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @skip_line_comment(ptr noundef %0) unnamed_addr #3 !prof !78 !PGOFuncName !314 {
  %2 = load ptr, ptr %0, align 8, !tbaa !89
  %3 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 3
  %4 = load ptr, ptr %3, align 8, !tbaa !137
  %5 = getelementptr inbounds %struct.line_maps, ptr %4, i64 0, i32 8
  %6 = load i32, ptr %5, align 4, !tbaa !138
  %7 = load ptr, ptr %2, align 8, !tbaa !111
  %8 = load i8, ptr %7, align 1, !tbaa !79
  %9 = icmp eq i8 %8, 10
  br i1 %9, label %15, label %10

10:                                               ; preds = %1, %10
  %11 = phi ptr [ %12, %10 ], [ %7, %1 ]
  %12 = getelementptr inbounds i8, ptr %11, i64 1
  store ptr %12, ptr %2, align 8, !tbaa !111
  %13 = load i8, ptr %12, align 1, !tbaa !79
  %14 = icmp eq i8 %13, 10
  br i1 %14, label %15, label %10, !llvm.loop !315

15:                                               ; preds = %10, %1
  tail call void @_cpp_process_line_notes(ptr noundef nonnull %0, i32 noundef 1) #18
  %16 = load ptr, ptr %3, align 8, !tbaa !137
  %17 = getelementptr inbounds %struct.line_maps, ptr %16, i64 0, i32 8
  %18 = load i32, ptr %17, align 4, !tbaa !138
  %19 = icmp ne i32 %6, %18
  %20 = zext i1 %19 to i32
  ret i32 %20
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @save_comment(ptr nocapture noundef %0, ptr nocapture noundef %1, ptr noundef %2, i32 noundef %3) unnamed_addr #3 !prof !78 !PGOFuncName !316 {
  %5 = load ptr, ptr %0, align 8, !tbaa !89
  %6 = load ptr, ptr %5, align 8, !tbaa !111
  %7 = ptrtoint ptr %6 to i64
  %8 = ptrtoint ptr %2 to i64
  %9 = sub i64 %7, %8
  %10 = trunc i64 %9 to i32
  %11 = getelementptr inbounds i8, ptr %6, i64 -1
  %12 = load i8, ptr %11, align 1, !tbaa !79
  %13 = zext i8 %12 to i64
  %14 = getelementptr inbounds [256 x i16], ptr @_sch_istable, i64 0, i64 %13
  %15 = load i16, ptr %14, align 2, !tbaa !118
  %16 = and i16 %15, 1024
  %17 = icmp eq i16 %16, 0
  %18 = zext i1 %17 to i32
  %19 = add i32 %18, %10
  %20 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 2
  %21 = load i8, ptr %20, align 8, !tbaa !187
  %22 = icmp ne i8 %21, 0
  %23 = icmp eq i32 %3, 47
  %24 = and i1 %23, %22
  %25 = add i32 %19, 2
  %26 = select i1 %24, i32 %25, i32 %19
  %27 = zext i32 %26 to i64
  %28 = tail call ptr @_cpp_unaligned_alloc(ptr noundef nonnull %0, i64 noundef %27) #18
  %29 = getelementptr inbounds %struct.cpp_token, ptr %1, i64 0, i32 1
  store i8 68, ptr %29, align 4
  %30 = getelementptr inbounds %struct.cpp_token, ptr %1, i64 0, i32 3
  store i32 %26, ptr %30, align 8, !tbaa !79
  %31 = getelementptr inbounds %struct.cpp_token, ptr %1, i64 0, i32 3, i32 0, i32 1
  store ptr %28, ptr %31, align 8, !tbaa !79
  store i8 47, ptr %28, align 1, !tbaa !79
  %32 = getelementptr inbounds i8, ptr %28, i64 1
  %33 = add i32 %19, -1
  %34 = zext i32 %33 to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %32, ptr align 1 %2, i64 %34, i1 false)
  %35 = load i8, ptr %20, align 8, !tbaa !187
  %36 = icmp ne i8 %35, 0
  %37 = and i1 %23, %36
  br i1 %37, label %38, label %45

38:                                               ; preds = %4
  store i8 42, ptr %32, align 1, !tbaa !79
  %39 = add i32 %26, -2
  %40 = zext i32 %39 to i64
  %41 = getelementptr inbounds i8, ptr %28, i64 %40
  store i8 42, ptr %41, align 1, !tbaa !79
  %42 = add i32 %26, -1
  %43 = zext i32 %42 to i64
  %44 = getelementptr inbounds i8, ptr %28, i64 %43
  store i8 47, ptr %44, align 1, !tbaa !79
  br label %45

45:                                               ; preds = %38, %4
  tail call fastcc void @store_comment(ptr noundef nonnull %0, ptr noundef nonnull %1) #18
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef zeroext i8 @forms_identifier_p(ptr noundef %0, i32 noundef %1, ptr noundef %2) unnamed_addr #3 !prof !287 !PGOFuncName !317 {
  %4 = load ptr, ptr %0, align 8, !tbaa !89
  %5 = load ptr, ptr %4, align 8, !tbaa !111
  %6 = load i8, ptr %5, align 1, !tbaa !79
  %7 = icmp eq i8 %6, 36
  br i1 %7, label %8, label %23, !prof !291

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 53, i32 24
  %10 = load i8, ptr %9, align 2, !tbaa !318
  %11 = icmp eq i8 %10, 0
  br i1 %11, label %43, label %12

12:                                               ; preds = %8
  %13 = getelementptr inbounds i8, ptr %5, i64 1
  store ptr %13, ptr %4, align 8, !tbaa !111
  %14 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 53, i32 26
  %15 = load i8, ptr %14, align 8, !tbaa !319
  %16 = icmp eq i8 %15, 0
  br i1 %16, label %43, label %17

17:                                               ; preds = %12
  %18 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 2, i32 2
  %19 = load i8, ptr %18, align 2, !tbaa !158
  %20 = icmp eq i8 %19, 0
  br i1 %20, label %21, label %43

21:                                               ; preds = %17
  store i8 0, ptr %14, align 8, !tbaa !319
  %22 = tail call zeroext i8 (ptr, i32, ptr, ...) @cpp_error(ptr noundef nonnull %0, i32 noundef 2, ptr noundef nonnull @.str.28) #20
  br label %43

23:                                               ; preds = %3
  %24 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 53, i32 25
  %25 = load i8, ptr %24, align 1, !tbaa !320
  %26 = icmp eq i8 %25, 0
  br i1 %26, label %43, label %27, !prof !321

27:                                               ; preds = %23
  %28 = icmp eq i8 %6, 92
  br i1 %28, label %29, label %43

29:                                               ; preds = %27
  %30 = getelementptr inbounds i8, ptr %5, i64 1
  %31 = load i8, ptr %30, align 1, !tbaa !79
  switch i8 %31, label %43 [
    i8 117, label %32
    i8 85, label %32
  ]

32:                                               ; preds = %29, %29
  %33 = getelementptr inbounds i8, ptr %5, i64 2
  store ptr %33, ptr %4, align 8, !tbaa !111
  %34 = getelementptr inbounds %struct.cpp_buffer, ptr %4, i64 0, i32 4
  %35 = load ptr, ptr %34, align 8, !tbaa !115
  %36 = icmp eq i32 %1, 0
  %37 = select i1 %36, i32 2, i32 1
  %38 = tail call i32 @_cpp_valid_ucn(ptr noundef nonnull %0, ptr noundef nonnull %4, ptr noundef %35, i32 noundef %37, ptr noundef %2) #20
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %40, label %43

40:                                               ; preds = %32
  %41 = load ptr, ptr %4, align 8, !tbaa !111
  %42 = getelementptr inbounds i8, ptr %41, i64 -2
  store ptr %42, ptr %4, align 8, !tbaa !111
  br label %43

43:                                               ; preds = %23, %27, %40, %29, %32, %12, %17, %21, %8
  %44 = phi i8 [ 0, %8 ], [ 1, %21 ], [ 1, %17 ], [ 1, %12 ], [ 1, %32 ], [ 0, %29 ], [ 0, %40 ], [ 0, %27 ], [ 0, %23 ]
  ret i8 %44
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @create_literal(ptr nocapture noundef %0, ptr nocapture noundef writeonly %1, ptr nocapture noundef readonly %2, i32 noundef %3, i32 noundef %4) unnamed_addr #3 !prof !292 !PGOFuncName !322 {
  %6 = add i32 %3, 1
  %7 = zext i32 %6 to i64
  %8 = tail call ptr @_cpp_unaligned_alloc(ptr noundef %0, i64 noundef %7) #18
  %9 = zext i32 %3 to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %8, ptr align 1 %2, i64 %9, i1 false)
  %10 = getelementptr inbounds i8, ptr %8, i64 %9
  store i8 0, ptr %10, align 1, !tbaa !79
  %11 = getelementptr inbounds %struct.cpp_token, ptr %1, i64 0, i32 1
  %12 = trunc i32 %4 to i8
  store i8 %12, ptr %11, align 4
  %13 = getelementptr inbounds %struct.cpp_token, ptr %1, i64 0, i32 3
  store i32 %3, ptr %13, align 8, !tbaa !79
  %14 = getelementptr inbounds %struct.cpp_token, ptr %1, i64 0, i32 3, i32 0, i32 1
  store ptr %8, ptr %14, align 8, !tbaa !79
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @_cpp_unaligned_alloc(ptr nocapture noundef %0, i64 noundef %1) local_unnamed_addr #3 !prof !323 {
  %3 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 6
  %4 = load ptr, ptr %3, align 8, !tbaa !324
  %5 = getelementptr inbounds %struct._cpp_buff, ptr %4, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !325
  %7 = getelementptr inbounds %struct._cpp_buff, ptr %4, i64 0, i32 3
  %8 = load ptr, ptr %7, align 8, !tbaa !327
  %9 = ptrtoint ptr %8 to i64
  %10 = ptrtoint ptr %6 to i64
  %11 = sub i64 %9, %10
  %12 = icmp ult i64 %11, %1
  br i1 %12, label %13, label %18, !prof !328

13:                                               ; preds = %2
  %14 = tail call ptr @_cpp_get_buff(ptr noundef nonnull %0, i64 noundef %1) #18
  %15 = load ptr, ptr %3, align 8, !tbaa !324
  store ptr %15, ptr %14, align 8, !tbaa !329
  store ptr %14, ptr %3, align 8, !tbaa !324
  %16 = getelementptr inbounds %struct._cpp_buff, ptr %14, i64 0, i32 2
  %17 = load ptr, ptr %16, align 8, !tbaa !325
  br label %18

18:                                               ; preds = %13, %2
  %19 = phi ptr [ %14, %13 ], [ %4, %2 ]
  %20 = phi ptr [ %17, %13 ], [ %6, %2 ]
  %21 = getelementptr inbounds i8, ptr %20, i64 %1
  %22 = getelementptr inbounds %struct._cpp_buff, ptr %19, i64 0, i32 2
  store ptr %21, ptr %22, align 8, !tbaa !325
  ret ptr %20
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @cpp_token_len(ptr nocapture noundef readonly %0) local_unnamed_addr #11 !prof !78 {
  %2 = getelementptr inbounds %struct.cpp_token, ptr %0, i64 0, i32 1
  %3 = load i8, ptr %2, align 4
  %4 = zext i8 %3 to i64
  %5 = getelementptr inbounds [73 x %struct.token_spelling], ptr @token_spellings, i64 0, i64 %4
  %6 = load i32, ptr %5, align 16, !tbaa !330
  switch i32 %6, label %16 [
    i32 2, label %7
    i32 1, label %10
  ]

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.cpp_token, ptr %0, i64 0, i32 3
  %9 = load i32, ptr %8, align 8, !tbaa !79
  br label %16

10:                                               ; preds = %1
  %11 = getelementptr inbounds %struct.cpp_token, ptr %0, i64 0, i32 3
  %12 = load ptr, ptr %11, align 8, !tbaa !79
  %13 = getelementptr inbounds %struct.ht_identifier, ptr %12, i64 0, i32 1
  %14 = load i32, ptr %13, align 8, !tbaa !332
  %15 = mul i32 %14, 10
  br label %16

16:                                               ; preds = %1, %10, %7
  %17 = phi i32 [ %15, %10 ], [ %9, %7 ], [ 6, %1 ]
  ret i32 %17
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @cpp_spell_token(ptr noundef %0, ptr nocapture noundef readonly %1, ptr noundef writeonly %2, i8 noundef zeroext %3) local_unnamed_addr #3 !prof !78 {
  %5 = getelementptr inbounds %struct.cpp_token, ptr %1, i64 0, i32 1
  %6 = load i8, ptr %5, align 4
  %7 = zext i8 %6 to i32
  %8 = zext i8 %6 to i64
  %9 = getelementptr inbounds [73 x %struct.token_spelling], ptr @token_spellings, i64 0, i64 %8
  %10 = load i32, ptr %9, align 16, !tbaa !330
  switch i32 %10, label %92 [
    i32 0, label %11
    i32 1, label %37
    i32 2, label %79
    i32 3, label %88
  ]

11:                                               ; preds = %4
  %12 = getelementptr inbounds %struct.cpp_token, ptr %1, i64 0, i32 2
  %13 = load i16, ptr %12, align 2, !tbaa !180
  %14 = zext i16 %13 to i32
  %15 = and i32 %14, 2
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %19, label %17

17:                                               ; preds = %11
  %18 = tail call fastcc ptr @cpp_digraph2name(i32 noundef %7) #18
  br label %25

19:                                               ; preds = %11
  %20 = and i32 %14, 16
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %37

22:                                               ; preds = %19
  %23 = getelementptr inbounds [73 x %struct.token_spelling], ptr @token_spellings, i64 0, i64 %8, i32 1
  %24 = load ptr, ptr %23, align 8, !tbaa !333
  br label %25

25:                                               ; preds = %22, %17
  %26 = phi ptr [ %18, %17 ], [ %24, %22 ]
  %27 = load i8, ptr %26, align 1, !tbaa !79
  %28 = icmp eq i8 %27, 0
  br i1 %28, label %92, label %29

29:                                               ; preds = %25, %29
  %30 = phi i8 [ %35, %29 ], [ %27, %25 ]
  %31 = phi ptr [ %34, %29 ], [ %2, %25 ]
  %32 = phi ptr [ %33, %29 ], [ %26, %25 ]
  %33 = getelementptr inbounds i8, ptr %32, i64 1
  %34 = getelementptr inbounds i8, ptr %31, i64 1
  store i8 %30, ptr %31, align 1, !tbaa !79
  %35 = load i8, ptr %33, align 1, !tbaa !79
  %36 = icmp eq i8 %35, 0
  br i1 %36, label %92, label %29, !llvm.loop !334

37:                                               ; preds = %19, %4
  %38 = icmp eq i8 %3, 0
  %39 = getelementptr inbounds %struct.cpp_token, ptr %1, i64 0, i32 3
  %40 = load ptr, ptr %39, align 8, !tbaa !79
  %41 = load ptr, ptr %40, align 8, !tbaa !82
  %42 = getelementptr inbounds %struct.ht_identifier, ptr %40, i64 0, i32 1
  %43 = load i32, ptr %42, align 8, !tbaa !332
  br i1 %38, label %51, label %44

44:                                               ; preds = %37
  %45 = zext i32 %43 to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %2, ptr align 1 %41, i64 %45, i1 false)
  %46 = load ptr, ptr %39, align 8, !tbaa !79
  %47 = getelementptr inbounds %struct.ht_identifier, ptr %46, i64 0, i32 1
  %48 = load i32, ptr %47, align 8, !tbaa !332
  %49 = zext i32 %48 to i64
  %50 = getelementptr inbounds i8, ptr %2, i64 %49
  br label %92

51:                                               ; preds = %37
  %52 = icmp eq i32 %43, 0
  br i1 %52, label %92, label %53

53:                                               ; preds = %51, %70
  %54 = phi ptr [ %74, %70 ], [ %40, %51 ]
  %55 = phi ptr [ %72, %70 ], [ %2, %51 ]
  %56 = phi i64 [ %73, %70 ], [ 0, %51 ]
  %57 = getelementptr inbounds i8, ptr %41, i64 %56
  %58 = load i8, ptr %57, align 1, !tbaa !79
  %59 = icmp sgt i8 %58, -1
  br i1 %59, label %65, label %60

60:                                               ; preds = %53
  %61 = tail call fastcc i64 @utf8_to_ucn(ptr noundef %55, ptr noundef nonnull %57) #18, !range !335
  %62 = add nsw i64 %56, -1
  %63 = add nsw i64 %62, %61
  %64 = getelementptr inbounds i8, ptr %55, i64 10
  br label %70

65:                                               ; preds = %53
  %66 = load ptr, ptr %54, align 8, !tbaa !82
  %67 = getelementptr inbounds i8, ptr %66, i64 %56
  %68 = load i8, ptr %67, align 1, !tbaa !79
  %69 = getelementptr inbounds i8, ptr %55, i64 1
  store i8 %68, ptr %55, align 1, !tbaa !79
  br label %70

70:                                               ; preds = %60, %65
  %71 = phi i64 [ %63, %60 ], [ %56, %65 ]
  %72 = phi ptr [ %64, %60 ], [ %69, %65 ]
  %73 = add nsw i64 %71, 1
  %74 = load ptr, ptr %39, align 8, !tbaa !79
  %75 = getelementptr inbounds %struct.ht_identifier, ptr %74, i64 0, i32 1
  %76 = load i32, ptr %75, align 8, !tbaa !332
  %77 = zext i32 %76 to i64
  %78 = icmp ult i64 %73, %77
  br i1 %78, label %53, label %92, !llvm.loop !336

79:                                               ; preds = %4
  %80 = getelementptr inbounds %struct.cpp_token, ptr %1, i64 0, i32 3
  %81 = getelementptr inbounds %struct.cpp_token, ptr %1, i64 0, i32 3, i32 0, i32 1
  %82 = load ptr, ptr %81, align 8, !tbaa !79
  %83 = load i32, ptr %80, align 8, !tbaa !79
  %84 = zext i32 %83 to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %2, ptr align 1 %82, i64 %84, i1 false)
  %85 = load i32, ptr %80, align 8, !tbaa !79
  %86 = zext i32 %85 to i64
  %87 = getelementptr inbounds i8, ptr %2, i64 %86
  br label %92

88:                                               ; preds = %4
  %89 = getelementptr inbounds [73 x %struct.token_spelling], ptr @token_spellings, i64 0, i64 %8, i32 1
  %90 = load ptr, ptr %89, align 8, !tbaa !333
  %91 = tail call zeroext i8 (ptr, i32, ptr, ...) @cpp_error(ptr noundef %0, i32 noundef 4, ptr noundef nonnull @.str.101, ptr noundef %90) #20
  br label %92

92:                                               ; preds = %70, %29, %51, %25, %44, %4, %88, %79
  %93 = phi ptr [ %2, %4 ], [ %2, %88 ], [ %87, %79 ], [ %50, %44 ], [ %2, %25 ], [ %2, %51 ], [ %34, %29 ], [ %72, %70 ]
  ret ptr %93
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @lex_raw_string(ptr noundef %0, ptr nocapture noundef %1, ptr noundef %2, ptr noundef %3) unnamed_addr #3 !prof !78 !PGOFuncName !337 {
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca i8, align 1
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #22
  store ptr null, ptr %5, align 8, !tbaa !169
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #22
  store ptr null, ptr %6, align 8, !tbaa !169
  %8 = load ptr, ptr %0, align 8, !tbaa !89
  %9 = getelementptr inbounds %struct.cpp_buffer, ptr %8, i64 0, i32 5
  %10 = load ptr, ptr %9, align 8, !tbaa !131
  %11 = getelementptr inbounds %struct.cpp_buffer, ptr %8, i64 0, i32 6
  %12 = load i32, ptr %11, align 8, !tbaa !108
  %13 = zext i32 %12 to i64
  %14 = getelementptr inbounds %struct._cpp_line_note, ptr %10, i64 %13
  %15 = load i8, ptr %2, align 1, !tbaa !79
  switch i8 %15, label %22 [
    i8 76, label %23
    i8 85, label %21
    i8 117, label %16
  ]

16:                                               ; preds = %4
  %17 = getelementptr inbounds i8, ptr %2, i64 1
  %18 = load i8, ptr %17, align 1, !tbaa !79
  %19 = icmp eq i8 %18, 56
  %20 = select i1 %19, i32 65, i32 63
  br label %23

21:                                               ; preds = %4
  br label %23

22:                                               ; preds = %4
  br label %23

23:                                               ; preds = %4, %22, %21, %16
  %24 = phi i32 [ 62, %4 ], [ %20, %16 ], [ 64, %21 ], [ 61, %22 ]
  %25 = getelementptr inbounds i8, ptr %3, i64 1
  br label %26

26:                                               ; preds = %23, %30
  %27 = phi i64 [ 0, %23 ], [ %31, %30 ]
  %28 = getelementptr inbounds i8, ptr %25, i64 %27
  %29 = load i8, ptr %28, align 1, !tbaa !79
  switch i8 %29, label %33 [
    i8 39, label %30
    i8 34, label %30
    i8 44, label %30
    i8 61, label %30
    i8 33, label %30
    i8 126, label %30
    i8 124, label %30
    i8 38, label %30
    i8 97, label %30
    i8 98, label %30
    i8 99, label %30
    i8 100, label %30
    i8 101, label %30
    i8 102, label %30
    i8 103, label %30
    i8 104, label %30
    i8 105, label %30
    i8 106, label %30
    i8 107, label %30
    i8 108, label %30
    i8 109, label %30
    i8 110, label %30
    i8 111, label %30
    i8 112, label %30
    i8 113, label %30
    i8 114, label %30
    i8 115, label %30
    i8 116, label %30
    i8 117, label %30
    i8 118, label %30
    i8 119, label %30
    i8 120, label %30
    i8 121, label %30
    i8 122, label %30
    i8 65, label %30
    i8 66, label %30
    i8 67, label %30
    i8 68, label %30
    i8 69, label %30
    i8 70, label %30
    i8 71, label %30
    i8 72, label %30
    i8 73, label %30
    i8 74, label %30
    i8 75, label %30
    i8 76, label %30
    i8 77, label %30
    i8 78, label %30
    i8 79, label %30
    i8 80, label %30
    i8 81, label %30
    i8 82, label %30
    i8 83, label %30
    i8 84, label %30
    i8 85, label %30
    i8 86, label %30
    i8 87, label %30
    i8 88, label %30
    i8 89, label %30
    i8 90, label %30
    i8 48, label %30
    i8 49, label %30
    i8 50, label %30
    i8 51, label %30
    i8 52, label %30
    i8 53, label %30
    i8 54, label %30
    i8 55, label %30
    i8 56, label %30
    i8 57, label %30
    i8 95, label %30
    i8 123, label %30
    i8 125, label %30
    i8 35, label %30
    i8 91, label %30
    i8 93, label %30
    i8 60, label %30
    i8 62, label %30
    i8 37, label %30
    i8 58, label %30
    i8 59, label %30
    i8 46, label %30
    i8 63, label %30
    i8 42, label %30
    i8 43, label %30
    i8 45, label %30
    i8 47, label %30
    i8 94, label %30
  ]

30:                                               ; preds = %26, %26, %26, %26, %26, %26, %26, %26, %26, %26, %26, %26, %26, %26, %26, %26, %26, %26, %26, %26, %26, %26, %26, %26, %26, %26, %26, %26, %26, %26, %26, %26, %26, %26, %26, %26, %26, %26, %26, %26, %26, %26, %26, %26, %26, %26, %26, %26, %26, %26, %26, %26, %26, %26, %26, %26, %26, %26, %26, %26, %26, %26, %26, %26, %26, %26, %26, %26, %26, %26, %26, %26, %26, %26, %26, %26, %26, %26, %26, %26, %26, %26, %26, %26, %26, %26, %26, %26
  %31 = add nuw nsw i64 %27, 1
  %32 = icmp eq i64 %31, 16
  br i1 %32, label %40, label %26, !llvm.loop !338

33:                                               ; preds = %26
  %34 = trunc i64 %27 to i32
  %35 = and i64 %27, 4294967295
  %36 = getelementptr inbounds i8, ptr %25, i64 %35
  %37 = load i8, ptr %36, align 1, !tbaa !79
  %38 = zext i8 %37 to i32
  %39 = icmp eq i8 %37, 40
  br i1 %39, label %74, label %52

40:                                               ; preds = %30
  %41 = getelementptr inbounds i8, ptr %3, i64 17
  %42 = load i8, ptr %41, align 1, !tbaa !79
  %43 = icmp eq i8 %42, 40
  br i1 %43, label %74, label %44

44:                                               ; preds = %40
  %45 = getelementptr inbounds %struct.cpp_buffer, ptr %8, i64 0, i32 1
  %46 = load ptr, ptr %45, align 8, !tbaa !110
  %47 = ptrtoint ptr %41 to i64
  %48 = ptrtoint ptr %46 to i64
  %49 = sub i64 %47, %48
  %50 = trunc i64 %49 to i32
  %51 = add i32 %50, 1
  br label %61

52:                                               ; preds = %33
  %53 = getelementptr inbounds %struct.cpp_buffer, ptr %8, i64 0, i32 1
  %54 = load ptr, ptr %53, align 8, !tbaa !110
  %55 = ptrtoint ptr %36 to i64
  %56 = ptrtoint ptr %54 to i64
  %57 = sub i64 %55, %56
  %58 = trunc i64 %57 to i32
  %59 = add i32 %58, 1
  %60 = icmp eq i32 %34, 16
  br i1 %60, label %61, label %65

61:                                               ; preds = %44, %52
  %62 = phi i32 [ %51, %44 ], [ %59, %52 ]
  %63 = load i32, ptr %1, align 8, !tbaa !193
  %64 = tail call zeroext i8 (ptr, i32, i32, i32, ptr, ...) @cpp_error_with_line(ptr noundef nonnull %0, i32 noundef 3, i32 noundef %63, i32 noundef %62, ptr noundef nonnull @.str.20) #20
  br label %68

65:                                               ; preds = %52
  %66 = load i32, ptr %1, align 8, !tbaa !193
  %67 = tail call zeroext i8 (ptr, i32, i32, i32, ptr, ...) @cpp_error_with_line(ptr noundef nonnull %0, i32 noundef 3, i32 noundef %66, i32 noundef %59, ptr noundef nonnull @.str.21, i32 noundef %38) #20
  br label %68

68:                                               ; preds = %65, %61
  %69 = load ptr, ptr %0, align 8, !tbaa !89
  store ptr %3, ptr %69, align 8, !tbaa !111
  %70 = ptrtoint ptr %3 to i64
  %71 = ptrtoint ptr %2 to i64
  %72 = sub i64 %70, %71
  %73 = trunc i64 %72 to i32
  tail call fastcc void @create_literal(ptr noundef nonnull %0, ptr noundef nonnull %1, ptr noundef nonnull %2, i32 noundef %73, i32 noundef 60) #18
  br label %351

74:                                               ; preds = %40, %33
  %75 = phi ptr [ %41, %40 ], [ %36, %33 ]
  %76 = phi i64 [ 16, %40 ], [ %35, %33 ]
  %77 = phi i32 [ 16, %40 ], [ %34, %33 ]
  %78 = getelementptr inbounds i8, ptr %75, i64 1
  %79 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 53, i32 7
  %80 = add nuw nsw i32 %77, 1
  %81 = zext nneg i32 %80 to i64
  %82 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 2
  %83 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 2, i32 9
  %84 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 2, i32 12
  %85 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 3
  br label %86

86:                                               ; preds = %298, %74
  %87 = phi ptr [ %14, %74 ], [ %183, %298 ]
  %88 = phi i64 [ 0, %74 ], [ %184, %298 ]
  %89 = phi i32 [ 0, %74 ], [ %299, %298 ]
  %90 = phi ptr [ %78, %74 ], [ %187, %298 ]
  %91 = phi ptr [ %2, %74 ], [ %186, %298 ]
  %92 = icmp ne i32 %89, 0
  br label %93

93:                                               ; preds = %196, %86
  %94 = phi ptr [ %87, %86 ], [ %197, %196 ]
  %95 = phi i64 [ %88, %86 ], [ %198, %196 ]
  %96 = phi ptr [ %90, %86 ], [ %199, %196 ]
  %97 = phi ptr [ %91, %86 ], [ %200, %196 ]
  br label %98

98:                                               ; preds = %98, %93
  %99 = phi ptr [ %94, %93 ], [ %102, %98 ]
  %100 = load ptr, ptr %99, align 8, !tbaa !132
  %101 = icmp ult ptr %100, %96
  %102 = getelementptr inbounds %struct._cpp_line_note, ptr %99, i64 1
  br i1 %101, label %98, label %103, !llvm.loop !339

103:                                              ; preds = %98
  %104 = icmp eq ptr %100, %96
  br i1 %104, label %105, label %182

105:                                              ; preds = %103, %174
  %106 = phi ptr [ %178, %174 ], [ %97, %103 ]
  %107 = phi ptr [ %177, %174 ], [ %96, %103 ]
  %108 = phi i64 [ %176, %174 ], [ %95, %103 ]
  %109 = phi ptr [ %179, %174 ], [ %99, %103 ]
  %110 = getelementptr inbounds %struct._cpp_line_note, ptr %109, i64 0, i32 1
  %111 = load i32, ptr %110, align 8, !tbaa !134
  switch i32 %111, label %129 [
    i32 92, label %112
    i32 32, label %112
    i32 0, label %174
  ]

112:                                              ; preds = %105, %105
  %113 = ptrtoint ptr %107 to i64
  %114 = ptrtoint ptr %106 to i64
  %115 = sub i64 %113, %114
  call fastcc void @bufring_append(ptr noundef nonnull %0, ptr noundef %106, i64 noundef %115, ptr noundef nonnull %5, ptr noundef nonnull %6) #18
  call fastcc void @bufring_append(ptr noundef nonnull %0, ptr noundef nonnull @.str.22, i64 noundef 1, ptr noundef nonnull %5, ptr noundef nonnull %6) #18
  %116 = add i64 %108, 1
  %117 = add i64 %116, %115
  br label %118

118:                                              ; preds = %171, %112
  %119 = phi ptr [ %144, %171 ], [ %109, %112 ]
  %120 = phi i64 [ %172, %171 ], [ %117, %112 ]
  %121 = getelementptr inbounds %struct._cpp_line_note, ptr %119, i64 0, i32 1
  %122 = load i32, ptr %121, align 8, !tbaa !134
  %123 = icmp eq i32 %122, 32
  br i1 %123, label %124, label %126

124:                                              ; preds = %118
  call fastcc void @bufring_append(ptr noundef nonnull %0, ptr noundef nonnull @.str.23, i64 noundef 1, ptr noundef nonnull %5, ptr noundef nonnull %6) #18
  %125 = add i64 %120, 1
  br label %126

126:                                              ; preds = %118, %124
  %127 = phi i64 [ %125, %124 ], [ %120, %118 ]
  call fastcc void @bufring_append(ptr noundef nonnull %0, ptr noundef nonnull @.str.24, i64 noundef 1, ptr noundef nonnull %5, ptr noundef nonnull %6) #18
  %128 = add i64 %127, 1
  br label %174

129:                                              ; preds = %105
  %130 = zext i32 %111 to i64
  %131 = getelementptr inbounds [256 x i8], ptr @_cpp_trigraph_map, i64 0, i64 %130
  %132 = load i8, ptr %131, align 1, !tbaa !79
  %133 = icmp eq i8 %132, 0
  br i1 %133, label %173, label %134

134:                                              ; preds = %129
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %7) #22
  %135 = trunc i32 %111 to i8
  store i8 %135, ptr %7, align 1, !tbaa !79
  store i32 0, ptr %110, align 8, !tbaa !134
  %136 = load i8, ptr %79, align 1, !tbaa !125
  %137 = icmp eq i8 %136, 0
  br i1 %137, label %167, label %138

138:                                              ; preds = %134
  %139 = ptrtoint ptr %107 to i64
  %140 = ptrtoint ptr %106 to i64
  %141 = sub i64 %139, %140
  call fastcc void @bufring_append(ptr noundef nonnull %0, ptr noundef %106, i64 noundef %141, ptr noundef nonnull %5, ptr noundef nonnull %6) #18
  %142 = add i64 %141, %108
  call fastcc void @bufring_append(ptr noundef nonnull %0, ptr noundef nonnull @.str.25, i64 noundef 2, ptr noundef nonnull %5, ptr noundef nonnull %6) #18
  switch i8 %135, label %164 [
    i8 47, label %143
    i8 41, label %151
  ]

143:                                              ; preds = %138
  %144 = getelementptr inbounds %struct._cpp_line_note, ptr %109, i64 1
  %145 = load ptr, ptr %144, align 8, !tbaa !132
  %146 = icmp eq ptr %145, %107
  br i1 %146, label %147, label %164

147:                                              ; preds = %143
  %148 = getelementptr inbounds %struct._cpp_line_note, ptr %109, i64 1, i32 1
  %149 = load i32, ptr %148, align 8, !tbaa !134
  switch i32 %149, label %150 [
    i32 92, label %171
    i32 32, label %171
  ]

150:                                              ; preds = %147
  tail call void @abort() #21
  unreachable

151:                                              ; preds = %138
  %152 = getelementptr inbounds i8, ptr %107, i64 1
  %153 = tail call i32 @strncmp(ptr noundef nonnull %152, ptr noundef nonnull %25, i64 noundef %76) #19
  %154 = icmp eq i32 %153, 0
  br i1 %154, label %155, label %164

155:                                              ; preds = %151
  %156 = getelementptr inbounds i8, ptr %107, i64 %81
  %157 = load i8, ptr %156, align 1, !tbaa !79
  %158 = icmp eq i8 %157, 34
  br i1 %158, label %159, label %164

159:                                              ; preds = %155
  %160 = add i64 %142, 2
  %161 = add nuw nsw i32 %77, 2
  %162 = zext nneg i32 %161 to i64
  %163 = getelementptr inbounds i8, ptr %107, i64 %162
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %7) #22
  br label %301

164:                                              ; preds = %138, %143, %155, %151
  %165 = getelementptr inbounds i8, ptr %107, i64 1
  call fastcc void @bufring_append(ptr noundef nonnull %0, ptr noundef nonnull %7, i64 noundef 1, ptr noundef nonnull %5, ptr noundef nonnull %6) #18
  %166 = add i64 %142, 3
  br label %167

167:                                              ; preds = %164, %134
  %168 = phi i64 [ %108, %134 ], [ %166, %164 ]
  %169 = phi ptr [ %107, %134 ], [ %165, %164 ]
  %170 = phi ptr [ %106, %134 ], [ %165, %164 ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %7) #22
  br label %174

171:                                              ; preds = %147, %147
  call fastcc void @bufring_append(ptr noundef nonnull %0, ptr noundef nonnull @.str.26, i64 noundef 1, ptr noundef nonnull %5, ptr noundef nonnull %6) #18
  %172 = add i64 %142, 3
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %7) #22
  br label %118

173:                                              ; preds = %129
  tail call void @abort() #21
  unreachable

174:                                              ; preds = %167, %126, %105
  %175 = phi ptr [ %119, %126 ], [ %109, %105 ], [ %109, %167 ]
  %176 = phi i64 [ %128, %126 ], [ %108, %105 ], [ %168, %167 ]
  %177 = phi ptr [ %107, %126 ], [ %107, %105 ], [ %169, %167 ]
  %178 = phi ptr [ %107, %126 ], [ %106, %105 ], [ %170, %167 ]
  %179 = getelementptr inbounds %struct._cpp_line_note, ptr %175, i64 1
  %180 = load ptr, ptr %179, align 8, !tbaa !132
  %181 = icmp eq ptr %180, %177
  br i1 %181, label %105, label %182, !llvm.loop !340

182:                                              ; preds = %174, %103
  %183 = phi ptr [ %99, %103 ], [ %179, %174 ]
  %184 = phi i64 [ %95, %103 ], [ %176, %174 ]
  %185 = phi ptr [ %96, %103 ], [ %177, %174 ]
  %186 = phi ptr [ %97, %103 ], [ %178, %174 ]
  %187 = getelementptr inbounds i8, ptr %185, i64 1
  %188 = load i8, ptr %185, align 1, !tbaa !79
  switch i8 %188, label %274 [
    i8 41, label %189
    i8 10, label %204
  ]

189:                                              ; preds = %182
  %190 = tail call i32 @strncmp(ptr noundef nonnull %187, ptr noundef nonnull %25, i64 noundef %76) #19
  %191 = icmp eq i32 %190, 0
  br i1 %191, label %192, label %196

192:                                              ; preds = %189
  %193 = getelementptr inbounds i8, ptr %187, i64 %76
  %194 = load i8, ptr %193, align 1, !tbaa !79
  %195 = icmp eq i8 %194, 34
  br i1 %195, label %201, label %196

196:                                              ; preds = %192, %189, %274, %265
  %197 = phi ptr [ %273, %265 ], [ %183, %274 ], [ %183, %189 ], [ %183, %192 ]
  %198 = phi i64 [ %220, %265 ], [ %184, %274 ], [ %184, %189 ], [ %184, %192 ]
  %199 = phi ptr [ %267, %265 ], [ %187, %274 ], [ %187, %189 ], [ %187, %192 ]
  %200 = phi ptr [ %267, %265 ], [ %186, %274 ], [ %186, %189 ], [ %186, %192 ]
  br label %93

201:                                              ; preds = %192
  %202 = getelementptr inbounds i8, ptr %187, i64 %76
  %203 = getelementptr i8, ptr %202, i64 1
  br label %301

204:                                              ; preds = %182
  %205 = load i8, ptr %82, align 8, !tbaa !187
  %206 = icmp eq i8 %205, 0
  br i1 %206, label %207, label %213

207:                                              ; preds = %204
  %208 = load i8, ptr %83, align 1, !tbaa !183
  %209 = icmp eq i8 %208, 0
  br i1 %209, label %210, label %213

210:                                              ; preds = %207
  %211 = load i8, ptr %84, align 8, !tbaa !184
  %212 = icmp eq i8 %211, 0
  br i1 %212, label %216, label %213

213:                                              ; preds = %210, %207, %204
  %214 = load i32, ptr %1, align 8, !tbaa !193
  %215 = tail call zeroext i8 (ptr, i32, i32, i32, ptr, ...) @cpp_error_with_line(ptr noundef nonnull %0, i32 noundef 3, i32 noundef %214, i32 noundef 0, ptr noundef nonnull @.str.27) #20
  br label %301

216:                                              ; preds = %210
  %217 = ptrtoint ptr %187 to i64
  %218 = ptrtoint ptr %186 to i64
  %219 = sub i64 %217, %218
  call fastcc void @bufring_append(ptr noundef nonnull %0, ptr noundef %186, i64 noundef %219, ptr noundef nonnull %5, ptr noundef nonnull %6) #18
  %220 = add i64 %219, %184
  %221 = load ptr, ptr %0, align 8, !tbaa !89
  %222 = load ptr, ptr %221, align 8, !tbaa !111
  %223 = getelementptr inbounds %struct.cpp_buffer, ptr %221, i64 0, i32 4
  %224 = load ptr, ptr %223, align 8, !tbaa !115
  %225 = icmp ult ptr %222, %224
  br i1 %225, label %226, label %248

226:                                              ; preds = %216
  %227 = load ptr, ptr %85, align 8, !tbaa !137
  %228 = load ptr, ptr %227, align 8, !tbaa !140
  %229 = getelementptr inbounds %struct.line_maps, ptr %227, i64 0, i32 2
  %230 = load i32, ptr %229, align 4, !tbaa !141
  %231 = add i32 %230, -1
  %232 = zext i32 %231 to i64
  %233 = getelementptr inbounds %struct.line_maps, ptr %227, i64 0, i32 8
  %234 = load i32, ptr %233, align 4, !tbaa !138
  %235 = getelementptr inbounds %struct.line_map, ptr %228, i64 %232, i32 2
  %236 = load i32, ptr %235, align 4, !tbaa !142
  %237 = sub i32 %234, %236
  %238 = getelementptr inbounds %struct.line_map, ptr %228, i64 %232, i32 6
  %239 = load i8, ptr %238, align 2
  %240 = zext nneg i8 %239 to i32
  %241 = lshr i32 %237, %240
  %242 = getelementptr inbounds %struct.line_map, ptr %228, i64 %232, i32 1
  %243 = load i32, ptr %242, align 8, !tbaa !144
  %244 = add i32 %243, 1
  %245 = add i32 %244, %241
  %246 = tail call i32 @linemap_line_start(ptr noundef nonnull %227, i32 noundef %245, i32 noundef 0) #20
  %247 = load ptr, ptr %0, align 8, !tbaa !89
  br label %248

248:                                              ; preds = %226, %216
  %249 = phi ptr [ %247, %226 ], [ %221, %216 ]
  %250 = getelementptr inbounds %struct.cpp_buffer, ptr %249, i64 0, i32 13
  store i8 1, ptr %250, align 8, !tbaa !112
  store ptr %185, ptr %249, align 8, !tbaa !111
  tail call void @_cpp_process_line_notes(ptr noundef nonnull %0, i32 noundef 0) #18
  %251 = tail call zeroext i8 @_cpp_get_fresh_line(ptr noundef nonnull %0) #18
  %252 = icmp eq i8 %251, 0
  br i1 %252, label %253, label %265

253:                                              ; preds = %248
  %254 = load i32, ptr %1, align 8, !tbaa !193
  %255 = getelementptr inbounds %struct.cpp_token, ptr %1, i64 0, i32 1
  store i8 22, ptr %255, align 4
  %256 = load ptr, ptr %85, align 8, !tbaa !137
  %257 = getelementptr inbounds %struct.line_maps, ptr %256, i64 0, i32 8
  %258 = load i32, ptr %257, align 4, !tbaa !138
  store i32 %258, ptr %1, align 8, !tbaa !193
  %259 = getelementptr inbounds %struct.cpp_token, ptr %1, i64 0, i32 2
  store i16 64, ptr %259, align 2, !tbaa !180
  %260 = load ptr, ptr %5, align 8, !tbaa !169
  %261 = icmp eq ptr %260, null
  br i1 %261, label %263, label %262

262:                                              ; preds = %253
  tail call void @_cpp_release_buff(ptr noundef nonnull %0, ptr noundef nonnull %260) #18
  br label %263

263:                                              ; preds = %253, %262
  %264 = tail call zeroext i8 (ptr, i32, i32, i32, ptr, ...) @cpp_error_with_line(ptr noundef nonnull %0, i32 noundef 3, i32 noundef %254, i32 noundef 0, ptr noundef nonnull @.str.27) #20
  br label %351

265:                                              ; preds = %248
  %266 = load ptr, ptr %0, align 8, !tbaa !89
  %267 = load ptr, ptr %266, align 8, !tbaa !111
  %268 = getelementptr inbounds %struct.cpp_buffer, ptr %266, i64 0, i32 5
  %269 = load ptr, ptr %268, align 8, !tbaa !131
  %270 = getelementptr inbounds %struct.cpp_buffer, ptr %266, i64 0, i32 6
  %271 = load i32, ptr %270, align 8, !tbaa !108
  %272 = zext i32 %271 to i64
  %273 = getelementptr inbounds %struct._cpp_line_note, ptr %269, i64 %272
  br label %196

274:                                              ; preds = %182
  %275 = icmp ne i8 %188, 0
  %276 = select i1 %275, i1 true, i1 %92
  br i1 %276, label %196, label %277

277:                                              ; preds = %274
  %278 = load ptr, ptr %0, align 8, !tbaa !89
  %279 = getelementptr inbounds %struct.cpp_buffer, ptr %278, i64 0, i32 1
  %280 = load ptr, ptr %279, align 8, !tbaa !110
  %281 = ptrtoint ptr %187 to i64
  %282 = ptrtoint ptr %280 to i64
  %283 = sub i64 %281, %282
  %284 = trunc i64 %283 to i32
  %285 = load ptr, ptr %85, align 8, !tbaa !137
  %286 = getelementptr inbounds %struct.line_maps, ptr %285, i64 0, i32 9
  %287 = load i32, ptr %286, align 8, !tbaa !209
  %288 = icmp ugt i32 %287, %284
  br i1 %288, label %291, label %289

289:                                              ; preds = %277
  %290 = tail call i32 @linemap_position_for_column(ptr noundef nonnull %285, i32 noundef %284) #20
  br label %298

291:                                              ; preds = %277
  %292 = getelementptr inbounds %struct.line_maps, ptr %285, i64 0, i32 8
  %293 = load i32, ptr %292, align 4, !tbaa !138
  %294 = add i32 %293, %284
  %295 = getelementptr inbounds %struct.line_maps, ptr %285, i64 0, i32 7
  %296 = load i32, ptr %295, align 8, !tbaa !211
  %297 = icmp ult i32 %294, %296
  br i1 %297, label %298, label %300

298:                                              ; preds = %291, %300, %289
  %299 = phi i32 [ %290, %289 ], [ %294, %300 ], [ %294, %291 ]
  br label %86

300:                                              ; preds = %291
  store i32 %294, ptr %295, align 8, !tbaa !211
  br label %298

301:                                              ; preds = %201, %213, %159
  %302 = phi i64 [ %160, %159 ], [ %184, %213 ], [ %184, %201 ]
  %303 = phi i32 [ %24, %159 ], [ 60, %213 ], [ %24, %201 ]
  %304 = phi ptr [ %163, %159 ], [ %185, %213 ], [ %203, %201 ]
  %305 = phi ptr [ %107, %159 ], [ %186, %213 ], [ %186, %201 ]
  %306 = icmp eq i32 %89, 0
  br i1 %306, label %313, label %307

307:                                              ; preds = %301
  %308 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 2, i32 2
  %309 = load i8, ptr %308, align 2, !tbaa !158
  %310 = icmp eq i8 %309, 0
  br i1 %310, label %311, label %313

311:                                              ; preds = %307
  %312 = tail call zeroext i8 (ptr, i32, i32, i32, ptr, ...) @cpp_error_with_line(ptr noundef nonnull %0, i32 noundef 0, i32 noundef %89, i32 noundef 0, ptr noundef nonnull @.str.18) #20
  br label %313

313:                                              ; preds = %311, %307, %301
  %314 = load ptr, ptr %0, align 8, !tbaa !89
  store ptr %304, ptr %314, align 8, !tbaa !111
  %315 = load ptr, ptr %5, align 8, !tbaa !169
  %316 = icmp eq ptr %315, null
  %317 = ptrtoint ptr %304 to i64
  %318 = ptrtoint ptr %305 to i64
  %319 = sub i64 %317, %318
  br i1 %316, label %320, label %322

320:                                              ; preds = %313
  %321 = trunc i64 %319 to i32
  tail call fastcc void @create_literal(ptr noundef nonnull %0, ptr noundef %1, ptr noundef %305, i32 noundef %321, i32 noundef %303) #18
  br label %351

322:                                              ; preds = %313
  %323 = add i64 %319, %302
  %324 = add i64 %323, 1
  %325 = tail call ptr @_cpp_unaligned_alloc(ptr noundef nonnull %0, i64 noundef %324) #18
  %326 = getelementptr inbounds %struct.cpp_token, ptr %1, i64 0, i32 1
  %327 = trunc i32 %303 to i8
  store i8 %327, ptr %326, align 4
  %328 = trunc i64 %323 to i32
  %329 = getelementptr inbounds %struct.cpp_token, ptr %1, i64 0, i32 3
  store i32 %328, ptr %329, align 8, !tbaa !79
  %330 = getelementptr inbounds %struct.cpp_token, ptr %1, i64 0, i32 3, i32 0, i32 1
  store ptr %325, ptr %330, align 8, !tbaa !79
  br label %331

331:                                              ; preds = %322, %331
  %332 = phi ptr [ %347, %331 ], [ %315, %322 ]
  %333 = phi ptr [ %346, %331 ], [ %325, %322 ]
  %334 = getelementptr inbounds %struct._cpp_buff, ptr %332, i64 0, i32 1
  %335 = load ptr, ptr %334, align 8, !tbaa !341
  %336 = getelementptr inbounds %struct._cpp_buff, ptr %332, i64 0, i32 2
  %337 = load ptr, ptr %336, align 8, !tbaa !325
  %338 = ptrtoint ptr %337 to i64
  %339 = ptrtoint ptr %335 to i64
  %340 = sub i64 %338, %339
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %333, ptr align 1 %335, i64 %340, i1 false)
  %341 = load ptr, ptr %336, align 8, !tbaa !325
  %342 = load ptr, ptr %334, align 8, !tbaa !341
  %343 = ptrtoint ptr %341 to i64
  %344 = ptrtoint ptr %342 to i64
  %345 = sub i64 %343, %344
  %346 = getelementptr inbounds i8, ptr %333, i64 %345
  %347 = load ptr, ptr %332, align 8, !tbaa !169
  %348 = icmp eq ptr %347, null
  br i1 %348, label %349, label %331, !llvm.loop !342

349:                                              ; preds = %331
  tail call void @_cpp_release_buff(ptr noundef nonnull %0, ptr noundef nonnull %315) #18
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %346, ptr align 1 %305, i64 %319, i1 false)
  %350 = getelementptr inbounds i8, ptr %346, i64 %319
  store i8 0, ptr %350, align 1, !tbaa !79
  br label %351

351:                                              ; preds = %263, %320, %349, %68
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #22
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #22
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @bufring_append(ptr nocapture noundef %0, ptr nocapture noundef readonly %1, i64 noundef %2, ptr nocapture noundef %3, ptr nocapture noundef %4) unnamed_addr #3 !prof !78 !PGOFuncName !343 {
  %6 = load ptr, ptr %3, align 8, !tbaa !169
  %7 = load ptr, ptr %4, align 8, !tbaa !169
  %8 = icmp eq ptr %6, null
  br i1 %8, label %9, label %11

9:                                                ; preds = %5
  %10 = tail call ptr @_cpp_get_buff(ptr noundef %0, i64 noundef %2) #18
  br label %26

11:                                               ; preds = %5
  %12 = getelementptr inbounds %struct._cpp_buff, ptr %7, i64 0, i32 3
  %13 = load ptr, ptr %12, align 8, !tbaa !327
  %14 = getelementptr inbounds %struct._cpp_buff, ptr %7, i64 0, i32 2
  %15 = load ptr, ptr %14, align 8, !tbaa !325
  %16 = ptrtoint ptr %13 to i64
  %17 = ptrtoint ptr %15 to i64
  %18 = sub i64 %16, %17
  %19 = icmp ult i64 %18, %2
  br i1 %19, label %20, label %26

20:                                               ; preds = %11
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %15, ptr align 1 %1, i64 %18, i1 false)
  %21 = load ptr, ptr %14, align 8, !tbaa !325
  %22 = getelementptr inbounds i8, ptr %21, i64 %18
  store ptr %22, ptr %14, align 8, !tbaa !325
  %23 = getelementptr inbounds i8, ptr %1, i64 %18
  %24 = sub i64 %2, %18
  %25 = tail call ptr @_cpp_append_extend_buff(ptr noundef %0, ptr noundef nonnull %7, i64 noundef %24) #18
  br label %26

26:                                               ; preds = %11, %20, %9
  %27 = phi i64 [ %2, %9 ], [ %24, %20 ], [ %2, %11 ]
  %28 = phi ptr [ %10, %9 ], [ %6, %20 ], [ %6, %11 ]
  %29 = phi ptr [ %10, %9 ], [ %25, %20 ], [ %7, %11 ]
  %30 = phi ptr [ %1, %9 ], [ %23, %20 ], [ %1, %11 ]
  %31 = getelementptr inbounds %struct._cpp_buff, ptr %29, i64 0, i32 2
  %32 = load ptr, ptr %31, align 8, !tbaa !325
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %32, ptr align 1 %30, i64 %27, i1 false)
  %33 = load ptr, ptr %31, align 8, !tbaa !325
  %34 = getelementptr inbounds i8, ptr %33, i64 %27
  store ptr %34, ptr %31, align 8, !tbaa !325
  store ptr %28, ptr %3, align 8, !tbaa !169
  store ptr %29, ptr %4, align 8, !tbaa !169
  ret void
}

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(argmem: read)
declare i32 @strncmp(ptr nocapture noundef, ptr nocapture noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @_cpp_release_buff(ptr nocapture noundef %0, ptr noundef %1) local_unnamed_addr #12 !prof !78 {
  br label %3

3:                                                ; preds = %3, %2
  %4 = phi ptr [ %1, %2 ], [ %5, %3 ]
  %5 = load ptr, ptr %4, align 8, !tbaa !329
  %6 = icmp eq ptr %5, null
  br i1 %6, label %7, label %3, !llvm.loop !344

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 7
  %9 = load ptr, ptr %8, align 8, !tbaa !345
  store ptr %9, ptr %4, align 8, !tbaa !329
  store ptr %1, ptr %8, align 8, !tbaa !345
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @_cpp_get_buff(ptr nocapture noundef %0, i64 noundef %1) local_unnamed_addr #3 !prof !346 {
  %3 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 7
  %4 = load ptr, ptr %3, align 8, !tbaa !169
  %5 = icmp eq ptr %4, null
  br i1 %5, label %20, label %6, !prof !347

6:                                                ; preds = %2
  %7 = mul i64 %1, 3
  %8 = lshr i64 %7, 1
  %9 = add nuw i64 %8, 8000
  %10 = getelementptr inbounds %struct._cpp_buff, ptr %4, i64 0, i32 3
  %11 = load ptr, ptr %10, align 8, !tbaa !327
  %12 = getelementptr inbounds %struct._cpp_buff, ptr %4, i64 0, i32 1
  %13 = load ptr, ptr %12, align 8, !tbaa !341
  %14 = ptrtoint ptr %11 to i64
  %15 = ptrtoint ptr %13 to i64
  %16 = sub i64 %14, %15
  %17 = icmp ult i64 %16, %1
  %18 = icmp ugt i64 %16, %9
  %19 = select i1 %17, i1 true, i1 %18
  br i1 %19, label %33, label %37

20:                                               ; preds = %33, %2
  %21 = tail call fastcc ptr @new_buff(i64 noundef %1) #18
  br label %44

22:                                               ; preds = %33
  %23 = getelementptr inbounds %struct._cpp_buff, ptr %35, i64 0, i32 3
  %24 = load ptr, ptr %23, align 8, !tbaa !327
  %25 = getelementptr inbounds %struct._cpp_buff, ptr %35, i64 0, i32 1
  %26 = load ptr, ptr %25, align 8, !tbaa !341
  %27 = ptrtoint ptr %24 to i64
  %28 = ptrtoint ptr %26 to i64
  %29 = sub i64 %27, %28
  %30 = icmp ult i64 %29, %1
  %31 = icmp ugt i64 %29, %9
  %32 = select i1 %30, i1 true, i1 %31
  br i1 %32, label %33, label %37

33:                                               ; preds = %6, %22
  %34 = phi ptr [ %35, %22 ], [ %4, %6 ]
  %35 = load ptr, ptr %34, align 8, !tbaa !169
  %36 = icmp eq ptr %35, null
  br i1 %36, label %20, label %22, !prof !147

37:                                               ; preds = %22, %6
  %38 = phi ptr [ %4, %6 ], [ %35, %22 ]
  %39 = phi ptr [ %3, %6 ], [ %34, %22 ]
  %40 = getelementptr inbounds %struct._cpp_buff, ptr %38, i64 0, i32 1
  %41 = load ptr, ptr %38, align 8, !tbaa !329
  store ptr %41, ptr %39, align 8, !tbaa !169
  store ptr null, ptr %38, align 8, !tbaa !329
  %42 = load ptr, ptr %40, align 8, !tbaa !341
  %43 = getelementptr inbounds %struct._cpp_buff, ptr %38, i64 0, i32 2
  store ptr %42, ptr %43, align 8, !tbaa !325
  br label %44

44:                                               ; preds = %20, %37
  %45 = phi ptr [ %38, %37 ], [ %21, %20 ]
  ret ptr %45
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @_cpp_append_extend_buff(ptr nocapture noundef %0, ptr nocapture noundef %1, i64 noundef %2) local_unnamed_addr #3 !prof !78 {
  %4 = getelementptr inbounds %struct._cpp_buff, ptr %1, i64 0, i32 3
  %5 = load ptr, ptr %4, align 8, !tbaa !327
  %6 = getelementptr inbounds %struct._cpp_buff, ptr %1, i64 0, i32 2
  %7 = load ptr, ptr %6, align 8, !tbaa !325
  %8 = ptrtoint ptr %5 to i64
  %9 = ptrtoint ptr %7 to i64
  %10 = sub i64 %8, %9
  %11 = shl nsw i64 %10, 1
  %12 = add i64 %11, %2
  %13 = tail call ptr @_cpp_get_buff(ptr noundef %0, i64 noundef %12) #18
  store ptr %13, ptr %1, align 8, !tbaa !329
  %14 = getelementptr inbounds %struct._cpp_buff, ptr %13, i64 0, i32 1
  %15 = load ptr, ptr %14, align 8, !tbaa !341
  %16 = load ptr, ptr %6, align 8, !tbaa !325
  %17 = load ptr, ptr %4, align 8, !tbaa !327
  %18 = ptrtoint ptr %17 to i64
  %19 = ptrtoint ptr %16 to i64
  %20 = sub i64 %18, %19
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %15, ptr align 1 %16, i64 %20, i1 false)
  ret ptr %13
}

; Function Attrs: optsize
declare ptr @_cpp_interpret_identifier(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #5

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @store_comment(ptr nocapture noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #3 !prof !78 !PGOFuncName !348 {
  %3 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 62
  %4 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 62, i32 2
  %5 = load i32, ptr %4, align 4, !tbaa !349
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %10

7:                                                ; preds = %2
  store i32 256, ptr %4, align 4, !tbaa !349
  %8 = tail call ptr @xmalloc(i64 noundef 4096) #20
  store ptr %8, ptr %3, align 8, !tbaa !350
  %9 = load i32, ptr %4, align 4, !tbaa !349
  br label %10

10:                                               ; preds = %7, %2
  %11 = phi i32 [ %9, %7 ], [ %5, %2 ]
  %12 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 62, i32 1
  %13 = load i32, ptr %12, align 8, !tbaa !351
  %14 = icmp eq i32 %13, %11
  br i1 %14, label %15, label %21

15:                                               ; preds = %10
  %16 = shl nsw i32 %11, 1
  store i32 %16, ptr %4, align 4, !tbaa !349
  %17 = load ptr, ptr %3, align 8, !tbaa !350
  %18 = sext i32 %16 to i64
  %19 = shl nsw i64 %18, 4
  %20 = tail call ptr @xrealloc(ptr noundef %17, i64 noundef %19) #20
  store ptr %20, ptr %3, align 8, !tbaa !350
  br label %21

21:                                               ; preds = %15, %10
  %22 = getelementptr inbounds %struct.cpp_token, ptr %1, i64 0, i32 3
  %23 = load i32, ptr %22, align 8, !tbaa !79
  %24 = add nsw i32 %23, 1
  %25 = sext i32 %24 to i64
  %26 = tail call ptr @xmalloc(i64 noundef %25) #20
  %27 = load ptr, ptr %3, align 8, !tbaa !350
  %28 = load i32, ptr %12, align 8, !tbaa !351
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds %struct.cpp_comment, ptr %27, i64 %29
  store ptr %26, ptr %30, align 8, !tbaa !352
  %31 = getelementptr inbounds %struct.cpp_token, ptr %1, i64 0, i32 3, i32 0, i32 1
  %32 = load ptr, ptr %31, align 8, !tbaa !79
  %33 = sext i32 %23 to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %26, ptr align 1 %32, i64 %33, i1 false)
  %34 = load ptr, ptr %3, align 8, !tbaa !350
  %35 = load i32, ptr %12, align 8, !tbaa !351
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds %struct.cpp_comment, ptr %34, i64 %36
  %38 = load ptr, ptr %37, align 8, !tbaa !352
  %39 = getelementptr inbounds i8, ptr %38, i64 %33
  store i8 0, ptr %39, align 1, !tbaa !79
  %40 = load i32, ptr %1, align 8, !tbaa !193
  %41 = load ptr, ptr %3, align 8, !tbaa !350
  %42 = load i32, ptr %12, align 8, !tbaa !351
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds %struct.cpp_comment, ptr %41, i64 %43, i32 1
  store i32 %40, ptr %44, align 8, !tbaa !354
  %45 = add nsw i32 %42, 1
  store i32 %45, ptr %12, align 8, !tbaa !351
  ret void
}

; Function Attrs: optsize
declare i32 @_cpp_valid_ucn(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc ptr @cpp_digraph2name(i32 noundef %0) unnamed_addr #8 !prof !78 !PGOFuncName !355 {
  %2 = add nsw i32 %0, -37
  %3 = sext i32 %2 to i64
  %4 = getelementptr inbounds [6 x ptr], ptr @digraph_spellings, i64 0, i64 %3
  %5 = load ptr, ptr %4, align 8, !tbaa !169
  ret ptr %5
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i64 @utf8_to_ucn(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1) unnamed_addr #3 !prof !78 !PGOFuncName !356 {
  %3 = load i8, ptr %1, align 1, !tbaa !79
  %4 = zext i8 %3 to i32
  %5 = icmp sgt i8 %3, -1
  br i1 %5, label %6, label %8

6:                                                ; preds = %2
  %7 = zext nneg i8 %3 to i64
  br label %39

8:                                                ; preds = %2, %8
  %9 = phi i32 [ %12, %8 ], [ %4, %2 ]
  %10 = phi i32 [ %11, %8 ], [ 0, %2 ]
  %11 = add nuw nsw i32 %10, 1
  %12 = shl i32 %9, 1
  %13 = and i32 %9, 64
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %8, !llvm.loop !357

15:                                               ; preds = %8
  %16 = lshr i32 63, %10
  %17 = and i32 %16, %4
  %18 = zext nneg i32 %17 to i64
  %19 = icmp eq i32 %10, 0
  br i1 %19, label %39, label %20

20:                                               ; preds = %15, %30
  %21 = phi i64 [ %34, %30 ], [ %18, %15 ]
  %22 = phi i32 [ %35, %30 ], [ 1, %15 ]
  %23 = phi ptr [ %24, %30 ], [ %1, %15 ]
  %24 = getelementptr inbounds i8, ptr %23, i64 1
  %25 = load i8, ptr %24, align 1, !tbaa !79
  %26 = zext i8 %25 to i32
  %27 = and i32 %26, 192
  %28 = icmp eq i32 %27, 128
  br i1 %28, label %30, label %29

29:                                               ; preds = %20
  tail call void @abort() #21
  unreachable

30:                                               ; preds = %20
  %31 = shl i64 %21, 6
  %32 = and i32 %26, 63
  %33 = zext nneg i32 %32 to i64
  %34 = or disjoint i64 %31, %33
  %35 = add nuw i32 %22, 1
  %36 = icmp eq i32 %22, %10
  br i1 %36, label %37, label %20, !llvm.loop !358

37:                                               ; preds = %30
  %38 = zext nneg i32 %11 to i64
  br label %39

39:                                               ; preds = %37, %6, %15
  %40 = phi i64 [ 1, %15 ], [ 0, %6 ], [ %38, %37 ]
  %41 = phi i64 [ %18, %15 ], [ %7, %6 ], [ %34, %37 ]
  %42 = getelementptr inbounds i8, ptr %0, i64 1
  store i8 92, ptr %0, align 1, !tbaa !79
  %43 = getelementptr inbounds i8, ptr %0, i64 2
  store i8 85, ptr %42, align 1, !tbaa !79
  br label %44

44:                                               ; preds = %39, %44
  %45 = phi i64 [ 7, %39 ], [ %53, %44 ]
  %46 = phi ptr [ %43, %39 ], [ %52, %44 ]
  %47 = shl nsw i64 %45, 2
  %48 = lshr i64 %41, %47
  %49 = and i64 %48, 15
  %50 = getelementptr inbounds [17 x i8], ptr @.str.108, i64 0, i64 %49
  %51 = load i8, ptr %50, align 1, !tbaa !79
  %52 = getelementptr inbounds i8, ptr %46, i64 1
  store i8 %51, ptr %46, align 1, !tbaa !79
  %53 = add nsw i64 %45, -1
  %54 = icmp eq i64 %45, 0
  br i1 %54, label %55, label %44, !llvm.loop !359

55:                                               ; preds = %44
  ret i64 %40
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef ptr @cpp_token_as_text(ptr noundef %0, ptr nocapture noundef readonly %1) local_unnamed_addr #3 !prof !78 {
  %3 = tail call i32 @cpp_token_len(ptr noundef %1) #18
  %4 = add i32 %3, 1
  %5 = zext i32 %4 to i64
  %6 = tail call ptr @_cpp_unaligned_alloc(ptr noundef %0, i64 noundef %5) #18
  %7 = tail call ptr @cpp_spell_token(ptr noundef %0, ptr noundef %1, ptr noundef %6, i8 noundef zeroext 0) #18
  store i8 0, ptr %7, align 1, !tbaa !79
  ret ptr %6
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @cpp_type2name(i32 noundef %0, i8 noundef zeroext %1) local_unnamed_addr #3 !prof !78 {
  %3 = zext i8 %1 to i32
  %4 = and i32 %3, 2
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %8, label %6

6:                                                ; preds = %2
  %7 = tail call fastcc ptr @cpp_digraph2name(i32 noundef %0) #18
  br label %17

8:                                                ; preds = %2
  %9 = and i32 %3, 16
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %13, label %11

11:                                               ; preds = %8
  %12 = tail call ptr @cpp_named_operator2name(i32 noundef %0) #20
  br label %17

13:                                               ; preds = %8
  %14 = zext i32 %0 to i64
  %15 = getelementptr inbounds [73 x %struct.token_spelling], ptr @token_spellings, i64 0, i64 %14, i32 1
  %16 = load ptr, ptr %15, align 8, !tbaa !333
  br label %17

17:                                               ; preds = %13, %11, %6
  %18 = phi ptr [ %7, %6 ], [ %12, %11 ], [ %16, %13 ]
  ret ptr %18
}

; Function Attrs: optsize
declare ptr @cpp_named_operator2name(i32 noundef) local_unnamed_addr #5

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @cpp_output_token(ptr nocapture noundef readonly %0, ptr nocapture noundef %1) local_unnamed_addr #3 !prof !78 {
  %3 = alloca [10 x i8], align 1
  %4 = getelementptr inbounds %struct.cpp_token, ptr %0, i64 0, i32 1
  %5 = load i8, ptr %4, align 4
  %6 = zext i8 %5 to i32
  %7 = zext i8 %5 to i64
  %8 = getelementptr inbounds [73 x %struct.token_spelling], ptr @token_spellings, i64 0, i64 %7
  %9 = load i32, ptr %8, align 16, !tbaa !330
  switch i32 %9, label %74 [
    i32 0, label %10
    i32 1, label %35
    i32 2, label %67
  ]

10:                                               ; preds = %2
  %11 = getelementptr inbounds %struct.cpp_token, ptr %0, i64 0, i32 2
  %12 = load i16, ptr %11, align 2, !tbaa !180
  %13 = zext i16 %12 to i32
  %14 = and i32 %13, 2
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %18, label %16

16:                                               ; preds = %10
  %17 = tail call fastcc ptr @cpp_digraph2name(i32 noundef %6) #18
  br label %24

18:                                               ; preds = %10
  %19 = and i32 %13, 16
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %35

21:                                               ; preds = %18
  %22 = getelementptr inbounds [73 x %struct.token_spelling], ptr @token_spellings, i64 0, i64 %7, i32 1
  %23 = load ptr, ptr %22, align 8, !tbaa !333
  br label %24

24:                                               ; preds = %21, %16
  %25 = phi ptr [ %17, %16 ], [ %23, %21 ]
  %26 = load i8, ptr %25, align 1, !tbaa !79
  br label %27

27:                                               ; preds = %27, %24
  %28 = phi i8 [ %26, %24 ], [ %33, %27 ]
  %29 = phi ptr [ %25, %24 ], [ %32, %27 ]
  %30 = zext i8 %28 to i32
  %31 = tail call i32 @putc(i32 noundef %30, ptr noundef %1) #18
  %32 = getelementptr inbounds i8, ptr %29, i64 1
  %33 = load i8, ptr %32, align 1, !tbaa !79
  %34 = icmp eq i8 %33, 0
  br i1 %34, label %74, label %27, !llvm.loop !360

35:                                               ; preds = %18, %2
  %36 = getelementptr inbounds %struct.cpp_token, ptr %0, i64 0, i32 3
  %37 = load ptr, ptr %36, align 8, !tbaa !79
  %38 = load ptr, ptr %37, align 8, !tbaa !82
  %39 = getelementptr inbounds %struct.ht_identifier, ptr %37, i64 0, i32 1
  %40 = load i32, ptr %39, align 8, !tbaa !332
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %74, label %42

42:                                               ; preds = %35, %59
  %43 = phi ptr [ %62, %59 ], [ %37, %35 ]
  %44 = phi i64 [ %61, %59 ], [ 0, %35 ]
  %45 = getelementptr inbounds i8, ptr %38, i64 %44
  %46 = load i8, ptr %45, align 1, !tbaa !79
  %47 = icmp sgt i8 %46, -1
  br i1 %47, label %53, label %48

48:                                               ; preds = %42
  call void @llvm.lifetime.start.p0(i64 10, ptr nonnull %3) #22
  %49 = call fastcc i64 @utf8_to_ucn(ptr noundef nonnull %3, ptr noundef nonnull %45) #18, !range !335
  %50 = add nsw i64 %44, -1
  %51 = add nsw i64 %50, %49
  %52 = call i64 @fwrite(ptr noundef nonnull %3, i64 noundef 1, i64 noundef 10, ptr noundef %1) #18
  call void @llvm.lifetime.end.p0(i64 10, ptr nonnull %3) #22
  br label %59

53:                                               ; preds = %42
  %54 = load ptr, ptr %43, align 8, !tbaa !82
  %55 = getelementptr inbounds i8, ptr %54, i64 %44
  %56 = load i8, ptr %55, align 1, !tbaa !79
  %57 = zext i8 %56 to i32
  %58 = tail call i32 @fputc(i32 noundef %57, ptr noundef %1) #18
  br label %59

59:                                               ; preds = %48, %53
  %60 = phi i64 [ %51, %48 ], [ %44, %53 ]
  %61 = add nsw i64 %60, 1
  %62 = load ptr, ptr %36, align 8, !tbaa !79
  %63 = getelementptr inbounds %struct.ht_identifier, ptr %62, i64 0, i32 1
  %64 = load i32, ptr %63, align 8, !tbaa !332
  %65 = zext i32 %64 to i64
  %66 = icmp ult i64 %61, %65
  br i1 %66, label %42, label %74, !llvm.loop !361

67:                                               ; preds = %2
  %68 = getelementptr inbounds %struct.cpp_token, ptr %0, i64 0, i32 3
  %69 = getelementptr inbounds %struct.cpp_token, ptr %0, i64 0, i32 3, i32 0, i32 1
  %70 = load ptr, ptr %69, align 8, !tbaa !79
  %71 = load i32, ptr %68, align 8, !tbaa !79
  %72 = zext i32 %71 to i64
  %73 = tail call i64 @fwrite(ptr noundef %70, i64 noundef 1, i64 noundef %72, ptr noundef %1) #18
  br label %74

74:                                               ; preds = %59, %27, %35, %2, %67
  ret void
}

; Function Attrs: nofree nounwind optsize
declare noundef i32 @putc(i32 noundef, ptr nocapture noundef) local_unnamed_addr #13

; Function Attrs: nofree nounwind optsize
declare noundef i64 @fwrite(ptr nocapture noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #13

; Function Attrs: nofree nounwind optsize
declare noundef i32 @fputc(i32 noundef, ptr nocapture noundef) local_unnamed_addr #13

; Function Attrs: mustprogress nofree noinline nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @_cpp_equiv_tokens(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) local_unnamed_addr #0 !prof !362 {
  %3 = getelementptr inbounds %struct.cpp_token, ptr %0, i64 0, i32 1
  %4 = load i8, ptr %3, align 4
  %5 = getelementptr inbounds %struct.cpp_token, ptr %1, i64 0, i32 1
  %6 = load i8, ptr %5, align 4
  %7 = icmp eq i8 %4, %6
  br i1 %7, label %8, label %54, !prof !363

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.cpp_token, ptr %0, i64 0, i32 2
  %10 = load i16, ptr %9, align 2, !tbaa !180
  %11 = getelementptr inbounds %struct.cpp_token, ptr %1, i64 0, i32 2
  %12 = load i16, ptr %11, align 2, !tbaa !180
  %13 = icmp eq i16 %10, %12
  br i1 %13, label %14, label %54, !prof !363

14:                                               ; preds = %8
  %15 = zext i8 %4 to i64
  %16 = getelementptr inbounds [73 x %struct.token_spelling], ptr @token_spellings, i64 0, i64 %15
  %17 = load i32, ptr %16, align 16, !tbaa !330
  switch i32 %17, label %18 [
    i32 2, label %40
    i32 3, label %26
    i32 1, label %34
  ], !prof !364

18:                                               ; preds = %14
  %19 = icmp eq i8 %4, 38
  br i1 %19, label %20, label %54

20:                                               ; preds = %18
  %21 = getelementptr inbounds %struct.cpp_token, ptr %0, i64 0, i32 3
  %22 = load i32, ptr %21, align 8, !tbaa !79
  %23 = getelementptr inbounds %struct.cpp_token, ptr %1, i64 0, i32 3
  %24 = load i32, ptr %23, align 8, !tbaa !79
  %25 = icmp eq i32 %22, %24
  br label %54

26:                                               ; preds = %14
  %27 = icmp eq i8 %4, 69
  br i1 %27, label %28, label %54

28:                                               ; preds = %26
  %29 = getelementptr inbounds %struct.cpp_token, ptr %0, i64 0, i32 3
  %30 = load i32, ptr %29, align 8, !tbaa !79
  %31 = getelementptr inbounds %struct.cpp_token, ptr %1, i64 0, i32 3
  %32 = load i32, ptr %31, align 8, !tbaa !79
  %33 = icmp eq i32 %30, %32
  br label %54

34:                                               ; preds = %14
  %35 = getelementptr inbounds %struct.cpp_token, ptr %0, i64 0, i32 3
  %36 = load ptr, ptr %35, align 8, !tbaa !79
  %37 = getelementptr inbounds %struct.cpp_token, ptr %1, i64 0, i32 3
  %38 = load ptr, ptr %37, align 8, !tbaa !79
  %39 = icmp eq ptr %36, %38
  br label %54

40:                                               ; preds = %14
  %41 = getelementptr inbounds %struct.cpp_token, ptr %0, i64 0, i32 3
  %42 = load i32, ptr %41, align 8, !tbaa !79
  %43 = getelementptr inbounds %struct.cpp_token, ptr %1, i64 0, i32 3
  %44 = load i32, ptr %43, align 8, !tbaa !79
  %45 = icmp eq i32 %42, %44
  br i1 %45, label %46, label %54

46:                                               ; preds = %40
  %47 = getelementptr inbounds %struct.cpp_token, ptr %0, i64 0, i32 3, i32 0, i32 1
  %48 = load ptr, ptr %47, align 8, !tbaa !79
  %49 = getelementptr inbounds %struct.cpp_token, ptr %1, i64 0, i32 3, i32 0, i32 1
  %50 = load ptr, ptr %49, align 8, !tbaa !79
  %51 = zext i32 %42 to i64
  %52 = tail call i32 @bcmp(ptr %48, ptr %50, i64 %51)
  %53 = icmp eq i32 %52, 0
  br label %54

54:                                               ; preds = %2, %8, %40, %46, %26, %28, %18, %20, %34
  %55 = phi i1 [ %39, %34 ], [ true, %18 ], [ %25, %20 ], [ true, %26 ], [ %33, %28 ], [ false, %40 ], [ %53, %46 ], [ false, %8 ], [ false, %2 ]
  %56 = zext i1 %55 to i32
  ret i32 %56
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @cpp_avoid_paste(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) local_unnamed_addr #6 !prof !78 {
  %4 = getelementptr inbounds %struct.cpp_token, ptr %1, i64 0, i32 1
  %5 = load i8, ptr %4, align 4
  %6 = zext i8 %5 to i32
  %7 = getelementptr inbounds %struct.cpp_token, ptr %2, i64 0, i32 1
  %8 = load i8, ptr %7, align 4
  %9 = zext i8 %8 to i32
  %10 = getelementptr inbounds %struct.cpp_token, ptr %1, i64 0, i32 2
  %11 = load i16, ptr %10, align 2, !tbaa !180
  %12 = and i16 %11, 16
  %13 = icmp eq i16 %12, 0
  %14 = select i1 %13, i32 %6, i32 53
  %15 = getelementptr inbounds %struct.cpp_token, ptr %2, i64 0, i32 2
  %16 = load i16, ptr %15, align 2, !tbaa !180
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
  %29 = load i32, ptr %28, align 16, !tbaa !330
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %31, label %41

31:                                               ; preds = %26
  %32 = getelementptr inbounds [73 x %struct.token_spelling], ptr @token_spellings, i64 0, i64 %27, i32 1
  br label %33

33:                                               ; preds = %31, %22
  %34 = phi ptr [ %25, %22 ], [ %32, %31 ]
  %35 = load ptr, ptr %34, align 8, !tbaa !169
  %36 = load i8, ptr %35, align 1, !tbaa !79
  %37 = zext i8 %36 to i32
  %38 = icmp ult i32 %14, 14
  %39 = icmp eq i8 %36, 61
  %40 = select i1 %38, i1 %39, i1 false
  br i1 %40, label %115, label %41

41:                                               ; preds = %26, %33
  %42 = phi i32 [ %37, %33 ], [ -1, %26 ]
  %43 = trunc i32 %14 to i8
  switch i8 %43, label %115 [
    i8 2, label %44
    i8 3, label %46
    i8 4, label %48
    i8 5, label %50
    i8 7, label %54
    i8 8, label %58
    i8 9, label %61
    i8 10, label %63
    i8 18, label %65
    i8 47, label %68
    i8 48, label %70
    i8 37, label %73
    i8 53, label %77
    i8 55, label %85
    i8 60, label %94
  ]

44:                                               ; preds = %41
  %45 = icmp eq i32 %42, 62
  br label %115

46:                                               ; preds = %41
  %47 = icmp ult i32 %42, 61
  br i1 %47, label %110, label %115

48:                                               ; preds = %41
  %49 = icmp eq i32 %42, 43
  br label %115

50:                                               ; preds = %41
  %51 = icmp eq i32 %42, 45
  %52 = icmp eq i32 %42, 62
  %53 = or i1 %51, %52
  br label %115

54:                                               ; preds = %41
  %55 = icmp eq i32 %42, 47
  %56 = icmp eq i32 %42, 42
  %57 = or i1 %55, %56
  br label %115

58:                                               ; preds = %41
  %59 = and i32 %42, -5
  %60 = icmp eq i32 %59, 58
  br label %115

61:                                               ; preds = %41
  %62 = icmp eq i32 %42, 38
  br label %115

63:                                               ; preds = %41
  %64 = icmp eq i32 %42, 124
  br label %115

65:                                               ; preds = %41
  %66 = and i32 %42, -5
  %67 = icmp eq i32 %66, 58
  br label %115

68:                                               ; preds = %41
  %69 = icmp eq i32 %42, 42
  br label %115

70:                                               ; preds = %41
  switch i32 %42, label %71 [
    i32 46, label %115
    i32 37, label %115
  ]

71:                                               ; preds = %70
  %72 = icmp eq i32 %19, 55
  br label %115

73:                                               ; preds = %41
  %74 = icmp eq i32 %42, 35
  %75 = icmp eq i32 %42, 37
  %76 = or i1 %74, %75
  br label %115

77:                                               ; preds = %41
  %78 = trunc i32 %19 to i8
  switch i8 %78, label %83 [
    i8 55, label %79
    i8 53, label %115
    i8 56, label %115
  ]

79:                                               ; preds = %77
  %80 = getelementptr inbounds %struct.cpp_token, ptr %2, i64 0, i32 3
  %81 = tail call fastcc i32 @name_p(ptr noundef %0, ptr noundef nonnull %80) #18, !range !229
  %82 = icmp eq i32 %81, 0
  br i1 %82, label %83, label %115

83:                                               ; preds = %79, %77
  %84 = icmp eq i32 %19, 61
  br label %115

85:                                               ; preds = %41
  %86 = and i32 %19, 253
  %87 = icmp eq i32 %86, 53
  %88 = icmp eq i32 %42, 46
  %89 = select i1 %87, i1 true, i1 %88
  %90 = icmp eq i32 %42, 43
  %91 = select i1 %89, i1 true, i1 %90
  %92 = icmp eq i32 %42, 45
  %93 = select i1 %91, i1 true, i1 %92
  br label %115

94:                                               ; preds = %41
  %95 = getelementptr inbounds %struct.cpp_token, ptr %1, i64 0, i32 3, i32 0, i32 1
  %96 = load ptr, ptr %95, align 8, !tbaa !79
  %97 = load i8, ptr %96, align 1, !tbaa !79
  %98 = icmp eq i8 %97, 92
  %99 = icmp eq i32 %19, 53
  %100 = select i1 %98, i1 %99, i1 false
  br i1 %100, label %115, label %101

101:                                              ; preds = %94
  %102 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 53, i32 4
  %103 = load i8, ptr %102, align 2, !tbaa !365
  %104 = icmp ne i8 %103, 0
  %105 = icmp eq i8 %97, 64
  %106 = and i1 %105, %104
  br i1 %106, label %107, label %115

107:                                              ; preds = %101
  %108 = icmp eq i32 %19, 61
  %109 = or i1 %99, %108
  br label %115

110:                                              ; preds = %46
  %111 = zext nneg i32 %42 to i61
  %112 = lshr i61 -864690991016181760, %111
  %113 = and i61 %112, 1
  %114 = icmp ne i61 %113, 0
  br label %115

115:                                              ; preds = %46, %110, %41, %94, %107, %101, %79, %83, %77, %77, %71, %70, %70, %33, %85, %73, %68, %65, %63, %61, %58, %54, %50, %48, %44
  %116 = phi i1 [ %93, %85 ], [ %76, %73 ], [ %69, %68 ], [ %67, %65 ], [ %64, %63 ], [ %62, %61 ], [ %60, %58 ], [ %57, %54 ], [ %53, %50 ], [ %49, %48 ], [ %45, %44 ], [ true, %33 ], [ true, %70 ], [ %72, %71 ], [ true, %70 ], [ true, %79 ], [ %84, %83 ], [ true, %77 ], [ true, %77 ], [ true, %94 ], [ false, %101 ], [ %109, %107 ], [ false, %41 ], [ %114, %110 ], [ false, %46 ]
  %117 = zext i1 %116 to i32
  ret i32 %117
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable
define internal fastcc noundef i32 @name_p(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) unnamed_addr #6 !prof !78 !PGOFuncName !366 {
  %3 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 53, i32 24
  %4 = load i32, ptr %1, align 8, !tbaa !284
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %27, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.cpp_string, ptr %1, i64 0, i32 1
  %8 = load ptr, ptr %7, align 8, !tbaa !286
  %9 = zext i32 %4 to i64
  br label %10

10:                                               ; preds = %6, %24
  %11 = phi i64 [ 0, %6 ], [ %25, %24 ]
  %12 = getelementptr inbounds i8, ptr %8, i64 %11
  %13 = load i8, ptr %12, align 1, !tbaa !79
  %14 = zext i8 %13 to i64
  %15 = getelementptr inbounds [256 x i16], ptr @_sch_istable, i64 0, i64 %14
  %16 = load i16, ptr %15, align 2, !tbaa !118
  %17 = and i16 %16, 516
  %18 = icmp eq i16 %17, 0
  br i1 %18, label %19, label %24

19:                                               ; preds = %10
  %20 = icmp eq i8 %13, 36
  br i1 %20, label %21, label %27

21:                                               ; preds = %19
  %22 = load i8, ptr %3, align 2, !tbaa !318
  %23 = icmp eq i8 %22, 0
  br i1 %23, label %27, label %24

24:                                               ; preds = %10, %21
  %25 = add nuw nsw i64 %11, 1
  %26 = icmp eq i64 %25, %9
  br i1 %26, label %27, label %10, !llvm.loop !367

27:                                               ; preds = %21, %19, %24, %2
  %28 = phi i32 [ 1, %2 ], [ 1, %24 ], [ 0, %19 ], [ 0, %21 ]
  ret i32 %28
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @cpp_output_line(ptr noundef %0, ptr nocapture noundef %1) local_unnamed_addr #3 !prof !78 {
  %3 = tail call ptr @cpp_get_token(ptr noundef %0) #20
  %4 = getelementptr inbounds %struct.cpp_token, ptr %3, i64 0, i32 1
  %5 = load i8, ptr %4, align 4
  %6 = icmp eq i8 %5, 22
  br i1 %6, label %20, label %7

7:                                                ; preds = %2, %16
  %8 = phi ptr [ %9, %16 ], [ %3, %2 ]
  tail call void @cpp_output_token(ptr noundef nonnull %8, ptr noundef %1) #18
  %9 = tail call ptr @cpp_get_token(ptr noundef %0) #20
  %10 = getelementptr inbounds %struct.cpp_token, ptr %9, i64 0, i32 2
  %11 = load i16, ptr %10, align 2, !tbaa !180
  %12 = and i16 %11, 1
  %13 = icmp eq i16 %12, 0
  br i1 %13, label %16, label %14

14:                                               ; preds = %7
  %15 = tail call i32 @putc(i32 noundef 32, ptr noundef %1) #18
  br label %16

16:                                               ; preds = %14, %7
  %17 = getelementptr inbounds %struct.cpp_token, ptr %9, i64 0, i32 1
  %18 = load i8, ptr %17, align 4
  %19 = icmp eq i8 %18, 22
  br i1 %19, label %20, label %7, !llvm.loop !368

20:                                               ; preds = %16, %2
  %21 = tail call i32 @putc(i32 noundef 10, ptr noundef %1) #18
  ret void
}

; Function Attrs: optsize
declare ptr @cpp_get_token(ptr noundef) local_unnamed_addr #5

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @cpp_output_line_to_string(ptr noundef %0, ptr noundef %1) local_unnamed_addr #3 !prof !78 {
  %3 = icmp eq ptr %1, null
  br i1 %3, label %4, label %6

4:                                                ; preds = %2
  %5 = tail call ptr @xmalloc(i64 noundef 120) #20
  br label %14

6:                                                ; preds = %2
  %7 = tail call fastcc i64 @ustrlen(ptr noundef nonnull %1) #18
  %8 = trunc i64 %7 to i32
  %9 = add i32 %8, 120
  %10 = zext i32 %9 to i64
  %11 = tail call ptr @xmalloc(i64 noundef %10) #20
  %12 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %11, ptr noundef nonnull dereferenceable(1) @.str.109, ptr noundef nonnull %1) #20
  %13 = add i32 %8, 2
  br label %14

14:                                               ; preds = %4, %6
  %15 = phi ptr [ %11, %6 ], [ %5, %4 ]
  %16 = phi i32 [ %9, %6 ], [ 120, %4 ]
  %17 = phi i32 [ %13, %6 ], [ 0, %4 ]
  %18 = tail call ptr @cpp_get_token(ptr noundef %0) #20
  %19 = getelementptr inbounds %struct.cpp_token, ptr %18, i64 0, i32 1
  %20 = load i8, ptr %19, align 4
  %21 = icmp eq i8 %20, 22
  br i1 %21, label %60, label %22

22:                                               ; preds = %14, %55
  %23 = phi ptr [ %46, %55 ], [ %18, %14 ]
  %24 = phi i32 [ %56, %55 ], [ %17, %14 ]
  %25 = phi ptr [ %38, %55 ], [ %15, %14 ]
  %26 = phi i32 [ %37, %55 ], [ %16, %14 ]
  %27 = tail call i32 @cpp_token_len(ptr noundef nonnull %23) #18
  %28 = add i32 %24, 2
  %29 = add i32 %28, %27
  %30 = icmp ugt i32 %29, %26
  br i1 %30, label %31, label %36

31:                                               ; preds = %22
  %32 = shl i32 %26, 1
  %33 = tail call i32 @llvm.umax.i32(i32 %29, i32 %32)
  %34 = zext i32 %33 to i64
  %35 = tail call ptr @xrealloc(ptr noundef %25, i64 noundef %34) #20
  br label %36

36:                                               ; preds = %31, %22
  %37 = phi i32 [ %33, %31 ], [ %26, %22 ]
  %38 = phi ptr [ %35, %31 ], [ %25, %22 ]
  %39 = zext i32 %24 to i64
  %40 = getelementptr inbounds i8, ptr %38, i64 %39
  %41 = tail call ptr @cpp_spell_token(ptr noundef %0, ptr noundef nonnull %23, ptr noundef %40, i8 noundef zeroext 0) #18
  %42 = ptrtoint ptr %41 to i64
  %43 = ptrtoint ptr %38 to i64
  %44 = sub i64 %42, %43
  %45 = trunc i64 %44 to i32
  %46 = tail call ptr @cpp_get_token(ptr noundef %0) #20
  %47 = getelementptr inbounds %struct.cpp_token, ptr %46, i64 0, i32 2
  %48 = load i16, ptr %47, align 2, !tbaa !180
  %49 = and i16 %48, 1
  %50 = icmp eq i16 %49, 0
  br i1 %50, label %55, label %51

51:                                               ; preds = %36
  %52 = add i32 %45, 1
  %53 = and i64 %44, 4294967295
  %54 = getelementptr inbounds i8, ptr %38, i64 %53
  store i8 32, ptr %54, align 1, !tbaa !79
  br label %55

55:                                               ; preds = %51, %36
  %56 = phi i32 [ %52, %51 ], [ %45, %36 ]
  %57 = getelementptr inbounds %struct.cpp_token, ptr %46, i64 0, i32 1
  %58 = load i8, ptr %57, align 4
  %59 = icmp eq i8 %58, 22
  br i1 %59, label %60, label %22, !llvm.loop !369

60:                                               ; preds = %55, %14
  %61 = phi ptr [ %15, %14 ], [ %38, %55 ]
  %62 = phi i32 [ %17, %14 ], [ %56, %55 ]
  %63 = zext i32 %62 to i64
  %64 = getelementptr inbounds i8, ptr %61, i64 %63
  store i8 0, ptr %64, align 1, !tbaa !79
  ret ptr %61
}

; Function Attrs: mustprogress nofree noinline nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i64 @ustrlen(ptr nocapture noundef readonly %0) unnamed_addr #1 !prof !78 !PGOFuncName !370 {
  %2 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #19
  ret i64 %2
}

; Function Attrs: nofree nounwind optsize
declare noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #13

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(argmem: read)
declare i64 @strlen(ptr nocapture noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef ptr @new_buff(i64 noundef %0) unnamed_addr #3 !prof !346 !PGOFuncName !371 {
  %2 = tail call i64 @llvm.umax.i64(i64 %0, i64 8000)
  %3 = add i64 %2, 7
  %4 = and i64 %3, -8
  %5 = add i64 %4, 32
  %6 = tail call ptr @xmalloc(i64 noundef %5) #20
  %7 = getelementptr inbounds i8, ptr %6, i64 %4
  %8 = getelementptr inbounds %struct._cpp_buff, ptr %7, i64 0, i32 1
  store ptr %6, ptr %8, align 8, !tbaa !341
  %9 = getelementptr inbounds %struct._cpp_buff, ptr %7, i64 0, i32 2
  store ptr %6, ptr %9, align 8, !tbaa !325
  %10 = getelementptr inbounds %struct._cpp_buff, ptr %7, i64 0, i32 3
  store ptr %7, ptr %10, align 8, !tbaa !327
  store ptr null, ptr %7, align 8, !tbaa !329
  ret ptr %7
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @_cpp_extend_buff(ptr nocapture noundef %0, ptr nocapture noundef %1, i64 noundef %2) local_unnamed_addr #3 !prof !78 {
  %4 = load ptr, ptr %1, align 8, !tbaa !169
  %5 = getelementptr inbounds %struct._cpp_buff, ptr %4, i64 0, i32 3
  %6 = load ptr, ptr %5, align 8, !tbaa !327
  %7 = getelementptr inbounds %struct._cpp_buff, ptr %4, i64 0, i32 2
  %8 = load ptr, ptr %7, align 8, !tbaa !325
  %9 = ptrtoint ptr %6 to i64
  %10 = ptrtoint ptr %8 to i64
  %11 = sub i64 %9, %10
  %12 = shl nsw i64 %11, 1
  %13 = add i64 %12, %2
  %14 = tail call ptr @_cpp_get_buff(ptr noundef %0, i64 noundef %13) #18
  %15 = getelementptr inbounds %struct._cpp_buff, ptr %14, i64 0, i32 1
  %16 = load ptr, ptr %15, align 8, !tbaa !341
  %17 = load ptr, ptr %7, align 8, !tbaa !325
  %18 = load ptr, ptr %5, align 8, !tbaa !327
  %19 = ptrtoint ptr %18 to i64
  %20 = ptrtoint ptr %17 to i64
  %21 = sub i64 %19, %20
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %16, ptr align 1 %17, i64 %21, i1 false)
  store ptr %4, ptr %14, align 8, !tbaa !329
  store ptr %14, ptr %1, align 8, !tbaa !169
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @_cpp_free_buff(ptr noundef readonly %0) local_unnamed_addr #3 !prof !78 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %9, label %3

3:                                                ; preds = %1, %3
  %4 = phi ptr [ %5, %3 ], [ %0, %1 ]
  %5 = load ptr, ptr %4, align 8, !tbaa !329
  %6 = getelementptr inbounds %struct._cpp_buff, ptr %4, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !341
  tail call void @free(ptr noundef %7) #20
  %8 = icmp eq ptr %5, null
  br i1 %8, label %9, label %3, !llvm.loop !372

9:                                                ; preds = %3, %1
  ret void
}

; Function Attrs: mustprogress nounwind optsize willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr nocapture noundef) local_unnamed_addr #14

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @_cpp_aligned_alloc(ptr nocapture noundef %0, i64 noundef %1) local_unnamed_addr #3 !prof !373 {
  %3 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 5
  %4 = load ptr, ptr %3, align 8, !tbaa !374
  %5 = getelementptr inbounds %struct._cpp_buff, ptr %4, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !325
  %7 = getelementptr inbounds %struct._cpp_buff, ptr %4, i64 0, i32 3
  %8 = load ptr, ptr %7, align 8, !tbaa !327
  %9 = ptrtoint ptr %8 to i64
  %10 = ptrtoint ptr %6 to i64
  %11 = sub i64 %9, %10
  %12 = icmp ult i64 %11, %1
  br i1 %12, label %13, label %18, !prof !375

13:                                               ; preds = %2
  %14 = tail call ptr @_cpp_get_buff(ptr noundef nonnull %0, i64 noundef %1) #18
  %15 = load ptr, ptr %3, align 8, !tbaa !374
  store ptr %15, ptr %14, align 8, !tbaa !329
  store ptr %14, ptr %3, align 8, !tbaa !374
  %16 = getelementptr inbounds %struct._cpp_buff, ptr %14, i64 0, i32 2
  %17 = load ptr, ptr %16, align 8, !tbaa !325
  br label %18

18:                                               ; preds = %13, %2
  %19 = phi ptr [ %14, %13 ], [ %4, %2 ]
  %20 = phi ptr [ %17, %13 ], [ %6, %2 ]
  %21 = getelementptr inbounds i8, ptr %20, i64 %1
  %22 = getelementptr inbounds %struct._cpp_buff, ptr %19, i64 0, i32 2
  store ptr %21, ptr %22, align 8, !tbaa !325
  ret ptr %20
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define dso_local i32 @cpp_token_val_index(ptr nocapture noundef readonly %0) local_unnamed_addr #15 !prof !78 {
  %2 = getelementptr inbounds %struct.cpp_token, ptr %0, i64 0, i32 1
  %3 = load i8, ptr %2, align 4
  %4 = zext i8 %3 to i64
  %5 = getelementptr inbounds [73 x %struct.token_spelling], ptr @token_spellings, i64 0, i64 %4
  %6 = load i32, ptr %5, align 16, !tbaa !330
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

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smin.i64(i64, i64) #16

; Function Attrs: nofree nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr nocapture, ptr nocapture, i64) local_unnamed_addr #17

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #16

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #16

attributes #0 = { mustprogress nofree noinline nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree noinline nounwind optsize willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nofree nounwind optsize willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #5 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nofree noinline norecurse nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { noreturn nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #10 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #11 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { nofree nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { mustprogress nounwind optsize willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #17 = { nofree nounwind willreturn memory(argmem: read) }
attributes #18 = { optsize }
attributes #19 = { nounwind optsize willreturn memory(read) }
attributes #20 = { nounwind optsize }
attributes #21 = { noreturn nounwind optsize }
attributes #22 = { nounwind }

!llvm.module.flags = !{!0, !29, !30, !31, !32, !33, !34}
!llvm.ident = !{!77}

!0 = !{i32 1, !"ProfileSummary", !1}
!1 = !{!2, !3, !4, !5, !6, !7, !8, !9, !10, !11}
!2 = !{!"ProfileFormat", !"InstrProf"}
!3 = !{!"TotalCount", i64 82626029451}
!4 = !{!"MaxCount", i64 1293550144}
!5 = !{!"MaxInternalCount", i64 1293550144}
!6 = !{!"MaxFunctionCount", i64 1044599277}
!7 = !{!"NumCounts", i64 195328}
!8 = !{!"NumFunctions", i64 22513}
!9 = !{!"IsPartialProfile", i64 0}
!10 = !{!"PartialProfileRatio", double 0.000000e+00}
!11 = !{!"DetailedSummary", !12}
!12 = !{!13, !14, !15, !16, !17, !18, !19, !20, !21, !22, !23, !24, !25, !26, !27, !28}
!13 = !{i32 10000, i64 1293550144, i32 1}
!14 = !{i32 100000, i64 238791438, i32 19}
!15 = !{i32 200000, i64 112342198, i32 73}
!16 = !{i32 300000, i64 73330888, i32 164}
!17 = !{i32 400000, i64 47991750, i32 301}
!18 = !{i32 500000, i64 28421743, i32 535}
!19 = !{i32 600000, i64 17738858, i32 910}
!20 = !{i32 700000, i64 10364112, i32 1511}
!21 = !{i32 800000, i64 5164088, i32 2659}
!22 = !{i32 900000, i64 1953302, i32 5305}
!23 = !{i32 950000, i64 847371, i32 8456}
!24 = !{i32 990000, i64 164662, i32 16525}
!25 = !{i32 999000, i64 16513, i32 27926}
!26 = !{i32 999900, i64 2384, i32 37409}
!27 = !{i32 999990, i64 310, i32 44222}
!28 = !{i32 999999, i64 42, i32 49712}
!29 = !{i32 1, !"wchar_size", i32 4}
!30 = !{i32 7, !"openmp", i32 51}
!31 = !{i32 8, !"PIC Level", i32 2}
!32 = !{i32 7, !"PIE Level", i32 2}
!33 = !{i32 7, !"uwtable", i32 2}
!34 = !{i32 5, !"CG Profile", !35}
!35 = distinct !{!36, !37, !38, !39, !40, !41, !42, !43, !44, !45, !46, !47, !48, !49, !50, !51, !52, !53, !54, !55, !56, !57, !58, !59, !60, !61, !62, !63, !64, !65, !66, !67, !68, !69, !70, !71, !72, !73, !74, !75, !76}
!36 = !{ptr @_cpp_clean_line, ptr @add_line_note, i64 688409}
!37 = !{ptr @add_line_note, ptr @xrealloc, i64 196}
!38 = !{ptr @_cpp_process_line_notes, ptr @linemap_line_start, i64 1}
!39 = !{ptr @_cpp_skip_block_comment, ptr @_cpp_process_line_notes, i64 31791}
!40 = !{ptr @_cpp_skip_block_comment, ptr @_cpp_clean_line, i64 1}
!41 = !{ptr @_cpp_skip_block_comment, ptr @linemap_line_start, i64 1}
!42 = !{ptr @_cpp_init_tokenrun, ptr @xmalloc, i64 11}
!43 = !{ptr @_cpp_lex_token, ptr @next_tokenrun, i64 279}
!44 = !{ptr @_cpp_lex_token, ptr @abort, i64 2}
!45 = !{ptr @_cpp_lex_token, ptr @_cpp_lex_direct, i64 4314035}
!46 = !{ptr @next_tokenrun, ptr @xmalloc, i64 11}
!47 = !{ptr @next_tokenrun, ptr @_cpp_init_tokenrun, i64 11}
!48 = !{ptr @_cpp_lex_direct, ptr @_cpp_get_fresh_line, i64 688593}
!49 = !{ptr @_cpp_lex_direct, ptr @linemap_position_for_column, i64 41875}
!50 = !{ptr @_cpp_lex_direct, ptr @skip_whitespace, i64 1702196}
!51 = !{ptr @_cpp_lex_direct, ptr @linemap_line_start, i64 688197}
!52 = !{ptr @_cpp_lex_direct, ptr @lex_number, i64 268305}
!53 = !{ptr @_cpp_lex_direct, ptr @warn_about_normalization, i64 1614057}
!54 = !{ptr @_cpp_lex_direct, ptr @lex_string, i64 33277}
!55 = !{ptr @_cpp_lex_direct, ptr @lex_identifier, i64 1345752}
!56 = !{ptr @_cpp_lex_direct, ptr @_cpp_skip_block_comment, i64 31789}
!57 = !{ptr @_cpp_lex_direct, ptr @cpp_error, i64 1}
!58 = !{ptr @_cpp_lex_direct, ptr @skip_line_comment, i64 1}
!59 = !{ptr @_cpp_lex_direct, ptr @save_comment, i64 1}
!60 = !{ptr @_cpp_lex_direct, ptr @forms_identifier_p, i64 2}
!61 = !{ptr @_cpp_lex_direct, ptr @create_literal, i64 2}
!62 = !{ptr @_cpp_get_fresh_line, ptr @_cpp_clean_line, i64 688211}
!63 = !{ptr @_cpp_get_fresh_line, ptr @_cpp_pop_buffer, i64 1}
!64 = !{ptr @skip_whitespace, ptr @cpp_error, i64 1}
!65 = !{ptr @lex_number, ptr @forms_identifier_p, i64 268301}
!66 = !{ptr @lex_number, ptr @_cpp_unaligned_alloc, i64 268300}
!67 = !{ptr @lex_string, ptr @lex_raw_string, i64 1}
!68 = !{ptr @lex_string, ptr @create_literal, i64 33271}
!69 = !{ptr @lex_identifier, ptr @forms_identifier_p, i64 1345794}
!70 = !{ptr @lex_identifier, ptr @_cpp_interpret_identifier, i64 2}
!71 = !{ptr @lex_identifier, ptr @ht_lookup_with_hash, i64 1345729}
!72 = !{ptr @create_literal, ptr @_cpp_unaligned_alloc, i64 33272}
!73 = !{ptr @_cpp_unaligned_alloc, ptr @_cpp_get_buff, i64 142}
!74 = !{ptr @_cpp_get_buff, ptr @new_buff, i64 143}
!75 = !{ptr @new_buff, ptr @xmalloc, i64 143}
!76 = !{ptr @_cpp_aligned_alloc, ptr @_cpp_get_buff, i64 1}
!77 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!78 = !{!"function_entry_count", i64 0}
!79 = !{!80, !80, i64 0}
!80 = !{!"omnipotent char", !81, i64 0}
!81 = !{!"Simple C/C++ TBAA"}
!82 = !{!83, !85, i64 0}
!83 = !{!"cpp_hashnode", !84, i64 0, !86, i64 16, !86, i64 16, !80, i64 17, !86, i64 18, !86, i64 18, !80, i64 24}
!84 = !{!"ht_identifier", !85, i64 0, !86, i64 8, !86, i64 12}
!85 = !{!"any pointer", !80, i64 0}
!86 = !{!"int", !80, i64 0}
!87 = !{!"cpp_lex.c:ustrcmp"}
!88 = !{!"function_entry_count", i64 688407}
!89 = !{!90, !85, i64 0}
!90 = !{!"cpp_reader", !85, i64 0, !85, i64 8, !91, i64 16, !85, i64 40, !86, i64 48, !85, i64 56, !85, i64 64, !85, i64 72, !92, i64 80, !85, i64 136, !85, i64 144, !93, i64 152, !86, i64 176, !80, i64 180, !85, i64 184, !85, i64 192, !95, i64 200, !85, i64 264, !85, i64 272, !85, i64 280, !85, i64 288, !85, i64 296, !85, i64 304, !97, i64 312, !80, i64 400, !80, i64 401, !85, i64 408, !85, i64 416, !80, i64 424, !85, i64 432, !98, i64 440, !85, i64 472, !86, i64 480, !86, i64 484, !85, i64 488, !86, i64 496, !99, i64 504, !99, i64 528, !99, i64 552, !99, i64 576, !99, i64 600, !85, i64 624, !85, i64 632, !93, i64 640, !93, i64 664, !85, i64 688, !97, i64 696, !97, i64 784, !85, i64 872, !100, i64 880, !85, i64 1016, !85, i64 1024, !85, i64 1032, !101, i64 1040, !103, i64 1168, !80, i64 1200, !104, i64 1208, !85, i64 1240, !85, i64 1248, !85, i64 1256, !85, i64 1264, !86, i64 1272, !105, i64 1280, !85, i64 1296}
!91 = !{!"lexer_state", !80, i64 0, !80, i64 1, !80, i64 2, !80, i64 3, !80, i64 4, !80, i64 5, !80, i64 6, !80, i64 7, !80, i64 8, !80, i64 9, !80, i64 10, !86, i64 12, !80, i64 16, !80, i64 17}
!92 = !{!"cpp_context", !85, i64 0, !85, i64 8, !80, i64 16, !85, i64 32, !85, i64 40, !80, i64 48}
!93 = !{!"cpp_token", !86, i64 0, !86, i64 4, !94, i64 6, !80, i64 8}
!94 = !{!"short", !80, i64 0}
!95 = !{!"cpp_dir", !85, i64 0, !85, i64 8, !86, i64 16, !80, i64 20, !80, i64 21, !85, i64 24, !85, i64 32, !85, i64 40, !96, i64 48, !96, i64 56}
!96 = !{!"long", !80, i64 0}
!97 = !{!"obstack", !96, i64 0, !85, i64 8, !85, i64 16, !85, i64 24, !85, i64 32, !96, i64 40, !86, i64 48, !85, i64 56, !85, i64 64, !85, i64 72, !86, i64 80, !86, i64 80, !86, i64 80}
!98 = !{!"tokenrun", !85, i64 0, !85, i64 8, !85, i64 16, !85, i64 24}
!99 = !{!"cset_converter", !85, i64 0, !85, i64 8, !86, i64 16}
!100 = !{!"cpp_callbacks", !85, i64 0, !85, i64 8, !85, i64 16, !85, i64 24, !85, i64 32, !85, i64 40, !85, i64 48, !85, i64 56, !85, i64 64, !85, i64 72, !85, i64 80, !85, i64 88, !85, i64 96, !85, i64 104, !85, i64 112, !85, i64 120, !85, i64 128}
!101 = !{!"cpp_options", !86, i64 0, !86, i64 4, !80, i64 8, !80, i64 9, !80, i64 10, !80, i64 11, !80, i64 12, !80, i64 13, !80, i64 14, !80, i64 15, !80, i64 16, !80, i64 17, !80, i64 18, !80, i64 19, !80, i64 20, !80, i64 21, !80, i64 22, !80, i64 23, !80, i64 24, !80, i64 25, !80, i64 26, !80, i64 27, !80, i64 28, !80, i64 29, !80, i64 30, !80, i64 31, !80, i64 32, !80, i64 33, !80, i64 34, !80, i64 35, !80, i64 36, !80, i64 37, !80, i64 38, !80, i64 39, !80, i64 40, !80, i64 41, !80, i64 42, !85, i64 48, !85, i64 56, !85, i64 64, !86, i64 72, !80, i64 76, !80, i64 77, !102, i64 80, !96, i64 88, !96, i64 96, !96, i64 104, !96, i64 112, !80, i64 120, !80, i64 121, !80, i64 122, !80, i64 123, !80, i64 124}
!102 = !{!"", !86, i64 0, !80, i64 4, !80, i64 5, !80, i64 6, !80, i64 7}
!103 = !{!"spec_nodes", !85, i64 0, !85, i64 8, !85, i64 16, !85, i64 24}
!104 = !{!"", !85, i64 0, !85, i64 8, !85, i64 16, !86, i64 24}
!105 = !{!"", !85, i64 0, !86, i64 8, !86, i64 12}
!106 = !{!107, !86, i64 52}
!107 = !{!"cpp_buffer", !85, i64 0, !85, i64 8, !85, i64 16, !85, i64 24, !85, i64 32, !85, i64 40, !86, i64 48, !86, i64 52, !86, i64 56, !85, i64 64, !85, i64 72, !85, i64 80, !85, i64 88, !80, i64 96, !86, i64 97, !86, i64 97, !86, i64 97, !80, i64 98, !95, i64 104, !99, i64 168}
!108 = !{!107, !86, i64 48}
!109 = !{!107, !85, i64 16}
!110 = !{!107, !85, i64 8}
!111 = !{!107, !85, i64 0}
!112 = !{!107, !80, i64 96}
!113 = !{!"branch_weights", i32 688214, i32 195}
!114 = !{!"branch_weights", i32 -44344977, i32 -40904744, i32 -40904744, i32 1344760, i32 2095472}
!115 = !{!107, !85, i64 32}
!116 = !{!"branch_weights", i32 1, i32 688214}
!117 = !{!"branch_weights", i32 684937, i32 3278}
!118 = !{!94, !94, i64 0}
!119 = !{!"branch_weights", i32 3278, i32 18}
!120 = distinct !{!120, !121}
!121 = !{!"llvm.loop.mustprogress"}
!122 = !{!"branch_weights", i32 1, i32 3278}
!123 = !{!"branch_weights", i32 24, i32 8203}
!124 = !{!"branch_weights", i32 24, i32 1}
!125 = !{!90, !80, i64 1053}
!126 = distinct !{!126, !121}
!127 = !{!"branch_weights", i32 23892544, i32 953160, i32 991185}
!128 = !{!"cpp_lex.c:add_line_note"}
!129 = !{!107, !86, i64 56}
!130 = !{!"branch_weights", i32 196, i32 688213}
!131 = !{!107, !85, i64 40}
!132 = !{!133, !85, i64 0}
!133 = !{!"_cpp_line_note", !85, i64 0, !86, i64 8}
!134 = !{!133, !86, i64 8}
!135 = !{!"function_entry_count", i64 31790}
!136 = !{!"branch_weights", i32 31790, i32 1}
!137 = !{!90, !85, i64 40}
!138 = !{!139, !86, i64 36}
!139 = !{!"line_maps", !85, i64 0, !86, i64 8, !86, i64 12, !86, i64 16, !86, i64 20, !86, i64 24, !80, i64 28, !86, i64 32, !86, i64 36, !86, i64 40, !85, i64 48}
!140 = !{!139, !85, i64 0}
!141 = !{!139, !86, i64 12}
!142 = !{!143, !86, i64 12}
!143 = !{!"line_map", !85, i64 0, !86, i64 8, !86, i64 12, !86, i64 16, !86, i64 20, !80, i64 21, !86, i64 22}
!144 = !{!143, !86, i64 8}
!145 = !{!90, !80, i64 1061}
!146 = !{i8 0, i8 2}
!147 = !{!"branch_weights", i32 1, i32 0}
!148 = !{!"cpp_lex.c:warn_in_comment"}
!149 = distinct !{!149, !121}
!150 = !{!"branch_weights", i32 1, i32 31791}
!151 = !{!"branch_weights", i32 -771795643, i32 182270917, i32 5246}
!152 = !{!"branch_weights", i32 31791, i32 2952}
!153 = !{!90, !80, i64 1059}
!154 = !{!"branch_weights", i32 2952, i32 1}
!155 = !{!"cpp_lex.c:lex_identifier_intern"}
!156 = distinct !{!156, !121}
!157 = !{!90, !85, i64 1016}
!158 = !{!90, !80, i64 18}
!159 = !{!90, !80, i64 23}
!160 = !{!90, !85, i64 1192}
!161 = !{!90, !80, i64 22}
!162 = !{!"function_entry_count", i64 11}
!163 = !{!98, !85, i64 16}
!164 = !{!98, !85, i64 24}
!165 = !{!98, !85, i64 0}
!166 = !{!90, !85, i64 136}
!167 = !{!92, !85, i64 8}
!168 = !{!92, !80, i64 48}
!169 = !{!85, !85, i64 0}
!170 = !{!90, !86, i64 484}
!171 = distinct !{!171, !121}
!172 = !{!"function_entry_count", i64 4339020}
!173 = !{!90, !85, i64 432}
!174 = !{!90, !85, i64 472}
!175 = !{!"branch_weights", i32 279, i32 4338743}
!176 = !{!"branch_weights", i32 495, i32 2147483153}
!177 = !{!"branch_weights", i32 4339021, i32 1}
!178 = !{!90, !86, i64 480}
!179 = !{!"branch_weights", i32 4314038, i32 24984}
!180 = !{!93, !94, i64 6}
!181 = !{!"branch_weights", i32 3837286, i32 501736}
!182 = !{!"branch_weights", i32 1, i32 501736}
!183 = !{!90, !80, i64 25}
!184 = !{!90, !80, i64 32}
!185 = !{!"branch_weights", i32 501736, i32 1}
!186 = !{!90, !85, i64 880}
!187 = !{!90, !80, i64 16}
!188 = !{!"branch_weights", i32 4338411, i32 611}
!189 = !{!"branch_weights", i32 4338411, i32 1}
!190 = !{!90, !80, i64 424}
!191 = !{i64 0, i64 4, !192, i64 4, i64 4, !192, i64 6, i64 2, !118, i64 8, i64 8, !169, i64 8, i64 8, !169, i64 8, i64 4, !192, i64 16, i64 8, !169, i64 8, i64 4, !192, i64 8, i64 4, !192, i64 8, i64 4, !192}
!192 = !{!86, !86, i64 0}
!193 = !{!93, !86, i64 0}
!194 = !{!"function_entry_count", i64 278}
!195 = !{!"cpp_lex.c:next_tokenrun"}
!196 = !{!"branch_weights", i32 11, i32 269}
!197 = !{!98, !85, i64 8}
!198 = !{!"function_entry_count", i64 4314344}
!199 = !{!"branch_weights", i32 4314157, i32 688596}
!200 = !{!"branch_weights", i32 688596, i32 1}
!201 = !{!90, !80, i64 33}
!202 = !{!90, !80, i64 24}
!203 = !{!"branch_weights", i32 383, i32 688214}
!204 = !{!"branch_weights", i32 2, i32 382}
!205 = !{!"branch_weights", i32 688214, i32 1}
!206 = !{!90, !85, i64 456}
!207 = !{!"branch_weights", i32 6736389, i32 1}
!208 = !{!90, !85, i64 8}
!209 = !{!139, !86, i64 40}
!210 = !{!"branch_weights", i32 6694515, i32 41875}
!211 = !{!139, !86, i64 32}
!212 = !{!"branch_weights", i32 942, i32 6693574}
!213 = !{!"branch_weights", i32 1, i32 1702230, i32 1, i32 1, i32 1, i32 1, i32 688408, i32 109292, i32 72250, i32 24114, i32 12871, i32 14064, i32 7517, i32 7161, i32 5920, i32 11806, i32 3312, i32 21063, i32 57226, i32 2074, i32 5758, i32 39099, i32 23248, i32 39894, i32 110384, i32 41392, i32 83543, i32 67534, i32 49561, i32 8502, i32 144946, i32 2920, i32 1418, i32 26413, i32 35098, i32 27123, i32 48905, i32 30318, i32 1731, i32 138299, i32 68557, i32 63041, i32 38089, i32 17232, i32 55437, i32 2639, i32 126, i32 4100, i32 8810, i32 16682, i32 6127, i32 2385, i32 2002, i32 1795, i32 2054, i32 3504, i32 741, i32 68, i32 10693, i32 3424, i32 2066, i32 4168, i32 1325, i32 9228, i32 4682, i32 8867, i32 32, i32 1076, i32 1, i32 384, i32 5218, i32 28056, i32 34984, i32 14416, i32 5230, i32 1447, i32 119103, i32 17319, i32 134244, i32 50748, i32 19443, i32 42750, i32 56730, i32 143978, i32 27981, i32 290, i32 6, i32 8046, i32 1122, i32 225472, i32 641072, i32 641072, i32 92924, i32 92924, i32 57926, i32 57926, i32 211324, i32 1, i32 1, i32 1}
!214 = !{!"branch_weights", i32 688213, i32 196}
!215 = !{!"branch_weights", i32 21063, i32 65056}
!216 = !{!90, !80, i64 1056}
!217 = !{!"branch_weights", i32 65056, i32 1}
!218 = !{!"branch_weights", i32 1, i32 21063}
!219 = !{!"branch_weights", i32 2145240842, i32 101949, i32 2140857}
!220 = !{!"branch_weights", i32 1, i32 21}
!221 = !{!"branch_weights", i32 101975, i32 2147381673}
!222 = !{!"branch_weights", i32 1345732, i32 1}
!223 = !{!"branch_weights", i32 252410790, i32 -1759628837, i32 79725, i32 2231607}
!224 = !{!"branch_weights", i32 31791, i32 1}
!225 = !{!90, !80, i64 1049}
!226 = !{i32 0, i32 256}
!227 = !{!90, !86, i64 1044}
!228 = !{!90, !80, i64 1077}
!229 = !{i32 0, i32 2}
!230 = !{!90, !80, i64 21}
!231 = !{!90, !80, i64 19}
!232 = !{!"branch_weights", i32 14416, i32 1}
!233 = !{!"branch_weights", i32 69700260, i32 15451832, i32 105901992}
!234 = !{!"branch_weights", i32 55, i32 7938}
!235 = !{!90, !80, i64 1054}
!236 = !{!"branch_weights", i32 1, i32 5260}
!237 = !{!"branch_weights", i32 27667600, i32 5261, i32 5260}
!238 = !{!"branch_weights", i32 5411538, i32 6832847, i32 1978704}
!239 = !{!"branch_weights", i32 66, i32 663}
!240 = !{!"branch_weights", i32 16, i32 1432}
!241 = !{!"branch_weights", i32 1, i32 1432}
!242 = !{!"branch_weights", i32 2050624, i32 1433, i32 1432}
!243 = !{!"branch_weights", i32 119100, i32 4}
!244 = !{!"branch_weights", i32 -396623873, i32 4325376, i32 32768}
!245 = !{!"branch_weights", i32 132, i32 1}
!246 = !{!90, !80, i64 1048}
!247 = !{!"branch_weights", i32 133996016, i32 60400398, i32 21791826}
!248 = !{!"branch_weights", i32 265365716, i32 -951510825, i32 23596423, i32 8949482}
!249 = !{!"branch_weights", i32 1, i32 123262}
!250 = !{!"branch_weights", i32 340429109, i32 599920464, i32 10889683}
!251 = !{!"branch_weights", i32 8718840, i32 55944274, i32 3604770}
!252 = !{!"branch_weights", i32 -1493368830, i32 65536, i32 65533}
!253 = !{!"branch_weights", i32 54, i32 56677}
!254 = !{!"branch_weights", i32 51567, i32 92412}
!255 = !{!"branch_weights", i32 15518, i32 12464}
!256 = !{!"branch_weights", i32 35, i32 256}
!257 = !{!"branch_weights", i32 6, i32 1}
!258 = !{!"function_entry_count", i64 688595}
!259 = !{!"branch_weights", i32 688215, i32 382}
!260 = !{!"branch_weights", i32 1, i32 688215}
!261 = !{!"branch_weights", i32 688214, i32 2}
!262 = !{!"branch_weights", i32 2, i32 1}
!263 = !{!107, !85, i64 24}
!264 = !{!"branch_weights", i32 2, i32 16}
!265 = !{!"function_entry_count", i64 1702229}
!266 = !{!"cpp_lex.c:skip_whitespace"}
!267 = !{!"branch_weights", i32 1, i32 14001144, i32 2, i32 1}
!268 = !{!"branch_weights", i32 1702230, i32 1798057}
!269 = distinct !{!269, !121}
!270 = !{!"branch_weights", i32 1702230, i32 1}
!271 = !{!"function_entry_count", i64 268300}
!272 = !{!"cpp_lex.c:lex_number"}
!273 = !{!"branch_weights", i32 1200103119, i32 -2044709997}
!274 = !{!"branch_weights", i32 -2045565257, i32 117386, i32 301848}
!275 = !{!"branch_weights", i32 708588, i32 406112, i32 282240, i32 27216, i32 26244}
!276 = !{!90, !80, i64 1055}
!277 = !{!"branch_weights", i32 268301, i32 143122}
!278 = !{!279, !86, i64 0}
!279 = !{!"normalize_state", !86, i64 0, !80, i64 4, !86, i64 8}
!280 = !{!279, !80, i64 4}
!281 = distinct !{!281, !121}
!282 = !{!"branch_weights", i32 268301, i32 1}
!283 = distinct !{!283, !121}
!284 = !{!285, !86, i64 0}
!285 = !{!"cpp_string", !86, i64 0, !85, i64 8}
!286 = !{!285, !85, i64 8}
!287 = !{!"function_entry_count", i64 1614031}
!288 = !{!"cpp_lex.c:warn_about_normalization"}
!289 = !{!90, !86, i64 1112}
!290 = !{!279, !86, i64 8}
!291 = !{!"branch_weights", i32 1, i32 1614032}
!292 = !{!"function_entry_count", i64 33272}
!293 = !{!"cpp_lex.c:lex_string"}
!294 = !{!"branch_weights", i32 33273, i32 33274, i32 33274, i32 1}
!295 = !{!"branch_weights", i32 84774, i32 84793, i32 -1916073480, i32 442354202}
!296 = !{!"branch_weights", i32 -1599169494, i32 96093, i32 96089, i32 96086}
!297 = !{!"branch_weights", i32 27227524, i32 5219, i32 5218}
!298 = !{!"branch_weights", i32 5165, i32 371728}
!299 = !{!"branch_weights", i32 5165, i32 1}
!300 = !{!"branch_weights", i32 1, i32 5165}
!301 = !{!"branch_weights", i32 33273, i32 338456}
!302 = !{!"branch_weights", i32 -715202798, i32 10576, i32 10576}
!303 = !{!"branch_weights", i32 33273, i32 1}
!304 = !{!"branch_weights", i32 1, i32 33273}
!305 = !{!"function_entry_count", i64 1345731}
!306 = !{!"cpp_lex.c:lex_identifier"}
!307 = !{!"branch_weights", i32 1, i32 1345731}
!308 = !{!"branch_weights", i32 1345731, i32 5989065}
!309 = distinct !{!309, !121}
!310 = distinct !{!310, !121}
!311 = distinct !{!311, !121}
!312 = !{!"cpp_lex.c:cpp_in_system_header"}
!313 = !{!107, !80, i64 98}
!314 = !{!"cpp_lex.c:skip_line_comment"}
!315 = distinct !{!315, !121}
!316 = !{!"cpp_lex.c:save_comment"}
!317 = !{!"cpp_lex.c:forms_identifier_p"}
!318 = !{!90, !80, i64 1070}
!319 = !{!90, !80, i64 1072}
!320 = !{!90, !80, i64 1071}
!321 = !{!"branch_weights", i32 1614032, i32 1}
!322 = !{!"cpp_lex.c:create_literal"}
!323 = !{!"function_entry_count", i64 301572}
!324 = !{!90, !85, i64 64}
!325 = !{!326, !85, i64 16}
!326 = !{!"_cpp_buff", !85, i64 0, !85, i64 8, !85, i64 16, !85, i64 24}
!327 = !{!326, !85, i64 24}
!328 = !{!"branch_weights", i32 142, i32 301432}
!329 = !{!326, !85, i64 0}
!330 = !{!331, !86, i64 0}
!331 = !{!"token_spelling", !86, i64 0, !85, i64 8}
!332 = !{!83, !86, i64 8}
!333 = !{!331, !85, i64 8}
!334 = distinct !{!334, !121}
!335 = !{i64 -2147483648, i64 2147483648}
!336 = distinct !{!336, !121}
!337 = !{!"cpp_lex.c:lex_raw_string"}
!338 = distinct !{!338, !121}
!339 = distinct !{!339, !121}
!340 = distinct !{!340, !121}
!341 = !{!326, !85, i64 8}
!342 = distinct !{!342, !121}
!343 = !{!"cpp_lex.c:bufring_append"}
!344 = distinct !{!344, !121}
!345 = !{!90, !85, i64 72}
!346 = !{!"function_entry_count", i64 143}
!347 = !{!"branch_weights", i32 143, i32 1}
!348 = !{!"cpp_lex.c:store_comment"}
!349 = !{!90, !86, i64 1292}
!350 = !{!90, !85, i64 1280}
!351 = !{!90, !86, i64 1288}
!352 = !{!353, !85, i64 0}
!353 = !{!"", !85, i64 0, !86, i64 8}
!354 = !{!353, !86, i64 8}
!355 = !{!"cpp_lex.c:cpp_digraph2name"}
!356 = !{!"cpp_lex.c:utf8_to_ucn"}
!357 = distinct !{!357, !121}
!358 = distinct !{!358, !121}
!359 = distinct !{!359, !121}
!360 = distinct !{!360, !121}
!361 = distinct !{!361, !121}
!362 = !{!"function_entry_count", i64 3}
!363 = !{!"branch_weights", i32 4, i32 1}
!364 = !{!"branch_weights", i32 2, i32 1, i32 1, i32 4}
!365 = !{!90, !80, i64 1050}
!366 = !{!"cpp_lex.c:name_p"}
!367 = distinct !{!367, !121}
!368 = distinct !{!368, !121}
!369 = distinct !{!369, !121}
!370 = !{!"cpp_lex.c:ustrlen"}
!371 = !{!"cpp_lex.c:new_buff"}
!372 = distinct !{!372, !121}
!373 = !{!"function_entry_count", i64 22}
!374 = !{!90, !85, i64 56}
!375 = !{!"branch_weights", i32 1, i32 23}
