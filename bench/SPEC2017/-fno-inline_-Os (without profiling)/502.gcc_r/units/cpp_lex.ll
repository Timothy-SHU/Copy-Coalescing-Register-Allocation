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

; Function Attrs: mustprogress nofree noinline nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @cpp_ideq(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.cpp_token, ptr %0, i64 0, i32 1
  %4 = load i8, ptr %3, align 4
  %5 = icmp eq i8 %4, 53
  br i1 %5, label %6, label %13

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.cpp_token, ptr %0, i64 0, i32 3
  %8 = load ptr, ptr %7, align 8, !tbaa !5
  %9 = load ptr, ptr %8, align 8, !tbaa !8
  %10 = tail call fastcc i32 @ustrcmp(ptr noundef %9, ptr noundef %1) #18
  %11 = icmp eq i32 %10, 0
  %12 = zext i1 %11 to i32
  br label %13

13:                                               ; preds = %2, %6
  %14 = phi i32 [ %12, %6 ], [ 0, %2 ]
  ret i32 %14
}

; Function Attrs: mustprogress nofree noinline nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @ustrcmp(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) unnamed_addr #1 {
  %3 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(1) %1) #19
  ret i32 %3
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @_cpp_clean_line(ptr nocapture noundef readonly %0) local_unnamed_addr #2 {
  %2 = load ptr, ptr %0, align 8, !tbaa !13
  %3 = getelementptr inbounds %struct.cpp_buffer, ptr %2, i64 0, i32 7
  store i32 0, ptr %3, align 4, !tbaa !30
  %4 = getelementptr inbounds %struct.cpp_buffer, ptr %2, i64 0, i32 6
  store i32 0, ptr %4, align 8, !tbaa !32
  %5 = getelementptr inbounds %struct.cpp_buffer, ptr %2, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !33
  %7 = getelementptr inbounds %struct.cpp_buffer, ptr %2, i64 0, i32 1
  store ptr %6, ptr %7, align 8, !tbaa !34
  store ptr %6, ptr %2, align 8, !tbaa !35
  %8 = getelementptr inbounds %struct.cpp_buffer, ptr %2, i64 0, i32 13
  store i8 0, ptr %8, align 8, !tbaa !36
  %9 = getelementptr inbounds i8, ptr %6, i64 -1
  %10 = getelementptr inbounds %struct.cpp_buffer, ptr %2, i64 0, i32 14
  %11 = load i8, ptr %10, align 1
  %12 = and i8 %11, 2
  %13 = icmp eq i8 %12, 0
  br i1 %13, label %14, label %147

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
  %22 = load i8, ptr %21, align 1, !tbaa !5
  switch i8 %22, label %77 [
    i8 13, label %23
    i8 10, label %23
    i8 92, label %16
    i8 63, label %56
  ]

23:                                               ; preds = %19, %19
  %24 = getelementptr inbounds %struct.cpp_buffer, ptr %2, i64 0, i32 4
  %25 = load ptr, ptr %24, align 8, !tbaa !37
  %26 = icmp eq ptr %21, %25
  br i1 %26, label %160, label %27

27:                                               ; preds = %23
  %28 = icmp eq i8 %22, 13
  br i1 %28, label %29, label %35

29:                                               ; preds = %27
  %30 = getelementptr inbounds i8, ptr %20, i64 2
  %31 = load i8, ptr %30, align 1, !tbaa !5
  %32 = icmp eq i8 %31, 10
  br i1 %32, label %33, label %35

33:                                               ; preds = %29
  %34 = icmp eq ptr %30, %25
  br i1 %34, label %160, label %35

35:                                               ; preds = %33, %29, %27
  %36 = phi ptr [ %30, %33 ], [ %21, %29 ], [ %21, %27 ]
  %37 = icmp eq ptr %18, null
  br i1 %37, label %160, label %38

38:                                               ; preds = %35, %38
  %39 = phi i64 [ %40, %38 ], [ 1, %35 ]
  %40 = add nsw i64 %39, -1
  %41 = getelementptr inbounds i8, ptr %20, i64 %40
  %42 = load i8, ptr %41, align 1, !tbaa !5
  %43 = zext i8 %42 to i64
  %44 = getelementptr inbounds [256 x i16], ptr @_sch_istable, i64 0, i64 %43
  %45 = load i16, ptr %44, align 2, !tbaa !38
  %46 = and i16 %45, 2048
  %47 = icmp eq i16 %46, 0
  br i1 %47, label %48, label %38, !llvm.loop !39

48:                                               ; preds = %38
  %49 = getelementptr inbounds i8, ptr %20, i64 %40
  %50 = icmp eq ptr %49, %18
  br i1 %50, label %51, label %160

51:                                               ; preds = %48
  %52 = getelementptr inbounds i8, ptr %20, i64 %39
  %53 = icmp eq i64 %39, 1
  %54 = select i1 %53, i32 92, i32 32
  tail call fastcc void @add_line_note(ptr noundef nonnull %2, ptr noundef nonnull %18, i32 noundef %54) #18
  %55 = getelementptr inbounds i8, ptr %52, i64 -2
  store ptr %18, ptr %5, align 8, !tbaa !33
  br label %78

56:                                               ; preds = %19
  %57 = getelementptr inbounds i8, ptr %20, i64 2
  %58 = load i8, ptr %57, align 1, !tbaa !5
  %59 = icmp eq i8 %58, 63
  br i1 %59, label %60, label %77

60:                                               ; preds = %56
  %61 = getelementptr inbounds i8, ptr %20, i64 3
  %62 = load i8, ptr %61, align 1, !tbaa !5
  %63 = zext i8 %62 to i64
  %64 = getelementptr inbounds [256 x i8], ptr @_cpp_trigraph_map, i64 0, i64 %63
  %65 = load i8, ptr %64, align 1, !tbaa !5
  %66 = icmp eq i8 %65, 0
  br i1 %66, label %77, label %67

67:                                               ; preds = %60
  %68 = zext i8 %62 to i32
  tail call fastcc void @add_line_note(ptr noundef nonnull %2, ptr noundef nonnull %21, i32 noundef %68) #18
  %69 = load i8, ptr %15, align 1, !tbaa !41
  %70 = icmp eq i8 %69, 0
  br i1 %70, label %77, label %71

71:                                               ; preds = %67
  %72 = getelementptr inbounds i8, ptr %20, i64 3
  %73 = load i8, ptr %72, align 1, !tbaa !5
  %74 = zext i8 %73 to i64
  %75 = getelementptr inbounds [256 x i8], ptr @_cpp_trigraph_map, i64 0, i64 %74
  %76 = load i8, ptr %75, align 1, !tbaa !5
  store i8 %76, ptr %21, align 1, !tbaa !5
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
  %86 = load i8, ptr %85, align 1, !tbaa !5
  %87 = getelementptr inbounds i8, ptr %84, i64 1
  store i8 %86, ptr %87, align 1, !tbaa !5
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
  %92 = load ptr, ptr %81, align 8, !tbaa !37
  br label %101

93:                                               ; preds = %82
  %94 = load ptr, ptr %81, align 8, !tbaa !37
  %95 = icmp eq ptr %85, %94
  br i1 %95, label %160, label %96

96:                                               ; preds = %93
  %97 = getelementptr inbounds i8, ptr %83, i64 2
  %98 = load i8, ptr %97, align 1, !tbaa !5
  %99 = icmp eq i8 %98, 10
  %100 = select i1 %99, ptr %97, ptr %85
  br label %101

101:                                              ; preds = %91, %96
  %102 = phi ptr [ %92, %91 ], [ %94, %96 ]
  %103 = phi ptr [ %85, %91 ], [ %100, %96 ]
  %104 = icmp eq ptr %103, %102
  br i1 %104, label %160, label %105

105:                                              ; preds = %101
  %106 = load ptr, ptr %5, align 8, !tbaa !33
  br label %107

107:                                              ; preds = %105, %111
  %108 = phi i64 [ %112, %111 ], [ 1, %105 ]
  %109 = getelementptr inbounds i8, ptr %84, i64 %108
  %110 = icmp eq ptr %109, %106
  br i1 %110, label %160, label %111

111:                                              ; preds = %107
  %112 = add nsw i64 %108, -1
  %113 = getelementptr inbounds i8, ptr %84, i64 %112
  %114 = load i8, ptr %113, align 1, !tbaa !5
  %115 = zext i8 %114 to i64
  %116 = getelementptr inbounds [256 x i16], ptr @_sch_istable, i64 0, i64 %115
  %117 = load i16, ptr %116, align 2, !tbaa !38
  %118 = and i16 %117, 2048
  %119 = icmp eq i16 %118, 0
  br i1 %119, label %120, label %107, !llvm.loop !42

120:                                              ; preds = %111
  %121 = icmp eq i8 %114, 92
  br i1 %121, label %122, label %160

122:                                              ; preds = %120
  %123 = getelementptr inbounds i8, ptr %109, i64 -1
  %124 = icmp eq i64 %108, 1
  %125 = select i1 %124, i32 92, i32 32
  tail call fastcc void @add_line_note(ptr noundef nonnull %2, ptr noundef nonnull %123, i32 noundef %125) #18
  %126 = getelementptr inbounds i8, ptr %109, i64 -2
  store ptr %123, ptr %5, align 8, !tbaa !33
  br label %88

127:                                              ; preds = %82
  %128 = getelementptr inbounds i8, ptr %83, i64 2
  %129 = load i8, ptr %128, align 1, !tbaa !5
  %130 = icmp eq i8 %129, 63
  br i1 %130, label %131, label %88

131:                                              ; preds = %127
  %132 = getelementptr inbounds i8, ptr %83, i64 3
  %133 = load i8, ptr %132, align 1, !tbaa !5
  %134 = zext i8 %133 to i64
  %135 = getelementptr inbounds [256 x i8], ptr @_cpp_trigraph_map, i64 0, i64 %134
  %136 = load i8, ptr %135, align 1, !tbaa !5
  %137 = icmp eq i8 %136, 0
  br i1 %137, label %88, label %138

138:                                              ; preds = %131
  %139 = zext i8 %133 to i32
  tail call fastcc void @add_line_note(ptr noundef nonnull %2, ptr noundef nonnull %87, i32 noundef %139) #18
  %140 = load i8, ptr %15, align 1, !tbaa !41
  %141 = icmp eq i8 %140, 0
  br i1 %141, label %88, label %142

142:                                              ; preds = %138
  %143 = load i8, ptr %132, align 1, !tbaa !5
  %144 = zext i8 %143 to i64
  %145 = getelementptr inbounds [256 x i8], ptr @_cpp_trigraph_map, i64 0, i64 %144
  %146 = load i8, ptr %145, align 1, !tbaa !5
  store i8 %146, ptr %87, align 1, !tbaa !5
  br label %88

147:                                              ; preds = %1, %147
  %148 = phi ptr [ %149, %147 ], [ %9, %1 ]
  %149 = getelementptr inbounds i8, ptr %148, i64 1
  %150 = load i8, ptr %149, align 1, !tbaa !5
  switch i8 %150, label %147 [
    i8 13, label %151
    i8 10, label %160
  ]

151:                                              ; preds = %147
  %152 = getelementptr inbounds %struct.cpp_buffer, ptr %2, i64 0, i32 4
  %153 = load ptr, ptr %152, align 8, !tbaa !37
  %154 = icmp eq ptr %149, %153
  br i1 %154, label %160, label %155

155:                                              ; preds = %151
  %156 = getelementptr inbounds i8, ptr %148, i64 2
  %157 = load i8, ptr %156, align 1, !tbaa !5
  %158 = icmp eq i8 %157, 10
  %159 = select i1 %158, ptr %156, ptr %149
  br label %160

160:                                              ; preds = %147, %93, %120, %101, %107, %155, %23, %33, %35, %48, %151
  %161 = phi ptr [ %149, %151 ], [ %21, %23 ], [ %30, %33 ], [ %36, %35 ], [ %36, %48 ], [ %159, %155 ], [ %103, %107 ], [ %85, %93 ], [ %103, %120 ], [ %103, %101 ], [ %149, %147 ]
  %162 = phi ptr [ %149, %151 ], [ %21, %23 ], [ %21, %33 ], [ %21, %35 ], [ %21, %48 ], [ %149, %155 ], [ %87, %107 ], [ %87, %101 ], [ %87, %120 ], [ %87, %93 ], [ %149, %147 ]
  store i8 10, ptr %162, align 1, !tbaa !5
  %163 = getelementptr inbounds i8, ptr %162, i64 1
  tail call fastcc void @add_line_note(ptr noundef nonnull %2, ptr noundef nonnull %163, i32 noundef 10) #18
  %164 = getelementptr inbounds i8, ptr %161, i64 1
  store ptr %164, ptr %5, align 8, !tbaa !33
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @add_line_note(ptr nocapture noundef %0, ptr noundef %1, i32 noundef %2) unnamed_addr #2 {
  %4 = getelementptr inbounds %struct.cpp_buffer, ptr %0, i64 0, i32 7
  %5 = load i32, ptr %4, align 4, !tbaa !30
  %6 = getelementptr inbounds %struct.cpp_buffer, ptr %0, i64 0, i32 8
  %7 = load i32, ptr %6, align 8, !tbaa !43
  %8 = icmp eq i32 %5, %7
  br i1 %8, label %12, label %9

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct.cpp_buffer, ptr %0, i64 0, i32 5
  %11 = load ptr, ptr %10, align 8, !tbaa !44
  br label %21

12:                                               ; preds = %3
  %13 = shl i32 %5, 1
  %14 = add i32 %13, 200
  store i32 %14, ptr %6, align 8, !tbaa !43
  %15 = getelementptr inbounds %struct.cpp_buffer, ptr %0, i64 0, i32 5
  %16 = load ptr, ptr %15, align 8, !tbaa !44
  %17 = zext i32 %14 to i64
  %18 = shl nuw nsw i64 %17, 4
  %19 = tail call ptr @xrealloc(ptr noundef %16, i64 noundef %18) #20
  store ptr %19, ptr %15, align 8, !tbaa !44
  %20 = load i32, ptr %4, align 4, !tbaa !30
  br label %21

21:                                               ; preds = %9, %12
  %22 = phi i32 [ %5, %9 ], [ %20, %12 ]
  %23 = phi ptr [ %11, %9 ], [ %19, %12 ]
  %24 = zext i32 %22 to i64
  %25 = getelementptr inbounds %struct._cpp_line_note, ptr %23, i64 %24
  store ptr %1, ptr %25, align 8, !tbaa !45
  %26 = getelementptr inbounds %struct._cpp_line_note, ptr %23, i64 %24, i32 1
  store i32 %2, ptr %26, align 8, !tbaa !47
  %27 = add i32 %22, 1
  store i32 %27, ptr %4, align 4, !tbaa !30
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @_cpp_process_line_notes(ptr noundef %0, i32 noundef %1) local_unnamed_addr #2 {
  %3 = load ptr, ptr %0, align 8, !tbaa !13
  %4 = getelementptr inbounds %struct.cpp_buffer, ptr %3, i64 0, i32 5
  %5 = getelementptr inbounds %struct.cpp_buffer, ptr %3, i64 0, i32 6
  %6 = load ptr, ptr %4, align 8, !tbaa !44
  %7 = load i32, ptr %5, align 8, !tbaa !32
  %8 = zext i32 %7 to i64
  %9 = getelementptr inbounds %struct._cpp_line_note, ptr %6, i64 %8
  %10 = load ptr, ptr %9, align 8, !tbaa !45
  %11 = load ptr, ptr %3, align 8, !tbaa !35
  %12 = icmp ugt ptr %10, %11
  br i1 %12, label %111, label %13

13:                                               ; preds = %2
  %14 = getelementptr inbounds %struct.cpp_buffer, ptr %3, i64 0, i32 1
  %15 = icmp ne i32 %1, 0
  %16 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 3
  %17 = getelementptr inbounds %struct.cpp_buffer, ptr %3, i64 0, i32 2
  %18 = getelementptr inbounds %struct.cpp_buffer, ptr %3, i64 0, i32 4
  %19 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 53, i32 15
  %20 = icmp eq i32 %1, 0
  %21 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 53, i32 7
  br label %22

22:                                               ; preds = %13, %103
  %23 = phi ptr [ %10, %13 ], [ %108, %103 ]
  %24 = phi ptr [ %9, %13 ], [ %107, %103 ]
  %25 = phi i64 [ %8, %13 ], [ %106, %103 ]
  %26 = phi i32 [ %7, %13 ], [ %105, %103 ]
  %27 = phi ptr [ %6, %13 ], [ %104, %103 ]
  %28 = add i32 %26, 1
  store i32 %28, ptr %5, align 8, !tbaa !32
  %29 = getelementptr inbounds i8, ptr %23, i64 1
  %30 = load ptr, ptr %14, align 8, !tbaa !34
  %31 = ptrtoint ptr %29 to i64
  %32 = ptrtoint ptr %30 to i64
  %33 = sub i64 %31, %32
  %34 = trunc i64 %33 to i32
  %35 = getelementptr inbounds %struct._cpp_line_note, ptr %27, i64 %25, i32 1
  %36 = load i32, ptr %35, align 8, !tbaa !47
  switch i32 %36, label %77 [
    i32 92, label %37
    i32 32, label %37
  ]

37:                                               ; preds = %22, %22
  %38 = icmp ne i32 %36, 32
  %39 = or i1 %15, %38
  br i1 %39, label %45, label %40

40:                                               ; preds = %37
  %41 = load ptr, ptr %16, align 8, !tbaa !48
  %42 = getelementptr inbounds %struct.line_maps, ptr %41, i64 0, i32 8
  %43 = load i32, ptr %42, align 4, !tbaa !49
  %44 = tail call zeroext i8 (ptr, i32, i32, i32, ptr, ...) @cpp_error_with_line(ptr noundef nonnull %0, i32 noundef 0, i32 noundef %43, i32 noundef %34, ptr noundef nonnull @.str) #20
  br label %45

45:                                               ; preds = %40, %37
  %46 = load ptr, ptr %17, align 8, !tbaa !33
  %47 = load ptr, ptr %18, align 8, !tbaa !37
  %48 = icmp ugt ptr %46, %47
  br i1 %48, label %49, label %55

49:                                               ; preds = %45
  %50 = load ptr, ptr %16, align 8, !tbaa !48
  %51 = getelementptr inbounds %struct.line_maps, ptr %50, i64 0, i32 8
  %52 = load i32, ptr %51, align 4, !tbaa !49
  %53 = tail call zeroext i8 (ptr, i32, i32, i32, ptr, ...) @cpp_error_with_line(ptr noundef nonnull %0, i32 noundef 2, i32 noundef %52, i32 noundef %34, ptr noundef nonnull @.str.1) #20
  %54 = load ptr, ptr %18, align 8, !tbaa !37
  store ptr %54, ptr %17, align 8, !tbaa !33
  br label %55

55:                                               ; preds = %49, %45
  %56 = load ptr, ptr %24, align 8, !tbaa !45
  store ptr %56, ptr %14, align 8, !tbaa !34
  %57 = load ptr, ptr %16, align 8, !tbaa !48
  %58 = load ptr, ptr %57, align 8, !tbaa !51
  %59 = getelementptr inbounds %struct.line_maps, ptr %57, i64 0, i32 2
  %60 = load i32, ptr %59, align 4, !tbaa !52
  %61 = add i32 %60, -1
  %62 = zext i32 %61 to i64
  %63 = getelementptr inbounds %struct.line_maps, ptr %57, i64 0, i32 8
  %64 = load i32, ptr %63, align 4, !tbaa !49
  %65 = getelementptr inbounds %struct.line_map, ptr %58, i64 %62, i32 2
  %66 = load i32, ptr %65, align 4, !tbaa !53
  %67 = sub i32 %64, %66
  %68 = getelementptr inbounds %struct.line_map, ptr %58, i64 %62, i32 6
  %69 = load i8, ptr %68, align 2
  %70 = zext nneg i8 %69 to i32
  %71 = lshr i32 %67, %70
  %72 = getelementptr inbounds %struct.line_map, ptr %58, i64 %62, i32 1
  %73 = load i32, ptr %72, align 8, !tbaa !55
  %74 = add i32 %73, 1
  %75 = add i32 %74, %71
  %76 = tail call i32 @linemap_line_start(ptr noundef nonnull %57, i32 noundef %75, i32 noundef 0) #20
  br label %103

77:                                               ; preds = %22
  %78 = zext i32 %36 to i64
  %79 = getelementptr inbounds [256 x i8], ptr @_cpp_trigraph_map, i64 0, i64 %78
  %80 = load i8, ptr %79, align 1, !tbaa !5
  %81 = icmp eq i8 %80, 0
  br i1 %81, label %100, label %82

82:                                               ; preds = %77
  %83 = load i8, ptr %19, align 1, !tbaa !56
  %84 = icmp eq i8 %83, 0
  br i1 %84, label %103, label %85

85:                                               ; preds = %82
  br i1 %20, label %89, label %86

86:                                               ; preds = %85
  %87 = tail call fastcc zeroext i8 @warn_in_comment(ptr noundef nonnull %0, ptr noundef nonnull %24) #18, !range !57
  %88 = icmp eq i8 %87, 0
  br i1 %88, label %103, label %89

89:                                               ; preds = %86, %85
  %90 = load i8, ptr %21, align 1, !tbaa !41
  %91 = icmp eq i8 %90, 0
  %92 = load ptr, ptr %16, align 8, !tbaa !48
  %93 = getelementptr inbounds %struct.line_maps, ptr %92, i64 0, i32 8
  %94 = load i32, ptr %93, align 4, !tbaa !49
  br i1 %91, label %98, label %95

95:                                               ; preds = %89
  %96 = zext i8 %80 to i32
  %97 = tail call zeroext i8 (ptr, i32, i32, i32, ptr, ...) @cpp_error_with_line(ptr noundef nonnull %0, i32 noundef 0, i32 noundef %94, i32 noundef %34, ptr noundef nonnull @.str.2, i32 noundef %36, i32 noundef %96) #20
  br label %103

98:                                               ; preds = %89
  %99 = tail call zeroext i8 (ptr, i32, i32, i32, ptr, ...) @cpp_error_with_line(ptr noundef nonnull %0, i32 noundef 0, i32 noundef %94, i32 noundef %34, ptr noundef nonnull @.str.3, i32 noundef %36) #20
  br label %103

100:                                              ; preds = %77
  %101 = icmp eq i32 %36, 0
  br i1 %101, label %103, label %102

102:                                              ; preds = %100
  tail call void @abort() #21
  unreachable

103:                                              ; preds = %55, %100, %82, %86, %98, %95
  %104 = load ptr, ptr %4, align 8, !tbaa !44
  %105 = load i32, ptr %5, align 8, !tbaa !32
  %106 = zext i32 %105 to i64
  %107 = getelementptr inbounds %struct._cpp_line_note, ptr %104, i64 %106
  %108 = load ptr, ptr %107, align 8, !tbaa !45
  %109 = load ptr, ptr %3, align 8, !tbaa !35
  %110 = icmp ugt ptr %108, %109
  br i1 %110, label %111, label %22

111:                                              ; preds = %103, %2
  ret void
}

; Function Attrs: optsize
declare zeroext i8 @cpp_error_with_line(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: optsize
declare i32 @linemap_line_start(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable
define internal fastcc zeroext i8 @warn_in_comment(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) unnamed_addr #5 {
  %3 = getelementptr inbounds %struct._cpp_line_note, ptr %1, i64 0, i32 1
  %4 = load i32, ptr %3, align 8, !tbaa !47
  %5 = icmp eq i32 %4, 47
  br i1 %5, label %6, label %33

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 53, i32 7
  %8 = load i8, ptr %7, align 1, !tbaa !41
  %9 = icmp eq i8 %8, 0
  br i1 %9, label %15, label %10

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct._cpp_line_note, ptr %1, i64 1
  %12 = load ptr, ptr %11, align 8, !tbaa !45
  %13 = load ptr, ptr %1, align 8, !tbaa !45
  %14 = icmp eq ptr %12, %13
  br label %33

15:                                               ; preds = %6
  %16 = load ptr, ptr %1, align 8, !tbaa !45
  %17 = getelementptr inbounds i8, ptr %16, i64 3
  br label %18

18:                                               ; preds = %18, %15
  %19 = phi ptr [ %17, %15 ], [ %26, %18 ]
  %20 = load i8, ptr %19, align 1, !tbaa !5
  %21 = zext i8 %20 to i64
  %22 = getelementptr inbounds [256 x i16], ptr @_sch_istable, i64 0, i64 %21
  %23 = load i16, ptr %22, align 2, !tbaa !38
  %24 = and i16 %23, 2048
  %25 = icmp eq i16 %24, 0
  %26 = getelementptr inbounds i8, ptr %19, i64 1
  br i1 %25, label %27, label %18, !llvm.loop !58

27:                                               ; preds = %18
  %28 = icmp eq i8 %20, 10
  br i1 %28, label %29, label %33

29:                                               ; preds = %27
  %30 = getelementptr inbounds %struct._cpp_line_note, ptr %1, i64 1
  %31 = load ptr, ptr %30, align 8, !tbaa !45
  %32 = icmp ult ptr %19, %31
  br label %33

33:                                               ; preds = %27, %29, %2, %10
  %34 = phi i1 [ %14, %10 ], [ false, %2 ], [ false, %27 ], [ %32, %29 ]
  %35 = zext i1 %34 to i8
  ret i8 %35
}

; Function Attrs: noreturn nounwind optsize
declare void @abort() local_unnamed_addr #6

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef zeroext i8 @_cpp_skip_block_comment(ptr noundef %0) local_unnamed_addr #2 {
  %2 = load ptr, ptr %0, align 8, !tbaa !13
  %3 = load ptr, ptr %2, align 8, !tbaa !35
  %4 = getelementptr inbounds i8, ptr %3, i64 1
  %5 = load i8, ptr %4, align 1, !tbaa !5
  %6 = icmp eq i8 %5, 47
  %7 = getelementptr inbounds i8, ptr %3, i64 2
  %8 = select i1 %6, ptr %7, ptr %4
  %9 = getelementptr inbounds %struct.cpp_buffer, ptr %2, i64 0, i32 2
  %10 = getelementptr inbounds %struct.cpp_buffer, ptr %2, i64 0, i32 4
  %11 = getelementptr inbounds %struct.cpp_buffer, ptr %2, i64 0, i32 1
  %12 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 3
  %13 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 53, i32 13
  br label %14

14:                                               ; preds = %74, %1
  %15 = phi ptr [ %8, %1 ], [ %75, %74 ]
  %16 = getelementptr inbounds i8, ptr %15, i64 1
  %17 = load i8, ptr %15, align 1, !tbaa !5
  switch i8 %17, label %74 [
    i8 47, label %18
    i8 10, label %42
  ]

18:                                               ; preds = %14
  %19 = getelementptr inbounds i8, ptr %15, i64 -1
  %20 = load i8, ptr %19, align 1, !tbaa !5
  %21 = icmp eq i8 %20, 42
  br i1 %21, label %76, label %22

22:                                               ; preds = %18
  %23 = load i8, ptr %13, align 1, !tbaa !59
  %24 = icmp eq i8 %23, 0
  br i1 %24, label %74, label %25

25:                                               ; preds = %22
  %26 = load i8, ptr %16, align 1, !tbaa !5
  %27 = icmp eq i8 %26, 42
  br i1 %27, label %28, label %74

28:                                               ; preds = %25
  %29 = getelementptr inbounds i8, ptr %15, i64 2
  %30 = load i8, ptr %29, align 1, !tbaa !5
  %31 = icmp eq i8 %30, 47
  br i1 %31, label %74, label %32

32:                                               ; preds = %28
  store ptr %16, ptr %2, align 8, !tbaa !35
  %33 = load ptr, ptr %12, align 8, !tbaa !48
  %34 = getelementptr inbounds %struct.line_maps, ptr %33, i64 0, i32 8
  %35 = load i32, ptr %34, align 4, !tbaa !49
  %36 = load ptr, ptr %11, align 8, !tbaa !34
  %37 = ptrtoint ptr %16 to i64
  %38 = ptrtoint ptr %36 to i64
  %39 = sub i64 %37, %38
  %40 = trunc i64 %39 to i32
  %41 = tail call zeroext i8 (ptr, i32, i32, i32, ptr, ...) @cpp_error_with_line(ptr noundef nonnull %0, i32 noundef 0, i32 noundef %35, i32 noundef %40, ptr noundef nonnull @.str.4) #20
  br label %74

42:                                               ; preds = %14
  store ptr %15, ptr %2, align 8, !tbaa !35
  tail call void @_cpp_process_line_notes(ptr noundef nonnull %0, i32 noundef 1) #18
  %43 = load ptr, ptr %9, align 8, !tbaa !33
  %44 = load ptr, ptr %10, align 8, !tbaa !37
  %45 = icmp ult ptr %43, %44
  br i1 %45, label %46, label %77

46:                                               ; preds = %42
  tail call void @_cpp_clean_line(ptr noundef nonnull %0) #18
  %47 = load ptr, ptr %9, align 8, !tbaa !33
  %48 = load ptr, ptr %11, align 8, !tbaa !34
  %49 = ptrtoint ptr %47 to i64
  %50 = ptrtoint ptr %48 to i64
  %51 = sub i64 %49, %50
  %52 = trunc i64 %51 to i32
  %53 = load ptr, ptr %12, align 8, !tbaa !48
  %54 = load ptr, ptr %53, align 8, !tbaa !51
  %55 = getelementptr inbounds %struct.line_maps, ptr %53, i64 0, i32 2
  %56 = load i32, ptr %55, align 4, !tbaa !52
  %57 = add i32 %56, -1
  %58 = zext i32 %57 to i64
  %59 = getelementptr inbounds %struct.line_maps, ptr %53, i64 0, i32 8
  %60 = load i32, ptr %59, align 4, !tbaa !49
  %61 = getelementptr inbounds %struct.line_map, ptr %54, i64 %58, i32 2
  %62 = load i32, ptr %61, align 4, !tbaa !53
  %63 = sub i32 %60, %62
  %64 = getelementptr inbounds %struct.line_map, ptr %54, i64 %58, i32 6
  %65 = load i8, ptr %64, align 2
  %66 = zext nneg i8 %65 to i32
  %67 = lshr i32 %63, %66
  %68 = getelementptr inbounds %struct.line_map, ptr %54, i64 %58, i32 1
  %69 = load i32, ptr %68, align 8, !tbaa !55
  %70 = add i32 %69, 1
  %71 = add i32 %70, %67
  %72 = tail call i32 @linemap_line_start(ptr noundef nonnull %53, i32 noundef %71, i32 noundef %52) #20
  %73 = load ptr, ptr %2, align 8, !tbaa !35
  br label %74

74:                                               ; preds = %46, %14, %22, %25, %28, %32
  %75 = phi ptr [ %16, %32 ], [ %16, %28 ], [ %16, %25 ], [ %16, %22 ], [ %16, %14 ], [ %73, %46 ]
  br label %14

76:                                               ; preds = %18
  store ptr %16, ptr %2, align 8, !tbaa !35
  tail call void @_cpp_process_line_notes(ptr noundef nonnull %0, i32 noundef 1) #18
  br label %77

77:                                               ; preds = %42, %76
  %78 = phi i8 [ 0, %76 ], [ 1, %42 ]
  ret i8 %78
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @_cpp_lex_identifier(ptr noundef %0, ptr noundef %1) local_unnamed_addr #2 {
  %3 = tail call fastcc ptr @lex_identifier_intern(ptr noundef %0, ptr noundef %1) #18
  ret ptr %3
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @lex_identifier_intern(ptr noundef %0, ptr noundef %1) unnamed_addr #2 {
  %3 = load i8, ptr %1, align 1, !tbaa !5
  %4 = zext i8 %3 to i32
  %5 = add nsw i32 %4, -113
  %6 = getelementptr inbounds i8, ptr %1, i64 1
  %7 = load i8, ptr %6, align 1, !tbaa !5
  %8 = zext i8 %7 to i64
  %9 = getelementptr inbounds [256 x i16], ptr @_sch_istable, i64 0, i64 %8
  %10 = load i16, ptr %9, align 2, !tbaa !38
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
  %22 = load i8, ptr %21, align 1, !tbaa !5
  %23 = zext i8 %22 to i64
  %24 = getelementptr inbounds [256 x i16], ptr @_sch_istable, i64 0, i64 %23
  %25 = load i16, ptr %24, align 2, !tbaa !38
  %26 = and i16 %25, 516
  %27 = icmp eq i16 %26, 0
  br i1 %27, label %28, label %13, !llvm.loop !60

28:                                               ; preds = %13, %2
  %29 = phi i32 [ %5, %2 ], [ %20, %13 ]
  %30 = phi ptr [ %6, %2 ], [ %21, %13 ]
  %31 = ptrtoint ptr %30 to i64
  %32 = ptrtoint ptr %1 to i64
  %33 = sub i64 %31, %32
  %34 = trunc i64 %33 to i32
  %35 = add i32 %29, %34
  %36 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 50
  %37 = load ptr, ptr %36, align 8, !tbaa !61
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
  %48 = load i8, ptr %47, align 2, !tbaa !62
  %49 = icmp eq i8 %48, 0
  br i1 %49, label %50, label %76

50:                                               ; preds = %46
  %51 = and i32 %43, 2
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %60, label %53

53:                                               ; preds = %50
  %54 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 2, i32 7
  %55 = load i8, ptr %54, align 1, !tbaa !63
  %56 = icmp eq i8 %55, 0
  br i1 %56, label %57, label %60

57:                                               ; preds = %53
  %58 = load ptr, ptr %39, align 8, !tbaa !8
  %59 = tail call zeroext i8 (ptr, i32, ptr, ...) @cpp_error(ptr noundef nonnull %0, i32 noundef 3, ptr noundef nonnull @.str.11, ptr noundef %58) #20
  br label %60

60:                                               ; preds = %57, %53, %50
  %61 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 54, i32 3
  %62 = load ptr, ptr %61, align 8, !tbaa !64
  %63 = icmp eq ptr %39, %62
  br i1 %63, label %64, label %70

64:                                               ; preds = %60
  %65 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 2, i32 6
  %66 = load i8, ptr %65, align 2, !tbaa !65
  %67 = icmp eq i8 %66, 0
  br i1 %67, label %68, label %70

68:                                               ; preds = %64
  %69 = tail call zeroext i8 (ptr, i32, ptr, ...) @cpp_error(ptr noundef nonnull %0, i32 noundef 2, ptr noundef nonnull @.str.12) #20
  br label %70

70:                                               ; preds = %68, %64, %60
  %71 = load i16, ptr %40, align 2
  %72 = icmp sgt i16 %71, -1
  br i1 %72, label %76, label %73

73:                                               ; preds = %70
  %74 = load ptr, ptr %39, align 8, !tbaa !8
  %75 = tail call zeroext i8 (ptr, i32, ptr, ...) @cpp_error(ptr noundef nonnull %0, i32 noundef 0, ptr noundef nonnull @.str.13, ptr noundef %74) #20
  br label %76

76:                                               ; preds = %70, %73, %46, %28
  ret ptr %39
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local nonnull ptr @cpp_get_comments(ptr noundef readnone %0) local_unnamed_addr #7 {
  %2 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 62
  ret ptr %2
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @_cpp_init_tokenrun(ptr nocapture noundef writeonly %0, i32 noundef %1) local_unnamed_addr #2 {
  %3 = zext i32 %1 to i64
  %4 = mul nuw nsw i64 %3, 24
  %5 = tail call ptr @xmalloc(i64 noundef %4) #20
  %6 = getelementptr inbounds %struct.tokenrun, ptr %0, i64 0, i32 2
  store ptr %5, ptr %6, align 8, !tbaa !66
  %7 = getelementptr inbounds %struct.cpp_token, ptr %5, i64 %3
  %8 = getelementptr inbounds %struct.tokenrun, ptr %0, i64 0, i32 3
  store ptr %7, ptr %8, align 8, !tbaa !67
  store ptr null, ptr %0, align 8, !tbaa !68
  ret void
}

; Function Attrs: optsize
declare ptr @xmalloc(i64 noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @cpp_peek_token(ptr noundef %0, i32 noundef %1) local_unnamed_addr #2 {
  %3 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 9
  %4 = load ptr, ptr %3, align 8, !tbaa !69
  %5 = getelementptr inbounds %struct.cpp_context, ptr %4, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !70
  %7 = icmp eq ptr %6, null
  br i1 %7, label %43, label %8

8:                                                ; preds = %2, %37
  %9 = phi ptr [ %41, %37 ], [ %6, %2 ]
  %10 = phi i32 [ %39, %37 ], [ %1, %2 ]
  %11 = phi ptr [ %9, %37 ], [ %4, %2 ]
  %12 = getelementptr inbounds %struct.cpp_context, ptr %11, i64 0, i32 5
  %13 = load i8, ptr %12, align 8, !tbaa !71
  %14 = icmp eq i8 %13, 0
  %15 = getelementptr inbounds %struct.cpp_context, ptr %11, i64 0, i32 2
  %16 = getelementptr inbounds %struct.cpp_context, ptr %11, i64 0, i32 2, i32 0, i32 1
  %17 = load ptr, ptr %16, align 8, !tbaa !5
  %18 = load ptr, ptr %15, align 8, !tbaa !5
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
  %36 = load ptr, ptr %35, align 8, !tbaa !72
  br label %61

37:                                               ; preds = %22, %26
  %38 = phi i32 [ %28, %26 ], [ %24, %22 ]
  %39 = sub nsw i32 %10, %38
  %40 = getelementptr inbounds %struct.cpp_context, ptr %9, i64 0, i32 1
  %41 = load ptr, ptr %40, align 8, !tbaa !70
  %42 = icmp eq ptr %41, null
  br i1 %42, label %43, label %8

43:                                               ; preds = %37, %2
  %44 = phi i32 [ %1, %2 ], [ %39, %37 ]
  %45 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 33
  %46 = load i32, ptr %45, align 4, !tbaa !73
  %47 = add i32 %46, 1
  store i32 %47, ptr %45, align 4, !tbaa !73
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
  br i1 %56, label %57, label %48, !llvm.loop !74

57:                                               ; preds = %54
  %58 = add nsw i32 %44, 1
  tail call void @_cpp_backup_tokens_direct(ptr noundef %0, i32 noundef %58) #20
  %59 = load i32, ptr %45, align 4, !tbaa !73
  %60 = add i32 %59, -1
  store i32 %60, ptr %45, align 4, !tbaa !73
  br label %61

61:                                               ; preds = %48, %30, %33, %57
  %62 = phi ptr [ %50, %57 ], [ %36, %33 ], [ %32, %30 ], [ %50, %48 ]
  ret ptr %62
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @_cpp_lex_token(ptr noundef %0) local_unnamed_addr #2 {
  %2 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 29
  %3 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 31
  %4 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 32
  %5 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 2, i32 9
  %6 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 11, i32 1
  %7 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 11
  %8 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 2, i32 12
  %9 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 49
  %10 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 2, i32 2
  %11 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 2
  %12 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 28
  br label %13

13:                                               ; preds = %63, %1
  %14 = load ptr, ptr %2, align 8, !tbaa !75
  %15 = load ptr, ptr %3, align 8, !tbaa !76
  %16 = getelementptr inbounds %struct.tokenrun, ptr %15, i64 0, i32 3
  %17 = load ptr, ptr %16, align 8, !tbaa !67
  %18 = icmp eq ptr %14, %17
  br i1 %18, label %19, label %23

19:                                               ; preds = %13
  %20 = tail call fastcc ptr @next_tokenrun(ptr noundef nonnull %15) #18
  store ptr %20, ptr %3, align 8, !tbaa !76
  %21 = getelementptr inbounds %struct.tokenrun, ptr %20, i64 0, i32 2
  %22 = load ptr, ptr %21, align 8, !tbaa !66
  store ptr %22, ptr %2, align 8, !tbaa !75
  br label %27

23:                                               ; preds = %13
  %24 = getelementptr inbounds %struct.tokenrun, ptr %15, i64 0, i32 2
  %25 = load ptr, ptr %24, align 8, !tbaa !66
  %26 = icmp ult ptr %14, %25
  br i1 %26, label %33, label %27

27:                                               ; preds = %19, %23
  %28 = phi ptr [ %22, %19 ], [ %14, %23 ]
  %29 = phi ptr [ %20, %19 ], [ %15, %23 ]
  %30 = getelementptr inbounds %struct.tokenrun, ptr %29, i64 0, i32 3
  %31 = load ptr, ptr %30, align 8, !tbaa !67
  %32 = icmp ult ptr %28, %31
  br i1 %32, label %34, label %33

33:                                               ; preds = %27, %23
  tail call void @abort() #21
  unreachable

34:                                               ; preds = %27
  %35 = load i32, ptr %4, align 8, !tbaa !77
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %40, label %37

37:                                               ; preds = %34
  %38 = add i32 %35, -1
  store i32 %38, ptr %4, align 8, !tbaa !77
  %39 = getelementptr inbounds %struct.cpp_token, ptr %28, i64 1
  store ptr %39, ptr %2, align 8, !tbaa !75
  br label %42

40:                                               ; preds = %34
  %41 = tail call ptr @_cpp_lex_direct(ptr noundef nonnull %0) #18
  br label %42

42:                                               ; preds = %40, %37
  %43 = phi ptr [ %28, %37 ], [ %41, %40 ]
  %44 = getelementptr inbounds %struct.cpp_token, ptr %43, i64 0, i32 2
  %45 = load i16, ptr %44, align 2, !tbaa !78
  %46 = zext i16 %45 to i32
  %47 = and i32 %46, 64
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %78, label %49

49:                                               ; preds = %42
  %50 = getelementptr inbounds %struct.cpp_token, ptr %43, i64 0, i32 1
  %51 = load i8, ptr %50, align 4
  %52 = icmp eq i8 %51, 37
  br i1 %52, label %53, label %64

53:                                               ; preds = %49
  %54 = load i8, ptr %5, align 1, !tbaa !79
  %55 = icmp eq i8 %54, 1
  br i1 %55, label %64, label %56

56:                                               ; preds = %53
  %57 = and i32 %46, 1
  %58 = tail call i32 @_cpp_handle_directive(ptr noundef nonnull %0, i32 noundef %57) #20
  %59 = icmp eq i32 %58, 0
  br i1 %59, label %68, label %60

60:                                               ; preds = %56
  %61 = load i8, ptr %6, align 4
  %62 = icmp eq i8 %61, 72
  br i1 %62, label %63, label %68

63:                                               ; preds = %60, %88
  br label %13

64:                                               ; preds = %53, %49
  %65 = load i8, ptr %8, align 8, !tbaa !80
  %66 = icmp eq i8 %65, 0
  %67 = select i1 %66, ptr %43, ptr %7
  br label %68

68:                                               ; preds = %60, %64, %56
  %69 = phi ptr [ %43, %56 ], [ %67, %64 ], [ %7, %60 ]
  %70 = load ptr, ptr %9, align 8, !tbaa !81
  %71 = icmp eq ptr %70, null
  br i1 %71, label %78, label %72

72:                                               ; preds = %68
  %73 = load i8, ptr %10, align 2, !tbaa !62
  %74 = icmp eq i8 %73, 0
  br i1 %74, label %75, label %78

75:                                               ; preds = %72
  %76 = load i8, ptr %5, align 1, !tbaa !79
  %77 = zext i8 %76 to i32
  tail call void %70(ptr noundef nonnull %0, ptr noundef nonnull %69, i32 noundef %77) #20
  br label %78

78:                                               ; preds = %68, %72, %75, %42
  %79 = phi ptr [ %69, %72 ], [ %69, %75 ], [ %69, %68 ], [ %43, %42 ]
  %80 = load i8, ptr %11, align 8, !tbaa !82
  %81 = icmp eq i8 %80, 0
  br i1 %81, label %82, label %92

82:                                               ; preds = %78
  %83 = load i8, ptr %8, align 8, !tbaa !80
  %84 = icmp eq i8 %83, 0
  br i1 %84, label %85, label %92

85:                                               ; preds = %82
  store i8 0, ptr %12, align 8, !tbaa !83
  %86 = load i8, ptr %10, align 2, !tbaa !62
  %87 = icmp eq i8 %86, 0
  br i1 %87, label %92, label %88

88:                                               ; preds = %85
  %89 = getelementptr inbounds %struct.cpp_token, ptr %79, i64 0, i32 1
  %90 = load i8, ptr %89, align 4
  %91 = icmp eq i8 %90, 22
  br i1 %91, label %92, label %63

92:                                               ; preds = %85, %88, %78, %82
  ret ptr %79
}

; Function Attrs: optsize
declare void @_cpp_backup_tokens_direct(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef ptr @_cpp_temp_token(ptr nocapture noundef %0) local_unnamed_addr #2 {
  %2 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 31
  %3 = load ptr, ptr %2, align 8, !tbaa !76
  %4 = getelementptr inbounds %struct.tokenrun, ptr %3, i64 0, i32 3
  %5 = load ptr, ptr %4, align 8, !tbaa !67
  %6 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 29
  %7 = load ptr, ptr %6, align 8, !tbaa !75
  %8 = ptrtoint ptr %5 to i64
  %9 = ptrtoint ptr %7 to i64
  %10 = sub i64 %8, %9
  %11 = sdiv exact i64 %10, 24
  %12 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 32
  %13 = load i32, ptr %12, align 8, !tbaa !77
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
  %23 = load ptr, ptr %22, align 8, !tbaa !66
  %24 = getelementptr inbounds %struct.cpp_token, ptr %23, i64 1
  %25 = sub nsw i64 %14, %11
  %26 = mul i64 %25, 24
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %24, ptr align 8 %23, i64 %26, i1 false)
  br label %27

27:                                               ; preds = %21, %18
  %28 = getelementptr inbounds %struct.tokenrun, ptr %19, i64 0, i32 2
  %29 = load ptr, ptr %28, align 8, !tbaa !66
  %30 = load ptr, ptr %2, align 8, !tbaa !76
  %31 = getelementptr inbounds %struct.tokenrun, ptr %30, i64 0, i32 3
  %32 = load ptr, ptr %31, align 8, !tbaa !67
  %33 = getelementptr inbounds %struct.cpp_token, ptr %32, i64 -1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %29, ptr noundef nonnull align 8 dereferenceable(24) %33, i64 24, i1 false), !tbaa.struct !84
  %34 = load ptr, ptr %6, align 8, !tbaa !75
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
  %43 = load ptr, ptr %6, align 8, !tbaa !75
  br label %44

44:                                               ; preds = %35, %38, %1
  %45 = phi ptr [ %36, %35 ], [ %43, %38 ], [ %7, %1 ]
  %46 = icmp eq ptr %5, %7
  br i1 %46, label %47, label %56

47:                                               ; preds = %44
  %48 = load ptr, ptr %2, align 8, !tbaa !76
  %49 = getelementptr inbounds %struct.tokenrun, ptr %48, i64 0, i32 3
  %50 = load ptr, ptr %49, align 8, !tbaa !67
  %51 = icmp eq ptr %45, %50
  br i1 %51, label %52, label %56

52:                                               ; preds = %47
  %53 = tail call fastcc ptr @next_tokenrun(ptr noundef nonnull %48) #18
  store ptr %53, ptr %2, align 8, !tbaa !76
  %54 = getelementptr inbounds %struct.tokenrun, ptr %53, i64 0, i32 2
  %55 = load ptr, ptr %54, align 8, !tbaa !66
  br label %56

56:                                               ; preds = %52, %47, %44
  %57 = phi ptr [ %55, %52 ], [ %45, %47 ], [ %45, %44 ]
  %58 = getelementptr inbounds %struct.cpp_token, ptr %7, i64 -1
  %59 = getelementptr inbounds %struct.cpp_token, ptr %57, i64 1
  store ptr %59, ptr %6, align 8, !tbaa !75
  %60 = load i32, ptr %58, align 8, !tbaa !86
  store i32 %60, ptr %57, align 8, !tbaa !86
  ret ptr %57
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @next_tokenrun(ptr noundef %0) unnamed_addr #2 {
  %2 = load ptr, ptr %0, align 8, !tbaa !68
  %3 = icmp eq ptr %2, null
  br i1 %3, label %4, label %8

4:                                                ; preds = %1
  %5 = tail call ptr @xmalloc(i64 noundef 32) #20
  store ptr %5, ptr %0, align 8, !tbaa !68
  %6 = getelementptr inbounds %struct.tokenrun, ptr %5, i64 0, i32 1
  store ptr %0, ptr %6, align 8, !tbaa !87
  tail call void @_cpp_init_tokenrun(ptr noundef %5, i32 noundef 250) #18
  %7 = load ptr, ptr %0, align 8, !tbaa !68
  br label %8

8:                                                ; preds = %4, %1
  %9 = phi ptr [ %7, %4 ], [ %2, %1 ]
  ret ptr %9
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr nocapture writeonly, ptr nocapture readonly, i64, i1 immarg) #8

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #8

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @_cpp_lex_direct(ptr noundef %0) local_unnamed_addr #2 {
  %2 = alloca %struct.normalize_state, align 4
  %3 = alloca %struct.normalize_state, align 4
  %4 = alloca %struct.normalize_state, align 4
  %5 = alloca %struct.normalize_state, align 4
  %6 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 29
  %7 = load ptr, ptr %6, align 8, !tbaa !75
  %8 = getelementptr inbounds %struct.cpp_token, ptr %7, i64 1
  store ptr %8, ptr %6, align 8, !tbaa !75
  %9 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 2, i32 12
  %10 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 33
  %11 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 30
  %12 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 31
  %13 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 30, i32 2
  %14 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 2, i32 9
  %15 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 3
  %16 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 1
  %17 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 53, i32 3
  %18 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 53, i32 1
  %19 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 53, i32 31
  %20 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 53, i32 13
  %21 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 2, i32 5
  br label %22

22:                                               ; preds = %150, %1
  %23 = phi ptr [ %7, %1 ], [ %69, %150 ]
  %24 = getelementptr inbounds %struct.cpp_token, ptr %23, i64 0, i32 2
  store i16 0, ptr %24, align 2, !tbaa !78
  %25 = load ptr, ptr %0, align 8, !tbaa !13
  %26 = getelementptr inbounds %struct.cpp_buffer, ptr %25, i64 0, i32 13
  %27 = load i8, ptr %26, align 8, !tbaa !36
  %28 = icmp eq i8 %27, 0
  br i1 %28, label %67, label %29

29:                                               ; preds = %22
  %30 = load i8, ptr %9, align 8, !tbaa !80
  %31 = icmp eq i8 %30, 0
  br i1 %31, label %41, label %32

32:                                               ; preds = %29
  %33 = getelementptr inbounds %struct.cpp_token, ptr %23, i64 0, i32 1
  store i8 71, ptr %33, align 4
  store i8 0, ptr %9, align 8, !tbaa !80
  %34 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 2, i32 13
  %35 = load i8, ptr %34, align 1, !tbaa !88
  %36 = icmp eq i8 %35, 0
  br i1 %36, label %37, label %503

37:                                               ; preds = %32
  %38 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 2, i32 8
  %39 = load i8, ptr %38, align 8, !tbaa !89
  %40 = add i8 %39, -1
  store i8 %40, ptr %38, align 8, !tbaa !89
  br label %503

41:                                               ; preds = %29
  %42 = tail call zeroext i8 @_cpp_get_fresh_line(ptr noundef nonnull %0) #18
  %43 = icmp eq i8 %42, 0
  br i1 %43, label %44, label %54

44:                                               ; preds = %41
  %45 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 2
  %46 = getelementptr inbounds %struct.cpp_token, ptr %23, i64 0, i32 1
  store i8 22, ptr %46, align 4
  %47 = load i8, ptr %45, align 8, !tbaa !82
  %48 = icmp eq i8 %47, 0
  br i1 %48, label %49, label %503

49:                                               ; preds = %44
  %50 = getelementptr inbounds %struct.cpp_token, ptr %23, i64 0, i32 2
  %51 = load ptr, ptr %15, align 8, !tbaa !48
  %52 = getelementptr inbounds %struct.line_maps, ptr %51, i64 0, i32 8
  %53 = load i32, ptr %52, align 4, !tbaa !49
  store i32 %53, ptr %23, align 8, !tbaa !86
  store i16 64, ptr %50, align 2, !tbaa !78
  br label %503

54:                                               ; preds = %41
  %55 = load i32, ptr %10, align 4, !tbaa !73
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %57, label %60

57:                                               ; preds = %54
  store ptr %11, ptr %12, align 8, !tbaa !76
  %58 = load ptr, ptr %13, align 8, !tbaa !90
  %59 = getelementptr inbounds %struct.cpp_token, ptr %58, i64 1
  store ptr %59, ptr %6, align 8, !tbaa !75
  br label %60

60:                                               ; preds = %57, %54
  %61 = phi ptr [ %23, %54 ], [ %58, %57 ]
  %62 = getelementptr inbounds %struct.cpp_token, ptr %61, i64 0, i32 2
  %63 = load i8, ptr %14, align 1, !tbaa !79
  %64 = icmp eq i8 %63, 2
  %65 = select i1 %64, i16 65, i16 64
  store i16 %65, ptr %62, align 2
  %66 = load ptr, ptr %0, align 8, !tbaa !13
  br label %67

67:                                               ; preds = %60, %22
  %68 = phi ptr [ %25, %22 ], [ %66, %60 ]
  %69 = phi ptr [ %23, %22 ], [ %61, %60 ]
  %70 = getelementptr inbounds %struct.cpp_buffer, ptr %68, i64 0, i32 5
  %71 = getelementptr inbounds %struct.cpp_buffer, ptr %68, i64 0, i32 6
  %72 = getelementptr inbounds %struct.cpp_buffer, ptr %68, i64 0, i32 1
  %73 = getelementptr inbounds %struct.cpp_token, ptr %69, i64 0, i32 2
  %74 = getelementptr inbounds %struct.cpp_buffer, ptr %68, i64 0, i32 14
  br label %75

75:                                               ; preds = %258, %67
  %76 = load ptr, ptr %15, align 8, !tbaa !48
  %77 = getelementptr inbounds %struct.line_maps, ptr %76, i64 0, i32 8
  %78 = load i32, ptr %77, align 4, !tbaa !49
  store i32 %78, ptr %69, align 8, !tbaa !86
  br label %79

79:                                               ; preds = %121, %75
  %80 = load ptr, ptr %68, align 8, !tbaa !35
  %81 = load ptr, ptr %70, align 8, !tbaa !44
  %82 = load i32, ptr %71, align 8, !tbaa !32
  %83 = zext i32 %82 to i64
  %84 = getelementptr inbounds %struct._cpp_line_note, ptr %81, i64 %83
  %85 = load ptr, ptr %84, align 8, !tbaa !45
  %86 = icmp ult ptr %80, %85
  br i1 %86, label %95, label %87

87:                                               ; preds = %79
  %88 = load ptr, ptr %16, align 8, !tbaa !91
  %89 = icmp eq ptr %88, null
  br i1 %89, label %90, label %95

90:                                               ; preds = %87
  tail call void @_cpp_process_line_notes(ptr noundef nonnull %0, i32 noundef 0) #18
  %91 = load ptr, ptr %15, align 8, !tbaa !48
  %92 = getelementptr inbounds %struct.line_maps, ptr %91, i64 0, i32 8
  %93 = load i32, ptr %92, align 4, !tbaa !49
  store i32 %93, ptr %69, align 8, !tbaa !86
  %94 = load ptr, ptr %68, align 8, !tbaa !35
  br label %95

95:                                               ; preds = %90, %87, %79
  %96 = phi ptr [ %94, %90 ], [ %80, %87 ], [ %80, %79 ]
  %97 = getelementptr inbounds i8, ptr %96, i64 1
  store ptr %97, ptr %68, align 8, !tbaa !35
  %98 = load i8, ptr %96, align 1, !tbaa !5
  %99 = zext i8 %98 to i32
  %100 = load ptr, ptr %72, align 8, !tbaa !34
  %101 = ptrtoint ptr %97 to i64
  %102 = ptrtoint ptr %100 to i64
  %103 = sub i64 %101, %102
  %104 = trunc i64 %103 to i32
  %105 = load ptr, ptr %15, align 8, !tbaa !48
  %106 = getelementptr inbounds %struct.line_maps, ptr %105, i64 0, i32 9
  %107 = load i32, ptr %106, align 8, !tbaa !92
  %108 = icmp ugt i32 %107, %104
  br i1 %108, label %111, label %109

109:                                              ; preds = %95
  %110 = tail call i32 @linemap_position_for_column(ptr noundef nonnull %105, i32 noundef %104) #20
  br label %119

111:                                              ; preds = %95
  %112 = getelementptr inbounds %struct.line_maps, ptr %105, i64 0, i32 8
  %113 = load i32, ptr %112, align 4, !tbaa !49
  %114 = add i32 %113, %104
  %115 = getelementptr inbounds %struct.line_maps, ptr %105, i64 0, i32 7
  %116 = load i32, ptr %115, align 8, !tbaa !93
  %117 = icmp ult i32 %114, %116
  br i1 %117, label %119, label %118

118:                                              ; preds = %111
  store i32 %114, ptr %115, align 8, !tbaa !93
  br label %119

119:                                              ; preds = %111, %118, %109
  %120 = phi i32 [ %110, %109 ], [ %114, %118 ], [ %114, %111 ]
  store i32 %120, ptr %69, align 8, !tbaa !86
  switch i8 %98, label %498 [
    i8 32, label %121
    i8 9, label %121
    i8 12, label %121
    i8 11, label %121
    i8 0, label %121
    i8 10, label %124
    i8 48, label %152
    i8 49, label %152
    i8 50, label %152
    i8 51, label %152
    i8 52, label %152
    i8 53, label %152
    i8 54, label %152
    i8 55, label %152
    i8 56, label %152
    i8 57, label %152
    i8 76, label %155
    i8 117, label %155
    i8 85, label %155
    i8 82, label %155
    i8 95, label %193
    i8 97, label %193
    i8 98, label %193
    i8 99, label %193
    i8 100, label %193
    i8 101, label %193
    i8 102, label %193
    i8 103, label %193
    i8 104, label %193
    i8 105, label %193
    i8 106, label %193
    i8 107, label %193
    i8 108, label %193
    i8 109, label %193
    i8 110, label %193
    i8 111, label %193
    i8 112, label %193
    i8 113, label %193
    i8 114, label %193
    i8 115, label %193
    i8 116, label %193
    i8 118, label %193
    i8 119, label %193
    i8 120, label %193
    i8 121, label %193
    i8 122, label %193
    i8 65, label %193
    i8 66, label %193
    i8 67, label %193
    i8 68, label %193
    i8 69, label %193
    i8 70, label %193
    i8 71, label %193
    i8 72, label %193
    i8 73, label %193
    i8 74, label %193
    i8 75, label %193
    i8 77, label %193
    i8 78, label %193
    i8 79, label %193
    i8 80, label %193
    i8 81, label %193
    i8 83, label %193
    i8 84, label %193
    i8 86, label %193
    i8 87, label %193
    i8 88, label %193
    i8 89, label %193
    i8 90, label %193
    i8 39, label %210
    i8 34, label %210
    i8 47, label %213
    i8 60, label %263
    i8 62, label %299
    i8 37, label %312
    i8 46, label %342
    i8 43, label %366
    i8 45, label %374
    i8 38, label %393
    i8 124, label %401
    i8 58, label %409
    i8 42, label %427
    i8 61, label %434
    i8 33, label %441
    i8 94, label %448
    i8 35, label %455
    i8 63, label %464
    i8 126, label %466
    i8 44, label %468
    i8 40, label %470
    i8 41, label %472
    i8 91, label %474
    i8 93, label %476
    i8 123, label %478
    i8 125, label %480
    i8 59, label %482
    i8 64, label %484
    i8 36, label %486
    i8 92, label %486
  ]

121:                                              ; preds = %119, %119, %119, %119, %119
  %122 = load i16, ptr %73, align 2, !tbaa !78
  %123 = or i16 %122, 1
  store i16 %123, ptr %73, align 2, !tbaa !78
  tail call fastcc void @skip_whitespace(ptr noundef nonnull %0, i32 noundef %99) #18
  br label %79

124:                                              ; preds = %119
  %125 = load ptr, ptr %68, align 8, !tbaa !35
  %126 = getelementptr inbounds %struct.cpp_buffer, ptr %68, i64 0, i32 4
  %127 = load ptr, ptr %126, align 8, !tbaa !37
  %128 = icmp ult ptr %125, %127
  br i1 %128, label %129, label %150

129:                                              ; preds = %124
  %130 = load ptr, ptr %15, align 8, !tbaa !48
  %131 = load ptr, ptr %130, align 8, !tbaa !51
  %132 = getelementptr inbounds %struct.line_maps, ptr %130, i64 0, i32 2
  %133 = load i32, ptr %132, align 4, !tbaa !52
  %134 = add i32 %133, -1
  %135 = zext i32 %134 to i64
  %136 = getelementptr inbounds %struct.line_maps, ptr %130, i64 0, i32 8
  %137 = load i32, ptr %136, align 4, !tbaa !49
  %138 = getelementptr inbounds %struct.line_map, ptr %131, i64 %135, i32 2
  %139 = load i32, ptr %138, align 4, !tbaa !53
  %140 = sub i32 %137, %139
  %141 = getelementptr inbounds %struct.line_map, ptr %131, i64 %135, i32 6
  %142 = load i8, ptr %141, align 2
  %143 = zext nneg i8 %142 to i32
  %144 = lshr i32 %140, %143
  %145 = getelementptr inbounds %struct.line_map, ptr %131, i64 %135, i32 1
  %146 = load i32, ptr %145, align 8, !tbaa !55
  %147 = add i32 %146, 1
  %148 = add i32 %147, %144
  %149 = tail call i32 @linemap_line_start(ptr noundef nonnull %130, i32 noundef %148, i32 noundef 0) #20
  br label %150

150:                                              ; preds = %129, %124
  %151 = getelementptr inbounds %struct.cpp_buffer, ptr %68, i64 0, i32 13
  store i8 1, ptr %151, align 8, !tbaa !36
  br label %22

152:                                              ; preds = %119, %119, %119, %119, %119, %119, %119, %119, %119, %119
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %2) #22
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %2, i8 0, i64 12, i1 false)
  %153 = getelementptr inbounds %struct.cpp_token, ptr %69, i64 0, i32 1
  store i8 55, ptr %153, align 4
  %154 = getelementptr inbounds %struct.cpp_token, ptr %69, i64 0, i32 3
  call fastcc void @lex_number(ptr noundef nonnull %0, ptr noundef nonnull %154, ptr noundef nonnull %2) #18
  call fastcc void @warn_about_normalization(ptr noundef nonnull %0, ptr noundef nonnull %69, ptr noundef nonnull %2) #18
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %2) #22
  br label %503

155:                                              ; preds = %119, %119, %119, %119
  %156 = icmp eq i8 %98, 76
  br i1 %156, label %161, label %157

157:                                              ; preds = %155
  %158 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 53, i32 10
  %159 = load i8, ptr %158, align 8, !tbaa !94
  %160 = icmp eq i8 %159, 0
  br i1 %160, label %193, label %161

161:                                              ; preds = %157, %155
  %162 = load ptr, ptr %68, align 8, !tbaa !35
  %163 = load i8, ptr %162, align 1, !tbaa !5
  %164 = icmp eq i8 %163, 39
  %165 = icmp ne i8 %98, 82
  %166 = select i1 %164, i1 %165, i1 false
  %167 = icmp eq i8 %163, 34
  %168 = or i1 %167, %166
  br i1 %168, label %191, label %169

169:                                              ; preds = %161
  %170 = icmp eq i8 %163, 82
  %171 = select i1 %170, i1 %165, i1 false
  br i1 %171, label %172, label %180

172:                                              ; preds = %169
  %173 = getelementptr inbounds i8, ptr %162, i64 1
  %174 = load i8, ptr %173, align 1, !tbaa !5
  %175 = icmp eq i8 %174, 34
  br i1 %175, label %176, label %193

176:                                              ; preds = %172
  %177 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 53, i32 10
  %178 = load i8, ptr %177, align 8, !tbaa !94
  %179 = icmp eq i8 %178, 0
  br i1 %179, label %193, label %191

180:                                              ; preds = %169
  %181 = icmp eq i8 %163, 56
  %182 = icmp eq i8 %98, 117
  %183 = select i1 %181, i1 %182, i1 false
  br i1 %183, label %184, label %193

184:                                              ; preds = %180
  %185 = getelementptr inbounds i8, ptr %162, i64 1
  %186 = load i8, ptr %185, align 1, !tbaa !5
  switch i8 %186, label %193 [
    i8 34, label %191
    i8 82, label %187
  ]

187:                                              ; preds = %184
  %188 = getelementptr inbounds i8, ptr %162, i64 2
  %189 = load i8, ptr %188, align 1, !tbaa !5
  %190 = icmp eq i8 %189, 34
  br i1 %190, label %191, label %193

191:                                              ; preds = %184, %161, %187, %176
  %192 = getelementptr inbounds i8, ptr %162, i64 -1
  tail call fastcc void @lex_string(ptr noundef nonnull %0, ptr noundef nonnull %69, ptr noundef nonnull %192) #18
  br label %503

193:                                              ; preds = %119, %119, %119, %119, %119, %119, %119, %119, %119, %119, %119, %119, %119, %119, %119, %119, %119, %119, %119, %119, %119, %119, %119, %119, %119, %119, %119, %119, %119, %119, %119, %119, %119, %119, %119, %119, %119, %119, %119, %119, %119, %119, %119, %119, %119, %119, %119, %119, %119, %172, %176, %184, %157, %187, %180
  %194 = getelementptr inbounds %struct.cpp_token, ptr %69, i64 0, i32 1
  store i8 53, ptr %194, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %3) #22
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %3, i8 0, i64 12, i1 false)
  %195 = load ptr, ptr %68, align 8, !tbaa !35
  %196 = getelementptr inbounds i8, ptr %195, i64 -1
  %197 = call fastcc ptr @lex_identifier(ptr noundef nonnull %0, ptr noundef nonnull %196, i8 noundef zeroext 0, ptr noundef nonnull %3) #18
  %198 = getelementptr inbounds %struct.cpp_token, ptr %69, i64 0, i32 3
  store ptr %197, ptr %198, align 8, !tbaa !5
  call fastcc void @warn_about_normalization(ptr noundef nonnull %0, ptr noundef nonnull %69, ptr noundef nonnull %3) #18
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %3) #22
  %199 = load ptr, ptr %198, align 8, !tbaa !5
  %200 = getelementptr inbounds %struct.cpp_hashnode, ptr %199, i64 0, i32 3
  %201 = load i16, ptr %200, align 2
  %202 = and i16 %201, 64
  %203 = icmp eq i16 %202, 0
  br i1 %203, label %503, label %204

204:                                              ; preds = %193
  %205 = load i16, ptr %73, align 2, !tbaa !78
  %206 = or i16 %205, 16
  store i16 %206, ptr %73, align 2, !tbaa !78
  %207 = getelementptr inbounds %struct.cpp_hashnode, ptr %199, i64 0, i32 1
  %208 = load i8, ptr %207, align 8
  %209 = lshr i8 %208, 1
  store i8 %209, ptr %194, align 4
  br label %503

210:                                              ; preds = %119, %119
  %211 = load ptr, ptr %68, align 8, !tbaa !35
  %212 = getelementptr inbounds i8, ptr %211, i64 -1
  tail call fastcc void @lex_string(ptr noundef nonnull %0, ptr noundef nonnull %69, ptr noundef nonnull %212) #18
  br label %503

213:                                              ; preds = %119
  %214 = load ptr, ptr %68, align 8, !tbaa !35
  %215 = load i8, ptr %214, align 1, !tbaa !5
  switch i8 %215, label %253 [
    i8 42, label %216
    i8 47, label %221
    i8 61, label %250
  ]

216:                                              ; preds = %213
  %217 = tail call zeroext i8 @_cpp_skip_block_comment(ptr noundef nonnull %0) #18
  %218 = icmp eq i8 %217, 0
  br i1 %218, label %255, label %219

219:                                              ; preds = %216
  %220 = tail call zeroext i8 (ptr, i32, ptr, ...) @cpp_error(ptr noundef nonnull %0, i32 noundef 3, ptr noundef nonnull @.str.5) #20
  br label %255

221:                                              ; preds = %213
  %222 = load i8, ptr %17, align 1, !tbaa !95
  %223 = icmp eq i8 %222, 0
  br i1 %223, label %224, label %227

224:                                              ; preds = %221
  %225 = tail call fastcc i32 @cpp_in_system_header(ptr noundef nonnull %0) #18, !range !96
  %226 = icmp eq i32 %225, 0
  br i1 %226, label %253, label %227

227:                                              ; preds = %224, %221
  %228 = load i32, ptr %18, align 4, !tbaa !97
  %229 = icmp eq i32 %228, 0
  br i1 %229, label %230, label %242

230:                                              ; preds = %227
  %231 = load i8, ptr %19, align 1, !tbaa !98
  %232 = icmp eq i8 %231, 0
  br i1 %232, label %242, label %233

233:                                              ; preds = %230
  %234 = load i8, ptr %74, align 1
  %235 = and i8 %234, 1
  %236 = icmp eq i8 %235, 0
  br i1 %236, label %237, label %242

237:                                              ; preds = %233
  %238 = tail call zeroext i8 (ptr, i32, ptr, ...) @cpp_error(ptr noundef nonnull %0, i32 noundef 2, ptr noundef nonnull @.str.6) #20
  %239 = tail call zeroext i8 (ptr, i32, ptr, ...) @cpp_error(ptr noundef nonnull %0, i32 noundef 2, ptr noundef nonnull @.str.7) #20
  %240 = load i8, ptr %74, align 1
  %241 = or i8 %240, 1
  store i8 %241, ptr %74, align 1
  br label %242

242:                                              ; preds = %237, %233, %230, %227
  %243 = tail call fastcc i32 @skip_line_comment(ptr noundef nonnull %0) #18, !range !99
  %244 = icmp eq i32 %243, 0
  br i1 %244, label %255, label %245

245:                                              ; preds = %242
  %246 = load i8, ptr %20, align 1, !tbaa !59
  %247 = icmp eq i8 %246, 0
  br i1 %247, label %255, label %248

248:                                              ; preds = %245
  %249 = tail call zeroext i8 (ptr, i32, ptr, ...) @cpp_error(ptr noundef nonnull %0, i32 noundef 0, ptr noundef nonnull @.str.8) #20
  br label %255

250:                                              ; preds = %213
  %251 = getelementptr inbounds i8, ptr %214, i64 1
  store ptr %251, ptr %68, align 8, !tbaa !35
  %252 = getelementptr inbounds %struct.cpp_token, ptr %69, i64 0, i32 1
  store i8 30, ptr %252, align 4
  br label %503

253:                                              ; preds = %224, %213
  %254 = getelementptr inbounds %struct.cpp_token, ptr %69, i64 0, i32 1
  store i8 7, ptr %254, align 4
  br label %503

255:                                              ; preds = %248, %245, %242, %216, %219
  %256 = load i8, ptr %21, align 1, !tbaa !100
  %257 = icmp eq i8 %256, 0
  br i1 %257, label %258, label %261

258:                                              ; preds = %255
  %259 = load i16, ptr %73, align 2, !tbaa !78
  %260 = or i16 %259, 1
  store i16 %260, ptr %73, align 2, !tbaa !78
  br label %75

261:                                              ; preds = %255
  %262 = zext nneg i8 %215 to i32
  tail call fastcc void @save_comment(ptr noundef nonnull %0, ptr noundef nonnull %69, ptr noundef nonnull %214, i32 noundef %262) #18
  br label %503

263:                                              ; preds = %119
  %264 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 2, i32 3
  %265 = load i8, ptr %264, align 1, !tbaa !101
  %266 = icmp eq i8 %265, 0
  br i1 %266, label %273, label %267

267:                                              ; preds = %263
  %268 = load ptr, ptr %68, align 8, !tbaa !35
  %269 = getelementptr inbounds i8, ptr %268, i64 -1
  tail call fastcc void @lex_string(ptr noundef nonnull %0, ptr noundef nonnull %69, ptr noundef nonnull %269) #18
  %270 = getelementptr inbounds %struct.cpp_token, ptr %69, i64 0, i32 1
  %271 = load i8, ptr %270, align 4
  %272 = icmp eq i8 %271, 3
  br i1 %272, label %273, label %503

273:                                              ; preds = %267, %263
  %274 = getelementptr inbounds %struct.cpp_token, ptr %69, i64 0, i32 1
  store i8 3, ptr %274, align 4
  %275 = load ptr, ptr %68, align 8, !tbaa !35
  %276 = load i8, ptr %275, align 1, !tbaa !5
  switch i8 %276, label %286 [
    i8 61, label %277
    i8 60, label %279
  ]

277:                                              ; preds = %273
  %278 = getelementptr inbounds i8, ptr %275, i64 1
  store ptr %278, ptr %68, align 8, !tbaa !35
  store i8 26, ptr %274, align 4
  br label %503

279:                                              ; preds = %273
  %280 = getelementptr inbounds i8, ptr %275, i64 1
  store ptr %280, ptr %68, align 8, !tbaa !35
  store i8 13, ptr %274, align 4
  %281 = load ptr, ptr %68, align 8, !tbaa !35
  %282 = load i8, ptr %281, align 1, !tbaa !5
  %283 = icmp eq i8 %282, 61
  br i1 %283, label %284, label %503

284:                                              ; preds = %279
  %285 = getelementptr inbounds i8, ptr %281, i64 1
  store ptr %285, ptr %68, align 8, !tbaa !35
  store i8 36, ptr %274, align 4
  br label %503

286:                                              ; preds = %273
  %287 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 53, i32 8
  %288 = load i8, ptr %287, align 2, !tbaa !102
  %289 = icmp eq i8 %288, 0
  br i1 %289, label %503, label %290

290:                                              ; preds = %286
  switch i8 %276, label %503 [
    i8 58, label %291
    i8 37, label %295
  ]

291:                                              ; preds = %290
  %292 = getelementptr inbounds i8, ptr %275, i64 1
  store ptr %292, ptr %68, align 8, !tbaa !35
  %293 = load i16, ptr %73, align 2, !tbaa !78
  %294 = or i16 %293, 2
  store i16 %294, ptr %73, align 2, !tbaa !78
  store i8 39, ptr %274, align 4
  br label %503

295:                                              ; preds = %290
  %296 = getelementptr inbounds i8, ptr %275, i64 1
  store ptr %296, ptr %68, align 8, !tbaa !35
  %297 = load i16, ptr %73, align 2, !tbaa !78
  %298 = or i16 %297, 2
  store i16 %298, ptr %73, align 2, !tbaa !78
  store i8 41, ptr %274, align 4
  br label %503

299:                                              ; preds = %119
  %300 = getelementptr inbounds %struct.cpp_token, ptr %69, i64 0, i32 1
  store i8 2, ptr %300, align 4
  %301 = load ptr, ptr %68, align 8, !tbaa !35
  %302 = load i8, ptr %301, align 1, !tbaa !5
  switch i8 %302, label %503 [
    i8 61, label %303
    i8 62, label %305
  ]

303:                                              ; preds = %299
  %304 = getelementptr inbounds i8, ptr %301, i64 1
  store ptr %304, ptr %68, align 8, !tbaa !35
  store i8 25, ptr %300, align 4
  br label %503

305:                                              ; preds = %299
  %306 = getelementptr inbounds i8, ptr %301, i64 1
  store ptr %306, ptr %68, align 8, !tbaa !35
  store i8 12, ptr %300, align 4
  %307 = load ptr, ptr %68, align 8, !tbaa !35
  %308 = load i8, ptr %307, align 1, !tbaa !5
  %309 = icmp eq i8 %308, 61
  br i1 %309, label %310, label %503

310:                                              ; preds = %305
  %311 = getelementptr inbounds i8, ptr %307, i64 1
  store ptr %311, ptr %68, align 8, !tbaa !35
  store i8 35, ptr %300, align 4
  br label %503

312:                                              ; preds = %119
  %313 = getelementptr inbounds %struct.cpp_token, ptr %69, i64 0, i32 1
  store i8 8, ptr %313, align 4
  %314 = load ptr, ptr %68, align 8, !tbaa !35
  %315 = load i8, ptr %314, align 1, !tbaa !5
  %316 = icmp eq i8 %315, 61
  br i1 %316, label %317, label %319

317:                                              ; preds = %312
  %318 = getelementptr inbounds i8, ptr %314, i64 1
  store ptr %318, ptr %68, align 8, !tbaa !35
  store i8 31, ptr %313, align 4
  br label %503

319:                                              ; preds = %312
  %320 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 53, i32 8
  %321 = load i8, ptr %320, align 2, !tbaa !102
  %322 = icmp eq i8 %321, 0
  br i1 %322, label %503, label %323

323:                                              ; preds = %319
  switch i8 %315, label %503 [
    i8 58, label %324
    i8 62, label %338
  ]

324:                                              ; preds = %323
  %325 = getelementptr inbounds i8, ptr %314, i64 1
  store ptr %325, ptr %68, align 8, !tbaa !35
  %326 = load i16, ptr %73, align 2, !tbaa !78
  %327 = or i16 %326, 2
  store i16 %327, ptr %73, align 2, !tbaa !78
  store i8 37, ptr %313, align 4
  %328 = load ptr, ptr %68, align 8, !tbaa !35
  %329 = load i8, ptr %328, align 1, !tbaa !5
  %330 = icmp eq i8 %329, 37
  br i1 %330, label %331, label %503

331:                                              ; preds = %324
  %332 = getelementptr inbounds i8, ptr %328, i64 1
  %333 = load i8, ptr %332, align 1, !tbaa !5
  %334 = icmp eq i8 %333, 58
  br i1 %334, label %335, label %503

335:                                              ; preds = %331
  %336 = getelementptr inbounds i8, ptr %328, i64 2
  store ptr %336, ptr %68, align 8, !tbaa !35
  store i8 38, ptr %313, align 4
  %337 = getelementptr inbounds %struct.cpp_token, ptr %69, i64 0, i32 3
  store i32 0, ptr %337, align 8, !tbaa !5
  br label %503

338:                                              ; preds = %323
  %339 = getelementptr inbounds i8, ptr %314, i64 1
  store ptr %339, ptr %68, align 8, !tbaa !35
  %340 = load i16, ptr %73, align 2, !tbaa !78
  %341 = or i16 %340, 2
  store i16 %341, ptr %73, align 2, !tbaa !78
  store i8 42, ptr %313, align 4
  br label %503

342:                                              ; preds = %119
  %343 = getelementptr inbounds %struct.cpp_token, ptr %69, i64 0, i32 1
  store i8 48, ptr %343, align 4
  %344 = load ptr, ptr %68, align 8, !tbaa !35
  %345 = load i8, ptr %344, align 1, !tbaa !5
  %346 = zext i8 %345 to i64
  %347 = getelementptr inbounds [256 x i16], ptr @_sch_istable, i64 0, i64 %346
  %348 = load i16, ptr %347, align 2, !tbaa !38
  %349 = and i16 %348, 4
  %350 = icmp eq i16 %349, 0
  br i1 %350, label %353, label %351

351:                                              ; preds = %342
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %4) #22
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %4, i8 0, i64 12, i1 false)
  store i8 55, ptr %343, align 4
  %352 = getelementptr inbounds %struct.cpp_token, ptr %69, i64 0, i32 3
  call fastcc void @lex_number(ptr noundef nonnull %0, ptr noundef nonnull %352, ptr noundef nonnull %4) #18
  call fastcc void @warn_about_normalization(ptr noundef nonnull %0, ptr noundef nonnull %69, ptr noundef nonnull %4) #18
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %4) #22
  br label %503

353:                                              ; preds = %342
  switch i8 %345, label %503 [
    i8 46, label %354
    i8 42, label %360
  ]

354:                                              ; preds = %353
  %355 = getelementptr inbounds i8, ptr %344, i64 1
  %356 = load i8, ptr %355, align 1, !tbaa !5
  %357 = icmp eq i8 %356, 46
  br i1 %357, label %358, label %503

358:                                              ; preds = %354
  %359 = getelementptr inbounds i8, ptr %344, i64 2
  store ptr %359, ptr %68, align 8, !tbaa !35
  store i8 44, ptr %343, align 4
  br label %503

360:                                              ; preds = %353
  %361 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 53, i32 2
  %362 = load i8, ptr %361, align 8, !tbaa !103
  %363 = icmp eq i8 %362, 0
  br i1 %363, label %503, label %364

364:                                              ; preds = %360
  %365 = getelementptr inbounds i8, ptr %344, i64 1
  store ptr %365, ptr %68, align 8, !tbaa !35
  store i8 51, ptr %343, align 4
  br label %503

366:                                              ; preds = %119
  %367 = getelementptr inbounds %struct.cpp_token, ptr %69, i64 0, i32 1
  store i8 4, ptr %367, align 4
  %368 = load ptr, ptr %68, align 8, !tbaa !35
  %369 = load i8, ptr %368, align 1, !tbaa !5
  switch i8 %369, label %503 [
    i8 43, label %370
    i8 61, label %372
  ]

370:                                              ; preds = %366
  %371 = getelementptr inbounds i8, ptr %368, i64 1
  store ptr %371, ptr %68, align 8, !tbaa !35
  store i8 45, ptr %367, align 4
  br label %503

372:                                              ; preds = %366
  %373 = getelementptr inbounds i8, ptr %368, i64 1
  store ptr %373, ptr %68, align 8, !tbaa !35
  store i8 27, ptr %367, align 4
  br label %503

374:                                              ; preds = %119
  %375 = getelementptr inbounds %struct.cpp_token, ptr %69, i64 0, i32 1
  store i8 5, ptr %375, align 4
  %376 = load ptr, ptr %68, align 8, !tbaa !35
  %377 = load i8, ptr %376, align 1, !tbaa !5
  switch i8 %377, label %503 [
    i8 62, label %378
    i8 45, label %389
    i8 61, label %391
  ]

378:                                              ; preds = %374
  %379 = getelementptr inbounds i8, ptr %376, i64 1
  store ptr %379, ptr %68, align 8, !tbaa !35
  store i8 47, ptr %375, align 4
  %380 = load ptr, ptr %68, align 8, !tbaa !35
  %381 = load i8, ptr %380, align 1, !tbaa !5
  %382 = icmp eq i8 %381, 42
  br i1 %382, label %383, label %503

383:                                              ; preds = %378
  %384 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 53, i32 2
  %385 = load i8, ptr %384, align 8, !tbaa !103
  %386 = icmp eq i8 %385, 0
  br i1 %386, label %503, label %387

387:                                              ; preds = %383
  %388 = getelementptr inbounds i8, ptr %380, i64 1
  store ptr %388, ptr %68, align 8, !tbaa !35
  store i8 50, ptr %375, align 4
  br label %503

389:                                              ; preds = %374
  %390 = getelementptr inbounds i8, ptr %376, i64 1
  store ptr %390, ptr %68, align 8, !tbaa !35
  store i8 46, ptr %375, align 4
  br label %503

391:                                              ; preds = %374
  %392 = getelementptr inbounds i8, ptr %376, i64 1
  store ptr %392, ptr %68, align 8, !tbaa !35
  store i8 28, ptr %375, align 4
  br label %503

393:                                              ; preds = %119
  %394 = getelementptr inbounds %struct.cpp_token, ptr %69, i64 0, i32 1
  store i8 9, ptr %394, align 4
  %395 = load ptr, ptr %68, align 8, !tbaa !35
  %396 = load i8, ptr %395, align 1, !tbaa !5
  switch i8 %396, label %503 [
    i8 38, label %397
    i8 61, label %399
  ]

397:                                              ; preds = %393
  %398 = getelementptr inbounds i8, ptr %395, i64 1
  store ptr %398, ptr %68, align 8, !tbaa !35
  store i8 15, ptr %394, align 4
  br label %503

399:                                              ; preds = %393
  %400 = getelementptr inbounds i8, ptr %395, i64 1
  store ptr %400, ptr %68, align 8, !tbaa !35
  store i8 32, ptr %394, align 4
  br label %503

401:                                              ; preds = %119
  %402 = getelementptr inbounds %struct.cpp_token, ptr %69, i64 0, i32 1
  store i8 10, ptr %402, align 4
  %403 = load ptr, ptr %68, align 8, !tbaa !35
  %404 = load i8, ptr %403, align 1, !tbaa !5
  switch i8 %404, label %503 [
    i8 124, label %405
    i8 61, label %407
  ]

405:                                              ; preds = %401
  %406 = getelementptr inbounds i8, ptr %403, i64 1
  store ptr %406, ptr %68, align 8, !tbaa !35
  store i8 16, ptr %402, align 4
  br label %503

407:                                              ; preds = %401
  %408 = getelementptr inbounds i8, ptr %403, i64 1
  store ptr %408, ptr %68, align 8, !tbaa !35
  store i8 33, ptr %402, align 4
  br label %503

409:                                              ; preds = %119
  %410 = getelementptr inbounds %struct.cpp_token, ptr %69, i64 0, i32 1
  store i8 18, ptr %410, align 4
  %411 = load ptr, ptr %68, align 8, !tbaa !35
  %412 = load i8, ptr %411, align 1, !tbaa !5
  switch i8 %412, label %503 [
    i8 58, label %413
    i8 62, label %419
  ]

413:                                              ; preds = %409
  %414 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 53, i32 2
  %415 = load i8, ptr %414, align 8, !tbaa !103
  %416 = icmp eq i8 %415, 0
  br i1 %416, label %503, label %417

417:                                              ; preds = %413
  %418 = getelementptr inbounds i8, ptr %411, i64 1
  store ptr %418, ptr %68, align 8, !tbaa !35
  store i8 49, ptr %410, align 4
  br label %503

419:                                              ; preds = %409
  %420 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 53, i32 8
  %421 = load i8, ptr %420, align 2, !tbaa !102
  %422 = icmp eq i8 %421, 0
  br i1 %422, label %503, label %423

423:                                              ; preds = %419
  %424 = getelementptr inbounds i8, ptr %411, i64 1
  store ptr %424, ptr %68, align 8, !tbaa !35
  %425 = load i16, ptr %73, align 2, !tbaa !78
  %426 = or i16 %425, 2
  store i16 %426, ptr %73, align 2, !tbaa !78
  store i8 40, ptr %410, align 4
  br label %503

427:                                              ; preds = %119
  %428 = getelementptr inbounds %struct.cpp_token, ptr %69, i64 0, i32 1
  store i8 6, ptr %428, align 4
  %429 = load ptr, ptr %68, align 8, !tbaa !35
  %430 = load i8, ptr %429, align 1, !tbaa !5
  %431 = icmp eq i8 %430, 61
  br i1 %431, label %432, label %503

432:                                              ; preds = %427
  %433 = getelementptr inbounds i8, ptr %429, i64 1
  store ptr %433, ptr %68, align 8, !tbaa !35
  store i8 29, ptr %428, align 4
  br label %503

434:                                              ; preds = %119
  %435 = getelementptr inbounds %struct.cpp_token, ptr %69, i64 0, i32 1
  store i8 0, ptr %435, align 4
  %436 = load ptr, ptr %68, align 8, !tbaa !35
  %437 = load i8, ptr %436, align 1, !tbaa !5
  %438 = icmp eq i8 %437, 61
  br i1 %438, label %439, label %503

439:                                              ; preds = %434
  %440 = getelementptr inbounds i8, ptr %436, i64 1
  store ptr %440, ptr %68, align 8, !tbaa !35
  store i8 23, ptr %435, align 4
  br label %503

441:                                              ; preds = %119
  %442 = getelementptr inbounds %struct.cpp_token, ptr %69, i64 0, i32 1
  store i8 1, ptr %442, align 4
  %443 = load ptr, ptr %68, align 8, !tbaa !35
  %444 = load i8, ptr %443, align 1, !tbaa !5
  %445 = icmp eq i8 %444, 61
  br i1 %445, label %446, label %503

446:                                              ; preds = %441
  %447 = getelementptr inbounds i8, ptr %443, i64 1
  store ptr %447, ptr %68, align 8, !tbaa !35
  store i8 24, ptr %442, align 4
  br label %503

448:                                              ; preds = %119
  %449 = getelementptr inbounds %struct.cpp_token, ptr %69, i64 0, i32 1
  store i8 11, ptr %449, align 4
  %450 = load ptr, ptr %68, align 8, !tbaa !35
  %451 = load i8, ptr %450, align 1, !tbaa !5
  %452 = icmp eq i8 %451, 61
  br i1 %452, label %453, label %503

453:                                              ; preds = %448
  %454 = getelementptr inbounds i8, ptr %450, i64 1
  store ptr %454, ptr %68, align 8, !tbaa !35
  store i8 34, ptr %449, align 4
  br label %503

455:                                              ; preds = %119
  %456 = getelementptr inbounds %struct.cpp_token, ptr %69, i64 0, i32 1
  store i8 37, ptr %456, align 4
  %457 = load ptr, ptr %68, align 8, !tbaa !35
  %458 = load i8, ptr %457, align 1, !tbaa !5
  %459 = icmp eq i8 %458, 35
  br i1 %459, label %460, label %462

460:                                              ; preds = %455
  %461 = getelementptr inbounds i8, ptr %457, i64 1
  store ptr %461, ptr %68, align 8, !tbaa !35
  store i8 38, ptr %456, align 4
  br label %462

462:                                              ; preds = %460, %455
  %463 = getelementptr inbounds %struct.cpp_token, ptr %69, i64 0, i32 3
  store i32 0, ptr %463, align 8, !tbaa !5
  br label %503

464:                                              ; preds = %119
  %465 = getelementptr inbounds %struct.cpp_token, ptr %69, i64 0, i32 1
  store i8 17, ptr %465, align 4
  br label %503

466:                                              ; preds = %119
  %467 = getelementptr inbounds %struct.cpp_token, ptr %69, i64 0, i32 1
  store i8 14, ptr %467, align 4
  br label %503

468:                                              ; preds = %119
  %469 = getelementptr inbounds %struct.cpp_token, ptr %69, i64 0, i32 1
  store i8 19, ptr %469, align 4
  br label %503

470:                                              ; preds = %119
  %471 = getelementptr inbounds %struct.cpp_token, ptr %69, i64 0, i32 1
  store i8 20, ptr %471, align 4
  br label %503

472:                                              ; preds = %119
  %473 = getelementptr inbounds %struct.cpp_token, ptr %69, i64 0, i32 1
  store i8 21, ptr %473, align 4
  br label %503

474:                                              ; preds = %119
  %475 = getelementptr inbounds %struct.cpp_token, ptr %69, i64 0, i32 1
  store i8 39, ptr %475, align 4
  br label %503

476:                                              ; preds = %119
  %477 = getelementptr inbounds %struct.cpp_token, ptr %69, i64 0, i32 1
  store i8 40, ptr %477, align 4
  br label %503

478:                                              ; preds = %119
  %479 = getelementptr inbounds %struct.cpp_token, ptr %69, i64 0, i32 1
  store i8 41, ptr %479, align 4
  br label %503

480:                                              ; preds = %119
  %481 = getelementptr inbounds %struct.cpp_token, ptr %69, i64 0, i32 1
  store i8 42, ptr %481, align 4
  br label %503

482:                                              ; preds = %119
  %483 = getelementptr inbounds %struct.cpp_token, ptr %69, i64 0, i32 1
  store i8 43, ptr %483, align 4
  br label %503

484:                                              ; preds = %119
  %485 = getelementptr inbounds %struct.cpp_token, ptr %69, i64 0, i32 1
  store i8 52, ptr %485, align 4
  br label %503

486:                                              ; preds = %119, %119
  %487 = load ptr, ptr %68, align 8, !tbaa !35
  %488 = getelementptr inbounds i8, ptr %487, i64 -1
  store ptr %488, ptr %68, align 8, !tbaa !35
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %5) #22
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %5, i8 0, i64 12, i1 false)
  %489 = call fastcc zeroext i8 @forms_identifier_p(ptr noundef nonnull %0, i32 noundef 1, ptr noundef nonnull %5) #18, !range !57
  %490 = icmp eq i8 %489, 0
  br i1 %490, label %491, label %494

491:                                              ; preds = %486
  %492 = load ptr, ptr %68, align 8, !tbaa !35
  %493 = getelementptr inbounds i8, ptr %492, i64 1
  store ptr %493, ptr %68, align 8, !tbaa !35
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %5) #22
  br label %500

494:                                              ; preds = %486
  %495 = getelementptr inbounds %struct.cpp_token, ptr %69, i64 0, i32 1
  store i8 53, ptr %495, align 4
  %496 = call fastcc ptr @lex_identifier(ptr noundef nonnull %0, ptr noundef nonnull %488, i8 noundef zeroext 1, ptr noundef nonnull %5) #18
  %497 = getelementptr inbounds %struct.cpp_token, ptr %69, i64 0, i32 3
  store ptr %496, ptr %497, align 8, !tbaa !5
  call fastcc void @warn_about_normalization(ptr noundef nonnull %0, ptr noundef nonnull %69, ptr noundef nonnull %5) #18
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %5) #22
  br label %503

498:                                              ; preds = %119
  %499 = load ptr, ptr %68, align 8, !tbaa !35
  br label %500

500:                                              ; preds = %498, %491
  %501 = phi ptr [ %499, %498 ], [ %493, %491 ]
  %502 = getelementptr inbounds i8, ptr %501, i64 -1
  call fastcc void @create_literal(ptr noundef nonnull %0, ptr noundef nonnull %69, ptr noundef nonnull %502, i32 noundef 1, i32 noundef 60) #18
  br label %503

503:                                              ; preds = %409, %353, %413, %354, %494, %152, %191, %210, %250, %253, %261, %462, %464, %466, %468, %470, %472, %474, %476, %478, %480, %482, %484, %500, %204, %193, %267, %284, %279, %291, %295, %286, %277, %310, %305, %303, %319, %338, %324, %331, %335, %317, %358, %364, %360, %351, %372, %370, %389, %391, %378, %383, %387, %399, %397, %407, %405, %419, %423, %417, %432, %427, %439, %434, %446, %441, %453, %448, %290, %299, %323, %366, %374, %393, %401, %44, %49, %32, %37
  %504 = phi ptr [ %23, %37 ], [ %23, %32 ], [ %23, %49 ], [ %23, %44 ], [ %69, %494 ], [ %69, %401 ], [ %69, %393 ], [ %69, %374 ], [ %69, %366 ], [ %69, %323 ], [ %69, %299 ], [ %69, %290 ], [ %69, %448 ], [ %69, %453 ], [ %69, %441 ], [ %69, %446 ], [ %69, %434 ], [ %69, %439 ], [ %69, %427 ], [ %69, %432 ], [ %69, %417 ], [ %69, %423 ], [ %69, %419 ], [ %69, %405 ], [ %69, %407 ], [ %69, %397 ], [ %69, %399 ], [ %69, %387 ], [ %69, %383 ], [ %69, %378 ], [ %69, %391 ], [ %69, %389 ], [ %69, %370 ], [ %69, %372 ], [ %69, %351 ], [ %69, %360 ], [ %69, %364 ], [ %69, %358 ], [ %69, %317 ], [ %69, %335 ], [ %69, %331 ], [ %69, %324 ], [ %69, %338 ], [ %69, %319 ], [ %69, %303 ], [ %69, %305 ], [ %69, %310 ], [ %69, %277 ], [ %69, %286 ], [ %69, %295 ], [ %69, %291 ], [ %69, %279 ], [ %69, %284 ], [ %69, %267 ], [ %69, %193 ], [ %69, %204 ], [ %69, %500 ], [ %69, %484 ], [ %69, %482 ], [ %69, %480 ], [ %69, %478 ], [ %69, %476 ], [ %69, %474 ], [ %69, %472 ], [ %69, %470 ], [ %69, %468 ], [ %69, %466 ], [ %69, %464 ], [ %69, %462 ], [ %69, %261 ], [ %69, %253 ], [ %69, %250 ], [ %69, %210 ], [ %69, %191 ], [ %69, %152 ], [ %69, %354 ], [ %69, %413 ], [ %69, %353 ], [ %69, %409 ]
  ret ptr %504
}

; Function Attrs: optsize
declare i32 @_cpp_handle_directive(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef zeroext i8 @_cpp_get_fresh_line(ptr noundef %0) local_unnamed_addr #2 {
  %2 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 2
  %3 = load i8, ptr %2, align 8, !tbaa !82
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %5, label %41

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 2, i32 9
  %7 = load ptr, ptr %0, align 8, !tbaa !13
  br label %8

8:                                                ; preds = %5, %35
  %9 = phi ptr [ %36, %35 ], [ %7, %5 ]
  %10 = getelementptr inbounds %struct.cpp_buffer, ptr %9, i64 0, i32 13
  %11 = load i8, ptr %10, align 8, !tbaa !36
  %12 = icmp eq i8 %11, 0
  br i1 %12, label %41, label %13

13:                                               ; preds = %8
  %14 = getelementptr inbounds %struct.cpp_buffer, ptr %9, i64 0, i32 2
  %15 = load ptr, ptr %14, align 8, !tbaa !33
  %16 = getelementptr inbounds %struct.cpp_buffer, ptr %9, i64 0, i32 4
  %17 = load ptr, ptr %16, align 8, !tbaa !37
  %18 = icmp ult ptr %15, %17
  br i1 %18, label %19, label %20

19:                                               ; preds = %13
  tail call void @_cpp_clean_line(ptr noundef nonnull %0) #18
  br label %41

20:                                               ; preds = %13
  %21 = load i8, ptr %6, align 1, !tbaa !79
  %22 = icmp eq i8 %21, 0
  br i1 %22, label %23, label %41

23:                                               ; preds = %20
  %24 = getelementptr inbounds %struct.cpp_buffer, ptr %9, i64 0, i32 3
  %25 = load ptr, ptr %24, align 8, !tbaa !104
  %26 = icmp ne ptr %25, %17
  %27 = icmp ugt ptr %15, %17
  %28 = and i1 %27, %26
  %29 = getelementptr inbounds %struct.cpp_buffer, ptr %9, i64 0, i32 14
  %30 = load i8, ptr %29, align 1
  %31 = and i8 %30, 2
  %32 = icmp eq i8 %31, 0
  %33 = select i1 %28, i1 %32, i1 false
  br i1 %33, label %34, label %35

34:                                               ; preds = %23
  store ptr %17, ptr %14, align 8, !tbaa !33
  br label %35

35:                                               ; preds = %23, %34
  tail call void @_cpp_pop_buffer(ptr noundef nonnull %0) #20
  %36 = load ptr, ptr %0, align 8, !tbaa !13
  %37 = icmp ne ptr %36, null
  %38 = and i8 %30, 4
  %39 = icmp eq i8 %38, 0
  %40 = select i1 %37, i1 %39, i1 false
  br i1 %40, label %8, label %41

41:                                               ; preds = %20, %8, %35, %19, %1
  %42 = phi i8 [ 0, %1 ], [ 1, %19 ], [ 1, %8 ], [ 0, %20 ], [ 0, %35 ]
  ret i8 %42
}

; Function Attrs: optsize
declare void @_cpp_pop_buffer(ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare i32 @linemap_position_for_column(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @skip_whitespace(ptr noundef %0, i32 noundef %1) unnamed_addr #2 {
  %3 = load ptr, ptr %0, align 8, !tbaa !13
  %4 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 2
  %5 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 53, i32 31
  %6 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 3
  %7 = getelementptr inbounds %struct.cpp_buffer, ptr %3, i64 0, i32 1
  br label %8

8:                                                ; preds = %31, %2
  %9 = phi i32 [ %1, %2 ], [ %36, %31 ]
  %10 = phi i8 [ 0, %2 ], [ %32, %31 ]
  switch i32 %9, label %12 [
    i32 32, label %31
    i32 9, label %31
    i32 0, label %11
  ]

11:                                               ; preds = %8
  br label %31

12:                                               ; preds = %8
  %13 = load i8, ptr %4, align 8, !tbaa !82
  %14 = icmp eq i8 %13, 0
  br i1 %14, label %31, label %15

15:                                               ; preds = %12
  %16 = load i8, ptr %5, align 1, !tbaa !98
  %17 = icmp eq i8 %16, 0
  br i1 %17, label %31, label %18

18:                                               ; preds = %15
  %19 = load ptr, ptr %6, align 8, !tbaa !48
  %20 = getelementptr inbounds %struct.line_maps, ptr %19, i64 0, i32 8
  %21 = load i32, ptr %20, align 4, !tbaa !49
  %22 = load ptr, ptr %3, align 8, !tbaa !35
  %23 = load ptr, ptr %7, align 8, !tbaa !34
  %24 = ptrtoint ptr %22 to i64
  %25 = ptrtoint ptr %23 to i64
  %26 = sub i64 %24, %25
  %27 = trunc i64 %26 to i32
  %28 = icmp eq i32 %9, 12
  %29 = select i1 %28, ptr @.str.15, ptr @.str.16
  %30 = tail call zeroext i8 (ptr, i32, i32, i32, ptr, ...) @cpp_error_with_line(ptr noundef nonnull %0, i32 noundef 2, i32 noundef %21, i32 noundef %27, ptr noundef nonnull @.str.14, ptr noundef nonnull %29) #20
  br label %31

31:                                               ; preds = %8, %8, %11, %18, %15, %12
  %32 = phi i8 [ %10, %8 ], [ 1, %11 ], [ %10, %18 ], [ %10, %15 ], [ %10, %12 ], [ %10, %8 ]
  %33 = load ptr, ptr %3, align 8, !tbaa !35
  %34 = getelementptr inbounds i8, ptr %33, i64 1
  store ptr %34, ptr %3, align 8, !tbaa !35
  %35 = load i8, ptr %33, align 1, !tbaa !5
  %36 = zext i8 %35 to i32
  %37 = zext i8 %35 to i64
  %38 = getelementptr inbounds [256 x i16], ptr @_sch_istable, i64 0, i64 %37
  %39 = load i16, ptr %38, align 2, !tbaa !38
  %40 = and i16 %39, 2048
  %41 = icmp eq i16 %40, 0
  br i1 %41, label %42, label %8, !llvm.loop !105

42:                                               ; preds = %31
  %43 = getelementptr inbounds i8, ptr %33, i64 1
  %44 = icmp eq i8 %32, 0
  br i1 %44, label %48, label %45

45:                                               ; preds = %42
  %46 = tail call zeroext i8 (ptr, i32, ptr, ...) @cpp_error(ptr noundef nonnull %0, i32 noundef 0, ptr noundef nonnull @.str.17) #20
  %47 = load ptr, ptr %3, align 8, !tbaa !35
  br label %48

48:                                               ; preds = %45, %42
  %49 = phi ptr [ %47, %45 ], [ %43, %42 ]
  %50 = getelementptr inbounds i8, ptr %49, i64 -1
  store ptr %50, ptr %3, align 8, !tbaa !35
  ret void
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #9

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @lex_number(ptr noundef %0, ptr nocapture noundef %1, ptr noundef %2) unnamed_addr #2 {
  %4 = load ptr, ptr %0, align 8, !tbaa !13
  %5 = load ptr, ptr %4, align 8, !tbaa !35
  %6 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 53, i32 9
  %7 = getelementptr inbounds %struct.normalize_state, ptr %2, i64 0, i32 1
  br label %8

8:                                                ; preds = %30, %3
  %9 = load ptr, ptr %0, align 8, !tbaa !13
  %10 = load ptr, ptr %9, align 8, !tbaa !35
  br label %11

11:                                               ; preds = %28, %8
  %12 = phi ptr [ %10, %8 ], [ %29, %28 ]
  %13 = load i8, ptr %12, align 1, !tbaa !5
  %14 = zext i8 %13 to i64
  %15 = getelementptr inbounds [256 x i16], ptr @_sch_istable, i64 0, i64 %14
  %16 = load i16, ptr %15, align 2, !tbaa !38
  %17 = and i16 %16, 516
  %18 = icmp ne i16 %17, 0
  %19 = icmp eq i8 %13, 46
  %20 = or i1 %19, %18
  br i1 %20, label %28, label %21

21:                                               ; preds = %11
  switch i8 %13, label %30 [
    i8 43, label %22
    i8 45, label %22
  ]

22:                                               ; preds = %21, %21
  %23 = getelementptr inbounds i8, ptr %12, i64 -1
  %24 = load i8, ptr %23, align 1, !tbaa !5
  switch i8 %24, label %30 [
    i8 101, label %28
    i8 69, label %28
    i8 112, label %25
    i8 80, label %25
  ]

25:                                               ; preds = %22, %22
  %26 = load i8, ptr %6, align 1, !tbaa !106
  %27 = icmp eq i8 %26, 0
  br i1 %27, label %30, label %28

28:                                               ; preds = %22, %22, %11, %25
  %29 = getelementptr inbounds i8, ptr %12, i64 1
  store i32 0, ptr %2, align 4, !tbaa !107
  store i8 0, ptr %7, align 4, !tbaa !109
  br label %11, !llvm.loop !110

30:                                               ; preds = %22, %21, %25
  store ptr %12, ptr %9, align 8, !tbaa !35
  %31 = tail call fastcc zeroext i8 @forms_identifier_p(ptr noundef nonnull %0, i32 noundef 0, ptr noundef %2) #18, !range !57
  %32 = icmp eq i8 %31, 0
  br i1 %32, label %33, label %8, !llvm.loop !111

33:                                               ; preds = %30
  %34 = getelementptr inbounds i8, ptr %5, i64 -1
  %35 = ptrtoint ptr %12 to i64
  %36 = ptrtoint ptr %34 to i64
  %37 = sub i64 %35, %36
  %38 = trunc i64 %37 to i32
  store i32 %38, ptr %1, align 8, !tbaa !112
  %39 = add i64 %37, 1
  %40 = and i64 %39, 4294967295
  %41 = tail call ptr @_cpp_unaligned_alloc(ptr noundef nonnull %0, i64 noundef %40) #18
  %42 = load i32, ptr %1, align 8, !tbaa !112
  %43 = zext i32 %42 to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %41, ptr nonnull align 1 %34, i64 %43, i1 false)
  %44 = load i32, ptr %1, align 8, !tbaa !112
  %45 = zext i32 %44 to i64
  %46 = getelementptr inbounds i8, ptr %41, i64 %45
  store i8 0, ptr %46, align 1, !tbaa !5
  %47 = getelementptr inbounds %struct.cpp_string, ptr %1, i64 0, i32 1
  store ptr %41, ptr %47, align 8, !tbaa !114
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @warn_about_normalization(ptr noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) unnamed_addr #2 {
  %4 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 53, i32 40
  %5 = load i32, ptr %4, align 8, !tbaa !115
  %6 = getelementptr inbounds %struct.normalize_state, ptr %2, i64 0, i32 2
  %7 = load i32, ptr %6, align 4, !tbaa !116
  %8 = icmp ult i32 %5, %7
  br i1 %8, label %9, label %27

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 2, i32 2
  %11 = load i8, ptr %10, align 2, !tbaa !62
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
  %21 = load i32, ptr %6, align 4, !tbaa !116
  %22 = icmp eq i32 %21, 1
  %23 = load i32, ptr %1, align 8, !tbaa !86
  %24 = trunc i64 %20 to i32
  %25 = select i1 %22, ptr @.str.18, ptr @.str.19
  %26 = tail call zeroext i8 (ptr, i32, i32, i32, ptr, ...) @cpp_error_with_line(ptr noundef nonnull %0, i32 noundef 0, i32 noundef %23, i32 noundef 0, ptr noundef nonnull %25, i32 noundef %24, ptr noundef %16) #20
  br label %27

27:                                               ; preds = %13, %9, %3
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @lex_string(ptr noundef %0, ptr nocapture noundef %1, ptr noundef %2) unnamed_addr #2 {
  %4 = getelementptr inbounds i8, ptr %2, i64 1
  %5 = load i8, ptr %2, align 1, !tbaa !5
  switch i8 %5, label %15 [
    i8 85, label %10
    i8 76, label %10
    i8 117, label %6
  ]

6:                                                ; preds = %3
  %7 = getelementptr inbounds i8, ptr %2, i64 2
  %8 = load i8, ptr %4, align 1, !tbaa !5
  %9 = icmp eq i8 %8, 56
  br i1 %9, label %10, label %15

10:                                               ; preds = %6, %3, %3
  %11 = phi i64 [ 2, %3 ], [ 2, %3 ], [ 3, %6 ]
  %12 = phi ptr [ %4, %3 ], [ %4, %3 ], [ %7, %6 ]
  %13 = getelementptr inbounds i8, ptr %2, i64 %11
  %14 = load i8, ptr %12, align 1, !tbaa !5
  br label %15

15:                                               ; preds = %10, %3, %6
  %16 = phi ptr [ %7, %6 ], [ %4, %3 ], [ %13, %10 ]
  %17 = phi i8 [ %8, %6 ], [ %5, %3 ], [ %14, %10 ]
  switch i8 %17, label %31 [
    i8 82, label %18
    i8 34, label %19
    i8 39, label %26
  ]

18:                                               ; preds = %15
  tail call fastcc void @lex_raw_string(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %2, ptr noundef nonnull %16) #18
  br label %84

19:                                               ; preds = %15
  switch i8 %5, label %25 [
    i8 76, label %31
    i8 85, label %24
    i8 117, label %20
  ]

20:                                               ; preds = %19
  %21 = load i8, ptr %4, align 1, !tbaa !5
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
  ]

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
  %35 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 2, i32 3
  br label %36

36:                                               ; preds = %57, %31
  %37 = phi ptr [ %16, %31 ], [ %41, %57 ]
  %38 = phi i1 [ true, %31 ], [ false, %57 ]
  br label %39

39:                                               ; preds = %53, %36
  %40 = phi ptr [ %37, %36 ], [ %54, %53 ]
  %41 = getelementptr inbounds i8, ptr %40, i64 1
  %42 = load i8, ptr %40, align 1, !tbaa !5
  %43 = zext i8 %42 to i32
  %44 = icmp eq i8 %42, 92
  br i1 %44, label %45, label %55

45:                                               ; preds = %39
  %46 = load i8, ptr %35, align 1, !tbaa !101
  %47 = icmp eq i8 %46, 0
  br i1 %47, label %48, label %55

48:                                               ; preds = %45
  %49 = load i8, ptr %41, align 1, !tbaa !5
  %50 = icmp eq i8 %49, 10
  br i1 %50, label %55, label %51

51:                                               ; preds = %48
  %52 = getelementptr inbounds i8, ptr %40, i64 2
  br label %53

53:                                               ; preds = %51, %57
  %54 = phi ptr [ %52, %51 ], [ %41, %57 ]
  br label %39

55:                                               ; preds = %48, %45, %39
  %56 = icmp eq i32 %33, %43
  br i1 %56, label %61, label %57

57:                                               ; preds = %55
  switch i8 %42, label %53 [
    i8 10, label %58
    i8 0, label %36
  ]

58:                                               ; preds = %57
  br i1 %32, label %59, label %61

59:                                               ; preds = %58
  %60 = getelementptr inbounds %struct.cpp_token, ptr %1, i64 0, i32 1
  store i8 3, ptr %60, align 4
  br label %84

61:                                               ; preds = %55, %58
  %62 = phi ptr [ %40, %58 ], [ %41, %55 ]
  %63 = phi i32 [ 60, %58 ], [ %34, %55 ]
  br i1 %38, label %70, label %64

64:                                               ; preds = %61
  %65 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 2, i32 2
  %66 = load i8, ptr %65, align 2, !tbaa !62
  %67 = icmp eq i8 %66, 0
  br i1 %67, label %68, label %70

68:                                               ; preds = %64
  %69 = tail call zeroext i8 (ptr, i32, ptr, ...) @cpp_error(ptr noundef nonnull %0, i32 noundef 0, ptr noundef nonnull @.str.20) #20
  br label %70

70:                                               ; preds = %68, %64, %61
  %71 = icmp eq i32 %63, 60
  br i1 %71, label %72, label %78

72:                                               ; preds = %70
  %73 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 53, i32 1
  %74 = load i32, ptr %73, align 4, !tbaa !97
  %75 = icmp eq i32 %74, 9
  br i1 %75, label %78, label %76

76:                                               ; preds = %72
  %77 = tail call zeroext i8 (ptr, i32, ptr, ...) @cpp_error(ptr noundef nonnull %0, i32 noundef 2, ptr noundef nonnull @.str.21, i32 noundef %33) #20
  br label %78

78:                                               ; preds = %76, %72, %70
  %79 = load ptr, ptr %0, align 8, !tbaa !13
  store ptr %62, ptr %79, align 8, !tbaa !35
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
define internal fastcc ptr @lex_identifier(ptr noundef %0, ptr noundef %1, i8 noundef zeroext %2, ptr noundef %3) unnamed_addr #2 {
  %5 = load ptr, ptr %0, align 8, !tbaa !13
  %6 = icmp eq i8 %2, 0
  br i1 %6, label %7, label %38

7:                                                ; preds = %4
  %8 = load ptr, ptr %5, align 8, !tbaa !35
  %9 = load i8, ptr %1, align 1, !tbaa !5
  %10 = zext i8 %9 to i32
  %11 = add nsw i32 %10, -113
  %12 = load i8, ptr %8, align 1, !tbaa !5
  %13 = zext i8 %12 to i64
  %14 = getelementptr inbounds [256 x i16], ptr @_sch_istable, i64 0, i64 %13
  %15 = load i16, ptr %14, align 2, !tbaa !38
  %16 = and i16 %15, 516
  %17 = icmp eq i16 %16, 0
  br i1 %17, label %33, label %18

18:                                               ; preds = %7, %18
  %19 = phi i8 [ %27, %18 ], [ %12, %7 ]
  %20 = phi i32 [ %25, %18 ], [ %11, %7 ]
  %21 = phi ptr [ %26, %18 ], [ %8, %7 ]
  %22 = zext i8 %19 to i32
  %23 = mul i32 %20, 67
  %24 = add i32 %23, -113
  %25 = add i32 %24, %22
  %26 = getelementptr inbounds i8, ptr %21, i64 1
  %27 = load i8, ptr %26, align 1, !tbaa !5
  %28 = zext i8 %27 to i64
  %29 = getelementptr inbounds [256 x i16], ptr @_sch_istable, i64 0, i64 %28
  %30 = load i16, ptr %29, align 2, !tbaa !38
  %31 = and i16 %30, 516
  %32 = icmp eq i16 %31, 0
  br i1 %32, label %33, label %18, !llvm.loop !117

33:                                               ; preds = %18, %7
  %34 = phi ptr [ %8, %7 ], [ %26, %18 ]
  %35 = phi i32 [ %11, %7 ], [ %25, %18 ]
  store ptr %34, ptr %5, align 8, !tbaa !35
  %36 = tail call fastcc zeroext i8 @forms_identifier_p(ptr noundef nonnull %0, i32 noundef 0, ptr noundef %3) #18, !range !57
  %37 = icmp eq i8 %36, 0
  br i1 %37, label %68, label %38

38:                                               ; preds = %4, %33
  %39 = getelementptr inbounds %struct.normalize_state, ptr %3, i64 0, i32 1
  br label %40

40:                                               ; preds = %58, %38
  %41 = load ptr, ptr %0, align 8, !tbaa !13
  %42 = load ptr, ptr %41, align 8, !tbaa !35
  %43 = load i8, ptr %42, align 1, !tbaa !5
  %44 = zext i8 %43 to i64
  %45 = getelementptr inbounds [256 x i16], ptr @_sch_istable, i64 0, i64 %44
  %46 = load i16, ptr %45, align 2, !tbaa !38
  %47 = and i16 %46, 516
  %48 = icmp eq i16 %47, 0
  br i1 %48, label %58, label %49

49:                                               ; preds = %40, %49
  %50 = phi ptr [ %51, %49 ], [ %42, %40 ]
  %51 = getelementptr inbounds i8, ptr %50, i64 1
  store ptr %51, ptr %41, align 8, !tbaa !35
  store i32 0, ptr %3, align 4, !tbaa !107
  store i8 0, ptr %39, align 4, !tbaa !109
  %52 = load i8, ptr %51, align 1, !tbaa !5
  %53 = zext i8 %52 to i64
  %54 = getelementptr inbounds [256 x i16], ptr @_sch_istable, i64 0, i64 %53
  %55 = load i16, ptr %54, align 2, !tbaa !38
  %56 = and i16 %55, 516
  %57 = icmp eq i16 %56, 0
  br i1 %57, label %58, label %49, !llvm.loop !118

58:                                               ; preds = %49, %40
  %59 = tail call fastcc zeroext i8 @forms_identifier_p(ptr noundef nonnull %0, i32 noundef 0, ptr noundef %3) #18, !range !57
  %60 = icmp eq i8 %59, 0
  br i1 %60, label %61, label %40, !llvm.loop !119

61:                                               ; preds = %58
  %62 = load ptr, ptr %0, align 8, !tbaa !13
  %63 = load ptr, ptr %62, align 8, !tbaa !35
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
  %75 = load ptr, ptr %74, align 8, !tbaa !61
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
  br i1 %85, label %116, label %86

86:                                               ; preds = %78
  %87 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 2, i32 2
  %88 = load i8, ptr %87, align 2, !tbaa !62
  %89 = icmp eq i8 %88, 0
  br i1 %89, label %90, label %116

90:                                               ; preds = %86
  %91 = and i32 %83, 2
  %92 = icmp eq i32 %91, 0
  br i1 %92, label %100, label %93

93:                                               ; preds = %90
  %94 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 2, i32 7
  %95 = load i8, ptr %94, align 1, !tbaa !63
  %96 = icmp eq i8 %95, 0
  br i1 %96, label %97, label %100

97:                                               ; preds = %93
  %98 = load ptr, ptr %79, align 8, !tbaa !8
  %99 = tail call zeroext i8 (ptr, i32, ptr, ...) @cpp_error(ptr noundef nonnull %0, i32 noundef 3, ptr noundef nonnull @.str.11, ptr noundef %98) #20
  br label %100

100:                                              ; preds = %97, %93, %90
  %101 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 54, i32 3
  %102 = load ptr, ptr %101, align 8, !tbaa !64
  %103 = icmp eq ptr %79, %102
  br i1 %103, label %104, label %110

104:                                              ; preds = %100
  %105 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 2, i32 6
  %106 = load i8, ptr %105, align 2, !tbaa !65
  %107 = icmp eq i8 %106, 0
  br i1 %107, label %108, label %110

108:                                              ; preds = %104
  %109 = tail call zeroext i8 (ptr, i32, ptr, ...) @cpp_error(ptr noundef nonnull %0, i32 noundef 2, ptr noundef nonnull @.str.12) #20
  br label %110

110:                                              ; preds = %108, %104, %100
  %111 = load i16, ptr %80, align 2
  %112 = icmp sgt i16 %111, -1
  br i1 %112, label %116, label %113

113:                                              ; preds = %110
  %114 = load ptr, ptr %79, align 8, !tbaa !8
  %115 = tail call zeroext i8 (ptr, i32, ptr, ...) @cpp_error(ptr noundef nonnull %0, i32 noundef 0, ptr noundef nonnull @.str.13, ptr noundef %114) #20
  br label %116

116:                                              ; preds = %110, %113, %86, %78
  ret ptr %79
}

; Function Attrs: optsize
declare zeroext i8 @cpp_error(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc i32 @cpp_in_system_header(ptr nocapture noundef readonly %0) unnamed_addr #10 {
  %2 = load ptr, ptr %0, align 8, !tbaa !13
  %3 = icmp eq ptr %2, null
  br i1 %3, label %8, label %4

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.cpp_buffer, ptr %2, i64 0, i32 15
  %6 = load i8, ptr %5, align 2, !tbaa !120
  %7 = zext i8 %6 to i32
  br label %8

8:                                                ; preds = %1, %4
  %9 = phi i32 [ %7, %4 ], [ 0, %1 ]
  ret i32 %9
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @skip_line_comment(ptr noundef %0) unnamed_addr #2 {
  %2 = load ptr, ptr %0, align 8, !tbaa !13
  %3 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 3
  %4 = load ptr, ptr %3, align 8, !tbaa !48
  %5 = getelementptr inbounds %struct.line_maps, ptr %4, i64 0, i32 8
  %6 = load i32, ptr %5, align 4, !tbaa !49
  %7 = load ptr, ptr %2, align 8, !tbaa !35
  %8 = load i8, ptr %7, align 1, !tbaa !5
  %9 = icmp eq i8 %8, 10
  br i1 %9, label %15, label %10

10:                                               ; preds = %1, %10
  %11 = phi ptr [ %12, %10 ], [ %7, %1 ]
  %12 = getelementptr inbounds i8, ptr %11, i64 1
  store ptr %12, ptr %2, align 8, !tbaa !35
  %13 = load i8, ptr %12, align 1, !tbaa !5
  %14 = icmp eq i8 %13, 10
  br i1 %14, label %15, label %10, !llvm.loop !121

15:                                               ; preds = %10, %1
  tail call void @_cpp_process_line_notes(ptr noundef nonnull %0, i32 noundef 1) #18
  %16 = load ptr, ptr %3, align 8, !tbaa !48
  %17 = getelementptr inbounds %struct.line_maps, ptr %16, i64 0, i32 8
  %18 = load i32, ptr %17, align 4, !tbaa !49
  %19 = icmp ne i32 %6, %18
  %20 = zext i1 %19 to i32
  ret i32 %20
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @save_comment(ptr nocapture noundef %0, ptr nocapture noundef %1, ptr noundef %2, i32 noundef %3) unnamed_addr #2 {
  %5 = load ptr, ptr %0, align 8, !tbaa !13
  %6 = load ptr, ptr %5, align 8, !tbaa !35
  %7 = ptrtoint ptr %6 to i64
  %8 = ptrtoint ptr %2 to i64
  %9 = sub i64 %7, %8
  %10 = trunc i64 %9 to i32
  %11 = getelementptr inbounds i8, ptr %6, i64 -1
  %12 = load i8, ptr %11, align 1, !tbaa !5
  %13 = zext i8 %12 to i64
  %14 = getelementptr inbounds [256 x i16], ptr @_sch_istable, i64 0, i64 %13
  %15 = load i16, ptr %14, align 2, !tbaa !38
  %16 = and i16 %15, 1024
  %17 = icmp eq i16 %16, 0
  %18 = zext i1 %17 to i32
  %19 = add i32 %18, %10
  %20 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 2
  %21 = load i8, ptr %20, align 8, !tbaa !82
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
  store i32 %26, ptr %30, align 8, !tbaa !5
  %31 = getelementptr inbounds %struct.cpp_token, ptr %1, i64 0, i32 3, i32 0, i32 1
  store ptr %28, ptr %31, align 8, !tbaa !5
  store i8 47, ptr %28, align 1, !tbaa !5
  %32 = getelementptr inbounds i8, ptr %28, i64 1
  %33 = add i32 %19, -1
  %34 = zext i32 %33 to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %32, ptr align 1 %2, i64 %34, i1 false)
  %35 = load i8, ptr %20, align 8, !tbaa !82
  %36 = icmp ne i8 %35, 0
  %37 = and i1 %23, %36
  br i1 %37, label %38, label %45

38:                                               ; preds = %4
  store i8 42, ptr %32, align 1, !tbaa !5
  %39 = add i32 %26, -2
  %40 = zext i32 %39 to i64
  %41 = getelementptr inbounds i8, ptr %28, i64 %40
  store i8 42, ptr %41, align 1, !tbaa !5
  %42 = add i32 %26, -1
  %43 = zext i32 %42 to i64
  %44 = getelementptr inbounds i8, ptr %28, i64 %43
  store i8 47, ptr %44, align 1, !tbaa !5
  br label %45

45:                                               ; preds = %38, %4
  tail call fastcc void @store_comment(ptr noundef nonnull %0, ptr noundef nonnull %1) #18
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef zeroext i8 @forms_identifier_p(ptr noundef %0, i32 noundef %1, ptr noundef %2) unnamed_addr #2 {
  %4 = load ptr, ptr %0, align 8, !tbaa !13
  %5 = load ptr, ptr %4, align 8, !tbaa !35
  %6 = load i8, ptr %5, align 1, !tbaa !5
  %7 = icmp eq i8 %6, 36
  br i1 %7, label %8, label %23

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 53, i32 24
  %10 = load i8, ptr %9, align 2, !tbaa !122
  %11 = icmp eq i8 %10, 0
  br i1 %11, label %43, label %12

12:                                               ; preds = %8
  %13 = getelementptr inbounds i8, ptr %5, i64 1
  store ptr %13, ptr %4, align 8, !tbaa !35
  %14 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 53, i32 26
  %15 = load i8, ptr %14, align 8, !tbaa !123
  %16 = icmp eq i8 %15, 0
  br i1 %16, label %43, label %17

17:                                               ; preds = %12
  %18 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 2, i32 2
  %19 = load i8, ptr %18, align 2, !tbaa !62
  %20 = icmp eq i8 %19, 0
  br i1 %20, label %21, label %43

21:                                               ; preds = %17
  store i8 0, ptr %14, align 8, !tbaa !123
  %22 = tail call zeroext i8 (ptr, i32, ptr, ...) @cpp_error(ptr noundef nonnull %0, i32 noundef 2, ptr noundef nonnull @.str.30) #20
  br label %43

23:                                               ; preds = %3
  %24 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 53, i32 25
  %25 = load i8, ptr %24, align 1, !tbaa !124
  %26 = icmp ne i8 %25, 0
  %27 = icmp eq i8 %6, 92
  %28 = and i1 %27, %26
  br i1 %28, label %29, label %43

29:                                               ; preds = %23
  %30 = getelementptr inbounds i8, ptr %5, i64 1
  %31 = load i8, ptr %30, align 1, !tbaa !5
  switch i8 %31, label %43 [
    i8 117, label %32
    i8 85, label %32
  ]

32:                                               ; preds = %29, %29
  %33 = getelementptr inbounds i8, ptr %5, i64 2
  store ptr %33, ptr %4, align 8, !tbaa !35
  %34 = getelementptr inbounds %struct.cpp_buffer, ptr %4, i64 0, i32 4
  %35 = load ptr, ptr %34, align 8, !tbaa !37
  %36 = icmp eq i32 %1, 0
  %37 = select i1 %36, i32 2, i32 1
  %38 = tail call i32 @_cpp_valid_ucn(ptr noundef nonnull %0, ptr noundef nonnull %4, ptr noundef %35, i32 noundef %37, ptr noundef %2) #20
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %40, label %43

40:                                               ; preds = %32
  %41 = load ptr, ptr %4, align 8, !tbaa !35
  %42 = getelementptr inbounds i8, ptr %41, i64 -2
  store ptr %42, ptr %4, align 8, !tbaa !35
  br label %43

43:                                               ; preds = %23, %40, %29, %32, %12, %17, %21, %8
  %44 = phi i8 [ 0, %8 ], [ 1, %21 ], [ 1, %17 ], [ 1, %12 ], [ 1, %32 ], [ 0, %29 ], [ 0, %40 ], [ 0, %23 ]
  ret i8 %44
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @create_literal(ptr nocapture noundef %0, ptr nocapture noundef writeonly %1, ptr nocapture noundef readonly %2, i32 noundef %3, i32 noundef %4) unnamed_addr #2 {
  %6 = add i32 %3, 1
  %7 = zext i32 %6 to i64
  %8 = tail call ptr @_cpp_unaligned_alloc(ptr noundef %0, i64 noundef %7) #18
  %9 = zext i32 %3 to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %8, ptr align 1 %2, i64 %9, i1 false)
  %10 = getelementptr inbounds i8, ptr %8, i64 %9
  store i8 0, ptr %10, align 1, !tbaa !5
  %11 = getelementptr inbounds %struct.cpp_token, ptr %1, i64 0, i32 1
  %12 = trunc i32 %4 to i8
  store i8 %12, ptr %11, align 4
  %13 = getelementptr inbounds %struct.cpp_token, ptr %1, i64 0, i32 3
  store i32 %3, ptr %13, align 8, !tbaa !5
  %14 = getelementptr inbounds %struct.cpp_token, ptr %1, i64 0, i32 3, i32 0, i32 1
  store ptr %8, ptr %14, align 8, !tbaa !5
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @cpp_token_len(ptr nocapture noundef readonly %0) local_unnamed_addr #10 {
  %2 = getelementptr inbounds %struct.cpp_token, ptr %0, i64 0, i32 1
  %3 = load i8, ptr %2, align 4
  %4 = zext i8 %3 to i64
  %5 = getelementptr inbounds [73 x %struct.token_spelling], ptr @token_spellings, i64 0, i64 %4
  %6 = load i32, ptr %5, align 16, !tbaa !125
  switch i32 %6, label %16 [
    i32 2, label %7
    i32 1, label %10
  ]

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.cpp_token, ptr %0, i64 0, i32 3
  %9 = load i32, ptr %8, align 8, !tbaa !5
  br label %16

10:                                               ; preds = %1
  %11 = getelementptr inbounds %struct.cpp_token, ptr %0, i64 0, i32 3
  %12 = load ptr, ptr %11, align 8, !tbaa !5
  %13 = getelementptr inbounds %struct.ht_identifier, ptr %12, i64 0, i32 1
  %14 = load i32, ptr %13, align 8, !tbaa !127
  %15 = mul i32 %14, 10
  br label %16

16:                                               ; preds = %1, %10, %7
  %17 = phi i32 [ %15, %10 ], [ %9, %7 ], [ 6, %1 ]
  ret i32 %17
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @cpp_spell_token(ptr noundef %0, ptr nocapture noundef readonly %1, ptr noundef writeonly %2, i8 noundef zeroext %3) local_unnamed_addr #2 {
  %5 = getelementptr inbounds %struct.cpp_token, ptr %1, i64 0, i32 1
  %6 = load i8, ptr %5, align 4
  %7 = zext i8 %6 to i32
  %8 = zext i8 %6 to i64
  %9 = getelementptr inbounds [73 x %struct.token_spelling], ptr @token_spellings, i64 0, i64 %8
  %10 = load i32, ptr %9, align 16, !tbaa !125
  switch i32 %10, label %92 [
    i32 0, label %11
    i32 1, label %37
    i32 2, label %79
    i32 3, label %88
  ]

11:                                               ; preds = %4
  %12 = getelementptr inbounds %struct.cpp_token, ptr %1, i64 0, i32 2
  %13 = load i16, ptr %12, align 2, !tbaa !78
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
  %24 = load ptr, ptr %23, align 8, !tbaa !128
  br label %25

25:                                               ; preds = %22, %17
  %26 = phi ptr [ %18, %17 ], [ %24, %22 ]
  %27 = load i8, ptr %26, align 1, !tbaa !5
  %28 = icmp eq i8 %27, 0
  br i1 %28, label %92, label %29

29:                                               ; preds = %25, %29
  %30 = phi i8 [ %35, %29 ], [ %27, %25 ]
  %31 = phi ptr [ %34, %29 ], [ %2, %25 ]
  %32 = phi ptr [ %33, %29 ], [ %26, %25 ]
  %33 = getelementptr inbounds i8, ptr %32, i64 1
  %34 = getelementptr inbounds i8, ptr %31, i64 1
  store i8 %30, ptr %31, align 1, !tbaa !5
  %35 = load i8, ptr %33, align 1, !tbaa !5
  %36 = icmp eq i8 %35, 0
  br i1 %36, label %92, label %29, !llvm.loop !129

37:                                               ; preds = %19, %4
  %38 = icmp eq i8 %3, 0
  %39 = getelementptr inbounds %struct.cpp_token, ptr %1, i64 0, i32 3
  %40 = load ptr, ptr %39, align 8, !tbaa !5
  %41 = load ptr, ptr %40, align 8, !tbaa !8
  %42 = getelementptr inbounds %struct.ht_identifier, ptr %40, i64 0, i32 1
  %43 = load i32, ptr %42, align 8, !tbaa !127
  br i1 %38, label %51, label %44

44:                                               ; preds = %37
  %45 = zext i32 %43 to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %2, ptr align 1 %41, i64 %45, i1 false)
  %46 = load ptr, ptr %39, align 8, !tbaa !5
  %47 = getelementptr inbounds %struct.ht_identifier, ptr %46, i64 0, i32 1
  %48 = load i32, ptr %47, align 8, !tbaa !127
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
  %58 = load i8, ptr %57, align 1, !tbaa !5
  %59 = icmp sgt i8 %58, -1
  br i1 %59, label %65, label %60

60:                                               ; preds = %53
  %61 = tail call fastcc i64 @utf8_to_ucn(ptr noundef %55, ptr noundef nonnull %57) #18, !range !130
  %62 = add nsw i64 %56, -1
  %63 = add nsw i64 %62, %61
  %64 = getelementptr inbounds i8, ptr %55, i64 10
  br label %70

65:                                               ; preds = %53
  %66 = load ptr, ptr %54, align 8, !tbaa !8
  %67 = getelementptr inbounds i8, ptr %66, i64 %56
  %68 = load i8, ptr %67, align 1, !tbaa !5
  %69 = getelementptr inbounds i8, ptr %55, i64 1
  store i8 %68, ptr %55, align 1, !tbaa !5
  br label %70

70:                                               ; preds = %60, %65
  %71 = phi i64 [ %63, %60 ], [ %56, %65 ]
  %72 = phi ptr [ %64, %60 ], [ %69, %65 ]
  %73 = add nsw i64 %71, 1
  %74 = load ptr, ptr %39, align 8, !tbaa !5
  %75 = getelementptr inbounds %struct.ht_identifier, ptr %74, i64 0, i32 1
  %76 = load i32, ptr %75, align 8, !tbaa !127
  %77 = zext i32 %76 to i64
  %78 = icmp ult i64 %73, %77
  br i1 %78, label %53, label %92, !llvm.loop !131

79:                                               ; preds = %4
  %80 = getelementptr inbounds %struct.cpp_token, ptr %1, i64 0, i32 3
  %81 = getelementptr inbounds %struct.cpp_token, ptr %1, i64 0, i32 3, i32 0, i32 1
  %82 = load ptr, ptr %81, align 8, !tbaa !5
  %83 = load i32, ptr %80, align 8, !tbaa !5
  %84 = zext i32 %83 to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %2, ptr align 1 %82, i64 %84, i1 false)
  %85 = load i32, ptr %80, align 8, !tbaa !5
  %86 = zext i32 %85 to i64
  %87 = getelementptr inbounds i8, ptr %2, i64 %86
  br label %92

88:                                               ; preds = %4
  %89 = getelementptr inbounds [73 x %struct.token_spelling], ptr @token_spellings, i64 0, i64 %8, i32 1
  %90 = load ptr, ptr %89, align 8, !tbaa !128
  %91 = tail call zeroext i8 (ptr, i32, ptr, ...) @cpp_error(ptr noundef %0, i32 noundef 4, ptr noundef nonnull @.str.9, ptr noundef %90) #20
  br label %92

92:                                               ; preds = %70, %29, %51, %25, %44, %4, %88, %79
  %93 = phi ptr [ %2, %4 ], [ %2, %88 ], [ %87, %79 ], [ %50, %44 ], [ %2, %25 ], [ %2, %51 ], [ %34, %29 ], [ %72, %70 ]
  ret ptr %93
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc ptr @cpp_digraph2name(i32 noundef %0) unnamed_addr #7 {
  %2 = add nsw i32 %0, -37
  %3 = sext i32 %2 to i64
  %4 = getelementptr inbounds [6 x ptr], ptr @digraph_spellings, i64 0, i64 %3
  %5 = load ptr, ptr %4, align 8, !tbaa !72
  ret ptr %5
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i64 @utf8_to_ucn(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1) unnamed_addr #2 {
  %3 = load i8, ptr %1, align 1, !tbaa !5
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
  br i1 %14, label %15, label %8, !llvm.loop !132

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
  %25 = load i8, ptr %24, align 1, !tbaa !5
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
  br i1 %36, label %37, label %20, !llvm.loop !133

37:                                               ; preds = %30
  %38 = zext nneg i32 %11 to i64
  br label %39

39:                                               ; preds = %37, %6, %15
  %40 = phi i64 [ 1, %15 ], [ 0, %6 ], [ %38, %37 ]
  %41 = phi i64 [ %18, %15 ], [ %7, %6 ], [ %34, %37 ]
  %42 = getelementptr inbounds i8, ptr %0, i64 1
  store i8 92, ptr %0, align 1, !tbaa !5
  %43 = getelementptr inbounds i8, ptr %0, i64 2
  store i8 85, ptr %42, align 1, !tbaa !5
  br label %44

44:                                               ; preds = %39, %44
  %45 = phi i64 [ 7, %39 ], [ %53, %44 ]
  %46 = phi ptr [ %43, %39 ], [ %52, %44 ]
  %47 = shl nsw i64 %45, 2
  %48 = lshr i64 %41, %47
  %49 = and i64 %48, 15
  %50 = getelementptr inbounds [17 x i8], ptr @.str.103, i64 0, i64 %49
  %51 = load i8, ptr %50, align 1, !tbaa !5
  %52 = getelementptr inbounds i8, ptr %46, i64 1
  store i8 %51, ptr %46, align 1, !tbaa !5
  %53 = add nsw i64 %45, -1
  %54 = icmp eq i64 %45, 0
  br i1 %54, label %55, label %44, !llvm.loop !134

55:                                               ; preds = %44
  ret i64 %40
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef ptr @cpp_token_as_text(ptr noundef %0, ptr nocapture noundef readonly %1) local_unnamed_addr #2 {
  %3 = tail call i32 @cpp_token_len(ptr noundef %1) #18
  %4 = add i32 %3, 1
  %5 = zext i32 %4 to i64
  %6 = tail call ptr @_cpp_unaligned_alloc(ptr noundef %0, i64 noundef %5) #18
  %7 = tail call ptr @cpp_spell_token(ptr noundef %0, ptr noundef %1, ptr noundef %6, i8 noundef zeroext 0) #18
  store i8 0, ptr %7, align 1, !tbaa !5
  ret ptr %6
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @_cpp_unaligned_alloc(ptr nocapture noundef %0, i64 noundef %1) local_unnamed_addr #2 {
  %3 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 6
  %4 = load ptr, ptr %3, align 8, !tbaa !135
  %5 = getelementptr inbounds %struct._cpp_buff, ptr %4, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !136
  %7 = getelementptr inbounds %struct._cpp_buff, ptr %4, i64 0, i32 3
  %8 = load ptr, ptr %7, align 8, !tbaa !138
  %9 = ptrtoint ptr %8 to i64
  %10 = ptrtoint ptr %6 to i64
  %11 = sub i64 %9, %10
  %12 = icmp ult i64 %11, %1
  br i1 %12, label %13, label %18

13:                                               ; preds = %2
  %14 = tail call ptr @_cpp_get_buff(ptr noundef nonnull %0, i64 noundef %1) #18
  %15 = load ptr, ptr %3, align 8, !tbaa !135
  store ptr %15, ptr %14, align 8, !tbaa !139
  store ptr %14, ptr %3, align 8, !tbaa !135
  %16 = getelementptr inbounds %struct._cpp_buff, ptr %14, i64 0, i32 2
  %17 = load ptr, ptr %16, align 8, !tbaa !136
  br label %18

18:                                               ; preds = %13, %2
  %19 = phi ptr [ %14, %13 ], [ %4, %2 ]
  %20 = phi ptr [ %17, %13 ], [ %6, %2 ]
  %21 = getelementptr inbounds i8, ptr %20, i64 %1
  %22 = getelementptr inbounds %struct._cpp_buff, ptr %19, i64 0, i32 2
  store ptr %21, ptr %22, align 8, !tbaa !136
  ret ptr %20
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @cpp_type2name(i32 noundef %0, i8 noundef zeroext %1) local_unnamed_addr #2 {
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
  %16 = load ptr, ptr %15, align 8, !tbaa !128
  br label %17

17:                                               ; preds = %13, %11, %6
  %18 = phi ptr [ %7, %6 ], [ %12, %11 ], [ %16, %13 ]
  ret ptr %18
}

; Function Attrs: optsize
declare ptr @cpp_named_operator2name(i32 noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @cpp_output_token(ptr nocapture noundef readonly %0, ptr nocapture noundef %1) local_unnamed_addr #2 {
  %3 = alloca [10 x i8], align 1
  %4 = getelementptr inbounds %struct.cpp_token, ptr %0, i64 0, i32 1
  %5 = load i8, ptr %4, align 4
  %6 = zext i8 %5 to i32
  %7 = zext i8 %5 to i64
  %8 = getelementptr inbounds [73 x %struct.token_spelling], ptr @token_spellings, i64 0, i64 %7
  %9 = load i32, ptr %8, align 16, !tbaa !125
  switch i32 %9, label %74 [
    i32 0, label %10
    i32 1, label %35
    i32 2, label %67
  ]

10:                                               ; preds = %2
  %11 = getelementptr inbounds %struct.cpp_token, ptr %0, i64 0, i32 2
  %12 = load i16, ptr %11, align 2, !tbaa !78
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
  %23 = load ptr, ptr %22, align 8, !tbaa !128
  br label %24

24:                                               ; preds = %21, %16
  %25 = phi ptr [ %17, %16 ], [ %23, %21 ]
  %26 = load i8, ptr %25, align 1, !tbaa !5
  br label %27

27:                                               ; preds = %27, %24
  %28 = phi i8 [ %26, %24 ], [ %33, %27 ]
  %29 = phi ptr [ %25, %24 ], [ %32, %27 ]
  %30 = zext i8 %28 to i32
  %31 = tail call i32 @putc(i32 noundef %30, ptr noundef %1) #18
  %32 = getelementptr inbounds i8, ptr %29, i64 1
  %33 = load i8, ptr %32, align 1, !tbaa !5
  %34 = icmp eq i8 %33, 0
  br i1 %34, label %74, label %27, !llvm.loop !140

35:                                               ; preds = %18, %2
  %36 = getelementptr inbounds %struct.cpp_token, ptr %0, i64 0, i32 3
  %37 = load ptr, ptr %36, align 8, !tbaa !5
  %38 = load ptr, ptr %37, align 8, !tbaa !8
  %39 = getelementptr inbounds %struct.ht_identifier, ptr %37, i64 0, i32 1
  %40 = load i32, ptr %39, align 8, !tbaa !127
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %74, label %42

42:                                               ; preds = %35, %59
  %43 = phi ptr [ %62, %59 ], [ %37, %35 ]
  %44 = phi i64 [ %61, %59 ], [ 0, %35 ]
  %45 = getelementptr inbounds i8, ptr %38, i64 %44
  %46 = load i8, ptr %45, align 1, !tbaa !5
  %47 = icmp sgt i8 %46, -1
  br i1 %47, label %53, label %48

48:                                               ; preds = %42
  call void @llvm.lifetime.start.p0(i64 10, ptr nonnull %3) #22
  %49 = call fastcc i64 @utf8_to_ucn(ptr noundef nonnull %3, ptr noundef nonnull %45) #18, !range !130
  %50 = add nsw i64 %44, -1
  %51 = add nsw i64 %50, %49
  %52 = call i64 @fwrite(ptr noundef nonnull %3, i64 noundef 1, i64 noundef 10, ptr noundef %1) #18
  call void @llvm.lifetime.end.p0(i64 10, ptr nonnull %3) #22
  br label %59

53:                                               ; preds = %42
  %54 = load ptr, ptr %43, align 8, !tbaa !8
  %55 = getelementptr inbounds i8, ptr %54, i64 %44
  %56 = load i8, ptr %55, align 1, !tbaa !5
  %57 = zext i8 %56 to i32
  %58 = tail call i32 @fputc(i32 noundef %57, ptr noundef %1) #18
  br label %59

59:                                               ; preds = %48, %53
  %60 = phi i64 [ %51, %48 ], [ %44, %53 ]
  %61 = add nsw i64 %60, 1
  %62 = load ptr, ptr %36, align 8, !tbaa !5
  %63 = getelementptr inbounds %struct.ht_identifier, ptr %62, i64 0, i32 1
  %64 = load i32, ptr %63, align 8, !tbaa !127
  %65 = zext i32 %64 to i64
  %66 = icmp ult i64 %61, %65
  br i1 %66, label %42, label %74, !llvm.loop !141

67:                                               ; preds = %2
  %68 = getelementptr inbounds %struct.cpp_token, ptr %0, i64 0, i32 3
  %69 = getelementptr inbounds %struct.cpp_token, ptr %0, i64 0, i32 3, i32 0, i32 1
  %70 = load ptr, ptr %69, align 8, !tbaa !5
  %71 = load i32, ptr %68, align 8, !tbaa !5
  %72 = zext i32 %71 to i64
  %73 = tail call i64 @fwrite(ptr noundef %70, i64 noundef 1, i64 noundef %72, ptr noundef %1) #18
  br label %74

74:                                               ; preds = %59, %27, %35, %2, %67
  ret void
}

; Function Attrs: nofree nounwind optsize
declare noundef i32 @putc(i32 noundef, ptr nocapture noundef) local_unnamed_addr #11

; Function Attrs: nofree nounwind optsize
declare noundef i64 @fwrite(ptr nocapture noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #11

; Function Attrs: nofree nounwind optsize
declare noundef i32 @fputc(i32 noundef, ptr nocapture noundef) local_unnamed_addr #11

; Function Attrs: mustprogress nofree noinline nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @_cpp_equiv_tokens(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.cpp_token, ptr %0, i64 0, i32 1
  %4 = load i8, ptr %3, align 4
  %5 = getelementptr inbounds %struct.cpp_token, ptr %1, i64 0, i32 1
  %6 = load i8, ptr %5, align 4
  %7 = icmp eq i8 %4, %6
  br i1 %7, label %8, label %54

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.cpp_token, ptr %0, i64 0, i32 2
  %10 = load i16, ptr %9, align 2, !tbaa !78
  %11 = getelementptr inbounds %struct.cpp_token, ptr %1, i64 0, i32 2
  %12 = load i16, ptr %11, align 2, !tbaa !78
  %13 = icmp eq i16 %10, %12
  br i1 %13, label %14, label %54

14:                                               ; preds = %8
  %15 = zext i8 %4 to i64
  %16 = getelementptr inbounds [73 x %struct.token_spelling], ptr @token_spellings, i64 0, i64 %15
  %17 = load i32, ptr %16, align 16, !tbaa !125
  switch i32 %17, label %18 [
    i32 2, label %40
    i32 3, label %26
    i32 1, label %34
  ]

18:                                               ; preds = %14
  %19 = icmp eq i8 %4, 38
  br i1 %19, label %20, label %54

20:                                               ; preds = %18
  %21 = getelementptr inbounds %struct.cpp_token, ptr %0, i64 0, i32 3
  %22 = load i32, ptr %21, align 8, !tbaa !5
  %23 = getelementptr inbounds %struct.cpp_token, ptr %1, i64 0, i32 3
  %24 = load i32, ptr %23, align 8, !tbaa !5
  %25 = icmp eq i32 %22, %24
  br label %54

26:                                               ; preds = %14
  %27 = icmp eq i8 %4, 69
  br i1 %27, label %28, label %54

28:                                               ; preds = %26
  %29 = getelementptr inbounds %struct.cpp_token, ptr %0, i64 0, i32 3
  %30 = load i32, ptr %29, align 8, !tbaa !5
  %31 = getelementptr inbounds %struct.cpp_token, ptr %1, i64 0, i32 3
  %32 = load i32, ptr %31, align 8, !tbaa !5
  %33 = icmp eq i32 %30, %32
  br label %54

34:                                               ; preds = %14
  %35 = getelementptr inbounds %struct.cpp_token, ptr %0, i64 0, i32 3
  %36 = load ptr, ptr %35, align 8, !tbaa !5
  %37 = getelementptr inbounds %struct.cpp_token, ptr %1, i64 0, i32 3
  %38 = load ptr, ptr %37, align 8, !tbaa !5
  %39 = icmp eq ptr %36, %38
  br label %54

40:                                               ; preds = %14
  %41 = getelementptr inbounds %struct.cpp_token, ptr %0, i64 0, i32 3
  %42 = load i32, ptr %41, align 8, !tbaa !5
  %43 = getelementptr inbounds %struct.cpp_token, ptr %1, i64 0, i32 3
  %44 = load i32, ptr %43, align 8, !tbaa !5
  %45 = icmp eq i32 %42, %44
  br i1 %45, label %46, label %54

46:                                               ; preds = %40
  %47 = getelementptr inbounds %struct.cpp_token, ptr %0, i64 0, i32 3, i32 0, i32 1
  %48 = load ptr, ptr %47, align 8, !tbaa !5
  %49 = getelementptr inbounds %struct.cpp_token, ptr %1, i64 0, i32 3, i32 0, i32 1
  %50 = load ptr, ptr %49, align 8, !tbaa !5
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
define dso_local i32 @cpp_avoid_paste(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) local_unnamed_addr #5 {
  %4 = getelementptr inbounds %struct.cpp_token, ptr %1, i64 0, i32 1
  %5 = load i8, ptr %4, align 4
  %6 = zext i8 %5 to i32
  %7 = getelementptr inbounds %struct.cpp_token, ptr %2, i64 0, i32 1
  %8 = load i8, ptr %7, align 4
  %9 = zext i8 %8 to i32
  %10 = getelementptr inbounds %struct.cpp_token, ptr %1, i64 0, i32 2
  %11 = load i16, ptr %10, align 2, !tbaa !78
  %12 = and i16 %11, 16
  %13 = icmp eq i16 %12, 0
  %14 = select i1 %13, i32 %6, i32 53
  %15 = getelementptr inbounds %struct.cpp_token, ptr %2, i64 0, i32 2
  %16 = load i16, ptr %15, align 2, !tbaa !78
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
  %29 = load i32, ptr %28, align 16, !tbaa !125
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %31, label %41

31:                                               ; preds = %26
  %32 = getelementptr inbounds [73 x %struct.token_spelling], ptr @token_spellings, i64 0, i64 %27, i32 1
  br label %33

33:                                               ; preds = %31, %22
  %34 = phi ptr [ %25, %22 ], [ %32, %31 ]
  %35 = load ptr, ptr %34, align 8, !tbaa !72
  %36 = load i8, ptr %35, align 1, !tbaa !5
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
  %81 = tail call fastcc i32 @name_p(ptr noundef %0, ptr noundef nonnull %80) #18, !range !99
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
  %96 = load ptr, ptr %95, align 8, !tbaa !5
  %97 = load i8, ptr %96, align 1, !tbaa !5
  %98 = icmp eq i8 %97, 92
  %99 = icmp eq i32 %19, 53
  %100 = select i1 %98, i1 %99, i1 false
  br i1 %100, label %115, label %101

101:                                              ; preds = %94
  %102 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 53, i32 4
  %103 = load i8, ptr %102, align 2, !tbaa !142
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
define internal fastcc noundef i32 @name_p(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) unnamed_addr #5 {
  %3 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 53, i32 24
  %4 = load i32, ptr %1, align 8, !tbaa !112
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %27, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.cpp_string, ptr %1, i64 0, i32 1
  %8 = load ptr, ptr %7, align 8, !tbaa !114
  %9 = zext i32 %4 to i64
  br label %10

10:                                               ; preds = %6, %24
  %11 = phi i64 [ 0, %6 ], [ %25, %24 ]
  %12 = getelementptr inbounds i8, ptr %8, i64 %11
  %13 = load i8, ptr %12, align 1, !tbaa !5
  %14 = zext i8 %13 to i64
  %15 = getelementptr inbounds [256 x i16], ptr @_sch_istable, i64 0, i64 %14
  %16 = load i16, ptr %15, align 2, !tbaa !38
  %17 = and i16 %16, 516
  %18 = icmp eq i16 %17, 0
  br i1 %18, label %19, label %24

19:                                               ; preds = %10
  %20 = icmp eq i8 %13, 36
  br i1 %20, label %21, label %27

21:                                               ; preds = %19
  %22 = load i8, ptr %3, align 2, !tbaa !122
  %23 = icmp eq i8 %22, 0
  br i1 %23, label %27, label %24

24:                                               ; preds = %10, %21
  %25 = add nuw nsw i64 %11, 1
  %26 = icmp eq i64 %25, %9
  br i1 %26, label %27, label %10, !llvm.loop !143

27:                                               ; preds = %21, %19, %24, %2
  %28 = phi i32 [ 1, %2 ], [ 1, %24 ], [ 0, %19 ], [ 0, %21 ]
  ret i32 %28
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @cpp_output_line(ptr noundef %0, ptr nocapture noundef %1) local_unnamed_addr #2 {
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
  %11 = load i16, ptr %10, align 2, !tbaa !78
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
  br i1 %19, label %20, label %7, !llvm.loop !144

20:                                               ; preds = %16, %2
  %21 = tail call i32 @putc(i32 noundef 10, ptr noundef %1) #18
  ret void
}

; Function Attrs: optsize
declare ptr @cpp_get_token(ptr noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @cpp_output_line_to_string(ptr noundef %0, ptr noundef %1) local_unnamed_addr #2 {
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
  %12 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %11, ptr noundef nonnull dereferenceable(1) @.str.10, ptr noundef nonnull %1) #20
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
  %48 = load i16, ptr %47, align 2, !tbaa !78
  %49 = and i16 %48, 1
  %50 = icmp eq i16 %49, 0
  br i1 %50, label %55, label %51

51:                                               ; preds = %36
  %52 = add i32 %45, 1
  %53 = and i64 %44, 4294967295
  %54 = getelementptr inbounds i8, ptr %38, i64 %53
  store i8 32, ptr %54, align 1, !tbaa !5
  br label %55

55:                                               ; preds = %51, %36
  %56 = phi i32 [ %52, %51 ], [ %45, %36 ]
  %57 = getelementptr inbounds %struct.cpp_token, ptr %46, i64 0, i32 1
  %58 = load i8, ptr %57, align 4
  %59 = icmp eq i8 %58, 22
  br i1 %59, label %60, label %22, !llvm.loop !145

60:                                               ; preds = %55, %14
  %61 = phi ptr [ %15, %14 ], [ %38, %55 ]
  %62 = phi i32 [ %17, %14 ], [ %56, %55 ]
  %63 = zext i32 %62 to i64
  %64 = getelementptr inbounds i8, ptr %61, i64 %63
  store i8 0, ptr %64, align 1, !tbaa !5
  ret ptr %61
}

; Function Attrs: mustprogress nofree noinline nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i64 @ustrlen(ptr nocapture noundef readonly %0) unnamed_addr #1 {
  %2 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #19
  ret i64 %2
}

; Function Attrs: nofree nounwind optsize
declare noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #11

; Function Attrs: optsize
declare ptr @xrealloc(ptr noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @_cpp_release_buff(ptr nocapture noundef %0, ptr noundef %1) local_unnamed_addr #12 {
  br label %3

3:                                                ; preds = %3, %2
  %4 = phi ptr [ %1, %2 ], [ %5, %3 ]
  %5 = load ptr, ptr %4, align 8, !tbaa !139
  %6 = icmp eq ptr %5, null
  br i1 %6, label %7, label %3, !llvm.loop !146

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 7
  %9 = load ptr, ptr %8, align 8, !tbaa !147
  store ptr %9, ptr %4, align 8, !tbaa !139
  store ptr %1, ptr %8, align 8, !tbaa !147
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @_cpp_get_buff(ptr nocapture noundef %0, i64 noundef %1) local_unnamed_addr #2 {
  %3 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 7
  %4 = load ptr, ptr %3, align 8, !tbaa !72
  %5 = icmp eq ptr %4, null
  br i1 %5, label %20, label %6

6:                                                ; preds = %2
  %7 = mul i64 %1, 3
  %8 = lshr i64 %7, 1
  %9 = add nuw i64 %8, 8000
  %10 = getelementptr inbounds %struct._cpp_buff, ptr %4, i64 0, i32 3
  %11 = load ptr, ptr %10, align 8, !tbaa !138
  %12 = getelementptr inbounds %struct._cpp_buff, ptr %4, i64 0, i32 1
  %13 = load ptr, ptr %12, align 8, !tbaa !148
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
  %24 = load ptr, ptr %23, align 8, !tbaa !138
  %25 = getelementptr inbounds %struct._cpp_buff, ptr %35, i64 0, i32 1
  %26 = load ptr, ptr %25, align 8, !tbaa !148
  %27 = ptrtoint ptr %24 to i64
  %28 = ptrtoint ptr %26 to i64
  %29 = sub i64 %27, %28
  %30 = icmp ult i64 %29, %1
  %31 = icmp ugt i64 %29, %9
  %32 = select i1 %30, i1 true, i1 %31
  br i1 %32, label %33, label %37

33:                                               ; preds = %6, %22
  %34 = phi ptr [ %35, %22 ], [ %4, %6 ]
  %35 = load ptr, ptr %34, align 8, !tbaa !72
  %36 = icmp eq ptr %35, null
  br i1 %36, label %20, label %22

37:                                               ; preds = %22, %6
  %38 = phi ptr [ %4, %6 ], [ %35, %22 ]
  %39 = phi ptr [ %3, %6 ], [ %34, %22 ]
  %40 = getelementptr inbounds %struct._cpp_buff, ptr %38, i64 0, i32 1
  %41 = load ptr, ptr %38, align 8, !tbaa !139
  store ptr %41, ptr %39, align 8, !tbaa !72
  store ptr null, ptr %38, align 8, !tbaa !139
  %42 = load ptr, ptr %40, align 8, !tbaa !148
  %43 = getelementptr inbounds %struct._cpp_buff, ptr %38, i64 0, i32 2
  store ptr %42, ptr %43, align 8, !tbaa !136
  br label %44

44:                                               ; preds = %20, %37
  %45 = phi ptr [ %38, %37 ], [ %21, %20 ]
  ret ptr %45
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef ptr @new_buff(i64 noundef %0) unnamed_addr #2 {
  %2 = tail call i64 @llvm.umax.i64(i64 %0, i64 8000)
  %3 = add i64 %2, 7
  %4 = and i64 %3, -8
  %5 = add i64 %4, 32
  %6 = tail call ptr @xmalloc(i64 noundef %5) #20
  %7 = getelementptr inbounds i8, ptr %6, i64 %4
  %8 = getelementptr inbounds %struct._cpp_buff, ptr %7, i64 0, i32 1
  store ptr %6, ptr %8, align 8, !tbaa !148
  %9 = getelementptr inbounds %struct._cpp_buff, ptr %7, i64 0, i32 2
  store ptr %6, ptr %9, align 8, !tbaa !136
  %10 = getelementptr inbounds %struct._cpp_buff, ptr %7, i64 0, i32 3
  store ptr %7, ptr %10, align 8, !tbaa !138
  store ptr null, ptr %7, align 8, !tbaa !139
  ret ptr %7
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @_cpp_append_extend_buff(ptr nocapture noundef %0, ptr nocapture noundef %1, i64 noundef %2) local_unnamed_addr #2 {
  %4 = getelementptr inbounds %struct._cpp_buff, ptr %1, i64 0, i32 3
  %5 = load ptr, ptr %4, align 8, !tbaa !138
  %6 = getelementptr inbounds %struct._cpp_buff, ptr %1, i64 0, i32 2
  %7 = load ptr, ptr %6, align 8, !tbaa !136
  %8 = ptrtoint ptr %5 to i64
  %9 = ptrtoint ptr %7 to i64
  %10 = sub i64 %8, %9
  %11 = shl nsw i64 %10, 1
  %12 = add i64 %11, %2
  %13 = tail call ptr @_cpp_get_buff(ptr noundef %0, i64 noundef %12) #18
  store ptr %13, ptr %1, align 8, !tbaa !139
  %14 = getelementptr inbounds %struct._cpp_buff, ptr %13, i64 0, i32 1
  %15 = load ptr, ptr %14, align 8, !tbaa !148
  %16 = load ptr, ptr %6, align 8, !tbaa !136
  %17 = load ptr, ptr %4, align 8, !tbaa !138
  %18 = ptrtoint ptr %17 to i64
  %19 = ptrtoint ptr %16 to i64
  %20 = sub i64 %18, %19
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %15, ptr align 1 %16, i64 %20, i1 false)
  ret ptr %13
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @_cpp_extend_buff(ptr nocapture noundef %0, ptr nocapture noundef %1, i64 noundef %2) local_unnamed_addr #2 {
  %4 = load ptr, ptr %1, align 8, !tbaa !72
  %5 = getelementptr inbounds %struct._cpp_buff, ptr %4, i64 0, i32 3
  %6 = load ptr, ptr %5, align 8, !tbaa !138
  %7 = getelementptr inbounds %struct._cpp_buff, ptr %4, i64 0, i32 2
  %8 = load ptr, ptr %7, align 8, !tbaa !136
  %9 = ptrtoint ptr %6 to i64
  %10 = ptrtoint ptr %8 to i64
  %11 = sub i64 %9, %10
  %12 = shl nsw i64 %11, 1
  %13 = add i64 %12, %2
  %14 = tail call ptr @_cpp_get_buff(ptr noundef %0, i64 noundef %13) #18
  %15 = getelementptr inbounds %struct._cpp_buff, ptr %14, i64 0, i32 1
  %16 = load ptr, ptr %15, align 8, !tbaa !148
  %17 = load ptr, ptr %7, align 8, !tbaa !136
  %18 = load ptr, ptr %5, align 8, !tbaa !138
  %19 = ptrtoint ptr %18 to i64
  %20 = ptrtoint ptr %17 to i64
  %21 = sub i64 %19, %20
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %16, ptr align 1 %17, i64 %21, i1 false)
  store ptr %4, ptr %14, align 8, !tbaa !139
  store ptr %14, ptr %1, align 8, !tbaa !72
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @_cpp_free_buff(ptr noundef readonly %0) local_unnamed_addr #2 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %9, label %3

3:                                                ; preds = %1, %3
  %4 = phi ptr [ %5, %3 ], [ %0, %1 ]
  %5 = load ptr, ptr %4, align 8, !tbaa !139
  %6 = getelementptr inbounds %struct._cpp_buff, ptr %4, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !148
  tail call void @free(ptr noundef %7) #20
  %8 = icmp eq ptr %5, null
  br i1 %8, label %9, label %3, !llvm.loop !149

9:                                                ; preds = %3, %1
  ret void
}

; Function Attrs: mustprogress nounwind optsize willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr nocapture noundef) local_unnamed_addr #13

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @_cpp_aligned_alloc(ptr nocapture noundef %0, i64 noundef %1) local_unnamed_addr #2 {
  %3 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 5
  %4 = load ptr, ptr %3, align 8, !tbaa !150
  %5 = getelementptr inbounds %struct._cpp_buff, ptr %4, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !136
  %7 = getelementptr inbounds %struct._cpp_buff, ptr %4, i64 0, i32 3
  %8 = load ptr, ptr %7, align 8, !tbaa !138
  %9 = ptrtoint ptr %8 to i64
  %10 = ptrtoint ptr %6 to i64
  %11 = sub i64 %9, %10
  %12 = icmp ult i64 %11, %1
  br i1 %12, label %13, label %18

13:                                               ; preds = %2
  %14 = tail call ptr @_cpp_get_buff(ptr noundef nonnull %0, i64 noundef %1) #18
  %15 = load ptr, ptr %3, align 8, !tbaa !150
  store ptr %15, ptr %14, align 8, !tbaa !139
  store ptr %14, ptr %3, align 8, !tbaa !150
  %16 = getelementptr inbounds %struct._cpp_buff, ptr %14, i64 0, i32 2
  %17 = load ptr, ptr %16, align 8, !tbaa !136
  br label %18

18:                                               ; preds = %13, %2
  %19 = phi ptr [ %14, %13 ], [ %4, %2 ]
  %20 = phi ptr [ %17, %13 ], [ %6, %2 ]
  %21 = getelementptr inbounds i8, ptr %20, i64 %1
  %22 = getelementptr inbounds %struct._cpp_buff, ptr %19, i64 0, i32 2
  store ptr %21, ptr %22, align 8, !tbaa !136
  ret ptr %20
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define dso_local i32 @cpp_token_val_index(ptr nocapture noundef readonly %0) local_unnamed_addr #14 {
  %2 = getelementptr inbounds %struct.cpp_token, ptr %0, i64 0, i32 1
  %3 = load i8, ptr %2, align 4
  %4 = zext i8 %3 to i64
  %5 = getelementptr inbounds [73 x %struct.token_spelling], ptr @token_spellings, i64 0, i64 %4
  %6 = load i32, ptr %5, align 16, !tbaa !125
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

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(argmem: read)
declare i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #15

; Function Attrs: optsize
declare ptr @ht_lookup_with_hash(ptr noundef, ptr noundef, i64 noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @lex_raw_string(ptr noundef %0, ptr nocapture noundef %1, ptr noundef %2, ptr noundef %3) unnamed_addr #2 {
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca i8, align 1
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #22
  store ptr null, ptr %5, align 8, !tbaa !72
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #22
  store ptr null, ptr %6, align 8, !tbaa !72
  %8 = load ptr, ptr %0, align 8, !tbaa !13
  %9 = getelementptr inbounds %struct.cpp_buffer, ptr %8, i64 0, i32 5
  %10 = load ptr, ptr %9, align 8, !tbaa !44
  %11 = getelementptr inbounds %struct.cpp_buffer, ptr %8, i64 0, i32 6
  %12 = load i32, ptr %11, align 8, !tbaa !32
  %13 = zext i32 %12 to i64
  %14 = getelementptr inbounds %struct._cpp_line_note, ptr %10, i64 %13
  %15 = load i8, ptr %2, align 1, !tbaa !5
  switch i8 %15, label %22 [
    i8 76, label %23
    i8 85, label %21
    i8 117, label %16
  ]

16:                                               ; preds = %4
  %17 = getelementptr inbounds i8, ptr %2, i64 1
  %18 = load i8, ptr %17, align 1, !tbaa !5
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
  %29 = load i8, ptr %28, align 1, !tbaa !5
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
  br i1 %32, label %40, label %26, !llvm.loop !151

33:                                               ; preds = %26
  %34 = trunc i64 %27 to i32
  %35 = and i64 %27, 4294967295
  %36 = getelementptr inbounds i8, ptr %25, i64 %35
  %37 = load i8, ptr %36, align 1, !tbaa !5
  %38 = zext i8 %37 to i32
  %39 = icmp eq i8 %37, 40
  br i1 %39, label %74, label %52

40:                                               ; preds = %30
  %41 = getelementptr inbounds i8, ptr %3, i64 17
  %42 = load i8, ptr %41, align 1, !tbaa !5
  %43 = icmp eq i8 %42, 40
  br i1 %43, label %74, label %44

44:                                               ; preds = %40
  %45 = getelementptr inbounds %struct.cpp_buffer, ptr %8, i64 0, i32 1
  %46 = load ptr, ptr %45, align 8, !tbaa !34
  %47 = ptrtoint ptr %41 to i64
  %48 = ptrtoint ptr %46 to i64
  %49 = sub i64 %47, %48
  %50 = trunc i64 %49 to i32
  %51 = add i32 %50, 1
  br label %61

52:                                               ; preds = %33
  %53 = getelementptr inbounds %struct.cpp_buffer, ptr %8, i64 0, i32 1
  %54 = load ptr, ptr %53, align 8, !tbaa !34
  %55 = ptrtoint ptr %36 to i64
  %56 = ptrtoint ptr %54 to i64
  %57 = sub i64 %55, %56
  %58 = trunc i64 %57 to i32
  %59 = add i32 %58, 1
  %60 = icmp eq i32 %34, 16
  br i1 %60, label %61, label %65

61:                                               ; preds = %44, %52
  %62 = phi i32 [ %51, %44 ], [ %59, %52 ]
  %63 = load i32, ptr %1, align 8, !tbaa !86
  %64 = tail call zeroext i8 (ptr, i32, i32, i32, ptr, ...) @cpp_error_with_line(ptr noundef nonnull %0, i32 noundef 3, i32 noundef %63, i32 noundef %62, ptr noundef nonnull @.str.22) #20
  br label %68

65:                                               ; preds = %52
  %66 = load i32, ptr %1, align 8, !tbaa !86
  %67 = tail call zeroext i8 (ptr, i32, i32, i32, ptr, ...) @cpp_error_with_line(ptr noundef nonnull %0, i32 noundef 3, i32 noundef %66, i32 noundef %59, ptr noundef nonnull @.str.23, i32 noundef %38) #20
  br label %68

68:                                               ; preds = %65, %61
  %69 = load ptr, ptr %0, align 8, !tbaa !13
  store ptr %3, ptr %69, align 8, !tbaa !35
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
  %100 = load ptr, ptr %99, align 8, !tbaa !45
  %101 = icmp ult ptr %100, %96
  %102 = getelementptr inbounds %struct._cpp_line_note, ptr %99, i64 1
  br i1 %101, label %98, label %103, !llvm.loop !152

103:                                              ; preds = %98
  %104 = icmp eq ptr %100, %96
  br i1 %104, label %105, label %182

105:                                              ; preds = %103, %174
  %106 = phi ptr [ %178, %174 ], [ %97, %103 ]
  %107 = phi ptr [ %177, %174 ], [ %96, %103 ]
  %108 = phi i64 [ %176, %174 ], [ %95, %103 ]
  %109 = phi ptr [ %179, %174 ], [ %99, %103 ]
  %110 = getelementptr inbounds %struct._cpp_line_note, ptr %109, i64 0, i32 1
  %111 = load i32, ptr %110, align 8, !tbaa !47
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
  call fastcc void @bufring_append(ptr noundef nonnull %0, ptr noundef nonnull @.str.24, i64 noundef 1, ptr noundef nonnull %5, ptr noundef nonnull %6) #18
  %116 = add i64 %108, 1
  %117 = add i64 %116, %115
  br label %118

118:                                              ; preds = %171, %112
  %119 = phi ptr [ %144, %171 ], [ %109, %112 ]
  %120 = phi i64 [ %172, %171 ], [ %117, %112 ]
  %121 = getelementptr inbounds %struct._cpp_line_note, ptr %119, i64 0, i32 1
  %122 = load i32, ptr %121, align 8, !tbaa !47
  %123 = icmp eq i32 %122, 32
  br i1 %123, label %124, label %126

124:                                              ; preds = %118
  call fastcc void @bufring_append(ptr noundef nonnull %0, ptr noundef nonnull @.str.25, i64 noundef 1, ptr noundef nonnull %5, ptr noundef nonnull %6) #18
  %125 = add i64 %120, 1
  br label %126

126:                                              ; preds = %118, %124
  %127 = phi i64 [ %125, %124 ], [ %120, %118 ]
  call fastcc void @bufring_append(ptr noundef nonnull %0, ptr noundef nonnull @.str.26, i64 noundef 1, ptr noundef nonnull %5, ptr noundef nonnull %6) #18
  %128 = add i64 %127, 1
  br label %174

129:                                              ; preds = %105
  %130 = zext i32 %111 to i64
  %131 = getelementptr inbounds [256 x i8], ptr @_cpp_trigraph_map, i64 0, i64 %130
  %132 = load i8, ptr %131, align 1, !tbaa !5
  %133 = icmp eq i8 %132, 0
  br i1 %133, label %173, label %134

134:                                              ; preds = %129
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %7) #22
  %135 = trunc i32 %111 to i8
  store i8 %135, ptr %7, align 1, !tbaa !5
  store i32 0, ptr %110, align 8, !tbaa !47
  %136 = load i8, ptr %79, align 1, !tbaa !41
  %137 = icmp eq i8 %136, 0
  br i1 %137, label %167, label %138

138:                                              ; preds = %134
  %139 = ptrtoint ptr %107 to i64
  %140 = ptrtoint ptr %106 to i64
  %141 = sub i64 %139, %140
  call fastcc void @bufring_append(ptr noundef nonnull %0, ptr noundef %106, i64 noundef %141, ptr noundef nonnull %5, ptr noundef nonnull %6) #18
  %142 = add i64 %141, %108
  call fastcc void @bufring_append(ptr noundef nonnull %0, ptr noundef nonnull @.str.27, i64 noundef 2, ptr noundef nonnull %5, ptr noundef nonnull %6) #18
  switch i8 %135, label %164 [
    i8 47, label %143
    i8 41, label %151
  ]

143:                                              ; preds = %138
  %144 = getelementptr inbounds %struct._cpp_line_note, ptr %109, i64 1
  %145 = load ptr, ptr %144, align 8, !tbaa !45
  %146 = icmp eq ptr %145, %107
  br i1 %146, label %147, label %164

147:                                              ; preds = %143
  %148 = getelementptr inbounds %struct._cpp_line_note, ptr %109, i64 1, i32 1
  %149 = load i32, ptr %148, align 8, !tbaa !47
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
  %157 = load i8, ptr %156, align 1, !tbaa !5
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
  call fastcc void @bufring_append(ptr noundef nonnull %0, ptr noundef nonnull @.str.28, i64 noundef 1, ptr noundef nonnull %5, ptr noundef nonnull %6) #18
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
  %180 = load ptr, ptr %179, align 8, !tbaa !45
  %181 = icmp eq ptr %180, %177
  br i1 %181, label %105, label %182, !llvm.loop !153

182:                                              ; preds = %174, %103
  %183 = phi ptr [ %99, %103 ], [ %179, %174 ]
  %184 = phi i64 [ %95, %103 ], [ %176, %174 ]
  %185 = phi ptr [ %96, %103 ], [ %177, %174 ]
  %186 = phi ptr [ %97, %103 ], [ %178, %174 ]
  %187 = getelementptr inbounds i8, ptr %185, i64 1
  %188 = load i8, ptr %185, align 1, !tbaa !5
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
  %194 = load i8, ptr %193, align 1, !tbaa !5
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
  %205 = load i8, ptr %82, align 8, !tbaa !82
  %206 = icmp eq i8 %205, 0
  br i1 %206, label %207, label %213

207:                                              ; preds = %204
  %208 = load i8, ptr %83, align 1, !tbaa !79
  %209 = icmp eq i8 %208, 0
  br i1 %209, label %210, label %213

210:                                              ; preds = %207
  %211 = load i8, ptr %84, align 8, !tbaa !80
  %212 = icmp eq i8 %211, 0
  br i1 %212, label %216, label %213

213:                                              ; preds = %210, %207, %204
  %214 = load i32, ptr %1, align 8, !tbaa !86
  %215 = tail call zeroext i8 (ptr, i32, i32, i32, ptr, ...) @cpp_error_with_line(ptr noundef nonnull %0, i32 noundef 3, i32 noundef %214, i32 noundef 0, ptr noundef nonnull @.str.29) #20
  br label %301

216:                                              ; preds = %210
  %217 = ptrtoint ptr %187 to i64
  %218 = ptrtoint ptr %186 to i64
  %219 = sub i64 %217, %218
  call fastcc void @bufring_append(ptr noundef nonnull %0, ptr noundef %186, i64 noundef %219, ptr noundef nonnull %5, ptr noundef nonnull %6) #18
  %220 = add i64 %219, %184
  %221 = load ptr, ptr %0, align 8, !tbaa !13
  %222 = load ptr, ptr %221, align 8, !tbaa !35
  %223 = getelementptr inbounds %struct.cpp_buffer, ptr %221, i64 0, i32 4
  %224 = load ptr, ptr %223, align 8, !tbaa !37
  %225 = icmp ult ptr %222, %224
  br i1 %225, label %226, label %248

226:                                              ; preds = %216
  %227 = load ptr, ptr %85, align 8, !tbaa !48
  %228 = load ptr, ptr %227, align 8, !tbaa !51
  %229 = getelementptr inbounds %struct.line_maps, ptr %227, i64 0, i32 2
  %230 = load i32, ptr %229, align 4, !tbaa !52
  %231 = add i32 %230, -1
  %232 = zext i32 %231 to i64
  %233 = getelementptr inbounds %struct.line_maps, ptr %227, i64 0, i32 8
  %234 = load i32, ptr %233, align 4, !tbaa !49
  %235 = getelementptr inbounds %struct.line_map, ptr %228, i64 %232, i32 2
  %236 = load i32, ptr %235, align 4, !tbaa !53
  %237 = sub i32 %234, %236
  %238 = getelementptr inbounds %struct.line_map, ptr %228, i64 %232, i32 6
  %239 = load i8, ptr %238, align 2
  %240 = zext nneg i8 %239 to i32
  %241 = lshr i32 %237, %240
  %242 = getelementptr inbounds %struct.line_map, ptr %228, i64 %232, i32 1
  %243 = load i32, ptr %242, align 8, !tbaa !55
  %244 = add i32 %243, 1
  %245 = add i32 %244, %241
  %246 = tail call i32 @linemap_line_start(ptr noundef nonnull %227, i32 noundef %245, i32 noundef 0) #20
  %247 = load ptr, ptr %0, align 8, !tbaa !13
  br label %248

248:                                              ; preds = %226, %216
  %249 = phi ptr [ %247, %226 ], [ %221, %216 ]
  %250 = getelementptr inbounds %struct.cpp_buffer, ptr %249, i64 0, i32 13
  store i8 1, ptr %250, align 8, !tbaa !36
  store ptr %185, ptr %249, align 8, !tbaa !35
  tail call void @_cpp_process_line_notes(ptr noundef nonnull %0, i32 noundef 0) #18
  %251 = tail call zeroext i8 @_cpp_get_fresh_line(ptr noundef nonnull %0) #18
  %252 = icmp eq i8 %251, 0
  br i1 %252, label %253, label %265

253:                                              ; preds = %248
  %254 = load i32, ptr %1, align 8, !tbaa !86
  %255 = getelementptr inbounds %struct.cpp_token, ptr %1, i64 0, i32 1
  store i8 22, ptr %255, align 4
  %256 = load ptr, ptr %85, align 8, !tbaa !48
  %257 = getelementptr inbounds %struct.line_maps, ptr %256, i64 0, i32 8
  %258 = load i32, ptr %257, align 4, !tbaa !49
  store i32 %258, ptr %1, align 8, !tbaa !86
  %259 = getelementptr inbounds %struct.cpp_token, ptr %1, i64 0, i32 2
  store i16 64, ptr %259, align 2, !tbaa !78
  %260 = load ptr, ptr %5, align 8, !tbaa !72
  %261 = icmp eq ptr %260, null
  br i1 %261, label %263, label %262

262:                                              ; preds = %253
  tail call void @_cpp_release_buff(ptr noundef nonnull %0, ptr noundef nonnull %260) #18
  br label %263

263:                                              ; preds = %253, %262
  %264 = tail call zeroext i8 (ptr, i32, i32, i32, ptr, ...) @cpp_error_with_line(ptr noundef nonnull %0, i32 noundef 3, i32 noundef %254, i32 noundef 0, ptr noundef nonnull @.str.29) #20
  br label %351

265:                                              ; preds = %248
  %266 = load ptr, ptr %0, align 8, !tbaa !13
  %267 = load ptr, ptr %266, align 8, !tbaa !35
  %268 = getelementptr inbounds %struct.cpp_buffer, ptr %266, i64 0, i32 5
  %269 = load ptr, ptr %268, align 8, !tbaa !44
  %270 = getelementptr inbounds %struct.cpp_buffer, ptr %266, i64 0, i32 6
  %271 = load i32, ptr %270, align 8, !tbaa !32
  %272 = zext i32 %271 to i64
  %273 = getelementptr inbounds %struct._cpp_line_note, ptr %269, i64 %272
  br label %196

274:                                              ; preds = %182
  %275 = icmp ne i8 %188, 0
  %276 = select i1 %275, i1 true, i1 %92
  br i1 %276, label %196, label %277

277:                                              ; preds = %274
  %278 = load ptr, ptr %0, align 8, !tbaa !13
  %279 = getelementptr inbounds %struct.cpp_buffer, ptr %278, i64 0, i32 1
  %280 = load ptr, ptr %279, align 8, !tbaa !34
  %281 = ptrtoint ptr %187 to i64
  %282 = ptrtoint ptr %280 to i64
  %283 = sub i64 %281, %282
  %284 = trunc i64 %283 to i32
  %285 = load ptr, ptr %85, align 8, !tbaa !48
  %286 = getelementptr inbounds %struct.line_maps, ptr %285, i64 0, i32 9
  %287 = load i32, ptr %286, align 8, !tbaa !92
  %288 = icmp ugt i32 %287, %284
  br i1 %288, label %291, label %289

289:                                              ; preds = %277
  %290 = tail call i32 @linemap_position_for_column(ptr noundef nonnull %285, i32 noundef %284) #20
  br label %298

291:                                              ; preds = %277
  %292 = getelementptr inbounds %struct.line_maps, ptr %285, i64 0, i32 8
  %293 = load i32, ptr %292, align 4, !tbaa !49
  %294 = add i32 %293, %284
  %295 = getelementptr inbounds %struct.line_maps, ptr %285, i64 0, i32 7
  %296 = load i32, ptr %295, align 8, !tbaa !93
  %297 = icmp ult i32 %294, %296
  br i1 %297, label %298, label %300

298:                                              ; preds = %291, %300, %289
  %299 = phi i32 [ %290, %289 ], [ %294, %300 ], [ %294, %291 ]
  br label %86

300:                                              ; preds = %291
  store i32 %294, ptr %295, align 8, !tbaa !93
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
  %309 = load i8, ptr %308, align 2, !tbaa !62
  %310 = icmp eq i8 %309, 0
  br i1 %310, label %311, label %313

311:                                              ; preds = %307
  %312 = tail call zeroext i8 (ptr, i32, i32, i32, ptr, ...) @cpp_error_with_line(ptr noundef nonnull %0, i32 noundef 0, i32 noundef %89, i32 noundef 0, ptr noundef nonnull @.str.20) #20
  br label %313

313:                                              ; preds = %311, %307, %301
  %314 = load ptr, ptr %0, align 8, !tbaa !13
  store ptr %304, ptr %314, align 8, !tbaa !35
  %315 = load ptr, ptr %5, align 8, !tbaa !72
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
  store i32 %328, ptr %329, align 8, !tbaa !5
  %330 = getelementptr inbounds %struct.cpp_token, ptr %1, i64 0, i32 3, i32 0, i32 1
  store ptr %325, ptr %330, align 8, !tbaa !5
  br label %331

331:                                              ; preds = %322, %331
  %332 = phi ptr [ %347, %331 ], [ %315, %322 ]
  %333 = phi ptr [ %346, %331 ], [ %325, %322 ]
  %334 = getelementptr inbounds %struct._cpp_buff, ptr %332, i64 0, i32 1
  %335 = load ptr, ptr %334, align 8, !tbaa !148
  %336 = getelementptr inbounds %struct._cpp_buff, ptr %332, i64 0, i32 2
  %337 = load ptr, ptr %336, align 8, !tbaa !136
  %338 = ptrtoint ptr %337 to i64
  %339 = ptrtoint ptr %335 to i64
  %340 = sub i64 %338, %339
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %333, ptr align 1 %335, i64 %340, i1 false)
  %341 = load ptr, ptr %336, align 8, !tbaa !136
  %342 = load ptr, ptr %334, align 8, !tbaa !148
  %343 = ptrtoint ptr %341 to i64
  %344 = ptrtoint ptr %342 to i64
  %345 = sub i64 %343, %344
  %346 = getelementptr inbounds i8, ptr %333, i64 %345
  %347 = load ptr, ptr %332, align 8, !tbaa !72
  %348 = icmp eq ptr %347, null
  br i1 %348, label %349, label %331, !llvm.loop !154

349:                                              ; preds = %331
  tail call void @_cpp_release_buff(ptr noundef nonnull %0, ptr noundef nonnull %315) #18
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %346, ptr align 1 %305, i64 %319, i1 false)
  %350 = getelementptr inbounds i8, ptr %346, i64 %319
  store i8 0, ptr %350, align 1, !tbaa !5
  br label %351

351:                                              ; preds = %263, %320, %349, %68
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #22
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #22
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @bufring_append(ptr nocapture noundef %0, ptr nocapture noundef readonly %1, i64 noundef %2, ptr nocapture noundef %3, ptr nocapture noundef %4) unnamed_addr #2 {
  %6 = load ptr, ptr %3, align 8, !tbaa !72
  %7 = load ptr, ptr %4, align 8, !tbaa !72
  %8 = icmp eq ptr %6, null
  br i1 %8, label %9, label %11

9:                                                ; preds = %5
  %10 = tail call ptr @_cpp_get_buff(ptr noundef %0, i64 noundef %2) #18
  br label %26

11:                                               ; preds = %5
  %12 = getelementptr inbounds %struct._cpp_buff, ptr %7, i64 0, i32 3
  %13 = load ptr, ptr %12, align 8, !tbaa !138
  %14 = getelementptr inbounds %struct._cpp_buff, ptr %7, i64 0, i32 2
  %15 = load ptr, ptr %14, align 8, !tbaa !136
  %16 = ptrtoint ptr %13 to i64
  %17 = ptrtoint ptr %15 to i64
  %18 = sub i64 %16, %17
  %19 = icmp ult i64 %18, %2
  br i1 %19, label %20, label %26

20:                                               ; preds = %11
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %15, ptr align 1 %1, i64 %18, i1 false)
  %21 = load ptr, ptr %14, align 8, !tbaa !136
  %22 = getelementptr inbounds i8, ptr %21, i64 %18
  store ptr %22, ptr %14, align 8, !tbaa !136
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
  %32 = load ptr, ptr %31, align 8, !tbaa !136
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %32, ptr align 1 %30, i64 %27, i1 false)
  %33 = load ptr, ptr %31, align 8, !tbaa !136
  %34 = getelementptr inbounds i8, ptr %33, i64 %27
  store ptr %34, ptr %31, align 8, !tbaa !136
  store ptr %28, ptr %3, align 8, !tbaa !72
  store ptr %29, ptr %4, align 8, !tbaa !72
  ret void
}

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(argmem: read)
declare i32 @strncmp(ptr nocapture noundef, ptr nocapture noundef, i64 noundef) local_unnamed_addr #15

; Function Attrs: optsize
declare ptr @_cpp_interpret_identifier(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @store_comment(ptr nocapture noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #2 {
  %3 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 62
  %4 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 62, i32 2
  %5 = load i32, ptr %4, align 4, !tbaa !155
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %10

7:                                                ; preds = %2
  store i32 256, ptr %4, align 4, !tbaa !155
  %8 = tail call ptr @xmalloc(i64 noundef 4096) #20
  store ptr %8, ptr %3, align 8, !tbaa !156
  %9 = load i32, ptr %4, align 4, !tbaa !155
  br label %10

10:                                               ; preds = %7, %2
  %11 = phi i32 [ %9, %7 ], [ %5, %2 ]
  %12 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 62, i32 1
  %13 = load i32, ptr %12, align 8, !tbaa !157
  %14 = icmp eq i32 %13, %11
  br i1 %14, label %15, label %21

15:                                               ; preds = %10
  %16 = shl nsw i32 %11, 1
  store i32 %16, ptr %4, align 4, !tbaa !155
  %17 = load ptr, ptr %3, align 8, !tbaa !156
  %18 = sext i32 %16 to i64
  %19 = shl nsw i64 %18, 4
  %20 = tail call ptr @xrealloc(ptr noundef %17, i64 noundef %19) #20
  store ptr %20, ptr %3, align 8, !tbaa !156
  br label %21

21:                                               ; preds = %15, %10
  %22 = getelementptr inbounds %struct.cpp_token, ptr %1, i64 0, i32 3
  %23 = load i32, ptr %22, align 8, !tbaa !5
  %24 = add nsw i32 %23, 1
  %25 = sext i32 %24 to i64
  %26 = tail call ptr @xmalloc(i64 noundef %25) #20
  %27 = load ptr, ptr %3, align 8, !tbaa !156
  %28 = load i32, ptr %12, align 8, !tbaa !157
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds %struct.cpp_comment, ptr %27, i64 %29
  store ptr %26, ptr %30, align 8, !tbaa !158
  %31 = getelementptr inbounds %struct.cpp_token, ptr %1, i64 0, i32 3, i32 0, i32 1
  %32 = load ptr, ptr %31, align 8, !tbaa !5
  %33 = sext i32 %23 to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %26, ptr align 1 %32, i64 %33, i1 false)
  %34 = load ptr, ptr %3, align 8, !tbaa !156
  %35 = load i32, ptr %12, align 8, !tbaa !157
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds %struct.cpp_comment, ptr %34, i64 %36
  %38 = load ptr, ptr %37, align 8, !tbaa !158
  %39 = getelementptr inbounds i8, ptr %38, i64 %33
  store i8 0, ptr %39, align 1, !tbaa !5
  %40 = load i32, ptr %1, align 8, !tbaa !86
  %41 = load ptr, ptr %3, align 8, !tbaa !156
  %42 = load i32, ptr %12, align 8, !tbaa !157
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds %struct.cpp_comment, ptr %41, i64 %43, i32 1
  store i32 %40, ptr %44, align 8, !tbaa !160
  %45 = add nsw i32 %42, 1
  store i32 %45, ptr %12, align 8, !tbaa !157
  ret void
}

; Function Attrs: optsize
declare i32 @_cpp_valid_ucn(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(argmem: read)
declare i64 @strlen(ptr nocapture noundef) local_unnamed_addr #15

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
attributes #2 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nofree noinline norecurse nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { noreturn nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #9 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #10 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nofree nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { mustprogress nounwind optsize willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { mustprogress nofree nounwind optsize willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #17 = { nofree nounwind willreturn memory(argmem: read) }
attributes #18 = { optsize }
attributes #19 = { nounwind optsize willreturn memory(read) }
attributes #20 = { nounwind optsize }
attributes #21 = { noreturn nounwind optsize }
attributes #22 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!5 = !{!6, !6, i64 0}
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C/C++ TBAA"}
!8 = !{!9, !11, i64 0}
!9 = !{!"cpp_hashnode", !10, i64 0, !12, i64 16, !12, i64 16, !6, i64 17, !12, i64 18, !12, i64 18, !6, i64 24}
!10 = !{!"ht_identifier", !11, i64 0, !12, i64 8, !12, i64 12}
!11 = !{!"any pointer", !6, i64 0}
!12 = !{!"int", !6, i64 0}
!13 = !{!14, !11, i64 0}
!14 = !{!"cpp_reader", !11, i64 0, !11, i64 8, !15, i64 16, !11, i64 40, !12, i64 48, !11, i64 56, !11, i64 64, !11, i64 72, !16, i64 80, !11, i64 136, !11, i64 144, !17, i64 152, !12, i64 176, !6, i64 180, !11, i64 184, !11, i64 192, !19, i64 200, !11, i64 264, !11, i64 272, !11, i64 280, !11, i64 288, !11, i64 296, !11, i64 304, !21, i64 312, !6, i64 400, !6, i64 401, !11, i64 408, !11, i64 416, !6, i64 424, !11, i64 432, !22, i64 440, !11, i64 472, !12, i64 480, !12, i64 484, !11, i64 488, !12, i64 496, !23, i64 504, !23, i64 528, !23, i64 552, !23, i64 576, !23, i64 600, !11, i64 624, !11, i64 632, !17, i64 640, !17, i64 664, !11, i64 688, !21, i64 696, !21, i64 784, !11, i64 872, !24, i64 880, !11, i64 1016, !11, i64 1024, !11, i64 1032, !25, i64 1040, !27, i64 1168, !6, i64 1200, !28, i64 1208, !11, i64 1240, !11, i64 1248, !11, i64 1256, !11, i64 1264, !12, i64 1272, !29, i64 1280, !11, i64 1296}
!15 = !{!"lexer_state", !6, i64 0, !6, i64 1, !6, i64 2, !6, i64 3, !6, i64 4, !6, i64 5, !6, i64 6, !6, i64 7, !6, i64 8, !6, i64 9, !6, i64 10, !12, i64 12, !6, i64 16, !6, i64 17}
!16 = !{!"cpp_context", !11, i64 0, !11, i64 8, !6, i64 16, !11, i64 32, !11, i64 40, !6, i64 48}
!17 = !{!"cpp_token", !12, i64 0, !12, i64 4, !18, i64 6, !6, i64 8}
!18 = !{!"short", !6, i64 0}
!19 = !{!"cpp_dir", !11, i64 0, !11, i64 8, !12, i64 16, !6, i64 20, !6, i64 21, !11, i64 24, !11, i64 32, !11, i64 40, !20, i64 48, !20, i64 56}
!20 = !{!"long", !6, i64 0}
!21 = !{!"obstack", !20, i64 0, !11, i64 8, !11, i64 16, !11, i64 24, !11, i64 32, !20, i64 40, !12, i64 48, !11, i64 56, !11, i64 64, !11, i64 72, !12, i64 80, !12, i64 80, !12, i64 80}
!22 = !{!"tokenrun", !11, i64 0, !11, i64 8, !11, i64 16, !11, i64 24}
!23 = !{!"cset_converter", !11, i64 0, !11, i64 8, !12, i64 16}
!24 = !{!"cpp_callbacks", !11, i64 0, !11, i64 8, !11, i64 16, !11, i64 24, !11, i64 32, !11, i64 40, !11, i64 48, !11, i64 56, !11, i64 64, !11, i64 72, !11, i64 80, !11, i64 88, !11, i64 96, !11, i64 104, !11, i64 112, !11, i64 120, !11, i64 128}
!25 = !{!"cpp_options", !12, i64 0, !12, i64 4, !6, i64 8, !6, i64 9, !6, i64 10, !6, i64 11, !6, i64 12, !6, i64 13, !6, i64 14, !6, i64 15, !6, i64 16, !6, i64 17, !6, i64 18, !6, i64 19, !6, i64 20, !6, i64 21, !6, i64 22, !6, i64 23, !6, i64 24, !6, i64 25, !6, i64 26, !6, i64 27, !6, i64 28, !6, i64 29, !6, i64 30, !6, i64 31, !6, i64 32, !6, i64 33, !6, i64 34, !6, i64 35, !6, i64 36, !6, i64 37, !6, i64 38, !6, i64 39, !6, i64 40, !6, i64 41, !6, i64 42, !11, i64 48, !11, i64 56, !11, i64 64, !12, i64 72, !6, i64 76, !6, i64 77, !26, i64 80, !20, i64 88, !20, i64 96, !20, i64 104, !20, i64 112, !6, i64 120, !6, i64 121, !6, i64 122, !6, i64 123, !6, i64 124}
!26 = !{!"", !12, i64 0, !6, i64 4, !6, i64 5, !6, i64 6, !6, i64 7}
!27 = !{!"spec_nodes", !11, i64 0, !11, i64 8, !11, i64 16, !11, i64 24}
!28 = !{!"", !11, i64 0, !11, i64 8, !11, i64 16, !12, i64 24}
!29 = !{!"", !11, i64 0, !12, i64 8, !12, i64 12}
!30 = !{!31, !12, i64 52}
!31 = !{!"cpp_buffer", !11, i64 0, !11, i64 8, !11, i64 16, !11, i64 24, !11, i64 32, !11, i64 40, !12, i64 48, !12, i64 52, !12, i64 56, !11, i64 64, !11, i64 72, !11, i64 80, !11, i64 88, !6, i64 96, !12, i64 97, !12, i64 97, !12, i64 97, !6, i64 98, !19, i64 104, !23, i64 168}
!32 = !{!31, !12, i64 48}
!33 = !{!31, !11, i64 16}
!34 = !{!31, !11, i64 8}
!35 = !{!31, !11, i64 0}
!36 = !{!31, !6, i64 96}
!37 = !{!31, !11, i64 32}
!38 = !{!18, !18, i64 0}
!39 = distinct !{!39, !40}
!40 = !{!"llvm.loop.mustprogress"}
!41 = !{!14, !6, i64 1053}
!42 = distinct !{!42, !40}
!43 = !{!31, !12, i64 56}
!44 = !{!31, !11, i64 40}
!45 = !{!46, !11, i64 0}
!46 = !{!"_cpp_line_note", !11, i64 0, !12, i64 8}
!47 = !{!46, !12, i64 8}
!48 = !{!14, !11, i64 40}
!49 = !{!50, !12, i64 36}
!50 = !{!"line_maps", !11, i64 0, !12, i64 8, !12, i64 12, !12, i64 16, !12, i64 20, !12, i64 24, !6, i64 28, !12, i64 32, !12, i64 36, !12, i64 40, !11, i64 48}
!51 = !{!50, !11, i64 0}
!52 = !{!50, !12, i64 12}
!53 = !{!54, !12, i64 12}
!54 = !{!"line_map", !11, i64 0, !12, i64 8, !12, i64 12, !12, i64 16, !12, i64 20, !6, i64 21, !12, i64 22}
!55 = !{!54, !12, i64 8}
!56 = !{!14, !6, i64 1061}
!57 = !{i8 0, i8 2}
!58 = distinct !{!58, !40}
!59 = !{!14, !6, i64 1059}
!60 = distinct !{!60, !40}
!61 = !{!14, !11, i64 1016}
!62 = !{!14, !6, i64 18}
!63 = !{!14, !6, i64 23}
!64 = !{!14, !11, i64 1192}
!65 = !{!14, !6, i64 22}
!66 = !{!22, !11, i64 16}
!67 = !{!22, !11, i64 24}
!68 = !{!22, !11, i64 0}
!69 = !{!14, !11, i64 136}
!70 = !{!16, !11, i64 8}
!71 = !{!16, !6, i64 48}
!72 = !{!11, !11, i64 0}
!73 = !{!14, !12, i64 484}
!74 = distinct !{!74, !40}
!75 = !{!14, !11, i64 432}
!76 = !{!14, !11, i64 472}
!77 = !{!14, !12, i64 480}
!78 = !{!17, !18, i64 6}
!79 = !{!14, !6, i64 25}
!80 = !{!14, !6, i64 32}
!81 = !{!14, !11, i64 880}
!82 = !{!14, !6, i64 16}
!83 = !{!14, !6, i64 424}
!84 = !{i64 0, i64 4, !85, i64 4, i64 4, !85, i64 6, i64 2, !38, i64 8, i64 8, !72, i64 8, i64 8, !72, i64 8, i64 4, !85, i64 16, i64 8, !72, i64 8, i64 4, !85, i64 8, i64 4, !85, i64 8, i64 4, !85}
!85 = !{!12, !12, i64 0}
!86 = !{!17, !12, i64 0}
!87 = !{!22, !11, i64 8}
!88 = !{!14, !6, i64 33}
!89 = !{!14, !6, i64 24}
!90 = !{!14, !11, i64 456}
!91 = !{!14, !11, i64 8}
!92 = !{!50, !12, i64 40}
!93 = !{!50, !12, i64 32}
!94 = !{!14, !6, i64 1056}
!95 = !{!14, !6, i64 1049}
!96 = !{i32 0, i32 256}
!97 = !{!14, !12, i64 1044}
!98 = !{!14, !6, i64 1077}
!99 = !{i32 0, i32 2}
!100 = !{!14, !6, i64 21}
!101 = !{!14, !6, i64 19}
!102 = !{!14, !6, i64 1054}
!103 = !{!14, !6, i64 1048}
!104 = !{!31, !11, i64 24}
!105 = distinct !{!105, !40}
!106 = !{!14, !6, i64 1055}
!107 = !{!108, !12, i64 0}
!108 = !{!"normalize_state", !12, i64 0, !6, i64 4, !12, i64 8}
!109 = !{!108, !6, i64 4}
!110 = distinct !{!110, !40}
!111 = distinct !{!111, !40}
!112 = !{!113, !12, i64 0}
!113 = !{!"cpp_string", !12, i64 0, !11, i64 8}
!114 = !{!113, !11, i64 8}
!115 = !{!14, !12, i64 1112}
!116 = !{!108, !12, i64 8}
!117 = distinct !{!117, !40}
!118 = distinct !{!118, !40}
!119 = distinct !{!119, !40}
!120 = !{!31, !6, i64 98}
!121 = distinct !{!121, !40}
!122 = !{!14, !6, i64 1070}
!123 = !{!14, !6, i64 1072}
!124 = !{!14, !6, i64 1071}
!125 = !{!126, !12, i64 0}
!126 = !{!"token_spelling", !12, i64 0, !11, i64 8}
!127 = !{!9, !12, i64 8}
!128 = !{!126, !11, i64 8}
!129 = distinct !{!129, !40}
!130 = !{i64 -2147483648, i64 2147483648}
!131 = distinct !{!131, !40}
!132 = distinct !{!132, !40}
!133 = distinct !{!133, !40}
!134 = distinct !{!134, !40}
!135 = !{!14, !11, i64 64}
!136 = !{!137, !11, i64 16}
!137 = !{!"_cpp_buff", !11, i64 0, !11, i64 8, !11, i64 16, !11, i64 24}
!138 = !{!137, !11, i64 24}
!139 = !{!137, !11, i64 0}
!140 = distinct !{!140, !40}
!141 = distinct !{!141, !40}
!142 = !{!14, !6, i64 1050}
!143 = distinct !{!143, !40}
!144 = distinct !{!144, !40}
!145 = distinct !{!145, !40}
!146 = distinct !{!146, !40}
!147 = !{!14, !11, i64 72}
!148 = !{!137, !11, i64 8}
!149 = distinct !{!149, !40}
!150 = !{!14, !11, i64 56}
!151 = distinct !{!151, !40}
!152 = distinct !{!152, !40}
!153 = distinct !{!153, !40}
!154 = distinct !{!154, !40}
!155 = !{!14, !12, i64 1292}
!156 = !{!14, !11, i64 1280}
!157 = !{!14, !12, i64 1288}
!158 = !{!159, !11, i64 0}
!159 = !{!"", !11, i64 0, !12, i64 8}
!160 = !{!159, !12, i64 8}
